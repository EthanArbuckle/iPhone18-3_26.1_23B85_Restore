@interface CCUIContentModuleDetailClickPresentationTransition
- (CCUIContentModuleDetailClickPresentationTransition)initWithPresentedViewController:(id)controller animationController:(id)animationController;
- (void)performTransitionFromView:(id)view toView:(id)toView containerView:(id)containerView;
- (void)transitionDidEnd:(BOOL)end;
@end

@implementation CCUIContentModuleDetailClickPresentationTransition

- (CCUIContentModuleDetailClickPresentationTransition)initWithPresentedViewController:(id)controller animationController:(id)animationController
{
  controllerCopy = controller;
  animationControllerCopy = animationController;
  v12.receiver = self;
  v12.super_class = CCUIContentModuleDetailClickPresentationTransition;
  v9 = [(CCUIContentModuleDetailClickPresentationTransition *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_presentedViewController, controller);
    objc_storeStrong(&v10->_animationController, animationController);
  }

  return v10;
}

- (void)performTransitionFromView:(id)view toView:(id)toView containerView:(id)containerView
{
  v8 = [(UIViewController *)self->_presentedViewController transitionCoordinator:view];
  if (objc_opt_respondsToSelector())
  {
    _mainContext = [v8 _mainContext];
    if (_mainContext)
    {
      v7 = _mainContext;
      [(CCUIContentModuleDetailAnimationController *)self->_animationController performTransition:_mainContext];
    }
  }
}

- (void)transitionDidEnd:(BOOL)end
{
  [(CCUIContentModuleDetailAnimationController *)self->_animationController animationEnded:end];
  animationController = self->_animationController;
  self->_animationController = 0;
}

@end