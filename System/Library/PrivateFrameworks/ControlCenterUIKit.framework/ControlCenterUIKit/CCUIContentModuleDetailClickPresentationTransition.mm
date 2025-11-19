@interface CCUIContentModuleDetailClickPresentationTransition
- (CCUIContentModuleDetailClickPresentationTransition)initWithPresentedViewController:(id)a3 animationController:(id)a4;
- (void)performTransitionFromView:(id)a3 toView:(id)a4 containerView:(id)a5;
- (void)transitionDidEnd:(BOOL)a3;
@end

@implementation CCUIContentModuleDetailClickPresentationTransition

- (CCUIContentModuleDetailClickPresentationTransition)initWithPresentedViewController:(id)a3 animationController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CCUIContentModuleDetailClickPresentationTransition;
  v9 = [(CCUIContentModuleDetailClickPresentationTransition *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_presentedViewController, a3);
    objc_storeStrong(&v10->_animationController, a4);
  }

  return v10;
}

- (void)performTransitionFromView:(id)a3 toView:(id)a4 containerView:(id)a5
{
  v8 = [(UIViewController *)self->_presentedViewController transitionCoordinator:a3];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v8 _mainContext];
    if (v6)
    {
      v7 = v6;
      [(CCUIContentModuleDetailAnimationController *)self->_animationController performTransition:v6];
    }
  }
}

- (void)transitionDidEnd:(BOOL)a3
{
  [(CCUIContentModuleDetailAnimationController *)self->_animationController animationEnded:a3];
  animationController = self->_animationController;
  self->_animationController = 0;
}

@end