@interface GPUPerformanceStateMin
- (GPUPerformanceStateMin)init;
@end

@implementation GPUPerformanceStateMin

- (GPUPerformanceStateMin)init
{
  v3.receiver = self;
  v3.super_class = GPUPerformanceStateMin;
  return [(GPUPerformanceStateDefault *)&v3 initWithGPUPerformanceState:1];
}

@end