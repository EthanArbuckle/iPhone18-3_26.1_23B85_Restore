@interface GPUPerformanceStateMid
- (GPUPerformanceStateMid)init;
@end

@implementation GPUPerformanceStateMid

- (GPUPerformanceStateMid)init
{
  v3.receiver = self;
  v3.super_class = GPUPerformanceStateMid;
  return [(GPUPerformanceStateDefault *)&v3 initWithGPUPerformanceState:2];
}

@end