@interface CSDeviceBlockView
- (BOOL)isShowingAuthenticationView;
- (BOOL)isShowingUnblockDeviceView;
- (CSDeviceBlockViewDelegate)deviceBlockDelegate;
- (double)_buttonsBottomSpacing;
- (void)_activateConstraintsForSideBySide:(BOOL)side;
- (void)_handleEmergencyButtonAction;
- (void)_handleUnblockButtonAction;
- (void)_updateViewForUnblockDeviceViewAnimated:(BOOL)animated;
- (void)addDeviceUnblockButtons;
- (void)removeDeviceUnblockButtons;
- (void)setAuthenticationView:(id)view;
- (void)setUnblockDeviceView:(id)view;
- (void)updateConstraints;
@end

@implementation CSDeviceBlockView

- (void)addDeviceUnblockButtons
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v3 localizedStringForKey:@"DASHBOARD_BLOCK_ERASE_ACTION" value:&stru_28302FDA0 table:@"CoverSheet"];

  [(CSModalView *)self setSecondaryActionButtonText:0];
  plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
  [plainButtonConfiguration setTitle:v16];
  [plainButtonConfiguration setTitleLineBreakMode:4];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [plainButtonConfiguration setBaseForegroundColor:whiteColor];

  [(UIButton *)self->_unblockDeviceButton removeFromSuperview];
  v6 = [MEMORY[0x277D75220] buttonWithType:1];
  unblockDeviceButton = self->_unblockDeviceButton;
  self->_unblockDeviceButton = v6;

  [(UIButton *)self->_unblockDeviceButton setConfiguration:plainButtonConfiguration];
  v8 = self->_unblockDeviceButton;
  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  [(UIButton *)v8 setTitleColor:whiteColor2 forState:0];

  [(UIButton *)self->_unblockDeviceButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_unblockDeviceButton addTarget:self action:sel__handleUnblockButtonAction forControlEvents:64];
  [(CSDeviceBlockView *)self addSubview:self->_unblockDeviceButton];
  if (MGGetBoolAnswer())
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"DASHBOARD_BLOCK_EMERGENCY_BUTTON" value:&stru_28302FDA0 table:@"CoverSheet"];

    plainButtonConfiguration2 = [MEMORY[0x277D75230] plainButtonConfiguration];
    [plainButtonConfiguration2 setTitle:v11];
    whiteColor3 = [MEMORY[0x277D75348] whiteColor];
    [plainButtonConfiguration2 setBaseForegroundColor:whiteColor3];

    [(UIButton *)self->_emergencyButton removeFromSuperview];
    v14 = [MEMORY[0x277D75220] buttonWithType:1];
    emergencyButton = self->_emergencyButton;
    self->_emergencyButton = v14;

    [(UIButton *)self->_emergencyButton setConfiguration:plainButtonConfiguration2];
    [(UIButton *)self->_emergencyButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->_emergencyButton addTarget:self action:sel__handleEmergencyButtonAction forControlEvents:64];
    [(CSDeviceBlockView *)self addSubview:self->_emergencyButton];
  }

  [(CSDeviceBlockView *)self updateConstraints];
}

- (void)updateConstraints
{
  v12.receiver = self;
  v12.super_class = CSDeviceBlockView;
  [(CSModalView *)&v12 updateConstraints];
  [(CSDeviceBlockView *)self removeConstraints:self->_buttonConstraints];
  [(CSDeviceBlockView *)self _activateConstraintsForSideBySide:1];
  unblockDeviceButton = self->_unblockDeviceButton;
  if (unblockDeviceButton && self->_emergencyButton)
  {
    titleLabel = [(UIButton *)unblockDeviceButton titleLabel];
    v5 = *MEMORY[0x277D76C78];
    v6 = *(MEMORY[0x277D76C78] + 8);
    [titleLabel systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], v6}];
    v8 = v7;

    titleLabel2 = [(UIButton *)self->_emergencyButton titleLabel];
    [titleLabel2 systemLayoutSizeFittingSize:{v5, v6}];
    v11 = v10;

    [(CSDeviceBlockView *)self bounds];
    if (v8 + v11 + 84.0 + 36.0 > CGRectGetWidth(v13))
    {
      [(CSDeviceBlockView *)self removeConstraints:self->_buttonConstraints];
      [(CSDeviceBlockView *)self _activateConstraintsForSideBySide:0];
    }
  }
}

- (void)removeDeviceUnblockButtons
{
  [(UIButton *)self->_unblockDeviceButton removeFromSuperview];
  [(UIButton *)self->_emergencyButton removeFromSuperview];
  unblockDeviceButton = self->_unblockDeviceButton;
  self->_unblockDeviceButton = 0;

  emergencyButton = self->_emergencyButton;
  self->_emergencyButton = 0;

  if (MGGetBoolAnswer())
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v6 localizedStringForKey:@"DASHBOARD_BLOCK_EMERGENCY_BUTTON" value:&stru_28302FDA0 table:@"CoverSheet"];
    [(CSModalView *)self setSecondaryActionButtonText:v5];
  }
}

- (void)setUnblockDeviceView:(id)view
{
  viewCopy = view;
  if (self->_unblockDeviceView != viewCopy)
  {
    v7 = viewCopy;
    objc_storeStrong(&self->_unblockDeviceView, view);
    unblockDeviceView = self->_unblockDeviceView;
    [(CSDeviceBlockView *)self bounds];
    [(UIView *)unblockDeviceView setFrame:?];
    [(CSDeviceBlockView *)self _updateViewForUnblockDeviceViewAnimated:1];
    viewCopy = v7;
  }
}

- (void)setAuthenticationView:(id)view
{
  viewCopy = view;
  if (self->_authenticationView != viewCopy)
  {
    v7 = viewCopy;
    objc_storeStrong(&self->_authenticationView, view);
    authenticationView = self->_authenticationView;
    [(CSDeviceBlockView *)self bounds];
    [(UIView *)authenticationView setFrame:?];
    [(UIView *)self->_unblockDeviceView setHidden:self->_authenticationView != 0];
    viewCopy = v7;
  }
}

- (BOOL)isShowingAuthenticationView
{
  authenticationView = [(CSDeviceBlockView *)self authenticationView];
  v3 = authenticationView != 0;

  return v3;
}

- (BOOL)isShowingUnblockDeviceView
{
  unblockDeviceView = [(CSDeviceBlockView *)self unblockDeviceView];
  v3 = unblockDeviceView != 0;

  return v3;
}

- (void)_updateViewForUnblockDeviceViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  unblockDeviceView = self->_unblockDeviceView;
  v6 = unblockDeviceView != 0;
  v7 = 1.0;
  if (unblockDeviceView)
  {
    v7 = 0.0;
  }

  [(UIView *)unblockDeviceView setAlpha:v7];
  v8 = 0.5;
  if (!animatedCopy)
  {
    v8 = 0.0;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__CSDeviceBlockView__updateViewForUnblockDeviceViewAnimated___block_invoke;
  v10[3] = &unk_27838BC70;
  v10[4] = self;
  v11 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__CSDeviceBlockView__updateViewForUnblockDeviceViewAnimated___block_invoke_2;
  v9[3] = &unk_27838B9B8;
  v9[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v10 animations:v9 completion:v8];
}

uint64_t __61__CSDeviceBlockView__updateViewForUnblockDeviceViewAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setShowsDateView:(*(a1 + 40) & 1) == 0];
  [*(a1 + 32) hideTitleLabel:*(a1 + 40)];
  [*(a1 + 32) hideSubtitleLabel:*(a1 + 40)];
  [*(a1 + 32) hideSecondarySubtitleLabel:*(a1 + 40)];
  [*(*(a1 + 32) + 560) setHidden:*(a1 + 40)];
  [*(*(a1 + 32) + 568) setHidden:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 584);
  v3 = 0.0;
  if (*(a1 + 40))
  {
    v3 = 1.0;
  }

  return [v2 setAlpha:v3];
}

- (void)_activateConstraintsForSideBySide:(BOOL)side
{
  array = [MEMORY[0x277CBEB18] array];
  unblockDeviceButton = self->_unblockDeviceButton;
  emergencyButton = self->_emergencyButton;
  if (unblockDeviceButton)
  {
    v8 = emergencyButton == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && !side)
  {
    centerXAnchor = [(UIButton *)self->_emergencyButton centerXAnchor];
    centerXAnchor2 = [(CSDeviceBlockView *)self centerXAnchor];
    v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [(NSArray *)array addObject:v11];

    centerXAnchor3 = [(UIButton *)self->_unblockDeviceButton centerXAnchor];
    centerXAnchor4 = [(CSDeviceBlockView *)self centerXAnchor];
    v14 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [(NSArray *)array addObject:v14];

    bottomAnchor = [(UIButton *)self->_unblockDeviceButton bottomAnchor];
    bottomAnchor2 = [(CSDeviceBlockView *)self bottomAnchor];
    [(CSDeviceBlockView *)self _buttonsBottomSpacing];
    v18 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-v17];
    [(NSArray *)array addObject:v18];

    bottomAnchor3 = [(UIButton *)self->_emergencyButton bottomAnchor];
    topAnchor = [(UIButton *)self->_unblockDeviceButton topAnchor];
    v21 = -16.0;
LABEL_11:
    v41 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:topAnchor constant:v21];
    [(NSArray *)array addObject:v41];

    goto LABEL_12;
  }

  if (unblockDeviceButton)
  {
    trailingAnchor = [(UIButton *)unblockDeviceButton trailingAnchor];
    trailingAnchor2 = [(CSDeviceBlockView *)self trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-28.0];
    [(NSArray *)array addObject:v24];

    titleLabel = [(UIButton *)self->_unblockDeviceButton titleLabel];
    trailingAnchor3 = [titleLabel trailingAnchor];
    trailingAnchor4 = [(CSDeviceBlockView *)self trailingAnchor];
    v28 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-42.0];
    [(NSArray *)array addObject:v28];

    bottomAnchor4 = [(UIButton *)self->_unblockDeviceButton bottomAnchor];
    bottomAnchor5 = [(CSDeviceBlockView *)self bottomAnchor];
    [(CSDeviceBlockView *)self _buttonsBottomSpacing];
    v32 = [bottomAnchor4 constraintLessThanOrEqualToAnchor:bottomAnchor5 constant:-v31];
    [(NSArray *)array addObject:v32];
  }

  if (emergencyButton)
  {
    leadingAnchor = [(UIButton *)self->_emergencyButton leadingAnchor];
    leadingAnchor2 = [(CSDeviceBlockView *)self leadingAnchor];
    v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:28.0];
    [(NSArray *)array addObject:v35];

    titleLabel2 = [(UIButton *)self->_emergencyButton titleLabel];
    leadingAnchor3 = [titleLabel2 leadingAnchor];
    leadingAnchor4 = [(CSDeviceBlockView *)self leadingAnchor];
    v39 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:42.0];
    [(NSArray *)array addObject:v39];

    bottomAnchor3 = [(UIButton *)self->_emergencyButton bottomAnchor];
    topAnchor = [(CSDeviceBlockView *)self bottomAnchor];
    [(CSDeviceBlockView *)self _buttonsBottomSpacing];
    v21 = -v40;
    goto LABEL_11;
  }

LABEL_12:
  buttonConstraints = self->_buttonConstraints;
  self->_buttonConstraints = array;
  v43 = array;

  [MEMORY[0x277CCAAD0] activateConstraints:v43];
}

- (void)_handleUnblockButtonAction
{
  deviceBlockDelegate = [(CSDeviceBlockView *)self deviceBlockDelegate];
  [deviceBlockDelegate handleUnblockButtonAction];
}

- (void)_handleEmergencyButtonAction
{
  deviceBlockDelegate = [(CSDeviceBlockView *)self deviceBlockDelegate];
  [deviceBlockDelegate handleEmergencyButtonAction];
}

- (double)_buttonsBottomSpacing
{
  if ([*MEMORY[0x277D76620] activeInterfaceOrientation] != 1)
  {
    v134 = 0;
    v135 = 0;
    v132 = 0;
    v133 = 0;
    v117 = 0;
    v130 = 0;
    v131 = 0;
    v136 = 0uLL;
    v128 = 0;
    v129 = 0;
    v126 = 0;
    v127 = 0;
    v137 = 0;
    v125 = 0;
    v138 = 0;
    v124 = 0;
    v139 = 0;
    v123 = 0;
    v122 = 0;
    v140 = 0;
    v121 = 0;
    v120 = 0;
    v141 = 0uLL;
    v119 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 21.0;
    goto LABEL_69;
  }

  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *(&v141 + 1) = 0;
      goto LABEL_12;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
    {
      *(&v141 + 1) = 0x100000000;
      goto LABEL_12;
    }
  }

  HIDWORD(v141) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen _referenceBounds];
    }

    DWORD2(v141) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v22 == *(MEMORY[0x277D66E30] + 288) && v21 == *(MEMORY[0x277D66E30] + 296))
    {
      v134 = 0;
      v135 = 0;
      v132 = 0;
      v133 = 0;
      v117 = 0;
      v130 = 0;
      v131 = 0;
      v136 = 0uLL;
      v128 = 0;
      v129 = 0;
      v126 = 0;
      v127 = 0;
      v137 = 0;
      v125 = 0;
      v138 = 0;
      v124 = 0;
      v139 = 0;
      v123 = 0;
      v122 = 0;
      v140 = 0;
      v121 = 0;
      v120 = 0;
      *&v141 = 0;
      v119 = 0;
      v118 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 90.0;
      goto LABEL_69;
    }
  }

  else
  {
    DWORD2(v141) = 0;
  }

LABEL_12:
  v14 = __sb__runningInSpringBoard();
  if (v14)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v141 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice2 userInterfaceIdiom] != 1)
    {
      *&v141 = 0x100000000;
      goto LABEL_21;
    }
  }

  DWORD1(v141) = v14 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 _referenceBounds];
    }

    LODWORD(v141) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v24 >= *(MEMORY[0x277D66E30] + 440))
    {
      v134 = 0;
      v135 = 0;
      v132 = 0;
      v133 = 0;
      v117 = 0;
      v130 = 0;
      v131 = 0;
      v136 = 0uLL;
      v128 = 0;
      v129 = 0;
      v126 = 0;
      v127 = 0;
      v137 = 0;
      v125 = 0;
      v138 = 0;
      v124 = 0;
      v139 = 0;
      v123 = 0;
      v122 = 0;
      v140 = 0;
      v121 = 0;
      v120 = 0;
      v119 = 0;
      v118 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 90.0;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v141) = 0;
  }

LABEL_21:
  v15 = __sb__runningInSpringBoard();
  if (v15)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v140 = 0;
      goto LABEL_30;
    }
  }

  else
  {
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice3 userInterfaceIdiom] != 1)
    {
      v140 = 0x100000000;
      goto LABEL_30;
    }
  }

  HIDWORD(v140) = v15 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen3 _referenceBounds];
    }

    LODWORD(v140) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v25 >= *(MEMORY[0x277D66E30] + 376))
    {
      v134 = 0;
      v135 = 0;
      v132 = 0;
      v133 = 0;
      v117 = 0;
      v130 = 0;
      v131 = 0;
      v136 = 0uLL;
      v128 = 0;
      v129 = 0;
      v126 = 0;
      v127 = 0;
      v137 = 0;
      v125 = 0;
      v138 = 0;
      v124 = 0;
      v139 = 0;
      v123 = 0;
      v122 = 0;
      v120 = 0;
      v121 = 0;
      v119 = 0;
      v118 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 90.0;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v140) = 0;
  }

LABEL_30:
  v16 = __sb__runningInSpringBoard();
  if (v16)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v139 = 0;
      goto LABEL_39;
    }
  }

  else
  {
    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice4 userInterfaceIdiom] != 1)
    {
      v139 = 0x100000000;
      goto LABEL_39;
    }
  }

  HIDWORD(v139) = v16 ^ 1;
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen4 _referenceBounds];
  }

  LODWORD(v139) = mainScreen26 ^ 1;
  BSSizeRoundForScale();
  if (v17 >= *(MEMORY[0x277D66E30] + 280))
  {
    v134 = 0;
    v135 = 0;
    v132 = 0;
    v133 = 0;
    v117 = 0;
    v130 = 0;
    v131 = 0;
    v136 = 0uLL;
    v128 = 0;
    v129 = 0;
    v126 = 0;
    v127 = 0;
    v137 = 0;
    v125 = 0;
    v138 = 0;
    v124 = 0;
    v122 = 0;
    v123 = 0;
    v120 = 0;
    v121 = 0;
    v119 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 90.0;
    goto LABEL_69;
  }

LABEL_39:
  v18 = __sb__runningInSpringBoard();
  if (v18)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v138 = 0;
      goto LABEL_49;
    }
  }

  else
  {
    currentDevice5 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice5 userInterfaceIdiom] != 1)
    {
      v138 = 0x100000000;
      goto LABEL_49;
    }
  }

  HIDWORD(v138) = v18 ^ 1;
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen5 _referenceBounds];
  }

  LODWORD(v138) = mainScreen26 ^ 1;
  BSSizeRoundForScale();
  if (v19 >= *(MEMORY[0x277D66E30] + 264))
  {
    v134 = 0;
    v135 = 0;
    v132 = 0;
    v133 = 0;
    v117 = 0;
    v130 = 0;
    v131 = 0;
    v136 = 0uLL;
    v128 = 0;
    v129 = 0;
    v126 = 0;
    v127 = 0;
    v137 = 0;
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 90.0;
    goto LABEL_69;
  }

LABEL_49:
  v20 = __sb__runningInSpringBoard();
  if (v20)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v137 = 0;
      goto LABEL_188;
    }
  }

  else
  {
    currentDevice6 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice6 userInterfaceIdiom] != 1)
    {
      v137 = 0x100000000;
      goto LABEL_188;
    }
  }

  HIDWORD(v137) = v20 ^ 1;
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen6 _referenceBounds];
  }

  LODWORD(v137) = mainScreen26 ^ 1;
  BSSizeRoundForScale();
  if (v27 >= *(MEMORY[0x277D66E30] + 248))
  {
    v134 = 0;
    v135 = 0;
    v132 = 0;
    v133 = 0;
    v117 = 0;
    v130 = 0;
    v131 = 0;
    v136 = 0uLL;
    v128 = 0;
    v129 = 0;
    v126 = 0;
    v127 = 0;
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 90.0;
    goto LABEL_69;
  }

LABEL_188:
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_190;
    }

LABEL_196:
    v134 = 0;
    v135 = 0;
    v132 = 0;
    v133 = 0;
    v117 = 0;
    v130 = 0;
    v131 = 0;
    *&v136 = 0;
    v128 = 0;
    v129 = 0;
    DWORD2(v136) = 0;
    v126 = 0;
    v127 = 0;
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 90.0;
    HIDWORD(v136) = mainScreen26 ^ 1;
    goto LABEL_69;
  }

  currentDevice7 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice7 userInterfaceIdiom] == 1)
  {
    goto LABEL_196;
  }

LABEL_190:
  HIDWORD(v136) = mainScreen26 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_194:
    *(&v136 + 4) = 0;
    goto LABEL_204;
  }

  v28 = __sb__runningInSpringBoard();
  if (v28)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_194;
    }
  }

  else
  {
    currentDevice8 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice8 userInterfaceIdiom])
    {
      *(&v136 + 4) = 0x100000000;
      goto LABEL_204;
    }
  }

  DWORD2(v136) = v28 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen7 _referenceBounds];
    }

    DWORD1(v136) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v31 >= *(MEMORY[0x277D66E30] + 200))
    {
      v134 = 0;
      v135 = 0;
      v132 = 0;
      v133 = 0;
      v117 = 0;
      v130 = 0;
      v131 = 0;
      LODWORD(v136) = 0;
      v128 = 0;
      v129 = 0;
      v126 = 0;
      v127 = 0;
      v125 = 0;
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v118 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 59.0;
      goto LABEL_69;
    }
  }

  else
  {
    DWORD1(v136) = 0;
  }

LABEL_204:
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v117 = 0;
      LODWORD(v136) = 0;
      goto LABEL_214;
    }
  }

  else
  {
    currentDevice9 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice9 userInterfaceIdiom])
    {
      v117 = 0;
      LODWORD(v136) = 1;
      goto LABEL_214;
    }
  }

  LODWORD(v136) = mainScreen26 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen8 _referenceBounds];
    }

    v117 = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v29 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_218;
    }
  }

  else
  {
    v117 = 0;
  }

LABEL_214:
  if (_SBF_Private_IsD94Like())
  {
    v134 = 0;
    v135 = 0;
    v132 = 0;
    v133 = 0;
    v130 = 0;
    v131 = 0;
    v128 = 0;
    v129 = 0;
    v126 = 0;
    v127 = 0;
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 48.7;
    goto LABEL_69;
  }

LABEL_218:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_222:
    v135 = 0;
    goto LABEL_232;
  }

  v30 = __sb__runningInSpringBoard();
  if (v30)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_222;
    }
  }

  else
  {
    currentDevice10 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice10 userInterfaceIdiom])
    {
      v135 = 0x100000000;
      goto LABEL_232;
    }
  }

  HIDWORD(v135) = v30 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen9 _referenceBounds];
    }

    LODWORD(v135) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v35 >= *(MEMORY[0x277D66E30] + 136))
    {
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v127 = 0;
      v128 = 0;
      v125 = 0;
      v126 = 0;
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v118 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 59.0;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v135) = 0;
  }

LABEL_232:
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v134 = 0;
      goto LABEL_242;
    }
  }

  else
  {
    currentDevice11 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice11 userInterfaceIdiom])
    {
      v134 = 0x100000000;
      goto LABEL_242;
    }
  }

  HIDWORD(v134) = mainScreen26 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen10 _referenceBounds];
    }

    LODWORD(v134) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v32 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_246;
    }
  }

  else
  {
    LODWORD(v134) = 0;
  }

LABEL_242:
  if (_SBF_Private_IsD64Like())
  {
    v132 = 0;
    v133 = 0;
    v130 = 0;
    v131 = 0;
    v128 = 0;
    v129 = 0;
    v126 = 0;
    v127 = 0;
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 48.7;
    goto LABEL_69;
  }

LABEL_246:
  v33 = __sb__runningInSpringBoard();
  if (v33)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v133 = 0;
      goto LABEL_256;
    }
  }

  else
  {
    currentDevice12 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice12 userInterfaceIdiom])
    {
      v133 = 0x100000000;
      goto LABEL_256;
    }
  }

  HIDWORD(v133) = v33 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen11 _referenceBounds];
    }

    LODWORD(v133) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v34 >= *(MEMORY[0x277D66E30] + 136))
    {
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v127 = 0;
      v128 = 0;
      v125 = 0;
      v126 = 0;
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v118 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 59.0;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v133) = 0;
  }

LABEL_256:
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v132 = 0;
      goto LABEL_266;
    }
  }

  else
  {
    currentDevice13 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice13 userInterfaceIdiom])
    {
      v132 = 0x100000000;
      goto LABEL_266;
    }
  }

  HIDWORD(v132) = mainScreen26 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen12 _referenceBounds];
    }

    LODWORD(v132) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v36 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_276;
    }
  }

  else
  {
    LODWORD(v132) = 0;
  }

LABEL_266:
  if (_SBF_Private_IsD54())
  {
    v130 = 0;
    v131 = 0;
    v128 = 0;
    v129 = 0;
    v126 = 0;
    v127 = 0;
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 48.7;
    goto LABEL_69;
  }

LABEL_276:
  v37 = __sb__runningInSpringBoard();
  if (v37)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v131 = 0;
      goto LABEL_286;
    }
  }

  else
  {
    currentDevice14 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice14 userInterfaceIdiom])
    {
      v131 = 0x100000000;
      goto LABEL_286;
    }
  }

  HIDWORD(v131) = v37 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v38 = __sb__runningInSpringBoard();
    if (v38)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen13 _referenceBounds];
    }

    mainScreen26 = v38 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v131) = mainScreen26;
    if (v39 >= *(MEMORY[0x277D66E30] + 120) && _SBF_Private_IsN84OrSimilarDevice())
    {
      v129 = 0;
      v130 = 0;
      v127 = 0;
      v128 = 0;
      v125 = 0;
      v126 = 0;
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v118 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 58.5;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v131) = 0;
  }

LABEL_286:
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v130 = 0;
      goto LABEL_296;
    }
  }

  else
  {
    currentDevice15 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice15 userInterfaceIdiom])
    {
      v130 = 0x100000000;
      goto LABEL_296;
    }
  }

  HIDWORD(v130) = mainScreen26 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen14 _referenceBounds];
    }

    LODWORD(v130) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v40 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_305;
    }
  }

  else
  {
    LODWORD(v130) = 0;
  }

LABEL_296:
  if (_SBF_Private_IsD33OrSimilarDevice() && _SBF_Private_IsN84ZoomedOrSimilarDevice())
  {
    v128 = 0;
    v129 = 0;
    v126 = 0;
    v127 = 0;
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 50.7;
    goto LABEL_69;
  }

LABEL_305:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_309:
    v129 = 0;
    goto LABEL_316;
  }

  v41 = __sb__runningInSpringBoard();
  if (v41)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_309;
    }
  }

  else
  {
    currentDevice16 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice16 userInterfaceIdiom])
    {
      v129 = 0x100000000;
      goto LABEL_316;
    }
  }

  HIDWORD(v129) = v41 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v42 = __sb__runningInSpringBoard();
    if (v42)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen15 _referenceBounds];
    }

    mainScreen26 = v42 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v129) = mainScreen26;
    if (v45 >= *(MEMORY[0x277D66E30] + 184))
    {
      v127 = 0;
      v128 = 0;
      v125 = 0;
      v126 = 0;
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v118 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 51.0;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v129) = 0;
  }

LABEL_316:
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v128 = 0;
      goto LABEL_326;
    }
  }

  else
  {
    currentDevice17 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice17 userInterfaceIdiom])
    {
      v128 = 0x100000000;
      goto LABEL_326;
    }
  }

  HIDWORD(v128) = mainScreen26 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen16 _referenceBounds];
    }

    LODWORD(v128) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v43 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_330;
    }
  }

  else
  {
    LODWORD(v128) = 0;
  }

LABEL_326:
  if (_SBF_Private_IsD93Like())
  {
    v126 = 0;
    v127 = 0;
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 37.5;
    goto LABEL_69;
  }

LABEL_330:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_334:
    v127 = 0;
    goto LABEL_344;
  }

  v44 = __sb__runningInSpringBoard();
  if (v44)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_334;
    }
  }

  else
  {
    currentDevice18 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice18 userInterfaceIdiom])
    {
      v127 = 0x100000000;
      goto LABEL_344;
    }
  }

  HIDWORD(v127) = v44 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v46 = __sb__runningInSpringBoard();
    if (v46)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen17 _referenceBounds];
    }

    mainScreen26 = v46 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v127) = mainScreen26;
    if (v49 >= *(MEMORY[0x277D66E30] + 104))
    {
      v125 = 0;
      v126 = 0;
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v118 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 51.0;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v127) = 0;
  }

LABEL_344:
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v126 = 0;
      goto LABEL_354;
    }
  }

  else
  {
    currentDevice19 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice19 userInterfaceIdiom])
    {
      v126 = 0x100000000;
      goto LABEL_354;
    }
  }

  HIDWORD(v126) = mainScreen26 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen18 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen18 _referenceBounds];
    }

    LODWORD(v126) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v47 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_358;
    }
  }

  else
  {
    LODWORD(v126) = 0;
  }

LABEL_354:
  if (_SBF_Private_IsD63Like())
  {
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 37.5;
    goto LABEL_69;
  }

LABEL_358:
  if (!_SBF_Private_IsD23Like())
  {
LABEL_362:
    v125 = 0;
    goto LABEL_372;
  }

  v48 = __sb__runningInSpringBoard();
  if (v48)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_362;
    }
  }

  else
  {
    currentDevice20 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice20 userInterfaceIdiom])
    {
      v125 = 0x100000000;
      goto LABEL_372;
    }
  }

  HIDWORD(v125) = v48 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen19 _referenceBounds];
    }

    LODWORD(v125) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v54 >= *(MEMORY[0x277D66E30] + 216))
    {
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v118 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 59.0;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v125) = 0;
  }

LABEL_372:
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v124 = 0;
      goto LABEL_382;
    }
  }

  else
  {
    currentDevice21 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice21 userInterfaceIdiom])
    {
      v124 = 0x100000000;
      goto LABEL_382;
    }
  }

  HIDWORD(v124) = mainScreen26 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen20 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen20 _referenceBounds];
    }

    LODWORD(v124) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v50 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_386;
    }
  }

  else
  {
    LODWORD(v124) = 0;
  }

LABEL_382:
  if (_SBF_Private_IsD23Like())
  {
    v122 = 0;
    v123 = 0;
    v120 = 0;
    v121 = 0;
    v119 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 59.0;
    goto LABEL_69;
  }

LABEL_386:
  v51 = __sb__runningInSpringBoard();
  if (v51)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v123 = 0;
      goto LABEL_396;
    }
  }

  else
  {
    currentDevice22 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice22 userInterfaceIdiom])
    {
      v123 = 0x100000000;
      goto LABEL_396;
    }
  }

  HIDWORD(v123) = v51 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v52 = __sb__runningInSpringBoard();
    if (v52)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen21 _referenceBounds];
    }

    mainScreen26 = v52 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v123) = mainScreen26;
    if (v53 >= *(MEMORY[0x277D66E30] + 120))
    {
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v118 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 59.0;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v123) = 0;
  }

LABEL_396:
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v122 = 0;
      goto LABEL_406;
    }
  }

  else
  {
    currentDevice23 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice23 userInterfaceIdiom])
    {
      v122 = 0x100000000;
      goto LABEL_406;
    }
  }

  HIDWORD(v122) = mainScreen26 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen22 _referenceBounds];
    }

    LODWORD(v122) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v55 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_416;
    }
  }

  else
  {
    LODWORD(v122) = 0;
  }

LABEL_406:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    v120 = 0;
    v121 = 0;
    v119 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 51.2;
    goto LABEL_69;
  }

LABEL_416:
  v56 = __sb__runningInSpringBoard();
  if (v56)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v121 = 0;
      goto LABEL_426;
    }
  }

  else
  {
    currentDevice24 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice24 userInterfaceIdiom])
    {
      v121 = 0x100000000;
      goto LABEL_426;
    }
  }

  HIDWORD(v121) = v56 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen23 _referenceBounds];
    }

    LODWORD(v121) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v57 >= *(MEMORY[0x277D66E30] + 104))
    {
      v119 = 0;
      v120 = 0;
      v118 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 51.0;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v121) = 0;
  }

LABEL_426:
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v120 = 0;
      goto LABEL_436;
    }
  }

  else
  {
    currentDevice25 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice25 userInterfaceIdiom])
    {
      v120 = 0x100000000;
      goto LABEL_436;
    }
  }

  HIDWORD(v120) = mainScreen26 ^ 1;
  if (SBFEffectiveHomeButtonType() != 2)
  {
    LODWORD(v120) = 0;
    goto LABEL_436;
  }

  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen24 _referenceBounds];
  }

  LODWORD(v120) = mainScreen26 ^ 1;
  BSSizeRoundForScale();
  if (v58 < *(MEMORY[0x277D66E30] + 104))
  {
LABEL_436:
    if (_SBF_Private_IsD53())
    {
      v119 = 0;
      v118 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 37.5;
      goto LABEL_69;
    }
  }

  if (_SBF_Private_IsD16() && _SBF_Private_IsD52OrSimilarDevice())
  {
    goto LABEL_445;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && _SBF_Private_IsD16())
  {
    goto LABEL_448;
  }

  if (_SBF_Private_IsD52OrSimilarDevice())
  {
LABEL_445:
    v119 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 51.0;
    goto LABEL_69;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
LABEL_448:
    v119 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 40.0;
    goto LABEL_69;
  }

  v59 = __sb__runningInSpringBoard();
  if (v59)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v119 = 0;
      goto LABEL_461;
    }
  }

  else
  {
    currentDevice26 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice26 userInterfaceIdiom])
    {
      v119 = 0x100000000;
      goto LABEL_461;
    }
  }

  HIDWORD(v119) = v59 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen25 _referenceBounds];
    }

    LODWORD(v119) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v61 >= *(MEMORY[0x277D66E30] + 88))
    {
      v118 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 51.0;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v119) = 0;
  }

LABEL_461:
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v118 = 0;
      v8 = 0;
      goto LABEL_471;
    }
  }

  else
  {
    currentDevice27 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice27 userInterfaceIdiom])
    {
      v8 = 0;
      v118 = 1;
      goto LABEL_471;
    }
  }

  v118 = mainScreen26 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen26 _referenceBounds];
    }

    v8 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v62 >= *(MEMORY[0x277D66E30] + 72))
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 40.0;
      goto LABEL_69;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_471:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v9 = 0;
      v10 = 0;
      goto LABEL_481;
    }
  }

  else
  {
    currentDevice28 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice28 userInterfaceIdiom])
    {
      v10 = 0;
      v9 = 1;
      goto LABEL_481;
    }
  }

  v9 = currentDevice29 ^ 1;
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen27 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen27 _referenceBounds];
  }

  v10 = currentDevice29 ^ 1;
  BSSizeRoundForScale();
  if (v60 >= *(MEMORY[0x277D66E30] + 56))
  {
    v11 = 0;
    v12 = 0;
    v13 = 50.0;
    goto LABEL_69;
  }

LABEL_481:
  mainScreen28 = __sb__runningInSpringBoard();
  if (mainScreen28)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v11 = 0;
      v12 = 0;
LABEL_498:
      v13 = 50.0;
      goto LABEL_69;
    }
  }

  else
  {
    currentDevice29 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice29 userInterfaceIdiom])
    {
      v12 = 0;
      v11 = 1;
      goto LABEL_498;
    }
  }

  v11 = mainScreen28 ^ 1;
  v63 = __sb__runningInSpringBoard();
  if (v63)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen28 _referenceBounds];
  }

  v12 = v63 ^ 1;
  BSSizeRoundForScale();
  if (v64 < *(MEMORY[0x277D66E30] + 40))
  {
    goto LABEL_498;
  }

  v13 = 50.0;
LABEL_69:
  if (v12)
  {

    if (!v11)
    {
      goto LABEL_71;
    }
  }

  else if (!v11)
  {
LABEL_71:
    if (v10)
    {
      goto LABEL_72;
    }

    goto LABEL_182;
  }

  if (v10)
  {
LABEL_72:

    if (!v9)
    {
      goto LABEL_73;
    }

    goto LABEL_183;
  }

LABEL_182:
  if (!v9)
  {
LABEL_73:
    if (!v8)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

LABEL_183:

  if (v8)
  {
LABEL_74:
  }

LABEL_75:
  if (v118)
  {
  }

  if (v119)
  {
  }

  if (HIDWORD(v119))
  {
  }

  if (v120)
  {
  }

  if (HIDWORD(v120))
  {
  }

  if (v121)
  {
  }

  if (HIDWORD(v121))
  {
  }

  if (v122)
  {
  }

  if (HIDWORD(v122))
  {
  }

  if (v123)
  {
  }

  if (HIDWORD(v123))
  {
  }

  if (v124)
  {
  }

  if (HIDWORD(v124))
  {
  }

  if (v125)
  {
  }

  if (HIDWORD(v125))
  {
  }

  if (v126)
  {
  }

  if (HIDWORD(v126))
  {
  }

  if (v127)
  {
  }

  if (HIDWORD(v127))
  {
  }

  if (v128)
  {
  }

  if (HIDWORD(v128))
  {
  }

  if (v129)
  {
  }

  if (HIDWORD(v129))
  {
  }

  if (v130)
  {
  }

  if (HIDWORD(v130))
  {
  }

  if (v131)
  {
  }

  if (HIDWORD(v131))
  {
  }

  if (v132)
  {
  }

  if (HIDWORD(v132))
  {
  }

  if (v133)
  {
  }

  if (HIDWORD(v133))
  {
  }

  if (v134)
  {
  }

  if (HIDWORD(v134))
  {
  }

  if (v135)
  {
  }

  if (HIDWORD(v135))
  {
  }

  if (v117)
  {
  }

  if (v136)
  {
  }

  if (DWORD1(v136))
  {
  }

  if (DWORD2(v136))
  {
  }

  if (HIDWORD(v136))
  {
  }

  if (v137)
  {
  }

  if (HIDWORD(v137))
  {
  }

  if (v138)
  {
  }

  if (HIDWORD(v138))
  {
  }

  if (v139)
  {
  }

  if (HIDWORD(v139))
  {
  }

  if (v140)
  {
  }

  if (HIDWORD(v140))
  {
  }

  if (v141)
  {
  }

  if (DWORD1(v141))
  {
  }

  if (DWORD2(v141))
  {
  }

  if (HIDWORD(v141))
  {
  }

  return v13;
}

- (CSDeviceBlockViewDelegate)deviceBlockDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceBlockDelegate);

  return WeakRetained;
}

@end