@interface CKAppStripPredictiveTypeSimpleFadeTransition
- (void)transitionFromView:(id)view toView:(id)toView withDirection:(int64_t)direction completion:(id)completion;
@end

@implementation CKAppStripPredictiveTypeSimpleFadeTransition

- (void)transitionFromView:(id)view toView:(id)toView withDirection:(int64_t)direction completion:(id)completion
{
  viewCopy = view;
  toViewCopy = toView;
  completionCopy = completion;
  superview = [toViewCopy superview];
  [superview bringSubviewToFront:toViewCopy];

  v12 = MEMORY[0x1E69DD250];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __99__CKAppStripPredictiveTypeSimpleFadeTransition_transitionFromView_toView_withDirection_completion___block_invoke;
  v15[3] = &unk_1E72EB8D0;
  v16 = toViewCopy;
  v17 = viewCopy;
  v13 = viewCopy;
  v14 = toViewCopy;
  [v12 animateWithDuration:v15 animations:completionCopy completion:0.1];
}

uint64_t __99__CKAppStripPredictiveTypeSimpleFadeTransition_transitionFromView_toView_withDirection_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

@end