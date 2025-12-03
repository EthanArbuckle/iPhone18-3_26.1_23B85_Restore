@interface CKAppMenuDismissalAnimator
- (void)animateTransition:(id)transition;
@end

@implementation CKAppMenuDismissalAnimator

- (void)animateTransition:(id)transition
{
  v3 = *MEMORY[0x1E69DE768];
  transitionCopy = transition;
  v6 = [transitionCopy viewControllerForKey:v3];
  view = [v6 view];
  [view removeFromSuperview];

  [transitionCopy completeTransition:1];
}

@end