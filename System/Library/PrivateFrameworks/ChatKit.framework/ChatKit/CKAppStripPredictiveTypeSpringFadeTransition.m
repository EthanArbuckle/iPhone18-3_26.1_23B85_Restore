@interface CKAppStripPredictiveTypeSpringFadeTransition
- (void)transitionFromView:(id)a3 toView:(id)a4 withDirection:(int64_t)a5 completion:(id)a6;
@end

@implementation CKAppStripPredictiveTypeSpringFadeTransition

- (void)transitionFromView:(id)a3 toView:(id)a4 withDirection:(int64_t)a5 completion:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a6;
  v11 = [v9 superview];
  [v11 bringSubviewToFront:v9];

  v12 = MEMORY[0x1E69DD250];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __99__CKAppStripPredictiveTypeSpringFadeTransition_transitionFromView_toView_withDirection_completion___block_invoke;
  v15[3] = &unk_1E72EB8D0;
  v16 = v9;
  v17 = v8;
  v13 = v8;
  v14 = v9;
  [v12 animateWithDuration:0 delay:v15 usingSpringWithDamping:v10 initialSpringVelocity:0.32 options:0.0 animations:14.0 completion:0.0];
}

uint64_t __99__CKAppStripPredictiveTypeSpringFadeTransition_transitionFromView_toView_withDirection_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

@end