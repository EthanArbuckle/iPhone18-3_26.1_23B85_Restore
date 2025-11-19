@interface CKAppMenuDismissalAnimator
- (void)animateTransition:(id)a3;
@end

@implementation CKAppMenuDismissalAnimator

- (void)animateTransition:(id)a3
{
  v3 = *MEMORY[0x1E69DE768];
  v4 = a3;
  v6 = [v4 viewControllerForKey:v3];
  v5 = [v6 view];
  [v5 removeFromSuperview];

  [v4 completeTransition:1];
}

@end