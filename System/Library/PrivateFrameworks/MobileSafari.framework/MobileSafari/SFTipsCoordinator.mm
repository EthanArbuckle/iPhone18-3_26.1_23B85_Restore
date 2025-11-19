@interface SFTipsCoordinator
- (SFTipsCoordinator)init;
- (SFTipsObserver)observer;
- (void)webSearchTipDidBecomeUnavailable;
@end

@implementation SFTipsCoordinator

- (SFTipsCoordinator)init
{
  v7.receiver = self;
  v7.super_class = SFTipsCoordinator;
  v2 = [(SFTipsCoordinator *)&v7 init];
  if (v2)
  {
    if (init_once != -1)
    {
      [SFTipsCoordinator init];
    }

    v3 = objc_alloc_init(_SFTipsCoordinator);
    internal = v2->_internal;
    v2->_internal = v3;

    [(_SFTipsCoordinator *)v2->_internal setObserver:v2];
    v5 = v2;
  }

  return v2;
}

- (void)webSearchTipDidBecomeUnavailable
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained webSearchTipDidBecomeUnavailable];
}

- (SFTipsObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end