@interface CKAppMenuPresentationAnimator
- (void)animateTransition:(id)transition;
@end

@implementation CKAppMenuPresentationAnimator

- (void)animateTransition:(id)transition
{
  v3 = *MEMORY[0x1E69DE778];
  transitionCopy = transition;
  v16 = [transitionCopy viewControllerForKey:v3];
  containerView = [transitionCopy containerView];
  view = [v16 view];
  [containerView addSubview:view];

  [transitionCopy finalFrameForViewController:v16];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  view2 = [v16 view];
  [view2 setFrame:{v8, v10, v12, v14}];

  [transitionCopy completeTransition:1];
}

@end