@interface _CRKCardViewControllerTransitionCoordinator
- (UIView)containerView;
- (_CRKCardViewControllerTransitionCoordinator)init;
@end

@implementation _CRKCardViewControllerTransitionCoordinator

- (_CRKCardViewControllerTransitionCoordinator)init
{
  v9.receiver = self;
  v9.super_class = _CRKCardViewControllerTransitionCoordinator;
  v2 = [(_CRKCardViewControllerTransitionCoordinator *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_animated = 0;
    initialSetup = v2->_initialSetup;
    v2->_initialSetup = 0;

    finalSetup = v3->_finalSetup;
    v3->_finalSetup = 0;

    animations = v3->_animations;
    v3->_animations = 0;

    completion = v3->_completion;
    v3->_completion = 0;

    objc_storeWeak(&v3->_containerView, 0);
    v3->_duration = 0.2;
  }

  return v3;
}

- (UIView)containerView
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);

  return WeakRetained;
}

@end