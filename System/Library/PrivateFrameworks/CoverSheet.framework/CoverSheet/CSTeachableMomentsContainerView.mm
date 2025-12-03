@interface CSTeachableMomentsContainerView
- (BOOL)isStatusBarLayoutReady;
- (CGPoint)_grabberCenterForContainerBounds:(CGRect)bounds grabberTop:(double)top grabberTopIsRelative:(BOOL)relative grabberSize:(CGSize)size isSpaceConstrained:(BOOL *)constrained;
- (CSTeachableMomentsContainerView)initWithFrame:(CGRect)frame;
- (UIStatusBar)statusBarToFollow;
- (id)_callToActionLabelFont;
- (id)createCallToActionLabel;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)presentationRegions;
- (void)_addCallToActionLabel;
- (void)_addControlCenterTutors;
- (void)_layoutCallToActionLabel;
- (void)_layoutControlCenterGrabberAndGlyph;
- (void)_layoutHomeAffordanceContainer;
- (void)_preferredTextSizeChanged:(id)changed;
- (void)_updateViewsForLegibilitySettings;
- (void)layoutSubviews;
- (void)setCallToActionLabel:(id)label;
- (void)setLegibilitySettings:(id)settings;
- (void)setStatusBarToFollow:(id)follow;
- (void)statusBarManager:(id)manager didUpdateAvoidanceFrameForStatusBar:(id)bar withAnimationSettings:(id)settings;
@end

@implementation CSTeachableMomentsContainerView

- (void)_layoutHomeAffordanceContainer
{
  homeAffordanceContainerView = [(CSTeachableMomentsContainerView *)self homeAffordanceContainerView];
  if (homeAffordanceContainerView)
  {
    v4 = homeAffordanceContainerView;
    [(CSTeachableMomentsContainerView *)self bounds];
    [v4 setFrame:?];
    homeAffordanceContainerView = v4;
  }
}

- (void)_layoutCallToActionLabel
{
  callToActionLabelContainerView = [(CSTeachableMomentsContainerView *)self callToActionLabelContainerView];
  callToActionLabelPositionPlaceholderView = [(CSTeachableMomentsContainerView *)self callToActionLabelPositionPlaceholderView];
  callToActionLabel = [(CSTeachableMomentsContainerView *)self callToActionLabel];
  [(CSTeachableMomentsContainerView *)self bounds];
  v6 = v5;
  v8 = v7;
  [callToActionLabelContainerView setFrame:?];
  [callToActionLabel sizeThatFits:{159.0, 1.79769313e308}];
  v10 = v9;
  BSRectWithSize();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = v6 * 0.5;
  v20 = v8 - v10 * 0.5 + -11.0;
  [callToActionLabel setBounds:{v11, v13}];
  [callToActionLabel setCenter:{v19, v20}];
  [callToActionLabelPositionPlaceholderView setBounds:{v12, v14, v16, v18}];
  [callToActionLabelPositionPlaceholderView setCenter:{v19, v20 + -33.0}];
}

- (void)layoutSubviews
{
  BSDispatchQueueAssertMain();
  v3.receiver = self;
  v3.super_class = CSTeachableMomentsContainerView;
  [(CSTeachableMomentsContainerView *)&v3 layoutSubviews];
  [(CSTeachableMomentsContainerView *)self _layoutHomeAffordanceContainer];
  [(CSTeachableMomentsContainerView *)self _layoutCallToActionLabel];
  [(CSTeachableMomentsContainerView *)self _layoutControlCenterGrabberAndGlyph];
}

- (void)_layoutControlCenterGrabberAndGlyph
{
  selfCopy = self;
  [(CSTeachableMomentsContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  traitCollection = [(CSTeachableMomentsContainerView *)self traitCollection];
  [traitCollection displayScale];

  v419[0] = 0;
  controlCenterTutorsContainerView = [(CSTeachableMomentsContainerView *)self controlCenterTutorsContainerView];
  [controlCenterTutorsContainerView setFrame:{v4, v6, v8, v10}];

  controlCenterGrabberContainerView = [(CSTeachableMomentsContainerView *)self controlCenterGrabberContainerView];
  controlCenterGrabberView = [(CSTeachableMomentsContainerView *)self controlCenterGrabberView];
  controlCenterGrabberPositionPlaceholderView = [(CSTeachableMomentsContainerView *)self controlCenterGrabberPositionPlaceholderView];
  v16 = __sb__runningInSpringBoard();
  v17 = 0x277D75000uLL;
  v416 = controlCenterGrabberView;
  v417 = controlCenterGrabberContainerView;
  *&v415[64] = controlCenterGrabberPositionPlaceholderView;
  if (v16)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v18 = 0;
      v19 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
    {
      v18 = 0;
      v19 = 1;
      goto LABEL_10;
    }
  }

  v19 = v16 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen _referenceBounds];
    }

    v18 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v42 == *(MEMORY[0x277D66E30] + 288) && v41 == *(MEMORY[0x277D66E30] + 296))
    {
      *&v415[56] = currentDevice29 ^ 1;
      *&v415[60] = v19;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v347 = 0;
      v351 = 0;
      v355 = 0;
      v359 = 0;
      v363 = 0;
      v367 = 0;
      v371 = 0;
      v375 = 0;
      v379 = 0;
      v383 = 0;
      v387 = 0;
      v391 = 0;
      v395 = 0;
      v399 = 0;
      v403 = 0;
      v407 = 0;
      v411 = 0;
      memset(v415, 0, 56);
      v38 = 61.0;
      goto LABEL_64;
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_10:
  v21 = __sb__runningInSpringBoard();
  *&v415[56] = v18;
  *&v415[60] = v19;
  if (v21)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v22 = 0;
      v23 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice2 userInterfaceIdiom] != 1)
    {
      v22 = 0;
      v23 = 1;
      goto LABEL_19;
    }
  }

  v23 = v21 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 _referenceBounds];
    }

    v22 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v43 >= *(MEMORY[0x277D66E30] + 440))
    {
      *&v415[48] = currentDevice29 ^ 1;
      *&v415[52] = v23;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v347 = 0;
      v351 = 0;
      v355 = 0;
      v359 = 0;
      v363 = 0;
      v367 = 0;
      v371 = 0;
      v375 = 0;
      v379 = 0;
      v383 = 0;
      v387 = 0;
      v391 = 0;
      v395 = 0;
      v399 = 0;
      v403 = 0;
      v407 = 0;
      v411 = 0;
      memset(v415, 0, 48);
      v38 = 61.0;
      goto LABEL_64;
    }
  }

  else
  {
    v22 = 0;
  }

LABEL_19:
  v24 = __sb__runningInSpringBoard();
  *&v415[48] = __PAIR64__(v23, v22);
  if (v24)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v415[40] = 0;
      v25 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice3 userInterfaceIdiom] != 1)
    {
      *&v415[40] = 0;
      v25 = 1;
      goto LABEL_28;
    }
  }

  v25 = v24 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen3 _referenceBounds];
    }

    *&v415[40] = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v44 >= *(MEMORY[0x277D66E30] + 376))
    {
      *&v415[44] = v25;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v347 = 0;
      v351 = 0;
      v355 = 0;
      v359 = 0;
      v363 = 0;
      v367 = 0;
      v371 = 0;
      v375 = 0;
      v379 = 0;
      v383 = 0;
      v387 = 0;
      v391 = 0;
      v395 = 0;
      v399 = 0;
      v403 = 0;
      v407 = 0;
      v411 = 0;
      memset(v415, 0, 40);
      v38 = 61.0;
      goto LABEL_64;
    }
  }

  else
  {
    *&v415[40] = 0;
  }

LABEL_28:
  v26 = __sb__runningInSpringBoard();
  *&v415[44] = v25;
  if (v26)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v415[32] = 0;
      goto LABEL_37;
    }
  }

  else
  {
    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice4 userInterfaceIdiom] != 1)
    {
      *&v415[32] = 0x100000000;
      goto LABEL_37;
    }
  }

  *&v415[36] = v26 ^ 1;
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen4 _referenceBounds];
  }

  *&v415[32] = currentDevice29 ^ 1;
  BSSizeRoundForScale();
  if (v28 >= *(MEMORY[0x277D66E30] + 280))
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v347 = 0;
    v351 = 0;
    v355 = 0;
    v359 = 0;
    v363 = 0;
    v367 = 0;
    v371 = 0;
    v375 = 0;
    v379 = 0;
    v383 = 0;
    v387 = 0;
    v391 = 0;
    v395 = 0;
    v399 = 0;
    v403 = 0;
    v407 = 0;
    v411 = 0;
    memset(v415, 0, 32);
    v38 = 61.0;
    goto LABEL_64;
  }

LABEL_37:
  v29 = __sb__runningInSpringBoard();
  if (v29)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v415[24] = 0;
      goto LABEL_47;
    }
  }

  else
  {
    currentDevice5 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice5 userInterfaceIdiom] != 1)
    {
      *&v415[24] = 0x100000000;
      goto LABEL_47;
    }
  }

  *&v415[28] = v29 ^ 1;
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen5 _referenceBounds];
  }

  *&v415[24] = currentDevice29 ^ 1;
  BSSizeRoundForScale();
  if (v39 >= *(MEMORY[0x277D66E30] + 264))
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v347 = 0;
    v351 = 0;
    v355 = 0;
    v359 = 0;
    v363 = 0;
    v367 = 0;
    v371 = 0;
    v375 = 0;
    v379 = 0;
    v383 = 0;
    v387 = 0;
    v391 = 0;
    v395 = 0;
    v399 = 0;
    v403 = 0;
    v407 = 0;
    v411 = 0;
    memset(v415, 0, 24);
    v38 = 61.0;
    goto LABEL_64;
  }

LABEL_47:
  v40 = __sb__runningInSpringBoard();
  if (v40)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v415[16] = 0;
      goto LABEL_403;
    }
  }

  else
  {
    currentDevice6 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice6 userInterfaceIdiom] != 1)
    {
      *&v415[16] = 0x100000000;
      goto LABEL_403;
    }
  }

  *&v415[20] = v40 ^ 1;
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen6 _referenceBounds];
  }

  *&v415[16] = currentDevice29 ^ 1;
  BSSizeRoundForScale();
  if (v90 >= *(MEMORY[0x277D66E30] + 248))
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v347 = 0;
    v351 = 0;
    v355 = 0;
    v359 = 0;
    v363 = 0;
    v367 = 0;
    v371 = 0;
    v375 = 0;
    v379 = 0;
    v383 = 0;
    v387 = 0;
    v391 = 0;
    v395 = 0;
    v399 = 0;
    v403 = 0;
    v407 = 0;
    v411 = 0;
    *v415 = 0uLL;
    v38 = 61.0;
    goto LABEL_64;
  }

LABEL_403:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_405;
    }

LABEL_411:
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v347 = 0;
    v351 = 0;
    v355 = 0;
    v359 = 0;
    v363 = 0;
    v367 = 0;
    v371 = 0;
    v375 = 0;
    v379 = 0;
    v383 = 0;
    v387 = 0;
    v391 = 0;
    v395 = 0;
    v399 = 0;
    v403 = 0;
    v407 = 0;
    v411 = 0;
    *v415 = 0;
    *&v415[8] = 0;
    v38 = 61.0;
    *&v415[12] = currentDevice29 ^ 1;
    goto LABEL_64;
  }

  currentDevice7 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice7 userInterfaceIdiom] == 1)
  {
    goto LABEL_411;
  }

LABEL_405:
  *&v415[12] = currentDevice29 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_409:
    *&v415[4] = 0;
    goto LABEL_792;
  }

  v91 = __sb__runningInSpringBoard();
  if (v91)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_409;
    }
  }

  else
  {
    currentDevice8 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice8 userInterfaceIdiom])
    {
      *&v415[4] = 0x100000000;
      goto LABEL_792;
    }
  }

  *&v415[8] = v91 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v137 = __sb__runningInSpringBoard();
    if (v137)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen7 _referenceBounds];
    }

    currentDevice29 = v137 ^ 1u;
    BSSizeRoundForScale();
    *&v415[4] = currentDevice29;
    if (v143 >= *(MEMORY[0x277D66E30] + 200))
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v347 = 0;
      v351 = 0;
      v355 = 0;
      v359 = 0;
      v363 = 0;
      v367 = 0;
      v371 = 0;
      v375 = 0;
      v379 = 0;
      v383 = 0;
      v387 = 0;
      v391 = 0;
      v395 = 0;
      v399 = 0;
      v403 = 0;
      v407 = 0;
      v411 = 0;
      *v415 = 0;
      v38 = 60.0;
      goto LABEL_64;
    }
  }

  else
  {
    *&v415[4] = 0;
  }

LABEL_792:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v411) = 0;
      *v415 = 0;
      goto LABEL_802;
    }
  }

  else
  {
    currentDevice9 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice9 userInterfaceIdiom])
    {
      HIDWORD(v411) = 0;
      *v415 = 1;
      goto LABEL_802;
    }
  }

  *v415 = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen8 _referenceBounds];
    }

    HIDWORD(v411) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v138 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_806;
    }
  }

  else
  {
    HIDWORD(v411) = 0;
  }

LABEL_802:
  if (_SBF_Private_IsD94Like())
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v347 = 0;
    v351 = 0;
    v355 = 0;
    v359 = 0;
    v363 = 0;
    v367 = 0;
    v371 = 0;
    v375 = 0;
    v379 = 0;
    v383 = 0;
    v387 = 0;
    v391 = 0;
    v395 = 0;
    v399 = 0;
    v403 = 0;
    v407 = 0;
    LODWORD(v411) = 0;
    v38 = 60.0;
    goto LABEL_64;
  }

LABEL_806:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_810:
    HIDWORD(v407) = 0;
    LODWORD(v411) = 0;
    goto LABEL_848;
  }

  v139 = __sb__runningInSpringBoard();
  if (v139)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_810;
    }
  }

  else
  {
    currentDevice10 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice10 userInterfaceIdiom])
    {
      HIDWORD(v407) = 0;
      LODWORD(v411) = 1;
      goto LABEL_848;
    }
  }

  LODWORD(v411) = v139 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen9 _referenceBounds];
    }

    HIDWORD(v407) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v157 >= *(MEMORY[0x277D66E30] + 136))
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v347 = 0;
      v351 = 0;
      v355 = 0;
      v359 = 0;
      v363 = 0;
      v367 = 0;
      v371 = 0;
      v375 = 0;
      v379 = 0;
      v383 = 0;
      v387 = 0;
      v391 = 0;
      v395 = 0;
      v399 = 0;
      v403 = 0;
      LODWORD(v407) = 0;
      v38 = 60.0;
      goto LABEL_64;
    }
  }

  else
  {
    HIDWORD(v407) = 0;
  }

LABEL_848:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v403) = 0;
      LODWORD(v407) = 0;
      goto LABEL_858;
    }
  }

  else
  {
    currentDevice11 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice11 userInterfaceIdiom])
    {
      HIDWORD(v403) = 0;
      LODWORD(v407) = 1;
      goto LABEL_858;
    }
  }

  LODWORD(v407) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen10 _referenceBounds];
    }

    HIDWORD(v403) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v145 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_862;
    }
  }

  else
  {
    HIDWORD(v403) = 0;
  }

LABEL_858:
  if (_SBF_Private_IsD64Like())
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v347 = 0;
    v351 = 0;
    v355 = 0;
    v359 = 0;
    v363 = 0;
    v367 = 0;
    v371 = 0;
    v375 = 0;
    v379 = 0;
    v383 = 0;
    v387 = 0;
    v391 = 0;
    v395 = 0;
    v399 = 0;
    LODWORD(v403) = 0;
    v38 = 60.0;
    goto LABEL_64;
  }

LABEL_862:
  v146 = __sb__runningInSpringBoard();
  if (v146)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v399) = 0;
      LODWORD(v403) = 0;
      goto LABEL_872;
    }
  }

  else
  {
    currentDevice12 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice12 userInterfaceIdiom])
    {
      HIDWORD(v399) = 0;
      LODWORD(v403) = 1;
      goto LABEL_872;
    }
  }

  LODWORD(v403) = v146 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v147 = __sb__runningInSpringBoard();
    if (v147)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen11 _referenceBounds];
    }

    currentDevice29 = v147 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v399) = currentDevice29;
    if (v153 >= *(MEMORY[0x277D66E30] + 136))
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v347 = 0;
      v351 = 0;
      v355 = 0;
      v359 = 0;
      v363 = 0;
      v367 = 0;
      v371 = 0;
      v375 = 0;
      v379 = 0;
      v383 = 0;
      v387 = 0;
      v391 = 0;
      v395 = 0;
      LODWORD(v399) = 0;
      v38 = 53.3333;
      goto LABEL_1219;
    }
  }

  else
  {
    HIDWORD(v399) = 0;
  }

LABEL_872:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v395) = 0;
      LODWORD(v399) = 0;
      goto LABEL_941;
    }
  }

  else
  {
    currentDevice13 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice13 userInterfaceIdiom])
    {
      HIDWORD(v395) = 0;
      LODWORD(v399) = 1;
      goto LABEL_941;
    }
  }

  LODWORD(v399) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen12 _referenceBounds];
    }

    HIDWORD(v395) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v160 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_991;
    }
  }

  else
  {
    HIDWORD(v395) = 0;
  }

LABEL_941:
  if (_SBF_Private_IsD54())
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v347 = 0;
    v351 = 0;
    v355 = 0;
    v359 = 0;
    v363 = 0;
    v367 = 0;
    v371 = 0;
    v375 = 0;
    v379 = 0;
    v383 = 0;
    v387 = 0;
    v391 = 0;
    LODWORD(v395) = 0;
    v38 = 53.3333;
LABEL_1219:
    v17 = 0x277D75000;
    goto LABEL_64;
  }

LABEL_991:
  v161 = __sb__runningInSpringBoard();
  if (v161)
  {
    v17 = 0x277D75000uLL;
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v391) = 0;
      LODWORD(v395) = 0;
      goto LABEL_1009;
    }
  }

  else
  {
    v17 = 0x277D75000uLL;
    currentDevice14 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice14 userInterfaceIdiom])
    {
      HIDWORD(v391) = 0;
      LODWORD(v395) = 1;
      goto LABEL_1009;
    }
  }

  LODWORD(v395) = v161 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen13 _referenceBounds];
    }

    HIDWORD(v391) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v173 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v347 = 0;
      v351 = 0;
      v355 = 0;
      v359 = 0;
      v363 = 0;
      v367 = 0;
      v371 = 0;
      v375 = 0;
      v379 = 0;
      v383 = 0;
      v387 = 0;
      LODWORD(v391) = 0;
      v38 = 52.0;
      goto LABEL_64;
    }
  }

  else
  {
    HIDWORD(v391) = 0;
  }

LABEL_1009:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v387) = 0;
      LODWORD(v391) = 0;
      goto LABEL_1066;
    }
  }

  else
  {
    currentDevice15 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice15 userInterfaceIdiom])
    {
      HIDWORD(v387) = 0;
      LODWORD(v391) = 1;
      goto LABEL_1066;
    }
  }

  LODWORD(v391) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen14 _referenceBounds];
    }

    HIDWORD(v387) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v176 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_1138;
    }
  }

  else
  {
    HIDWORD(v387) = 0;
  }

LABEL_1066:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v347 = 0;
    v351 = 0;
    v355 = 0;
    v359 = 0;
    v363 = 0;
    v367 = 0;
    v371 = 0;
    v375 = 0;
    v379 = 0;
    v383 = 0;
    LODWORD(v387) = 0;
    v38 = 0.0;
    goto LABEL_64;
  }

LABEL_1138:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_1142:
    HIDWORD(v383) = 0;
    LODWORD(v387) = 0;
    goto LABEL_1207;
  }

  v177 = __sb__runningInSpringBoard();
  if (v177)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_1142;
    }
  }

  else
  {
    currentDevice16 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice16 userInterfaceIdiom])
    {
      HIDWORD(v383) = 0;
      LODWORD(v387) = 1;
      goto LABEL_1207;
    }
  }

  LODWORD(v387) = v177 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v187 = __sb__runningInSpringBoard();
    if (v187)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen15 _referenceBounds];
    }

    currentDevice29 = v187 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v383) = currentDevice29;
    if (v202 >= *(MEMORY[0x277D66E30] + 184))
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v347 = 0;
      v351 = 0;
      v355 = 0;
      v359 = 0;
      v363 = 0;
      v367 = 0;
      v371 = 0;
      v375 = 0;
      v379 = 0;
      LODWORD(v383) = 0;
      v38 = 55.0;
      goto LABEL_1219;
    }
  }

  else
  {
    HIDWORD(v383) = 0;
  }

LABEL_1207:
  v188 = __sb__runningInSpringBoard();
  if (v188)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      currentDevice29 = 0;
      LODWORD(v383) = 0;
      goto LABEL_1217;
    }
  }

  else
  {
    currentDevice17 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice17 userInterfaceIdiom])
    {
      currentDevice29 = 0;
      LODWORD(v383) = 1;
      goto LABEL_1217;
    }
  }

  LODWORD(v383) = v188 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v189 = __sb__runningInSpringBoard();
    if (v189)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen16 _referenceBounds];
    }

    currentDevice29 = v189 ^ 1u;
    BSSizeRoundForScale();
    if (v190 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_1222;
    }
  }

  else
  {
    currentDevice29 = 0;
  }

LABEL_1217:
  if (_SBF_Private_IsD93Like())
  {
    HIDWORD(v379) = currentDevice29;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v347 = 0;
    v351 = 0;
    v355 = 0;
    v359 = 0;
    v363 = 0;
    v367 = 0;
    v371 = 0;
    v375 = 0;
    LODWORD(v379) = 0;
    v38 = 55.0;
    goto LABEL_1219;
  }

LABEL_1222:
  HIDWORD(v379) = currentDevice29;
  if (!_SBF_Private_IsD63Like())
  {
LABEL_1226:
    HIDWORD(v375) = 0;
    LODWORD(v379) = 0;
    goto LABEL_1297;
  }

  v191 = __sb__runningInSpringBoard();
  if (v191)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_1226;
    }
  }

  else
  {
    currentDevice18 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice18 userInterfaceIdiom])
    {
      HIDWORD(v375) = 0;
      LODWORD(v379) = 1;
      goto LABEL_1297;
    }
  }

  LODWORD(v379) = v191 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen17 _referenceBounds];
    }

    HIDWORD(v375) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v216 >= *(MEMORY[0x277D66E30] + 104))
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v347 = 0;
      v351 = 0;
      v355 = 0;
      v359 = 0;
      v363 = 0;
      v367 = 0;
      v371 = 0;
      LODWORD(v375) = 0;
      v38 = 55.0;
      goto LABEL_1219;
    }
  }

  else
  {
    HIDWORD(v375) = 0;
  }

LABEL_1297:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v371) = 0;
      LODWORD(v375) = 0;
      goto LABEL_1307;
    }
  }

  else
  {
    currentDevice19 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice19 userInterfaceIdiom])
    {
      HIDWORD(v371) = 0;
      LODWORD(v375) = 1;
      goto LABEL_1307;
    }
  }

  LODWORD(v375) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen18 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen18 _referenceBounds];
    }

    HIDWORD(v371) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v206 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_1311;
    }
  }

  else
  {
    HIDWORD(v371) = 0;
  }

LABEL_1307:
  if (_SBF_Private_IsD63Like())
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v347 = 0;
    v351 = 0;
    v355 = 0;
    v359 = 0;
    v363 = 0;
    v367 = 0;
    LODWORD(v371) = 0;
    v38 = 55.0;
    goto LABEL_1219;
  }

LABEL_1311:
  if (!_SBF_Private_IsD23Like())
  {
    HIDWORD(v367) = 0;
    LODWORD(v371) = 0;
    v17 = 0x277D75000;
    goto LABEL_1407;
  }

  v207 = __sb__runningInSpringBoard();
  v17 = 0x277D75000uLL;
  if (v207)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v367) = 0;
      LODWORD(v371) = 0;
      goto LABEL_1407;
    }
  }

  else
  {
    currentDevice20 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice20 userInterfaceIdiom])
    {
      HIDWORD(v367) = 0;
      LODWORD(v371) = 1;
      goto LABEL_1407;
    }
  }

  LODWORD(v371) = v207 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen19 _referenceBounds];
    }

    HIDWORD(v367) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v231 >= *(MEMORY[0x277D66E30] + 216))
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v347 = 0;
      v351 = 0;
      v355 = 0;
      v359 = 0;
      v363 = 0;
      LODWORD(v367) = 0;
      v38 = 52.0;
      goto LABEL_64;
    }
  }

  else
  {
    HIDWORD(v367) = 0;
  }

LABEL_1407:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v363) = 0;
      LODWORD(v367) = 0;
      goto LABEL_1417;
    }
  }

  else
  {
    currentDevice21 = [*(v17 + 1048) currentDevice];
    if ([currentDevice21 userInterfaceIdiom])
    {
      HIDWORD(v363) = 0;
      LODWORD(v367) = 1;
      goto LABEL_1417;
    }
  }

  LODWORD(v367) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen20 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen20 _referenceBounds];
    }

    HIDWORD(v363) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v219 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_1421;
    }
  }

  else
  {
    HIDWORD(v363) = 0;
  }

LABEL_1417:
  if (_SBF_Private_IsD23Like())
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v347 = 0;
    v351 = 0;
    v355 = 0;
    v359 = 0;
    LODWORD(v363) = 0;
    v38 = 52.0;
    goto LABEL_64;
  }

LABEL_1421:
  v220 = __sb__runningInSpringBoard();
  if (v220)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v359) = 0;
      LODWORD(v363) = 0;
      goto LABEL_1431;
    }
  }

  else
  {
    currentDevice22 = [*(v17 + 1048) currentDevice];
    if ([currentDevice22 userInterfaceIdiom])
    {
      HIDWORD(v359) = 0;
      LODWORD(v363) = 1;
      goto LABEL_1431;
    }
  }

  LODWORD(v363) = v220 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen21 _referenceBounds];
    }

    HIDWORD(v359) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v226 >= *(MEMORY[0x277D66E30] + 120))
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v347 = 0;
      v351 = 0;
      v355 = 0;
      LODWORD(v359) = 0;
      *&v227 = 52.0;
LABEL_1714:
      v38 = *&v227;
      goto LABEL_64;
    }
  }

  else
  {
    HIDWORD(v359) = 0;
  }

LABEL_1431:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v355) = 0;
      LODWORD(v359) = 0;
      goto LABEL_1503;
    }
  }

  else
  {
    currentDevice23 = [*(v17 + 1048) currentDevice];
    if ([currentDevice23 userInterfaceIdiom])
    {
      HIDWORD(v355) = 0;
      LODWORD(v359) = 1;
      goto LABEL_1503;
    }
  }

  LODWORD(v359) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen22 _referenceBounds];
    }

    HIDWORD(v355) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v234 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_1554;
    }
  }

  else
  {
    HIDWORD(v355) = 0;
  }

LABEL_1503:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v347 = 0;
    v351 = 0;
    LODWORD(v355) = 0;
    v38 = 0.0;
    goto LABEL_64;
  }

LABEL_1554:
  v235 = __sb__runningInSpringBoard();
  if (v235)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v351) = 0;
      LODWORD(v355) = 0;
      goto LABEL_1572;
    }
  }

  else
  {
    currentDevice24 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice24 userInterfaceIdiom])
    {
      HIDWORD(v351) = 0;
      LODWORD(v355) = 1;
      goto LABEL_1572;
    }
  }

  LODWORD(v355) = v235 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen23 _referenceBounds];
    }

    HIDWORD(v351) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v244 >= *(MEMORY[0x277D66E30] + 104))
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v347 = 0;
      LODWORD(v351) = 0;
      v38 = 47.6666;
      goto LABEL_1219;
    }
  }

  else
  {
    HIDWORD(v351) = 0;
  }

LABEL_1572:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v347 = 0;
      LODWORD(v351) = 0;
      goto LABEL_1635;
    }
  }

  else
  {
    currentDevice25 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice25 userInterfaceIdiom])
    {
      v347 = 0;
      LODWORD(v351) = 1;
      goto LABEL_1635;
    }
  }

  LODWORD(v351) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen24 _referenceBounds];
    }

    v347 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v249 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_1705;
    }
  }

  else
  {
    v347 = 0;
  }

LABEL_1635:
  if (_SBF_Private_IsD53())
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 47.6666;
    goto LABEL_1219;
  }

LABEL_1705:
  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 53.0;
    goto LABEL_1219;
  }

  v17 = 0x277D75000;
  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 53.0;
    goto LABEL_64;
  }

  if (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0 || (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    *&v227 = 46.0;
    goto LABEL_1714;
  }

  v255 = __sb__runningInSpringBoard();
  if (v255)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v36 = 0;
      v37 = 0;
      goto LABEL_1825;
    }
  }

  else
  {
    currentDevice26 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice26 userInterfaceIdiom])
    {
      v36 = 0;
      v37 = 1;
      goto LABEL_1825;
    }
  }

  v37 = v255 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen25 _referenceBounds];
    }

    v36 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v268 >= *(MEMORY[0x277D66E30] + 88))
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v38 = 46.0;
      goto LABEL_64;
    }
  }

  else
  {
    v36 = 0;
  }

LABEL_1825:
  v262 = __sb__runningInSpringBoard();
  if (v262)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v34 = 0;
      v35 = 0;
      goto LABEL_1845;
    }
  }

  else
  {
    currentDevice27 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice27 userInterfaceIdiom])
    {
      v34 = 0;
      v35 = 1;
      goto LABEL_1845;
    }
  }

  v35 = v262 ^ 1;
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

    v34 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v270 >= *(MEMORY[0x277D66E30] + 72))
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v38 = 0.0;
      goto LABEL_64;
    }
  }

  else
  {
    v34 = 0;
  }

LABEL_1845:
  currentDevice29 = __sb__runningInSpringBoard();
  if (!currentDevice29)
  {
    currentDevice28 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice28 userInterfaceIdiom])
    {
      v32 = 0;
      v33 = 1;
      goto LABEL_1865;
    }

LABEL_1861:
    v33 = currentDevice29 ^ 1;
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

    v32 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v264 >= *(MEMORY[0x277D66E30] + 56))
    {
      v30 = 0;
      v31 = 0;
      v38 = 0.0;
      goto LABEL_64;
    }

    goto LABEL_1865;
  }

  if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
  {
    goto LABEL_1861;
  }

  v32 = 0;
  v33 = 0;
LABEL_1865:
  v265 = __sb__runningInSpringBoard();
  if (v265)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v30 = 0;
      v31 = 0;
      v38 = 0.0;
      goto LABEL_1219;
    }
  }

  else
  {
    currentDevice29 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice29 userInterfaceIdiom])
    {
      v30 = 0;
      v38 = 0.0;
      v31 = 1;
      goto LABEL_1219;
    }
  }

  v31 = v265 ^ 1;
  v272 = __sb__runningInSpringBoard();
  if (v272)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen28 _referenceBounds];
  }

  v30 = v272 ^ 1;
  BSSizeRoundForScale();
  v38 = 0.0;
  v17 = 0x277D75000;
  v27 = mainScreen28;
LABEL_64:
  if (v30)
  {

    if (!v31)
    {
      goto LABEL_66;
    }
  }

  else if (!v31)
  {
LABEL_66:
    if (v32)
    {
      goto LABEL_67;
    }

LABEL_71:
    if (!v33)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  if (!v32)
  {
    goto LABEL_71;
  }

LABEL_67:

  if (v33)
  {
LABEL_72:
  }

LABEL_73:
  if (v34)
  {
  }

  if (v35)
  {
  }

  if (v36)
  {
  }

  if (v37)
  {
  }

  if (v347)
  {
  }

  if (v351)
  {
  }

  if (HIDWORD(v351))
  {
  }

  if (v355)
  {
  }

  if (HIDWORD(v355))
  {
  }

  if (v359)
  {
  }

  if (HIDWORD(v359))
  {
  }

  if (v363)
  {
  }

  if (HIDWORD(v363))
  {
  }

  if (v367)
  {
  }

  if (HIDWORD(v367))
  {
  }

  if (v371)
  {
  }

  if (HIDWORD(v371))
  {
  }

  if (v375)
  {
  }

  if (HIDWORD(v375))
  {
  }

  if (v379)
  {
  }

  if (HIDWORD(v379))
  {
  }

  if (v383)
  {
  }

  if (HIDWORD(v383))
  {
  }

  if (v387)
  {
  }

  if (HIDWORD(v387))
  {
  }

  if (v391)
  {
  }

  if (HIDWORD(v391))
  {
  }

  if (v395)
  {
  }

  if (HIDWORD(v395))
  {
  }

  if (v399)
  {
  }

  if (HIDWORD(v399))
  {
  }

  if (v403)
  {
  }

  if (HIDWORD(v403))
  {
  }

  if (v407)
  {
  }

  if (HIDWORD(v407))
  {
  }

  if (v411)
  {
  }

  if (HIDWORD(v411))
  {
  }

  if (*v415)
  {
  }

  if (*&v415[4])
  {
  }

  if (*&v415[8])
  {
  }

  if (*&v415[12])
  {
  }

  if (*&v415[16])
  {
  }

  if (*&v415[20])
  {
  }

  if (*&v415[24])
  {
  }

  if (*&v415[28])
  {
  }

  if (*&v415[32])
  {
  }

  if (*&v415[36])
  {
  }

  if (*&v415[40])
  {

    if (!*&v415[44])
    {
      goto LABEL_169;
    }
  }

  else if (!*&v415[44])
  {
LABEL_169:
    if (*&v415[48])
    {
      goto LABEL_170;
    }

    goto LABEL_176;
  }

  if (*&v415[48])
  {
LABEL_170:

    if (!*&v415[52])
    {
      goto LABEL_171;
    }

    goto LABEL_177;
  }

LABEL_176:
  if (!*&v415[52])
  {
LABEL_171:
    if (*&v415[56])
    {
      goto LABEL_172;
    }

LABEL_178:
    if (!*&v415[60])
    {
      goto LABEL_180;
    }

    goto LABEL_179;
  }

LABEL_177:

  if (!*&v415[56])
  {
    goto LABEL_178;
  }

LABEL_172:

  if (*&v415[60])
  {
LABEL_179:
  }

LABEL_180:
  if (BSFloatGreaterThanFloat())
  {
    v45 = 2.33333333;
  }

  else
  {
    v45 = 2.5;
  }

  v46 = __sb__runningInSpringBoard();
  if (v46)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      mainScreen29 = 0;
      v48 = 0;
      goto LABEL_192;
    }
  }

  else
  {
    currentDevice2 = [*(v17 + 1048) currentDevice];
    if ([currentDevice2 userInterfaceIdiom] != 1)
    {
      mainScreen29 = 0;
      v48 = 1;
      goto LABEL_192;
    }
  }

  v48 = v46 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice30 = __sb__runningInSpringBoard();
    if (currentDevice30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 _referenceBounds];
    }

    mainScreen29 = currentDevice30 ^ 1;
    BSSizeRoundForScale();
    if (v70 == *(MEMORY[0x277D66E30] + 288) && v69 == *(MEMORY[0x277D66E30] + 296))
    {
      *&v415[56] = currentDevice30 ^ 1;
      *&v415[60] = v48;
      v404 = 0;
      v400 = 0;
      v408 = 0;
      v396 = 0;
      v392 = 0;
      v412 = 0;
      v388 = 0;
      memset(v415, 0, 56);
      v384 = 0;
      v380 = 0;
      v376 = 0;
      v372 = 0;
      v368 = 0;
      v364 = 0;
      v360 = 0;
      v356 = 0;
      v352 = 0;
      v348 = 0;
      v344 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 31.0;
      goto LABEL_246;
    }
  }

  else
  {
    mainScreen29 = 0;
  }

LABEL_192:
  v50 = __sb__runningInSpringBoard();
  *&v415[56] = mainScreen29;
  *&v415[60] = v48;
  if (v50)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v51 = 0;
      v52 = 0;
      goto LABEL_201;
    }
  }

  else
  {
    currentDevice3 = [*(v17 + 1048) currentDevice];
    if ([currentDevice3 userInterfaceIdiom] != 1)
    {
      v51 = 0;
      v52 = 1;
      goto LABEL_201;
    }
  }

  v52 = v50 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice30 = __sb__runningInSpringBoard();
    if (currentDevice30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen3 _referenceBounds];
    }

    v51 = currentDevice30 ^ 1;
    BSSizeRoundForScale();
    if (v71 >= *(MEMORY[0x277D66E30] + 440))
    {
      *&v415[48] = currentDevice30 ^ 1;
      *&v415[52] = v52;
      v404 = 0;
      v400 = 0;
      v408 = 0;
      v396 = 0;
      v392 = 0;
      v412 = 0;
      v388 = 0;
      memset(v415, 0, 48);
      v384 = 0;
      v380 = 0;
      v376 = 0;
      v372 = 0;
      v368 = 0;
      v364 = 0;
      v360 = 0;
      v356 = 0;
      v352 = 0;
      v348 = 0;
      v344 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 31.0;
      goto LABEL_246;
    }
  }

  else
  {
    v51 = 0;
  }

LABEL_201:
  v53 = __sb__runningInSpringBoard();
  *&v415[48] = v51;
  *&v415[52] = v52;
  if (v53)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v54 = 0;
      v55 = 0;
      goto LABEL_210;
    }
  }

  else
  {
    currentDevice4 = [*(v17 + 1048) currentDevice];
    if ([currentDevice4 userInterfaceIdiom] != 1)
    {
      v54 = 0;
      v55 = 1;
      goto LABEL_210;
    }
  }

  v55 = v53 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice30 = __sb__runningInSpringBoard();
    if (currentDevice30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen6 _referenceBounds];
    }

    v54 = currentDevice30 ^ 1;
    BSSizeRoundForScale();
    if (v72 >= *(MEMORY[0x277D66E30] + 376))
    {
      *&v415[40] = currentDevice30 ^ 1;
      *&v415[44] = v55;
      v404 = 0;
      v400 = 0;
      v408 = 0;
      v396 = 0;
      v392 = 0;
      v412 = 0;
      v388 = 0;
      memset(v415, 0, 40);
      v384 = 0;
      v380 = 0;
      v376 = 0;
      v372 = 0;
      v368 = 0;
      v364 = 0;
      v360 = 0;
      v356 = 0;
      v352 = 0;
      v348 = 0;
      v344 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 31.0;
      goto LABEL_246;
    }
  }

  else
  {
    v54 = 0;
  }

LABEL_210:
  v56 = __sb__runningInSpringBoard();
  *&v415[40] = v54;
  *&v415[44] = v55;
  if (v56)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v415[32] = 0;
      v57 = 0;
      goto LABEL_219;
    }
  }

  else
  {
    currentDevice5 = [*(v17 + 1048) currentDevice];
    if ([currentDevice5 userInterfaceIdiom] != 1)
    {
      *&v415[32] = 0;
      v57 = 1;
      goto LABEL_219;
    }
  }

  v57 = v56 ^ 1;
  currentDevice30 = __sb__runningInSpringBoard();
  if (currentDevice30)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    currentDevice7 = [MEMORY[0x277D759A0] mainScreen];
    [currentDevice7 _referenceBounds];
  }

  *&v415[32] = currentDevice30 ^ 1;
  BSSizeRoundForScale();
  if (v58 >= *(MEMORY[0x277D66E30] + 280))
  {
    *&v415[36] = v57;
    v404 = 0;
    v400 = 0;
    v408 = 0;
    v396 = 0;
    v392 = 0;
    v412 = 0;
    v388 = 0;
    memset(v415, 0, 32);
    v384 = 0;
    v380 = 0;
    v376 = 0;
    v372 = 0;
    v368 = 0;
    v364 = 0;
    v360 = 0;
    v352 = 0;
    v356 = 0;
    v348 = 0;
    v344 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 31.0;
    goto LABEL_246;
  }

LABEL_219:
  v59 = __sb__runningInSpringBoard();
  *&v415[36] = v57;
  if (v59)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v415[24] = 0;
      goto LABEL_229;
    }
  }

  else
  {
    currentDevice6 = [*(v17 + 1048) currentDevice];
    if ([currentDevice6 userInterfaceIdiom] != 1)
    {
      *&v415[24] = 0x100000000;
      goto LABEL_229;
    }
  }

  *&v415[28] = v59 ^ 1;
  currentDevice30 = __sb__runningInSpringBoard();
  if (currentDevice30)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen _referenceBounds];
  }

  *&v415[24] = currentDevice30 ^ 1;
  BSSizeRoundForScale();
  if (v67 >= *(MEMORY[0x277D66E30] + 264))
  {
    v404 = 0;
    v400 = 0;
    v408 = 0;
    v396 = 0;
    v392 = 0;
    v412 = 0;
    v388 = 0;
    memset(v415, 0, 24);
    v384 = 0;
    v380 = 0;
    v376 = 0;
    v372 = 0;
    v368 = 0;
    v360 = 0;
    v364 = 0;
    v352 = 0;
    v356 = 0;
    v348 = 0;
    v344 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 31.0;
    goto LABEL_246;
  }

LABEL_229:
  v68 = __sb__runningInSpringBoard();
  if (v68)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v415[16] = 0;
      goto LABEL_415;
    }
  }

  else
  {
    mainScreen4 = [*(v17 + 1048) currentDevice];
    if ([mainScreen4 userInterfaceIdiom] != 1)
    {
      *&v415[16] = 0x100000000;
      goto LABEL_415;
    }
  }

  *&v415[20] = v68 ^ 1;
  currentDevice30 = __sb__runningInSpringBoard();
  if (currentDevice30)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    currentDevice9 = [MEMORY[0x277D759A0] mainScreen];
    [currentDevice9 _referenceBounds];
  }

  *&v415[16] = currentDevice30 ^ 1;
  BSSizeRoundForScale();
  if (v92 >= *(MEMORY[0x277D66E30] + 248))
  {
    v404 = 0;
    v400 = 0;
    v408 = 0;
    v396 = 0;
    v392 = 0;
    v412 = 0;
    v388 = 0;
    *v415 = 0;
    v384 = 0;
    *&v415[4] = 0;
    v380 = 0;
    v376 = 0;
    *&v415[12] = 0;
    v368 = 0;
    v372 = 0;
    v360 = 0;
    v364 = 0;
    v352 = 0;
    v356 = 0;
    v348 = 0;
    v344 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 31.0;
    goto LABEL_246;
  }

LABEL_415:
  currentDevice30 = __sb__runningInSpringBoard();
  if (currentDevice30)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_417;
    }

LABEL_423:
    v404 = 0;
    v400 = 0;
    v408 = 0;
    v396 = 0;
    v392 = 0;
    v412 = 0;
    v388 = 0;
    *v415 = 0;
    v384 = 0;
    *&v415[4] = 0;
    v380 = 0;
    v376 = 0;
    v368 = 0;
    v372 = 0;
    v360 = 0;
    v364 = 0;
    v352 = 0;
    v356 = 0;
    v348 = 0;
    v344 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 31.0;
    *&v415[12] = currentDevice30 ^ 1;
    goto LABEL_246;
  }

  mainScreen5 = [*(v17 + 1048) currentDevice];
  if ([mainScreen5 userInterfaceIdiom] == 1)
  {
    goto LABEL_423;
  }

LABEL_417:
  *&v415[12] = currentDevice30 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_421:
    *&v415[4] = 0;
    goto LABEL_817;
  }

  v93 = __sb__runningInSpringBoard();
  if (v93)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_421;
    }
  }

  else
  {
    currentDevice11 = [*(v17 + 1048) currentDevice];
    if ([currentDevice11 userInterfaceIdiom])
    {
      *&v415[4] = 0x100000000;
      goto LABEL_817;
    }
  }

  *&v415[8] = v93 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v140 = __sb__runningInSpringBoard();
    if (v140)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen10 _referenceBounds];
    }

    currentDevice30 = v140 ^ 1u;
    BSSizeRoundForScale();
    *&v415[4] = currentDevice30;
    if (v144 >= *(MEMORY[0x277D66E30] + 200))
    {
      v404 = 0;
      v400 = 0;
      v408 = 0;
      v396 = 0;
      v392 = 0;
      v412 = 0;
      v388 = 0;
      *v415 = 0;
      v384 = 0;
      v380 = 0;
      v372 = 0;
      v376 = 0;
      v364 = 0;
      v368 = 0;
      v356 = 0;
      v360 = 0;
      v352 = 0;
      v348 = 0;
      v344 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 38.6666;
      goto LABEL_246;
    }
  }

  else
  {
    *&v415[4] = 0;
  }

LABEL_817:
  currentDevice30 = __sb__runningInSpringBoard();
  if (currentDevice30)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v412) = 0;
      *v415 = 0;
      goto LABEL_827;
    }
  }

  else
  {
    currentDevice8 = [*(v17 + 1048) currentDevice];
    if ([currentDevice8 userInterfaceIdiom])
    {
      HIDWORD(v412) = 0;
      *v415 = 1;
      goto LABEL_827;
    }
  }

  *v415 = currentDevice30 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice30 = __sb__runningInSpringBoard();
    if (currentDevice30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice13 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice13 _referenceBounds];
    }

    HIDWORD(v412) = currentDevice30 ^ 1;
    BSSizeRoundForScale();
    if (v141 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_831;
    }
  }

  else
  {
    HIDWORD(v412) = 0;
  }

LABEL_827:
  if (_SBF_Private_IsD94Like())
  {
    v404 = 0;
    v400 = 0;
    v408 = 0;
    v396 = 0;
    v392 = 0;
    LODWORD(v412) = 0;
    v388 = 0;
    v384 = 0;
    v380 = 0;
    v372 = 0;
    v376 = 0;
    v364 = 0;
    v368 = 0;
    v356 = 0;
    v360 = 0;
    v352 = 0;
    v348 = 0;
    v344 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 38.6666;
    goto LABEL_246;
  }

LABEL_831:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_835:
    HIDWORD(v408) = 0;
    LODWORD(v412) = 0;
    goto LABEL_882;
  }

  v142 = __sb__runningInSpringBoard();
  if (v142)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_835;
    }
  }

  else
  {
    mainScreen8 = [*(v17 + 1048) currentDevice];
    if ([mainScreen8 userInterfaceIdiom])
    {
      HIDWORD(v408) = 0;
      LODWORD(v412) = 1;
      goto LABEL_882;
    }
  }

  LODWORD(v412) = v142 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice30 = __sb__runningInSpringBoard();
    if (currentDevice30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen12 _referenceBounds];
    }

    HIDWORD(v408) = currentDevice30 ^ 1;
    BSSizeRoundForScale();
    if (v158 >= *(MEMORY[0x277D66E30] + 136))
    {
      v404 = 0;
      v400 = 0;
      LODWORD(v408) = 0;
      v396 = 0;
      v392 = 0;
      v388 = 0;
      v384 = 0;
      v380 = 0;
      v372 = 0;
      v376 = 0;
      v364 = 0;
      v368 = 0;
      v356 = 0;
      v360 = 0;
      v352 = 0;
      v348 = 0;
      v344 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 38.6666;
      goto LABEL_246;
    }
  }

  else
  {
    HIDWORD(v408) = 0;
  }

LABEL_882:
  currentDevice30 = __sb__runningInSpringBoard();
  if (currentDevice30)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v404) = 0;
      LODWORD(v408) = 0;
      goto LABEL_892;
    }
  }

  else
  {
    currentDevice12 = [*(v17 + 1048) currentDevice];
    if ([currentDevice12 userInterfaceIdiom])
    {
      HIDWORD(v404) = 0;
      LODWORD(v408) = 1;
      goto LABEL_892;
    }
  }

  LODWORD(v408) = currentDevice30 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice30 = __sb__runningInSpringBoard();
    if (currentDevice30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice15 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice15 _referenceBounds];
    }

    HIDWORD(v404) = currentDevice30 ^ 1;
    BSSizeRoundForScale();
    if (v148 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_896;
    }
  }

  else
  {
    HIDWORD(v404) = 0;
  }

LABEL_892:
  if (_SBF_Private_IsD64Like())
  {
    LODWORD(v404) = 0;
    v400 = 0;
    v396 = 0;
    v392 = 0;
    v388 = 0;
    v384 = 0;
    v380 = 0;
    v372 = 0;
    v376 = 0;
    v364 = 0;
    v368 = 0;
    v356 = 0;
    v360 = 0;
    v352 = 0;
    v348 = 0;
    v344 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 38.6666;
    goto LABEL_246;
  }

LABEL_896:
  v149 = __sb__runningInSpringBoard();
  if (v149)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v404) = 0;
      HIDWORD(v400) = 0;
      goto LABEL_906;
    }
  }

  else
  {
    currentDevice10 = [*(v17 + 1048) currentDevice];
    if ([currentDevice10 userInterfaceIdiom])
    {
      HIDWORD(v400) = 0;
      LODWORD(v404) = 1;
      goto LABEL_906;
    }
  }

  LODWORD(v404) = v149 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v150 = __sb__runningInSpringBoard();
    if (v150)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen9 _referenceBounds];
    }

    currentDevice30 = v150 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v400) = currentDevice30;
    if (v154 >= *(MEMORY[0x277D66E30] + 136))
    {
      LODWORD(v400) = 0;
      v396 = 0;
      v392 = 0;
      v388 = 0;
      v384 = 0;
      v380 = 0;
      v372 = 0;
      v376 = 0;
      v364 = 0;
      v368 = 0;
      v356 = 0;
      v360 = 0;
      v352 = 0;
      v348 = 0;
      v344 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 38.6666;
      goto LABEL_246;
    }
  }

  else
  {
    HIDWORD(v400) = 0;
  }

LABEL_906:
  currentDevice30 = __sb__runningInSpringBoard();
  if (currentDevice30)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v400) = 0;
      HIDWORD(v396) = 0;
      goto LABEL_947;
    }
  }

  else
  {
    currentDevice14 = [*(v17 + 1048) currentDevice];
    if ([currentDevice14 userInterfaceIdiom])
    {
      HIDWORD(v396) = 0;
      LODWORD(v400) = 1;
      goto LABEL_947;
    }
  }

  LODWORD(v400) = currentDevice30 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice30 = __sb__runningInSpringBoard();
    if (currentDevice30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice16 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice16 _referenceBounds];
    }

    HIDWORD(v396) = currentDevice30 ^ 1;
    BSSizeRoundForScale();
    if (v162 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_999;
    }
  }

  else
  {
    HIDWORD(v396) = 0;
  }

LABEL_947:
  if (_SBF_Private_IsD54())
  {
    LODWORD(v396) = 0;
    v392 = 0;
    v388 = 0;
    v384 = 0;
    v380 = 0;
    v372 = 0;
    v376 = 0;
    v364 = 0;
    v368 = 0;
    v356 = 0;
    v360 = 0;
    v352 = 0;
    v348 = 0;
    v344 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 38.6666;
    goto LABEL_246;
  }

LABEL_999:
  v163 = __sb__runningInSpringBoard();
  if (v163)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v396) = 0;
      HIDWORD(v392) = 0;
      goto LABEL_1019;
    }
  }

  else
  {
    mainScreen7 = [*(v17 + 1048) currentDevice];
    if ([mainScreen7 userInterfaceIdiom])
    {
      HIDWORD(v392) = 0;
      LODWORD(v396) = 1;
      goto LABEL_1019;
    }
  }

  LODWORD(v396) = v163 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice30 = __sb__runningInSpringBoard();
    if (currentDevice30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen14 _referenceBounds];
    }

    HIDWORD(v392) = currentDevice30 ^ 1;
    BSSizeRoundForScale();
    if (v174 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      LODWORD(v392) = 0;
      v388 = 0;
      v384 = 0;
      v380 = 0;
      v372 = 0;
      v376 = 0;
      v364 = 0;
      v368 = 0;
      v356 = 0;
      v360 = 0;
      v352 = 0;
      v348 = 0;
      v344 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 39.0;
      goto LABEL_246;
    }
  }

  else
  {
    HIDWORD(v392) = 0;
  }

LABEL_1019:
  currentDevice30 = __sb__runningInSpringBoard();
  if (currentDevice30)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v392) = 0;
      HIDWORD(v388) = 0;
      goto LABEL_1073;
    }
  }

  else
  {
    currentDevice17 = [*(v17 + 1048) currentDevice];
    if ([currentDevice17 userInterfaceIdiom])
    {
      HIDWORD(v388) = 0;
      LODWORD(v392) = 1;
      goto LABEL_1073;
    }
  }

  LODWORD(v392) = currentDevice30 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice30 = __sb__runningInSpringBoard();
    if (currentDevice30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice18 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice18 _referenceBounds];
    }

    HIDWORD(v388) = currentDevice30 ^ 1;
    BSSizeRoundForScale();
    if (v178 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_1147;
    }
  }

  else
  {
    HIDWORD(v388) = 0;
  }

LABEL_1073:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    LODWORD(v388) = 0;
    v384 = 0;
    v380 = 0;
    v372 = 0;
    v376 = 0;
    v364 = 0;
    v368 = 0;
    v356 = 0;
    v360 = 0;
    v352 = 0;
    v348 = 0;
    v344 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0.0;
    goto LABEL_246;
  }

LABEL_1147:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_1151:
    LODWORD(v388) = 0;
    HIDWORD(v384) = 0;
    goto LABEL_1233;
  }

  v179 = __sb__runningInSpringBoard();
  if (v179)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_1151;
    }
  }

  else
  {
    currentDevice19 = [*(v17 + 1048) currentDevice];
    if ([currentDevice19 userInterfaceIdiom])
    {
      HIDWORD(v384) = 0;
      LODWORD(v388) = 1;
      goto LABEL_1233;
    }
  }

  LODWORD(v388) = v179 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v192 = __sb__runningInSpringBoard();
    if (v192)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen18 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen18 _referenceBounds];
    }

    currentDevice30 = v192 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v384) = currentDevice30;
    if (v203 >= *(MEMORY[0x277D66E30] + 184))
    {
      LODWORD(v384) = 0;
      v380 = 0;
      v372 = 0;
      v376 = 0;
      v364 = 0;
      v368 = 0;
      v356 = 0;
      v360 = 0;
      v352 = 0;
      v348 = 0;
      v344 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 39.0;
      goto LABEL_246;
    }
  }

  else
  {
    HIDWORD(v384) = 0;
  }

LABEL_1233:
  v193 = __sb__runningInSpringBoard();
  if (v193)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v384) = 0;
      currentDevice30 = 0;
      goto LABEL_1243;
    }
  }

  else
  {
    mainScreen11 = [*(v17 + 1048) currentDevice];
    if ([mainScreen11 userInterfaceIdiom])
    {
      currentDevice30 = 0;
      LODWORD(v384) = 1;
      goto LABEL_1243;
    }
  }

  LODWORD(v384) = v193 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v194 = __sb__runningInSpringBoard();
    if (v194)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice22 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice22 _referenceBounds];
    }

    currentDevice30 = v194 ^ 1u;
    BSSizeRoundForScale();
    if (v195 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_1247;
    }
  }

  else
  {
    currentDevice30 = 0;
  }

LABEL_1243:
  if (_SBF_Private_IsD93Like())
  {
    HIDWORD(v380) = currentDevice30;
    LODWORD(v380) = 0;
    v372 = 0;
    v376 = 0;
    v364 = 0;
    v368 = 0;
    v356 = 0;
    v360 = 0;
    v352 = 0;
    v348 = 0;
    v344 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 39.0;
    goto LABEL_246;
  }

LABEL_1247:
  HIDWORD(v380) = currentDevice30;
  if (!_SBF_Private_IsD63Like())
  {
LABEL_1251:
    LODWORD(v380) = 0;
    HIDWORD(v376) = 0;
    goto LABEL_1323;
  }

  v196 = __sb__runningInSpringBoard();
  if (v196)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_1251;
    }
  }

  else
  {
    currentDevice21 = [*(v17 + 1048) currentDevice];
    if ([currentDevice21 userInterfaceIdiom])
    {
      HIDWORD(v376) = 0;
      LODWORD(v380) = 1;
      goto LABEL_1323;
    }
  }

  LODWORD(v380) = v196 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice30 = __sb__runningInSpringBoard();
    if (currentDevice30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen20 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen20 _referenceBounds];
    }

    HIDWORD(v376) = currentDevice30 ^ 1;
    BSSizeRoundForScale();
    if (v217 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v376) = 0;
      v368 = 0;
      v372 = 0;
      v360 = 0;
      v364 = 0;
      v352 = 0;
      v356 = 0;
      v348 = 0;
      v344 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 39.0;
      goto LABEL_246;
    }
  }

  else
  {
    HIDWORD(v376) = 0;
  }

LABEL_1323:
  currentDevice30 = __sb__runningInSpringBoard();
  if (currentDevice30)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v376) = 0;
      HIDWORD(v372) = 0;
      goto LABEL_1333;
    }
  }

  else
  {
    mainScreen13 = [*(v17 + 1048) currentDevice];
    if ([mainScreen13 userInterfaceIdiom])
    {
      HIDWORD(v372) = 0;
      LODWORD(v376) = 1;
      goto LABEL_1333;
    }
  }

  LODWORD(v376) = currentDevice30 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice30 = __sb__runningInSpringBoard();
    if (currentDevice30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice23 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice23 _referenceBounds];
    }

    HIDWORD(v372) = currentDevice30 ^ 1;
    BSSizeRoundForScale();
    if (v208 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_1337;
    }
  }

  else
  {
    HIDWORD(v372) = 0;
  }

LABEL_1333:
  if (_SBF_Private_IsD63Like())
  {
    LODWORD(v372) = 0;
    v364 = 0;
    v368 = 0;
    v356 = 0;
    v360 = 0;
    v352 = 0;
    v348 = 0;
    v344 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 39.0;
    goto LABEL_246;
  }

LABEL_1337:
  if (!_SBF_Private_IsD23Like())
  {
LABEL_1341:
    LODWORD(v372) = 0;
    HIDWORD(v368) = 0;
    goto LABEL_1441;
  }

  v209 = __sb__runningInSpringBoard();
  if (v209)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_1341;
    }
  }

  else
  {
    mainScreen15 = [*(v17 + 1048) currentDevice];
    if ([mainScreen15 userInterfaceIdiom])
    {
      HIDWORD(v368) = 0;
      LODWORD(v372) = 1;
      goto LABEL_1441;
    }
  }

  LODWORD(v372) = v209 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice30 = __sb__runningInSpringBoard();
    if (currentDevice30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen22 _referenceBounds];
    }

    HIDWORD(v368) = currentDevice30 ^ 1;
    BSSizeRoundForScale();
    if (v232 >= *(MEMORY[0x277D66E30] + 216))
    {
      LODWORD(v368) = 0;
      v360 = 0;
      v364 = 0;
      v352 = 0;
      v356 = 0;
      v348 = 0;
      v344 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
LABEL_1548:
      v66 = 36.0;
      goto LABEL_246;
    }
  }

  else
  {
    HIDWORD(v368) = 0;
  }

LABEL_1441:
  currentDevice30 = __sb__runningInSpringBoard();
  if (currentDevice30)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v368) = 0;
      HIDWORD(v364) = 0;
      goto LABEL_1451;
    }
  }

  else
  {
    mainScreen16 = [*(v17 + 1048) currentDevice];
    if ([mainScreen16 userInterfaceIdiom])
    {
      HIDWORD(v364) = 0;
      LODWORD(v368) = 1;
      goto LABEL_1451;
    }
  }

  LODWORD(v368) = currentDevice30 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice30 = __sb__runningInSpringBoard();
    if (currentDevice30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice25 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice25 _referenceBounds];
    }

    HIDWORD(v364) = currentDevice30 ^ 1;
    BSSizeRoundForScale();
    if (v221 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_1455;
    }
  }

  else
  {
    HIDWORD(v364) = 0;
  }

LABEL_1451:
  if (_SBF_Private_IsD23Like())
  {
    LODWORD(v364) = 0;
    v356 = 0;
    v360 = 0;
    v352 = 0;
    v348 = 0;
    v344 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 36.0;
    goto LABEL_246;
  }

LABEL_1455:
  v222 = __sb__runningInSpringBoard();
  if (v222)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v364) = 0;
      HIDWORD(v360) = 0;
      goto LABEL_1465;
    }
  }

  else
  {
    currentDevice20 = [*(v17 + 1048) currentDevice];
    if ([currentDevice20 userInterfaceIdiom])
    {
      HIDWORD(v360) = 0;
      LODWORD(v364) = 1;
      goto LABEL_1465;
    }
  }

  LODWORD(v364) = v222 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice30 = __sb__runningInSpringBoard();
    if (currentDevice30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen19 _referenceBounds];
    }

    HIDWORD(v360) = currentDevice30 ^ 1;
    BSSizeRoundForScale();
    if (v228 >= *(MEMORY[0x277D66E30] + 120))
    {
      LODWORD(v360) = 0;
      v352 = 0;
      v356 = 0;
      v348 = 0;
      v344 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 36.0;
      goto LABEL_246;
    }
  }

  else
  {
    HIDWORD(v360) = 0;
  }

LABEL_1465:
  currentDevice30 = __sb__runningInSpringBoard();
  if (currentDevice30)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v360) = 0;
      HIDWORD(v356) = 0;
      goto LABEL_1509;
    }
  }

  else
  {
    currentDevice24 = [*(v17 + 1048) currentDevice];
    if ([currentDevice24 userInterfaceIdiom])
    {
      HIDWORD(v356) = 0;
      LODWORD(v360) = 1;
      goto LABEL_1509;
    }
  }

  LODWORD(v360) = currentDevice30 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice30 = __sb__runningInSpringBoard();
    if (currentDevice30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen23 _referenceBounds];
    }

    HIDWORD(v356) = currentDevice30 ^ 1;
    BSSizeRoundForScale();
    if (v236 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_1562;
    }
  }

  else
  {
    HIDWORD(v356) = 0;
  }

LABEL_1509:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    LODWORD(v356) = 0;
    v352 = 0;
    v348 = 0;
    v344 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0.0;
    goto LABEL_246;
  }

LABEL_1562:
  v237 = __sb__runningInSpringBoard();
  if (v237)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v356) = 0;
      HIDWORD(v352) = 0;
      goto LABEL_1582;
    }
  }

  else
  {
    mainScreen17 = [*(v17 + 1048) currentDevice];
    if ([mainScreen17 userInterfaceIdiom])
    {
      HIDWORD(v352) = 0;
      LODWORD(v356) = 1;
      goto LABEL_1582;
    }
  }

  LODWORD(v356) = v237 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice30 = __sb__runningInSpringBoard();
    if (currentDevice30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen24 _referenceBounds];
    }

    HIDWORD(v352) = currentDevice30 ^ 1;
    BSSizeRoundForScale();
    if (v245 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v352) = 0;
      v348 = 0;
      v344 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 39.0;
      goto LABEL_246;
    }
  }

  else
  {
    HIDWORD(v352) = 0;
  }

LABEL_1582:
  currentDevice30 = __sb__runningInSpringBoard();
  if (currentDevice30)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v352) = 0;
      v348 = 0;
      goto LABEL_1641;
    }
  }

  else
  {
    mainScreen21 = [*(v17 + 1048) currentDevice];
    if ([mainScreen21 userInterfaceIdiom])
    {
      v348 = 0;
      LODWORD(v352) = 1;
      goto LABEL_1641;
    }
  }

  LODWORD(v352) = currentDevice30 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice30 = __sb__runningInSpringBoard();
    if (currentDevice30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice26 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice26 _referenceBounds];
    }

    v348 = currentDevice30 ^ 1;
    BSSizeRoundForScale();
    if (v250 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_1717;
    }
  }

  else
  {
    v348 = 0;
  }

LABEL_1641:
  if (_SBF_Private_IsD53())
  {
    v344 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 39.0;
    goto LABEL_246;
  }

LABEL_1717:
  currentDevice30 = &unk_21EC95000;
  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0 || _SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    v344 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 41.0;
    goto LABEL_246;
  }

  v66 = 41.0;
  if (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0 || (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
    v344 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    goto LABEL_246;
  }

  v256 = __sb__runningInSpringBoard();
  if (v256)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v344 = 0;
      v60 = 0;
      goto LABEL_1835;
    }
  }

  else
  {
    currentDevice27 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice27 userInterfaceIdiom])
    {
      v60 = 0;
      v344 = 1;
      goto LABEL_1835;
    }
  }

  v344 = v256 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice30 = __sb__runningInSpringBoard();
    if (currentDevice30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen25 _referenceBounds];
    }

    v60 = currentDevice30 ^ 1;
    BSSizeRoundForScale();
    if (v269 >= *(MEMORY[0x277D66E30] + 88))
    {
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      goto LABEL_1548;
    }
  }

  else
  {
    v60 = 0;
  }

LABEL_1835:
  v263 = __sb__runningInSpringBoard();
  if (v263)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v61 = 0;
      v62 = 0;
      goto LABEL_1855;
    }
  }

  else
  {
    currentDevice28 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice28 userInterfaceIdiom])
    {
      v62 = 0;
      v61 = 1;
      goto LABEL_1855;
    }
  }

  v61 = v263 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice30 = __sb__runningInSpringBoard();
    if (currentDevice30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen26 _referenceBounds];
    }

    v62 = currentDevice30 ^ 1;
    BSSizeRoundForScale();
    if (v271 >= *(MEMORY[0x277D66E30] + 72))
    {
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0.0;
      goto LABEL_246;
    }
  }

  else
  {
    v62 = 0;
  }

LABEL_1855:
  currentDevice30 = __sb__runningInSpringBoard();
  if (!currentDevice30)
  {
    mainScreen27 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen27 userInterfaceIdiom])
    {
      v64 = 0;
      v63 = 1;
      goto LABEL_1876;
    }

LABEL_1872:
    v63 = currentDevice30 ^ 1;
    currentDevice30 = __sb__runningInSpringBoard();
    if (currentDevice30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen29 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen29 _referenceBounds];
    }

    v64 = currentDevice30 ^ 1;
    BSSizeRoundForScale();
    if (v266 >= *(MEMORY[0x277D66E30] + 56))
    {
      goto LABEL_1879;
    }

    goto LABEL_1876;
  }

  if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
  {
    goto LABEL_1872;
  }

  v63 = 0;
  v64 = 0;
LABEL_1876:
  mainScreen30 = __sb__runningInSpringBoard();
  if (mainScreen30)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
LABEL_1879:
      v65 = 0;
      v66 = 0.0;
      goto LABEL_246;
    }
  }

  else
  {
    currentDevice30 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice30 userInterfaceIdiom])
    {
      v66 = 0.0;
      v65 = 1;
      goto LABEL_246;
    }
  }

  v65 = mainScreen30 ^ 1;
  v273 = __sb__runningInSpringBoard();
  if (v273)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen30 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen30 _referenceBounds];
  }

  BSSizeRoundForScale();
  v66 = 0.0;
  if (v273 != 1)
  {
  }

LABEL_246:
  if (v65)
  {
  }

  currentDevice32 = *&v415[36];
  if (v64)
  {
  }

  v74 = selfCopy;
  mainScreen32 = *&v415[52];
  if (v63)
  {
  }

  if (v62)
  {
  }

  if (v61)
  {
  }

  if (v60)
  {
  }

  currentDevice33 = *&v415[40];
  if (v344)
  {
  }

  if (v348)
  {
  }

  if (v352)
  {
  }

  if (HIDWORD(v352))
  {
  }

  if (v356)
  {
  }

  if (HIDWORD(v356))
  {
  }

  if (v360)
  {
  }

  if (HIDWORD(v360))
  {
  }

  if (v364)
  {
  }

  if (HIDWORD(v364))
  {
  }

  if (v368)
  {
  }

  if (HIDWORD(v368))
  {
  }

  if (v372)
  {
  }

  if (HIDWORD(v372))
  {
  }

  if (v376)
  {
  }

  if (HIDWORD(v376))
  {
  }

  if (v380)
  {
  }

  if (HIDWORD(v380))
  {
  }

  if (v384)
  {
  }

  if (HIDWORD(v384))
  {
  }

  if (v388)
  {
  }

  if (HIDWORD(v388))
  {
  }

  if (v392)
  {
  }

  if (HIDWORD(v392))
  {
  }

  if (v396)
  {
  }

  if (HIDWORD(v396))
  {
  }

  if (v400)
  {
  }

  if (HIDWORD(v400))
  {
  }

  if (v404)
  {
  }

  if (HIDWORD(v404))
  {
  }

  if (v408)
  {
  }

  if (HIDWORD(v408))
  {
  }

  if (v412)
  {
  }

  if (HIDWORD(v412))
  {
  }

  if (*v415)
  {
  }

  if (*&v415[4])
  {
  }

  if (*&v415[8])
  {
  }

  if (*&v415[12])
  {
  }

  if (*&v415[16])
  {
  }

  if (*&v415[20])
  {
  }

  if (*&v415[24])
  {
  }

  if (*&v415[28])
  {
  }

  if (*&v415[32])
  {

    if (!*&v415[36])
    {
      goto LABEL_344;
    }
  }

  else if (!*&v415[36])
  {
LABEL_344:
    if (*&v415[40])
    {
      goto LABEL_345;
    }

    goto LABEL_351;
  }

  if (*&v415[40])
  {
LABEL_345:

    if (!*&v415[44])
    {
      goto LABEL_346;
    }

    goto LABEL_352;
  }

LABEL_351:
  if (!*&v415[44])
  {
LABEL_346:
    if (*&v415[48])
    {
      goto LABEL_347;
    }

LABEL_353:
    if (!*&v415[52])
    {
      goto LABEL_355;
    }

    goto LABEL_354;
  }

LABEL_352:

  if (!*&v415[48])
  {
    goto LABEL_353;
  }

LABEL_347:

  if (*&v415[52])
  {
LABEL_354:
  }

LABEL_355:
  if (*&v415[56])
  {
  }

  if (*&v415[60])
  {
  }

  if (![(CSTeachableMomentsContainerView *)selfCopy usesStatusBarRelativeLayoutForControlCenterTutors])
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        *&v415[56] = 0;
        goto LABEL_376;
      }
    }

    else
    {
      currentDevice5 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice5 userInterfaceIdiom] != 1)
      {
        *&v415[56] = 0x100000000;
        goto LABEL_376;
      }
    }

    *&v415[60] = v84 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      currentDevice31 = __sb__runningInSpringBoard();
      if (currentDevice31)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        currentDevice3 = [MEMORY[0x277D759A0] mainScreen];
        [currentDevice3 _referenceBounds];
      }

      *&v415[56] = currentDevice31 ^ 1;
      BSSizeRoundForScale();
      if (v104 == *(MEMORY[0x277D66E30] + 288) && v103 == *(MEMORY[0x277D66E30] + 296))
      {
        memset(v415, 0, 56);
        v413 = 0;
        v409 = 0;
        v405 = 0;
        v401 = 0;
        v397 = 0;
        v393 = 0;
        v389 = 0;
        v385 = 0;
        v381 = 0;
        v373 = 0;
        v377 = 0;
        v365 = 0;
        v369 = 0;
        v357 = 0;
        v361 = 0;
        v353 = 0;
        v349 = 0;
        v345 = 0;
        v341 = 0;
        v96 = 0;
        currentDevice33 = 0;
        v97 = 0;
        v98 = 0;
        v99 = 0;
        v100 = 0.0;
        goto LABEL_1973;
      }
    }

    else
    {
      *&v415[56] = 0;
    }

LABEL_376:
    v87 = __sb__runningInSpringBoard();
    if (v87)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        *&v415[48] = 0;
        goto LABEL_385;
      }
    }

    else
    {
      currentDevice6 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice6 userInterfaceIdiom] != 1)
      {
        *&v415[48] = 0x100000000;
        goto LABEL_385;
      }
    }

    *&v415[52] = v87 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      currentDevice31 = __sb__runningInSpringBoard();
      if (currentDevice31)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        currentDevice4 = [MEMORY[0x277D759A0] mainScreen];
        [currentDevice4 _referenceBounds];
      }

      *&v415[48] = currentDevice31 ^ 1;
      BSSizeRoundForScale();
      if (v105 >= *(MEMORY[0x277D66E30] + 440))
      {
        memset(v415, 0, 48);
        v413 = 0;
        v409 = 0;
        v405 = 0;
        v401 = 0;
        v397 = 0;
        v393 = 0;
        v389 = 0;
        v385 = 0;
        v381 = 0;
        v373 = 0;
        v377 = 0;
        v365 = 0;
        v369 = 0;
        v357 = 0;
        v361 = 0;
        v353 = 0;
        v349 = 0;
        v345 = 0;
        v341 = 0;
        v96 = 0;
        currentDevice33 = 0;
        v97 = 0;
        v98 = 0;
        v99 = 0;
        v100 = 0.0;
        goto LABEL_1973;
      }
    }

    else
    {
      *&v415[48] = 0;
    }

LABEL_385:
    v88 = __sb__runningInSpringBoard();
    if (v88)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        *&v415[40] = 0;
        goto LABEL_394;
      }
    }

    else
    {
      mainScreen4 = [MEMORY[0x277D75418] currentDevice];
      if ([mainScreen4 userInterfaceIdiom] != 1)
      {
        *&v415[40] = 0x100000000;
        goto LABEL_394;
      }
    }

    *&v415[44] = v88 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      currentDevice31 = __sb__runningInSpringBoard();
      if (currentDevice31)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        currentDevice9 = [MEMORY[0x277D759A0] mainScreen];
        [currentDevice9 _referenceBounds];
      }

      *&v415[40] = currentDevice31 ^ 1;
      BSSizeRoundForScale();
      if (v106 >= *(MEMORY[0x277D66E30] + 376))
      {
        memset(v415, 0, 40);
        v413 = 0;
        v409 = 0;
        v405 = 0;
        v401 = 0;
        v397 = 0;
        v393 = 0;
        v389 = 0;
        v385 = 0;
        v381 = 0;
        v373 = 0;
        v377 = 0;
        v365 = 0;
        v369 = 0;
        v357 = 0;
        v361 = 0;
        v353 = 0;
        v349 = 0;
        v345 = 0;
        v341 = 0;
        v96 = 0;
        currentDevice33 = 0;
        v97 = 0;
        v98 = 0;
        v99 = 0;
        v100 = 0.0;
        goto LABEL_1973;
      }
    }

    else
    {
      *&v415[40] = 0;
    }

LABEL_394:
    v89 = __sb__runningInSpringBoard();
    if (v89)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        *&v415[32] = 0;
        goto LABEL_429;
      }
    }

    else
    {
      currentDevice7 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice7 userInterfaceIdiom] != 1)
      {
        *&v415[32] = 0x100000000;
        goto LABEL_429;
      }
    }

    *&v415[36] = v89 ^ 1;
    currentDevice31 = __sb__runningInSpringBoard();
    if (currentDevice31)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 _referenceBounds];
    }

    *&v415[32] = currentDevice31 ^ 1;
    BSSizeRoundForScale();
    if (v94 >= *(MEMORY[0x277D66E30] + 280))
    {
      memset(v415, 0, 32);
      v413 = 0;
      v409 = 0;
      v405 = 0;
      v401 = 0;
      v397 = 0;
      v393 = 0;
      v389 = 0;
      v385 = 0;
      v381 = 0;
      v373 = 0;
      v377 = 0;
      v365 = 0;
      v369 = 0;
      v357 = 0;
      v361 = 0;
      v353 = 0;
      v349 = 0;
      v345 = 0;
      v341 = 0;
      v96 = 0;
      currentDevice33 = 0;
      v97 = 0;
      v98 = 0;
      v99 = 0;
      v100 = 0.0;
      goto LABEL_1973;
    }

LABEL_429:
    v95 = __sb__runningInSpringBoard();
    if (v95)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        *&v415[24] = 0;
        goto LABEL_439;
      }
    }

    else
    {
      mainScreen5 = [MEMORY[0x277D75418] currentDevice];
      if ([mainScreen5 userInterfaceIdiom] != 1)
      {
        *&v415[24] = 0x100000000;
        goto LABEL_439;
      }
    }

    *&v415[28] = v95 ^ 1;
    currentDevice31 = __sb__runningInSpringBoard();
    if (currentDevice31)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen6 _referenceBounds];
    }

    *&v415[24] = currentDevice31 ^ 1;
    BSSizeRoundForScale();
    if (v101 >= *(MEMORY[0x277D66E30] + 264))
    {
      memset(v415, 0, 24);
      v413 = 0;
      v409 = 0;
      v405 = 0;
      v401 = 0;
      v397 = 0;
      v393 = 0;
      v389 = 0;
      v385 = 0;
      v381 = 0;
      v373 = 0;
      v377 = 0;
      v365 = 0;
      v369 = 0;
      v357 = 0;
      v361 = 0;
      v353 = 0;
      v349 = 0;
      v345 = 0;
      v341 = 0;
      v96 = 0;
      currentDevice33 = 0;
      v97 = 0;
      v98 = 0;
      v99 = 0;
      v100 = 0.0;
      goto LABEL_1973;
    }

LABEL_439:
    v102 = __sb__runningInSpringBoard();
    if (v102)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        *&v415[16] = 0;
        goto LABEL_630;
      }
    }

    else
    {
      mainScreen = [MEMORY[0x277D75418] currentDevice];
      if ([mainScreen userInterfaceIdiom] != 1)
      {
        *&v415[16] = 0x100000000;
        goto LABEL_630;
      }
    }

    *&v415[20] = v102 ^ 1;
    currentDevice31 = __sb__runningInSpringBoard();
    if (currentDevice31)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice8 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice8 _referenceBounds];
    }

    *&v415[16] = currentDevice31 ^ 1;
    BSSizeRoundForScale();
    if (v127 >= *(MEMORY[0x277D66E30] + 248))
    {
      *v415 = 0uLL;
      v413 = 0;
      v409 = 0;
      v405 = 0;
      v401 = 0;
      v397 = 0;
      v393 = 0;
      v389 = 0;
      v385 = 0;
      v381 = 0;
      v373 = 0;
      v377 = 0;
      v365 = 0;
      v369 = 0;
      v357 = 0;
      v361 = 0;
      v353 = 0;
      v349 = 0;
      v345 = 0;
      v341 = 0;
      v96 = 0;
      currentDevice33 = 0;
      v97 = 0;
      v98 = 0;
      v99 = 0;
      v100 = 0.0;
      goto LABEL_1973;
    }

LABEL_630:
    currentDevice31 = __sb__runningInSpringBoard();
    if (currentDevice31)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_632;
      }
    }

    else
    {
      mainScreen3 = [MEMORY[0x277D75418] currentDevice];
      if ([mainScreen3 userInterfaceIdiom] != 1)
      {
LABEL_632:
        *&v415[12] = currentDevice31 ^ 1;
        mainScreen32 = &unk_21EC97000;
        if (!_SBF_Private_IsD94Like())
        {
LABEL_636:
          *&v415[4] = 0;
          goto LABEL_916;
        }

        v128 = __sb__runningInSpringBoard();
        if (v128)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_636;
          }
        }

        else
        {
          currentDevice12 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice12 userInterfaceIdiom])
          {
            *&v415[4] = 0x100000000;
            goto LABEL_916;
          }
        }

        *&v415[8] = v128 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice15 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice15 _referenceBounds];
          }

          *&v415[4] = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v159 >= *(MEMORY[0x277D66E30] + 200))
          {
            *v415 = 0;
            v413 = 0;
            v409 = 0;
            v405 = 0;
            v401 = 0;
            v397 = 0;
            v393 = 0;
            v389 = 0;
            v385 = 0;
            v381 = 0;
            v373 = 0;
            v377 = 0;
            v365 = 0;
            v369 = 0;
            v357 = 0;
            v361 = 0;
            v353 = 0;
            v349 = 0;
            v345 = 0;
            v341 = 0;
            v96 = 0;
            currentDevice33 = 0;
            v97 = 0;
            v98 = 0;
            v99 = 0;
            v100 = 48.666;
            goto LABEL_1973;
          }
        }

        else
        {
          *&v415[4] = 0;
        }

LABEL_916:
        currentDevice31 = __sb__runningInSpringBoard();
        if (currentDevice31)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *v415 = 0;
            HIDWORD(v413) = 0;
            goto LABEL_926;
          }
        }

        else
        {
          currentDevice11 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice11 userInterfaceIdiom])
          {
            HIDWORD(v413) = 0;
            *v415 = 1;
            goto LABEL_926;
          }
        }

        *v415 = currentDevice31 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice14 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice14 _referenceBounds];
          }

          HIDWORD(v413) = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v151 >= *(MEMORY[0x277D66E30] + 200))
          {
            goto LABEL_930;
          }
        }

        else
        {
          HIDWORD(v413) = 0;
        }

LABEL_926:
        if (_SBF_Private_IsD94Like())
        {
          LODWORD(v413) = 0;
          v409 = 0;
          v405 = 0;
          v401 = 0;
          v397 = 0;
          v393 = 0;
          v389 = 0;
          v385 = 0;
          v381 = 0;
          v373 = 0;
          v377 = 0;
          v365 = 0;
          v369 = 0;
          v357 = 0;
          v361 = 0;
          v353 = 0;
          v349 = 0;
          v345 = 0;
          v341 = 0;
          v96 = 0;
          currentDevice33 = 0;
          v97 = 0;
          v98 = 0;
          v99 = 0;
          v100 = 48.666;
          goto LABEL_1973;
        }

LABEL_930:
        if (!_SBF_Private_IsD64Like())
        {
LABEL_934:
          LODWORD(v413) = 0;
          HIDWORD(v409) = 0;
          goto LABEL_1032;
        }

        v152 = __sb__runningInSpringBoard();
        if (v152)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_934;
          }
        }

        else
        {
          currentDevice13 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice13 userInterfaceIdiom])
          {
            HIDWORD(v409) = 0;
            LODWORD(v413) = 1;
            goto LABEL_1032;
          }
        }

        LODWORD(v413) = v152 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v165 = __sb__runningInSpringBoard();
          if (v165)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice16 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice16 _referenceBounds];
          }

          currentDevice31 = v165 ^ 1u;
          BSSizeRoundForScale();
          HIDWORD(v409) = currentDevice31;
          if (v175 >= *(MEMORY[0x277D66E30] + 136))
          {
            LODWORD(v409) = 0;
            v405 = 0;
            v401 = 0;
            v397 = 0;
            v393 = 0;
            v389 = 0;
            v385 = 0;
            v381 = 0;
            v373 = 0;
            v377 = 0;
            v365 = 0;
            v369 = 0;
            v357 = 0;
            v361 = 0;
            v353 = 0;
            v349 = 0;
            v345 = 0;
            v341 = 0;
            v96 = 0;
            currentDevice33 = 0;
            v97 = 0;
            v98 = 0;
            v99 = 0;
            v100 = 48.666;
            goto LABEL_1973;
          }
        }

        else
        {
          HIDWORD(v409) = 0;
        }

LABEL_1032:
        currentDevice31 = __sb__runningInSpringBoard();
        if (currentDevice31)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v409) = 0;
            HIDWORD(v405) = 0;
            goto LABEL_1042;
          }
        }

        else
        {
          currentDevice10 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice10 userInterfaceIdiom])
          {
            HIDWORD(v405) = 0;
            LODWORD(v409) = 1;
            goto LABEL_1042;
          }
        }

        LODWORD(v409) = currentDevice31 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice17 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice17 _referenceBounds];
          }

          HIDWORD(v405) = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v166 >= *(MEMORY[0x277D66E30] + 136))
          {
            goto LABEL_1046;
          }
        }

        else
        {
          HIDWORD(v405) = 0;
        }

LABEL_1042:
        if (_SBF_Private_IsD64Like())
        {
          LODWORD(v405) = 0;
          v401 = 0;
          v397 = 0;
          v393 = 0;
          v389 = 0;
          v385 = 0;
          v381 = 0;
          v373 = 0;
          v377 = 0;
          v365 = 0;
          v369 = 0;
          v357 = 0;
          v361 = 0;
          v353 = 0;
          v349 = 0;
          v345 = 0;
          v341 = 0;
          v96 = 0;
          currentDevice33 = 0;
          v97 = 0;
          v98 = 0;
          v99 = 0;
          v100 = 48.666;
          goto LABEL_1973;
        }

LABEL_1046:
        v167 = __sb__runningInSpringBoard();
        if (v167)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v168 = 0;
            mainScreen32 = 0;
            goto LABEL_1056;
          }
        }

        else
        {
          mainScreen8 = [MEMORY[0x277D75418] currentDevice];
          if ([mainScreen8 userInterfaceIdiom])
          {
            mainScreen32 = 0;
            v168 = 1;
            goto LABEL_1056;
          }
        }

        v168 = v167 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen12 _referenceBounds];
          }

          mainScreen32 = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v172 >= *(MEMORY[0x277D66E30] + 136))
          {
            HIDWORD(v401) = currentDevice31 ^ 1;
            LODWORD(v405) = v168;
            LODWORD(v401) = 0;
            v397 = 0;
            v393 = 0;
            v389 = 0;
            v385 = 0;
            v381 = 0;
            v373 = 0;
            v377 = 0;
            v365 = 0;
            v369 = 0;
            v357 = 0;
            v361 = 0;
            v353 = 0;
            v349 = 0;
            v345 = 0;
            v341 = 0;
            v96 = 0;
            currentDevice33 = 0;
            v97 = 0;
            v98 = 0;
            v99 = 0;
            v100 = 41.0;
            goto LABEL_1973;
          }
        }

        else
        {
          mainScreen32 = 0;
        }

LABEL_1056:
        currentDevice31 = __sb__runningInSpringBoard();
        LODWORD(v405) = v168;
        HIDWORD(v401) = mainScreen32;
        if (currentDevice31)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v401) = 0;
            HIDWORD(v397) = 0;
            goto LABEL_1080;
          }
        }

        else
        {
          mainScreen7 = [MEMORY[0x277D75418] currentDevice];
          if ([mainScreen7 userInterfaceIdiom])
          {
            HIDWORD(v397) = 0;
            LODWORD(v401) = 1;
            goto LABEL_1080;
          }
        }

        LODWORD(v401) = currentDevice31 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice19 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice19 _referenceBounds];
          }

          HIDWORD(v397) = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v180 >= *(MEMORY[0x277D66E30] + 136))
          {
            goto LABEL_1156;
          }
        }

        else
        {
          HIDWORD(v397) = 0;
        }

LABEL_1080:
        if (_SBF_Private_IsD54())
        {
          LODWORD(v397) = 0;
          v393 = 0;
          v389 = 0;
          v385 = 0;
          v381 = 0;
          v373 = 0;
          v377 = 0;
          v365 = 0;
          v369 = 0;
          v357 = 0;
          v361 = 0;
          v353 = 0;
          v349 = 0;
          v345 = 0;
          v341 = 0;
          v96 = 0;
          currentDevice33 = 0;
          v97 = 0;
          v98 = 0;
          v99 = 0;
          v100 = 41.0;
          goto LABEL_1973;
        }

LABEL_1156:
        v181 = __sb__runningInSpringBoard();
        if (v181)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v397) = 0;
            HIDWORD(v393) = 0;
            goto LABEL_1172;
          }
        }

        else
        {
          mainScreen10 = [MEMORY[0x277D75418] currentDevice];
          if ([mainScreen10 userInterfaceIdiom])
          {
            HIDWORD(v393) = 0;
            LODWORD(v397) = 1;
            goto LABEL_1172;
          }
        }

        LODWORD(v397) = v181 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice18 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice18 _referenceBounds];
          }

          HIDWORD(v393) = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v197 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
          {
            LODWORD(v393) = 0;
            v389 = 0;
            v385 = 0;
            v381 = 0;
            v373 = 0;
            v377 = 0;
            v365 = 0;
            v369 = 0;
            v357 = 0;
            v361 = 0;
            v353 = 0;
            v349 = 0;
            v345 = 0;
            v341 = 0;
            v96 = 0;
            currentDevice33 = 0;
            v97 = 0;
            v98 = 0;
            v99 = 0;
            v100 = 31.0;
            goto LABEL_1973;
          }
        }

        else
        {
          HIDWORD(v393) = 0;
        }

LABEL_1172:
        currentDevice31 = __sb__runningInSpringBoard();
        if (currentDevice31)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v393) = 0;
            HIDWORD(v389) = 0;
            goto LABEL_1190;
          }
        }

        else
        {
          mainScreen11 = [MEMORY[0x277D75418] currentDevice];
          if ([mainScreen11 userInterfaceIdiom])
          {
            HIDWORD(v389) = 0;
            LODWORD(v393) = 1;
            goto LABEL_1190;
          }
        }

        LODWORD(v393) = currentDevice31 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice21 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice21 _referenceBounds];
          }

          HIDWORD(v389) = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v199 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_1267;
          }
        }

        else
        {
          HIDWORD(v389) = 0;
        }

LABEL_1190:
        if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
        {
          LODWORD(v389) = 0;
          v385 = 0;
          v381 = 0;
          v373 = 0;
          v377 = 0;
          v365 = 0;
          v369 = 0;
          v357 = 0;
          v361 = 0;
          v353 = 0;
          v349 = 0;
          v345 = 0;
          v341 = 0;
          v96 = 0;
          currentDevice33 = 0;
          v97 = 0;
          v98 = 0;
          v99 = 0;
          v100 = 0.0;
          goto LABEL_1973;
        }

LABEL_1267:
        if (!_SBF_Private_IsD93Like())
        {
LABEL_1271:
          LODWORD(v389) = 0;
          HIDWORD(v385) = 0;
          goto LABEL_1348;
        }

        v200 = __sb__runningInSpringBoard();
        if (v200)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_1271;
          }
        }

        else
        {
          mainScreen13 = [MEMORY[0x277D75418] currentDevice];
          if ([mainScreen13 userInterfaceIdiom])
          {
            HIDWORD(v385) = 0;
            LODWORD(v389) = 1;
            goto LABEL_1348;
          }
        }

        LODWORD(v389) = v200 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v210 = __sb__runningInSpringBoard();
          if (v210)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice23 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice23 _referenceBounds];
          }

          currentDevice31 = v210 ^ 1u;
          BSSizeRoundForScale();
          HIDWORD(v385) = currentDevice31;
          if (v218 >= *(MEMORY[0x277D66E30] + 184))
          {
            LODWORD(v385) = 0;
            v381 = 0;
            v373 = 0;
            v377 = 0;
            v365 = 0;
            v369 = 0;
            v357 = 0;
            v361 = 0;
            v353 = 0;
            v349 = 0;
            v345 = 0;
            v341 = 0;
            v96 = 0;
            currentDevice33 = 0;
            v97 = 0;
            v98 = 0;
            v99 = 0;
            v100 = 40.0;
            goto LABEL_1973;
          }
        }

        else
        {
          HIDWORD(v385) = 0;
        }

LABEL_1348:
        currentDevice31 = __sb__runningInSpringBoard();
        if (currentDevice31)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v385) = 0;
            HIDWORD(v381) = 0;
            goto LABEL_1358;
          }
        }

        else
        {
          mainScreen9 = [MEMORY[0x277D75418] currentDevice];
          if ([mainScreen9 userInterfaceIdiom])
          {
            HIDWORD(v381) = 0;
            LODWORD(v385) = 1;
            goto LABEL_1358;
          }
        }

        LODWORD(v385) = currentDevice31 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice20 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice20 _referenceBounds];
          }

          HIDWORD(v381) = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v211 >= *(MEMORY[0x277D66E30] + 184))
          {
            goto LABEL_1362;
          }
        }

        else
        {
          HIDWORD(v381) = 0;
        }

LABEL_1358:
        if (_SBF_Private_IsD93Like())
        {
          LODWORD(v381) = 0;
          v373 = 0;
          v377 = 0;
          v365 = 0;
          v369 = 0;
          v357 = 0;
          v361 = 0;
          v353 = 0;
          v349 = 0;
          v345 = 0;
          v341 = 0;
          v96 = 0;
          currentDevice33 = 0;
          v97 = 0;
          v98 = 0;
          v99 = 0;
          v100 = 40.0;
          goto LABEL_1973;
        }

LABEL_1362:
        if (!_SBF_Private_IsD63Like())
        {
LABEL_1366:
          LODWORD(v381) = 0;
          HIDWORD(v377) = 0;
          goto LABEL_1478;
        }

        v212 = __sb__runningInSpringBoard();
        if (v212)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_1366;
          }
        }

        else
        {
          mainScreen16 = [MEMORY[0x277D75418] currentDevice];
          if ([mainScreen16 userInterfaceIdiom])
          {
            HIDWORD(v377) = 0;
            LODWORD(v381) = 1;
            goto LABEL_1478;
          }
        }

        LODWORD(v381) = v212 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice25 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice25 _referenceBounds];
          }

          HIDWORD(v377) = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v233 >= *(MEMORY[0x277D66E30] + 104))
          {
            LODWORD(v377) = 0;
            v369 = 0;
            v373 = 0;
            v361 = 0;
            v365 = 0;
            v353 = 0;
            v357 = 0;
            v349 = 0;
            v345 = 0;
            v341 = 0;
            v96 = 0;
            currentDevice33 = 0;
            v97 = 0;
            v98 = 0;
            v99 = 0;
            v100 = 40.0;
            goto LABEL_1973;
          }
        }

        else
        {
          HIDWORD(v377) = 0;
        }

LABEL_1478:
        currentDevice31 = __sb__runningInSpringBoard();
        if (currentDevice31)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v377) = 0;
            HIDWORD(v373) = 0;
            goto LABEL_1488;
          }
        }

        else
        {
          mainScreen14 = [MEMORY[0x277D75418] currentDevice];
          if ([mainScreen14 userInterfaceIdiom])
          {
            HIDWORD(v373) = 0;
            LODWORD(v377) = 1;
            goto LABEL_1488;
          }
        }

        LODWORD(v377) = currentDevice31 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice24 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice24 _referenceBounds];
          }

          HIDWORD(v373) = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v224 >= *(MEMORY[0x277D66E30] + 104))
          {
            goto LABEL_1492;
          }
        }

        else
        {
          HIDWORD(v373) = 0;
        }

LABEL_1488:
        if (_SBF_Private_IsD63Like())
        {
          LODWORD(v373) = 0;
          v365 = 0;
          v369 = 0;
          v357 = 0;
          v361 = 0;
          v353 = 0;
          v349 = 0;
          v345 = 0;
          v341 = 0;
          v96 = 0;
          currentDevice33 = 0;
          v97 = 0;
          v98 = 0;
          v99 = 0;
          v100 = 40.0;
          goto LABEL_1973;
        }

LABEL_1492:
        if (!_SBF_Private_IsD23Like())
        {
LABEL_1496:
          LODWORD(v373) = 0;
          HIDWORD(v369) = 0;
          goto LABEL_1595;
        }

        v225 = __sb__runningInSpringBoard();
        if (v225)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_1496;
          }
        }

        else
        {
          mainScreen18 = [MEMORY[0x277D75418] currentDevice];
          if ([mainScreen18 userInterfaceIdiom])
          {
            HIDWORD(v369) = 0;
            LODWORD(v373) = 1;
            goto LABEL_1595;
          }
        }

        LODWORD(v373) = v225 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen23 _referenceBounds];
          }

          HIDWORD(v369) = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v246 >= *(MEMORY[0x277D66E30] + 216))
          {
            LODWORD(v369) = 0;
            v361 = 0;
            v365 = 0;
            v353 = 0;
            v357 = 0;
            v349 = 0;
            v345 = 0;
            v341 = 0;
            v96 = 0;
            currentDevice33 = 0;
            v97 = 0;
            v98 = 0;
            v99 = 0;
            v100 = 34.0;
            goto LABEL_1973;
          }
        }

        else
        {
          HIDWORD(v369) = 0;
        }

LABEL_1595:
        currentDevice31 = __sb__runningInSpringBoard();
        if (currentDevice31)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v369) = 0;
            HIDWORD(v365) = 0;
            goto LABEL_1605;
          }
        }

        else
        {
          currentDevice22 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice22 userInterfaceIdiom])
          {
            HIDWORD(v365) = 0;
            LODWORD(v369) = 1;
            goto LABEL_1605;
          }
        }

        LODWORD(v369) = currentDevice31 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen21 _referenceBounds];
          }

          HIDWORD(v365) = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v239 >= *(MEMORY[0x277D66E30] + 216))
          {
            goto LABEL_1609;
          }
        }

        else
        {
          HIDWORD(v365) = 0;
        }

LABEL_1605:
        if (_SBF_Private_IsD23Like())
        {
          LODWORD(v365) = 0;
          v357 = 0;
          v361 = 0;
          v353 = 0;
          v349 = 0;
          v345 = 0;
          v341 = 0;
          v96 = 0;
          currentDevice33 = 0;
          v97 = 0;
          v98 = 0;
          v99 = 0;
          v100 = 34.0;
          goto LABEL_1973;
        }

LABEL_1609:
        v240 = __sb__runningInSpringBoard();
        if (v240)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v365) = 0;
            HIDWORD(v361) = 0;
            goto LABEL_1619;
          }
        }

        else
        {
          mainScreen15 = [MEMORY[0x277D75418] currentDevice];
          if ([mainScreen15 userInterfaceIdiom])
          {
            HIDWORD(v361) = 0;
            LODWORD(v365) = 1;
            goto LABEL_1619;
          }
        }

        LODWORD(v365) = v240 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen22 _referenceBounds];
          }

          HIDWORD(v361) = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v243 >= *(MEMORY[0x277D66E30] + 120))
          {
            LODWORD(v361) = 0;
            v353 = 0;
            v357 = 0;
            v349 = 0;
            v345 = 0;
            v341 = 0;
            v96 = 0;
            currentDevice33 = 0;
            v97 = 0;
            v98 = 0;
            v99 = 0;
            v100 = 34.0;
            goto LABEL_1973;
          }
        }

        else
        {
          HIDWORD(v361) = 0;
        }

LABEL_1619:
        currentDevice31 = __sb__runningInSpringBoard();
        if (currentDevice31)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v361) = 0;
            HIDWORD(v357) = 0;
            goto LABEL_1629;
          }
        }

        else
        {
          mainScreen17 = [MEMORY[0x277D75418] currentDevice];
          if ([mainScreen17 userInterfaceIdiom])
          {
            HIDWORD(v357) = 0;
            LODWORD(v361) = 1;
            goto LABEL_1629;
          }
        }

        LODWORD(v361) = currentDevice31 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen24 _referenceBounds];
          }

          HIDWORD(v357) = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v247 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_1697;
          }
        }

        else
        {
          HIDWORD(v357) = 0;
        }

LABEL_1629:
        if (_SBF_Private_IsD33OrSimilarDevice())
        {
          LODWORD(v357) = 0;
          v353 = 0;
          v349 = 0;
          v345 = 0;
          v341 = 0;
          v96 = 0;
          currentDevice33 = 0;
          v97 = 0;
          v98 = 0;
          v99 = 0;
          v100 = 0.0;
          goto LABEL_1973;
        }

LABEL_1697:
        v248 = __sb__runningInSpringBoard();
        mainScreen32 = &unk_21EC97000;
        if (v248)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v357) = 0;
            HIDWORD(v353) = 0;
            goto LABEL_1735;
          }
        }

        else
        {
          mainScreen20 = [MEMORY[0x277D75418] currentDevice];
          if ([mainScreen20 userInterfaceIdiom])
          {
            HIDWORD(v353) = 0;
            LODWORD(v357) = 1;
            goto LABEL_1735;
          }
        }

        LODWORD(v357) = v248 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice26 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice26 _referenceBounds];
          }

          HIDWORD(v353) = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v257 >= *(MEMORY[0x277D66E30] + 104))
          {
            LODWORD(v353) = 0;
            v349 = 0;
            v345 = 0;
            v341 = 0;
            v96 = 0;
            currentDevice33 = 0;
            v97 = 0;
            v98 = 0;
            v99 = 0;
            v100 = 31.3333;
            goto LABEL_1973;
          }
        }

        else
        {
          HIDWORD(v353) = 0;
        }

LABEL_1735:
        currentDevice31 = __sb__runningInSpringBoard();
        if (currentDevice31)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v353) = 0;
            v349 = 0;
            goto LABEL_1753;
          }
        }

        else
        {
          mainScreen19 = [MEMORY[0x277D75418] currentDevice];
          if ([mainScreen19 userInterfaceIdiom])
          {
            v349 = 0;
            LODWORD(v353) = 1;
            goto LABEL_1753;
          }
        }

        LODWORD(v353) = currentDevice31 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice27 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice27 _referenceBounds];
          }

          v349 = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v258 >= *(MEMORY[0x277D66E30] + 104))
          {
            goto LABEL_1784;
          }
        }

        else
        {
          v349 = 0;
        }

LABEL_1753:
        if (_SBF_Private_IsD53())
        {
          v345 = 0;
          v341 = 0;
          v96 = 0;
          currentDevice33 = 0;
          v97 = 0;
          v98 = 0;
          v99 = 0;
          v100 = 31.3333;
          goto LABEL_1973;
        }

LABEL_1784:
        if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0 || _SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
        {
          v345 = 0;
          v341 = 0;
          v96 = 0;
          currentDevice33 = 0;
          v97 = 0;
          v98 = 0;
          v99 = 0;
          v100 = 32.666;
          goto LABEL_1973;
        }

        v100 = 22.5;
        if (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0 || (_SBF_Private_IsD52ZoomedOrSimilarDevice())
        {
          v345 = 0;
          v341 = 0;
          v96 = 0;
          currentDevice33 = 0;
          v97 = 0;
          v98 = 0;
          v99 = 0;
          goto LABEL_1973;
        }

        v261 = __sb__runningInSpringBoard();
        if (v261)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v345 = 0;
            v341 = 0;
            goto LABEL_1907;
          }
        }

        else
        {
          currentDevice28 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice28 userInterfaceIdiom])
          {
            v341 = 0;
            v345 = 1;
            goto LABEL_1907;
          }
        }

        v345 = v261 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen25 _referenceBounds];
          }

          v341 = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v278 >= *(MEMORY[0x277D66E30] + 88))
          {
            v96 = 0;
            currentDevice33 = 0;
            v97 = 0;
            v98 = 0;
            v99 = 0;
            v100 = 27.0;
            goto LABEL_1973;
          }
        }

        else
        {
          v341 = 0;
        }

LABEL_1907:
        v274 = __sb__runningInSpringBoard();
        if (v274)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v96 = 0;
            currentDevice33 = 0;
            goto LABEL_1917;
          }
        }

        else
        {
          mainScreen27 = [MEMORY[0x277D75418] currentDevice];
          if ([mainScreen27 userInterfaceIdiom])
          {
            currentDevice33 = 0;
            v96 = 1;
            goto LABEL_1917;
          }
        }

        v96 = v274 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen26 _referenceBounds];
          }

          currentDevice33 = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v279 >= *(MEMORY[0x277D66E30] + 72))
          {
            v97 = 0;
            v98 = 0;
            v99 = 0;
            v100 = 0.0;
            goto LABEL_1973;
          }
        }

        else
        {
          currentDevice33 = 0;
        }

LABEL_1917:
        currentDevice31 = __sb__runningInSpringBoard();
        if (currentDevice31)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v97 = 0;
            v98 = 0;
LABEL_1927:
            mainScreen31 = __sb__runningInSpringBoard();
            if (mainScreen31)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
LABEL_1930:
                v99 = 0;
                v100 = 0.0;
                goto LABEL_1973;
              }
            }

            else
            {
              currentDevice31 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice31 userInterfaceIdiom])
              {
                v100 = 0.0;
                v99 = 1;
                goto LABEL_1973;
              }
            }

            v99 = mainScreen31 ^ 1;
            v282 = __sb__runningInSpringBoard();
            if (v282)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              mainScreen31 = [MEMORY[0x277D759A0] mainScreen];
              [mainScreen31 _referenceBounds];
            }

            BSSizeRoundForScale();
            v100 = 0.0;
            if (v282 != 1)
            {

              if (v99)
              {
                goto LABEL_1974;
              }

              goto LABEL_457;
            }

LABEL_1973:
            if (v99)
            {
LABEL_1974:

              if (!v98)
              {
LABEL_459:
                if (v97)
                {
                }

                mainScreen32 = HIDWORD(v401);
                if (currentDevice33)
                {
                }

                if (v96)
                {
                }

                if (v341)
                {
                }

                v74 = selfCopy;
                if (v345)
                {
                }

                if (v349)
                {
                }

                if (v353)
                {
                }

                if (HIDWORD(v353))
                {
                }

                if (v357)
                {
                }

                if (HIDWORD(v357))
                {
                }

                if (v361)
                {
                }

                if (HIDWORD(v361))
                {
                }

                if (v365)
                {
                }

                if (HIDWORD(v365))
                {
                }

                if (v369)
                {
                }

                if (HIDWORD(v369))
                {
                }

                if (v373)
                {
                }

                if (HIDWORD(v373))
                {
                }

                if (v377)
                {
                }

                if (HIDWORD(v377))
                {
                }

                if (v381)
                {
                }

                if (HIDWORD(v381))
                {
                }

                if (v385)
                {
                }

                if (HIDWORD(v385))
                {
                }

                if (v389)
                {
                }

                if (HIDWORD(v389))
                {
                }

                if (v393)
                {
                }

                if (HIDWORD(v393))
                {
                }

                if (v397)
                {
                }

                if (HIDWORD(v397))
                {
                }

                if (v401)
                {

                  if (!HIDWORD(v401))
                  {
                    goto LABEL_521;
                  }
                }

                else if (!HIDWORD(v401))
                {
LABEL_521:
                  if (!v405)
                  {
LABEL_523:
                    if (HIDWORD(v405))
                    {
                    }

                    if (v409)
                    {
                    }

                    if (HIDWORD(v409))
                    {
                    }

                    if (v413)
                    {
                    }

                    if (HIDWORD(v413))
                    {
                    }

                    if (*v415)
                    {
                    }

                    if (*&v415[4])
                    {
                    }

                    if (*&v415[8])
                    {
                    }

                    if (*&v415[12])
                    {
                    }

                    if (*&v415[16])
                    {
                    }

                    if (*&v415[20])
                    {
                    }

                    if (*&v415[24])
                    {
                    }

                    if (*&v415[28])
                    {
                    }

                    if (*&v415[32])
                    {
                    }

                    if (*&v415[36])
                    {
                    }

                    if (*&v415[40])
                    {
                    }

                    if (*&v415[44])
                    {
                    }

                    if (*&v415[48])
                    {
                    }

                    if (*&v415[52])
                    {
                    }

                    if (*&v415[56])
                    {
                    }

                    if (*&v415[60])
                    {
                    }

                    userInterfaceLayoutDirection = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
                    v420.origin.x = 0.0;
                    v420.origin.y = 0.0;
                    v420.size.width = v38;
                    v420.size.height = v45;
                    MidX = CGRectGetMidX(v420);
                    v109 = v8 - MidX - v100;
                    v110 = v100 + MidX;
                    if (userInterfaceLayoutDirection == 1)
                    {
                      v81 = v110;
                    }

                    else
                    {
                      v81 = v109;
                    }

                    v85 = v45 * 0.5;
                    v82 = v45 * 0.5 + v66;
                    goto LABEL_569;
                  }

LABEL_522:

                  goto LABEL_523;
                }

                if (!v405)
                {
                  goto LABEL_523;
                }

                goto LABEL_522;
              }

LABEL_458:

              goto LABEL_459;
            }

LABEL_457:
            if (!v98)
            {
              goto LABEL_459;
            }

            goto LABEL_458;
          }
        }

        else
        {
          currentDevice32 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice32 userInterfaceIdiom])
          {
            v98 = 0;
            v97 = 1;
            goto LABEL_1927;
          }
        }

        v97 = currentDevice31 ^ 1;
        currentDevice31 = __sb__runningInSpringBoard();
        if (currentDevice31)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen32 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen32 _referenceBounds];
        }

        v98 = currentDevice31 ^ 1;
        BSSizeRoundForScale();
        if (v275 >= *(MEMORY[0x277D66E30] + 56))
        {
          goto LABEL_1930;
        }

        goto LABEL_1927;
      }
    }

    *&v415[4] = 0;
    *v415 = 0;
    v413 = 0;
    v409 = 0;
    v405 = 0;
    v401 = 0;
    v397 = 0;
    v393 = 0;
    v389 = 0;
    v385 = 0;
    v381 = 0;
    v373 = 0;
    v377 = 0;
    v365 = 0;
    v369 = 0;
    v357 = 0;
    v361 = 0;
    v353 = 0;
    v349 = 0;
    v345 = 0;
    v341 = 0;
    v96 = 0;
    currentDevice33 = 0;
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100 = 0.0;
    *&v415[12] = currentDevice31 ^ 1;
    goto LABEL_1973;
  }

  usesStatusBarRelativeLayoutForControlCenterTutorsY = [(CSTeachableMomentsContainerView *)selfCopy usesStatusBarRelativeLayoutForControlCenterTutorsY];
  if (usesStatusBarRelativeLayoutForControlCenterTutorsY)
  {
    v78 = 8.0;
  }

  else
  {
    v78 = v66;
  }

  [(CSTeachableMomentsContainerView *)selfCopy _grabberCenterForContainerBounds:usesStatusBarRelativeLayoutForControlCenterTutorsY grabberTop:v419 grabberTopIsRelative:v4 grabberSize:v6 isSpaceConstrained:v8, v10, v78, v38, v45];
  v81 = v80;
  v82 = v79;
  if (v80 == *MEMORY[0x277CBF348] && v79 == *(MEMORY[0x277CBF348] + 8))
  {

    v83 = v417;
    goto LABEL_765;
  }

  v85 = v45 * 0.5;
LABEL_569:
  [v417 setBounds:{0.0, 0.0, v38, v45}];
  [v417 setCenter:{v81, v82}];
  [(CABackdropLayer *)v74->_controlCenterGrabberBackdropLayer setBounds:0.0, 0.0, v38, v45];
  [(CABackdropLayer *)v74->_controlCenterGrabberBackdropLayer setPosition:v81, v82];
  [v416 setFrame:{0.0, 0.0, v38, v45}];
  [v416 _setContinuousCornerRadius:v85];
  [*&v415[64] setBounds:{0.0, 0.0, v38, v45}];
  [*&v415[64] setCenter:{v81, v82 + 28.5}];

  controlCenterGlyphContainerView = [(CSTeachableMomentsContainerView *)v74 controlCenterGlyphContainerView];
  [(CSTeachableMomentsContainerView *)v74 bounds];
  [controlCenterGlyphContainerView setFrame:?];
  controlCenterGlyphView = [(CSTeachableMomentsContainerView *)v74 controlCenterGlyphView];
  [controlCenterGlyphView sizeToFit];
  if (![(CSTeachableMomentsContainerView *)v74 usesStatusBarRelativeLayoutForControlCenterTutorsY])
  {
    v114 = __sb__runningInSpringBoard();
    if (v114)
    {
      v115 = 0x277D75000;
      if (SBFEffectiveDeviceClass() != 2)
      {
        mainScreen34 = 0;
        LODWORD(v416) = 0;
        goto LABEL_583;
      }
    }

    else
    {
      v115 = 0x277D75000uLL;
      mainScreen32 = [MEMORY[0x277D75418] currentDevice];
      if ([mainScreen32 userInterfaceIdiom] != 1)
      {
        LODWORD(v416) = 0;
        mainScreen34 = 1;
        goto LABEL_583;
      }
    }

    mainScreen34 = v114 ^ 1u;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      currentDevice34 = __sb__runningInSpringBoard();
      if (currentDevice34)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen2 _referenceBounds];
      }

      LODWORD(v416) = currentDevice34 ^ 1;
      BSSizeRoundForScale();
      if (v130 == *(MEMORY[0x277D66E30] + 288) && v129 == *(MEMORY[0x277D66E30] + 296))
      {
        LODWORD(v417) = mainScreen34;
        memset(v415, 0, 68);
        v414 = 0;
        v410 = 0;
        v406 = 0;
        v402 = 0;
        v398 = 0;
        v394 = 0;
        v390 = 0;
        v342 = 0;
        v386 = 0;
        v382 = 0;
        v374 = 0;
        v378 = 0;
        v366 = 0;
        v370 = 0;
        v358 = 0;
        v362 = 0;
        v354 = 0;
        v350 = 0;
        v346 = 0;
        v123 = 0;
        v124 = 0;
        MinY = 27.0;
        goto LABEL_1986;
      }
    }

    else
    {
      LODWORD(v416) = 0;
    }

LABEL_583:
    v118 = __sb__runningInSpringBoard();
    LODWORD(v417) = mainScreen34;
    if (v118)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        *&v415[60] = 0;
        goto LABEL_592;
      }
    }

    else
    {
      currentDevice3 = [*(v115 + 1048) currentDevice];
      if ([currentDevice3 userInterfaceIdiom] != 1)
      {
        *&v415[60] = 0x100000000;
        goto LABEL_592;
      }
    }

    *&v415[64] = v118 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      currentDevice34 = __sb__runningInSpringBoard();
      if (currentDevice34)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen3 _referenceBounds];
      }

      *&v415[60] = currentDevice34 ^ 1;
      BSSizeRoundForScale();
      if (v131 >= *(MEMORY[0x277D66E30] + 440))
      {
        memset(v415, 0, 60);
        v414 = 0;
        v410 = 0;
        v406 = 0;
        v402 = 0;
        v398 = 0;
        v394 = 0;
        v390 = 0;
        v342 = 0;
        v386 = 0;
        v382 = 0;
        v374 = 0;
        v378 = 0;
        v366 = 0;
        v370 = 0;
        v358 = 0;
        v362 = 0;
        v354 = 0;
        v350 = 0;
        v346 = 0;
        v123 = 0;
        v124 = 0;
        MinY = 28.0;
        goto LABEL_1986;
      }
    }

    else
    {
      *&v415[60] = 0;
    }

LABEL_592:
    v119 = __sb__runningInSpringBoard();
    if (v119)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        *&v415[52] = 0;
        goto LABEL_601;
      }
    }

    else
    {
      currentDevice4 = [*(v115 + 1048) currentDevice];
      if ([currentDevice4 userInterfaceIdiom] != 1)
      {
        *&v415[52] = 0x100000000;
        goto LABEL_601;
      }
    }

    *&v415[56] = v119 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      currentDevice34 = __sb__runningInSpringBoard();
      if (currentDevice34)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen6 _referenceBounds];
      }

      *&v415[52] = currentDevice34 ^ 1;
      BSSizeRoundForScale();
      if (v132 >= *(MEMORY[0x277D66E30] + 376))
      {
        memset(v415, 0, 52);
        v414 = 0;
        v410 = 0;
        v406 = 0;
        v402 = 0;
        v398 = 0;
        v394 = 0;
        v390 = 0;
        v342 = 0;
        v386 = 0;
        v382 = 0;
        v374 = 0;
        v378 = 0;
        v366 = 0;
        v370 = 0;
        v358 = 0;
        v362 = 0;
        v354 = 0;
        v350 = 0;
        v346 = 0;
        v123 = 0;
        v124 = 0;
        MinY = 28.0;
        goto LABEL_1986;
      }
    }

    else
    {
      *&v415[52] = 0;
    }

LABEL_601:
    v120 = __sb__runningInSpringBoard();
    if (v120)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        *&v415[44] = 0;
        goto LABEL_610;
      }
    }

    else
    {
      currentDevice5 = [*(v115 + 1048) currentDevice];
      if ([currentDevice5 userInterfaceIdiom] != 1)
      {
        *&v415[44] = 0;
        *&v415[48] = 1;
        goto LABEL_610;
      }
    }

    *&v415[48] = v120 ^ 1;
    currentDevice34 = __sb__runningInSpringBoard();
    if (currentDevice34)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice7 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice7 _referenceBounds];
    }

    *&v415[44] = currentDevice34 ^ 1;
    BSSizeRoundForScale();
    if (v121 >= *(MEMORY[0x277D66E30] + 280))
    {
      memset(v415, 0, 44);
      v414 = 0;
      v410 = 0;
      v406 = 0;
      v402 = 0;
      v398 = 0;
      v394 = 0;
      v390 = 0;
      v342 = 0;
      v386 = 0;
      v382 = 0;
      v374 = 0;
      v378 = 0;
      v366 = 0;
      v370 = 0;
      v358 = 0;
      v362 = 0;
      v354 = 0;
      v350 = 0;
      v346 = 0;
      v123 = 0;
      v124 = 0;
      MinY = 27.0;
      goto LABEL_1986;
    }

LABEL_610:
    v122 = __sb__runningInSpringBoard();
    if (v122)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        *&v415[36] = 0;
        goto LABEL_620;
      }
    }

    else
    {
      currentDevice6 = [*(v115 + 1048) currentDevice];
      if ([currentDevice6 userInterfaceIdiom] != 1)
      {
        *&v415[36] = 0;
        *&v415[40] = 1;
        goto LABEL_620;
      }
    }

    *&v415[40] = v122 ^ 1;
    currentDevice34 = __sb__runningInSpringBoard();
    if (currentDevice34)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen _referenceBounds];
    }

    *&v415[36] = currentDevice34 ^ 1;
    BSSizeRoundForScale();
    if (v125 >= *(MEMORY[0x277D66E30] + 264))
    {
      memset(v415, 0, 36);
      v414 = 0;
      v410 = 0;
      v406 = 0;
      v402 = 0;
      v398 = 0;
      v394 = 0;
      v390 = 0;
      v342 = 0;
      v386 = 0;
      v382 = 0;
      v374 = 0;
      v378 = 0;
      v366 = 0;
      v370 = 0;
      v358 = 0;
      v362 = 0;
      v354 = 0;
      v350 = 0;
      v346 = 0;
      v123 = 0;
      v124 = 0;
      MinY = 27.0;
      goto LABEL_1986;
    }

LABEL_620:
    v126 = __sb__runningInSpringBoard();
    if (v126)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        *&v415[28] = 0;
        goto LABEL_770;
      }
    }

    else
    {
      mainScreen4 = [*(v115 + 1048) currentDevice];
      if ([mainScreen4 userInterfaceIdiom] != 1)
      {
        *&v415[28] = 0x100000000;
        goto LABEL_770;
      }
    }

    *&v415[32] = v126 ^ 1;
    currentDevice34 = __sb__runningInSpringBoard();
    if (currentDevice34)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice9 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice9 _referenceBounds];
    }

    *&v415[28] = currentDevice34 ^ 1;
    BSSizeRoundForScale();
    if (v135 >= *(MEMORY[0x277D66E30] + 248))
    {
      memset(v415, 0, 28);
      v414 = 0;
      v410 = 0;
      v406 = 0;
      v402 = 0;
      v398 = 0;
      v394 = 0;
      v390 = 0;
      v342 = 0;
      v386 = 0;
      v382 = 0;
      v374 = 0;
      v378 = 0;
      v366 = 0;
      v370 = 0;
      v358 = 0;
      v362 = 0;
      v354 = 0;
      v350 = 0;
      v346 = 0;
      v123 = 0;
      v124 = 0;
      MinY = 27.0;
      goto LABEL_1986;
    }

LABEL_770:
    currentDevice34 = __sb__runningInSpringBoard();
    if (currentDevice34)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_772;
      }
    }

    else
    {
      mainScreen5 = [*(v115 + 1048) currentDevice];
      if ([mainScreen5 userInterfaceIdiom] != 1)
      {
LABEL_772:
        *&v415[24] = currentDevice34 ^ 1;
        if (!_SBF_Private_IsD94Like())
        {
LABEL_776:
          *&v415[16] = 0;
          goto LABEL_959;
        }

        v136 = __sb__runningInSpringBoard();
        if (v136)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_776;
          }
        }

        else
        {
          currentDevice11 = [*(v115 + 1048) currentDevice];
          if ([currentDevice11 userInterfaceIdiom])
          {
            *&v415[16] = 0;
            *&v415[20] = 1;
            goto LABEL_959;
          }
        }

        *&v415[20] = v136 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice34 = __sb__runningInSpringBoard();
          if (currentDevice34)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen10 _referenceBounds];
          }

          *&v415[16] = currentDevice34 ^ 1;
          BSSizeRoundForScale();
          if (v164 >= *(MEMORY[0x277D66E30] + 200))
          {
            *v415 = 0;
            *&v415[8] = 0;
            v414 = 0;
            v410 = 0;
            v406 = 0;
            v402 = 0;
            v398 = 0;
            v394 = 0;
            v390 = 0;
            v342 = 0;
            v386 = 0;
            v382 = 0;
            v374 = 0;
            v378 = 0;
            v366 = 0;
            v370 = 0;
            v358 = 0;
            v362 = 0;
            v354 = 0;
            v350 = 0;
            v346 = 0;
            v123 = 0;
            v124 = 0;
            MinY = 38.6666;
            goto LABEL_1986;
          }
        }

        else
        {
          *&v415[16] = 0;
        }

LABEL_959:
        currentDevice34 = __sb__runningInSpringBoard();
        if (currentDevice34)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *&v415[8] = 0;
            goto LABEL_969;
          }
        }

        else
        {
          currentDevice8 = [*(v115 + 1048) currentDevice];
          if ([currentDevice8 userInterfaceIdiom])
          {
            *&v415[8] = 0;
            *&v415[12] = 1;
            goto LABEL_969;
          }
        }

        *&v415[12] = currentDevice34 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice34 = __sb__runningInSpringBoard();
          if (currentDevice34)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice13 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice13 _referenceBounds];
          }

          *&v415[8] = currentDevice34 ^ 1;
          BSSizeRoundForScale();
          if (v155 >= *(MEMORY[0x277D66E30] + 200))
          {
            goto LABEL_973;
          }
        }

        else
        {
          *&v415[8] = 0;
        }

LABEL_969:
        if (_SBF_Private_IsD94Like())
        {
          *v415 = 0;
          v414 = 0;
          v410 = 0;
          v406 = 0;
          v402 = 0;
          v398 = 0;
          v394 = 0;
          v390 = 0;
          v342 = 0;
          v386 = 0;
          v382 = 0;
          v374 = 0;
          v378 = 0;
          v366 = 0;
          v370 = 0;
          v358 = 0;
          v362 = 0;
          v354 = 0;
          v350 = 0;
          v346 = 0;
          v123 = 0;
          v124 = 0;
          MinY = 38.6666;
          goto LABEL_1986;
        }

LABEL_973:
        if (!_SBF_Private_IsD64Like())
        {
LABEL_977:
          *v415 = 0;
          goto LABEL_1086;
        }

        v156 = __sb__runningInSpringBoard();
        if (v156)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_977;
          }
        }

        else
        {
          mainScreen8 = [*(v115 + 1048) currentDevice];
          if ([mainScreen8 userInterfaceIdiom])
          {
            *v415 = 0;
            *&v415[4] = 1;
            goto LABEL_1086;
          }
        }

        *&v415[4] = v156 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v169 = __sb__runningInSpringBoard();
          if (v169)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen12 _referenceBounds];
          }

          currentDevice34 = v169 ^ 1u;
          BSSizeRoundForScale();
          *v415 = currentDevice34;
          if (v183 >= *(MEMORY[0x277D66E30] + 136))
          {
            v414 = 0;
            v410 = 0;
            v406 = 0;
            v402 = 0;
            v398 = 0;
            v394 = 0;
            v390 = 0;
            v342 = 0;
            v386 = 0;
            v382 = 0;
            v374 = 0;
            v378 = 0;
            v366 = 0;
            v370 = 0;
            v358 = 0;
            v362 = 0;
            v354 = 0;
            v350 = 0;
            v346 = 0;
            v123 = 0;
            v124 = 0;
            MinY = 38.6666;
            goto LABEL_1986;
          }
        }

        else
        {
          *v415 = 0;
        }

LABEL_1086:
        currentDevice34 = __sb__runningInSpringBoard();
        if (currentDevice34)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v414 = 0;
            goto LABEL_1096;
          }
        }

        else
        {
          currentDevice12 = [*(v115 + 1048) currentDevice];
          if ([currentDevice12 userInterfaceIdiom])
          {
            v414 = 0x100000000;
            goto LABEL_1096;
          }
        }

        HIDWORD(v414) = currentDevice34 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice34 = __sb__runningInSpringBoard();
          if (currentDevice34)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice15 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice15 _referenceBounds];
          }

          LODWORD(v414) = currentDevice34 ^ 1;
          BSSizeRoundForScale();
          if (v170 >= *(MEMORY[0x277D66E30] + 136))
          {
            goto LABEL_1100;
          }
        }

        else
        {
          LODWORD(v414) = 0;
        }

LABEL_1096:
        if (_SBF_Private_IsD64Like())
        {
          v410 = 0;
          v406 = 0;
          v402 = 0;
          v398 = 0;
          v394 = 0;
          v390 = 0;
          v342 = 0;
          v386 = 0;
          v382 = 0;
          v374 = 0;
          v378 = 0;
          v366 = 0;
          v370 = 0;
          v358 = 0;
          v362 = 0;
          v354 = 0;
          v350 = 0;
          v346 = 0;
          v123 = 0;
          v124 = 0;
          MinY = 38.6666;
          goto LABEL_1986;
        }

LABEL_1100:
        v171 = __sb__runningInSpringBoard();
        if (v171)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v410 = 0;
            goto LABEL_1110;
          }
        }

        else
        {
          currentDevice10 = [*(v115 + 1048) currentDevice];
          if ([currentDevice10 userInterfaceIdiom])
          {
            v410 = 0x100000000;
            goto LABEL_1110;
          }
        }

        HIDWORD(v410) = v171 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice34 = __sb__runningInSpringBoard();
          if (currentDevice34)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen9 _referenceBounds];
          }

          LODWORD(v410) = currentDevice34 ^ 1;
          BSSizeRoundForScale();
          if (v182 >= *(MEMORY[0x277D66E30] + 136))
          {
            v406 = 0;
            v402 = 0;
            v398 = 0;
            v394 = 0;
            v390 = 0;
            v342 = 0;
            v386 = 0;
            v382 = 0;
            v374 = 0;
            v378 = 0;
            v366 = 0;
            v370 = 0;
            v358 = 0;
            v362 = 0;
            v354 = 0;
            v350 = 0;
            v346 = 0;
            v123 = 0;
            v124 = 0;
            MinY = 38.6666;
            goto LABEL_1986;
          }
        }

        else
        {
          LODWORD(v410) = 0;
        }

LABEL_1110:
        currentDevice34 = __sb__runningInSpringBoard();
        if (currentDevice34)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v406 = 0;
            goto LABEL_1134;
          }
        }

        else
        {
          currentDevice14 = [*(v115 + 1048) currentDevice];
          if ([currentDevice14 userInterfaceIdiom])
          {
            v406 = 0x100000000;
            goto LABEL_1134;
          }
        }

        HIDWORD(v406) = currentDevice34 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice34 = __sb__runningInSpringBoard();
          if (currentDevice34)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice16 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice16 _referenceBounds];
          }

          LODWORD(v406) = currentDevice34 ^ 1;
          BSSizeRoundForScale();
          if (v184 >= *(MEMORY[0x277D66E30] + 136))
          {
            goto LABEL_1180;
          }
        }

        else
        {
          LODWORD(v406) = 0;
        }

LABEL_1134:
        if (_SBF_Private_IsD54())
        {
          v402 = 0;
          v398 = 0;
          v394 = 0;
          v390 = 0;
          v342 = 0;
          v386 = 0;
          v382 = 0;
          v374 = 0;
          v378 = 0;
          v366 = 0;
          v370 = 0;
          v358 = 0;
          v362 = 0;
          v354 = 0;
          v350 = 0;
          v346 = 0;
          v123 = 0;
          v124 = 0;
          MinY = 38.6666;
          goto LABEL_1986;
        }

LABEL_1180:
        v185 = __sb__runningInSpringBoard();
        if (v185)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v402 = 0;
            goto LABEL_1197;
          }
        }

        else
        {
          mainScreen7 = [*(v115 + 1048) currentDevice];
          if ([mainScreen7 userInterfaceIdiom])
          {
            v402 = 0x100000000;
            goto LABEL_1197;
          }
        }

        HIDWORD(v402) = v185 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice34 = __sb__runningInSpringBoard();
          if (currentDevice34)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen14 _referenceBounds];
          }

          LODWORD(v402) = currentDevice34 ^ 1;
          BSSizeRoundForScale();
          if (v201 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
          {
            v398 = 0;
            v394 = 0;
            v390 = 0;
            v342 = 0;
            v386 = 0;
            v382 = 0;
            v374 = 0;
            v378 = 0;
            v366 = 0;
            v370 = 0;
            v358 = 0;
            v362 = 0;
            v354 = 0;
            v350 = 0;
            v346 = 0;
            v123 = 0;
            v124 = 0;
            MinY = 40.0;
            goto LABEL_1986;
          }
        }

        else
        {
          LODWORD(v402) = 0;
        }

LABEL_1197:
        v186 = __sb__runningInSpringBoard();
        if (v186)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v398) = 0;
            currentDevice34 = 0;
            goto LABEL_1262;
          }
        }

        else
        {
          currentDevice17 = [*(v115 + 1048) currentDevice];
          if ([currentDevice17 userInterfaceIdiom])
          {
            currentDevice34 = 0;
            HIDWORD(v398) = 1;
            goto LABEL_1262;
          }
        }

        HIDWORD(v398) = v186 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v198 = __sb__runningInSpringBoard();
          if (v198)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice18 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice18 _referenceBounds];
          }

          currentDevice34 = v198 ^ 1u;
          BSSizeRoundForScale();
          if (v204 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_1286;
          }
        }

        else
        {
          currentDevice34 = 0;
        }

LABEL_1262:
        if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
        {
          LODWORD(v398) = currentDevice34;
          v394 = 0;
          v390 = 0;
          v342 = 0;
          v386 = 0;
          v382 = 0;
          v374 = 0;
          v378 = 0;
          v366 = 0;
          v370 = 0;
          v358 = 0;
          v362 = 0;
          v354 = 0;
          v350 = 0;
          v346 = 0;
          v123 = 0;
          v124 = 0;
          MinY = 0.0;
          goto LABEL_1986;
        }

LABEL_1286:
        LODWORD(v398) = currentDevice34;
        if (!_SBF_Private_IsD93Like())
        {
LABEL_1290:
          v394 = 0;
          goto LABEL_1373;
        }

        v205 = __sb__runningInSpringBoard();
        if (v205)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_1290;
          }
        }

        else
        {
          currentDevice19 = [*(v115 + 1048) currentDevice];
          if ([currentDevice19 userInterfaceIdiom])
          {
            v394 = 0x100000000;
            goto LABEL_1373;
          }
        }

        HIDWORD(v394) = v205 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v213 = __sb__runningInSpringBoard();
          if (v213)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen18 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen18 _referenceBounds];
          }

          currentDevice34 = v213 ^ 1u;
          BSSizeRoundForScale();
          LODWORD(v394) = currentDevice34;
          if (v223 >= *(MEMORY[0x277D66E30] + 184))
          {
            v390 = 0;
            v342 = 0;
            v386 = 0;
            v382 = 0;
            v374 = 0;
            v378 = 0;
            v366 = 0;
            v370 = 0;
            v358 = 0;
            v362 = 0;
            v354 = 0;
            v350 = 0;
            v346 = 0;
            v123 = 0;
            v124 = 0;
            MinY = 39.0;
            goto LABEL_1986;
          }
        }

        else
        {
          LODWORD(v394) = 0;
        }

LABEL_1373:
        currentDevice34 = __sb__runningInSpringBoard();
        if (currentDevice34)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v390) = 0;
            v342 = 0;
            goto LABEL_1383;
          }
        }

        else
        {
          mainScreen11 = [*(v115 + 1048) currentDevice];
          if ([mainScreen11 userInterfaceIdiom])
          {
            v342 = 0;
            HIDWORD(v390) = 1;
            goto LABEL_1383;
          }
        }

        HIDWORD(v390) = currentDevice34 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice34 = __sb__runningInSpringBoard();
          if (currentDevice34)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice22 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice22 _referenceBounds];
          }

          v342 = currentDevice34 ^ 1;
          BSSizeRoundForScale();
          if (v214 >= *(MEMORY[0x277D66E30] + 184))
          {
            goto LABEL_1387;
          }
        }

        else
        {
          v342 = 0;
        }

LABEL_1383:
        if (_SBF_Private_IsD93Like())
        {
          LODWORD(v390) = 0;
          v386 = 0;
          v382 = 0;
          v374 = 0;
          v378 = 0;
          v366 = 0;
          v370 = 0;
          v358 = 0;
          v362 = 0;
          v354 = 0;
          v350 = 0;
          v346 = 0;
          v123 = 0;
          v124 = 0;
          MinY = 39.0;
          goto LABEL_1986;
        }

LABEL_1387:
        if (!_SBF_Private_IsD63Like())
        {
LABEL_1391:
          LODWORD(v390) = 0;
          HIDWORD(v386) = 0;
          goto LABEL_1521;
        }

        v215 = __sb__runningInSpringBoard();
        if (v215)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_1391;
          }
        }

        else
        {
          currentDevice21 = [*(v115 + 1048) currentDevice];
          if ([currentDevice21 userInterfaceIdiom])
          {
            HIDWORD(v386) = 0;
            LODWORD(v390) = 1;
            goto LABEL_1521;
          }
        }

        LODWORD(v390) = v215 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice34 = __sb__runningInSpringBoard();
          if (currentDevice34)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen20 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen20 _referenceBounds];
          }

          HIDWORD(v386) = currentDevice34 ^ 1;
          BSSizeRoundForScale();
          if (v238 >= *(MEMORY[0x277D66E30] + 104))
          {
            LODWORD(v386) = 0;
            v382 = 0;
            v374 = 0;
            v378 = 0;
            v366 = 0;
            v370 = 0;
            v358 = 0;
            v362 = 0;
            v354 = 0;
            v350 = 0;
            v346 = 0;
            v123 = 0;
            v124 = 0;
            MinY = 39.0;
            goto LABEL_1986;
          }
        }

        else
        {
          HIDWORD(v386) = 0;
        }

LABEL_1521:
        currentDevice34 = __sb__runningInSpringBoard();
        if (currentDevice34)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v386) = 0;
            HIDWORD(v382) = 0;
            goto LABEL_1531;
          }
        }

        else
        {
          mainScreen13 = [*(v115 + 1048) currentDevice];
          if ([mainScreen13 userInterfaceIdiom])
          {
            HIDWORD(v382) = 0;
            LODWORD(v386) = 1;
            goto LABEL_1531;
          }
        }

        LODWORD(v386) = currentDevice34 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice34 = __sb__runningInSpringBoard();
          if (currentDevice34)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice23 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice23 _referenceBounds];
          }

          HIDWORD(v382) = currentDevice34 ^ 1;
          BSSizeRoundForScale();
          if (v229 >= *(MEMORY[0x277D66E30] + 104))
          {
            goto LABEL_1535;
          }
        }

        else
        {
          HIDWORD(v382) = 0;
        }

LABEL_1531:
        if (_SBF_Private_IsD63Like())
        {
          LODWORD(v382) = 0;
          v374 = 0;
          v378 = 0;
          v366 = 0;
          v370 = 0;
          v358 = 0;
          v362 = 0;
          v354 = 0;
          v350 = 0;
          v346 = 0;
          v123 = 0;
          v124 = 0;
          MinY = 39.0;
          goto LABEL_1986;
        }

LABEL_1535:
        mainScreen34 = &off_21EC94000;
        if (!_SBF_Private_IsD23Like())
        {
LABEL_1539:
          LODWORD(v382) = 0;
          HIDWORD(v378) = 0;
          goto LABEL_1647;
        }

        v230 = __sb__runningInSpringBoard();
        if (v230)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_1539;
          }
        }

        else
        {
          mainScreen15 = [*(v115 + 1048) currentDevice];
          if ([mainScreen15 userInterfaceIdiom])
          {
            HIDWORD(v378) = 0;
            LODWORD(v382) = 1;
            goto LABEL_1647;
          }
        }

        LODWORD(v382) = v230 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice34 = __sb__runningInSpringBoard();
          if (currentDevice34)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen22 _referenceBounds];
          }

          HIDWORD(v378) = currentDevice34 ^ 1;
          BSSizeRoundForScale();
          if (v252 >= *(MEMORY[0x277D66E30] + 216))
          {
            LODWORD(v378) = 0;
            v370 = 0;
            v374 = 0;
            v362 = 0;
            v366 = 0;
            v354 = 0;
            v358 = 0;
            v350 = 0;
            v346 = 0;
            v123 = 0;
            v124 = 0;
            MinY = 37.0;
            goto LABEL_1986;
          }
        }

        else
        {
          HIDWORD(v378) = 0;
        }

LABEL_1647:
        currentDevice34 = __sb__runningInSpringBoard();
        if (currentDevice34)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v378) = 0;
            HIDWORD(v374) = 0;
            goto LABEL_1657;
          }
        }

        else
        {
          mainScreen16 = [*(v115 + 1048) currentDevice];
          if ([mainScreen16 userInterfaceIdiom])
          {
            HIDWORD(v374) = 0;
            LODWORD(v378) = 1;
            goto LABEL_1657;
          }
        }

        LODWORD(v378) = currentDevice34 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice34 = __sb__runningInSpringBoard();
          if (currentDevice34)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice25 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice25 _referenceBounds];
          }

          HIDWORD(v374) = currentDevice34 ^ 1;
          BSSizeRoundForScale();
          if (v241 >= *(MEMORY[0x277D66E30] + 216))
          {
            goto LABEL_1661;
          }
        }

        else
        {
          HIDWORD(v374) = 0;
        }

LABEL_1657:
        if (_SBF_Private_IsD23Like())
        {
          LODWORD(v374) = 0;
          v366 = 0;
          v370 = 0;
          v358 = 0;
          v362 = 0;
          v354 = 0;
          v350 = 0;
          v346 = 0;
          v123 = 0;
          v124 = 0;
          MinY = 37.0;
          goto LABEL_1986;
        }

LABEL_1661:
        v242 = __sb__runningInSpringBoard();
        if (v242)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v374) = 0;
            HIDWORD(v370) = 0;
            goto LABEL_1671;
          }
        }

        else
        {
          currentDevice20 = [*(v115 + 1048) currentDevice];
          if ([currentDevice20 userInterfaceIdiom])
          {
            HIDWORD(v370) = 0;
            LODWORD(v374) = 1;
            goto LABEL_1671;
          }
        }

        LODWORD(v374) = v242 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice34 = __sb__runningInSpringBoard();
          if (currentDevice34)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen19 _referenceBounds];
          }

          HIDWORD(v370) = currentDevice34 ^ 1;
          BSSizeRoundForScale();
          if (v251 >= *(MEMORY[0x277D66E30] + 120))
          {
            LODWORD(v370) = 0;
            v362 = 0;
            v366 = 0;
            v354 = 0;
            v358 = 0;
            v350 = 0;
            v346 = 0;
            v123 = 0;
            v124 = 0;
            MinY = 37.0;
            goto LABEL_1986;
          }
        }

        else
        {
          HIDWORD(v370) = 0;
        }

LABEL_1671:
        currentDevice34 = __sb__runningInSpringBoard();
        if (currentDevice34)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v370) = 0;
            HIDWORD(v366) = 0;
            goto LABEL_1693;
          }
        }

        else
        {
          currentDevice24 = [*(v115 + 1048) currentDevice];
          if ([currentDevice24 userInterfaceIdiom])
          {
            HIDWORD(v366) = 0;
            LODWORD(v370) = 1;
            goto LABEL_1693;
          }
        }

        LODWORD(v370) = currentDevice34 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice34 = __sb__runningInSpringBoard();
          if (currentDevice34)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen23 _referenceBounds];
          }

          HIDWORD(v366) = currentDevice34 ^ 1;
          BSSizeRoundForScale();
          if (v253 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_1743;
          }
        }

        else
        {
          HIDWORD(v366) = 0;
        }

LABEL_1693:
        if (_SBF_Private_IsD33OrSimilarDevice())
        {
          LODWORD(v366) = 0;
          v358 = 0;
          v362 = 0;
          v354 = 0;
          v350 = 0;
          v346 = 0;
          v123 = 0;
          v124 = 0;
          MinY = 0.0;
          goto LABEL_1986;
        }

LABEL_1743:
        v254 = __sb__runningInSpringBoard();
        if (v254)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v366) = 0;
            HIDWORD(v362) = 0;
            goto LABEL_1759;
          }
        }

        else
        {
          mainScreen17 = [*(v115 + 1048) currentDevice];
          if ([mainScreen17 userInterfaceIdiom])
          {
            HIDWORD(v362) = 0;
            LODWORD(v366) = 1;
            goto LABEL_1759;
          }
        }

        LODWORD(v366) = v254 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice34 = __sb__runningInSpringBoard();
          if (currentDevice34)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen24 _referenceBounds];
          }

          HIDWORD(v362) = currentDevice34 ^ 1;
          BSSizeRoundForScale();
          if (v259 >= *(MEMORY[0x277D66E30] + 104))
          {
            LODWORD(v362) = 0;
            v354 = 0;
            v358 = 0;
            v350 = 0;
            v346 = 0;
            v123 = 0;
            v124 = 0;
            MinY = 39.0;
            goto LABEL_1986;
          }
        }

        else
        {
          HIDWORD(v362) = 0;
        }

LABEL_1759:
        currentDevice34 = __sb__runningInSpringBoard();
        if (currentDevice34)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v362) = 0;
            HIDWORD(v358) = 0;
            goto LABEL_1780;
          }
        }

        else
        {
          mainScreen21 = [*(v115 + 1048) currentDevice];
          if ([mainScreen21 userInterfaceIdiom])
          {
            HIDWORD(v358) = 0;
            LODWORD(v362) = 1;
            goto LABEL_1780;
          }
        }

        LODWORD(v362) = currentDevice34 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice34 = __sb__runningInSpringBoard();
          if (currentDevice34)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice26 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice26 _referenceBounds];
          }

          HIDWORD(v358) = currentDevice34 ^ 1;
          BSSizeRoundForScale();
          if (v260 >= *(MEMORY[0x277D66E30] + 104))
          {
            goto LABEL_1797;
          }
        }

        else
        {
          HIDWORD(v358) = 0;
        }

LABEL_1780:
        if (_SBF_Private_IsD53())
        {
          LODWORD(v358) = 0;
          v354 = 0;
          v350 = 0;
          v346 = 0;
          v123 = 0;
          v124 = 0;
          MinY = 39.0;
          goto LABEL_1986;
        }

LABEL_1797:
        if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0 || _SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
        {
          LODWORD(v358) = 0;
          v354 = 0;
          v350 = 0;
          v346 = 0;
          v123 = 0;
          v124 = 0;
          MinY = 41.0;
          goto LABEL_1986;
        }

        MinY = 41.0;
        if (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0 || (_SBF_Private_IsD52ZoomedOrSimilarDevice())
        {
          LODWORD(v358) = 0;
          v354 = 0;
          v350 = 0;
          v346 = 0;
          v123 = 0;
          v124 = 0;
          goto LABEL_1986;
        }

        currentDevice34 = __sb__runningInSpringBoard();
        if (currentDevice34)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v358) = 0;
            HIDWORD(v354) = 0;
            goto LABEL_1937;
          }
        }

        else
        {
          currentDevice27 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice27 userInterfaceIdiom])
          {
            HIDWORD(v354) = 0;
            LODWORD(v358) = 1;
            goto LABEL_1937;
          }
        }

        LODWORD(v358) = currentDevice34 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice34 = __sb__runningInSpringBoard();
          if (currentDevice34)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen27 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen27 _referenceBounds];
          }

          HIDWORD(v354) = currentDevice34 ^ 1;
          BSSizeRoundForScale();
          if (v283 >= *(MEMORY[0x277D66E30] + 88))
          {
            LODWORD(v354) = 0;
            v350 = 0;
            v346 = 0;
            v123 = 0;
            v124 = 0;
            MinY = 36.0;
            goto LABEL_1986;
          }
        }

        else
        {
          HIDWORD(v354) = 0;
        }

LABEL_1937:
        v277 = __sb__runningInSpringBoard();
        if (v277)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v354) = 0;
            v350 = 0;
            goto LABEL_1950;
          }
        }

        else
        {
          currentDevice28 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice28 userInterfaceIdiom])
          {
            v350 = 0;
            LODWORD(v354) = 1;
            goto LABEL_1950;
          }
        }

        LODWORD(v354) = v277 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen34 = __sb__runningInSpringBoard();
          if (mainScreen34)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen25 _referenceBounds];
          }

          v350 = mainScreen34 ^ 1;
          BSSizeRoundForScale();
          if (v284 >= *(MEMORY[0x277D66E30] + 72))
          {
            v346 = 0;
            v123 = 0;
            v124 = 0;
            MinY = 0.0;
            goto LABEL_1986;
          }
        }

        else
        {
          v350 = 0;
        }

LABEL_1950:
        mainScreen34 = __sb__runningInSpringBoard();
        if (mainScreen34)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v346 = 0;
            v123 = 0;
LABEL_1963:
            mainScreen33 = __sb__runningInSpringBoard();
            if (mainScreen33)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
LABEL_1966:
                v124 = 0;
                MinY = 0.0;
                goto LABEL_1986;
              }
            }

            else
            {
              currentDevice33 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice33 userInterfaceIdiom])
              {
                MinY = 0.0;
                v124 = 1;
                goto LABEL_1986;
              }
            }

            v124 = mainScreen33 ^ 1;
            v285 = __sb__runningInSpringBoard();
            if (v285)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              mainScreen33 = [MEMORY[0x277D759A0] mainScreen];
              [mainScreen33 _referenceBounds];
            }

            BSSizeRoundForScale();
            MinY = 0.0;
            if (v285 != 1)
            {

              if (v124)
              {
                goto LABEL_1987;
              }

              goto LABEL_651;
            }

LABEL_1986:
            if (v124)
            {
LABEL_1987:

              if (!v123)
              {
LABEL_653:
                if (v346)
                {
                }

                v74 = selfCopy;
                if (v350)
                {
                }

                if (v354)
                {
                }

                if (HIDWORD(v354))
                {
                }

                if (v358)
                {
                }

                if (HIDWORD(v358))
                {
                }

                if (v362)
                {
                }

                if (HIDWORD(v362))
                {
                }

                if (v366)
                {
                }

                if (HIDWORD(v366))
                {
                }

                if (v370)
                {
                }

                if (HIDWORD(v370))
                {
                }

                if (v374)
                {
                }

                if (HIDWORD(v374))
                {
                }

                if (v378)
                {
                }

                if (HIDWORD(v378))
                {
                }

                if (v382)
                {
                }

                if (HIDWORD(v382))
                {
                }

                if (v386)
                {
                }

                if (HIDWORD(v386))
                {
                }

                if (v390)
                {
                }

                if (v342)
                {
                }

                if (HIDWORD(v390))
                {
                }

                if (v394)
                {
                }

                if (HIDWORD(v394))
                {
                }

                if (v398)
                {
                }

                if (HIDWORD(v398))
                {
                }

                if (v402)
                {
                }

                if (HIDWORD(v402))
                {
                }

                if (v406)
                {
                }

                if (HIDWORD(v406))
                {
                }

                if (v410)
                {
                }

                if (HIDWORD(v410))
                {
                }

                if (v414)
                {
                }

                if (HIDWORD(v414))
                {
                }

                if (*v415)
                {
                }

                if (*&v415[4])
                {
                }

                if (*&v415[8])
                {
                }

                if (*&v415[12])
                {
                }

                if (*&v415[16])
                {
                }

                if (*&v415[20])
                {
                }

                if (*&v415[24])
                {
                }

                if (*&v415[28])
                {
                }

                if (*&v415[32])
                {
                }

                if (*&v415[36])
                {
                }

                if (*&v415[40])
                {
                }

                if (*&v415[44])
                {
                }

                if (*&v415[48])
                {
                }

                if (*&v415[52])
                {
                }

                if (*&v415[56])
                {
                }

                if (*&v415[60])
                {
                }

                if (*&v415[64])
                {
                }

                if (v416)
                {
                }

                if (!v417)
                {
                  goto LABEL_761;
                }

                goto LABEL_760;
              }

LABEL_652:

              goto LABEL_653;
            }

LABEL_651:
            if (!v123)
            {
              goto LABEL_653;
            }

            goto LABEL_652;
          }
        }

        else
        {
          currentDevice34 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice34 userInterfaceIdiom])
          {
            v123 = 0;
            v346 = 1;
            goto LABEL_1963;
          }
        }

        v346 = mainScreen34 ^ 1;
        currentDevice33 = __sb__runningInSpringBoard();
        if (currentDevice33)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen34 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen34 _referenceBounds];
        }

        v123 = currentDevice33 ^ 1;
        BSSizeRoundForScale();
        if (v280 >= *(MEMORY[0x277D66E30] + 56))
        {
          goto LABEL_1966;
        }

        goto LABEL_1963;
      }
    }

    memset(v415, 0, 24);
    v414 = 0;
    v410 = 0;
    v406 = 0;
    v402 = 0;
    v398 = 0;
    v394 = 0;
    v390 = 0;
    v342 = 0;
    v386 = 0;
    v382 = 0;
    v374 = 0;
    v378 = 0;
    v366 = 0;
    v370 = 0;
    v358 = 0;
    v362 = 0;
    v354 = 0;
    v350 = 0;
    v346 = 0;
    v123 = 0;
    v124 = 0;
    MinY = 27.0;
    *&v415[24] = currentDevice34 ^ 1;
    goto LABEL_1986;
  }

  mainScreen32 = [(CSTeachableMomentsContainerView *)v74 controlCenterGrabberContainerView];
  [mainScreen32 frame];
  MinY = CGRectGetMinY(v421);
LABEL_760:

LABEL_761:
  [controlCenterGlyphView bounds];
  [controlCenterGlyphView setCenter:{v81, MinY + CGRectGetHeight(v422) * 0.5}];

  if (![(CSTeachableMomentsContainerView *)v74 adjustsControlCenterTutorsVisibilityForAvailableSpace])
  {
    return;
  }

  controlCenterTutorsContainerView2 = [(CSTeachableMomentsContainerView *)v74 controlCenterTutorsContainerView];
  v83 = controlCenterTutorsContainerView2;
  v134 = 1.0;
  if (v419[0])
  {
    v134 = 0.0;
  }

  [controlCenterTutorsContainerView2 setAlpha:v134];
LABEL_765:
}

- (CSTeachableMomentsContainerView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = CSTeachableMomentsContainerView;
  v3 = [(CSTeachableMomentsContainerView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CSTeachableMomentsContainerView *)v3 _addCallToActionLabel];
    [(CSTeachableMomentsContainerView *)v4 _addControlCenterTutors];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__preferredTextSizeChanged_ name:*MEMORY[0x277D76810] object:0];

    v6 = objc_alloc_init(MEMORY[0x277D65FF0]);
    lockScreenDefaults = v4->_lockScreenDefaults;
    v4->_lockScreenDefaults = v6;

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v10 = SBSIsSystemApertureAvailable();
    v4->_adjustsControlCenterTutorsVisibilityForAvailableSpace = v10;
    v4->_usesStatusBarRelativeLayoutForControlCenterTutors = ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1) | v10 & 1;
    v4->_usesStatusBarRelativeLayoutForControlCenterTutorsY = v10;
  }

  return v4;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = CSTeachableMomentsContainerView;
  v5 = [(SBFTouchPassThroughView *)&v8 hitTest:event withEvent:test.x, test.y];
  if ([v5 isDescendantOfView:self->_homeAffordanceView])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)presentationRegions
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [CSRegion regionForCoordinateSpace:self->_homeAffordanceView];
  v5 = [v4 role:1];

  [array addObject:v5];

  return array;
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (([(_UILegibilitySettings *)self->_legibilitySettings sb_isEqualToLegibilitySettings:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    [(CSTeachableMomentsContainerView *)self _updateViewsForLegibilitySettings];
  }
}

- (void)_updateViewsForLegibilitySettings
{
  callToActionLabel = [(CSTeachableMomentsContainerView *)self callToActionLabel];
  [callToActionLabel setLegibilitySettings:self->_legibilitySettings];

  primaryColor = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  controlCenterGrabberView = self->_controlCenterGrabberView;
  v5 = [primaryColor colorWithAlphaComponent:0.5];
  [(UIView *)controlCenterGrabberView setBackgroundColor:v5];

  [(UIImageView *)self->_controlCenterGlyphView setTintColor:primaryColor];
  style = [(_UILegibilitySettings *)self->_legibilitySettings style];
  layer = [(CSPropertyAnimatingTouchPassThroughView *)self->_controlCenterGrabberContainerView layer];
  v8 = MEMORY[0x277CDA5D8];
  if (style == 1)
  {
    v8 = MEMORY[0x277CDA5E8];
  }

  v9 = [MEMORY[0x277CD9EA0] filterWithType:*v8];
  [layer setCompositingFilter:v9];
}

- (void)statusBarManager:(id)manager didUpdateAvoidanceFrameForStatusBar:(id)bar withAnimationSettings:(id)settings
{
  settingsCopy = settings;
  barCopy = bar;
  WeakRetained = objc_loadWeakRetained(&self->_statusBarToFollow);

  if (WeakRetained == barCopy && [(CSTeachableMomentsContainerView *)self usesStatusBarRelativeLayoutForControlCenterTutors])
  {
    v10 = SBLogDashBoard();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21EB05000, v10, OS_LOG_TYPE_DEFAULT, "CSTeachableMomentsContainerView updating for status bar avoidance frame change", buf, 2u);
    }

    initWithDefaultValues = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16[5] = 0;
      *buf = 0;
      v12 = settingsCopy;
      [v12 stiffness];
      [v12 damping];

      convertTensionAndFrictionToDampingRatioAndResponse();
      [initWithDefaultValues setDampingRatio:*buf];
      [initWithDefaultValues setResponse:0.0];
    }

    controlCenterGrabberContainerView = [(CSTeachableMomentsContainerView *)self controlCenterGrabberContainerView];
    [controlCenterGrabberContainerView bounds];
    v14 = CGRectEqualToRect(v18, *MEMORY[0x277CBF3A0]);

    if (v14)
    {
      v15 = 2;
    }

    else
    {
      v15 = 3;
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __110__CSTeachableMomentsContainerView_statusBarManager_didUpdateAvoidanceFrameForStatusBar_withAnimationSettings___block_invoke;
    v16[3] = &unk_27838B770;
    v16[4] = self;
    [MEMORY[0x277D75D18] sb_animateWithSettings:initWithDefaultValues mode:v15 animations:v16 completion:0];
  }
}

uint64_t __110__CSTeachableMomentsContainerView_statusBarManager_didUpdateAvoidanceFrameForStatusBar_withAnimationSettings___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)setStatusBarToFollow:(id)follow
{
  v15 = *MEMORY[0x277D85DE8];
  followCopy = follow;
  WeakRetained = objc_loadWeakRetained(&self->_statusBarToFollow);
  if (WeakRetained != followCopy)
  {
    v6 = SBLogDashBoard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = followCopy;
      _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "CSTeachableMomentsContainerView setting new statusBarToFollow: %@", &v13, 0xCu);
    }

    window = [WeakRetained window];
    windowScene = [window windowScene];
    statusBarManager = [windowScene statusBarManager];
    [statusBarManager sbf_removeObserver:self];

    objc_storeWeak(&self->_statusBarToFollow, followCopy);
    window2 = [followCopy window];
    windowScene2 = [window2 windowScene];
    statusBarManager2 = [windowScene2 statusBarManager];
    [statusBarManager2 sbf_addObserver:self];

    [(CSTeachableMomentsContainerView *)self setNeedsLayout];
  }
}

- (id)createCallToActionLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D67CF8]);
  _callToActionLabelFont = [(CSTeachableMomentsContainerView *)self _callToActionLabelFont];
  [v3 setFont:_callToActionLabelFont];

  [v3 setNumberOfLines:0];
  [v3 setTextAlignment:1];
  [v3 bs_setHitTestingDisabled:1];
  [v3 setStrength:0.3];
  [v3 setAccessibilityIdentifier:@"call-to-action-label"];

  return v3;
}

- (void)setCallToActionLabel:(id)label
{
  v10 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  if (self->_callToActionLabel != labelCopy)
  {
    v6 = SBLogDashBoard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = labelCopy;
      _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "CSTeachableMomentsContainerView setting new callToActionLabel: %@", &v8, 0xCu);
    }

    [(SBUILegibilityLabel *)self->_callToActionLabel removeFromSuperview];
    objc_storeStrong(&self->_callToActionLabel, label);
    [(SBUILegibilityLabel *)self->_callToActionLabel setLegibilitySettings:self->_legibilitySettings];
    callToActionLabelContainerView = [(CSTeachableMomentsContainerView *)self callToActionLabelContainerView];
    [callToActionLabelContainerView addSubview:labelCopy];

    [(CSTeachableMomentsContainerView *)self setNeedsLayout];
  }
}

- (void)_addCallToActionLabel
{
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v4 setAlpha:0.0];
    [(CSTeachableMomentsContainerView *)self addSubview:v4];
    [(CSTeachableMomentsContainerView *)self setCallToActionLabelContainerView:v4];
    v3 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(CSTeachableMomentsContainerView *)self addSubview:v3];
    [(CSTeachableMomentsContainerView *)self setCallToActionLabelPositionPlaceholderView:v3];
  }
}

- (void)_addControlCenterTutors
{
  if (([(SBLockScreenDefaults *)self->_lockScreenDefaults weDontNeedNoEducation]& 1) != 0)
  {
    return;
  }

  v22 = objc_alloc_init(MEMORY[0x277D75D18]);
  layer = [v22 layer];
  [layer setAllowsGroupBlending:0];

  [(CSTeachableMomentsContainerView *)self addSubview:v22];
  [(CSTeachableMomentsContainerView *)self setControlCenterTutorsContainerView:v22];
  v6 = objc_alloc_init(CSPropertyAnimatingTouchPassThroughView);
  [(CSPropertyAnimatingTouchPassThroughView *)v6 setAlpha:0.5];
  [v22 addSubview:v6];
  [(CSTeachableMomentsContainerView *)self setControlCenterGrabberContainerView:v6];
  v7 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(CSPropertyAnimatingTouchPassThroughView *)v6 addSubview:v7];
  [(CSTeachableMomentsContainerView *)self setControlCenterGrabberView:v7];
  v8 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v22 addSubview:v8];
  [(CSTeachableMomentsContainerView *)self setControlCenterGrabberPositionPlaceholderView:v8];
  v9 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v22 addSubview:v9];
  [(CSTeachableMomentsContainerView *)self setControlCenterGlyphContainerView:v9];
  v10 = __sb__runningInSpringBoard();
  v11 = v10;
  if (!v10)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom])
    {
      v12 = @"CC-affordance";
LABEL_18:

      goto LABEL_19;
    }

LABEL_8:
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v13 = __sb__runningInSpringBoard();
      v14 = v13;
      if (v13)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen _referenceBounds];
      }

      BSSizeRoundForScale();
      v15 = @"CC-affordance";
      if (v16 >= *(MEMORY[0x277D66E30] + 120))
      {
        v15 = @"CC-affordance-big-d33-n84";
      }

      v12 = v15;
      if ((v14 & 1) == 0)
      {
      }
    }

    else
    {
      v12 = @"CC-affordance";
    }

    if (v11)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
  {
    goto LABEL_8;
  }

  v12 = @"CC-affordance";
LABEL_19:
  v17 = MEMORY[0x277D755B8];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v17 imageNamed:v12 inBundle:v18];
  v20 = [v19 imageWithRenderingMode:2];

  v21 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v20];
  [v9 addSubview:v21];
  [(CSTeachableMomentsContainerView *)self setControlCenterGlyphView:v21];
}

- (CGPoint)_grabberCenterForContainerBounds:(CGRect)bounds grabberTop:(double)top grabberTopIsRelative:(BOOL)relative grabberSize:(CGSize)size isSpaceConstrained:(BOOL *)constrained
{
  height = size.height;
  width = size.width;
  relativeCopy = relative;
  v18 = bounds.size.height;
  v19 = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  WeakRetained = objc_loadWeakRetained(&self->_statusBarToFollow);
  v23 = WeakRetained;
  if (!WeakRetained || (v514 = x, v515 = height, v513 = width, [WeakRetained frameForPartWithIdentifier:*MEMORY[0x277D775C8]], v24 = v517.origin.x, v25 = v517.origin.y, v26 = v517.size.width, v27 = v517.size.height, CGRectEqualToRect(v517, *MEMORY[0x277CBF3A0])) || (v518.origin.x = v24, v518.origin.y = v25, v518.size.width = v26, v518.size.height = v27, CGRectEqualToRect(v518, *MEMORY[0x277CBF398])))
  {
    v29 = *MEMORY[0x277CBF348];
    v28 = *(MEMORY[0x277CBF348] + 8);
    goto LABEL_5;
  }

  v511 = v27;
  v512 = v25;
  v507 = relativeCopy;
  constrainedCopy = constrained;
  v510 = v26;
  if (v26 != v19)
  {
    [v23 frame];
    v24 = v19 - (v32 - v24);
  }

  rect = v24;
  v519.origin.x = v24;
  v33 = v27;
  v519.origin.y = v512;
  v34 = v26;
  v519.size.width = v26;
  v519.size.height = v27;
  MidX = CGRectGetMidX(v519);
  userInterfaceLayoutDirection = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
  v37 = __sb__runningInSpringBoard();
  v38 = v37;
  topCopy = top;
  v505 = v19;
  v506 = v18;
  if (userInterfaceLayoutDirection == 1)
  {
    if (v37)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        LODWORD(mainScreen54) = 0;
        LODWORD(mainScreen49) = 0;
        goto LABEL_25;
      }
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice userInterfaceIdiom] != 1)
      {
        LODWORD(mainScreen49) = 0;
        LODWORD(mainScreen54) = 1;
        goto LABEL_25;
      }
    }

    LODWORD(mainScreen54) = v38 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v39 = __sb__runningInSpringBoard();
      if (v39)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen _referenceBounds];
      }

      LODWORD(mainScreen49) = v39 ^ 1;
      BSSizeRoundForScale();
      if (v76 == *(MEMORY[0x277D66E30] + 288) && v75 == *(MEMORY[0x277D66E30] + 296))
      {
        LODWORD(mainScreen50) = 0;
        LODWORD(mainScreen53) = 0;
        LODWORD(currentDevice57) = 0;
        LODWORD(currentDevice56) = 0;
        LODWORD(currentDevice59) = 0;
        LODWORD(currentDevice60) = 0;
        LODWORD(currentDevice58) = 0;
        LODWORD(mainScreen55) = 0;
        LODWORD(currentDevice61) = 0;
        LODWORD(currentDevice62) = 0;
        LODWORD(mainScreen66) = 0;
        LODWORD(mainScreen57) = 0;
        LODWORD(currentDevice63) = 0;
        LODWORD(currentDevice65) = 0;
        LODWORD(mainScreen58) = 0;
        LODWORD(mainScreen56) = 0;
        LODWORD(currentDevice74) = 0;
        LODWORD(mainScreen59) = 0;
        LODWORD(currentDevice64) = 0;
        LODWORD(currentDevice67) = 0;
        LODWORD(mainScreen60) = 0;
        LODWORD(mainScreen61) = 0;
        LODWORD(currentDevice66) = 0;
        LODWORD(currentDevice69) = 0;
        LODWORD(mainScreen63) = 0;
        LODWORD(currentDevice75) = 0;
        LODWORD(rect_24) = 0;
        LODWORD(currentDevice70) = 0;
        v504 = 0;
        LODWORD(currentDevice68) = 0;
        LODWORD(mainScreen62) = 0;
        v501 = 0;
        LODWORD(mainScreen65) = 0;
        v495 = 0;
        LODWORD(rect_16) = 0;
        rect_12 = 0;
        HIDWORD(v489) = 0;
        LODWORD(currentDevice71) = 0;
        HIDWORD(v485) = 0;
        LODWORD(currentDevice72) = 0;
        LODWORD(mainScreen64) = 0;
        LODWORD(mainScreen67) = 0;
        LODWORD(v481) = 0;
        LODWORD(currentDevice73) = 0;
        LODWORD(mainScreen68) = 0;
        HIDWORD(v475) = 0;
        LODWORD(v473) = 0;
        LODWORD(v471) = 0;
        LODWORD(v469) = 0;
        HIDWORD(v465) = 0;
        HIDWORD(v463) = 0;
        HIDWORD(v461) = 0;
        v59 = 0;
        v60 = 0;
        v61 = 0.0;
        goto LABEL_132;
      }
    }

    else
    {
      LODWORD(mainScreen49) = 0;
    }

LABEL_25:
    v41 = __sb__runningInSpringBoard();
    if (v41)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        LODWORD(mainScreen50) = 0;
        LODWORD(mainScreen53) = 0;
        goto LABEL_43;
      }
    }

    else
    {
      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice2 userInterfaceIdiom] != 1)
      {
        LODWORD(mainScreen53) = 0;
        LODWORD(mainScreen50) = 1;
        goto LABEL_43;
      }
    }

    LODWORD(mainScreen50) = v41 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v42 = __sb__runningInSpringBoard();
      if (v42)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen2 _referenceBounds];
      }

      LODWORD(mainScreen53) = v42 ^ 1;
      BSSizeRoundForScale();
      if (v79 >= *(MEMORY[0x277D66E30] + 440))
      {
        LODWORD(currentDevice57) = 0;
        LODWORD(currentDevice56) = 0;
        LODWORD(currentDevice59) = 0;
        LODWORD(currentDevice60) = 0;
        LODWORD(currentDevice58) = 0;
        LODWORD(mainScreen55) = 0;
        LODWORD(currentDevice61) = 0;
        LODWORD(currentDevice62) = 0;
        LODWORD(mainScreen66) = 0;
        LODWORD(mainScreen57) = 0;
        LODWORD(currentDevice63) = 0;
        LODWORD(currentDevice65) = 0;
        LODWORD(mainScreen58) = 0;
        LODWORD(mainScreen56) = 0;
        LODWORD(currentDevice74) = 0;
        LODWORD(mainScreen59) = 0;
        LODWORD(currentDevice64) = 0;
        LODWORD(currentDevice67) = 0;
        LODWORD(mainScreen60) = 0;
        LODWORD(mainScreen61) = 0;
        LODWORD(currentDevice66) = 0;
        LODWORD(currentDevice69) = 0;
        LODWORD(mainScreen63) = 0;
        LODWORD(currentDevice75) = 0;
        LODWORD(rect_24) = 0;
        LODWORD(currentDevice70) = 0;
        v504 = 0;
        LODWORD(currentDevice68) = 0;
        LODWORD(mainScreen62) = 0;
        v501 = 0;
        LODWORD(mainScreen65) = 0;
        v495 = 0;
        LODWORD(rect_16) = 0;
        rect_12 = 0;
        HIDWORD(v489) = 0;
        LODWORD(currentDevice71) = 0;
        HIDWORD(v485) = 0;
        LODWORD(currentDevice72) = 0;
        LODWORD(mainScreen64) = 0;
        LODWORD(mainScreen67) = 0;
        LODWORD(v481) = 0;
        LODWORD(currentDevice73) = 0;
        LODWORD(mainScreen68) = 0;
        HIDWORD(v475) = 0;
        LODWORD(v473) = 0;
        LODWORD(v471) = 0;
        LODWORD(v469) = 0;
        HIDWORD(v465) = 0;
        HIDWORD(v463) = 0;
        HIDWORD(v461) = 0;
        v59 = 0;
        v60 = 0;
        v61 = 0.0;
        goto LABEL_132;
      }
    }

    else
    {
      LODWORD(mainScreen53) = 0;
    }

LABEL_43:
    v45 = __sb__runningInSpringBoard();
    if (v45)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        LODWORD(currentDevice57) = 0;
        LODWORD(currentDevice56) = 0;
        goto LABEL_61;
      }
    }

    else
    {
      currentDevice3 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice3 userInterfaceIdiom] != 1)
      {
        LODWORD(currentDevice56) = 0;
        LODWORD(currentDevice57) = 1;
        goto LABEL_61;
      }
    }

    LODWORD(currentDevice57) = v45 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v46 = __sb__runningInSpringBoard();
      if (v46)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen3 _referenceBounds];
      }

      LODWORD(currentDevice56) = v46 ^ 1;
      BSSizeRoundForScale();
      if (v81 >= *(MEMORY[0x277D66E30] + 376))
      {
        LODWORD(currentDevice59) = 0;
        LODWORD(currentDevice60) = 0;
        LODWORD(currentDevice58) = 0;
        LODWORD(mainScreen55) = 0;
        LODWORD(currentDevice61) = 0;
        LODWORD(currentDevice62) = 0;
        LODWORD(mainScreen66) = 0;
        LODWORD(mainScreen57) = 0;
        LODWORD(currentDevice63) = 0;
        LODWORD(currentDevice65) = 0;
        LODWORD(mainScreen58) = 0;
        LODWORD(mainScreen56) = 0;
        LODWORD(currentDevice74) = 0;
        LODWORD(mainScreen59) = 0;
        LODWORD(currentDevice64) = 0;
        LODWORD(currentDevice67) = 0;
        LODWORD(mainScreen60) = 0;
        LODWORD(mainScreen61) = 0;
        LODWORD(currentDevice66) = 0;
        LODWORD(currentDevice69) = 0;
        LODWORD(mainScreen63) = 0;
        LODWORD(currentDevice75) = 0;
        LODWORD(rect_24) = 0;
        LODWORD(currentDevice70) = 0;
        v504 = 0;
        LODWORD(currentDevice68) = 0;
        LODWORD(mainScreen62) = 0;
        v501 = 0;
        LODWORD(mainScreen65) = 0;
        v495 = 0;
        LODWORD(rect_16) = 0;
        rect_12 = 0;
        HIDWORD(v489) = 0;
        LODWORD(currentDevice71) = 0;
        HIDWORD(v485) = 0;
        LODWORD(currentDevice72) = 0;
        LODWORD(mainScreen64) = 0;
        LODWORD(mainScreen67) = 0;
        LODWORD(v481) = 0;
        LODWORD(currentDevice73) = 0;
        LODWORD(mainScreen68) = 0;
        HIDWORD(v475) = 0;
        LODWORD(v473) = 0;
        LODWORD(v471) = 0;
        LODWORD(v469) = 0;
        HIDWORD(v465) = 0;
        HIDWORD(v463) = 0;
        HIDWORD(v461) = 0;
        v59 = 0;
        v60 = 0;
        v61 = 0.0;
        goto LABEL_132;
      }
    }

    else
    {
      LODWORD(currentDevice56) = 0;
    }

LABEL_61:
    v49 = __sb__runningInSpringBoard();
    if (v49)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        LODWORD(currentDevice59) = 0;
        LODWORD(currentDevice60) = 0;
        goto LABEL_78;
      }
    }

    else
    {
      currentDevice4 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice4 userInterfaceIdiom] != 1)
      {
        LODWORD(currentDevice60) = 0;
        LODWORD(currentDevice59) = 1;
        goto LABEL_78;
      }
    }

    LODWORD(currentDevice59) = v49 ^ 1;
    v50 = __sb__runningInSpringBoard();
    if (v50)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen4 _referenceBounds];
    }

    LODWORD(currentDevice60) = v50 ^ 1;
    BSSizeRoundForScale();
    if (v53 >= *(MEMORY[0x277D66E30] + 280))
    {
      LODWORD(currentDevice58) = 0;
      LODWORD(mainScreen55) = 0;
      LODWORD(currentDevice61) = 0;
      LODWORD(currentDevice62) = 0;
      LODWORD(mainScreen66) = 0;
      LODWORD(mainScreen57) = 0;
      LODWORD(currentDevice63) = 0;
      LODWORD(currentDevice65) = 0;
      LODWORD(mainScreen58) = 0;
      LODWORD(mainScreen56) = 0;
      LODWORD(currentDevice74) = 0;
      LODWORD(mainScreen59) = 0;
      LODWORD(currentDevice64) = 0;
      LODWORD(currentDevice67) = 0;
      LODWORD(mainScreen60) = 0;
      LODWORD(mainScreen61) = 0;
      LODWORD(currentDevice66) = 0;
      LODWORD(currentDevice69) = 0;
      LODWORD(mainScreen63) = 0;
      LODWORD(currentDevice75) = 0;
      LODWORD(rect_24) = 0;
      LODWORD(currentDevice70) = 0;
      v504 = 0;
      LODWORD(currentDevice68) = 0;
      LODWORD(mainScreen62) = 0;
      v501 = 0;
      LODWORD(mainScreen65) = 0;
      v495 = 0;
      LODWORD(rect_16) = 0;
      rect_12 = 0;
      HIDWORD(v489) = 0;
      LODWORD(currentDevice71) = 0;
      HIDWORD(v485) = 0;
      LODWORD(currentDevice72) = 0;
      LODWORD(mainScreen64) = 0;
      LODWORD(mainScreen67) = 0;
      LODWORD(v481) = 0;
      LODWORD(currentDevice73) = 0;
      LODWORD(mainScreen68) = 0;
      HIDWORD(v475) = 0;
      LODWORD(v473) = 0;
      LODWORD(v471) = 0;
      LODWORD(v469) = 0;
      HIDWORD(v465) = 0;
      HIDWORD(v463) = 0;
      HIDWORD(v461) = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0.0;
      goto LABEL_132;
    }

LABEL_78:
    v54 = __sb__runningInSpringBoard();
    if (v54)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        LODWORD(currentDevice58) = 0;
        LODWORD(mainScreen55) = 0;
        goto LABEL_98;
      }
    }

    else
    {
      constrained = [MEMORY[0x277D75418] currentDevice];
      if ([constrained userInterfaceIdiom] != 1)
      {
        LODWORD(mainScreen55) = 0;
        LODWORD(currentDevice58) = 1;
        goto LABEL_98;
      }
    }

    LODWORD(currentDevice58) = v54 ^ 1;
    v55 = __sb__runningInSpringBoard();
    if (v55)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      userInterfaceLayoutDirection = [MEMORY[0x277D759A0] mainScreen];
      [userInterfaceLayoutDirection _referenceBounds];
    }

    LODWORD(mainScreen55) = v55 ^ 1;
    BSSizeRoundForScale();
    if (v69 >= *(MEMORY[0x277D66E30] + 264))
    {
      v394 = userInterfaceLayoutDirection;
      constrainedCopy3 = constrained;
      LODWORD(currentDevice61) = 0;
      LODWORD(currentDevice62) = 0;
      LODWORD(mainScreen66) = 0;
      LODWORD(mainScreen57) = 0;
      LODWORD(currentDevice63) = 0;
      LODWORD(currentDevice65) = 0;
      LODWORD(mainScreen58) = 0;
      LODWORD(mainScreen56) = 0;
      LODWORD(currentDevice74) = 0;
      LODWORD(mainScreen59) = 0;
      LODWORD(currentDevice64) = 0;
      LODWORD(currentDevice67) = 0;
      LODWORD(mainScreen60) = 0;
      LODWORD(mainScreen61) = 0;
      LODWORD(currentDevice66) = 0;
      LODWORD(currentDevice69) = 0;
      LODWORD(mainScreen63) = 0;
      LODWORD(currentDevice75) = 0;
      LODWORD(rect_24) = 0;
      LODWORD(currentDevice70) = 0;
      v504 = 0;
      LODWORD(currentDevice68) = 0;
      LODWORD(mainScreen62) = 0;
      v501 = 0;
      LODWORD(mainScreen65) = 0;
      v495 = 0;
      LODWORD(rect_16) = 0;
      rect_12 = 0;
      HIDWORD(v489) = 0;
      LODWORD(currentDevice71) = 0;
      HIDWORD(v485) = 0;
      LODWORD(currentDevice72) = 0;
      LODWORD(mainScreen64) = 0;
      LODWORD(mainScreen67) = 0;
      LODWORD(v481) = 0;
      LODWORD(currentDevice73) = 0;
      LODWORD(mainScreen68) = 0;
      HIDWORD(v475) = 0;
      LODWORD(v473) = 0;
      LODWORD(v471) = 0;
      LODWORD(v469) = 0;
      HIDWORD(v465) = 0;
      HIDWORD(v463) = 0;
      HIDWORD(v461) = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0.0;
      goto LABEL_132;
    }

LABEL_98:
    v70 = __sb__runningInSpringBoard();
    constrainedCopy3 = constrained;
    v394 = userInterfaceLayoutDirection;
    if (v70)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        LODWORD(currentDevice61) = 0;
        LODWORD(currentDevice62) = 0;
LABEL_572:
        v110 = __sb__runningInSpringBoard();
        v387 = currentDevice7;
        v386 = mainScreen6;
        if (v110)
        {
          if (SBFEffectiveDeviceClass() != 2)
          {
            goto LABEL_574;
          }
        }

        else
        {
          userInterfaceLayoutDirection = [MEMORY[0x277D75418] currentDevice];
          if ([userInterfaceLayoutDirection userInterfaceIdiom] != 1)
          {
LABEL_574:
            constrained = (v110 ^ 1u);
            v383 = userInterfaceLayoutDirection;
            LODWORD(mainScreen66) = v110 ^ 1;
            if (!_SBF_Private_IsD94Like())
            {
LABEL_578:
              LODWORD(mainScreen57) = 0;
              LODWORD(currentDevice63) = 0;
              goto LABEL_667;
            }

            v111 = __sb__runningInSpringBoard();
            if (v111)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                goto LABEL_578;
              }
            }

            else
            {
              currentDevice5 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice5 userInterfaceIdiom])
              {
                LODWORD(currentDevice63) = 0;
                LODWORD(mainScreen57) = 1;
                goto LABEL_667;
              }
            }

            LODWORD(mainScreen57) = v111 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v120 = __sb__runningInSpringBoard();
              if (v120)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen5 _referenceBounds];
              }

              LODWORD(currentDevice63) = v120 ^ 1;
              BSSizeRoundForScale();
              if (v132 >= *(MEMORY[0x277D66E30] + 200))
              {
                v377 = mainScreen5;
                v378 = currentDevice5;
                LODWORD(currentDevice65) = 0;
                LODWORD(mainScreen58) = 0;
                LODWORD(mainScreen56) = 0;
                LODWORD(currentDevice74) = 0;
                LODWORD(mainScreen59) = 0;
                LODWORD(currentDevice64) = 0;
                LODWORD(currentDevice67) = 0;
                LODWORD(mainScreen60) = 0;
                LODWORD(mainScreen61) = 0;
                LODWORD(currentDevice66) = 0;
                LODWORD(currentDevice69) = 0;
                LODWORD(mainScreen63) = 0;
                LODWORD(currentDevice75) = 0;
                LODWORD(rect_24) = 0;
                LODWORD(currentDevice70) = 0;
                v504 = 0;
                LODWORD(currentDevice68) = 0;
                LODWORD(mainScreen62) = 0;
                v501 = 0;
                LODWORD(mainScreen65) = 0;
                v495 = 0;
                LODWORD(rect_16) = 0;
                rect_12 = 0;
                HIDWORD(v489) = 0;
                LODWORD(currentDevice71) = 0;
                HIDWORD(v485) = 0;
                LODWORD(currentDevice72) = 0;
                LODWORD(mainScreen64) = 0;
                LODWORD(mainScreen67) = 0;
                LODWORD(v481) = 0;
                LODWORD(currentDevice73) = 0;
                LODWORD(mainScreen68) = 0;
                HIDWORD(v475) = 0;
                LODWORD(v473) = 0;
                LODWORD(v471) = 0;
                LODWORD(v469) = 0;
                HIDWORD(v465) = 0;
                HIDWORD(v463) = 0;
                HIDWORD(v461) = 0;
                v59 = 0;
                v60 = 0;
                v61 = 0.0;
                goto LABEL_132;
              }
            }

            else
            {
              LODWORD(currentDevice63) = 0;
            }

LABEL_667:
            v121 = __sb__runningInSpringBoard();
            v378 = currentDevice5;
            v377 = mainScreen5;
            if (v121)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                LODWORD(currentDevice65) = 0;
                LODWORD(mainScreen58) = 0;
                goto LABEL_677;
              }
            }

            else
            {
              currentDevice6 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice6 userInterfaceIdiom])
              {
                LODWORD(mainScreen58) = 0;
                LODWORD(currentDevice65) = 1;
                goto LABEL_677;
              }
            }

            LODWORD(currentDevice65) = v121 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v122 = __sb__runningInSpringBoard();
              if (v122)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                userInterfaceLayoutDirection = [MEMORY[0x277D759A0] mainScreen];
                [userInterfaceLayoutDirection _referenceBounds];
              }

              LODWORD(mainScreen58) = v122 ^ 1;
              BSSizeRoundForScale();
              if (v123 >= *(MEMORY[0x277D66E30] + 200))
              {
                goto LABEL_681;
              }
            }

            else
            {
              LODWORD(mainScreen58) = 0;
            }

LABEL_677:
            if (_SBF_Private_IsD94Like())
            {
              v374 = userInterfaceLayoutDirection;
              v375 = currentDevice6;
              LODWORD(mainScreen56) = 0;
              LODWORD(currentDevice74) = 0;
              LODWORD(mainScreen59) = 0;
              LODWORD(currentDevice64) = 0;
              LODWORD(currentDevice67) = 0;
              LODWORD(mainScreen60) = 0;
              LODWORD(mainScreen61) = 0;
              LODWORD(currentDevice66) = 0;
              LODWORD(currentDevice69) = 0;
              LODWORD(mainScreen63) = 0;
              LODWORD(currentDevice75) = 0;
              LODWORD(rect_24) = 0;
              LODWORD(currentDevice70) = 0;
              v504 = 0;
              LODWORD(currentDevice68) = 0;
              LODWORD(mainScreen62) = 0;
              v501 = 0;
              LODWORD(mainScreen65) = 0;
              v495 = 0;
              LODWORD(rect_16) = 0;
              rect_12 = 0;
              HIDWORD(v489) = 0;
              LODWORD(currentDevice71) = 0;
              HIDWORD(v485) = 0;
              LODWORD(currentDevice72) = 0;
              LODWORD(mainScreen64) = 0;
              LODWORD(mainScreen67) = 0;
              LODWORD(v481) = 0;
              LODWORD(currentDevice73) = 0;
              LODWORD(mainScreen68) = 0;
              HIDWORD(v475) = 0;
              LODWORD(v473) = 0;
              LODWORD(v471) = 0;
              LODWORD(v469) = 0;
              HIDWORD(v465) = 0;
              HIDWORD(v463) = 0;
              HIDWORD(v461) = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0.0;
              goto LABEL_132;
            }

LABEL_681:
            v375 = currentDevice6;
            v374 = userInterfaceLayoutDirection;
            if (!_SBF_Private_IsD64Like())
            {
LABEL_685:
              LODWORD(mainScreen56) = 0;
              LODWORD(currentDevice74) = 0;
              goto LABEL_753;
            }

            v124 = __sb__runningInSpringBoard();
            if (v124)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                goto LABEL_685;
              }
            }

            else
            {
              currentDevice7 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice7 userInterfaceIdiom])
              {
                LODWORD(currentDevice74) = 0;
                LODWORD(mainScreen56) = 1;
                goto LABEL_753;
              }
            }

            LODWORD(mainScreen56) = v124 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v136 = __sb__runningInSpringBoard();
              if (v136)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen6 _referenceBounds];
              }

              v348 = mainScreen6;
              LODWORD(currentDevice74) = v136 ^ 1;
              BSSizeRoundForScale();
              if (v158 >= *(MEMORY[0x277D66E30] + 136))
              {
                v365 = currentDevice7;
                LODWORD(mainScreen59) = 0;
                LODWORD(currentDevice64) = 0;
                LODWORD(currentDevice67) = 0;
                LODWORD(mainScreen60) = 0;
                LODWORD(mainScreen61) = 0;
                LODWORD(currentDevice66) = 0;
                LODWORD(currentDevice69) = 0;
                LODWORD(mainScreen63) = 0;
                LODWORD(currentDevice75) = 0;
                LODWORD(rect_24) = 0;
                LODWORD(currentDevice70) = 0;
                v504 = 0;
                LODWORD(currentDevice68) = 0;
                LODWORD(mainScreen62) = 0;
                v501 = 0;
                LODWORD(mainScreen65) = 0;
                v495 = 0;
                LODWORD(rect_16) = 0;
                rect_12 = 0;
                HIDWORD(v489) = 0;
                LODWORD(currentDevice71) = 0;
                HIDWORD(v485) = 0;
                LODWORD(currentDevice72) = 0;
                LODWORD(mainScreen64) = 0;
                LODWORD(mainScreen67) = 0;
                LODWORD(v481) = 0;
                LODWORD(currentDevice73) = 0;
                LODWORD(mainScreen68) = 0;
                HIDWORD(v475) = 0;
                LODWORD(v473) = 0;
                LODWORD(v471) = 0;
                LODWORD(v469) = 0;
                HIDWORD(v465) = 0;
                HIDWORD(v463) = 0;
                HIDWORD(v461) = 0;
                v59 = 0;
                v60 = 0;
                v61 = -1.0;
                goto LABEL_132;
              }
            }

            else
            {
              LODWORD(currentDevice74) = 0;
            }

LABEL_753:
            v137 = __sb__runningInSpringBoard();
            v365 = currentDevice7;
            if (v137)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                LODWORD(mainScreen59) = 0;
                LODWORD(currentDevice64) = 0;
                goto LABEL_763;
              }
            }

            else
            {
              currentDevice8 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice8 userInterfaceIdiom])
              {
                LODWORD(currentDevice64) = 0;
                LODWORD(mainScreen59) = 1;
                goto LABEL_763;
              }
            }

            LODWORD(mainScreen59) = v137 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v138 = __sb__runningInSpringBoard();
              if (v138)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                currentDevice5 = [MEMORY[0x277D759A0] mainScreen];
                [currentDevice5 _referenceBounds];
              }

              LODWORD(currentDevice64) = v138 ^ 1;
              BSSizeRoundForScale();
              if (v139 >= *(MEMORY[0x277D66E30] + 136))
              {
                goto LABEL_767;
              }
            }

            else
            {
              LODWORD(currentDevice64) = 0;
            }

LABEL_763:
            if (_SBF_Private_IsD64Like())
            {
              v363 = currentDevice5;
              v364 = currentDevice8;
              LODWORD(currentDevice67) = 0;
              LODWORD(mainScreen60) = 0;
              LODWORD(mainScreen61) = 0;
              LODWORD(currentDevice66) = 0;
              LODWORD(currentDevice69) = 0;
              LODWORD(mainScreen63) = 0;
              LODWORD(currentDevice75) = 0;
              LODWORD(rect_24) = 0;
              LODWORD(currentDevice70) = 0;
              v504 = 0;
              LODWORD(currentDevice68) = 0;
              LODWORD(mainScreen62) = 0;
              v501 = 0;
              LODWORD(mainScreen65) = 0;
              v495 = 0;
              LODWORD(rect_16) = 0;
              rect_12 = 0;
              HIDWORD(v489) = 0;
              LODWORD(currentDevice71) = 0;
              HIDWORD(v485) = 0;
              LODWORD(currentDevice72) = 0;
              LODWORD(mainScreen64) = 0;
              LODWORD(mainScreen67) = 0;
              LODWORD(v481) = 0;
              LODWORD(currentDevice73) = 0;
              LODWORD(mainScreen68) = 0;
              HIDWORD(v475) = 0;
              LODWORD(v473) = 0;
              LODWORD(v471) = 0;
              LODWORD(v469) = 0;
              HIDWORD(v465) = 0;
              HIDWORD(v463) = 0;
              HIDWORD(v461) = 0;
              v59 = 0;
              v60 = 0;
              v61 = -1.0;
              goto LABEL_132;
            }

LABEL_767:
            v140 = __sb__runningInSpringBoard();
            v364 = currentDevice8;
            v363 = currentDevice5;
            if (v140)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v141 = 0;
                v142 = 0;
                goto LABEL_777;
              }
            }

            else
            {
              mainScreen5 = [MEMORY[0x277D75418] currentDevice];
              if ([mainScreen5 userInterfaceIdiom])
              {
                v142 = 0;
                v141 = 1;
                goto LABEL_777;
              }
            }

            v141 = v140 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v143 = __sb__runningInSpringBoard();
              if (v143)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                currentDevice6 = [MEMORY[0x277D759A0] mainScreen];
                [currentDevice6 _referenceBounds];
              }

              v142 = v143 ^ 1;
              BSSizeRoundForScale();
              if (v155 >= *(MEMORY[0x277D66E30] + 136))
              {
                v360 = currentDevice6;
                v361 = mainScreen5;
                LODWORD(mainScreen60) = v143 ^ 1;
                LODWORD(currentDevice67) = v141;
                LODWORD(mainScreen61) = 0;
                LODWORD(currentDevice66) = 0;
                LODWORD(currentDevice69) = 0;
                LODWORD(mainScreen63) = 0;
                LODWORD(currentDevice75) = 0;
                LODWORD(rect_24) = 0;
                LODWORD(currentDevice70) = 0;
                v504 = 0;
                LODWORD(currentDevice68) = 0;
                LODWORD(mainScreen62) = 0;
                v501 = 0;
                LODWORD(mainScreen65) = 0;
                v495 = 0;
                LODWORD(rect_16) = 0;
                rect_12 = 0;
                HIDWORD(v489) = 0;
                LODWORD(currentDevice71) = 0;
                HIDWORD(v485) = 0;
                LODWORD(currentDevice72) = 0;
                LODWORD(mainScreen64) = 0;
                LODWORD(mainScreen67) = 0;
                LODWORD(v481) = 0;
                LODWORD(currentDevice73) = 0;
                LODWORD(mainScreen68) = 0;
                HIDWORD(v475) = 0;
                LODWORD(v473) = 0;
                LODWORD(v471) = 0;
                LODWORD(v469) = 0;
                HIDWORD(v465) = 0;
                HIDWORD(v463) = 0;
                HIDWORD(v461) = 0;
                v59 = 0;
                v60 = 0;
                v61 = 0.0;
                goto LABEL_132;
              }
            }

            else
            {
              v142 = 0;
            }

LABEL_777:
            v144 = __sb__runningInSpringBoard();
            LODWORD(currentDevice67) = v141;
            LODWORD(mainScreen60) = v142;
            v361 = mainScreen5;
            v360 = currentDevice6;
            if (v144)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                mainScreen6 = 0;
                currentDevice13 = 0;
                goto LABEL_828;
              }
            }

            else
            {
              currentDevice9 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice9 userInterfaceIdiom])
              {
                currentDevice13 = 0;
                mainScreen6 = 1;
                goto LABEL_828;
              }
            }

            mainScreen6 = v144 ^ 1u;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v153 = __sb__runningInSpringBoard();
              if (v153)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                constrained = [MEMORY[0x277D759A0] mainScreen];
                [constrained _referenceBounds];
              }

              currentDevice13 = v153 ^ 1u;
              BSSizeRoundForScale();
              if (v162 >= *(MEMORY[0x277D66E30] + 136))
              {
                goto LABEL_863;
              }
            }

            else
            {
              currentDevice13 = 0;
            }

LABEL_828:
            if (_SBF_Private_IsD54())
            {
              constrainedCopy5 = constrained;
              LODWORD(currentDevice66) = currentDevice13;
              LODWORD(mainScreen61) = mainScreen6;
              LODWORD(currentDevice69) = 0;
              LODWORD(mainScreen63) = 0;
              LODWORD(currentDevice75) = 0;
              LODWORD(rect_24) = 0;
              LODWORD(currentDevice70) = 0;
              v504 = 0;
              LODWORD(currentDevice68) = 0;
              LODWORD(mainScreen62) = 0;
              v501 = 0;
              LODWORD(mainScreen65) = 0;
              v495 = 0;
              LODWORD(rect_16) = 0;
              rect_12 = 0;
              HIDWORD(v489) = 0;
              LODWORD(currentDevice71) = 0;
              HIDWORD(v485) = 0;
              LODWORD(currentDevice72) = 0;
              LODWORD(mainScreen64) = 0;
              LODWORD(mainScreen67) = 0;
              LODWORD(v481) = 0;
              LODWORD(currentDevice73) = 0;
              LODWORD(mainScreen68) = 0;
              HIDWORD(v475) = 0;
              LODWORD(v473) = 0;
              LODWORD(v471) = 0;
              LODWORD(v469) = 0;
              HIDWORD(v465) = 0;
              HIDWORD(v463) = 0;
              HIDWORD(v461) = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0.0;
              goto LABEL_132;
            }

LABEL_863:
            v163 = __sb__runningInSpringBoard();
            LODWORD(mainScreen61) = mainScreen6;
            LODWORD(currentDevice66) = currentDevice13;
            constrainedCopy5 = constrained;
            if (v163)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v164 = 0;
                v165 = 0;
                goto LABEL_881;
              }
            }

            else
            {
              currentDevice5 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice5 userInterfaceIdiom])
              {
                v350 = currentDevice5;
                v165 = 0;
                v164 = 1;
                goto LABEL_881;
              }
            }

            v164 = v163 ^ 1;
            v350 = currentDevice5;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v168 = __sb__runningInSpringBoard();
              if (v168)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                currentDevice8 = [MEMORY[0x277D759A0] mainScreen];
                [currentDevice8 _referenceBounds];
              }

              v165 = v168 ^ 1;
              BSSizeRoundForScale();
              if (v178 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
              {
                v355 = currentDevice8;
                LODWORD(mainScreen63) = v168 ^ 1;
                LODWORD(currentDevice69) = v164;
                LODWORD(currentDevice75) = 0;
                LODWORD(rect_24) = 0;
                LODWORD(currentDevice70) = 0;
                v504 = 0;
                LODWORD(currentDevice68) = 0;
                LODWORD(mainScreen62) = 0;
                v501 = 0;
                LODWORD(mainScreen65) = 0;
                v495 = 0;
                LODWORD(rect_16) = 0;
                rect_12 = 0;
                HIDWORD(v489) = 0;
                LODWORD(currentDevice71) = 0;
                HIDWORD(v485) = 0;
                LODWORD(currentDevice72) = 0;
                LODWORD(mainScreen64) = 0;
                LODWORD(mainScreen67) = 0;
                LODWORD(v481) = 0;
                LODWORD(currentDevice73) = 0;
                LODWORD(mainScreen68) = 0;
                HIDWORD(v475) = 0;
                LODWORD(v473) = 0;
                LODWORD(v471) = 0;
                LODWORD(v469) = 0;
                HIDWORD(v465) = 0;
                HIDWORD(v463) = 0;
                HIDWORD(v461) = 0;
                v59 = 0;
                v60 = 0;
                v61 = 0.0;
                goto LABEL_132;
              }
            }

            else
            {
              v165 = 0;
            }

LABEL_881:
            v169 = __sb__runningInSpringBoard();
            LODWORD(currentDevice69) = v164;
            LODWORD(mainScreen63) = v165;
            v355 = currentDevice8;
            if (v169)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v170 = 0;
                v171 = 0;
                goto LABEL_901;
              }
            }

            else
            {
              currentDevice10 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice10 userInterfaceIdiom])
              {
                v171 = 0;
                v170 = 1;
                goto LABEL_901;
              }
            }

            v170 = v169 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v174 = __sb__runningInSpringBoard();
              if (v174)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen7 _referenceBounds];
              }

              v171 = v174 ^ 1;
              BSSizeRoundForScale();
              if (v180 >= *(MEMORY[0x277D66E30] + 120))
              {
                goto LABEL_946;
              }
            }

            else
            {
              v171 = 0;
            }

LABEL_901:
            if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
            {
              LODWORD(rect_24) = v171;
              LODWORD(currentDevice75) = v170;
              LODWORD(currentDevice70) = 0;
              v504 = 0;
              LODWORD(currentDevice68) = 0;
              LODWORD(mainScreen62) = 0;
              v501 = 0;
              LODWORD(mainScreen65) = 0;
              v495 = 0;
              LODWORD(rect_16) = 0;
              rect_12 = 0;
              HIDWORD(v489) = 0;
              LODWORD(currentDevice71) = 0;
              HIDWORD(v485) = 0;
              LODWORD(currentDevice72) = 0;
              LODWORD(mainScreen64) = 0;
              LODWORD(mainScreen67) = 0;
              LODWORD(v481) = 0;
              LODWORD(currentDevice73) = 0;
              LODWORD(mainScreen68) = 0;
              HIDWORD(v475) = 0;
              LODWORD(v473) = 0;
              LODWORD(v471) = 0;
              LODWORD(v469) = 0;
              HIDWORD(v465) = 0;
              HIDWORD(v463) = 0;
              HIDWORD(v461) = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0.0;
              goto LABEL_132;
            }

LABEL_946:
            LODWORD(currentDevice75) = v170;
            LODWORD(rect_24) = v171;
            if (!_SBF_Private_IsD93Like())
            {
LABEL_950:
              LODWORD(currentDevice70) = 0;
              v504 = 0;
              goto LABEL_994;
            }

            v181 = __sb__runningInSpringBoard();
            if (v181)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                goto LABEL_950;
              }
            }

            else
            {
              currentDevice11 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice11 userInterfaceIdiom])
              {
                v504 = 0;
                LODWORD(currentDevice70) = 1;
                goto LABEL_994;
              }
            }

            LODWORD(currentDevice70) = v181 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v187 = __sb__runningInSpringBoard();
              if (v187)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen8 _referenceBounds];
              }

              v504 = v187 ^ 1;
              BSSizeRoundForScale();
              if (v198 >= *(MEMORY[0x277D66E30] + 184))
              {
                LODWORD(currentDevice68) = 0;
                LODWORD(mainScreen62) = 0;
                v501 = 0;
                LODWORD(mainScreen65) = 0;
                v495 = 0;
                LODWORD(rect_16) = 0;
                rect_12 = 0;
                HIDWORD(v489) = 0;
                LODWORD(currentDevice71) = 0;
                HIDWORD(v485) = 0;
                LODWORD(currentDevice72) = 0;
                LODWORD(mainScreen64) = 0;
                LODWORD(mainScreen67) = 0;
                LODWORD(v481) = 0;
                LODWORD(currentDevice73) = 0;
                LODWORD(mainScreen68) = 0;
                HIDWORD(v475) = 0;
                LODWORD(v473) = 0;
                LODWORD(v471) = 0;
                LODWORD(v469) = 0;
                HIDWORD(v465) = 0;
                HIDWORD(v463) = 0;
                HIDWORD(v461) = 0;
                v59 = 0;
                v60 = 0;
                v61 = 0.0;
                goto LABEL_132;
              }
            }

            else
            {
              v504 = 0;
            }

LABEL_994:
            v188 = __sb__runningInSpringBoard();
            if (v188)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                LODWORD(currentDevice68) = 0;
                LODWORD(mainScreen62) = 0;
                goto LABEL_1004;
              }
            }

            else
            {
              currentDevice12 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice12 userInterfaceIdiom])
              {
                LODWORD(mainScreen62) = 0;
                LODWORD(currentDevice68) = 1;
                goto LABEL_1004;
              }
            }

            LODWORD(currentDevice68) = v188 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v189 = __sb__runningInSpringBoard();
              if (v189)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                constrained = [MEMORY[0x277D759A0] mainScreen];
                [constrained _referenceBounds];
              }

              LODWORD(mainScreen62) = v189 ^ 1;
              BSSizeRoundForScale();
              if (v190 >= *(MEMORY[0x277D66E30] + 184))
              {
                goto LABEL_1008;
              }
            }

            else
            {
              LODWORD(mainScreen62) = 0;
            }

LABEL_1004:
            if (_SBF_Private_IsD93Like())
            {
              constrainedCopy7 = constrained;
              v501 = 0;
              LODWORD(mainScreen65) = 0;
              v495 = 0;
              LODWORD(rect_16) = 0;
              rect_12 = 0;
              HIDWORD(v489) = 0;
              LODWORD(currentDevice71) = 0;
              HIDWORD(v485) = 0;
              LODWORD(currentDevice72) = 0;
              LODWORD(mainScreen64) = 0;
              LODWORD(mainScreen67) = 0;
              LODWORD(v481) = 0;
              LODWORD(currentDevice73) = 0;
              LODWORD(mainScreen68) = 0;
              HIDWORD(v475) = 0;
              LODWORD(v473) = 0;
              LODWORD(v471) = 0;
              LODWORD(v469) = 0;
              HIDWORD(v465) = 0;
              HIDWORD(v463) = 0;
              HIDWORD(v461) = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0.0;
              goto LABEL_132;
            }

LABEL_1008:
            constrainedCopy7 = constrained;
            if (!_SBF_Private_IsD63Like())
            {
LABEL_1012:
              v501 = 0;
              LODWORD(mainScreen65) = 0;
              goto LABEL_1087;
            }

            v191 = __sb__runningInSpringBoard();
            if (v191)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                goto LABEL_1012;
              }
            }

            else
            {
              currentDevice13 = [MEMORY[0x277D75418] currentDevice];
              v330 = currentDevice13;
              if ([currentDevice13 userInterfaceIdiom])
              {
                LODWORD(mainScreen65) = 0;
                v501 = 1;
                goto LABEL_1087;
              }
            }

            v501 = v191 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v202 = __sb__runningInSpringBoard();
              if (v202)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen9 _referenceBounds];
              }

              LODWORD(mainScreen65) = v202 ^ 1;
              BSSizeRoundForScale();
              if (v216 >= *(MEMORY[0x277D66E30] + 104))
              {
                v495 = 0;
                LODWORD(rect_16) = 0;
                rect_12 = 0;
                HIDWORD(v489) = 0;
                LODWORD(currentDevice71) = 0;
                HIDWORD(v485) = 0;
                LODWORD(currentDevice72) = 0;
                LODWORD(mainScreen64) = 0;
                LODWORD(mainScreen67) = 0;
                LODWORD(v481) = 0;
                LODWORD(currentDevice73) = 0;
                LODWORD(mainScreen68) = 0;
                HIDWORD(v475) = 0;
                LODWORD(v473) = 0;
                LODWORD(v471) = 0;
                LODWORD(v469) = 0;
                HIDWORD(v465) = 0;
                HIDWORD(v463) = 0;
                HIDWORD(v461) = 0;
                v59 = 0;
                v60 = 0;
                v61 = -1.0;
                v34 = v510;
                v33 = v511;
                goto LABEL_132;
              }

              v34 = v26;
              v33 = v511;
            }

            else
            {
              LODWORD(mainScreen65) = 0;
            }

LABEL_1087:
            v203 = __sb__runningInSpringBoard();
            if (v203)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v495 = 0;
                goto LABEL_1097;
              }
            }

            else
            {
              currentDevice13 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice13 userInterfaceIdiom])
              {
                v495 = 0x100000000;
                goto LABEL_1097;
              }
            }

            HIDWORD(v495) = v203 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v204 = __sb__runningInSpringBoard();
              if (v204)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen10 _referenceBounds];
              }

              LODWORD(v495) = v204 ^ 1;
              BSSizeRoundForScale();
              if (v205 >= *(MEMORY[0x277D66E30] + 104))
              {
                goto LABEL_1101;
              }
            }

            else
            {
              LODWORD(v495) = 0;
            }

LABEL_1097:
            if (_SBF_Private_IsD63Like())
            {
              v342 = currentDevice13;
              LODWORD(rect_16) = 0;
              rect_12 = 0;
              HIDWORD(v489) = 0;
              LODWORD(currentDevice71) = 0;
              HIDWORD(v485) = 0;
              LODWORD(currentDevice72) = 0;
              LODWORD(mainScreen64) = 0;
              LODWORD(mainScreen67) = 0;
              LODWORD(v481) = 0;
              LODWORD(currentDevice73) = 0;
              LODWORD(mainScreen68) = 0;
              HIDWORD(v475) = 0;
              LODWORD(v473) = 0;
              LODWORD(v471) = 0;
              LODWORD(v469) = 0;
              HIDWORD(v465) = 0;
              HIDWORD(v463) = 0;
              HIDWORD(v461) = 0;
              v59 = 0;
              v60 = 0;
              v61 = -1.0;
              goto LABEL_132;
            }

LABEL_1101:
            v342 = currentDevice13;
            if (!_SBF_Private_IsD23Like())
            {
              LODWORD(rect_16) = 0;
              rect_12 = 0;
              goto LABEL_1196;
            }

            v206 = MidX;
            v207 = __sb__runningInSpringBoard();
            if (v207)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                LODWORD(rect_16) = 0;
                rect_12 = 0;
LABEL_1195:
                v34 = v26;
                v33 = v511;
LABEL_1196:
                v224 = __sb__runningInSpringBoard();
                if (v224)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    HIDWORD(v489) = 0;
                    LODWORD(currentDevice71) = 0;
                    goto LABEL_1206;
                  }
                }

                else
                {
                  constrained = [MEMORY[0x277D75418] currentDevice];
                  constrainedCopy8 = constrained;
                  if ([constrained userInterfaceIdiom])
                  {
                    LODWORD(currentDevice71) = 0;
                    HIDWORD(v489) = 1;
                    goto LABEL_1206;
                  }
                }

                HIDWORD(v489) = v224 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  v225 = __sb__runningInSpringBoard();
                  if (v225)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
                    [mainScreen11 _referenceBounds];
                  }

                  LODWORD(currentDevice71) = v225 ^ 1;
                  BSSizeRoundForScale();
                  v34 = v26;
                  v33 = v511;
                  if (v226 >= *(MEMORY[0x277D66E30] + 216))
                  {
                    goto LABEL_1210;
                  }
                }

                else
                {
                  LODWORD(currentDevice71) = 0;
                }

LABEL_1206:
                if (_SBF_Private_IsD23Like())
                {
                  HIDWORD(v485) = 0;
                  LODWORD(currentDevice72) = 0;
                  LODWORD(mainScreen64) = 0;
                  LODWORD(mainScreen67) = 0;
                  LODWORD(v481) = 0;
                  LODWORD(currentDevice73) = 0;
                  LODWORD(mainScreen68) = 0;
                  HIDWORD(v475) = 0;
                  LODWORD(v473) = 0;
                  LODWORD(v471) = 0;
                  LODWORD(v469) = 0;
                  HIDWORD(v465) = 0;
                  HIDWORD(v463) = 0;
                  HIDWORD(v461) = 0;
                  v59 = 0;
                  v60 = 0;
                  v61 = 0.0;
                  goto LABEL_132;
                }

LABEL_1210:
                v206 = MidX;
                v227 = __sb__runningInSpringBoard();
                if (v227)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    HIDWORD(v485) = 0;
                    LODWORD(currentDevice72) = 0;
                    goto LABEL_1220;
                  }
                }

                else
                {
                  currentDevice14 = [MEMORY[0x277D75418] currentDevice];
                  if ([currentDevice14 userInterfaceIdiom])
                  {
                    LODWORD(currentDevice72) = 0;
                    HIDWORD(v485) = 1;
                    goto LABEL_1220;
                  }
                }

                HIDWORD(v485) = v227 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  v228 = __sb__runningInSpringBoard();
                  if (v228)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
                    [mainScreen12 _referenceBounds];
                  }

                  LODWORD(currentDevice72) = v228 ^ 1;
                  BSSizeRoundForScale();
                  if (v231 >= *(MEMORY[0x277D66E30] + 120))
                  {
                    LODWORD(mainScreen64) = 0;
                    LODWORD(mainScreen67) = 0;
                    LODWORD(v481) = 0;
                    LODWORD(currentDevice73) = 0;
                    LODWORD(mainScreen68) = 0;
                    HIDWORD(v475) = 0;
                    LODWORD(v473) = 0;
                    LODWORD(v471) = 0;
                    LODWORD(v469) = 0;
                    HIDWORD(v465) = 0;
                    HIDWORD(v463) = 0;
                    HIDWORD(v461) = 0;
                    v59 = 0;
                    v60 = 0;
                    v61 = 0.0;
                    goto LABEL_1358;
                  }
                }

                else
                {
                  LODWORD(currentDevice72) = 0;
                }

LABEL_1220:
                v229 = __sb__runningInSpringBoard();
                if (v229)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    LODWORD(mainScreen64) = 0;
                    LODWORD(mainScreen67) = 0;
                    goto LABEL_1230;
                  }
                }

                else
                {
                  currentDevice15 = [MEMORY[0x277D75418] currentDevice];
                  if ([currentDevice15 userInterfaceIdiom])
                  {
                    LODWORD(mainScreen67) = 0;
                    LODWORD(mainScreen64) = 1;
                    goto LABEL_1230;
                  }
                }

                LODWORD(mainScreen64) = v229 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  v230 = __sb__runningInSpringBoard();
                  if (v230)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
                    [mainScreen13 _referenceBounds];
                  }

                  LODWORD(mainScreen67) = v230 ^ 1;
                  BSSizeRoundForScale();
                  if (v241 >= *(MEMORY[0x277D66E30] + 120))
                  {
                    goto LABEL_1281;
                  }
                }

                else
                {
                  LODWORD(mainScreen67) = 0;
                }

LABEL_1230:
                if (_SBF_Private_IsD33OrSimilarDevice())
                {
                  LODWORD(v481) = 0;
                  LODWORD(currentDevice73) = 0;
                  LODWORD(mainScreen68) = 0;
                  HIDWORD(v475) = 0;
                  LODWORD(v473) = 0;
                  LODWORD(v471) = 0;
                  LODWORD(v469) = 0;
                  HIDWORD(v465) = 0;
                  HIDWORD(v463) = 0;
                  HIDWORD(v461) = 0;
                  v59 = 0;
                  v60 = 0;
                  v61 = 0.0;
LABEL_1358:
                  v34 = v510;
                  v33 = v511;
                  MidX = v206;
                  goto LABEL_132;
                }

LABEL_1281:
                v242 = __sb__runningInSpringBoard();
                if (v242)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    LODWORD(v481) = 0;
                    LODWORD(currentDevice73) = 0;
                    goto LABEL_1310;
                  }
                }

                else
                {
                  currentDevice16 = [MEMORY[0x277D75418] currentDevice];
                  if ([currentDevice16 userInterfaceIdiom])
                  {
                    LODWORD(currentDevice73) = 0;
                    LODWORD(v481) = 1;
                    goto LABEL_1310;
                  }
                }

                LODWORD(v481) = v242 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  v246 = __sb__runningInSpringBoard();
                  if (v246)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
                    [mainScreen14 _referenceBounds];
                  }

                  LODWORD(currentDevice73) = v246 ^ 1;
                  BSSizeRoundForScale();
                  if (v253 >= *(MEMORY[0x277D66E30] + 104))
                  {
                    LODWORD(mainScreen68) = 0;
                    HIDWORD(v475) = 0;
                    LODWORD(v473) = 0;
                    LODWORD(v471) = 0;
                    LODWORD(v469) = 0;
                    HIDWORD(v465) = 0;
                    HIDWORD(v463) = 0;
                    HIDWORD(v461) = 0;
                    v59 = 0;
                    v60 = 0;
                    v61 = 0.0;
                    goto LABEL_1358;
                  }
                }

                else
                {
                  LODWORD(currentDevice73) = 0;
                }

LABEL_1310:
                v247 = __sb__runningInSpringBoard();
                if (v247)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    LODWORD(mainScreen68) = 0;
                    HIDWORD(v475) = 0;
                    goto LABEL_1330;
                  }
                }

                else
                {
                  currentDevice17 = [MEMORY[0x277D75418] currentDevice];
                  if ([currentDevice17 userInterfaceIdiom])
                  {
                    HIDWORD(v475) = 0;
                    LODWORD(mainScreen68) = 1;
                    goto LABEL_1330;
                  }
                }

                LODWORD(mainScreen68) = v247 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  v250 = __sb__runningInSpringBoard();
                  if (v250)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
                    [mainScreen15 _referenceBounds];
                  }

                  HIDWORD(v475) = v250 ^ 1;
                  BSSizeRoundForScale();
                  if (v255 >= *(MEMORY[0x277D66E30] + 104))
                  {
                    goto LABEL_1350;
                  }
                }

                else
                {
                  HIDWORD(v475) = 0;
                }

LABEL_1330:
                if (_SBF_Private_IsD53())
                {
LABEL_1354:
                  LODWORD(v473) = 0;
                  LODWORD(v471) = 0;
                  LODWORD(v469) = 0;
                  HIDWORD(v465) = 0;
                  HIDWORD(v463) = 0;
                  HIDWORD(v461) = 0;
                  v59 = 0;
                  v60 = 0;
                  v61 = 0.0;
                  goto LABEL_1358;
                }

LABEL_1350:
                if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0 || _SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
                {
                  goto LABEL_1354;
                }

                v61 = 0.0;
                if (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0 || (_SBF_Private_IsD52ZoomedOrSimilarDevice())
                {
                  LODWORD(v473) = 0;
                  LODWORD(v471) = 0;
                  LODWORD(v469) = 0;
                  HIDWORD(v465) = 0;
                  HIDWORD(v463) = 0;
                  HIDWORD(v461) = 0;
                  v59 = 0;
                  v60 = 0;
                  goto LABEL_1358;
                }

                v257 = __sb__runningInSpringBoard();
                if (v257)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    LODWORD(v473) = 0;
                    LODWORD(v471) = 0;
                    goto LABEL_1428;
                  }
                }

                else
                {
                  currentDevice18 = [MEMORY[0x277D75418] currentDevice];
                  if ([currentDevice18 userInterfaceIdiom])
                  {
                    LODWORD(v471) = 0;
                    LODWORD(v473) = 1;
                    goto LABEL_1428;
                  }
                }

                LODWORD(v473) = v257 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  v265 = __sb__runningInSpringBoard();
                  if (v265)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
                    [mainScreen16 _referenceBounds];
                  }

                  LODWORD(v471) = v265 ^ 1;
                  BSSizeRoundForScale();
                  if (v277 >= *(MEMORY[0x277D66E30] + 88))
                  {
                    LODWORD(v469) = 0;
                    HIDWORD(v465) = 0;
                    HIDWORD(v463) = 0;
                    HIDWORD(v461) = 0;
                    v59 = 0;
                    v60 = 0;
                    goto LABEL_1358;
                  }
                }

                else
                {
                  LODWORD(v471) = 0;
                }

LABEL_1428:
                v266 = __sb__runningInSpringBoard();
                if (v266)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    LODWORD(v469) = 0;
                    HIDWORD(v465) = 0;
                    goto LABEL_1448;
                  }
                }

                else
                {
                  currentDevice19 = [MEMORY[0x277D75418] currentDevice];
                  if ([currentDevice19 userInterfaceIdiom])
                  {
                    HIDWORD(v465) = 0;
                    LODWORD(v469) = 1;
                    goto LABEL_1448;
                  }
                }

                LODWORD(v469) = v266 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  v269 = __sb__runningInSpringBoard();
                  if (v269)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
                    [mainScreen17 _referenceBounds];
                  }

                  HIDWORD(v465) = v269 ^ 1;
                  BSSizeRoundForScale();
                  if (v279 >= *(MEMORY[0x277D66E30] + 72))
                  {
                    HIDWORD(v463) = 0;
                    HIDWORD(v461) = 0;
                    v59 = 0;
                    v60 = 0;
                    goto LABEL_1358;
                  }
                }

                else
                {
                  HIDWORD(v465) = 0;
                }

LABEL_1448:
                v270 = __sb__runningInSpringBoard();
                if (v270)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    HIDWORD(v463) = 0;
                    HIDWORD(v461) = 0;
                    goto LABEL_1468;
                  }
                }

                else
                {
                  currentDevice20 = [MEMORY[0x277D75418] currentDevice];
                  if ([currentDevice20 userInterfaceIdiom])
                  {
                    HIDWORD(v461) = 0;
                    HIDWORD(v463) = 1;
                    goto LABEL_1468;
                  }
                }

                HIDWORD(v463) = v270 ^ 1;
                mainScreen6 = __sb__runningInSpringBoard();
                if (mainScreen6)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen18 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen18 _referenceBounds];
                }

                HIDWORD(v461) = mainScreen6 ^ 1;
                BSSizeRoundForScale();
                if (v273 >= *(MEMORY[0x277D66E30] + 56))
                {
                  goto LABEL_1471;
                }

LABEL_1468:
                mainScreen6 = __sb__runningInSpringBoard();
                if (mainScreen6)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
LABEL_1471:
                    v59 = 0;
                    v60 = 0;
                    goto LABEL_1358;
                  }
                }

                else
                {
                  constrained = [MEMORY[0x277D75418] currentDevice];
                  if ([constrained userInterfaceIdiom])
                  {
                    v60 = 0;
                    v59 = 1;
                    goto LABEL_1358;
                  }
                }

                v281 = mainScreen6 ^ 1;
                v282 = __sb__runningInSpringBoard();
                if (v282)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen6 _referenceBounds];
                }

                BSSizeRoundForScale();
                v60 = v282 ^ 1;
                v34 = v510;
                v33 = v511;
                v59 = v281;
                goto LABEL_132;
              }
            }

            else
            {
              currentDevice21 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice21 userInterfaceIdiom])
              {
                rect_12 = 0;
                LODWORD(rect_16) = 1;
                goto LABEL_1196;
              }
            }

            LODWORD(rect_16) = v207 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v220 = __sb__runningInSpringBoard();
              if (v220)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen19 _referenceBounds];
              }

              rect_12 = v220 ^ 1;
              BSSizeRoundForScale();
              if (v223 >= *(MEMORY[0x277D66E30] + 216))
              {
                HIDWORD(v489) = 0;
                LODWORD(currentDevice71) = 0;
                HIDWORD(v485) = 0;
                LODWORD(currentDevice72) = 0;
                LODWORD(mainScreen64) = 0;
                LODWORD(mainScreen67) = 0;
                LODWORD(v481) = 0;
                LODWORD(currentDevice73) = 0;
                LODWORD(mainScreen68) = 0;
                HIDWORD(v475) = 0;
                LODWORD(v473) = 0;
                LODWORD(v471) = 0;
                LODWORD(v469) = 0;
                HIDWORD(v465) = 0;
                HIDWORD(v463) = 0;
                HIDWORD(v461) = 0;
                v59 = 0;
                v60 = 0;
                v61 = 0.0;
                goto LABEL_1358;
              }
            }

            else
            {
              rect_12 = 0;
            }

            goto LABEL_1195;
          }
        }

        v383 = userInterfaceLayoutDirection;
        LODWORD(mainScreen57) = 0;
        LODWORD(currentDevice63) = 0;
        LODWORD(currentDevice65) = 0;
        LODWORD(mainScreen58) = 0;
        LODWORD(mainScreen56) = 0;
        LODWORD(currentDevice74) = 0;
        LODWORD(mainScreen59) = 0;
        LODWORD(currentDevice64) = 0;
        LODWORD(currentDevice67) = 0;
        LODWORD(mainScreen60) = 0;
        LODWORD(mainScreen61) = 0;
        LODWORD(currentDevice66) = 0;
        LODWORD(currentDevice69) = 0;
        LODWORD(mainScreen63) = 0;
        LODWORD(currentDevice75) = 0;
        LODWORD(rect_24) = 0;
        LODWORD(currentDevice70) = 0;
        v504 = 0;
        LODWORD(currentDevice68) = 0;
        LODWORD(mainScreen62) = 0;
        v501 = 0;
        LODWORD(mainScreen65) = 0;
        v495 = 0;
        LODWORD(rect_16) = 0;
        rect_12 = 0;
        HIDWORD(v489) = 0;
        LODWORD(currentDevice71) = 0;
        HIDWORD(v485) = 0;
        LODWORD(currentDevice72) = 0;
        LODWORD(mainScreen64) = 0;
        LODWORD(mainScreen67) = 0;
        LODWORD(v481) = 0;
        LODWORD(currentDevice73) = 0;
        LODWORD(mainScreen68) = 0;
        HIDWORD(v475) = 0;
        LODWORD(v473) = 0;
        LODWORD(v471) = 0;
        LODWORD(v469) = 0;
        HIDWORD(v465) = 0;
        HIDWORD(v463) = 0;
        HIDWORD(v461) = 0;
        v59 = 0;
        v60 = 0;
        v61 = 0.0;
        LODWORD(mainScreen66) = v110 ^ 1;
LABEL_132:
        currentDevice76 = 0;
        v63 = 0;
        LODWORD(mainScreen70) = 0;
        v64 = 0;
        mainScreen72 = 0;
        v66 = 0;
        LODWORD(mainScreen71) = 0;
        v67 = 0;
        LODWORD(mainScreen69) = 0;
        LODWORD(mainScreen48) = 0;
        LODWORD(currentDevice55) = 0;
        LODWORD(mainScreen52) = 0;
        LODWORD(currentDevice54) = 0;
        LODWORD(mainScreen51) = 0;
        LODWORD(currentDevice52) = 0;
        LODWORD(currentDevice53) = 0;
        LODWORD(currentDevice50) = 0;
        LODWORD(currentDevice51) = 0;
        v451 = 0;
        LODWORD(currentDevice49) = 0;
        v453 = 0;
        v455 = 0;
        v457 = 0;
        v459 = 0;
        LODWORD(v461) = 0;
        LODWORD(v463) = 0;
        LODWORD(v465) = 0;
        v467 = 0;
        HIDWORD(v469) = 0;
        HIDWORD(v471) = 0;
        HIDWORD(v473) = 0;
        LODWORD(v475) = 0;
        v477 = 0;
        v479 = 0;
        HIDWORD(v481) = 0;
        v483 = 0;
        LODWORD(v485) = 0;
        v487 = 0;
        LODWORD(v489) = 0;
        v491 = 0;
        v493 = 0;
        v497 = 0;
        v499 = 0;
        v502 = 0;
        v68 = -v61;
        goto LABEL_133;
      }
    }

    else
    {
      currentDevice7 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice7 userInterfaceIdiom] != 1)
      {
        LODWORD(currentDevice62) = 0;
        LODWORD(currentDevice61) = 1;
        goto LABEL_572;
      }
    }

    LODWORD(currentDevice61) = v70 ^ 1;
    v71 = __sb__runningInSpringBoard();
    if (v71)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen6 _referenceBounds];
    }

    LODWORD(currentDevice62) = v71 ^ 1;
    BSSizeRoundForScale();
    if (v109 >= *(MEMORY[0x277D66E30] + 248))
    {
      v386 = mainScreen6;
      v387 = currentDevice7;
      LODWORD(mainScreen66) = 0;
      LODWORD(mainScreen57) = 0;
      LODWORD(currentDevice63) = 0;
      LODWORD(currentDevice65) = 0;
      LODWORD(mainScreen58) = 0;
      LODWORD(mainScreen56) = 0;
      LODWORD(currentDevice74) = 0;
      LODWORD(mainScreen59) = 0;
      LODWORD(currentDevice64) = 0;
      LODWORD(currentDevice67) = 0;
      LODWORD(mainScreen60) = 0;
      LODWORD(mainScreen61) = 0;
      LODWORD(currentDevice66) = 0;
      LODWORD(currentDevice69) = 0;
      LODWORD(mainScreen63) = 0;
      LODWORD(currentDevice75) = 0;
      LODWORD(rect_24) = 0;
      LODWORD(currentDevice70) = 0;
      v504 = 0;
      LODWORD(currentDevice68) = 0;
      LODWORD(mainScreen62) = 0;
      v501 = 0;
      LODWORD(mainScreen65) = 0;
      v495 = 0;
      LODWORD(rect_16) = 0;
      rect_12 = 0;
      HIDWORD(v489) = 0;
      LODWORD(currentDevice71) = 0;
      HIDWORD(v485) = 0;
      LODWORD(currentDevice72) = 0;
      LODWORD(mainScreen64) = 0;
      LODWORD(mainScreen67) = 0;
      LODWORD(v481) = 0;
      LODWORD(currentDevice73) = 0;
      LODWORD(mainScreen68) = 0;
      HIDWORD(v475) = 0;
      LODWORD(v473) = 0;
      LODWORD(v471) = 0;
      LODWORD(v469) = 0;
      HIDWORD(v465) = 0;
      HIDWORD(v463) = 0;
      HIDWORD(v461) = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0.0;
      goto LABEL_132;
    }

    goto LABEL_572;
  }

  if (v37)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v499 = 0;
      v502 = 0;
      goto LABEL_34;
    }
  }

  else
  {
    currentDevice22 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice22 userInterfaceIdiom] != 1)
    {
      v499 = 0;
      v502 = 1;
      goto LABEL_34;
    }
  }

  v502 = v38 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v40 = __sb__runningInSpringBoard();
    if (v40)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen20 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen20 _referenceBounds];
    }

    v499 = v40 ^ 1;
    BSSizeRoundForScale();
    if (v78 == *(MEMORY[0x277D66E30] + 288) && v77 == *(MEMORY[0x277D66E30] + 296))
    {
      currentDevice76 = 0;
      LODWORD(mainScreen54) = 0;
      v63 = 0;
      LODWORD(mainScreen70) = 0;
      LODWORD(mainScreen49) = 0;
      LODWORD(mainScreen50) = 0;
      LODWORD(mainScreen53) = 0;
      LODWORD(currentDevice57) = 0;
      v64 = 0;
      LODWORD(currentDevice56) = 0;
      mainScreen72 = 0;
      LODWORD(currentDevice59) = 0;
      LODWORD(currentDevice60) = 0;
      LODWORD(currentDevice58) = 0;
      v66 = 0;
      LODWORD(mainScreen55) = 0;
      LODWORD(mainScreen71) = 0;
      LODWORD(currentDevice61) = 0;
      LODWORD(currentDevice62) = 0;
      LODWORD(mainScreen66) = 0;
      LODWORD(mainScreen57) = 0;
      v67 = 0;
      LODWORD(currentDevice63) = 0;
      LODWORD(mainScreen69) = 0;
      LODWORD(currentDevice65) = 0;
      LODWORD(mainScreen58) = 0;
      LODWORD(mainScreen56) = 0;
      LODWORD(mainScreen48) = 0;
      LODWORD(currentDevice74) = 0;
      LODWORD(currentDevice55) = 0;
      LODWORD(mainScreen59) = 0;
      LODWORD(currentDevice64) = 0;
      LODWORD(currentDevice67) = 0;
      LODWORD(mainScreen52) = 0;
      LODWORD(mainScreen60) = 0;
      LODWORD(currentDevice54) = 0;
      LODWORD(mainScreen61) = 0;
      LODWORD(currentDevice66) = 0;
      LODWORD(currentDevice69) = 0;
      LODWORD(mainScreen51) = 0;
      LODWORD(mainScreen63) = 0;
      LODWORD(currentDevice52) = 0;
      LODWORD(currentDevice75) = 0;
      LODWORD(rect_24) = 0;
      LODWORD(currentDevice70) = 0;
      LODWORD(currentDevice53) = 0;
      v504 = 0;
      LODWORD(currentDevice50) = 0;
      LODWORD(currentDevice68) = 0;
      LODWORD(mainScreen62) = 0;
      v501 = 0;
      LODWORD(currentDevice51) = 0;
      LODWORD(mainScreen65) = 0;
      v451 = 0;
      v495 = 0;
      LODWORD(rect_16) = 0;
      LODWORD(currentDevice49) = 0;
      rect_12 = 0;
      v453 = 0;
      LODWORD(currentDevice71) = 0;
      LODWORD(currentDevice72) = 0;
      v455 = 0;
      LODWORD(mainScreen64) = 0;
      LODWORD(mainScreen67) = 0;
      v481 = 0;
      LODWORD(currentDevice73) = 0;
      v457 = 0;
      LODWORD(mainScreen68) = 0;
      v475 = 0;
      v473 = 0;
      v471 = 0;
      v459 = 0;
      v469 = 0;
      v465 = 0;
      v463 = 0;
      v461 = 0;
      v59 = 0;
      v60 = 0;
      v467 = 0;
      v477 = 0;
      v479 = 0;
      v483 = 0;
      v485 = 0;
      v487 = 0;
      v489 = 0;
      v491 = 0;
      v493 = 0;
      v497 = 0;
      v68 = 0.0;
      goto LABEL_133;
    }
  }

  else
  {
    v499 = 0;
  }

LABEL_34:
  v43 = __sb__runningInSpringBoard();
  if (v43)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v497 = 0;
      goto LABEL_52;
    }
  }

  else
  {
    currentDevice23 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice23 userInterfaceIdiom] != 1)
    {
      v497 = 0x100000000;
      goto LABEL_52;
    }
  }

  HIDWORD(v497) = v43 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v44 = __sb__runningInSpringBoard();
    if (v44)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen21 _referenceBounds];
    }

    LODWORD(v497) = v44 ^ 1;
    BSSizeRoundForScale();
    if (v80 >= *(MEMORY[0x277D66E30] + 440))
    {
      currentDevice76 = 0;
      LODWORD(mainScreen54) = 0;
      v63 = 0;
      LODWORD(mainScreen70) = 0;
      LODWORD(mainScreen49) = 0;
      LODWORD(mainScreen50) = 0;
      LODWORD(mainScreen53) = 0;
      LODWORD(currentDevice57) = 0;
      v64 = 0;
      LODWORD(currentDevice56) = 0;
      mainScreen72 = 0;
      LODWORD(currentDevice59) = 0;
      LODWORD(currentDevice60) = 0;
      LODWORD(currentDevice58) = 0;
      v66 = 0;
      LODWORD(mainScreen55) = 0;
      LODWORD(mainScreen71) = 0;
      LODWORD(currentDevice61) = 0;
      LODWORD(currentDevice62) = 0;
      LODWORD(mainScreen66) = 0;
      LODWORD(mainScreen57) = 0;
      v67 = 0;
      LODWORD(currentDevice63) = 0;
      LODWORD(mainScreen69) = 0;
      LODWORD(currentDevice65) = 0;
      LODWORD(mainScreen58) = 0;
      LODWORD(mainScreen56) = 0;
      LODWORD(mainScreen48) = 0;
      LODWORD(currentDevice74) = 0;
      LODWORD(currentDevice55) = 0;
      LODWORD(mainScreen59) = 0;
      LODWORD(currentDevice64) = 0;
      LODWORD(currentDevice67) = 0;
      LODWORD(mainScreen52) = 0;
      LODWORD(mainScreen60) = 0;
      LODWORD(currentDevice54) = 0;
      LODWORD(mainScreen61) = 0;
      LODWORD(currentDevice66) = 0;
      LODWORD(currentDevice69) = 0;
      LODWORD(mainScreen51) = 0;
      LODWORD(mainScreen63) = 0;
      LODWORD(currentDevice52) = 0;
      LODWORD(currentDevice75) = 0;
      LODWORD(rect_24) = 0;
      LODWORD(currentDevice70) = 0;
      LODWORD(currentDevice53) = 0;
      v504 = 0;
      LODWORD(currentDevice50) = 0;
      LODWORD(currentDevice68) = 0;
      LODWORD(mainScreen62) = 0;
      v501 = 0;
      LODWORD(currentDevice51) = 0;
      LODWORD(mainScreen65) = 0;
      v451 = 0;
      v495 = 0;
      LODWORD(rect_16) = 0;
      LODWORD(currentDevice49) = 0;
      rect_12 = 0;
      v453 = 0;
      LODWORD(currentDevice71) = 0;
      LODWORD(currentDevice72) = 0;
      v455 = 0;
      LODWORD(mainScreen64) = 0;
      LODWORD(mainScreen67) = 0;
      v481 = 0;
      LODWORD(currentDevice73) = 0;
      v457 = 0;
      LODWORD(mainScreen68) = 0;
      v475 = 0;
      v473 = 0;
      v471 = 0;
      v459 = 0;
      v469 = 0;
      v465 = 0;
      v463 = 0;
      v461 = 0;
      v59 = 0;
      v60 = 0;
      v467 = 0;
      v477 = 0;
      v479 = 0;
      v483 = 0;
      v485 = 0;
      v487 = 0;
      v489 = 0;
      v491 = 0;
      v493 = 0;
      v68 = 0.0;
      goto LABEL_133;
    }
  }

  else
  {
    LODWORD(v497) = 0;
  }

LABEL_52:
  v47 = __sb__runningInSpringBoard();
  if (v47)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v493 = 0;
      goto LABEL_69;
    }
  }

  else
  {
    currentDevice24 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice24 userInterfaceIdiom] != 1)
    {
      v493 = 0x100000000;
      goto LABEL_69;
    }
  }

  HIDWORD(v493) = v47 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v48 = __sb__runningInSpringBoard();
    if (v48)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen22 _referenceBounds];
    }

    LODWORD(v493) = v48 ^ 1;
    BSSizeRoundForScale();
    if (v108 >= *(MEMORY[0x277D66E30] + 376))
    {
      currentDevice76 = 0;
      LODWORD(mainScreen54) = 0;
      v63 = 0;
      LODWORD(mainScreen70) = 0;
      LODWORD(mainScreen49) = 0;
      LODWORD(mainScreen50) = 0;
      LODWORD(mainScreen53) = 0;
      LODWORD(currentDevice57) = 0;
      v64 = 0;
      LODWORD(currentDevice56) = 0;
      mainScreen72 = 0;
      LODWORD(currentDevice59) = 0;
      LODWORD(currentDevice60) = 0;
      LODWORD(currentDevice58) = 0;
      v66 = 0;
      LODWORD(mainScreen55) = 0;
      LODWORD(mainScreen71) = 0;
      LODWORD(currentDevice61) = 0;
      LODWORD(currentDevice62) = 0;
      LODWORD(mainScreen66) = 0;
      LODWORD(mainScreen57) = 0;
      v67 = 0;
      LODWORD(currentDevice63) = 0;
      LODWORD(mainScreen69) = 0;
      LODWORD(currentDevice65) = 0;
      LODWORD(mainScreen58) = 0;
      LODWORD(mainScreen56) = 0;
      LODWORD(mainScreen48) = 0;
      LODWORD(currentDevice74) = 0;
      LODWORD(currentDevice55) = 0;
      LODWORD(mainScreen59) = 0;
      LODWORD(currentDevice64) = 0;
      LODWORD(currentDevice67) = 0;
      LODWORD(mainScreen52) = 0;
      LODWORD(mainScreen60) = 0;
      LODWORD(currentDevice54) = 0;
      LODWORD(mainScreen61) = 0;
      LODWORD(currentDevice66) = 0;
      LODWORD(currentDevice69) = 0;
      LODWORD(mainScreen51) = 0;
      LODWORD(mainScreen63) = 0;
      LODWORD(currentDevice52) = 0;
      LODWORD(currentDevice75) = 0;
      LODWORD(rect_24) = 0;
      LODWORD(currentDevice70) = 0;
      LODWORD(currentDevice53) = 0;
      v504 = 0;
      LODWORD(currentDevice50) = 0;
      LODWORD(currentDevice68) = 0;
      LODWORD(mainScreen62) = 0;
      v501 = 0;
      LODWORD(currentDevice51) = 0;
      LODWORD(mainScreen65) = 0;
      v451 = 0;
      v495 = 0;
      LODWORD(rect_16) = 0;
      LODWORD(currentDevice49) = 0;
      rect_12 = 0;
      v453 = 0;
      LODWORD(currentDevice71) = 0;
      LODWORD(currentDevice72) = 0;
      v455 = 0;
      LODWORD(mainScreen64) = 0;
      LODWORD(mainScreen67) = 0;
      v481 = 0;
      LODWORD(currentDevice73) = 0;
      v457 = 0;
      LODWORD(mainScreen68) = 0;
      v475 = 0;
      v473 = 0;
      v471 = 0;
      v459 = 0;
      v469 = 0;
      v465 = 0;
      v463 = 0;
      v461 = 0;
      v59 = 0;
      v60 = 0;
      v467 = 0;
      v477 = 0;
      v479 = 0;
      v483 = 0;
      v485 = 0;
      v487 = 0;
      v489 = 0;
      v491 = 0;
      v68 = 0.0;
      goto LABEL_133;
    }
  }

  else
  {
    LODWORD(v493) = 0;
  }

LABEL_69:
  v51 = __sb__runningInSpringBoard();
  if (v51)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v491 = 0;
      goto LABEL_87;
    }
  }

  else
  {
    currentDevice25 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice25 userInterfaceIdiom] != 1)
    {
      v491 = 0x100000000;
      goto LABEL_87;
    }
  }

  HIDWORD(v491) = v51 ^ 1;
  v52 = __sb__runningInSpringBoard();
  if (v52)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen23 _referenceBounds];
  }

  LODWORD(v491) = v52 ^ 1;
  BSSizeRoundForScale();
  if (v56 >= *(MEMORY[0x277D66E30] + 280))
  {
    currentDevice76 = 0;
    LODWORD(mainScreen54) = 0;
    v63 = 0;
    LODWORD(mainScreen70) = 0;
    LODWORD(mainScreen49) = 0;
    LODWORD(mainScreen50) = 0;
    LODWORD(mainScreen53) = 0;
    LODWORD(currentDevice57) = 0;
    v64 = 0;
    LODWORD(currentDevice56) = 0;
    mainScreen72 = 0;
    LODWORD(currentDevice59) = 0;
    LODWORD(currentDevice60) = 0;
    LODWORD(currentDevice58) = 0;
    v66 = 0;
    LODWORD(mainScreen55) = 0;
    LODWORD(mainScreen71) = 0;
    LODWORD(currentDevice61) = 0;
    LODWORD(currentDevice62) = 0;
    LODWORD(mainScreen66) = 0;
    LODWORD(mainScreen57) = 0;
    v67 = 0;
    LODWORD(currentDevice63) = 0;
    LODWORD(mainScreen69) = 0;
    LODWORD(currentDevice65) = 0;
    LODWORD(mainScreen58) = 0;
    LODWORD(mainScreen56) = 0;
    LODWORD(mainScreen48) = 0;
    LODWORD(currentDevice74) = 0;
    LODWORD(currentDevice55) = 0;
    LODWORD(mainScreen59) = 0;
    LODWORD(currentDevice64) = 0;
    LODWORD(currentDevice67) = 0;
    LODWORD(mainScreen52) = 0;
    LODWORD(mainScreen60) = 0;
    LODWORD(currentDevice54) = 0;
    LODWORD(mainScreen61) = 0;
    LODWORD(currentDevice66) = 0;
    LODWORD(currentDevice69) = 0;
    LODWORD(mainScreen51) = 0;
    LODWORD(mainScreen63) = 0;
    LODWORD(currentDevice52) = 0;
    LODWORD(currentDevice75) = 0;
    LODWORD(rect_24) = 0;
    LODWORD(currentDevice70) = 0;
    LODWORD(currentDevice53) = 0;
    v504 = 0;
    LODWORD(currentDevice50) = 0;
    LODWORD(currentDevice68) = 0;
    LODWORD(mainScreen62) = 0;
    v501 = 0;
    LODWORD(currentDevice51) = 0;
    LODWORD(mainScreen65) = 0;
    v451 = 0;
    v495 = 0;
    LODWORD(rect_16) = 0;
    LODWORD(currentDevice49) = 0;
    rect_12 = 0;
    v453 = 0;
    LODWORD(currentDevice71) = 0;
    LODWORD(currentDevice72) = 0;
    v455 = 0;
    LODWORD(mainScreen64) = 0;
    LODWORD(mainScreen67) = 0;
    v481 = 0;
    LODWORD(currentDevice73) = 0;
    v457 = 0;
    LODWORD(mainScreen68) = 0;
    v475 = 0;
    v473 = 0;
    v471 = 0;
    v459 = 0;
    v469 = 0;
    v465 = 0;
    v463 = 0;
    v461 = 0;
    v59 = 0;
    v60 = 0;
    v467 = 0;
    v477 = 0;
    v479 = 0;
    v483 = 0;
    v485 = 0;
    v487 = 0;
    v489 = 0;
    v68 = 0.0;
    goto LABEL_133;
  }

LABEL_87:
  v57 = __sb__runningInSpringBoard();
  if (v57)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      HIDWORD(v487) = 0;
      LODWORD(v489) = 0;
      goto LABEL_107;
    }
  }

  else
  {
    currentDevice26 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice26 userInterfaceIdiom] != 1)
    {
      HIDWORD(v487) = 0;
      LODWORD(v489) = 1;
      goto LABEL_107;
    }
  }

  LODWORD(v489) = v57 ^ 1;
  v58 = __sb__runningInSpringBoard();
  if (v58)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen24 _referenceBounds];
  }

  HIDWORD(v487) = v58 ^ 1;
  BSSizeRoundForScale();
  if (v72 >= *(MEMORY[0x277D66E30] + 264))
  {
    currentDevice76 = 0;
    LODWORD(mainScreen54) = 0;
    v63 = 0;
    LODWORD(mainScreen70) = 0;
    LODWORD(mainScreen49) = 0;
    LODWORD(mainScreen50) = 0;
    LODWORD(mainScreen53) = 0;
    LODWORD(currentDevice57) = 0;
    v64 = 0;
    LODWORD(currentDevice56) = 0;
    mainScreen72 = 0;
    LODWORD(currentDevice59) = 0;
    LODWORD(currentDevice60) = 0;
    LODWORD(currentDevice58) = 0;
    v66 = 0;
    LODWORD(mainScreen55) = 0;
    LODWORD(mainScreen71) = 0;
    LODWORD(currentDevice61) = 0;
    LODWORD(currentDevice62) = 0;
    LODWORD(mainScreen66) = 0;
    LODWORD(mainScreen57) = 0;
    v67 = 0;
    LODWORD(currentDevice63) = 0;
    LODWORD(mainScreen69) = 0;
    LODWORD(currentDevice65) = 0;
    LODWORD(mainScreen58) = 0;
    LODWORD(mainScreen56) = 0;
    LODWORD(mainScreen48) = 0;
    LODWORD(currentDevice74) = 0;
    LODWORD(currentDevice55) = 0;
    LODWORD(mainScreen59) = 0;
    LODWORD(currentDevice64) = 0;
    LODWORD(currentDevice67) = 0;
    LODWORD(mainScreen52) = 0;
    LODWORD(mainScreen60) = 0;
    LODWORD(currentDevice54) = 0;
    LODWORD(mainScreen61) = 0;
    LODWORD(currentDevice66) = 0;
    LODWORD(currentDevice69) = 0;
    LODWORD(mainScreen51) = 0;
    LODWORD(mainScreen63) = 0;
    LODWORD(currentDevice52) = 0;
    LODWORD(currentDevice75) = 0;
    LODWORD(rect_24) = 0;
    LODWORD(currentDevice70) = 0;
    LODWORD(currentDevice53) = 0;
    v504 = 0;
    LODWORD(currentDevice50) = 0;
    LODWORD(currentDevice68) = 0;
    LODWORD(mainScreen62) = 0;
    v501 = 0;
    LODWORD(currentDevice51) = 0;
    LODWORD(mainScreen65) = 0;
    v451 = 0;
    v495 = 0;
    LODWORD(rect_16) = 0;
    LODWORD(currentDevice49) = 0;
    rect_12 = 0;
    v453 = 0;
    HIDWORD(v489) = 0;
    LODWORD(currentDevice71) = 0;
    LODWORD(currentDevice72) = 0;
    v455 = 0;
    LODWORD(mainScreen64) = 0;
    LODWORD(mainScreen67) = 0;
    v481 = 0;
    LODWORD(currentDevice73) = 0;
    v457 = 0;
    LODWORD(mainScreen68) = 0;
    v475 = 0;
    v473 = 0;
    v471 = 0;
    v459 = 0;
    v469 = 0;
    v465 = 0;
    v463 = 0;
    v461 = 0;
    v59 = 0;
    v60 = 0;
    v467 = 0;
    v477 = 0;
    v479 = 0;
    v483 = 0;
    v485 = 0;
    LODWORD(v487) = 0;
    v68 = 0.0;
    goto LABEL_133;
  }

LABEL_107:
  v73 = __sb__runningInSpringBoard();
  if (v73)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      LODWORD(v485) = 0;
      LODWORD(v487) = 0;
      goto LABEL_584;
    }
  }

  else
  {
    currentDevice27 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice27 userInterfaceIdiom] != 1)
    {
      LODWORD(v485) = 0;
      LODWORD(v487) = 1;
      goto LABEL_584;
    }
  }

  LODWORD(v487) = v73 ^ 1;
  v74 = __sb__runningInSpringBoard();
  if (v74)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen25 _referenceBounds];
  }

  LODWORD(v485) = v74 ^ 1;
  BSSizeRoundForScale();
  if (v112 >= *(MEMORY[0x277D66E30] + 248))
  {
    currentDevice76 = 0;
    LODWORD(mainScreen54) = 0;
    v63 = 0;
    LODWORD(mainScreen70) = 0;
    LODWORD(mainScreen49) = 0;
    LODWORD(mainScreen50) = 0;
    LODWORD(mainScreen53) = 0;
    LODWORD(currentDevice57) = 0;
    v64 = 0;
    LODWORD(currentDevice56) = 0;
    mainScreen72 = 0;
    LODWORD(currentDevice59) = 0;
    LODWORD(currentDevice60) = 0;
    LODWORD(currentDevice58) = 0;
    v66 = 0;
    LODWORD(mainScreen55) = 0;
    LODWORD(mainScreen71) = 0;
    LODWORD(currentDevice61) = 0;
    LODWORD(currentDevice62) = 0;
    LODWORD(mainScreen66) = 0;
    LODWORD(mainScreen57) = 0;
    v67 = 0;
    LODWORD(currentDevice63) = 0;
    LODWORD(mainScreen69) = 0;
    LODWORD(currentDevice65) = 0;
    LODWORD(mainScreen58) = 0;
    LODWORD(mainScreen56) = 0;
    LODWORD(mainScreen48) = 0;
    LODWORD(currentDevice74) = 0;
    LODWORD(currentDevice55) = 0;
    LODWORD(mainScreen59) = 0;
    LODWORD(currentDevice64) = 0;
    LODWORD(currentDevice67) = 0;
    LODWORD(mainScreen52) = 0;
    LODWORD(mainScreen60) = 0;
    LODWORD(currentDevice54) = 0;
    LODWORD(mainScreen61) = 0;
    LODWORD(currentDevice66) = 0;
    LODWORD(currentDevice69) = 0;
    LODWORD(mainScreen51) = 0;
    LODWORD(mainScreen63) = 0;
    LODWORD(currentDevice52) = 0;
    LODWORD(currentDevice75) = 0;
    LODWORD(rect_24) = 0;
    LODWORD(currentDevice70) = 0;
    LODWORD(currentDevice53) = 0;
    v504 = 0;
    LODWORD(currentDevice50) = 0;
    LODWORD(currentDevice68) = 0;
    LODWORD(mainScreen62) = 0;
    v501 = 0;
    LODWORD(currentDevice51) = 0;
    LODWORD(mainScreen65) = 0;
    v451 = 0;
    v495 = 0;
    LODWORD(rect_16) = 0;
    LODWORD(currentDevice49) = 0;
    rect_12 = 0;
    v453 = 0;
    HIDWORD(v489) = 0;
    LODWORD(currentDevice71) = 0;
    HIDWORD(v485) = 0;
    LODWORD(currentDevice72) = 0;
    v455 = 0;
    LODWORD(mainScreen64) = 0;
    LODWORD(mainScreen67) = 0;
    v481 = 0;
    LODWORD(currentDevice73) = 0;
    v457 = 0;
    LODWORD(mainScreen68) = 0;
    v475 = 0;
    v473 = 0;
    v471 = 0;
    v459 = 0;
    v469 = 0;
    v465 = 0;
    v463 = 0;
    v461 = 0;
    v59 = 0;
    v60 = 0;
    v467 = 0;
    v477 = 0;
    v479 = 0;
    v483 = 0;
    v68 = 0.0;
    goto LABEL_133;
  }

LABEL_584:
  v113 = __sb__runningInSpringBoard();
  if (v113)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_586;
    }

LABEL_592:
    currentDevice76 = 0;
    LODWORD(mainScreen54) = 0;
    v63 = 0;
    LODWORD(mainScreen70) = 0;
    LODWORD(mainScreen49) = 0;
    LODWORD(mainScreen50) = 0;
    LODWORD(mainScreen53) = 0;
    LODWORD(currentDevice57) = 0;
    v64 = 0;
    LODWORD(currentDevice56) = 0;
    mainScreen72 = 0;
    LODWORD(currentDevice59) = 0;
    LODWORD(currentDevice60) = 0;
    LODWORD(currentDevice58) = 0;
    v66 = 0;
    LODWORD(mainScreen55) = 0;
    LODWORD(mainScreen71) = 0;
    LODWORD(currentDevice61) = 0;
    LODWORD(currentDevice62) = 0;
    LODWORD(mainScreen66) = 0;
    LODWORD(mainScreen57) = 0;
    v67 = 0;
    LODWORD(currentDevice63) = 0;
    LODWORD(mainScreen69) = 0;
    LODWORD(currentDevice65) = 0;
    LODWORD(mainScreen58) = 0;
    LODWORD(mainScreen56) = 0;
    LODWORD(mainScreen48) = 0;
    LODWORD(currentDevice74) = 0;
    LODWORD(currentDevice55) = 0;
    LODWORD(mainScreen59) = 0;
    LODWORD(currentDevice64) = 0;
    LODWORD(currentDevice67) = 0;
    LODWORD(mainScreen52) = 0;
    LODWORD(mainScreen60) = 0;
    LODWORD(currentDevice54) = 0;
    LODWORD(mainScreen61) = 0;
    LODWORD(currentDevice66) = 0;
    LODWORD(currentDevice69) = 0;
    LODWORD(mainScreen51) = 0;
    LODWORD(mainScreen63) = 0;
    LODWORD(currentDevice52) = 0;
    LODWORD(currentDevice75) = 0;
    LODWORD(rect_24) = 0;
    LODWORD(currentDevice70) = 0;
    LODWORD(currentDevice53) = 0;
    v504 = 0;
    LODWORD(currentDevice50) = 0;
    LODWORD(currentDevice68) = 0;
    LODWORD(mainScreen62) = 0;
    v501 = 0;
    LODWORD(currentDevice51) = 0;
    LODWORD(mainScreen65) = 0;
    v451 = 0;
    v495 = 0;
    LODWORD(rect_16) = 0;
    LODWORD(currentDevice49) = 0;
    rect_12 = 0;
    v453 = 0;
    HIDWORD(v489) = 0;
    LODWORD(currentDevice71) = 0;
    HIDWORD(v485) = 0;
    LODWORD(currentDevice72) = 0;
    v455 = 0;
    LODWORD(mainScreen64) = 0;
    LODWORD(mainScreen67) = 0;
    v481 = 0;
    LODWORD(currentDevice73) = 0;
    v457 = 0;
    LODWORD(mainScreen68) = 0;
    v475 = 0;
    v473 = 0;
    v471 = 0;
    v459 = 0;
    v469 = 0;
    v465 = 0;
    v463 = 0;
    v461 = 0;
    v59 = 0;
    v60 = 0;
    v467 = 0;
    v477 = 0;
    v479 = 0;
    LODWORD(v483) = 0;
    v68 = 0.0;
    HIDWORD(v483) = v113 ^ 1;
    goto LABEL_133;
  }

  currentDevice28 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice28 userInterfaceIdiom] == 1)
  {
    goto LABEL_592;
  }

LABEL_586:
  constrained = (v113 ^ 1u);
  HIDWORD(v483) = v113 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_590:
    HIDWORD(v481) = 0;
    LODWORD(v483) = 0;
    goto LABEL_692;
  }

  v114 = __sb__runningInSpringBoard();
  if (v114)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_590;
    }
  }

  else
  {
    currentDevice29 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice29 userInterfaceIdiom])
    {
      HIDWORD(v481) = 0;
      LODWORD(v483) = 1;
      goto LABEL_692;
    }
  }

  constrained = (v114 ^ 1u);
  LODWORD(v483) = v114 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v125 = __sb__runningInSpringBoard();
    if (v125)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen26 _referenceBounds];
    }

    HIDWORD(v481) = v125 ^ 1;
    BSSizeRoundForScale();
    if (v133 >= *(MEMORY[0x277D66E30] + 200))
    {
      currentDevice76 = 0;
      LODWORD(mainScreen54) = 0;
      v63 = 0;
      LODWORD(mainScreen70) = 0;
      LODWORD(mainScreen49) = 0;
      LODWORD(mainScreen50) = 0;
      LODWORD(mainScreen53) = 0;
      LODWORD(currentDevice57) = 0;
      v64 = 0;
      LODWORD(currentDevice56) = 0;
      mainScreen72 = 0;
      LODWORD(currentDevice59) = 0;
      LODWORD(currentDevice60) = 0;
      LODWORD(currentDevice58) = 0;
      v66 = 0;
      LODWORD(mainScreen55) = 0;
      LODWORD(mainScreen71) = 0;
      LODWORD(currentDevice61) = 0;
      LODWORD(currentDevice62) = 0;
      LODWORD(mainScreen66) = 0;
      LODWORD(mainScreen57) = 0;
      v67 = 0;
      LODWORD(currentDevice63) = 0;
      LODWORD(mainScreen69) = 0;
      LODWORD(currentDevice65) = 0;
      LODWORD(mainScreen58) = 0;
      LODWORD(mainScreen56) = 0;
      LODWORD(mainScreen48) = 0;
      LODWORD(currentDevice74) = 0;
      LODWORD(currentDevice55) = 0;
      LODWORD(mainScreen59) = 0;
      LODWORD(currentDevice64) = 0;
      LODWORD(currentDevice67) = 0;
      LODWORD(mainScreen52) = 0;
      LODWORD(mainScreen60) = 0;
      LODWORD(currentDevice54) = 0;
      LODWORD(mainScreen61) = 0;
      LODWORD(currentDevice66) = 0;
      LODWORD(currentDevice69) = 0;
      LODWORD(mainScreen51) = 0;
      LODWORD(mainScreen63) = 0;
      LODWORD(currentDevice52) = 0;
      LODWORD(currentDevice75) = 0;
      LODWORD(rect_24) = 0;
      LODWORD(currentDevice70) = 0;
      LODWORD(currentDevice53) = 0;
      v504 = 0;
      LODWORD(currentDevice50) = 0;
      LODWORD(currentDevice68) = 0;
      LODWORD(mainScreen62) = 0;
      v501 = 0;
      LODWORD(currentDevice51) = 0;
      LODWORD(mainScreen65) = 0;
      v451 = 0;
      v495 = 0;
      LODWORD(rect_16) = 0;
      LODWORD(currentDevice49) = 0;
      rect_12 = 0;
      v453 = 0;
      HIDWORD(v489) = 0;
      LODWORD(currentDevice71) = 0;
      HIDWORD(v485) = 0;
      LODWORD(currentDevice72) = 0;
      v455 = 0;
      LODWORD(mainScreen64) = 0;
      LODWORD(mainScreen67) = 0;
      LODWORD(v481) = 0;
      LODWORD(currentDevice73) = 0;
      v457 = 0;
      LODWORD(mainScreen68) = 0;
      v475 = 0;
      v473 = 0;
      v471 = 0;
      v459 = 0;
      v469 = 0;
      v465 = 0;
      v463 = 0;
      v461 = 0;
      v59 = 0;
      v60 = 0;
      v467 = 0;
      v477 = 0;
      v479 = 0;
      v68 = 0.0;
      goto LABEL_133;
    }
  }

  else
  {
    HIDWORD(v481) = 0;
  }

LABEL_692:
  v126 = __sb__runningInSpringBoard();
  if (v126)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v479 = 0;
      goto LABEL_702;
    }
  }

  else
  {
    currentDevice30 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice30 userInterfaceIdiom])
    {
      v479 = 0x100000000;
      goto LABEL_702;
    }
  }

  HIDWORD(v479) = v126 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v127 = __sb__runningInSpringBoard();
    if (v127)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen27 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen27 _referenceBounds];
    }

    LODWORD(v479) = v127 ^ 1;
    BSSizeRoundForScale();
    if (v128 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_706;
    }
  }

  else
  {
    LODWORD(v479) = 0;
  }

LABEL_702:
  if (_SBF_Private_IsD94Like())
  {
    currentDevice76 = 0;
    LODWORD(mainScreen54) = 0;
    v63 = 0;
    LODWORD(mainScreen70) = 0;
    LODWORD(mainScreen49) = 0;
    LODWORD(mainScreen50) = 0;
    LODWORD(mainScreen53) = 0;
    LODWORD(currentDevice57) = 0;
    v64 = 0;
    LODWORD(currentDevice56) = 0;
    mainScreen72 = 0;
    LODWORD(currentDevice59) = 0;
    LODWORD(currentDevice60) = 0;
    LODWORD(currentDevice58) = 0;
    v66 = 0;
    LODWORD(mainScreen55) = 0;
    LODWORD(mainScreen71) = 0;
    LODWORD(currentDevice61) = 0;
    LODWORD(currentDevice62) = 0;
    LODWORD(mainScreen66) = 0;
    LODWORD(mainScreen57) = 0;
    v67 = 0;
    LODWORD(currentDevice63) = 0;
    LODWORD(mainScreen69) = 0;
    LODWORD(currentDevice65) = 0;
    LODWORD(mainScreen58) = 0;
    LODWORD(mainScreen56) = 0;
    LODWORD(mainScreen48) = 0;
    LODWORD(currentDevice74) = 0;
    LODWORD(currentDevice55) = 0;
    LODWORD(mainScreen59) = 0;
    LODWORD(currentDevice64) = 0;
    LODWORD(currentDevice67) = 0;
    LODWORD(mainScreen52) = 0;
    LODWORD(mainScreen60) = 0;
    LODWORD(currentDevice54) = 0;
    LODWORD(mainScreen61) = 0;
    LODWORD(currentDevice66) = 0;
    LODWORD(currentDevice69) = 0;
    LODWORD(mainScreen51) = 0;
    LODWORD(mainScreen63) = 0;
    LODWORD(currentDevice52) = 0;
    LODWORD(currentDevice75) = 0;
    LODWORD(rect_24) = 0;
    LODWORD(currentDevice70) = 0;
    LODWORD(currentDevice53) = 0;
    v504 = 0;
    LODWORD(currentDevice50) = 0;
    LODWORD(currentDevice68) = 0;
    LODWORD(mainScreen62) = 0;
    v501 = 0;
    LODWORD(currentDevice51) = 0;
    LODWORD(mainScreen65) = 0;
    v451 = 0;
    v495 = 0;
    LODWORD(rect_16) = 0;
    LODWORD(currentDevice49) = 0;
    rect_12 = 0;
    v453 = 0;
    HIDWORD(v489) = 0;
    LODWORD(currentDevice71) = 0;
    HIDWORD(v485) = 0;
    LODWORD(currentDevice72) = 0;
    v455 = 0;
    LODWORD(mainScreen64) = 0;
    LODWORD(mainScreen67) = 0;
    LODWORD(v481) = 0;
    LODWORD(currentDevice73) = 0;
    v457 = 0;
    LODWORD(mainScreen68) = 0;
    v475 = 0;
    v473 = 0;
    v471 = 0;
    v459 = 0;
    v469 = 0;
    v465 = 0;
    v463 = 0;
    v461 = 0;
    v59 = 0;
    v60 = 0;
    v467 = 0;
    v477 = 0;
    v68 = 0.0;
    goto LABEL_133;
  }

LABEL_706:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_710:
    v477 = 0;
    goto LABEL_787;
  }

  v129 = __sb__runningInSpringBoard();
  if (v129)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_710;
    }
  }

  else
  {
    currentDevice31 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice31 userInterfaceIdiom])
    {
      v477 = 0x100000000;
      goto LABEL_787;
    }
  }

  constrained = (v129 ^ 1u);
  HIDWORD(v477) = v129 ^ 1;
  if (SBFEffectiveHomeButtonType() != 2)
  {
    LODWORD(v477) = 0;
    goto LABEL_787;
  }

  v146 = __sb__runningInSpringBoard();
  if (v146)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen28 _referenceBounds];
  }

  LODWORD(v477) = v146 ^ 1;
  BSSizeRoundForScale();
  if (v159 < *(MEMORY[0x277D66E30] + 136))
  {
LABEL_787:
    v147 = __sb__runningInSpringBoard();
    if (v147)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        HIDWORD(v473) = 0;
        LODWORD(v475) = 0;
        goto LABEL_797;
      }
    }

    else
    {
      currentDevice32 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice32 userInterfaceIdiom])
      {
        HIDWORD(v473) = 0;
        LODWORD(v475) = 1;
        goto LABEL_797;
      }
    }

    LODWORD(v475) = v147 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v148 = __sb__runningInSpringBoard();
      if (v148)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen29 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen29 _referenceBounds];
      }

      HIDWORD(v473) = v148 ^ 1;
      BSSizeRoundForScale();
      if (v149 >= *(MEMORY[0x277D66E30] + 136))
      {
        goto LABEL_801;
      }
    }

    else
    {
      HIDWORD(v473) = 0;
    }

LABEL_797:
    if (_SBF_Private_IsD64Like())
    {
      currentDevice76 = 0;
      LODWORD(mainScreen54) = 0;
      v63 = 0;
      LODWORD(mainScreen70) = 0;
      LODWORD(mainScreen49) = 0;
      LODWORD(mainScreen50) = 0;
      LODWORD(mainScreen53) = 0;
      LODWORD(currentDevice57) = 0;
      v64 = 0;
      LODWORD(currentDevice56) = 0;
      mainScreen72 = 0;
      LODWORD(currentDevice59) = 0;
      LODWORD(currentDevice60) = 0;
      LODWORD(currentDevice58) = 0;
      v66 = 0;
      LODWORD(mainScreen55) = 0;
      LODWORD(mainScreen71) = 0;
      LODWORD(currentDevice61) = 0;
      LODWORD(currentDevice62) = 0;
      LODWORD(mainScreen66) = 0;
      LODWORD(mainScreen57) = 0;
      v67 = 0;
      LODWORD(currentDevice63) = 0;
      LODWORD(mainScreen69) = 0;
      LODWORD(currentDevice65) = 0;
      LODWORD(mainScreen58) = 0;
      LODWORD(mainScreen56) = 0;
      LODWORD(mainScreen48) = 0;
      LODWORD(currentDevice74) = 0;
      LODWORD(currentDevice55) = 0;
      LODWORD(mainScreen59) = 0;
      LODWORD(currentDevice64) = 0;
      LODWORD(currentDevice67) = 0;
      LODWORD(mainScreen52) = 0;
      LODWORD(mainScreen60) = 0;
      LODWORD(currentDevice54) = 0;
      LODWORD(mainScreen61) = 0;
      LODWORD(currentDevice66) = 0;
      LODWORD(currentDevice69) = 0;
      LODWORD(mainScreen51) = 0;
      LODWORD(mainScreen63) = 0;
      LODWORD(currentDevice52) = 0;
      LODWORD(currentDevice75) = 0;
      LODWORD(rect_24) = 0;
      LODWORD(currentDevice70) = 0;
      LODWORD(currentDevice53) = 0;
      v504 = 0;
      LODWORD(currentDevice50) = 0;
      LODWORD(currentDevice68) = 0;
      LODWORD(mainScreen62) = 0;
      v501 = 0;
      LODWORD(currentDevice51) = 0;
      LODWORD(mainScreen65) = 0;
      v451 = 0;
      v495 = 0;
      LODWORD(rect_16) = 0;
      LODWORD(currentDevice49) = 0;
      rect_12 = 0;
      v453 = 0;
      HIDWORD(v489) = 0;
      LODWORD(currentDevice71) = 0;
      HIDWORD(v485) = 0;
      LODWORD(currentDevice72) = 0;
      v455 = 0;
      LODWORD(mainScreen64) = 0;
      LODWORD(mainScreen67) = 0;
      LODWORD(v481) = 0;
      LODWORD(currentDevice73) = 0;
      v457 = 0;
      LODWORD(mainScreen68) = 0;
      HIDWORD(v475) = 0;
      LODWORD(v473) = 0;
      v471 = 0;
      v459 = 0;
      v469 = 0;
      v465 = 0;
      v463 = 0;
      v461 = 0;
      v59 = 0;
      v60 = 0;
      v467 = 0;
      v68 = -1.0;
      goto LABEL_133;
    }

LABEL_801:
    v150 = __sb__runningInSpringBoard();
    if (v150)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        HIDWORD(v469) = 0;
        HIDWORD(v471) = 0;
        goto LABEL_811;
      }
    }

    else
    {
      currentDevice33 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice33 userInterfaceIdiom])
      {
        HIDWORD(v469) = 0;
        HIDWORD(v471) = 1;
        goto LABEL_811;
      }
    }

    HIDWORD(v471) = v150 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v151 = __sb__runningInSpringBoard();
      if (v151)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen30 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen30 _referenceBounds];
      }

      HIDWORD(v469) = v151 ^ 1;
      BSSizeRoundForScale();
      if (v156 >= *(MEMORY[0x277D66E30] + 136))
      {
        currentDevice76 = 0;
        LODWORD(mainScreen54) = 0;
        v63 = 0;
        LODWORD(mainScreen70) = 0;
        LODWORD(mainScreen49) = 0;
        LODWORD(mainScreen50) = 0;
        LODWORD(mainScreen53) = 0;
        LODWORD(currentDevice57) = 0;
        v64 = 0;
        LODWORD(currentDevice56) = 0;
        mainScreen72 = 0;
        LODWORD(currentDevice59) = 0;
        LODWORD(currentDevice60) = 0;
        LODWORD(currentDevice58) = 0;
        v66 = 0;
        LODWORD(mainScreen55) = 0;
        LODWORD(mainScreen71) = 0;
        LODWORD(currentDevice61) = 0;
        LODWORD(currentDevice62) = 0;
        LODWORD(mainScreen66) = 0;
        LODWORD(mainScreen57) = 0;
        v67 = 0;
        LODWORD(currentDevice63) = 0;
        LODWORD(mainScreen69) = 0;
        LODWORD(currentDevice65) = 0;
        LODWORD(mainScreen58) = 0;
        LODWORD(mainScreen56) = 0;
        LODWORD(mainScreen48) = 0;
        LODWORD(currentDevice74) = 0;
        LODWORD(currentDevice55) = 0;
        LODWORD(mainScreen59) = 0;
        LODWORD(currentDevice64) = 0;
        LODWORD(currentDevice67) = 0;
        LODWORD(mainScreen52) = 0;
        LODWORD(mainScreen60) = 0;
        LODWORD(currentDevice54) = 0;
        LODWORD(mainScreen61) = 0;
        LODWORD(currentDevice66) = 0;
        LODWORD(currentDevice69) = 0;
        LODWORD(mainScreen51) = 0;
        LODWORD(mainScreen63) = 0;
        LODWORD(currentDevice52) = 0;
        LODWORD(currentDevice75) = 0;
        LODWORD(rect_24) = 0;
        LODWORD(currentDevice70) = 0;
        LODWORD(currentDevice53) = 0;
        v504 = 0;
        LODWORD(currentDevice50) = 0;
        LODWORD(currentDevice68) = 0;
        LODWORD(mainScreen62) = 0;
        v501 = 0;
        LODWORD(currentDevice51) = 0;
        LODWORD(mainScreen65) = 0;
        v451 = 0;
        v495 = 0;
        LODWORD(rect_16) = 0;
        LODWORD(currentDevice49) = 0;
        rect_12 = 0;
        v453 = 0;
        HIDWORD(v489) = 0;
        LODWORD(currentDevice71) = 0;
        HIDWORD(v485) = 0;
        LODWORD(currentDevice72) = 0;
        v455 = 0;
        LODWORD(mainScreen64) = 0;
        LODWORD(mainScreen67) = 0;
        LODWORD(v481) = 0;
        LODWORD(currentDevice73) = 0;
        v457 = 0;
        LODWORD(mainScreen68) = 0;
        HIDWORD(v475) = 0;
        LODWORD(v473) = 0;
        LODWORD(v471) = 0;
        v459 = 0;
        LODWORD(v469) = 0;
        v465 = 0;
        v463 = 0;
        v461 = 0;
        v59 = 0;
        v60 = 0;
        v467 = 0;
        v68 = 0.0;
        goto LABEL_133;
      }
    }

    else
    {
      HIDWORD(v469) = 0;
    }

LABEL_811:
    v152 = __sb__runningInSpringBoard();
    if (v152)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        v467 = 0;
        goto LABEL_834;
      }
    }

    else
    {
      currentDevice34 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice34 userInterfaceIdiom])
      {
        v467 = 0x100000000;
        goto LABEL_834;
      }
    }

    HIDWORD(v467) = v152 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v154 = __sb__runningInSpringBoard();
      if (v154)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen31 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen31 _referenceBounds];
      }

      LODWORD(v467) = v154 ^ 1;
      BSSizeRoundForScale();
      if (v166 >= *(MEMORY[0x277D66E30] + 136))
      {
        goto LABEL_871;
      }
    }

    else
    {
      LODWORD(v467) = 0;
    }

LABEL_834:
    if (_SBF_Private_IsD54())
    {
      currentDevice76 = 0;
      LODWORD(mainScreen54) = 0;
      v63 = 0;
      LODWORD(mainScreen70) = 0;
      LODWORD(mainScreen49) = 0;
      LODWORD(mainScreen50) = 0;
      LODWORD(mainScreen53) = 0;
      LODWORD(currentDevice57) = 0;
      v64 = 0;
      LODWORD(currentDevice56) = 0;
      mainScreen72 = 0;
      LODWORD(currentDevice59) = 0;
      LODWORD(currentDevice60) = 0;
      LODWORD(currentDevice58) = 0;
      v66 = 0;
      LODWORD(mainScreen55) = 0;
      LODWORD(mainScreen71) = 0;
      LODWORD(currentDevice61) = 0;
      LODWORD(currentDevice62) = 0;
      LODWORD(mainScreen66) = 0;
      LODWORD(mainScreen57) = 0;
      v67 = 0;
      LODWORD(currentDevice63) = 0;
      LODWORD(mainScreen69) = 0;
      LODWORD(currentDevice65) = 0;
      LODWORD(mainScreen58) = 0;
      LODWORD(mainScreen56) = 0;
      LODWORD(mainScreen48) = 0;
      LODWORD(currentDevice74) = 0;
      LODWORD(currentDevice55) = 0;
      LODWORD(mainScreen59) = 0;
      LODWORD(currentDevice64) = 0;
      LODWORD(currentDevice67) = 0;
      LODWORD(mainScreen52) = 0;
      LODWORD(mainScreen60) = 0;
      LODWORD(currentDevice54) = 0;
      LODWORD(mainScreen61) = 0;
      LODWORD(currentDevice66) = 0;
      LODWORD(currentDevice69) = 0;
      LODWORD(mainScreen51) = 0;
      LODWORD(mainScreen63) = 0;
      LODWORD(currentDevice52) = 0;
      LODWORD(currentDevice75) = 0;
      LODWORD(rect_24) = 0;
      LODWORD(currentDevice70) = 0;
      LODWORD(currentDevice53) = 0;
      v504 = 0;
      LODWORD(currentDevice50) = 0;
      LODWORD(currentDevice68) = 0;
      LODWORD(mainScreen62) = 0;
      v501 = 0;
      LODWORD(currentDevice51) = 0;
      LODWORD(mainScreen65) = 0;
      v451 = 0;
      v495 = 0;
      LODWORD(rect_16) = 0;
      LODWORD(currentDevice49) = 0;
      rect_12 = 0;
      v453 = 0;
      HIDWORD(v489) = 0;
      LODWORD(currentDevice71) = 0;
      HIDWORD(v485) = 0;
      LODWORD(currentDevice72) = 0;
      v455 = 0;
      LODWORD(mainScreen64) = 0;
      LODWORD(mainScreen67) = 0;
      LODWORD(v481) = 0;
      LODWORD(currentDevice73) = 0;
      v457 = 0;
      LODWORD(mainScreen68) = 0;
      HIDWORD(v475) = 0;
      LODWORD(v473) = 0;
      LODWORD(v471) = 0;
      v459 = 0;
      LODWORD(v469) = 0;
      v465 = 0;
      v463 = 0;
      v461 = 0;
      v59 = 0;
      v60 = 0;
      v68 = 0.0;
      goto LABEL_133;
    }

LABEL_871:
    v167 = __sb__runningInSpringBoard();
    if (v167)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        LODWORD(v463) = 0;
        LODWORD(v465) = 0;
        goto LABEL_891;
      }
    }

    else
    {
      currentDevice35 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice35 userInterfaceIdiom])
      {
        LODWORD(v463) = 0;
        LODWORD(v465) = 1;
        goto LABEL_891;
      }
    }

    LODWORD(v465) = v167 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v172 = __sb__runningInSpringBoard();
      if (v172)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen32 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen32 _referenceBounds];
      }

      constrained = (v172 ^ 1u);
      BSSizeRoundForScale();
      LODWORD(v463) = v172 ^ 1;
      if (v179 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
      {
        currentDevice76 = 0;
        LODWORD(mainScreen54) = 0;
        v63 = 0;
        LODWORD(mainScreen70) = 0;
        LODWORD(mainScreen49) = 0;
        LODWORD(mainScreen50) = 0;
        LODWORD(mainScreen53) = 0;
        LODWORD(currentDevice57) = 0;
        v64 = 0;
        LODWORD(currentDevice56) = 0;
        mainScreen72 = 0;
        LODWORD(currentDevice59) = 0;
        LODWORD(currentDevice60) = 0;
        LODWORD(currentDevice58) = 0;
        v66 = 0;
        LODWORD(mainScreen55) = 0;
        LODWORD(mainScreen71) = 0;
        LODWORD(currentDevice61) = 0;
        LODWORD(currentDevice62) = 0;
        LODWORD(mainScreen66) = 0;
        LODWORD(mainScreen57) = 0;
        v67 = 0;
        LODWORD(currentDevice63) = 0;
        LODWORD(mainScreen69) = 0;
        LODWORD(currentDevice65) = 0;
        LODWORD(mainScreen58) = 0;
        LODWORD(mainScreen56) = 0;
        LODWORD(mainScreen48) = 0;
        LODWORD(currentDevice74) = 0;
        LODWORD(currentDevice55) = 0;
        LODWORD(mainScreen59) = 0;
        LODWORD(currentDevice64) = 0;
        LODWORD(currentDevice67) = 0;
        LODWORD(mainScreen52) = 0;
        LODWORD(mainScreen60) = 0;
        LODWORD(currentDevice54) = 0;
        LODWORD(mainScreen61) = 0;
        LODWORD(currentDevice66) = 0;
        LODWORD(currentDevice69) = 0;
        LODWORD(mainScreen51) = 0;
        LODWORD(mainScreen63) = 0;
        LODWORD(currentDevice52) = 0;
        LODWORD(currentDevice75) = 0;
        LODWORD(rect_24) = 0;
        LODWORD(currentDevice70) = 0;
        LODWORD(currentDevice53) = 0;
        v504 = 0;
        LODWORD(currentDevice50) = 0;
        LODWORD(currentDevice68) = 0;
        LODWORD(mainScreen62) = 0;
        v501 = 0;
        LODWORD(currentDevice51) = 0;
        LODWORD(mainScreen65) = 0;
        v451 = 0;
        v495 = 0;
        LODWORD(rect_16) = 0;
        LODWORD(currentDevice49) = 0;
        rect_12 = 0;
        v453 = 0;
        HIDWORD(v489) = 0;
        LODWORD(currentDevice71) = 0;
        HIDWORD(v485) = 0;
        LODWORD(currentDevice72) = 0;
        v455 = 0;
        LODWORD(mainScreen64) = 0;
        LODWORD(mainScreen67) = 0;
        LODWORD(v481) = 0;
        LODWORD(currentDevice73) = 0;
        v457 = 0;
        LODWORD(mainScreen68) = 0;
        HIDWORD(v475) = 0;
        LODWORD(v473) = 0;
        LODWORD(v471) = 0;
        v459 = 0;
        LODWORD(v469) = 0;
        HIDWORD(v465) = 0;
        HIDWORD(v463) = 0;
        v461 = 0;
        v59 = 0;
        v68 = 0.0;
        goto LABEL_135;
      }
    }

    else
    {
      LODWORD(v463) = 0;
    }

LABEL_891:
    v173 = __sb__runningInSpringBoard();
    if (v173)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        HIDWORD(v459) = 0;
        LODWORD(v461) = 0;
        goto LABEL_908;
      }
    }

    else
    {
      currentDevice36 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice36 userInterfaceIdiom])
      {
        HIDWORD(v459) = 0;
        LODWORD(v461) = 1;
        goto LABEL_908;
      }
    }

    LODWORD(v461) = v173 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v175 = __sb__runningInSpringBoard();
      if (v175)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen33 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen33 _referenceBounds];
      }

      HIDWORD(v459) = v175 ^ 1;
      BSSizeRoundForScale();
      if (v182 >= *(MEMORY[0x277D66E30] + 120))
      {
        goto LABEL_955;
      }
    }

    else
    {
      HIDWORD(v459) = 0;
    }

LABEL_908:
    if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
    {
      currentDevice76 = 0;
      LODWORD(mainScreen54) = 0;
      v63 = 0;
      LODWORD(mainScreen70) = 0;
      LODWORD(mainScreen49) = 0;
      LODWORD(mainScreen50) = 0;
      LODWORD(mainScreen53) = 0;
      LODWORD(currentDevice57) = 0;
      v64 = 0;
      LODWORD(currentDevice56) = 0;
      mainScreen72 = 0;
      LODWORD(currentDevice59) = 0;
      LODWORD(currentDevice60) = 0;
      LODWORD(currentDevice58) = 0;
      v66 = 0;
      LODWORD(mainScreen55) = 0;
      LODWORD(mainScreen71) = 0;
      LODWORD(currentDevice61) = 0;
      LODWORD(currentDevice62) = 0;
      LODWORD(mainScreen66) = 0;
      LODWORD(mainScreen57) = 0;
      v67 = 0;
      LODWORD(currentDevice63) = 0;
      LODWORD(mainScreen69) = 0;
      LODWORD(currentDevice65) = 0;
      LODWORD(mainScreen58) = 0;
      LODWORD(mainScreen56) = 0;
      LODWORD(mainScreen48) = 0;
      LODWORD(currentDevice74) = 0;
      LODWORD(currentDevice55) = 0;
      LODWORD(mainScreen59) = 0;
      LODWORD(currentDevice64) = 0;
      LODWORD(currentDevice67) = 0;
      LODWORD(mainScreen52) = 0;
      LODWORD(mainScreen60) = 0;
      LODWORD(currentDevice54) = 0;
      LODWORD(mainScreen61) = 0;
      LODWORD(currentDevice66) = 0;
      LODWORD(currentDevice69) = 0;
      LODWORD(mainScreen51) = 0;
      LODWORD(mainScreen63) = 0;
      LODWORD(currentDevice52) = 0;
      LODWORD(currentDevice75) = 0;
      LODWORD(rect_24) = 0;
      LODWORD(currentDevice70) = 0;
      LODWORD(currentDevice53) = 0;
      v504 = 0;
      LODWORD(currentDevice50) = 0;
      LODWORD(currentDevice68) = 0;
      LODWORD(mainScreen62) = 0;
      v501 = 0;
      LODWORD(currentDevice51) = 0;
      LODWORD(mainScreen65) = 0;
      v451 = 0;
      v495 = 0;
      LODWORD(rect_16) = 0;
      LODWORD(currentDevice49) = 0;
      rect_12 = 0;
      v453 = 0;
      HIDWORD(v489) = 0;
      LODWORD(currentDevice71) = 0;
      HIDWORD(v485) = 0;
      LODWORD(currentDevice72) = 0;
      v455 = 0;
      LODWORD(mainScreen64) = 0;
      LODWORD(mainScreen67) = 0;
      LODWORD(v481) = 0;
      LODWORD(currentDevice73) = 0;
      v457 = 0;
      LODWORD(mainScreen68) = 0;
      HIDWORD(v475) = 0;
      LODWORD(v473) = 0;
      LODWORD(v471) = 0;
      LODWORD(v459) = 0;
      LODWORD(v469) = 0;
      HIDWORD(v465) = 0;
      HIDWORD(v463) = 0;
      HIDWORD(v461) = 0;
      v59 = 0;
      v68 = 0.0;
      goto LABEL_135;
    }

LABEL_955:
    if (!_SBF_Private_IsD93Like())
    {
LABEL_959:
      LODWORD(v459) = 0;
      HIDWORD(v457) = 0;
      goto LABEL_1019;
    }

    v183 = __sb__runningInSpringBoard();
    if (v183)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        goto LABEL_959;
      }
    }

    else
    {
      currentDevice37 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice37 userInterfaceIdiom])
      {
        LODWORD(v459) = 0;
        HIDWORD(v457) = 1;
        goto LABEL_1019;
      }
    }

    HIDWORD(v457) = v183 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v192 = __sb__runningInSpringBoard();
      if (v192)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen34 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen34 _referenceBounds];
      }

      LODWORD(v459) = v192 ^ 1;
      BSSizeRoundForScale();
      if (v199 >= *(MEMORY[0x277D66E30] + 184))
      {
        currentDevice76 = 0;
        LODWORD(mainScreen54) = 0;
        v63 = 0;
        LODWORD(mainScreen70) = 0;
        LODWORD(mainScreen49) = 0;
        LODWORD(mainScreen50) = 0;
        LODWORD(mainScreen53) = 0;
        LODWORD(currentDevice57) = 0;
        v64 = 0;
        LODWORD(currentDevice56) = 0;
        mainScreen72 = 0;
        LODWORD(currentDevice59) = 0;
        LODWORD(currentDevice60) = 0;
        LODWORD(currentDevice58) = 0;
        v66 = 0;
        LODWORD(mainScreen55) = 0;
        LODWORD(mainScreen71) = 0;
        LODWORD(currentDevice61) = 0;
        LODWORD(currentDevice62) = 0;
        LODWORD(mainScreen66) = 0;
        LODWORD(mainScreen57) = 0;
        v67 = 0;
        LODWORD(currentDevice63) = 0;
        LODWORD(mainScreen69) = 0;
        LODWORD(currentDevice65) = 0;
        LODWORD(mainScreen58) = 0;
        LODWORD(mainScreen56) = 0;
        LODWORD(mainScreen48) = 0;
        LODWORD(currentDevice74) = 0;
        LODWORD(currentDevice55) = 0;
        LODWORD(mainScreen59) = 0;
        LODWORD(currentDevice64) = 0;
        LODWORD(currentDevice67) = 0;
        LODWORD(mainScreen52) = 0;
        LODWORD(mainScreen60) = 0;
        LODWORD(currentDevice54) = 0;
        LODWORD(mainScreen61) = 0;
        LODWORD(currentDevice66) = 0;
        LODWORD(currentDevice69) = 0;
        LODWORD(mainScreen51) = 0;
        LODWORD(mainScreen63) = 0;
        LODWORD(currentDevice52) = 0;
        LODWORD(currentDevice75) = 0;
        LODWORD(rect_24) = 0;
        LODWORD(currentDevice70) = 0;
        LODWORD(currentDevice53) = 0;
        v504 = 0;
        LODWORD(currentDevice50) = 0;
        LODWORD(currentDevice68) = 0;
        LODWORD(mainScreen62) = 0;
        v501 = 0;
        LODWORD(currentDevice51) = 0;
        LODWORD(mainScreen65) = 0;
        v451 = 0;
        v495 = 0;
        LODWORD(rect_16) = 0;
        LODWORD(currentDevice49) = 0;
        rect_12 = 0;
        v453 = 0;
        HIDWORD(v489) = 0;
        LODWORD(currentDevice71) = 0;
        HIDWORD(v485) = 0;
        LODWORD(currentDevice72) = 0;
        v455 = 0;
        LODWORD(mainScreen64) = 0;
        LODWORD(mainScreen67) = 0;
        LODWORD(v481) = 0;
        LODWORD(currentDevice73) = 0;
        LODWORD(v457) = 0;
        LODWORD(mainScreen68) = 0;
        HIDWORD(v475) = 0;
        LODWORD(v473) = 0;
        LODWORD(v471) = 0;
        LODWORD(v469) = 0;
        HIDWORD(v465) = 0;
        HIDWORD(v463) = 0;
        HIDWORD(v461) = 0;
        v59 = 0;
        v68 = 0.0;
        goto LABEL_135;
      }
    }

    else
    {
      LODWORD(v459) = 0;
    }

LABEL_1019:
    v193 = __sb__runningInSpringBoard();
    if (v193)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        LODWORD(v457) = 0;
        HIDWORD(v455) = 0;
        goto LABEL_1029;
      }
    }

    else
    {
      currentDevice38 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice38 userInterfaceIdiom])
      {
        LODWORD(v457) = 0;
        HIDWORD(v455) = 1;
        goto LABEL_1029;
      }
    }

    HIDWORD(v455) = v193 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v194 = __sb__runningInSpringBoard();
      if (v194)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen35 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen35 _referenceBounds];
      }

      LODWORD(v457) = v194 ^ 1;
      BSSizeRoundForScale();
      if (v195 >= *(MEMORY[0x277D66E30] + 184))
      {
        goto LABEL_1033;
      }
    }

    else
    {
      LODWORD(v457) = 0;
    }

LABEL_1029:
    if (_SBF_Private_IsD93Like())
    {
      currentDevice76 = 0;
      LODWORD(mainScreen54) = 0;
      v63 = 0;
      LODWORD(mainScreen70) = 0;
      LODWORD(mainScreen49) = 0;
      LODWORD(mainScreen50) = 0;
      LODWORD(mainScreen53) = 0;
      LODWORD(currentDevice57) = 0;
      v64 = 0;
      LODWORD(currentDevice56) = 0;
      mainScreen72 = 0;
      LODWORD(currentDevice59) = 0;
      LODWORD(currentDevice60) = 0;
      LODWORD(currentDevice58) = 0;
      v66 = 0;
      LODWORD(mainScreen55) = 0;
      LODWORD(mainScreen71) = 0;
      LODWORD(currentDevice61) = 0;
      LODWORD(currentDevice62) = 0;
      LODWORD(mainScreen66) = 0;
      LODWORD(mainScreen57) = 0;
      v67 = 0;
      LODWORD(currentDevice63) = 0;
      LODWORD(mainScreen69) = 0;
      LODWORD(currentDevice65) = 0;
      LODWORD(mainScreen58) = 0;
      LODWORD(mainScreen56) = 0;
      LODWORD(mainScreen48) = 0;
      LODWORD(currentDevice74) = 0;
      LODWORD(currentDevice55) = 0;
      LODWORD(mainScreen59) = 0;
      LODWORD(currentDevice64) = 0;
      LODWORD(currentDevice67) = 0;
      LODWORD(mainScreen52) = 0;
      LODWORD(mainScreen60) = 0;
      LODWORD(currentDevice54) = 0;
      LODWORD(mainScreen61) = 0;
      LODWORD(currentDevice66) = 0;
      LODWORD(currentDevice69) = 0;
      LODWORD(mainScreen51) = 0;
      LODWORD(mainScreen63) = 0;
      LODWORD(currentDevice52) = 0;
      LODWORD(currentDevice75) = 0;
      LODWORD(rect_24) = 0;
      LODWORD(currentDevice70) = 0;
      LODWORD(currentDevice53) = 0;
      v504 = 0;
      LODWORD(currentDevice50) = 0;
      LODWORD(currentDevice68) = 0;
      LODWORD(mainScreen62) = 0;
      v501 = 0;
      LODWORD(currentDevice51) = 0;
      LODWORD(mainScreen65) = 0;
      v451 = 0;
      v495 = 0;
      LODWORD(rect_16) = 0;
      LODWORD(currentDevice49) = 0;
      rect_12 = 0;
      v453 = 0;
      HIDWORD(v489) = 0;
      LODWORD(currentDevice71) = 0;
      HIDWORD(v485) = 0;
      LODWORD(currentDevice72) = 0;
      LODWORD(v455) = 0;
      LODWORD(mainScreen64) = 0;
      LODWORD(mainScreen67) = 0;
      LODWORD(v481) = 0;
      LODWORD(currentDevice73) = 0;
      LODWORD(mainScreen68) = 0;
      HIDWORD(v475) = 0;
      LODWORD(v473) = 0;
      LODWORD(v471) = 0;
      LODWORD(v469) = 0;
      HIDWORD(v465) = 0;
      HIDWORD(v463) = 0;
      HIDWORD(v461) = 0;
      v59 = 0;
      v68 = 0.0;
      goto LABEL_135;
    }

LABEL_1033:
    if (!_SBF_Private_IsD63Like())
    {
LABEL_1037:
      LODWORD(v455) = 0;
      HIDWORD(v453) = 0;
      goto LABEL_1113;
    }

    v196 = __sb__runningInSpringBoard();
    if (v196)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        goto LABEL_1037;
      }
    }

    else
    {
      constrained = [MEMORY[0x277D75418] currentDevice];
      constrainedCopy9 = constrained;
      if ([constrained userInterfaceIdiom])
      {
        LODWORD(v455) = 0;
        HIDWORD(v453) = 1;
        goto LABEL_1113;
      }
    }

    HIDWORD(v453) = v196 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v208 = __sb__runningInSpringBoard();
      if (v208)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen36 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen36 _referenceBounds];
      }

      LODWORD(v455) = v208 ^ 1;
      BSSizeRoundForScale();
      if (v217 >= *(MEMORY[0x277D66E30] + 104))
      {
        currentDevice76 = 0;
        LODWORD(mainScreen54) = 0;
        v63 = 0;
        LODWORD(mainScreen70) = 0;
        LODWORD(mainScreen49) = 0;
        LODWORD(mainScreen50) = 0;
        LODWORD(mainScreen53) = 0;
        LODWORD(currentDevice57) = 0;
        v64 = 0;
        LODWORD(currentDevice56) = 0;
        mainScreen72 = 0;
        LODWORD(currentDevice59) = 0;
        LODWORD(currentDevice60) = 0;
        LODWORD(currentDevice58) = 0;
        v66 = 0;
        LODWORD(mainScreen55) = 0;
        LODWORD(mainScreen71) = 0;
        LODWORD(currentDevice61) = 0;
        LODWORD(currentDevice62) = 0;
        LODWORD(mainScreen66) = 0;
        LODWORD(mainScreen57) = 0;
        v67 = 0;
        LODWORD(currentDevice63) = 0;
        LODWORD(mainScreen69) = 0;
        LODWORD(currentDevice65) = 0;
        LODWORD(mainScreen58) = 0;
        LODWORD(mainScreen56) = 0;
        LODWORD(mainScreen48) = 0;
        LODWORD(currentDevice74) = 0;
        LODWORD(currentDevice55) = 0;
        LODWORD(mainScreen59) = 0;
        LODWORD(currentDevice64) = 0;
        LODWORD(currentDevice67) = 0;
        LODWORD(mainScreen52) = 0;
        LODWORD(mainScreen60) = 0;
        LODWORD(currentDevice54) = 0;
        LODWORD(mainScreen61) = 0;
        LODWORD(currentDevice66) = 0;
        LODWORD(currentDevice69) = 0;
        LODWORD(mainScreen51) = 0;
        LODWORD(mainScreen63) = 0;
        LODWORD(currentDevice52) = 0;
        LODWORD(currentDevice75) = 0;
        LODWORD(rect_24) = 0;
        LODWORD(currentDevice70) = 0;
        LODWORD(currentDevice53) = 0;
        v504 = 0;
        LODWORD(currentDevice50) = 0;
        LODWORD(currentDevice68) = 0;
        LODWORD(mainScreen62) = 0;
        v501 = 0;
        LODWORD(currentDevice51) = 0;
        LODWORD(mainScreen65) = 0;
        v451 = 0;
        v495 = 0;
        LODWORD(rect_16) = 0;
        LODWORD(currentDevice49) = 0;
        rect_12 = 0;
        LODWORD(v453) = 0;
        HIDWORD(v489) = 0;
        LODWORD(currentDevice71) = 0;
        HIDWORD(v485) = 0;
        LODWORD(currentDevice72) = 0;
        LODWORD(mainScreen64) = 0;
        LODWORD(mainScreen67) = 0;
        LODWORD(v481) = 0;
        LODWORD(currentDevice73) = 0;
        LODWORD(mainScreen68) = 0;
        HIDWORD(v475) = 0;
        LODWORD(v473) = 0;
        LODWORD(v471) = 0;
        LODWORD(v469) = 0;
        HIDWORD(v465) = 0;
        HIDWORD(v463) = 0;
        HIDWORD(v461) = 0;
        v59 = 0;
        v68 = -1.0;
        v34 = v510;
        v33 = v511;
        goto LABEL_135;
      }

      v34 = v26;
      v33 = v511;
    }

    else
    {
      LODWORD(v455) = 0;
    }

LABEL_1113:
    v209 = __sb__runningInSpringBoard();
    if (v209)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        LODWORD(v453) = 0;
        HIDWORD(v451) = 0;
        goto LABEL_1123;
      }
    }

    else
    {
      currentDevice39 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice39 userInterfaceIdiom])
      {
        LODWORD(v453) = 0;
        HIDWORD(v451) = 1;
        goto LABEL_1123;
      }
    }

    HIDWORD(v451) = v209 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v210 = __sb__runningInSpringBoard();
      if (v210)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen37 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen37 _referenceBounds];
      }

      LODWORD(v453) = v210 ^ 1;
      BSSizeRoundForScale();
      if (v211 >= *(MEMORY[0x277D66E30] + 104))
      {
        goto LABEL_1127;
      }
    }

    else
    {
      LODWORD(v453) = 0;
    }

LABEL_1123:
    if (_SBF_Private_IsD63Like())
    {
      currentDevice76 = 0;
      LODWORD(mainScreen54) = 0;
      v63 = 0;
      LODWORD(mainScreen70) = 0;
      LODWORD(mainScreen49) = 0;
      LODWORD(mainScreen50) = 0;
      LODWORD(mainScreen53) = 0;
      LODWORD(currentDevice57) = 0;
      v64 = 0;
      LODWORD(currentDevice56) = 0;
      mainScreen72 = 0;
      LODWORD(currentDevice59) = 0;
      LODWORD(currentDevice60) = 0;
      LODWORD(currentDevice58) = 0;
      v66 = 0;
      LODWORD(mainScreen55) = 0;
      LODWORD(mainScreen71) = 0;
      LODWORD(currentDevice61) = 0;
      LODWORD(currentDevice62) = 0;
      LODWORD(mainScreen66) = 0;
      LODWORD(mainScreen57) = 0;
      v67 = 0;
      LODWORD(currentDevice63) = 0;
      LODWORD(mainScreen69) = 0;
      LODWORD(currentDevice65) = 0;
      LODWORD(mainScreen58) = 0;
      LODWORD(mainScreen56) = 0;
      LODWORD(mainScreen48) = 0;
      LODWORD(currentDevice74) = 0;
      LODWORD(currentDevice55) = 0;
      LODWORD(mainScreen59) = 0;
      LODWORD(currentDevice64) = 0;
      LODWORD(currentDevice67) = 0;
      LODWORD(mainScreen52) = 0;
      LODWORD(mainScreen60) = 0;
      LODWORD(currentDevice54) = 0;
      LODWORD(mainScreen61) = 0;
      LODWORD(currentDevice66) = 0;
      LODWORD(currentDevice69) = 0;
      LODWORD(mainScreen51) = 0;
      LODWORD(mainScreen63) = 0;
      LODWORD(currentDevice52) = 0;
      LODWORD(currentDevice75) = 0;
      LODWORD(rect_24) = 0;
      LODWORD(currentDevice70) = 0;
      LODWORD(currentDevice53) = 0;
      v504 = 0;
      LODWORD(currentDevice50) = 0;
      LODWORD(currentDevice68) = 0;
      LODWORD(mainScreen62) = 0;
      v501 = 0;
      LODWORD(currentDevice51) = 0;
      LODWORD(mainScreen65) = 0;
      LODWORD(v451) = 0;
      v495 = 0;
      LODWORD(rect_16) = 0;
      LODWORD(currentDevice49) = 0;
      rect_12 = 0;
      HIDWORD(v489) = 0;
      LODWORD(currentDevice71) = 0;
      HIDWORD(v485) = 0;
      LODWORD(currentDevice72) = 0;
      LODWORD(mainScreen64) = 0;
      LODWORD(mainScreen67) = 0;
      LODWORD(v481) = 0;
      LODWORD(currentDevice73) = 0;
      LODWORD(mainScreen68) = 0;
      HIDWORD(v475) = 0;
      LODWORD(v473) = 0;
      LODWORD(v471) = 0;
      LODWORD(v469) = 0;
      HIDWORD(v465) = 0;
      HIDWORD(v463) = 0;
      HIDWORD(v461) = 0;
      v59 = 0;
      v68 = -1.0;
      goto LABEL_135;
    }

LABEL_1127:
    if (!_SBF_Private_IsD23Like())
    {
      LODWORD(v451) = 0;
      LODWORD(currentDevice49) = 0;
      goto LABEL_1238;
    }

    v212 = MidX;
    v213 = __sb__runningInSpringBoard();
    if (v213)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        LODWORD(v451) = 0;
        LODWORD(currentDevice49) = 0;
LABEL_1237:
        v34 = v26;
        v33 = v511;
LABEL_1238:
        v233 = __sb__runningInSpringBoard();
        if (v233)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(currentDevice50) = 0;
            LODWORD(currentDevice51) = 0;
            goto LABEL_1248;
          }
        }

        else
        {
          constrained = [MEMORY[0x277D75418] currentDevice];
          constrainedCopy10 = constrained;
          if ([constrained userInterfaceIdiom])
          {
            LODWORD(currentDevice50) = 0;
            LODWORD(currentDevice51) = 1;
            goto LABEL_1248;
          }
        }

        LODWORD(currentDevice51) = v233 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v234 = __sb__runningInSpringBoard();
          if (v234)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen38 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen38 _referenceBounds];
          }

          LODWORD(currentDevice50) = v234 ^ 1;
          BSSizeRoundForScale();
          v34 = v26;
          v33 = v511;
          if (v235 >= *(MEMORY[0x277D66E30] + 216))
          {
            goto LABEL_1252;
          }
        }

        else
        {
          LODWORD(currentDevice50) = 0;
        }

LABEL_1248:
        if (_SBF_Private_IsD23Like())
        {
          currentDevice76 = 0;
          LODWORD(mainScreen54) = 0;
          v63 = 0;
          LODWORD(mainScreen70) = 0;
          LODWORD(mainScreen49) = 0;
          LODWORD(mainScreen50) = 0;
          LODWORD(mainScreen53) = 0;
          LODWORD(currentDevice57) = 0;
          v64 = 0;
          LODWORD(currentDevice56) = 0;
          mainScreen72 = 0;
          LODWORD(currentDevice59) = 0;
          LODWORD(currentDevice60) = 0;
          LODWORD(currentDevice58) = 0;
          v66 = 0;
          LODWORD(mainScreen55) = 0;
          LODWORD(mainScreen71) = 0;
          LODWORD(currentDevice61) = 0;
          LODWORD(currentDevice62) = 0;
          LODWORD(mainScreen66) = 0;
          LODWORD(mainScreen57) = 0;
          v67 = 0;
          LODWORD(currentDevice63) = 0;
          LODWORD(mainScreen69) = 0;
          LODWORD(currentDevice65) = 0;
          LODWORD(mainScreen58) = 0;
          LODWORD(mainScreen56) = 0;
          LODWORD(mainScreen48) = 0;
          LODWORD(currentDevice74) = 0;
          LODWORD(currentDevice55) = 0;
          LODWORD(mainScreen59) = 0;
          LODWORD(currentDevice64) = 0;
          LODWORD(currentDevice67) = 0;
          LODWORD(mainScreen52) = 0;
          LODWORD(mainScreen60) = 0;
          LODWORD(currentDevice54) = 0;
          LODWORD(mainScreen61) = 0;
          LODWORD(currentDevice66) = 0;
          LODWORD(currentDevice69) = 0;
          LODWORD(mainScreen51) = 0;
          LODWORD(mainScreen63) = 0;
          LODWORD(currentDevice52) = 0;
          LODWORD(currentDevice75) = 0;
          LODWORD(rect_24) = 0;
          LODWORD(currentDevice70) = 0;
          LODWORD(currentDevice53) = 0;
          v504 = 0;
          LODWORD(currentDevice68) = 0;
          LODWORD(mainScreen62) = 0;
          v501 = 0;
          LODWORD(mainScreen65) = 0;
          v495 = 0;
          LODWORD(rect_16) = 0;
          rect_12 = 0;
          HIDWORD(v489) = 0;
          LODWORD(currentDevice71) = 0;
          HIDWORD(v485) = 0;
          LODWORD(currentDevice72) = 0;
          LODWORD(mainScreen64) = 0;
          LODWORD(mainScreen67) = 0;
          LODWORD(v481) = 0;
          LODWORD(currentDevice73) = 0;
          LODWORD(mainScreen68) = 0;
          HIDWORD(v475) = 0;
          LODWORD(v473) = 0;
          LODWORD(v471) = 0;
          LODWORD(v469) = 0;
          HIDWORD(v465) = 0;
          HIDWORD(v463) = 0;
          HIDWORD(v461) = 0;
          v59 = 0;
          v68 = 0.0;
          goto LABEL_135;
        }

LABEL_1252:
        v212 = MidX;
        v236 = __sb__runningInSpringBoard();
        if (v236)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(currentDevice52) = 0;
            LODWORD(currentDevice53) = 0;
            goto LABEL_1262;
          }
        }

        else
        {
          currentDevice40 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice40 userInterfaceIdiom])
          {
            LODWORD(currentDevice52) = 0;
            LODWORD(currentDevice53) = 1;
            goto LABEL_1262;
          }
        }

        LODWORD(currentDevice53) = v236 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v237 = __sb__runningInSpringBoard();
          if (v237)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen39 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen39 _referenceBounds];
          }

          LODWORD(currentDevice52) = v237 ^ 1;
          BSSizeRoundForScale();
          if (v240 >= *(MEMORY[0x277D66E30] + 120))
          {
            currentDevice76 = 0;
            LODWORD(mainScreen54) = 0;
            v63 = 0;
            LODWORD(mainScreen70) = 0;
            LODWORD(mainScreen49) = 0;
            LODWORD(mainScreen50) = 0;
            LODWORD(mainScreen53) = 0;
            LODWORD(currentDevice57) = 0;
            v64 = 0;
            LODWORD(currentDevice56) = 0;
            mainScreen72 = 0;
            LODWORD(currentDevice59) = 0;
            LODWORD(currentDevice60) = 0;
            LODWORD(currentDevice58) = 0;
            v66 = 0;
            LODWORD(mainScreen55) = 0;
            LODWORD(mainScreen71) = 0;
            LODWORD(currentDevice61) = 0;
            LODWORD(currentDevice62) = 0;
            LODWORD(mainScreen66) = 0;
            LODWORD(mainScreen57) = 0;
            v67 = 0;
            LODWORD(currentDevice63) = 0;
            LODWORD(mainScreen69) = 0;
            LODWORD(currentDevice65) = 0;
            LODWORD(mainScreen58) = 0;
            LODWORD(mainScreen56) = 0;
            LODWORD(mainScreen48) = 0;
            LODWORD(currentDevice74) = 0;
            LODWORD(currentDevice55) = 0;
            LODWORD(mainScreen59) = 0;
            LODWORD(currentDevice64) = 0;
            LODWORD(currentDevice67) = 0;
            LODWORD(mainScreen52) = 0;
            LODWORD(mainScreen60) = 0;
            LODWORD(currentDevice54) = 0;
            LODWORD(mainScreen61) = 0;
            LODWORD(currentDevice66) = 0;
            LODWORD(currentDevice69) = 0;
            LODWORD(mainScreen51) = 0;
            LODWORD(mainScreen63) = 0;
            LODWORD(currentDevice75) = 0;
            LODWORD(rect_24) = 0;
            LODWORD(currentDevice70) = 0;
            v504 = 0;
            LODWORD(currentDevice68) = 0;
            LODWORD(mainScreen62) = 0;
            v501 = 0;
            LODWORD(mainScreen65) = 0;
            v495 = 0;
            LODWORD(rect_16) = 0;
            rect_12 = 0;
            HIDWORD(v489) = 0;
            LODWORD(currentDevice71) = 0;
            HIDWORD(v485) = 0;
            LODWORD(currentDevice72) = 0;
            LODWORD(mainScreen64) = 0;
            LODWORD(mainScreen67) = 0;
            LODWORD(v481) = 0;
            LODWORD(currentDevice73) = 0;
            LODWORD(mainScreen68) = 0;
            HIDWORD(v475) = 0;
            LODWORD(v473) = 0;
            LODWORD(v471) = 0;
            LODWORD(v469) = 0;
            HIDWORD(v465) = 0;
            HIDWORD(v463) = 0;
            HIDWORD(v461) = 0;
            v59 = 0;
            v68 = 0.0;
            goto LABEL_1369;
          }
        }

        else
        {
          LODWORD(currentDevice52) = 0;
        }

LABEL_1262:
        v238 = __sb__runningInSpringBoard();
        if (v238)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(currentDevice54) = 0;
            LODWORD(mainScreen51) = 0;
            goto LABEL_1272;
          }
        }

        else
        {
          currentDevice41 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice41 userInterfaceIdiom])
          {
            LODWORD(currentDevice54) = 0;
            LODWORD(mainScreen51) = 1;
            goto LABEL_1272;
          }
        }

        LODWORD(mainScreen51) = v238 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v239 = __sb__runningInSpringBoard();
          if (v239)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen40 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen40 _referenceBounds];
          }

          LODWORD(currentDevice54) = v239 ^ 1;
          BSSizeRoundForScale();
          if (v243 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_1289;
          }
        }

        else
        {
          LODWORD(currentDevice54) = 0;
        }

LABEL_1272:
        if (_SBF_Private_IsD33OrSimilarDevice())
        {
          currentDevice76 = 0;
          LODWORD(mainScreen54) = 0;
          v63 = 0;
          LODWORD(mainScreen70) = 0;
          LODWORD(mainScreen49) = 0;
          LODWORD(mainScreen50) = 0;
          LODWORD(mainScreen53) = 0;
          LODWORD(currentDevice57) = 0;
          v64 = 0;
          LODWORD(currentDevice56) = 0;
          mainScreen72 = 0;
          LODWORD(currentDevice59) = 0;
          LODWORD(currentDevice60) = 0;
          LODWORD(currentDevice58) = 0;
          v66 = 0;
          LODWORD(mainScreen55) = 0;
          LODWORD(mainScreen71) = 0;
          LODWORD(currentDevice61) = 0;
          LODWORD(currentDevice62) = 0;
          LODWORD(mainScreen66) = 0;
          LODWORD(mainScreen57) = 0;
          v67 = 0;
          LODWORD(currentDevice63) = 0;
          LODWORD(mainScreen69) = 0;
          LODWORD(currentDevice65) = 0;
          LODWORD(mainScreen58) = 0;
          LODWORD(mainScreen56) = 0;
          LODWORD(mainScreen48) = 0;
          LODWORD(currentDevice74) = 0;
          LODWORD(currentDevice55) = 0;
          LODWORD(mainScreen59) = 0;
          LODWORD(currentDevice64) = 0;
          LODWORD(currentDevice67) = 0;
          LODWORD(mainScreen52) = 0;
          LODWORD(mainScreen60) = 0;
          LODWORD(mainScreen61) = 0;
          LODWORD(currentDevice66) = 0;
          LODWORD(currentDevice69) = 0;
          LODWORD(mainScreen63) = 0;
          LODWORD(currentDevice75) = 0;
          LODWORD(rect_24) = 0;
          LODWORD(currentDevice70) = 0;
          v504 = 0;
          LODWORD(currentDevice68) = 0;
          LODWORD(mainScreen62) = 0;
          v501 = 0;
          LODWORD(mainScreen65) = 0;
          v495 = 0;
          LODWORD(rect_16) = 0;
          rect_12 = 0;
          HIDWORD(v489) = 0;
          LODWORD(currentDevice71) = 0;
          HIDWORD(v485) = 0;
          LODWORD(currentDevice72) = 0;
          LODWORD(mainScreen64) = 0;
          LODWORD(mainScreen67) = 0;
          LODWORD(v481) = 0;
          LODWORD(currentDevice73) = 0;
          LODWORD(mainScreen68) = 0;
          HIDWORD(v475) = 0;
          LODWORD(v473) = 0;
          LODWORD(v471) = 0;
          LODWORD(v469) = 0;
          HIDWORD(v465) = 0;
          HIDWORD(v463) = 0;
          HIDWORD(v461) = 0;
          v59 = 0;
          v68 = 0.0;
LABEL_1369:
          v34 = v510;
          v33 = v511;
          MidX = v212;
          goto LABEL_135;
        }

LABEL_1289:
        v244 = __sb__runningInSpringBoard();
        if (v244)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(currentDevice55) = 0;
            LODWORD(mainScreen52) = 0;
            goto LABEL_1320;
          }
        }

        else
        {
          currentDevice42 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice42 userInterfaceIdiom])
          {
            LODWORD(currentDevice55) = 0;
            LODWORD(mainScreen52) = 1;
            goto LABEL_1320;
          }
        }

        LODWORD(mainScreen52) = v244 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v248 = __sb__runningInSpringBoard();
          if (v248)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen41 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen41 _referenceBounds];
          }

          LODWORD(currentDevice55) = v248 ^ 1;
          BSSizeRoundForScale();
          if (v254 >= *(MEMORY[0x277D66E30] + 104))
          {
            currentDevice76 = 0;
            LODWORD(mainScreen54) = 0;
            v63 = 0;
            LODWORD(mainScreen70) = 0;
            LODWORD(mainScreen49) = 0;
            LODWORD(mainScreen50) = 0;
            LODWORD(mainScreen53) = 0;
            LODWORD(currentDevice57) = 0;
            v64 = 0;
            LODWORD(currentDevice56) = 0;
            mainScreen72 = 0;
            LODWORD(currentDevice59) = 0;
            LODWORD(currentDevice60) = 0;
            LODWORD(currentDevice58) = 0;
            v66 = 0;
            LODWORD(mainScreen55) = 0;
            LODWORD(mainScreen71) = 0;
            LODWORD(currentDevice61) = 0;
            LODWORD(currentDevice62) = 0;
            LODWORD(mainScreen66) = 0;
            LODWORD(mainScreen57) = 0;
            v67 = 0;
            LODWORD(currentDevice63) = 0;
            LODWORD(mainScreen69) = 0;
            LODWORD(currentDevice65) = 0;
            LODWORD(mainScreen58) = 0;
            LODWORD(mainScreen56) = 0;
            LODWORD(mainScreen48) = 0;
            LODWORD(currentDevice74) = 0;
            LODWORD(mainScreen59) = 0;
            LODWORD(currentDevice64) = 0;
            LODWORD(currentDevice67) = 0;
            LODWORD(mainScreen60) = 0;
            LODWORD(mainScreen61) = 0;
            LODWORD(currentDevice66) = 0;
            LODWORD(currentDevice69) = 0;
            LODWORD(mainScreen63) = 0;
            LODWORD(currentDevice75) = 0;
            LODWORD(rect_24) = 0;
            LODWORD(currentDevice70) = 0;
            v504 = 0;
            LODWORD(currentDevice68) = 0;
            LODWORD(mainScreen62) = 0;
            v501 = 0;
            LODWORD(mainScreen65) = 0;
            v495 = 0;
            LODWORD(rect_16) = 0;
            rect_12 = 0;
            HIDWORD(v489) = 0;
            LODWORD(currentDevice71) = 0;
            HIDWORD(v485) = 0;
            LODWORD(currentDevice72) = 0;
            LODWORD(mainScreen64) = 0;
            LODWORD(mainScreen67) = 0;
            LODWORD(v481) = 0;
            LODWORD(currentDevice73) = 0;
            LODWORD(mainScreen68) = 0;
            HIDWORD(v475) = 0;
            LODWORD(v473) = 0;
            LODWORD(v471) = 0;
            LODWORD(v469) = 0;
            HIDWORD(v465) = 0;
            HIDWORD(v463) = 0;
            HIDWORD(v461) = 0;
            v59 = 0;
            v68 = 0.0;
            goto LABEL_1369;
          }
        }

        else
        {
          LODWORD(currentDevice55) = 0;
        }

LABEL_1320:
        v249 = __sb__runningInSpringBoard();
        if (v249)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(mainScreen69) = 0;
            LODWORD(mainScreen48) = 0;
            goto LABEL_1336;
          }
        }

        else
        {
          currentDevice43 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice43 userInterfaceIdiom])
          {
            LODWORD(mainScreen69) = 0;
            LODWORD(mainScreen48) = 1;
            goto LABEL_1336;
          }
        }

        LODWORD(mainScreen48) = v249 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v251 = __sb__runningInSpringBoard();
          if (v251)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen42 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen42 _referenceBounds];
          }

          LODWORD(mainScreen69) = v251 ^ 1;
          BSSizeRoundForScale();
          if (v256 >= *(MEMORY[0x277D66E30] + 104))
          {
            goto LABEL_1361;
          }
        }

        else
        {
          LODWORD(mainScreen69) = 0;
        }

LABEL_1336:
        if (_SBF_Private_IsD53())
        {
LABEL_1365:
          currentDevice76 = 0;
          LODWORD(mainScreen54) = 0;
          v63 = 0;
          LODWORD(mainScreen70) = 0;
          LODWORD(mainScreen49) = 0;
          LODWORD(mainScreen50) = 0;
          LODWORD(mainScreen53) = 0;
          LODWORD(currentDevice57) = 0;
          v64 = 0;
          LODWORD(currentDevice56) = 0;
          mainScreen72 = 0;
          LODWORD(currentDevice59) = 0;
          LODWORD(currentDevice60) = 0;
          LODWORD(currentDevice58) = 0;
          v66 = 0;
          LODWORD(mainScreen55) = 0;
          LODWORD(mainScreen71) = 0;
          LODWORD(currentDevice61) = 0;
          LODWORD(currentDevice62) = 0;
          LODWORD(mainScreen66) = 0;
          LODWORD(mainScreen57) = 0;
          v67 = 0;
          LODWORD(currentDevice63) = 0;
          LODWORD(currentDevice65) = 0;
          LODWORD(mainScreen58) = 0;
          LODWORD(mainScreen56) = 0;
          LODWORD(currentDevice74) = 0;
          LODWORD(mainScreen59) = 0;
          LODWORD(currentDevice64) = 0;
          LODWORD(currentDevice67) = 0;
          LODWORD(mainScreen60) = 0;
          LODWORD(mainScreen61) = 0;
          LODWORD(currentDevice66) = 0;
          LODWORD(currentDevice69) = 0;
          LODWORD(mainScreen63) = 0;
          LODWORD(currentDevice75) = 0;
          LODWORD(rect_24) = 0;
          LODWORD(currentDevice70) = 0;
          v504 = 0;
          LODWORD(currentDevice68) = 0;
          LODWORD(mainScreen62) = 0;
          v501 = 0;
          LODWORD(mainScreen65) = 0;
          v495 = 0;
          LODWORD(rect_16) = 0;
          rect_12 = 0;
          HIDWORD(v489) = 0;
          LODWORD(currentDevice71) = 0;
          HIDWORD(v485) = 0;
          LODWORD(currentDevice72) = 0;
          LODWORD(mainScreen64) = 0;
          LODWORD(mainScreen67) = 0;
          LODWORD(v481) = 0;
          LODWORD(currentDevice73) = 0;
          LODWORD(mainScreen68) = 0;
          HIDWORD(v475) = 0;
          LODWORD(v473) = 0;
          LODWORD(v471) = 0;
          LODWORD(v469) = 0;
          HIDWORD(v465) = 0;
          HIDWORD(v463) = 0;
          HIDWORD(v461) = 0;
          v59 = 0;
          v68 = 0.0;
          goto LABEL_1369;
        }

LABEL_1361:
        if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0 || _SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
        {
          goto LABEL_1365;
        }

        v68 = 0.0;
        if (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0 || (_SBF_Private_IsD52ZoomedOrSimilarDevice())
        {
          currentDevice76 = 0;
          LODWORD(mainScreen54) = 0;
          v63 = 0;
          LODWORD(mainScreen70) = 0;
          LODWORD(mainScreen49) = 0;
          LODWORD(mainScreen50) = 0;
          LODWORD(mainScreen53) = 0;
          LODWORD(currentDevice57) = 0;
          v64 = 0;
          LODWORD(currentDevice56) = 0;
          mainScreen72 = 0;
          LODWORD(currentDevice59) = 0;
          LODWORD(currentDevice60) = 0;
          LODWORD(currentDevice58) = 0;
          v66 = 0;
          LODWORD(mainScreen55) = 0;
          LODWORD(mainScreen71) = 0;
          LODWORD(currentDevice61) = 0;
          LODWORD(currentDevice62) = 0;
          LODWORD(mainScreen66) = 0;
          LODWORD(mainScreen57) = 0;
          v67 = 0;
          LODWORD(currentDevice63) = 0;
          LODWORD(currentDevice65) = 0;
          LODWORD(mainScreen58) = 0;
          LODWORD(mainScreen56) = 0;
          LODWORD(currentDevice74) = 0;
          LODWORD(mainScreen59) = 0;
          LODWORD(currentDevice64) = 0;
          LODWORD(currentDevice67) = 0;
          LODWORD(mainScreen60) = 0;
          LODWORD(mainScreen61) = 0;
          LODWORD(currentDevice66) = 0;
          LODWORD(currentDevice69) = 0;
          LODWORD(mainScreen63) = 0;
          LODWORD(currentDevice75) = 0;
          LODWORD(rect_24) = 0;
          LODWORD(currentDevice70) = 0;
          v504 = 0;
          LODWORD(currentDevice68) = 0;
          LODWORD(mainScreen62) = 0;
          v501 = 0;
          LODWORD(mainScreen65) = 0;
          v495 = 0;
          LODWORD(rect_16) = 0;
          rect_12 = 0;
          HIDWORD(v489) = 0;
          LODWORD(currentDevice71) = 0;
          HIDWORD(v485) = 0;
          LODWORD(currentDevice72) = 0;
          LODWORD(mainScreen64) = 0;
          LODWORD(mainScreen67) = 0;
          LODWORD(v481) = 0;
          LODWORD(currentDevice73) = 0;
          LODWORD(mainScreen68) = 0;
          HIDWORD(v475) = 0;
          LODWORD(v473) = 0;
          LODWORD(v471) = 0;
          LODWORD(v469) = 0;
          HIDWORD(v465) = 0;
          HIDWORD(v463) = 0;
          HIDWORD(v461) = 0;
          v59 = 0;
          goto LABEL_1369;
        }

        v258 = __sb__runningInSpringBoard();
        if (v258)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(mainScreen71) = 0;
            v67 = 0;
            goto LABEL_1438;
          }
        }

        else
        {
          currentDevice44 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice44 userInterfaceIdiom])
          {
            LODWORD(mainScreen71) = 0;
            v67 = 1;
            goto LABEL_1438;
          }
        }

        v67 = v258 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v267 = __sb__runningInSpringBoard();
          if (v267)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen43 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen43 _referenceBounds];
          }

          LODWORD(mainScreen71) = v267 ^ 1;
          BSSizeRoundForScale();
          if (v278 >= *(MEMORY[0x277D66E30] + 88))
          {
            currentDevice76 = 0;
            LODWORD(mainScreen54) = 0;
            v63 = 0;
            LODWORD(mainScreen70) = 0;
            LODWORD(mainScreen49) = 0;
            LODWORD(mainScreen50) = 0;
            LODWORD(mainScreen53) = 0;
            LODWORD(currentDevice57) = 0;
            v64 = 0;
            LODWORD(currentDevice56) = 0;
            mainScreen72 = 0;
            LODWORD(currentDevice59) = 0;
            LODWORD(currentDevice60) = 0;
            LODWORD(currentDevice58) = 0;
            v66 = 0;
            LODWORD(mainScreen55) = 0;
            LODWORD(currentDevice61) = 0;
            LODWORD(currentDevice62) = 0;
            LODWORD(mainScreen66) = 0;
            LODWORD(mainScreen57) = 0;
            LODWORD(currentDevice63) = 0;
            LODWORD(currentDevice65) = 0;
            LODWORD(mainScreen58) = 0;
            LODWORD(mainScreen56) = 0;
            LODWORD(currentDevice74) = 0;
            LODWORD(mainScreen59) = 0;
            LODWORD(currentDevice64) = 0;
            LODWORD(currentDevice67) = 0;
            LODWORD(mainScreen60) = 0;
            LODWORD(mainScreen61) = 0;
            LODWORD(currentDevice66) = 0;
            LODWORD(currentDevice69) = 0;
            LODWORD(mainScreen63) = 0;
            LODWORD(currentDevice75) = 0;
            LODWORD(rect_24) = 0;
            LODWORD(currentDevice70) = 0;
            v504 = 0;
            LODWORD(currentDevice68) = 0;
            LODWORD(mainScreen62) = 0;
            v501 = 0;
            LODWORD(mainScreen65) = 0;
            v495 = 0;
            LODWORD(rect_16) = 0;
            rect_12 = 0;
            HIDWORD(v489) = 0;
            LODWORD(currentDevice71) = 0;
            HIDWORD(v485) = 0;
            LODWORD(currentDevice72) = 0;
            LODWORD(mainScreen64) = 0;
            LODWORD(mainScreen67) = 0;
            LODWORD(v481) = 0;
            LODWORD(currentDevice73) = 0;
            LODWORD(mainScreen68) = 0;
            HIDWORD(v475) = 0;
            LODWORD(v473) = 0;
            LODWORD(v471) = 0;
            LODWORD(v469) = 0;
            HIDWORD(v465) = 0;
            HIDWORD(v463) = 0;
            HIDWORD(v461) = 0;
            v59 = 0;
            goto LABEL_1369;
          }
        }

        else
        {
          LODWORD(mainScreen71) = 0;
        }

LABEL_1438:
        v268 = __sb__runningInSpringBoard();
        if (v268)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            mainScreen72 = 0;
            v66 = 0;
            goto LABEL_1458;
          }
        }

        else
        {
          currentDevice45 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice45 userInterfaceIdiom])
          {
            mainScreen72 = 0;
            v66 = 1;
            goto LABEL_1458;
          }
        }

        v66 = v268 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v271 = __sb__runningInSpringBoard();
          if (v271)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen44 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen44 _referenceBounds];
          }

          mainScreen72 = v271 ^ 1u;
          BSSizeRoundForScale();
          if (v280 >= *(MEMORY[0x277D66E30] + 72))
          {
            currentDevice76 = 0;
            LODWORD(mainScreen54) = 0;
            v63 = 0;
            LODWORD(mainScreen70) = 0;
            LODWORD(mainScreen49) = 0;
            LODWORD(mainScreen50) = 0;
            LODWORD(mainScreen53) = 0;
            LODWORD(currentDevice57) = 0;
            v64 = 0;
            LODWORD(currentDevice56) = 0;
            LODWORD(currentDevice59) = 0;
            LODWORD(currentDevice60) = 0;
            LODWORD(currentDevice58) = 0;
            LODWORD(mainScreen55) = 0;
            LODWORD(currentDevice61) = 0;
            LODWORD(currentDevice62) = 0;
            LODWORD(mainScreen66) = 0;
            LODWORD(mainScreen57) = 0;
            LODWORD(currentDevice63) = 0;
            LODWORD(currentDevice65) = 0;
            LODWORD(mainScreen58) = 0;
            LODWORD(mainScreen56) = 0;
            LODWORD(currentDevice74) = 0;
            LODWORD(mainScreen59) = 0;
            LODWORD(currentDevice64) = 0;
            LODWORD(currentDevice67) = 0;
            LODWORD(mainScreen60) = 0;
            LODWORD(mainScreen61) = 0;
            LODWORD(currentDevice66) = 0;
            LODWORD(currentDevice69) = 0;
            LODWORD(mainScreen63) = 0;
            LODWORD(currentDevice75) = 0;
            LODWORD(rect_24) = 0;
            LODWORD(currentDevice70) = 0;
            v504 = 0;
            LODWORD(currentDevice68) = 0;
            LODWORD(mainScreen62) = 0;
            v501 = 0;
            LODWORD(mainScreen65) = 0;
            v495 = 0;
            LODWORD(rect_16) = 0;
            rect_12 = 0;
            HIDWORD(v489) = 0;
            LODWORD(currentDevice71) = 0;
            HIDWORD(v485) = 0;
            LODWORD(currentDevice72) = 0;
            LODWORD(mainScreen64) = 0;
            LODWORD(mainScreen67) = 0;
            LODWORD(v481) = 0;
            LODWORD(currentDevice73) = 0;
            LODWORD(mainScreen68) = 0;
            HIDWORD(v475) = 0;
            LODWORD(v473) = 0;
            LODWORD(v471) = 0;
            LODWORD(v469) = 0;
            HIDWORD(v465) = 0;
            HIDWORD(v463) = 0;
            HIDWORD(v461) = 0;
            v59 = 0;
            goto LABEL_1369;
          }
        }

        else
        {
          mainScreen72 = 0;
        }

LABEL_1458:
        v272 = __sb__runningInSpringBoard();
        if (v272)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(mainScreen70) = 0;
            v64 = 0;
            goto LABEL_1478;
          }
        }

        else
        {
          currentDevice46 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice46 userInterfaceIdiom])
          {
            LODWORD(mainScreen70) = 0;
            v64 = 1;
            goto LABEL_1478;
          }
        }

        v64 = v272 ^ 1;
        v274 = __sb__runningInSpringBoard();
        if (v274)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen45 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen45 _referenceBounds];
        }

        LODWORD(mainScreen70) = v274 ^ 1;
        BSSizeRoundForScale();
        if (v275 >= *(MEMORY[0x277D66E30] + 56))
        {
          goto LABEL_1481;
        }

LABEL_1478:
        v276 = __sb__runningInSpringBoard();
        if (v276)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
LABEL_1481:
            currentDevice76 = 0;
            LODWORD(mainScreen54) = 0;
            v63 = 0;
            LODWORD(mainScreen49) = 0;
            LODWORD(mainScreen50) = 0;
            LODWORD(mainScreen53) = 0;
            LODWORD(currentDevice57) = 0;
            LODWORD(currentDevice56) = 0;
            LODWORD(currentDevice59) = 0;
            LODWORD(currentDevice60) = 0;
            LODWORD(currentDevice58) = 0;
            LODWORD(mainScreen55) = 0;
            LODWORD(currentDevice61) = 0;
            LODWORD(currentDevice62) = 0;
            LODWORD(mainScreen66) = 0;
            LODWORD(mainScreen57) = 0;
            LODWORD(currentDevice63) = 0;
            LODWORD(currentDevice65) = 0;
            LODWORD(mainScreen58) = 0;
            LODWORD(mainScreen56) = 0;
            LODWORD(currentDevice74) = 0;
            LODWORD(mainScreen59) = 0;
            LODWORD(currentDevice64) = 0;
            LODWORD(currentDevice67) = 0;
            LODWORD(mainScreen60) = 0;
            LODWORD(mainScreen61) = 0;
            LODWORD(currentDevice66) = 0;
            LODWORD(currentDevice69) = 0;
            LODWORD(mainScreen63) = 0;
            LODWORD(currentDevice75) = 0;
            LODWORD(rect_24) = 0;
            LODWORD(currentDevice70) = 0;
            v504 = 0;
            LODWORD(currentDevice68) = 0;
            LODWORD(mainScreen62) = 0;
            v501 = 0;
            LODWORD(mainScreen65) = 0;
            v495 = 0;
            LODWORD(rect_16) = 0;
            rect_12 = 0;
            HIDWORD(v489) = 0;
            LODWORD(currentDevice71) = 0;
            HIDWORD(v485) = 0;
            LODWORD(currentDevice72) = 0;
            LODWORD(mainScreen64) = 0;
            LODWORD(mainScreen67) = 0;
            LODWORD(v481) = 0;
            LODWORD(currentDevice73) = 0;
            LODWORD(mainScreen68) = 0;
            HIDWORD(v475) = 0;
            LODWORD(v473) = 0;
            LODWORD(v471) = 0;
            LODWORD(v469) = 0;
            HIDWORD(v465) = 0;
            HIDWORD(v463) = 0;
            HIDWORD(v461) = 0;
            v59 = 0;
            goto LABEL_1369;
          }
        }

        else
        {
          currentDevice47 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice47 userInterfaceIdiom])
          {
            currentDevice76 = 0;
            LODWORD(mainScreen54) = 0;
            LODWORD(mainScreen49) = 0;
            LODWORD(mainScreen50) = 0;
            LODWORD(mainScreen53) = 0;
            LODWORD(currentDevice57) = 0;
            LODWORD(currentDevice56) = 0;
            LODWORD(currentDevice59) = 0;
            LODWORD(currentDevice60) = 0;
            LODWORD(currentDevice58) = 0;
            LODWORD(mainScreen55) = 0;
            LODWORD(currentDevice61) = 0;
            LODWORD(currentDevice62) = 0;
            LODWORD(mainScreen66) = 0;
            LODWORD(mainScreen57) = 0;
            LODWORD(currentDevice63) = 0;
            LODWORD(currentDevice65) = 0;
            LODWORD(mainScreen58) = 0;
            LODWORD(mainScreen56) = 0;
            LODWORD(currentDevice74) = 0;
            LODWORD(mainScreen59) = 0;
            LODWORD(currentDevice64) = 0;
            LODWORD(currentDevice67) = 0;
            LODWORD(mainScreen60) = 0;
            LODWORD(mainScreen61) = 0;
            LODWORD(currentDevice66) = 0;
            LODWORD(currentDevice69) = 0;
            LODWORD(mainScreen63) = 0;
            LODWORD(currentDevice75) = 0;
            LODWORD(rect_24) = 0;
            LODWORD(currentDevice70) = 0;
            v504 = 0;
            LODWORD(currentDevice68) = 0;
            LODWORD(mainScreen62) = 0;
            v501 = 0;
            LODWORD(mainScreen65) = 0;
            v495 = 0;
            LODWORD(rect_16) = 0;
            rect_12 = 0;
            HIDWORD(v489) = 0;
            LODWORD(currentDevice71) = 0;
            HIDWORD(v485) = 0;
            LODWORD(currentDevice72) = 0;
            LODWORD(mainScreen64) = 0;
            LODWORD(mainScreen67) = 0;
            LODWORD(v481) = 0;
            LODWORD(currentDevice73) = 0;
            LODWORD(mainScreen68) = 0;
            HIDWORD(v475) = 0;
            LODWORD(v473) = 0;
            LODWORD(v471) = 0;
            LODWORD(v469) = 0;
            HIDWORD(v465) = 0;
            HIDWORD(v463) = 0;
            HIDWORD(v461) = 0;
            v59 = 0;
            v63 = 1;
            goto LABEL_1369;
          }
        }

        v63 = v276 ^ 1;
        v283 = __sb__runningInSpringBoard();
        if (v283)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen46 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen46 _referenceBounds];
        }

        currentDevice76 = v283 ^ 1u;
        BSSizeRoundForScale();
        LODWORD(mainScreen54) = 0;
        LODWORD(mainScreen49) = 0;
        LODWORD(mainScreen50) = 0;
        LODWORD(mainScreen53) = 0;
        LODWORD(currentDevice57) = 0;
        LODWORD(currentDevice56) = 0;
        LODWORD(currentDevice59) = 0;
        LODWORD(currentDevice60) = 0;
        LODWORD(currentDevice58) = 0;
        LODWORD(mainScreen55) = 0;
        LODWORD(currentDevice61) = 0;
        LODWORD(currentDevice62) = 0;
        LODWORD(mainScreen66) = 0;
        LODWORD(mainScreen57) = 0;
        LODWORD(currentDevice63) = 0;
        LODWORD(currentDevice65) = 0;
        LODWORD(mainScreen58) = 0;
        LODWORD(mainScreen56) = 0;
        LODWORD(currentDevice74) = 0;
        LODWORD(mainScreen59) = 0;
        LODWORD(currentDevice64) = 0;
        LODWORD(currentDevice67) = 0;
        LODWORD(mainScreen60) = 0;
        LODWORD(mainScreen61) = 0;
        LODWORD(currentDevice66) = 0;
        LODWORD(currentDevice69) = 0;
        LODWORD(mainScreen63) = 0;
        LODWORD(currentDevice75) = 0;
        LODWORD(rect_24) = 0;
        LODWORD(currentDevice70) = 0;
        v504 = 0;
        LODWORD(currentDevice68) = 0;
        LODWORD(mainScreen62) = 0;
        v501 = 0;
        LODWORD(mainScreen65) = 0;
        v495 = 0;
        LODWORD(rect_16) = 0;
        rect_12 = 0;
        HIDWORD(v489) = 0;
        LODWORD(currentDevice71) = 0;
        HIDWORD(v485) = 0;
        LODWORD(currentDevice72) = 0;
        LODWORD(mainScreen64) = 0;
        LODWORD(mainScreen67) = 0;
        LODWORD(v481) = 0;
        LODWORD(currentDevice73) = 0;
        LODWORD(mainScreen68) = 0;
        HIDWORD(v475) = 0;
        LODWORD(v473) = 0;
        LODWORD(v471) = 0;
        LODWORD(v469) = 0;
        HIDWORD(v465) = 0;
        HIDWORD(v463) = 0;
        HIDWORD(v461) = 0;
        v59 = 0;
        goto LABEL_1369;
      }
    }

    else
    {
      currentDevice48 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice48 userInterfaceIdiom])
      {
        LODWORD(v451) = 0;
        LODWORD(currentDevice49) = 1;
        goto LABEL_1238;
      }
    }

    LODWORD(currentDevice49) = v213 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v221 = __sb__runningInSpringBoard();
      if (v221)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen47 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen47 _referenceBounds];
      }

      LODWORD(v451) = v221 ^ 1;
      BSSizeRoundForScale();
      if (v232 >= *(MEMORY[0x277D66E30] + 216))
      {
        currentDevice76 = 0;
        LODWORD(mainScreen54) = 0;
        v63 = 0;
        LODWORD(mainScreen70) = 0;
        LODWORD(mainScreen49) = 0;
        LODWORD(mainScreen50) = 0;
        LODWORD(mainScreen53) = 0;
        LODWORD(currentDevice57) = 0;
        v64 = 0;
        LODWORD(currentDevice56) = 0;
        mainScreen72 = 0;
        LODWORD(currentDevice59) = 0;
        LODWORD(currentDevice60) = 0;
        LODWORD(currentDevice58) = 0;
        v66 = 0;
        LODWORD(mainScreen55) = 0;
        LODWORD(mainScreen71) = 0;
        LODWORD(currentDevice61) = 0;
        LODWORD(currentDevice62) = 0;
        LODWORD(mainScreen66) = 0;
        LODWORD(mainScreen57) = 0;
        v67 = 0;
        LODWORD(currentDevice63) = 0;
        LODWORD(mainScreen69) = 0;
        LODWORD(currentDevice65) = 0;
        LODWORD(mainScreen58) = 0;
        LODWORD(mainScreen56) = 0;
        LODWORD(mainScreen48) = 0;
        LODWORD(currentDevice74) = 0;
        LODWORD(currentDevice55) = 0;
        LODWORD(mainScreen59) = 0;
        LODWORD(currentDevice64) = 0;
        LODWORD(currentDevice67) = 0;
        LODWORD(mainScreen52) = 0;
        LODWORD(mainScreen60) = 0;
        LODWORD(currentDevice54) = 0;
        LODWORD(mainScreen61) = 0;
        LODWORD(currentDevice66) = 0;
        LODWORD(currentDevice69) = 0;
        LODWORD(mainScreen51) = 0;
        LODWORD(mainScreen63) = 0;
        LODWORD(currentDevice52) = 0;
        LODWORD(currentDevice75) = 0;
        LODWORD(rect_24) = 0;
        LODWORD(currentDevice70) = 0;
        LODWORD(currentDevice53) = 0;
        v504 = 0;
        LODWORD(currentDevice50) = 0;
        LODWORD(currentDevice68) = 0;
        LODWORD(mainScreen62) = 0;
        v501 = 0;
        LODWORD(currentDevice51) = 0;
        LODWORD(mainScreen65) = 0;
        v495 = 0;
        LODWORD(rect_16) = 0;
        rect_12 = 0;
        HIDWORD(v489) = 0;
        LODWORD(currentDevice71) = 0;
        HIDWORD(v485) = 0;
        LODWORD(currentDevice72) = 0;
        LODWORD(mainScreen64) = 0;
        LODWORD(mainScreen67) = 0;
        LODWORD(v481) = 0;
        LODWORD(currentDevice73) = 0;
        LODWORD(mainScreen68) = 0;
        HIDWORD(v475) = 0;
        LODWORD(v473) = 0;
        LODWORD(v471) = 0;
        LODWORD(v469) = 0;
        HIDWORD(v465) = 0;
        HIDWORD(v463) = 0;
        HIDWORD(v461) = 0;
        v59 = 0;
        v68 = 0.0;
        goto LABEL_1369;
      }
    }

    else
    {
      LODWORD(v451) = 0;
    }

    goto LABEL_1237;
  }

  currentDevice76 = 0;
  LODWORD(mainScreen54) = 0;
  v63 = 0;
  LODWORD(mainScreen70) = 0;
  LODWORD(mainScreen49) = 0;
  LODWORD(mainScreen50) = 0;
  LODWORD(mainScreen53) = 0;
  LODWORD(currentDevice57) = 0;
  v64 = 0;
  LODWORD(currentDevice56) = 0;
  mainScreen72 = 0;
  LODWORD(currentDevice59) = 0;
  LODWORD(currentDevice60) = 0;
  LODWORD(currentDevice58) = 0;
  v66 = 0;
  LODWORD(mainScreen55) = 0;
  LODWORD(mainScreen71) = 0;
  LODWORD(currentDevice61) = 0;
  LODWORD(currentDevice62) = 0;
  LODWORD(mainScreen66) = 0;
  LODWORD(mainScreen57) = 0;
  v67 = 0;
  LODWORD(currentDevice63) = 0;
  LODWORD(mainScreen69) = 0;
  LODWORD(currentDevice65) = 0;
  LODWORD(mainScreen58) = 0;
  LODWORD(mainScreen56) = 0;
  LODWORD(mainScreen48) = 0;
  LODWORD(currentDevice74) = 0;
  LODWORD(currentDevice55) = 0;
  LODWORD(mainScreen59) = 0;
  LODWORD(currentDevice64) = 0;
  LODWORD(currentDevice67) = 0;
  LODWORD(mainScreen52) = 0;
  LODWORD(mainScreen60) = 0;
  LODWORD(currentDevice54) = 0;
  LODWORD(mainScreen61) = 0;
  LODWORD(currentDevice66) = 0;
  LODWORD(currentDevice69) = 0;
  LODWORD(mainScreen51) = 0;
  LODWORD(mainScreen63) = 0;
  LODWORD(currentDevice52) = 0;
  LODWORD(currentDevice75) = 0;
  LODWORD(rect_24) = 0;
  LODWORD(currentDevice70) = 0;
  LODWORD(currentDevice53) = 0;
  v504 = 0;
  LODWORD(currentDevice50) = 0;
  LODWORD(currentDevice68) = 0;
  LODWORD(mainScreen62) = 0;
  v501 = 0;
  LODWORD(currentDevice51) = 0;
  LODWORD(mainScreen65) = 0;
  v451 = 0;
  v495 = 0;
  LODWORD(rect_16) = 0;
  LODWORD(currentDevice49) = 0;
  rect_12 = 0;
  v453 = 0;
  HIDWORD(v489) = 0;
  LODWORD(currentDevice71) = 0;
  HIDWORD(v485) = 0;
  LODWORD(currentDevice72) = 0;
  v455 = 0;
  LODWORD(mainScreen64) = 0;
  LODWORD(mainScreen67) = 0;
  LODWORD(v481) = 0;
  LODWORD(currentDevice73) = 0;
  v457 = 0;
  LODWORD(mainScreen68) = 0;
  v475 = 0;
  v473 = 0;
  v471 = 0;
  v459 = 0;
  v469 = 0;
  v465 = 0;
  v463 = 0;
  v461 = 0;
  v59 = 0;
  v60 = 0;
  v467 = 0;
  v68 = -1.0;
LABEL_133:
  if (v60)
  {
    v82 = v59;

    v59 = v82;
  }

LABEL_135:
  if (v59)
  {
  }

  if (HIDWORD(v461))
  {
  }

  if (HIDWORD(v463))
  {
  }

  if (HIDWORD(v465))
  {
  }

  if (v469)
  {
  }

  if (v471)
  {
  }

  if (v473)
  {
  }

  if (HIDWORD(v475))
  {
  }

  if (mainScreen68)
  {
  }

  if (currentDevice73)
  {
  }

  if (v481)
  {
  }

  if (mainScreen67)
  {
  }

  if (mainScreen64)
  {
  }

  if (currentDevice72)
  {
  }

  if (HIDWORD(v485))
  {
  }

  if (currentDevice71)
  {
  }

  if (HIDWORD(v489))
  {
  }

  if (rect_12)
  {
  }

  if (rect_16)
  {
  }

  if (v495)
  {
  }

  if (HIDWORD(v495))
  {
  }

  if (mainScreen65)
  {
  }

  if (v501)
  {
  }

  if (mainScreen62)
  {
  }

  if (currentDevice68)
  {
  }

  if (v504)
  {
  }

  if (currentDevice70)
  {
  }

  if (rect_24)
  {
  }

  if (currentDevice75)
  {
  }

  if (mainScreen63)
  {
  }

  if (currentDevice69)
  {
  }

  if (currentDevice66)
  {
  }

  if (mainScreen61)
  {
  }

  if (mainScreen60)
  {
  }

  if (currentDevice67)
  {
  }

  if (currentDevice64)
  {
  }

  if (mainScreen59)
  {
  }

  if (currentDevice74)
  {
  }

  if (mainScreen56)
  {
  }

  if (mainScreen58)
  {
  }

  if (currentDevice65)
  {
  }

  if (currentDevice63)
  {

    if (!mainScreen57)
    {
      goto LABEL_219;
    }
  }

  else if (!mainScreen57)
  {
LABEL_219:
    if (!mainScreen66)
    {
      goto LABEL_221;
    }

    goto LABEL_220;
  }

  if (mainScreen66)
  {
LABEL_220:
  }

LABEL_221:
  if (currentDevice62)
  {
  }

  if (currentDevice61)
  {
  }

  if (mainScreen55)
  {
  }

  if (currentDevice58)
  {
  }

  if (currentDevice60)
  {
  }

  if (currentDevice59)
  {
  }

  if (currentDevice56)
  {
  }

  if (currentDevice57)
  {
  }

  if (mainScreen53)
  {
  }

  if (mainScreen50)
  {
  }

  if (mainScreen49)
  {
  }

  if (mainScreen54)
  {

    if (!currentDevice76)
    {
      goto LABEL_245;
    }
  }

  else if (!currentDevice76)
  {
LABEL_245:
    if (!v63)
    {
      goto LABEL_247;
    }

    goto LABEL_246;
  }

  if (v63)
  {
LABEL_246:
  }

LABEL_247:
  if (mainScreen70)
  {

    if (!v64)
    {
      goto LABEL_249;
    }
  }

  else if (!v64)
  {
LABEL_249:
    if (mainScreen72)
    {
      goto LABEL_250;
    }

LABEL_260:
    if (!v66)
    {
      goto LABEL_262;
    }

    goto LABEL_261;
  }

  if (!mainScreen72)
  {
    goto LABEL_260;
  }

LABEL_250:

  if (v66)
  {
LABEL_261:
  }

LABEL_262:
  if (mainScreen71)
  {
  }

  if (v67)
  {
  }

  if (mainScreen69)
  {
  }

  if (mainScreen48)
  {
  }

  if (currentDevice55)
  {
  }

  if (mainScreen52)
  {
  }

  if (currentDevice54)
  {
  }

  if (mainScreen51)
  {
  }

  if (currentDevice52)
  {
  }

  if (currentDevice53)
  {
  }

  if (currentDevice50)
  {
  }

  if (currentDevice51)
  {
  }

  if (v451)
  {
  }

  if (currentDevice49)
  {
  }

  if (v453)
  {
  }

  if (HIDWORD(v451))
  {
  }

  if (v455)
  {
  }

  if (HIDWORD(v453))
  {
  }

  if (v457)
  {
  }

  if (HIDWORD(v455))
  {
  }

  if (v459)
  {
  }

  if (HIDWORD(v457))
  {
  }

  if (HIDWORD(v459))
  {
  }

  if (v461)
  {
  }

  if (v463)
  {
  }

  if (v465)
  {
  }

  if (v467)
  {
  }

  if (HIDWORD(v467))
  {
  }

  if (HIDWORD(v469))
  {
  }

  if (HIDWORD(v471))
  {
  }

  if (HIDWORD(v473))
  {
  }

  if (v475)
  {
  }

  if (v477)
  {
  }

  if (HIDWORD(v477))
  {
  }

  if (v479)
  {
  }

  if (HIDWORD(v479))
  {
  }

  if (HIDWORD(v481))
  {

    if (!v483)
    {
      goto LABEL_336;
    }
  }

  else if (!v483)
  {
LABEL_336:
    if (!HIDWORD(v483))
    {
      goto LABEL_338;
    }

    goto LABEL_337;
  }

  if (HIDWORD(v483))
  {
LABEL_337:
  }

LABEL_338:
  if (v485)
  {
  }

  if (v487)
  {
  }

  if (HIDWORD(v487))
  {
  }

  if (v489)
  {
  }

  if (v491)
  {
  }

  if (HIDWORD(v491))
  {
  }

  if (v493)
  {
  }

  if (HIDWORD(v493))
  {
  }

  if (v497)
  {
  }

  if (HIDWORD(v497))
  {
  }

  if (v499)
  {
  }

  if (v502)
  {
  }

  v83 = __sb__runningInSpringBoard();
  if (v83)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v503 = 0;
      goto LABEL_374;
    }
  }

  else
  {
    currentDevice49 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice49 userInterfaceIdiom] != 1)
    {
      v503 = 0x100000000;
      goto LABEL_374;
    }
  }

  HIDWORD(v503) = v83 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen73 = __sb__runningInSpringBoard();
    if (mainScreen73)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen48 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen48 _referenceBounds];
    }

    LODWORD(v503) = mainScreen73 ^ 1;
    BSSizeRoundForScale();
    if (v99 == *(MEMORY[0x277D66E30] + 288) && v98 == *(MEMORY[0x277D66E30] + 296))
    {
      v500 = 0;
      v498 = 0;
      v496 = 0;
      v494 = 0;
      v492 = 0;
      v490 = 0;
      v488 = 0;
      v486 = 0;
      v484 = 0;
      v482 = 0;
      v480 = 0;
      v478 = 0;
      v476 = 0;
      v460 = 0;
      v458 = 0;
      v474 = 0;
      v472 = 0;
      v470 = 0;
      v468 = 0;
      v466 = 0;
      v464 = 0;
      v462 = 0;
      v456 = 0;
      v454 = 0;
      v452 = 0;
      v90 = 0;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 7.5;
      goto LABEL_428;
    }
  }

  else
  {
    LODWORD(v503) = 0;
  }

LABEL_374:
  v85 = __sb__runningInSpringBoard();
  if (v85)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v500 = 0;
      goto LABEL_383;
    }
  }

  else
  {
    currentDevice50 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice50 userInterfaceIdiom] != 1)
    {
      v500 = 0x100000000;
      goto LABEL_383;
    }
  }

  HIDWORD(v500) = v85 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen73 = __sb__runningInSpringBoard();
    if (mainScreen73)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen49 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen49 _referenceBounds];
    }

    LODWORD(v500) = mainScreen73 ^ 1;
    BSSizeRoundForScale();
    if (v100 >= *(MEMORY[0x277D66E30] + 440))
    {
      v498 = 0;
      v496 = 0;
      v494 = 0;
      v492 = 0;
      v490 = 0;
      v488 = 0;
      v486 = 0;
      v484 = 0;
      v482 = 0;
      v480 = 0;
      v478 = 0;
      v476 = 0;
      v460 = 0;
      v458 = 0;
      v474 = 0;
      v472 = 0;
      v470 = 0;
      v468 = 0;
      v466 = 0;
      v464 = 0;
      v462 = 0;
      v456 = 0;
      v454 = 0;
      v452 = 0;
      v90 = 0;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 17.5;
      goto LABEL_428;
    }
  }

  else
  {
    LODWORD(v500) = 0;
  }

LABEL_383:
  v86 = __sb__runningInSpringBoard();
  if (v86)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v498 = 0;
      goto LABEL_392;
    }
  }

  else
  {
    currentDevice51 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice51 userInterfaceIdiom] != 1)
    {
      v498 = 0x100000000;
      goto LABEL_392;
    }
  }

  HIDWORD(v498) = v86 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen73 = __sb__runningInSpringBoard();
    if (mainScreen73)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen50 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen50 _referenceBounds];
    }

    LODWORD(v498) = mainScreen73 ^ 1;
    BSSizeRoundForScale();
    if (v101 >= *(MEMORY[0x277D66E30] + 376))
    {
      v496 = 0;
      v494 = 0;
      v492 = 0;
      v490 = 0;
      v488 = 0;
      v486 = 0;
      v484 = 0;
      v482 = 0;
      v480 = 0;
      v478 = 0;
      v476 = 0;
      v460 = 0;
      v458 = 0;
      v474 = 0;
      v472 = 0;
      v470 = 0;
      v468 = 0;
      v466 = 0;
      v464 = 0;
      v462 = 0;
      v456 = 0;
      v454 = 0;
      v452 = 0;
      v90 = 0;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 17.5;
      goto LABEL_428;
    }
  }

  else
  {
    LODWORD(v498) = 0;
  }

LABEL_392:
  v87 = __sb__runningInSpringBoard();
  if (v87)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v496 = 0;
      goto LABEL_401;
    }
  }

  else
  {
    currentDevice52 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice52 userInterfaceIdiom] != 1)
    {
      v496 = 0x100000000;
      goto LABEL_401;
    }
  }

  HIDWORD(v496) = v87 ^ 1;
  mainScreen73 = __sb__runningInSpringBoard();
  if (mainScreen73)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen51 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen51 _referenceBounds];
  }

  LODWORD(v496) = mainScreen73 ^ 1;
  BSSizeRoundForScale();
  if (v88 >= *(MEMORY[0x277D66E30] + 280))
  {
    v494 = 0;
    v492 = 0;
    v490 = 0;
    v488 = 0;
    v486 = 0;
    v484 = 0;
    v482 = 0;
    v480 = 0;
    v478 = 0;
    v476 = 0;
    v460 = 0;
    v458 = 0;
    v474 = 0;
    v472 = 0;
    v470 = 0;
    v468 = 0;
    v466 = 0;
    v464 = 0;
    v462 = 0;
    v456 = 0;
    v454 = 0;
    v452 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 7.5;
    goto LABEL_428;
  }

LABEL_401:
  v89 = __sb__runningInSpringBoard();
  if (v89)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v494 = 0;
      goto LABEL_411;
    }
  }

  else
  {
    currentDevice53 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice53 userInterfaceIdiom] != 1)
    {
      v494 = 0x100000000;
      goto LABEL_411;
    }
  }

  HIDWORD(v494) = v89 ^ 1;
  mainScreen73 = __sb__runningInSpringBoard();
  if (mainScreen73)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen52 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen52 _referenceBounds];
  }

  LODWORD(v494) = mainScreen73 ^ 1;
  BSSizeRoundForScale();
  if (v96 >= *(MEMORY[0x277D66E30] + 264))
  {
    v492 = 0;
    v490 = 0;
    v488 = 0;
    v486 = 0;
    v484 = 0;
    v482 = 0;
    v480 = 0;
    v478 = 0;
    v476 = 0;
    v460 = 0;
    v458 = 0;
    v474 = 0;
    v472 = 0;
    v470 = 0;
    v468 = 0;
    v466 = 0;
    v464 = 0;
    v462 = 0;
    v456 = 0;
    v454 = 0;
    v452 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 7.5;
    goto LABEL_428;
  }

LABEL_411:
  v97 = __sb__runningInSpringBoard();
  if (v97)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v492 = 0;
      goto LABEL_556;
    }
  }

  else
  {
    currentDevice54 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice54 userInterfaceIdiom] != 1)
    {
      v492 = 0x100000000;
      goto LABEL_556;
    }
  }

  HIDWORD(v492) = v97 ^ 1;
  mainScreen73 = __sb__runningInSpringBoard();
  if (mainScreen73)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen53 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen53 _referenceBounds];
  }

  LODWORD(v492) = mainScreen73 ^ 1;
  BSSizeRoundForScale();
  if (v106 >= *(MEMORY[0x277D66E30] + 248))
  {
    v490 = 0;
    v488 = 0;
    v486 = 0;
    v484 = 0;
    v482 = 0;
    v480 = 0;
    v478 = 0;
    v476 = 0;
    v460 = 0;
    v458 = 0;
    v474 = 0;
    v472 = 0;
    v470 = 0;
    v468 = 0;
    v466 = 0;
    v464 = 0;
    v462 = 0;
    v456 = 0;
    v454 = 0;
    v452 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 7.5;
    goto LABEL_428;
  }

LABEL_556:
  mainScreen73 = __sb__runningInSpringBoard();
  if (mainScreen73)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_558;
    }

LABEL_564:
    LODWORD(v490) = 0;
    v488 = 0;
    v486 = 0;
    v484 = 0;
    v482 = 0;
    v480 = 0;
    v478 = 0;
    v476 = 0;
    v460 = 0;
    v458 = 0;
    v474 = 0;
    v472 = 0;
    v470 = 0;
    v468 = 0;
    v466 = 0;
    v464 = 0;
    v462 = 0;
    v456 = 0;
    v454 = 0;
    v452 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 7.5;
    HIDWORD(v490) = mainScreen73 ^ 1;
    goto LABEL_428;
  }

  currentDevice55 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice55 userInterfaceIdiom] == 1)
  {
    goto LABEL_564;
  }

LABEL_558:
  HIDWORD(v490) = mainScreen73 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_562:
    LODWORD(v490) = 0;
    HIDWORD(v488) = 0;
    goto LABEL_605;
  }

  v107 = __sb__runningInSpringBoard();
  if (v107)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_562;
    }
  }

  else
  {
    currentDevice56 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice56 userInterfaceIdiom])
    {
      HIDWORD(v488) = 0;
      LODWORD(v490) = 1;
      goto LABEL_605;
    }
  }

  LODWORD(v490) = v107 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen73 = __sb__runningInSpringBoard();
    if (mainScreen73)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen54 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen54 _referenceBounds];
    }

    BSSizeRoundForScale();
    HIDWORD(v488) = mainScreen73 ^ 1;
    if (v117 >= *(MEMORY[0x277D66E30] + 200))
    {
      LODWORD(v488) = 0;
      v486 = 0;
      v484 = 0;
      v482 = 0;
      v480 = 0;
      v478 = 0;
      v476 = 0;
      v460 = 0;
      v458 = 0;
      v474 = 0;
      v472 = 0;
      v470 = 0;
      v468 = 0;
      v466 = 0;
      v464 = 0;
      v462 = 0;
      v456 = 0;
      v454 = 0;
      v452 = 0;
      v90 = 0;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0.0;
      goto LABEL_428;
    }
  }

  else
  {
    HIDWORD(v488) = 0;
  }

LABEL_605:
  mainScreen73 = __sb__runningInSpringBoard();
  if (mainScreen73)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v488) = 0;
      HIDWORD(v486) = 0;
      goto LABEL_615;
    }
  }

  else
  {
    currentDevice57 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice57 userInterfaceIdiom])
    {
      HIDWORD(v486) = 0;
      LODWORD(v488) = 1;
      goto LABEL_615;
    }
  }

  LODWORD(v488) = mainScreen73 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen73 = __sb__runningInSpringBoard();
    if (mainScreen73)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen55 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen55 _referenceBounds];
    }

    HIDWORD(v486) = mainScreen73 ^ 1;
    BSSizeRoundForScale();
    if (v115 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_619;
    }
  }

  else
  {
    HIDWORD(v486) = 0;
  }

LABEL_615:
  if (_SBF_Private_IsD94Like())
  {
    LODWORD(v486) = 0;
    v484 = 0;
    v482 = 0;
    v480 = 0;
    v478 = 0;
    v476 = 0;
    v460 = 0;
    v458 = 0;
    v474 = 0;
    v472 = 0;
    v470 = 0;
    v468 = 0;
    v466 = 0;
    v464 = 0;
    v462 = 0;
    v456 = 0;
    v454 = 0;
    v452 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0.0;
    goto LABEL_428;
  }

LABEL_619:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_623:
    LODWORD(v486) = 0;
    HIDWORD(v484) = 0;
    goto LABEL_633;
  }

  v116 = __sb__runningInSpringBoard();
  if (v116)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_623;
    }
  }

  else
  {
    currentDevice58 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice58 userInterfaceIdiom])
    {
      HIDWORD(v484) = 0;
      LODWORD(v486) = 1;
      goto LABEL_633;
    }
  }

  LODWORD(v486) = v116 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen73 = __sb__runningInSpringBoard();
    if (mainScreen73)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen56 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen56 _referenceBounds];
    }

    BSSizeRoundForScale();
    HIDWORD(v484) = mainScreen73 ^ 1;
    if (v131 >= *(MEMORY[0x277D66E30] + 136))
    {
      LODWORD(v484) = 0;
      v482 = 0;
      v480 = 0;
      v478 = 0;
      v476 = 0;
      v460 = 0;
      v458 = 0;
      v474 = 0;
      v472 = 0;
      v470 = 0;
      v468 = 0;
      v466 = 0;
      v464 = 0;
      v462 = 0;
      v456 = 0;
      v454 = 0;
      v452 = 0;
      v90 = 0;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0.0;
      goto LABEL_428;
    }
  }

  else
  {
    HIDWORD(v484) = 0;
  }

LABEL_633:
  mainScreen73 = __sb__runningInSpringBoard();
  if (mainScreen73)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v484) = 0;
      HIDWORD(v482) = 0;
      goto LABEL_643;
    }
  }

  else
  {
    currentDevice59 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice59 userInterfaceIdiom])
    {
      HIDWORD(v482) = 0;
      LODWORD(v484) = 1;
      goto LABEL_643;
    }
  }

  LODWORD(v484) = mainScreen73 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen73 = __sb__runningInSpringBoard();
    if (mainScreen73)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen57 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen57 _referenceBounds];
    }

    HIDWORD(v482) = mainScreen73 ^ 1;
    BSSizeRoundForScale();
    if (v118 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_647;
    }
  }

  else
  {
    HIDWORD(v482) = 0;
  }

LABEL_643:
  if (_SBF_Private_IsD64Like())
  {
    LODWORD(v482) = 0;
    v480 = 0;
    v478 = 0;
    v476 = 0;
    v460 = 0;
    v458 = 0;
    v474 = 0;
    v472 = 0;
    v470 = 0;
    v468 = 0;
    v466 = 0;
    v464 = 0;
    v462 = 0;
    v456 = 0;
    v454 = 0;
    v452 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0.0;
    goto LABEL_428;
  }

LABEL_647:
  v119 = __sb__runningInSpringBoard();
  if (v119)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v482) = 0;
      HIDWORD(v480) = 0;
      goto LABEL_657;
    }
  }

  else
  {
    currentDevice60 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice60 userInterfaceIdiom])
    {
      HIDWORD(v480) = 0;
      LODWORD(v482) = 1;
      goto LABEL_657;
    }
  }

  LODWORD(v482) = v119 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen73 = __sb__runningInSpringBoard();
    if (mainScreen73)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen58 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen58 _referenceBounds];
    }

    HIDWORD(v480) = mainScreen73 ^ 1;
    BSSizeRoundForScale();
    if (v130 >= *(MEMORY[0x277D66E30] + 136))
    {
      LODWORD(v480) = 0;
      v478 = 0;
      v476 = 0;
      v460 = 0;
      v458 = 0;
      v474 = 0;
      v472 = 0;
      v470 = 0;
      v468 = 0;
      v466 = 0;
      v464 = 0;
      v462 = 0;
      v456 = 0;
      v454 = 0;
      v452 = 0;
      v90 = 0;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0.0;
      goto LABEL_428;
    }
  }

  else
  {
    HIDWORD(v480) = 0;
  }

LABEL_657:
  mainScreen73 = __sb__runningInSpringBoard();
  if (mainScreen73)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v480) = 0;
      HIDWORD(v478) = 0;
      goto LABEL_717;
    }
  }

  else
  {
    currentDevice61 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice61 userInterfaceIdiom])
    {
      HIDWORD(v478) = 0;
      LODWORD(v480) = 1;
      goto LABEL_717;
    }
  }

  LODWORD(v480) = mainScreen73 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen73 = __sb__runningInSpringBoard();
    if (mainScreen73)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen59 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen59 _referenceBounds];
    }

    HIDWORD(v478) = mainScreen73 ^ 1;
    BSSizeRoundForScale();
    if (v134 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_733;
    }
  }

  else
  {
    HIDWORD(v478) = 0;
  }

LABEL_717:
  if (_SBF_Private_IsD54())
  {
    LODWORD(v478) = 0;
    v476 = 0;
    v460 = 0;
    v458 = 0;
    v474 = 0;
    v472 = 0;
    v470 = 0;
    v468 = 0;
    v466 = 0;
    v464 = 0;
    v462 = 0;
    v456 = 0;
    v454 = 0;
    v452 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0.0;
    goto LABEL_428;
  }

LABEL_733:
  v135 = __sb__runningInSpringBoard();
  if (v135)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v478) = 0;
      HIDWORD(v476) = 0;
      goto LABEL_743;
    }
  }

  else
  {
    currentDevice62 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice62 userInterfaceIdiom])
    {
      HIDWORD(v476) = 0;
      LODWORD(v478) = 1;
      goto LABEL_743;
    }
  }

  LODWORD(v478) = v135 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen73 = __sb__runningInSpringBoard();
    if (mainScreen73)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen60 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen60 _referenceBounds];
    }

    BSSizeRoundForScale();
    HIDWORD(v476) = mainScreen73 ^ 1;
    if (v157 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      v460 = 0;
      LODWORD(v476) = 0;
      v458 = 0;
      v474 = 0;
      v472 = 0;
      v470 = 0;
      v468 = 0;
      v466 = 0;
      v464 = 0;
      v462 = 0;
      v456 = 0;
      v454 = 0;
      v452 = 0;
      v90 = 0;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0.0;
      goto LABEL_428;
    }
  }

  else
  {
    HIDWORD(v476) = 0;
  }

LABEL_743:
  mainScreen73 = __sb__runningInSpringBoard();
  if (mainScreen73)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v460 = 0;
      goto LABEL_821;
    }
  }

  else
  {
    currentDevice63 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice63 userInterfaceIdiom])
    {
      v460 = 0x100000000;
      goto LABEL_821;
    }
  }

  HIDWORD(v460) = mainScreen73 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen73 = __sb__runningInSpringBoard();
    if (mainScreen73)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen61 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen61 _referenceBounds];
    }

    LODWORD(v460) = mainScreen73 ^ 1;
    BSSizeRoundForScale();
    if (v160 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_854;
    }
  }

  else
  {
    LODWORD(v460) = 0;
  }

LABEL_821:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    LODWORD(v476) = 0;
    v458 = 0;
    v474 = 0;
    v472 = 0;
    v470 = 0;
    v468 = 0;
    v466 = 0;
    v464 = 0;
    v462 = 0;
    v456 = 0;
    v454 = 0;
    v452 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0.0;
    goto LABEL_428;
  }

LABEL_854:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_858:
    LODWORD(v476) = 0;
    HIDWORD(v458) = 0;
    goto LABEL_915;
  }

  v161 = __sb__runningInSpringBoard();
  if (v161)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_858;
    }
  }

  else
  {
    currentDevice64 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice64 userInterfaceIdiom])
    {
      HIDWORD(v458) = 0;
      LODWORD(v476) = 1;
      goto LABEL_915;
    }
  }

  LODWORD(v476) = v161 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen73 = __sb__runningInSpringBoard();
    if (mainScreen73)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen62 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen62 _referenceBounds];
    }

    BSSizeRoundForScale();
    HIDWORD(v458) = mainScreen73 ^ 1;
    if (v184 >= *(MEMORY[0x277D66E30] + 184))
    {
      v474 = 0;
      v472 = 0;
      v470 = 0;
      v468 = 0;
      v466 = 0;
      v464 = 0;
      v462 = 0;
      LODWORD(v458) = 0;
      v456 = 0;
      v454 = 0;
      v452 = 0;
      v90 = 0;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0.0;
      goto LABEL_428;
    }
  }

  else
  {
    HIDWORD(v458) = 0;
  }

LABEL_915:
  mainScreen73 = __sb__runningInSpringBoard();
  if (mainScreen73)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v474 = 0;
      goto LABEL_925;
    }
  }

  else
  {
    currentDevice65 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice65 userInterfaceIdiom])
    {
      v474 = 0x100000000;
      goto LABEL_925;
    }
  }

  HIDWORD(v474) = mainScreen73 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen73 = __sb__runningInSpringBoard();
    if (mainScreen73)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen63 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen63 _referenceBounds];
    }

    LODWORD(v474) = mainScreen73 ^ 1;
    BSSizeRoundForScale();
    if (v176 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_929;
    }
  }

  else
  {
    LODWORD(v474) = 0;
  }

LABEL_925:
  if (_SBF_Private_IsD93Like())
  {
    v472 = 0;
    v470 = 0;
    v468 = 0;
    v466 = 0;
    v464 = 0;
    v462 = 0;
    LODWORD(v458) = 0;
    v456 = 0;
    v454 = 0;
    v452 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0.0;
    goto LABEL_428;
  }

LABEL_929:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_933:
    v472 = 0;
    goto LABEL_969;
  }

  v177 = __sb__runningInSpringBoard();
  if (v177)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_933;
    }
  }

  else
  {
    currentDevice66 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice66 userInterfaceIdiom])
    {
      v472 = 0x100000000;
      goto LABEL_969;
    }
  }

  HIDWORD(v472) = v177 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen73 = __sb__runningInSpringBoard();
    if (mainScreen73)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen64 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen64 _referenceBounds];
    }

    LODWORD(v472) = mainScreen73 ^ 1;
    BSSizeRoundForScale();
    if (v197 >= *(MEMORY[0x277D66E30] + 104))
    {
      v470 = 0;
      v468 = 0;
      v466 = 0;
      v464 = 0;
      v462 = 0;
      LODWORD(v458) = 0;
      v456 = 0;
      v454 = 0;
      v452 = 0;
      v90 = 0;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0.0;
      goto LABEL_428;
    }
  }

  else
  {
    LODWORD(v472) = 0;
  }

LABEL_969:
  mainScreen73 = __sb__runningInSpringBoard();
  if (mainScreen73)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v470 = 0;
      goto LABEL_979;
    }
  }

  else
  {
    currentDevice67 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice67 userInterfaceIdiom])
    {
      v470 = 0x100000000;
      goto LABEL_979;
    }
  }

  HIDWORD(v470) = mainScreen73 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen73 = __sb__runningInSpringBoard();
    if (mainScreen73)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen65 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen65 _referenceBounds];
    }

    LODWORD(v470) = mainScreen73 ^ 1;
    BSSizeRoundForScale();
    if (v185 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_983;
    }
  }

  else
  {
    LODWORD(v470) = 0;
  }

LABEL_979:
  if (_SBF_Private_IsD63Like())
  {
    v468 = 0;
    v466 = 0;
    v464 = 0;
    v462 = 0;
    LODWORD(v458) = 0;
    v456 = 0;
    v454 = 0;
    v452 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0.0;
    goto LABEL_428;
  }

LABEL_983:
  if (!_SBF_Private_IsD23Like())
  {
LABEL_987:
    v468 = 0;
    goto LABEL_1053;
  }

  v186 = __sb__runningInSpringBoard();
  if (v186)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_987;
    }
  }

  else
  {
    currentDevice68 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice68 userInterfaceIdiom])
    {
      v468 = 0x100000000;
      goto LABEL_1053;
    }
  }

  HIDWORD(v468) = v186 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen73 = __sb__runningInSpringBoard();
    if (mainScreen73)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen66 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen66 _referenceBounds];
    }

    LODWORD(v468) = mainScreen73 ^ 1;
    BSSizeRoundForScale();
    if (v215 >= *(MEMORY[0x277D66E30] + 216))
    {
      v466 = 0;
      v464 = 0;
      v462 = 0;
      LODWORD(v458) = 0;
      v456 = 0;
      v454 = 0;
      v452 = 0;
      v90 = 0;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0.0;
      goto LABEL_1149;
    }

    v34 = v510;
    v33 = v511;
  }

  else
  {
    LODWORD(v468) = 0;
  }

LABEL_1053:
  mainScreen73 = __sb__runningInSpringBoard();
  if (mainScreen73)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v466 = 0;
      goto LABEL_1063;
    }
  }

  else
  {
    currentDevice69 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice69 userInterfaceIdiom])
    {
      v466 = 0x100000000;
      goto LABEL_1063;
    }
  }

  HIDWORD(v466) = mainScreen73 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen73 = __sb__runningInSpringBoard();
    if (mainScreen73)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen67 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen67 _referenceBounds];
    }

    LODWORD(v466) = mainScreen73 ^ 1;
    BSSizeRoundForScale();
    if (v200 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_1067;
    }
  }

  else
  {
    LODWORD(v466) = 0;
  }

LABEL_1063:
  if (_SBF_Private_IsD23Like())
  {
    v464 = 0;
    v462 = 0;
    LODWORD(v458) = 0;
    v456 = 0;
    v454 = 0;
    v452 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0.0;
    goto LABEL_428;
  }

LABEL_1067:
  v201 = __sb__runningInSpringBoard();
  if (v201)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v464 = 0;
      goto LABEL_1077;
    }
  }

  else
  {
    currentDevice70 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice70 userInterfaceIdiom])
    {
      v464 = 0x100000000;
      goto LABEL_1077;
    }
  }

  HIDWORD(v464) = v201 ^ 1;
  if (SBFEffectiveHomeButtonType() != 2)
  {
    LODWORD(v464) = 0;
    goto LABEL_1077;
  }

  mainScreen73 = __sb__runningInSpringBoard();
  if (mainScreen73)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen68 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen68 _referenceBounds];
  }

  LODWORD(v464) = mainScreen73 ^ 1;
  BSSizeRoundForScale();
  if (v214 >= *(MEMORY[0x277D66E30] + 120))
  {
    v462 = 0;
    LODWORD(v458) = 0;
    v456 = 0;
    v454 = 0;
    v452 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0.0;
LABEL_1149:
    v34 = v510;
    v33 = v511;
    goto LABEL_428;
  }

  v34 = v510;
  v33 = v511;
LABEL_1077:
  mainScreen73 = __sb__runningInSpringBoard();
  if (mainScreen73)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v462) = 0;
      LODWORD(v458) = 0;
      goto LABEL_1139;
    }
  }

  else
  {
    currentDevice71 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice71 userInterfaceIdiom])
    {
      LODWORD(v458) = 0;
      HIDWORD(v462) = 1;
      goto LABEL_1139;
    }
  }

  HIDWORD(v462) = mainScreen73 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen73 = __sb__runningInSpringBoard();
    if (mainScreen73)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen69 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen69 _referenceBounds];
    }

    LODWORD(v458) = mainScreen73 ^ 1;
    BSSizeRoundForScale();
    v34 = v510;
    v33 = v511;
    if (v218 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_1160;
    }
  }

  else
  {
    LODWORD(v458) = 0;
  }

LABEL_1139:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    v456 = 0;
    LODWORD(v462) = 0;
    v454 = 0;
    v452 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0.0;
    goto LABEL_428;
  }

LABEL_1160:
  v219 = __sb__runningInSpringBoard();
  if (v219)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v456) = 0;
      LODWORD(v462) = 0;
      goto LABEL_1170;
    }
  }

  else
  {
    currentDevice72 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice72 userInterfaceIdiom])
    {
      LODWORD(v462) = 0;
      HIDWORD(v456) = 1;
      goto LABEL_1170;
    }
  }

  HIDWORD(v456) = v219 ^ 1;
  if (SBFEffectiveHomeButtonType() != 2)
  {
    LODWORD(v462) = 0;
    goto LABEL_1170;
  }

  mainScreen73 = __sb__runningInSpringBoard();
  if (mainScreen73)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen70 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen70 _referenceBounds];
  }

  LODWORD(v462) = mainScreen73 ^ 1;
  BSSizeRoundForScale();
  if (v222 < *(MEMORY[0x277D66E30] + 104))
  {
LABEL_1170:
    mainScreen73 = __sb__runningInSpringBoard();
    if (mainScreen73)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        LODWORD(v456) = 0;
        LODWORD(v454) = 0;
        goto LABEL_1188;
      }
    }

    else
    {
      currentDevice73 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice73 userInterfaceIdiom])
      {
        LODWORD(v454) = 0;
        LODWORD(v456) = 1;
        goto LABEL_1188;
      }
    }

    LODWORD(v456) = mainScreen73 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      mainScreen73 = __sb__runningInSpringBoard();
      if (mainScreen73)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen71 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen71 _referenceBounds];
      }

      LODWORD(v454) = mainScreen73 ^ 1;
      BSSizeRoundForScale();
      if (v245 >= *(MEMORY[0x277D66E30] + 104))
      {
        goto LABEL_1297;
      }
    }

    else
    {
      LODWORD(v454) = 0;
    }

LABEL_1188:
    if (_SBF_Private_IsD53())
    {
LABEL_1301:
      HIDWORD(v454) = 0;
      v452 = 0;
      v90 = 0;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0.0;
      goto LABEL_1305;
    }

LABEL_1297:
    if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0 || _SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
    {
      goto LABEL_1301;
    }

    v95 = 0.0;
    if (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0 || (_SBF_Private_IsD52ZoomedOrSimilarDevice())
    {
      HIDWORD(v454) = 0;
      v452 = 0;
      v90 = 0;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v94 = 0;
      goto LABEL_1305;
    }

    v252 = __sb__runningInSpringBoard();
    if (v252)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        HIDWORD(v454) = 0;
        HIDWORD(v452) = 0;
        goto LABEL_1388;
      }
    }

    else
    {
      currentDevice74 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice74 userInterfaceIdiom])
      {
        HIDWORD(v452) = 0;
        HIDWORD(v454) = 1;
        goto LABEL_1388;
      }
    }

    HIDWORD(v454) = v252 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      mainScreen73 = __sb__runningInSpringBoard();
      if (mainScreen73)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        rect_24 = [MEMORY[0x277D759A0] mainScreen];
        [rect_24 _referenceBounds];
      }

      HIDWORD(v452) = mainScreen73 ^ 1;
      BSSizeRoundForScale();
      if (v262 >= *(MEMORY[0x277D66E30] + 88))
      {
        LODWORD(v452) = 0;
        v90 = 0;
        v91 = 0;
        v92 = 0;
        v93 = 0;
        v94 = 0;
        goto LABEL_1305;
      }
    }

    else
    {
      HIDWORD(v452) = 0;
    }

LABEL_1388:
    v259 = __sb__runningInSpringBoard();
    if (v259)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        LODWORD(v452) = 0;
        v90 = 0;
        goto LABEL_1398;
      }
    }

    else
    {
      currentDevice75 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice75 userInterfaceIdiom])
      {
        v90 = 0;
        LODWORD(v452) = 1;
        goto LABEL_1398;
      }
    }

    LODWORD(v452) = v259 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      mainScreen73 = __sb__runningInSpringBoard();
      if (mainScreen73)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        rect_16 = [MEMORY[0x277D759A0] mainScreen];
        [rect_16 _referenceBounds];
      }

      v90 = mainScreen73 ^ 1;
      BSSizeRoundForScale();
      if (v263 >= *(MEMORY[0x277D66E30] + 72))
      {
        v91 = 0;
        v92 = 0;
        v93 = 0;
        v94 = 0;
        goto LABEL_1305;
      }
    }

    else
    {
      v90 = 0;
    }

LABEL_1398:
    v260 = __sb__runningInSpringBoard();
    if (v260)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        v91 = 0;
        v92 = 0;
        goto LABEL_1408;
      }
    }

    else
    {
      currentDevice76 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice76 userInterfaceIdiom])
      {
        v92 = 0;
        v91 = 1;
        goto LABEL_1408;
      }
    }

    v91 = v260 ^ 1;
    mainScreen73 = __sb__runningInSpringBoard();
    if (mainScreen73)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen72 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen72 _referenceBounds];
    }

    v92 = mainScreen73 ^ 1;
    BSSizeRoundForScale();
    if (v261 >= *(MEMORY[0x277D66E30] + 56))
    {
      goto LABEL_1411;
    }

LABEL_1408:
    mainScreen73 = __sb__runningInSpringBoard();
    if (mainScreen73)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
LABEL_1411:
        v93 = 0;
        v94 = 0;
        goto LABEL_1305;
      }
    }

    else
    {
      mainScreen6 = [MEMORY[0x277D75418] currentDevice];
      if ([mainScreen6 userInterfaceIdiom])
      {
        v94 = 0;
        v93 = 1;
        goto LABEL_1305;
      }
    }

    v93 = mainScreen73 ^ 1;
    v264 = __sb__runningInSpringBoard();
    if (v264)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen73 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen73 _referenceBounds];
    }

    v94 = v264 ^ 1;
    BSSizeRoundForScale();
    goto LABEL_1305;
  }

  LODWORD(v456) = 0;
  v454 = 0;
  v452 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0.0;
LABEL_1305:
  v34 = v510;
  v33 = v511;
LABEL_428:
  if (v94)
  {
  }

  if (v93)
  {
  }

  if (v92)
  {

    if (!v91)
    {
      goto LABEL_434;
    }

LABEL_548:

    if (!v90)
    {
      goto LABEL_436;
    }

    goto LABEL_435;
  }

  if (v91)
  {
    goto LABEL_548;
  }

LABEL_434:
  if (v90)
  {
LABEL_435:
  }

LABEL_436:
  if (v452)
  {
  }

  if (HIDWORD(v452))
  {
  }

  if (HIDWORD(v454))
  {
  }

  if (v454)
  {
  }

  if (v456)
  {
  }

  if (v462)
  {
  }

  if (HIDWORD(v456))
  {
  }

  if (v458)
  {
  }

  if (HIDWORD(v462))
  {
  }

  if (v464)
  {
  }

  if (HIDWORD(v464))
  {
  }

  if (v466)
  {
  }

  if (HIDWORD(v466))
  {
  }

  if (v468)
  {
  }

  if (HIDWORD(v468))
  {
  }

  if (v470)
  {
  }

  if (HIDWORD(v470))
  {
  }

  if (v472)
  {
  }

  if (HIDWORD(v472))
  {
  }

  if (v474)
  {
  }

  if (HIDWORD(v474))
  {
  }

  if (HIDWORD(v458))
  {
  }

  if (v476)
  {
  }

  if (v460)
  {
  }

  if (HIDWORD(v460))
  {
  }

  if (HIDWORD(v476))
  {
  }

  if (v478)
  {
  }

  if (HIDWORD(v478))
  {
  }

  if (v480)
  {
  }

  if (HIDWORD(v480))
  {
  }

  if (v482)
  {
  }

  if (HIDWORD(v482))
  {
  }

  if (v484)
  {
  }

  if (HIDWORD(v484))
  {
  }

  if (v486)
  {
  }

  if (HIDWORD(v486))
  {
  }

  if (v488)
  {
  }

  if (HIDWORD(v488))
  {
  }

  if (v490)
  {
  }

  if (HIDWORD(v490))
  {
  }

  if (v492)
  {
  }

  if (HIDWORD(v492))
  {
  }

  if (v494)
  {
  }

  if (HIDWORD(v494))
  {
  }

  if (v496)
  {
  }

  if (HIDWORD(v496))
  {
  }

  if (v498)
  {
  }

  if (HIDWORD(v498))
  {
  }

  if (v500)
  {
  }

  if (HIDWORD(v500))
  {
  }

  if (v503)
  {
  }

  v102 = MidX + v68;
  if (HIDWORD(v503))
  {
  }

  if (BSFloatLessThanFloat())
  {
    v102 = v102 + v95 - (v102 - v513 * 0.5);
  }

  v520.origin.x = v514;
  v520.origin.y = y;
  v520.size.width = v505;
  v520.size.height = v506;
  v103 = CGRectGetMaxX(v520) - v95;
  if (BSFloatGreaterThanFloat())
  {
    v29 = v102 - (v513 * 0.5 + v102 - v103);
  }

  else
  {
    v29 = v102;
  }

  if (v507)
  {
    v521.origin.x = rect;
    v521.origin.y = v512;
    v521.size.width = v34;
    v521.size.height = v33;
    v104 = CGRectGetMaxY(v521) + topCopy;
    v105 = v515;
  }

  else
  {
    v105 = v515;
    v104 = topCopy;
  }

  v28 = v105 * 0.5 + v104;
  if (constrainedCopy)
  {
    *constrainedCopy = v34 < v513 + -15.0;
  }

LABEL_5:

  v30 = v29;
  v31 = v28;
  result.y = v31;
  result.x = v30;
  return result;
}

- (void)_preferredTextSizeChanged:(id)changed
{
  callToActionLabel = self->_callToActionLabel;
  _callToActionLabelFont = [(CSTeachableMomentsContainerView *)self _callToActionLabelFont];
  [(SBUILegibilityLabel *)callToActionLabel setFont:_callToActionLabelFont];
}

- (id)_callToActionLabelFont
{
  preferredFontProvider = [MEMORY[0x277CF0D60] preferredFontProvider];
  v3 = [preferredFontProvider preferredFontForTextStyle:*MEMORY[0x277D76918] hiFontStyle:12];

  return v3;
}

- (BOOL)isStatusBarLayoutReady
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBarToFollow);
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained frameForPartWithIdentifier:*MEMORY[0x277D775C8]], x = v10.origin.x, y = v10.origin.y, width = v10.size.width, height = v10.size.height, !CGRectEqualToRect(v10, *MEMORY[0x277CBF398])))
  {
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    v8 = !CGRectEqualToRect(v11, *MEMORY[0x277CBF3A0]);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (UIStatusBar)statusBarToFollow
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBarToFollow);

  return WeakRetained;
}

@end