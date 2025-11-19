@interface HUEffectiveProgressObserver
- (HUEffectiveProgressObserver)initWithTargetEffectiveProgress:(double)a3 observerBlock:(id)a4;
@end

@implementation HUEffectiveProgressObserver

- (HUEffectiveProgressObserver)initWithTargetEffectiveProgress:(double)a3 observerBlock:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = HUEffectiveProgressObserver;
  v7 = [(HUEffectiveProgressObserver *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_targetEffectiveProgress = a3;
    v9 = [v6 copy];
    observerBlock = v8->_observerBlock;
    v8->_observerBlock = v9;
  }

  return v8;
}

@end