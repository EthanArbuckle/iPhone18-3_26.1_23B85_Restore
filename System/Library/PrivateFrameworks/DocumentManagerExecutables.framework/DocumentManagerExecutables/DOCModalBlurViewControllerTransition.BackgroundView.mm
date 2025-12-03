@interface DOCModalBlurViewControllerTransition.BackgroundView
- (void)dismissPresentedViewController:(id)controller;
@end

@implementation DOCModalBlurViewControllerTransition.BackgroundView

- (void)dismissPresentedViewController:(id)controller
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

@end