//
//  ViewController.m
//  mycalayer
//
//  Created by joymain on 15-7-31.
//  Copyright (c) 2015年 邢富琨. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    float angle;
    float angle2;
}
@property (nonatomic,strong) CALayer *Layer;
@property (nonatomic,strong) CALayer *contentLayer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.contentLayer = [CALayer layer];
    self.contentLayer.frame = CGRectMake(0, 0, 200, 200);
    self.contentLayer.backgroundColor = [UIColor redColor].CGColor;
    [self.view.layer addSublayer:self.contentLayer];
    
    self.Layer = [CALayer layer];
    self.Layer.frame = CGRectMake(50, 50, 100, 100);
    self.Layer.backgroundColor = [UIColor greenColor].CGColor;
    [self.contentLayer addSublayer:self.Layer];
    

    self.contentLayer.mask = self.Layer;
    
    
    //[self performSelector:@selector(execAnimation) withObject:self afterDelay:2];
    

    [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(execAnimation) userInfo:nil repeats:YES];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)execAnimation
{
    
    //self.layer.frame = CGRectMake(0, 0, 100, 100);
    self.Layer.transform = CATransform3DMakeRotation(angle2+=M_PI, 0, 0, 1);
    //self.contentLayer.transform = CATransform3DMakeRotation(angle2-=6, 0, 0, 1);
    //self.layer.transform = catransform
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
