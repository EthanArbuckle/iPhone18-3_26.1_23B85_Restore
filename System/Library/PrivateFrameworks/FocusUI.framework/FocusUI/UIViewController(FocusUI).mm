@interface UIViewController(FocusUI)
- (void)fcui_layoutViewIfNeededAndAppearingOrAppearedWithAnimation:()FocusUI;
@end

@implementation UIViewController(FocusUI)

- (void)fcui_layoutViewIfNeededAndAppearingOrAppearedWithAnimation:()FocusUI
{
  if ([a1 bs_isAppearingOrAppeared])
  {
    if ([MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled])
    {
      v5 = [a1 view];
      [v5 layoutIfNeeded];
    }

    else
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __88__UIViewController_FocusUI__fcui_layoutViewIfNeededAndAppearingOrAppearedWithAnimation___block_invoke;
      v6[3] = &unk_27901A470;
      v6[4] = a1;
      [MEMORY[0x277D75D18] fcui_animateWithAnimationType:a3 actions:v6 completion:0];
    }
  }
}

@end