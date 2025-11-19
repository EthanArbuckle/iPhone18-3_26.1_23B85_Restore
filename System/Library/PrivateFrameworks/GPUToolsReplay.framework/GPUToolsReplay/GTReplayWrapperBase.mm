@interface GTReplayWrapperBase
- (id)forwardingTargetForSelector:(SEL)a3;
- (void)setTracingDelegate:(id)a3;
@end

@implementation GTReplayWrapperBase

- (void)setTracingDelegate:(id)a3
{
  gpuScaler = self->_gpuScaler;
  v5 = a3;
  [gpuScaler setTracingDelegate:v5];
  [self->_aneScaler setTracingDelegate:v5];
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  v3 = 8;
  if (!self->_executionMode)
  {
    v3 = 16;
  }

  return *(&self->super.isa + v3);
}

@end