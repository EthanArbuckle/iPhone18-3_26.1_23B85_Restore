@interface _FCCCAnimator
- (void)animateTransition:(id)a3;
@end

@implementation _FCCCAnimator

- (void)animateTransition:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D75D18];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35___FCCCAnimator_animateTransition___block_invoke;
  v8[3] = &unk_27901A470;
  v9 = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35___FCCCAnimator_animateTransition___block_invoke_2;
  v6[3] = &unk_27901A5D0;
  v7 = v9;
  v5 = v9;
  [v4 fcui_animateWithAnimationType:0 actions:v8 completion:v6];
}

@end