@interface DOCModalBlurViewControllerTransition.BackgroundView
- (void)dismissPresentedViewController:(id)a3;
@end

@implementation DOCModalBlurViewControllerTransition.BackgroundView

- (void)dismissPresentedViewController:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

@end