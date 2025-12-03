@interface HUEffectiveProgressObserver
- (HUEffectiveProgressObserver)initWithTargetEffectiveProgress:(double)progress observerBlock:(id)block;
@end

@implementation HUEffectiveProgressObserver

- (HUEffectiveProgressObserver)initWithTargetEffectiveProgress:(double)progress observerBlock:(id)block
{
  blockCopy = block;
  v12.receiver = self;
  v12.super_class = HUEffectiveProgressObserver;
  v7 = [(HUEffectiveProgressObserver *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_targetEffectiveProgress = progress;
    v9 = [blockCopy copy];
    observerBlock = v8->_observerBlock;
    v8->_observerBlock = v9;
  }

  return v8;
}

@end