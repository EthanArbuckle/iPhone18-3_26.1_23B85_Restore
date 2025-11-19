@interface GPUPerformanceStateMax
- (GPUPerformanceStateMax)init;
@end

@implementation GPUPerformanceStateMax

- (GPUPerformanceStateMax)init
{
  v3.receiver = self;
  v3.super_class = GPUPerformanceStateMax;
  return [(GPUPerformanceStateDefault *)&v3 initWithGPUPerformanceState:3];
}

@end