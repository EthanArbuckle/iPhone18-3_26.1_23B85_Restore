@interface GTReplayWrapperBase
- (id)forwardingTargetForSelector:(SEL)selector;
- (void)setTracingDelegate:(id)delegate;
@end

@implementation GTReplayWrapperBase

- (void)setTracingDelegate:(id)delegate
{
  gpuScaler = self->_gpuScaler;
  delegateCopy = delegate;
  [gpuScaler setTracingDelegate:delegateCopy];
  [self->_aneScaler setTracingDelegate:delegateCopy];
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  v3 = 8;
  if (!self->_executionMode)
  {
    v3 = 16;
  }

  return *(&self->super.isa + v3);
}

@end