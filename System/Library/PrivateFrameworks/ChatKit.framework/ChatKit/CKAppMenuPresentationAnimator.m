@interface CKAppMenuPresentationAnimator
- (void)animateTransition:(id)a3;
@end

@implementation CKAppMenuPresentationAnimator

- (void)animateTransition:(id)a3
{
  v3 = *MEMORY[0x1E69DE778];
  v4 = a3;
  v16 = [v4 viewControllerForKey:v3];
  v5 = [v4 containerView];
  v6 = [v16 view];
  [v5 addSubview:v6];

  [v4 finalFrameForViewController:v16];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v16 view];
  [v15 setFrame:{v8, v10, v12, v14}];

  [v4 completeTransition:1];
}

@end