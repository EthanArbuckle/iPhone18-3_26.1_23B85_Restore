@interface CSTeachableMomentsContainerView
- (BOOL)isStatusBarLayoutReady;
- (CGPoint)_grabberCenterForContainerBounds:(CGRect)a3 grabberTop:(double)a4 grabberTopIsRelative:(BOOL)a5 grabberSize:(CGSize)a6 isSpaceConstrained:(BOOL *)a7;
- (CSTeachableMomentsContainerView)initWithFrame:(CGRect)a3;
- (UIStatusBar)statusBarToFollow;
- (id)_callToActionLabelFont;
- (id)createCallToActionLabel;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)presentationRegions;
- (void)_addCallToActionLabel;
- (void)_addControlCenterTutors;
- (void)_layoutCallToActionLabel;
- (void)_layoutControlCenterGrabberAndGlyph;
- (void)_layoutHomeAffordanceContainer;
- (void)_preferredTextSizeChanged:(id)a3;
- (void)_updateViewsForLegibilitySettings;
- (void)layoutSubviews;
- (void)setCallToActionLabel:(id)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setStatusBarToFollow:(id)a3;
- (void)statusBarManager:(id)a3 didUpdateAvoidanceFrameForStatusBar:(id)a4 withAnimationSettings:(id)a5;
@end

@implementation CSTeachableMomentsContainerView

- (void)_layoutHomeAffordanceContainer
{
  v3 = [(CSTeachableMomentsContainerView *)self homeAffordanceContainerView];
  if (v3)
  {
    v4 = v3;
    [(CSTeachableMomentsContainerView *)self bounds];
    [v4 setFrame:?];
    v3 = v4;
  }
}

- (void)_layoutCallToActionLabel
{
  v21 = [(CSTeachableMomentsContainerView *)self callToActionLabelContainerView];
  v3 = [(CSTeachableMomentsContainerView *)self callToActionLabelPositionPlaceholderView];
  v4 = [(CSTeachableMomentsContainerView *)self callToActionLabel];
  [(CSTeachableMomentsContainerView *)self bounds];
  v6 = v5;
  v8 = v7;
  [v21 setFrame:?];
  [v4 sizeThatFits:{159.0, 1.79769313e308}];
  v10 = v9;
  BSRectWithSize();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = v6 * 0.5;
  v20 = v8 - v10 * 0.5 + -11.0;
  [v4 setBounds:{v11, v13}];
  [v4 setCenter:{v19, v20}];
  [v3 setBounds:{v12, v14, v16, v18}];
  [v3 setCenter:{v19, v20 + -33.0}];
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
  v418 = self;
  [(CSTeachableMomentsContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CSTeachableMomentsContainerView *)self traitCollection];
  [v11 displayScale];

  v419[0] = 0;
  v12 = [(CSTeachableMomentsContainerView *)self controlCenterTutorsContainerView];
  [v12 setFrame:{v4, v6, v8, v10}];

  v13 = [(CSTeachableMomentsContainerView *)self controlCenterGrabberContainerView];
  v14 = [(CSTeachableMomentsContainerView *)self controlCenterGrabberView];
  v15 = [(CSTeachableMomentsContainerView *)self controlCenterGrabberPositionPlaceholderView];
  v16 = __sb__runningInSpringBoard();
  v17 = 0x277D75000uLL;
  v416 = v14;
  v417 = v13;
  *&v415[64] = v15;
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
    v343 = [MEMORY[0x277D75418] currentDevice];
    if ([v343 userInterfaceIdiom] != 1)
    {
      v18 = 0;
      v19 = 1;
      goto LABEL_10;
    }
  }

  v19 = v16 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v332 = [MEMORY[0x277D759A0] mainScreen];
      [v332 _referenceBounds];
    }

    v18 = v20 ^ 1;
    BSSizeRoundForScale();
    if (v42 == *(MEMORY[0x277D66E30] + 288) && v41 == *(MEMORY[0x277D66E30] + 296))
    {
      *&v415[56] = v20 ^ 1;
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
    v340 = [MEMORY[0x277D75418] currentDevice];
    if ([v340 userInterfaceIdiom] != 1)
    {
      v22 = 0;
      v23 = 1;
      goto LABEL_19;
    }
  }

  v23 = v21 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v331 = [MEMORY[0x277D759A0] mainScreen];
      [v331 _referenceBounds];
    }

    v22 = v20 ^ 1;
    BSSizeRoundForScale();
    if (v43 >= *(MEMORY[0x277D66E30] + 440))
    {
      *&v415[48] = v20 ^ 1;
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
    v339 = [MEMORY[0x277D75418] currentDevice];
    if ([v339 userInterfaceIdiom] != 1)
    {
      *&v415[40] = 0;
      v25 = 1;
      goto LABEL_28;
    }
  }

  v25 = v24 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v330 = [MEMORY[0x277D759A0] mainScreen];
      [v330 _referenceBounds];
    }

    *&v415[40] = v20 ^ 1;
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
    v338 = [MEMORY[0x277D75418] currentDevice];
    if ([v338 userInterfaceIdiom] != 1)
    {
      *&v415[32] = 0x100000000;
      goto LABEL_37;
    }
  }

  *&v415[36] = v26 ^ 1;
  v20 = __sb__runningInSpringBoard();
  if (v20)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v335 = [MEMORY[0x277D759A0] mainScreen];
    [v335 _referenceBounds];
  }

  *&v415[32] = v20 ^ 1;
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
    v337 = [MEMORY[0x277D75418] currentDevice];
    if ([v337 userInterfaceIdiom] != 1)
    {
      *&v415[24] = 0x100000000;
      goto LABEL_47;
    }
  }

  *&v415[28] = v29 ^ 1;
  v20 = __sb__runningInSpringBoard();
  if (v20)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v333 = [MEMORY[0x277D759A0] mainScreen];
    [v333 _referenceBounds];
  }

  *&v415[24] = v20 ^ 1;
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
    v336 = [MEMORY[0x277D75418] currentDevice];
    if ([v336 userInterfaceIdiom] != 1)
    {
      *&v415[16] = 0x100000000;
      goto LABEL_403;
    }
  }

  *&v415[20] = v40 ^ 1;
  v20 = __sb__runningInSpringBoard();
  if (v20)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v329 = [MEMORY[0x277D759A0] mainScreen];
    [v329 _referenceBounds];
  }

  *&v415[16] = v20 ^ 1;
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
  v20 = __sb__runningInSpringBoard();
  if (v20)
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
    *&v415[12] = v20 ^ 1;
    goto LABEL_64;
  }

  v334 = [MEMORY[0x277D75418] currentDevice];
  if ([v334 userInterfaceIdiom] == 1)
  {
    goto LABEL_411;
  }

LABEL_405:
  *&v415[12] = v20 ^ 1;
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
    v327 = [MEMORY[0x277D75418] currentDevice];
    if ([v327 userInterfaceIdiom])
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
      v320 = [MEMORY[0x277D759A0] mainScreen];
      [v320 _referenceBounds];
    }

    v20 = v137 ^ 1u;
    BSSizeRoundForScale();
    *&v415[4] = v20;
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
  v20 = __sb__runningInSpringBoard();
  if (v20)
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
    v328 = [MEMORY[0x277D75418] currentDevice];
    if ([v328 userInterfaceIdiom])
    {
      HIDWORD(v411) = 0;
      *v415 = 1;
      goto LABEL_802;
    }
  }

  *v415 = v20 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v323 = [MEMORY[0x277D759A0] mainScreen];
      [v323 _referenceBounds];
    }

    HIDWORD(v411) = v20 ^ 1;
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
    v324 = [MEMORY[0x277D75418] currentDevice];
    if ([v324 userInterfaceIdiom])
    {
      HIDWORD(v407) = 0;
      LODWORD(v411) = 1;
      goto LABEL_848;
    }
  }

  LODWORD(v411) = v139 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v315 = [MEMORY[0x277D759A0] mainScreen];
      [v315 _referenceBounds];
    }

    HIDWORD(v407) = v20 ^ 1;
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
  v20 = __sb__runningInSpringBoard();
  if (v20)
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
    v326 = [MEMORY[0x277D75418] currentDevice];
    if ([v326 userInterfaceIdiom])
    {
      HIDWORD(v403) = 0;
      LODWORD(v407) = 1;
      goto LABEL_858;
    }
  }

  LODWORD(v407) = v20 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v319 = [MEMORY[0x277D759A0] mainScreen];
      [v319 _referenceBounds];
    }

    HIDWORD(v403) = v20 ^ 1;
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
    v325 = [MEMORY[0x277D75418] currentDevice];
    if ([v325 userInterfaceIdiom])
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
      v316 = [MEMORY[0x277D759A0] mainScreen];
      [v316 _referenceBounds];
    }

    v20 = v147 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v399) = v20;
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
  v20 = __sb__runningInSpringBoard();
  if (v20)
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
    v322 = [MEMORY[0x277D75418] currentDevice];
    if ([v322 userInterfaceIdiom])
    {
      HIDWORD(v395) = 0;
      LODWORD(v399) = 1;
      goto LABEL_941;
    }
  }

  LODWORD(v399) = v20 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v314 = [MEMORY[0x277D759A0] mainScreen];
      [v314 _referenceBounds];
    }

    HIDWORD(v395) = v20 ^ 1;
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
    v321 = [MEMORY[0x277D75418] currentDevice];
    if ([v321 userInterfaceIdiom])
    {
      HIDWORD(v391) = 0;
      LODWORD(v395) = 1;
      goto LABEL_1009;
    }
  }

  LODWORD(v395) = v161 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v311 = [MEMORY[0x277D759A0] mainScreen];
      [v311 _referenceBounds];
    }

    HIDWORD(v391) = v20 ^ 1;
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
  v20 = __sb__runningInSpringBoard();
  if (v20)
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
    v318 = [MEMORY[0x277D75418] currentDevice];
    if ([v318 userInterfaceIdiom])
    {
      HIDWORD(v387) = 0;
      LODWORD(v391) = 1;
      goto LABEL_1066;
    }
  }

  LODWORD(v391) = v20 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v310 = [MEMORY[0x277D759A0] mainScreen];
      [v310 _referenceBounds];
    }

    HIDWORD(v387) = v20 ^ 1;
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
    v313 = [MEMORY[0x277D75418] currentDevice];
    if ([v313 userInterfaceIdiom])
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
      v304 = [MEMORY[0x277D759A0] mainScreen];
      [v304 _referenceBounds];
    }

    v20 = v187 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v383) = v20;
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
      v20 = 0;
      LODWORD(v383) = 0;
      goto LABEL_1217;
    }
  }

  else
  {
    v317 = [MEMORY[0x277D75418] currentDevice];
    if ([v317 userInterfaceIdiom])
    {
      v20 = 0;
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
      v307 = [MEMORY[0x277D759A0] mainScreen];
      [v307 _referenceBounds];
    }

    v20 = v189 ^ 1u;
    BSSizeRoundForScale();
    if (v190 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_1222;
    }
  }

  else
  {
    v20 = 0;
  }

LABEL_1217:
  if (_SBF_Private_IsD93Like())
  {
    HIDWORD(v379) = v20;
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
  HIDWORD(v379) = v20;
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
    v309 = [MEMORY[0x277D75418] currentDevice];
    if ([v309 userInterfaceIdiom])
    {
      HIDWORD(v375) = 0;
      LODWORD(v379) = 1;
      goto LABEL_1297;
    }
  }

  LODWORD(v379) = v191 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v300 = [MEMORY[0x277D759A0] mainScreen];
      [v300 _referenceBounds];
    }

    HIDWORD(v375) = v20 ^ 1;
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
  v20 = __sb__runningInSpringBoard();
  if (v20)
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
    v312 = [MEMORY[0x277D75418] currentDevice];
    if ([v312 userInterfaceIdiom])
    {
      HIDWORD(v371) = 0;
      LODWORD(v375) = 1;
      goto LABEL_1307;
    }
  }

  LODWORD(v375) = v20 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v303 = [MEMORY[0x277D759A0] mainScreen];
      [v303 _referenceBounds];
    }

    HIDWORD(v371) = v20 ^ 1;
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
    v305 = [MEMORY[0x277D75418] currentDevice];
    if ([v305 userInterfaceIdiom])
    {
      HIDWORD(v367) = 0;
      LODWORD(v371) = 1;
      goto LABEL_1407;
    }
  }

  LODWORD(v371) = v207 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v296 = [MEMORY[0x277D759A0] mainScreen];
      [v296 _referenceBounds];
    }

    HIDWORD(v367) = v20 ^ 1;
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
  v20 = __sb__runningInSpringBoard();
  if (v20)
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
    v308 = [*(v17 + 1048) currentDevice];
    if ([v308 userInterfaceIdiom])
    {
      HIDWORD(v363) = 0;
      LODWORD(v367) = 1;
      goto LABEL_1417;
    }
  }

  LODWORD(v367) = v20 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v299 = [MEMORY[0x277D759A0] mainScreen];
      [v299 _referenceBounds];
    }

    HIDWORD(v363) = v20 ^ 1;
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
    v306 = [*(v17 + 1048) currentDevice];
    if ([v306 userInterfaceIdiom])
    {
      HIDWORD(v359) = 0;
      LODWORD(v363) = 1;
      goto LABEL_1431;
    }
  }

  LODWORD(v363) = v220 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v297 = [MEMORY[0x277D759A0] mainScreen];
      [v297 _referenceBounds];
    }

    HIDWORD(v359) = v20 ^ 1;
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
  v20 = __sb__runningInSpringBoard();
  if (v20)
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
    v302 = [*(v17 + 1048) currentDevice];
    if ([v302 userInterfaceIdiom])
    {
      HIDWORD(v355) = 0;
      LODWORD(v359) = 1;
      goto LABEL_1503;
    }
  }

  LODWORD(v359) = v20 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v295 = [MEMORY[0x277D759A0] mainScreen];
      [v295 _referenceBounds];
    }

    HIDWORD(v355) = v20 ^ 1;
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
    v301 = [MEMORY[0x277D75418] currentDevice];
    if ([v301 userInterfaceIdiom])
    {
      HIDWORD(v351) = 0;
      LODWORD(v355) = 1;
      goto LABEL_1572;
    }
  }

  LODWORD(v355) = v235 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v294 = [MEMORY[0x277D759A0] mainScreen];
      [v294 _referenceBounds];
    }

    HIDWORD(v351) = v20 ^ 1;
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
  v20 = __sb__runningInSpringBoard();
  if (v20)
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
    v298 = [MEMORY[0x277D75418] currentDevice];
    if ([v298 userInterfaceIdiom])
    {
      v347 = 0;
      LODWORD(v351) = 1;
      goto LABEL_1635;
    }
  }

  LODWORD(v351) = v20 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v293 = [MEMORY[0x277D759A0] mainScreen];
      [v293 _referenceBounds];
    }

    v347 = v20 ^ 1;
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
    v292 = [MEMORY[0x277D75418] currentDevice];
    if ([v292 userInterfaceIdiom])
    {
      v36 = 0;
      v37 = 1;
      goto LABEL_1825;
    }
  }

  v37 = v255 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v288 = [MEMORY[0x277D759A0] mainScreen];
      [v288 _referenceBounds];
    }

    v36 = v20 ^ 1;
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
    v291 = [MEMORY[0x277D75418] currentDevice];
    if ([v291 userInterfaceIdiom])
    {
      v34 = 0;
      v35 = 1;
      goto LABEL_1845;
    }
  }

  v35 = v262 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v287 = [MEMORY[0x277D759A0] mainScreen];
      [v287 _referenceBounds];
    }

    v34 = v20 ^ 1;
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
  v20 = __sb__runningInSpringBoard();
  if (!v20)
  {
    v290 = [MEMORY[0x277D75418] currentDevice];
    if ([v290 userInterfaceIdiom])
    {
      v32 = 0;
      v33 = 1;
      goto LABEL_1865;
    }

LABEL_1861:
    v33 = v20 ^ 1;
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v289 = [MEMORY[0x277D759A0] mainScreen];
      [v289 _referenceBounds];
    }

    v32 = v20 ^ 1;
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
    v20 = [MEMORY[0x277D75418] currentDevice];
    if ([v20 userInterfaceIdiom])
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
    v286 = [MEMORY[0x277D759A0] mainScreen];
    [v286 _referenceBounds];
  }

  v30 = v272 ^ 1;
  BSSizeRoundForScale();
  v38 = 0.0;
  v17 = 0x277D75000;
  v27 = v286;
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
      v47 = 0;
      v48 = 0;
      goto LABEL_192;
    }
  }

  else
  {
    v340 = [*(v17 + 1048) currentDevice];
    if ([v340 userInterfaceIdiom] != 1)
    {
      v47 = 0;
      v48 = 1;
      goto LABEL_192;
    }
  }

  v48 = v46 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v49 = __sb__runningInSpringBoard();
    if (v49)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v331 = [MEMORY[0x277D759A0] mainScreen];
      [v331 _referenceBounds];
    }

    v47 = v49 ^ 1;
    BSSizeRoundForScale();
    if (v70 == *(MEMORY[0x277D66E30] + 288) && v69 == *(MEMORY[0x277D66E30] + 296))
    {
      *&v415[56] = v49 ^ 1;
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
    v47 = 0;
  }

LABEL_192:
  v50 = __sb__runningInSpringBoard();
  *&v415[56] = v47;
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
    v339 = [*(v17 + 1048) currentDevice];
    if ([v339 userInterfaceIdiom] != 1)
    {
      v51 = 0;
      v52 = 1;
      goto LABEL_201;
    }
  }

  v52 = v50 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v49 = __sb__runningInSpringBoard();
    if (v49)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v330 = [MEMORY[0x277D759A0] mainScreen];
      [v330 _referenceBounds];
    }

    v51 = v49 ^ 1;
    BSSizeRoundForScale();
    if (v71 >= *(MEMORY[0x277D66E30] + 440))
    {
      *&v415[48] = v49 ^ 1;
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
    v338 = [*(v17 + 1048) currentDevice];
    if ([v338 userInterfaceIdiom] != 1)
    {
      v54 = 0;
      v55 = 1;
      goto LABEL_210;
    }
  }

  v55 = v53 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v49 = __sb__runningInSpringBoard();
    if (v49)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v329 = [MEMORY[0x277D759A0] mainScreen];
      [v329 _referenceBounds];
    }

    v54 = v49 ^ 1;
    BSSizeRoundForScale();
    if (v72 >= *(MEMORY[0x277D66E30] + 376))
    {
      *&v415[40] = v49 ^ 1;
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
    v337 = [*(v17 + 1048) currentDevice];
    if ([v337 userInterfaceIdiom] != 1)
    {
      *&v415[32] = 0;
      v57 = 1;
      goto LABEL_219;
    }
  }

  v57 = v56 ^ 1;
  v49 = __sb__runningInSpringBoard();
  if (v49)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v334 = [MEMORY[0x277D759A0] mainScreen];
    [v334 _referenceBounds];
  }

  *&v415[32] = v49 ^ 1;
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
    v336 = [*(v17 + 1048) currentDevice];
    if ([v336 userInterfaceIdiom] != 1)
    {
      *&v415[24] = 0x100000000;
      goto LABEL_229;
    }
  }

  *&v415[28] = v59 ^ 1;
  v49 = __sb__runningInSpringBoard();
  if (v49)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v332 = [MEMORY[0x277D759A0] mainScreen];
    [v332 _referenceBounds];
  }

  *&v415[24] = v49 ^ 1;
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
    v335 = [*(v17 + 1048) currentDevice];
    if ([v335 userInterfaceIdiom] != 1)
    {
      *&v415[16] = 0x100000000;
      goto LABEL_415;
    }
  }

  *&v415[20] = v68 ^ 1;
  v49 = __sb__runningInSpringBoard();
  if (v49)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v328 = [MEMORY[0x277D759A0] mainScreen];
    [v328 _referenceBounds];
  }

  *&v415[16] = v49 ^ 1;
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
  v49 = __sb__runningInSpringBoard();
  if (v49)
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
    *&v415[12] = v49 ^ 1;
    goto LABEL_246;
  }

  v333 = [*(v17 + 1048) currentDevice];
  if ([v333 userInterfaceIdiom] == 1)
  {
    goto LABEL_423;
  }

LABEL_417:
  *&v415[12] = v49 ^ 1;
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
    v326 = [*(v17 + 1048) currentDevice];
    if ([v326 userInterfaceIdiom])
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
      v319 = [MEMORY[0x277D759A0] mainScreen];
      [v319 _referenceBounds];
    }

    v49 = v140 ^ 1u;
    BSSizeRoundForScale();
    *&v415[4] = v49;
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
  v49 = __sb__runningInSpringBoard();
  if (v49)
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
    v327 = [*(v17 + 1048) currentDevice];
    if ([v327 userInterfaceIdiom])
    {
      HIDWORD(v412) = 0;
      *v415 = 1;
      goto LABEL_827;
    }
  }

  *v415 = v49 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v49 = __sb__runningInSpringBoard();
    if (v49)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v322 = [MEMORY[0x277D759A0] mainScreen];
      [v322 _referenceBounds];
    }

    HIDWORD(v412) = v49 ^ 1;
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
    v323 = [*(v17 + 1048) currentDevice];
    if ([v323 userInterfaceIdiom])
    {
      HIDWORD(v408) = 0;
      LODWORD(v412) = 1;
      goto LABEL_882;
    }
  }

  LODWORD(v412) = v142 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v49 = __sb__runningInSpringBoard();
    if (v49)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v314 = [MEMORY[0x277D759A0] mainScreen];
      [v314 _referenceBounds];
    }

    HIDWORD(v408) = v49 ^ 1;
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
  v49 = __sb__runningInSpringBoard();
  if (v49)
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
    v325 = [*(v17 + 1048) currentDevice];
    if ([v325 userInterfaceIdiom])
    {
      HIDWORD(v404) = 0;
      LODWORD(v408) = 1;
      goto LABEL_892;
    }
  }

  LODWORD(v408) = v49 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v49 = __sb__runningInSpringBoard();
    if (v49)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v318 = [MEMORY[0x277D759A0] mainScreen];
      [v318 _referenceBounds];
    }

    HIDWORD(v404) = v49 ^ 1;
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
    v324 = [*(v17 + 1048) currentDevice];
    if ([v324 userInterfaceIdiom])
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
      v315 = [MEMORY[0x277D759A0] mainScreen];
      [v315 _referenceBounds];
    }

    v49 = v150 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v400) = v49;
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
  v49 = __sb__runningInSpringBoard();
  if (v49)
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
    v321 = [*(v17 + 1048) currentDevice];
    if ([v321 userInterfaceIdiom])
    {
      HIDWORD(v396) = 0;
      LODWORD(v400) = 1;
      goto LABEL_947;
    }
  }

  LODWORD(v400) = v49 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v49 = __sb__runningInSpringBoard();
    if (v49)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v313 = [MEMORY[0x277D759A0] mainScreen];
      [v313 _referenceBounds];
    }

    HIDWORD(v396) = v49 ^ 1;
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
    v320 = [*(v17 + 1048) currentDevice];
    if ([v320 userInterfaceIdiom])
    {
      HIDWORD(v392) = 0;
      LODWORD(v396) = 1;
      goto LABEL_1019;
    }
  }

  LODWORD(v396) = v163 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v49 = __sb__runningInSpringBoard();
    if (v49)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v310 = [MEMORY[0x277D759A0] mainScreen];
      [v310 _referenceBounds];
    }

    HIDWORD(v392) = v49 ^ 1;
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
  v49 = __sb__runningInSpringBoard();
  if (v49)
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
    v317 = [*(v17 + 1048) currentDevice];
    if ([v317 userInterfaceIdiom])
    {
      HIDWORD(v388) = 0;
      LODWORD(v392) = 1;
      goto LABEL_1073;
    }
  }

  LODWORD(v392) = v49 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v49 = __sb__runningInSpringBoard();
    if (v49)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v309 = [MEMORY[0x277D759A0] mainScreen];
      [v309 _referenceBounds];
    }

    HIDWORD(v388) = v49 ^ 1;
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
    v312 = [*(v17 + 1048) currentDevice];
    if ([v312 userInterfaceIdiom])
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
      v303 = [MEMORY[0x277D759A0] mainScreen];
      [v303 _referenceBounds];
    }

    v49 = v192 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v384) = v49;
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
      v49 = 0;
      goto LABEL_1243;
    }
  }

  else
  {
    v316 = [*(v17 + 1048) currentDevice];
    if ([v316 userInterfaceIdiom])
    {
      v49 = 0;
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
      v306 = [MEMORY[0x277D759A0] mainScreen];
      [v306 _referenceBounds];
    }

    v49 = v194 ^ 1u;
    BSSizeRoundForScale();
    if (v195 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_1247;
    }
  }

  else
  {
    v49 = 0;
  }

LABEL_1243:
  if (_SBF_Private_IsD93Like())
  {
    HIDWORD(v380) = v49;
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
  HIDWORD(v380) = v49;
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
    v308 = [*(v17 + 1048) currentDevice];
    if ([v308 userInterfaceIdiom])
    {
      HIDWORD(v376) = 0;
      LODWORD(v380) = 1;
      goto LABEL_1323;
    }
  }

  LODWORD(v380) = v196 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v49 = __sb__runningInSpringBoard();
    if (v49)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v299 = [MEMORY[0x277D759A0] mainScreen];
      [v299 _referenceBounds];
    }

    HIDWORD(v376) = v49 ^ 1;
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
  v49 = __sb__runningInSpringBoard();
  if (v49)
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
    v311 = [*(v17 + 1048) currentDevice];
    if ([v311 userInterfaceIdiom])
    {
      HIDWORD(v372) = 0;
      LODWORD(v376) = 1;
      goto LABEL_1333;
    }
  }

  LODWORD(v376) = v49 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v49 = __sb__runningInSpringBoard();
    if (v49)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v302 = [MEMORY[0x277D759A0] mainScreen];
      [v302 _referenceBounds];
    }

    HIDWORD(v372) = v49 ^ 1;
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
    v304 = [*(v17 + 1048) currentDevice];
    if ([v304 userInterfaceIdiom])
    {
      HIDWORD(v368) = 0;
      LODWORD(v372) = 1;
      goto LABEL_1441;
    }
  }

  LODWORD(v372) = v209 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v49 = __sb__runningInSpringBoard();
    if (v49)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v295 = [MEMORY[0x277D759A0] mainScreen];
      [v295 _referenceBounds];
    }

    HIDWORD(v368) = v49 ^ 1;
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
  v49 = __sb__runningInSpringBoard();
  if (v49)
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
    v307 = [*(v17 + 1048) currentDevice];
    if ([v307 userInterfaceIdiom])
    {
      HIDWORD(v364) = 0;
      LODWORD(v368) = 1;
      goto LABEL_1451;
    }
  }

  LODWORD(v368) = v49 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v49 = __sb__runningInSpringBoard();
    if (v49)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v298 = [MEMORY[0x277D759A0] mainScreen];
      [v298 _referenceBounds];
    }

    HIDWORD(v364) = v49 ^ 1;
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
    v305 = [*(v17 + 1048) currentDevice];
    if ([v305 userInterfaceIdiom])
    {
      HIDWORD(v360) = 0;
      LODWORD(v364) = 1;
      goto LABEL_1465;
    }
  }

  LODWORD(v364) = v222 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v49 = __sb__runningInSpringBoard();
    if (v49)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v296 = [MEMORY[0x277D759A0] mainScreen];
      [v296 _referenceBounds];
    }

    HIDWORD(v360) = v49 ^ 1;
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
  v49 = __sb__runningInSpringBoard();
  if (v49)
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
    v301 = [*(v17 + 1048) currentDevice];
    if ([v301 userInterfaceIdiom])
    {
      HIDWORD(v356) = 0;
      LODWORD(v360) = 1;
      goto LABEL_1509;
    }
  }

  LODWORD(v360) = v49 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v49 = __sb__runningInSpringBoard();
    if (v49)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v294 = [MEMORY[0x277D759A0] mainScreen];
      [v294 _referenceBounds];
    }

    HIDWORD(v356) = v49 ^ 1;
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
    v300 = [*(v17 + 1048) currentDevice];
    if ([v300 userInterfaceIdiom])
    {
      HIDWORD(v352) = 0;
      LODWORD(v356) = 1;
      goto LABEL_1582;
    }
  }

  LODWORD(v356) = v237 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v49 = __sb__runningInSpringBoard();
    if (v49)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v293 = [MEMORY[0x277D759A0] mainScreen];
      [v293 _referenceBounds];
    }

    HIDWORD(v352) = v49 ^ 1;
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
  v49 = __sb__runningInSpringBoard();
  if (v49)
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
    v297 = [*(v17 + 1048) currentDevice];
    if ([v297 userInterfaceIdiom])
    {
      v348 = 0;
      LODWORD(v352) = 1;
      goto LABEL_1641;
    }
  }

  LODWORD(v352) = v49 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v49 = __sb__runningInSpringBoard();
    if (v49)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v292 = [MEMORY[0x277D759A0] mainScreen];
      [v292 _referenceBounds];
    }

    v348 = v49 ^ 1;
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
  v49 = &unk_21EC95000;
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
    v291 = [MEMORY[0x277D75418] currentDevice];
    if ([v291 userInterfaceIdiom])
    {
      v60 = 0;
      v344 = 1;
      goto LABEL_1835;
    }
  }

  v344 = v256 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v49 = __sb__runningInSpringBoard();
    if (v49)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v288 = [MEMORY[0x277D759A0] mainScreen];
      [v288 _referenceBounds];
    }

    v60 = v49 ^ 1;
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
    v290 = [MEMORY[0x277D75418] currentDevice];
    if ([v290 userInterfaceIdiom])
    {
      v62 = 0;
      v61 = 1;
      goto LABEL_1855;
    }
  }

  v61 = v263 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v49 = __sb__runningInSpringBoard();
    if (v49)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v287 = [MEMORY[0x277D759A0] mainScreen];
      [v287 _referenceBounds];
    }

    v62 = v49 ^ 1;
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
  v49 = __sb__runningInSpringBoard();
  if (!v49)
  {
    v289 = [MEMORY[0x277D75418] currentDevice];
    if ([v289 userInterfaceIdiom])
    {
      v64 = 0;
      v63 = 1;
      goto LABEL_1876;
    }

LABEL_1872:
    v63 = v49 ^ 1;
    v49 = __sb__runningInSpringBoard();
    if (v49)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v47 = [MEMORY[0x277D759A0] mainScreen];
      [v47 _referenceBounds];
    }

    v64 = v49 ^ 1;
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
  v267 = __sb__runningInSpringBoard();
  if (v267)
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
    v49 = [MEMORY[0x277D75418] currentDevice];
    if ([v49 userInterfaceIdiom])
    {
      v66 = 0.0;
      v65 = 1;
      goto LABEL_246;
    }
  }

  v65 = v267 ^ 1;
  v273 = __sb__runningInSpringBoard();
  if (v273)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v267 = [MEMORY[0x277D759A0] mainScreen];
    [v267 _referenceBounds];
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

  v73 = *&v415[36];
  if (v64)
  {
  }

  v74 = v418;
  v75 = *&v415[52];
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

  v76 = *&v415[40];
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

  if (![(CSTeachableMomentsContainerView *)v418 usesStatusBarRelativeLayoutForControlCenterTutors])
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
      v337 = [MEMORY[0x277D75418] currentDevice];
      if ([v337 userInterfaceIdiom] != 1)
      {
        *&v415[56] = 0x100000000;
        goto LABEL_376;
      }
    }

    *&v415[60] = v84 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v86 = __sb__runningInSpringBoard();
      if (v86)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v339 = [MEMORY[0x277D759A0] mainScreen];
        [v339 _referenceBounds];
      }

      *&v415[56] = v86 ^ 1;
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
        v76 = 0;
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
      v336 = [MEMORY[0x277D75418] currentDevice];
      if ([v336 userInterfaceIdiom] != 1)
      {
        *&v415[48] = 0x100000000;
        goto LABEL_385;
      }
    }

    *&v415[52] = v87 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v86 = __sb__runningInSpringBoard();
      if (v86)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v338 = [MEMORY[0x277D759A0] mainScreen];
        [v338 _referenceBounds];
      }

      *&v415[48] = v86 ^ 1;
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
        v76 = 0;
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
      v335 = [MEMORY[0x277D75418] currentDevice];
      if ([v335 userInterfaceIdiom] != 1)
      {
        *&v415[40] = 0x100000000;
        goto LABEL_394;
      }
    }

    *&v415[44] = v88 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v86 = __sb__runningInSpringBoard();
      if (v86)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v328 = [MEMORY[0x277D759A0] mainScreen];
        [v328 _referenceBounds];
      }

      *&v415[40] = v86 ^ 1;
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
        v76 = 0;
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
      v334 = [MEMORY[0x277D75418] currentDevice];
      if ([v334 userInterfaceIdiom] != 1)
      {
        *&v415[32] = 0x100000000;
        goto LABEL_429;
      }
    }

    *&v415[36] = v89 ^ 1;
    v86 = __sb__runningInSpringBoard();
    if (v86)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v331 = [MEMORY[0x277D759A0] mainScreen];
      [v331 _referenceBounds];
    }

    *&v415[32] = v86 ^ 1;
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
      v76 = 0;
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
      v333 = [MEMORY[0x277D75418] currentDevice];
      if ([v333 userInterfaceIdiom] != 1)
      {
        *&v415[24] = 0x100000000;
        goto LABEL_439;
      }
    }

    *&v415[28] = v95 ^ 1;
    v86 = __sb__runningInSpringBoard();
    if (v86)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v329 = [MEMORY[0x277D759A0] mainScreen];
      [v329 _referenceBounds];
    }

    *&v415[24] = v86 ^ 1;
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
      v76 = 0;
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
      v332 = [MEMORY[0x277D75418] currentDevice];
      if ([v332 userInterfaceIdiom] != 1)
      {
        *&v415[16] = 0x100000000;
        goto LABEL_630;
      }
    }

    *&v415[20] = v102 ^ 1;
    v86 = __sb__runningInSpringBoard();
    if (v86)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v327 = [MEMORY[0x277D759A0] mainScreen];
      [v327 _referenceBounds];
    }

    *&v415[16] = v86 ^ 1;
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
      v76 = 0;
      v97 = 0;
      v98 = 0;
      v99 = 0;
      v100 = 0.0;
      goto LABEL_1973;
    }

LABEL_630:
    v86 = __sb__runningInSpringBoard();
    if (v86)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_632;
      }
    }

    else
    {
      v330 = [MEMORY[0x277D75418] currentDevice];
      if ([v330 userInterfaceIdiom] != 1)
      {
LABEL_632:
        *&v415[12] = v86 ^ 1;
        v75 = &unk_21EC97000;
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
          v325 = [MEMORY[0x277D75418] currentDevice];
          if ([v325 userInterfaceIdiom])
          {
            *&v415[4] = 0x100000000;
            goto LABEL_916;
          }
        }

        *&v415[8] = v128 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v86 = __sb__runningInSpringBoard();
          if (v86)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v318 = [MEMORY[0x277D759A0] mainScreen];
            [v318 _referenceBounds];
          }

          *&v415[4] = v86 ^ 1;
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
            v76 = 0;
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
        v86 = __sb__runningInSpringBoard();
        if (v86)
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
          v326 = [MEMORY[0x277D75418] currentDevice];
          if ([v326 userInterfaceIdiom])
          {
            HIDWORD(v413) = 0;
            *v415 = 1;
            goto LABEL_926;
          }
        }

        *v415 = v86 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v86 = __sb__runningInSpringBoard();
          if (v86)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v321 = [MEMORY[0x277D759A0] mainScreen];
            [v321 _referenceBounds];
          }

          HIDWORD(v413) = v86 ^ 1;
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
          v76 = 0;
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
          v322 = [MEMORY[0x277D75418] currentDevice];
          if ([v322 userInterfaceIdiom])
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
            v313 = [MEMORY[0x277D759A0] mainScreen];
            [v313 _referenceBounds];
          }

          v86 = v165 ^ 1u;
          BSSizeRoundForScale();
          HIDWORD(v409) = v86;
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
            v76 = 0;
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
        v86 = __sb__runningInSpringBoard();
        if (v86)
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
          v324 = [MEMORY[0x277D75418] currentDevice];
          if ([v324 userInterfaceIdiom])
          {
            HIDWORD(v405) = 0;
            LODWORD(v409) = 1;
            goto LABEL_1042;
          }
        }

        LODWORD(v409) = v86 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v86 = __sb__runningInSpringBoard();
          if (v86)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v317 = [MEMORY[0x277D759A0] mainScreen];
            [v317 _referenceBounds];
          }

          HIDWORD(v405) = v86 ^ 1;
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
          v76 = 0;
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
            v75 = 0;
            goto LABEL_1056;
          }
        }

        else
        {
          v323 = [MEMORY[0x277D75418] currentDevice];
          if ([v323 userInterfaceIdiom])
          {
            v75 = 0;
            v168 = 1;
            goto LABEL_1056;
          }
        }

        v168 = v167 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v86 = __sb__runningInSpringBoard();
          if (v86)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v314 = [MEMORY[0x277D759A0] mainScreen];
            [v314 _referenceBounds];
          }

          v75 = v86 ^ 1;
          BSSizeRoundForScale();
          if (v172 >= *(MEMORY[0x277D66E30] + 136))
          {
            HIDWORD(v401) = v86 ^ 1;
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
            v76 = 0;
            v97 = 0;
            v98 = 0;
            v99 = 0;
            v100 = 41.0;
            goto LABEL_1973;
          }
        }

        else
        {
          v75 = 0;
        }

LABEL_1056:
        v86 = __sb__runningInSpringBoard();
        LODWORD(v405) = v168;
        HIDWORD(v401) = v75;
        if (v86)
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
          v320 = [MEMORY[0x277D75418] currentDevice];
          if ([v320 userInterfaceIdiom])
          {
            HIDWORD(v397) = 0;
            LODWORD(v401) = 1;
            goto LABEL_1080;
          }
        }

        LODWORD(v401) = v86 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v86 = __sb__runningInSpringBoard();
          if (v86)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v312 = [MEMORY[0x277D759A0] mainScreen];
            [v312 _referenceBounds];
          }

          HIDWORD(v397) = v86 ^ 1;
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
          v76 = 0;
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
          v319 = [MEMORY[0x277D75418] currentDevice];
          if ([v319 userInterfaceIdiom])
          {
            HIDWORD(v393) = 0;
            LODWORD(v397) = 1;
            goto LABEL_1172;
          }
        }

        LODWORD(v397) = v181 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v86 = __sb__runningInSpringBoard();
          if (v86)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v309 = [MEMORY[0x277D759A0] mainScreen];
            [v309 _referenceBounds];
          }

          HIDWORD(v393) = v86 ^ 1;
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
            v76 = 0;
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
        v86 = __sb__runningInSpringBoard();
        if (v86)
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
          v316 = [MEMORY[0x277D75418] currentDevice];
          if ([v316 userInterfaceIdiom])
          {
            HIDWORD(v389) = 0;
            LODWORD(v393) = 1;
            goto LABEL_1190;
          }
        }

        LODWORD(v393) = v86 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v86 = __sb__runningInSpringBoard();
          if (v86)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v308 = [MEMORY[0x277D759A0] mainScreen];
            [v308 _referenceBounds];
          }

          HIDWORD(v389) = v86 ^ 1;
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
          v76 = 0;
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
          v311 = [MEMORY[0x277D75418] currentDevice];
          if ([v311 userInterfaceIdiom])
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
            v302 = [MEMORY[0x277D759A0] mainScreen];
            [v302 _referenceBounds];
          }

          v86 = v210 ^ 1u;
          BSSizeRoundForScale();
          HIDWORD(v385) = v86;
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
            v76 = 0;
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
        v86 = __sb__runningInSpringBoard();
        if (v86)
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
          v315 = [MEMORY[0x277D75418] currentDevice];
          if ([v315 userInterfaceIdiom])
          {
            HIDWORD(v381) = 0;
            LODWORD(v385) = 1;
            goto LABEL_1358;
          }
        }

        LODWORD(v385) = v86 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v86 = __sb__runningInSpringBoard();
          if (v86)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v305 = [MEMORY[0x277D759A0] mainScreen];
            [v305 _referenceBounds];
          }

          HIDWORD(v381) = v86 ^ 1;
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
          v76 = 0;
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
          v307 = [MEMORY[0x277D75418] currentDevice];
          if ([v307 userInterfaceIdiom])
          {
            HIDWORD(v377) = 0;
            LODWORD(v381) = 1;
            goto LABEL_1478;
          }
        }

        LODWORD(v381) = v212 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v86 = __sb__runningInSpringBoard();
          if (v86)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v298 = [MEMORY[0x277D759A0] mainScreen];
            [v298 _referenceBounds];
          }

          HIDWORD(v377) = v86 ^ 1;
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
            v76 = 0;
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
        v86 = __sb__runningInSpringBoard();
        if (v86)
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
          v310 = [MEMORY[0x277D75418] currentDevice];
          if ([v310 userInterfaceIdiom])
          {
            HIDWORD(v373) = 0;
            LODWORD(v377) = 1;
            goto LABEL_1488;
          }
        }

        LODWORD(v377) = v86 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v86 = __sb__runningInSpringBoard();
          if (v86)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v301 = [MEMORY[0x277D759A0] mainScreen];
            [v301 _referenceBounds];
          }

          HIDWORD(v373) = v86 ^ 1;
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
          v76 = 0;
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
          v303 = [MEMORY[0x277D75418] currentDevice];
          if ([v303 userInterfaceIdiom])
          {
            HIDWORD(v369) = 0;
            LODWORD(v373) = 1;
            goto LABEL_1595;
          }
        }

        LODWORD(v373) = v225 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v86 = __sb__runningInSpringBoard();
          if (v86)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v294 = [MEMORY[0x277D759A0] mainScreen];
            [v294 _referenceBounds];
          }

          HIDWORD(v369) = v86 ^ 1;
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
            v76 = 0;
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
        v86 = __sb__runningInSpringBoard();
        if (v86)
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
          v306 = [MEMORY[0x277D75418] currentDevice];
          if ([v306 userInterfaceIdiom])
          {
            HIDWORD(v365) = 0;
            LODWORD(v369) = 1;
            goto LABEL_1605;
          }
        }

        LODWORD(v369) = v86 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v86 = __sb__runningInSpringBoard();
          if (v86)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v297 = [MEMORY[0x277D759A0] mainScreen];
            [v297 _referenceBounds];
          }

          HIDWORD(v365) = v86 ^ 1;
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
          v76 = 0;
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
          v304 = [MEMORY[0x277D75418] currentDevice];
          if ([v304 userInterfaceIdiom])
          {
            HIDWORD(v361) = 0;
            LODWORD(v365) = 1;
            goto LABEL_1619;
          }
        }

        LODWORD(v365) = v240 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v86 = __sb__runningInSpringBoard();
          if (v86)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v295 = [MEMORY[0x277D759A0] mainScreen];
            [v295 _referenceBounds];
          }

          HIDWORD(v361) = v86 ^ 1;
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
            v76 = 0;
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
        v86 = __sb__runningInSpringBoard();
        if (v86)
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
          v300 = [MEMORY[0x277D75418] currentDevice];
          if ([v300 userInterfaceIdiom])
          {
            HIDWORD(v357) = 0;
            LODWORD(v361) = 1;
            goto LABEL_1629;
          }
        }

        LODWORD(v361) = v86 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v86 = __sb__runningInSpringBoard();
          if (v86)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v293 = [MEMORY[0x277D759A0] mainScreen];
            [v293 _referenceBounds];
          }

          HIDWORD(v357) = v86 ^ 1;
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
          v76 = 0;
          v97 = 0;
          v98 = 0;
          v99 = 0;
          v100 = 0.0;
          goto LABEL_1973;
        }

LABEL_1697:
        v248 = __sb__runningInSpringBoard();
        v75 = &unk_21EC97000;
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
          v299 = [MEMORY[0x277D75418] currentDevice];
          if ([v299 userInterfaceIdiom])
          {
            HIDWORD(v353) = 0;
            LODWORD(v357) = 1;
            goto LABEL_1735;
          }
        }

        LODWORD(v357) = v248 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v86 = __sb__runningInSpringBoard();
          if (v86)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v292 = [MEMORY[0x277D759A0] mainScreen];
            [v292 _referenceBounds];
          }

          HIDWORD(v353) = v86 ^ 1;
          BSSizeRoundForScale();
          if (v257 >= *(MEMORY[0x277D66E30] + 104))
          {
            LODWORD(v353) = 0;
            v349 = 0;
            v345 = 0;
            v341 = 0;
            v96 = 0;
            v76 = 0;
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
        v86 = __sb__runningInSpringBoard();
        if (v86)
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
          v296 = [MEMORY[0x277D75418] currentDevice];
          if ([v296 userInterfaceIdiom])
          {
            v349 = 0;
            LODWORD(v353) = 1;
            goto LABEL_1753;
          }
        }

        LODWORD(v353) = v86 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v86 = __sb__runningInSpringBoard();
          if (v86)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v291 = [MEMORY[0x277D759A0] mainScreen];
            [v291 _referenceBounds];
          }

          v349 = v86 ^ 1;
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
          v76 = 0;
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
          v76 = 0;
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
          v76 = 0;
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
          v290 = [MEMORY[0x277D75418] currentDevice];
          if ([v290 userInterfaceIdiom])
          {
            v341 = 0;
            v345 = 1;
            goto LABEL_1907;
          }
        }

        v345 = v261 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v86 = __sb__runningInSpringBoard();
          if (v86)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v288 = [MEMORY[0x277D759A0] mainScreen];
            [v288 _referenceBounds];
          }

          v341 = v86 ^ 1;
          BSSizeRoundForScale();
          if (v278 >= *(MEMORY[0x277D66E30] + 88))
          {
            v96 = 0;
            v76 = 0;
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
            v76 = 0;
            goto LABEL_1917;
          }
        }

        else
        {
          v289 = [MEMORY[0x277D75418] currentDevice];
          if ([v289 userInterfaceIdiom])
          {
            v76 = 0;
            v96 = 1;
            goto LABEL_1917;
          }
        }

        v96 = v274 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v86 = __sb__runningInSpringBoard();
          if (v86)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v287 = [MEMORY[0x277D759A0] mainScreen];
            [v287 _referenceBounds];
          }

          v76 = v86 ^ 1;
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
          v76 = 0;
        }

LABEL_1917:
        v86 = __sb__runningInSpringBoard();
        if (v86)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v97 = 0;
            v98 = 0;
LABEL_1927:
            v276 = __sb__runningInSpringBoard();
            if (v276)
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
              v86 = [MEMORY[0x277D75418] currentDevice];
              if ([v86 userInterfaceIdiom])
              {
                v100 = 0.0;
                v99 = 1;
                goto LABEL_1973;
              }
            }

            v99 = v276 ^ 1;
            v282 = __sb__runningInSpringBoard();
            if (v282)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v276 = [MEMORY[0x277D759A0] mainScreen];
              [v276 _referenceBounds];
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

                v75 = HIDWORD(v401);
                if (v76)
                {
                }

                if (v96)
                {
                }

                if (v341)
                {
                }

                v74 = v418;
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

                    v107 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
                    v420.origin.x = 0.0;
                    v420.origin.y = 0.0;
                    v420.size.width = v38;
                    v420.size.height = v45;
                    MidX = CGRectGetMidX(v420);
                    v109 = v8 - MidX - v100;
                    v110 = v100 + MidX;
                    if (v107 == 1)
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
          v73 = [MEMORY[0x277D75418] currentDevice];
          if ([v73 userInterfaceIdiom])
          {
            v98 = 0;
            v97 = 1;
            goto LABEL_1927;
          }
        }

        v97 = v86 ^ 1;
        v86 = __sb__runningInSpringBoard();
        if (v86)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v75 = [MEMORY[0x277D759A0] mainScreen];
          [v75 _referenceBounds];
        }

        v98 = v86 ^ 1;
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
    v76 = 0;
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100 = 0.0;
    *&v415[12] = v86 ^ 1;
    goto LABEL_1973;
  }

  v77 = [(CSTeachableMomentsContainerView *)v418 usesStatusBarRelativeLayoutForControlCenterTutorsY];
  if (v77)
  {
    v78 = 8.0;
  }

  else
  {
    v78 = v66;
  }

  [(CSTeachableMomentsContainerView *)v418 _grabberCenterForContainerBounds:v77 grabberTop:v419 grabberTopIsRelative:v4 grabberSize:v6 isSpaceConstrained:v8, v10, v78, v38, v45];
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

  v111 = [(CSTeachableMomentsContainerView *)v74 controlCenterGlyphContainerView];
  [(CSTeachableMomentsContainerView *)v74 bounds];
  [v111 setFrame:?];
  v112 = [(CSTeachableMomentsContainerView *)v74 controlCenterGlyphView];
  [v112 sizeToFit];
  if (![(CSTeachableMomentsContainerView *)v74 usesStatusBarRelativeLayoutForControlCenterTutorsY])
  {
    v114 = __sb__runningInSpringBoard();
    if (v114)
    {
      v115 = 0x277D75000;
      if (SBFEffectiveDeviceClass() != 2)
      {
        v116 = 0;
        LODWORD(v416) = 0;
        goto LABEL_583;
      }
    }

    else
    {
      v115 = 0x277D75000uLL;
      v75 = [MEMORY[0x277D75418] currentDevice];
      if ([v75 userInterfaceIdiom] != 1)
      {
        LODWORD(v416) = 0;
        v116 = 1;
        goto LABEL_583;
      }
    }

    v116 = v114 ^ 1u;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v117 = __sb__runningInSpringBoard();
      if (v117)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v331 = [MEMORY[0x277D759A0] mainScreen];
        [v331 _referenceBounds];
      }

      LODWORD(v416) = v117 ^ 1;
      BSSizeRoundForScale();
      if (v130 == *(MEMORY[0x277D66E30] + 288) && v129 == *(MEMORY[0x277D66E30] + 296))
      {
        LODWORD(v417) = v116;
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
    LODWORD(v417) = v116;
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
      v339 = [*(v115 + 1048) currentDevice];
      if ([v339 userInterfaceIdiom] != 1)
      {
        *&v415[60] = 0x100000000;
        goto LABEL_592;
      }
    }

    *&v415[64] = v118 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v117 = __sb__runningInSpringBoard();
      if (v117)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v330 = [MEMORY[0x277D759A0] mainScreen];
        [v330 _referenceBounds];
      }

      *&v415[60] = v117 ^ 1;
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
      v338 = [*(v115 + 1048) currentDevice];
      if ([v338 userInterfaceIdiom] != 1)
      {
        *&v415[52] = 0x100000000;
        goto LABEL_601;
      }
    }

    *&v415[56] = v119 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v117 = __sb__runningInSpringBoard();
      if (v117)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v329 = [MEMORY[0x277D759A0] mainScreen];
        [v329 _referenceBounds];
      }

      *&v415[52] = v117 ^ 1;
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
      v337 = [*(v115 + 1048) currentDevice];
      if ([v337 userInterfaceIdiom] != 1)
      {
        *&v415[44] = 0;
        *&v415[48] = 1;
        goto LABEL_610;
      }
    }

    *&v415[48] = v120 ^ 1;
    v117 = __sb__runningInSpringBoard();
    if (v117)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v334 = [MEMORY[0x277D759A0] mainScreen];
      [v334 _referenceBounds];
    }

    *&v415[44] = v117 ^ 1;
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
      v336 = [*(v115 + 1048) currentDevice];
      if ([v336 userInterfaceIdiom] != 1)
      {
        *&v415[36] = 0;
        *&v415[40] = 1;
        goto LABEL_620;
      }
    }

    *&v415[40] = v122 ^ 1;
    v117 = __sb__runningInSpringBoard();
    if (v117)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v332 = [MEMORY[0x277D759A0] mainScreen];
      [v332 _referenceBounds];
    }

    *&v415[36] = v117 ^ 1;
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
      v335 = [*(v115 + 1048) currentDevice];
      if ([v335 userInterfaceIdiom] != 1)
      {
        *&v415[28] = 0x100000000;
        goto LABEL_770;
      }
    }

    *&v415[32] = v126 ^ 1;
    v117 = __sb__runningInSpringBoard();
    if (v117)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v328 = [MEMORY[0x277D759A0] mainScreen];
      [v328 _referenceBounds];
    }

    *&v415[28] = v117 ^ 1;
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
    v117 = __sb__runningInSpringBoard();
    if (v117)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_772;
      }
    }

    else
    {
      v333 = [*(v115 + 1048) currentDevice];
      if ([v333 userInterfaceIdiom] != 1)
      {
LABEL_772:
        *&v415[24] = v117 ^ 1;
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
          v326 = [*(v115 + 1048) currentDevice];
          if ([v326 userInterfaceIdiom])
          {
            *&v415[16] = 0;
            *&v415[20] = 1;
            goto LABEL_959;
          }
        }

        *&v415[20] = v136 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v117 = __sb__runningInSpringBoard();
          if (v117)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v319 = [MEMORY[0x277D759A0] mainScreen];
            [v319 _referenceBounds];
          }

          *&v415[16] = v117 ^ 1;
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
        v117 = __sb__runningInSpringBoard();
        if (v117)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *&v415[8] = 0;
            goto LABEL_969;
          }
        }

        else
        {
          v327 = [*(v115 + 1048) currentDevice];
          if ([v327 userInterfaceIdiom])
          {
            *&v415[8] = 0;
            *&v415[12] = 1;
            goto LABEL_969;
          }
        }

        *&v415[12] = v117 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v117 = __sb__runningInSpringBoard();
          if (v117)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v322 = [MEMORY[0x277D759A0] mainScreen];
            [v322 _referenceBounds];
          }

          *&v415[8] = v117 ^ 1;
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
          v323 = [*(v115 + 1048) currentDevice];
          if ([v323 userInterfaceIdiom])
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
            v314 = [MEMORY[0x277D759A0] mainScreen];
            [v314 _referenceBounds];
          }

          v117 = v169 ^ 1u;
          BSSizeRoundForScale();
          *v415 = v117;
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
        v117 = __sb__runningInSpringBoard();
        if (v117)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v414 = 0;
            goto LABEL_1096;
          }
        }

        else
        {
          v325 = [*(v115 + 1048) currentDevice];
          if ([v325 userInterfaceIdiom])
          {
            v414 = 0x100000000;
            goto LABEL_1096;
          }
        }

        HIDWORD(v414) = v117 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v117 = __sb__runningInSpringBoard();
          if (v117)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v318 = [MEMORY[0x277D759A0] mainScreen];
            [v318 _referenceBounds];
          }

          LODWORD(v414) = v117 ^ 1;
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
          v324 = [*(v115 + 1048) currentDevice];
          if ([v324 userInterfaceIdiom])
          {
            v410 = 0x100000000;
            goto LABEL_1110;
          }
        }

        HIDWORD(v410) = v171 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v117 = __sb__runningInSpringBoard();
          if (v117)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v315 = [MEMORY[0x277D759A0] mainScreen];
            [v315 _referenceBounds];
          }

          LODWORD(v410) = v117 ^ 1;
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
        v117 = __sb__runningInSpringBoard();
        if (v117)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v406 = 0;
            goto LABEL_1134;
          }
        }

        else
        {
          v321 = [*(v115 + 1048) currentDevice];
          if ([v321 userInterfaceIdiom])
          {
            v406 = 0x100000000;
            goto LABEL_1134;
          }
        }

        HIDWORD(v406) = v117 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v117 = __sb__runningInSpringBoard();
          if (v117)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v313 = [MEMORY[0x277D759A0] mainScreen];
            [v313 _referenceBounds];
          }

          LODWORD(v406) = v117 ^ 1;
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
          v320 = [*(v115 + 1048) currentDevice];
          if ([v320 userInterfaceIdiom])
          {
            v402 = 0x100000000;
            goto LABEL_1197;
          }
        }

        HIDWORD(v402) = v185 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v117 = __sb__runningInSpringBoard();
          if (v117)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v310 = [MEMORY[0x277D759A0] mainScreen];
            [v310 _referenceBounds];
          }

          LODWORD(v402) = v117 ^ 1;
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
            v117 = 0;
            goto LABEL_1262;
          }
        }

        else
        {
          v317 = [*(v115 + 1048) currentDevice];
          if ([v317 userInterfaceIdiom])
          {
            v117 = 0;
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
            v309 = [MEMORY[0x277D759A0] mainScreen];
            [v309 _referenceBounds];
          }

          v117 = v198 ^ 1u;
          BSSizeRoundForScale();
          if (v204 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_1286;
          }
        }

        else
        {
          v117 = 0;
        }

LABEL_1262:
        if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
        {
          LODWORD(v398) = v117;
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
        LODWORD(v398) = v117;
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
          v312 = [*(v115 + 1048) currentDevice];
          if ([v312 userInterfaceIdiom])
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
            v303 = [MEMORY[0x277D759A0] mainScreen];
            [v303 _referenceBounds];
          }

          v117 = v213 ^ 1u;
          BSSizeRoundForScale();
          LODWORD(v394) = v117;
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
        v117 = __sb__runningInSpringBoard();
        if (v117)
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
          v316 = [*(v115 + 1048) currentDevice];
          if ([v316 userInterfaceIdiom])
          {
            v342 = 0;
            HIDWORD(v390) = 1;
            goto LABEL_1383;
          }
        }

        HIDWORD(v390) = v117 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v117 = __sb__runningInSpringBoard();
          if (v117)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v306 = [MEMORY[0x277D759A0] mainScreen];
            [v306 _referenceBounds];
          }

          v342 = v117 ^ 1;
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
          v308 = [*(v115 + 1048) currentDevice];
          if ([v308 userInterfaceIdiom])
          {
            HIDWORD(v386) = 0;
            LODWORD(v390) = 1;
            goto LABEL_1521;
          }
        }

        LODWORD(v390) = v215 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v117 = __sb__runningInSpringBoard();
          if (v117)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v299 = [MEMORY[0x277D759A0] mainScreen];
            [v299 _referenceBounds];
          }

          HIDWORD(v386) = v117 ^ 1;
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
        v117 = __sb__runningInSpringBoard();
        if (v117)
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
          v311 = [*(v115 + 1048) currentDevice];
          if ([v311 userInterfaceIdiom])
          {
            HIDWORD(v382) = 0;
            LODWORD(v386) = 1;
            goto LABEL_1531;
          }
        }

        LODWORD(v386) = v117 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v117 = __sb__runningInSpringBoard();
          if (v117)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v302 = [MEMORY[0x277D759A0] mainScreen];
            [v302 _referenceBounds];
          }

          HIDWORD(v382) = v117 ^ 1;
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
        v116 = &off_21EC94000;
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
          v304 = [*(v115 + 1048) currentDevice];
          if ([v304 userInterfaceIdiom])
          {
            HIDWORD(v378) = 0;
            LODWORD(v382) = 1;
            goto LABEL_1647;
          }
        }

        LODWORD(v382) = v230 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v117 = __sb__runningInSpringBoard();
          if (v117)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v295 = [MEMORY[0x277D759A0] mainScreen];
            [v295 _referenceBounds];
          }

          HIDWORD(v378) = v117 ^ 1;
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
        v117 = __sb__runningInSpringBoard();
        if (v117)
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
          v307 = [*(v115 + 1048) currentDevice];
          if ([v307 userInterfaceIdiom])
          {
            HIDWORD(v374) = 0;
            LODWORD(v378) = 1;
            goto LABEL_1657;
          }
        }

        LODWORD(v378) = v117 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v117 = __sb__runningInSpringBoard();
          if (v117)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v298 = [MEMORY[0x277D759A0] mainScreen];
            [v298 _referenceBounds];
          }

          HIDWORD(v374) = v117 ^ 1;
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
          v305 = [*(v115 + 1048) currentDevice];
          if ([v305 userInterfaceIdiom])
          {
            HIDWORD(v370) = 0;
            LODWORD(v374) = 1;
            goto LABEL_1671;
          }
        }

        LODWORD(v374) = v242 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v117 = __sb__runningInSpringBoard();
          if (v117)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v296 = [MEMORY[0x277D759A0] mainScreen];
            [v296 _referenceBounds];
          }

          HIDWORD(v370) = v117 ^ 1;
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
        v117 = __sb__runningInSpringBoard();
        if (v117)
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
          v301 = [*(v115 + 1048) currentDevice];
          if ([v301 userInterfaceIdiom])
          {
            HIDWORD(v366) = 0;
            LODWORD(v370) = 1;
            goto LABEL_1693;
          }
        }

        LODWORD(v370) = v117 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v117 = __sb__runningInSpringBoard();
          if (v117)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v294 = [MEMORY[0x277D759A0] mainScreen];
            [v294 _referenceBounds];
          }

          HIDWORD(v366) = v117 ^ 1;
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
          v300 = [*(v115 + 1048) currentDevice];
          if ([v300 userInterfaceIdiom])
          {
            HIDWORD(v362) = 0;
            LODWORD(v366) = 1;
            goto LABEL_1759;
          }
        }

        LODWORD(v366) = v254 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v117 = __sb__runningInSpringBoard();
          if (v117)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v293 = [MEMORY[0x277D759A0] mainScreen];
            [v293 _referenceBounds];
          }

          HIDWORD(v362) = v117 ^ 1;
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
        v117 = __sb__runningInSpringBoard();
        if (v117)
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
          v297 = [*(v115 + 1048) currentDevice];
          if ([v297 userInterfaceIdiom])
          {
            HIDWORD(v358) = 0;
            LODWORD(v362) = 1;
            goto LABEL_1780;
          }
        }

        LODWORD(v362) = v117 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v117 = __sb__runningInSpringBoard();
          if (v117)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v292 = [MEMORY[0x277D759A0] mainScreen];
            [v292 _referenceBounds];
          }

          HIDWORD(v358) = v117 ^ 1;
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

        v117 = __sb__runningInSpringBoard();
        if (v117)
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
          v291 = [MEMORY[0x277D75418] currentDevice];
          if ([v291 userInterfaceIdiom])
          {
            HIDWORD(v354) = 0;
            LODWORD(v358) = 1;
            goto LABEL_1937;
          }
        }

        LODWORD(v358) = v117 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v117 = __sb__runningInSpringBoard();
          if (v117)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v289 = [MEMORY[0x277D759A0] mainScreen];
            [v289 _referenceBounds];
          }

          HIDWORD(v354) = v117 ^ 1;
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
          v290 = [MEMORY[0x277D75418] currentDevice];
          if ([v290 userInterfaceIdiom])
          {
            v350 = 0;
            LODWORD(v354) = 1;
            goto LABEL_1950;
          }
        }

        LODWORD(v354) = v277 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v116 = __sb__runningInSpringBoard();
          if (v116)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v288 = [MEMORY[0x277D759A0] mainScreen];
            [v288 _referenceBounds];
          }

          v350 = v116 ^ 1;
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
        v116 = __sb__runningInSpringBoard();
        if (v116)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v346 = 0;
            v123 = 0;
LABEL_1963:
            v281 = __sb__runningInSpringBoard();
            if (v281)
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
              v76 = [MEMORY[0x277D75418] currentDevice];
              if ([v76 userInterfaceIdiom])
              {
                MinY = 0.0;
                v124 = 1;
                goto LABEL_1986;
              }
            }

            v124 = v281 ^ 1;
            v285 = __sb__runningInSpringBoard();
            if (v285)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v281 = [MEMORY[0x277D759A0] mainScreen];
              [v281 _referenceBounds];
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

                v74 = v418;
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
          v117 = [MEMORY[0x277D75418] currentDevice];
          if ([v117 userInterfaceIdiom])
          {
            v123 = 0;
            v346 = 1;
            goto LABEL_1963;
          }
        }

        v346 = v116 ^ 1;
        v76 = __sb__runningInSpringBoard();
        if (v76)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v116 = [MEMORY[0x277D759A0] mainScreen];
          [v116 _referenceBounds];
        }

        v123 = v76 ^ 1;
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
    *&v415[24] = v117 ^ 1;
    goto LABEL_1986;
  }

  v75 = [(CSTeachableMomentsContainerView *)v74 controlCenterGrabberContainerView];
  [v75 frame];
  MinY = CGRectGetMinY(v421);
LABEL_760:

LABEL_761:
  [v112 bounds];
  [v112 setCenter:{v81, MinY + CGRectGetHeight(v422) * 0.5}];

  if (![(CSTeachableMomentsContainerView *)v74 adjustsControlCenterTutorsVisibilityForAvailableSpace])
  {
    return;
  }

  v133 = [(CSTeachableMomentsContainerView *)v74 controlCenterTutorsContainerView];
  v83 = v133;
  v134 = 1.0;
  if (v419[0])
  {
    v134 = 0.0;
  }

  [v133 setAlpha:v134];
LABEL_765:
}

- (CSTeachableMomentsContainerView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = CSTeachableMomentsContainerView;
  v3 = [(CSTeachableMomentsContainerView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CSTeachableMomentsContainerView *)v3 _addCallToActionLabel];
    [(CSTeachableMomentsContainerView *)v4 _addControlCenterTutors];
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v4 selector:sel__preferredTextSizeChanged_ name:*MEMORY[0x277D76810] object:0];

    v6 = objc_alloc_init(MEMORY[0x277D65FF0]);
    lockScreenDefaults = v4->_lockScreenDefaults;
    v4->_lockScreenDefaults = v6;

    v8 = [MEMORY[0x277D75418] currentDevice];
    v9 = [v8 userInterfaceIdiom];

    v10 = SBSIsSystemApertureAvailable();
    v4->_adjustsControlCenterTutorsVisibilityForAvailableSpace = v10;
    v4->_usesStatusBarRelativeLayoutForControlCenterTutors = ((v9 & 0xFFFFFFFFFFFFFFFBLL) == 1) | v10 & 1;
    v4->_usesStatusBarRelativeLayoutForControlCenterTutorsY = v10;
  }

  return v4;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = CSTeachableMomentsContainerView;
  v5 = [(SBFTouchPassThroughView *)&v8 hitTest:a4 withEvent:a3.x, a3.y];
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
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [CSRegion regionForCoordinateSpace:self->_homeAffordanceView];
  v5 = [v4 role:1];

  [v3 addObject:v5];

  return v3;
}

- (void)setLegibilitySettings:(id)a3
{
  v5 = a3;
  if (([(_UILegibilitySettings *)self->_legibilitySettings sb_isEqualToLegibilitySettings:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    [(CSTeachableMomentsContainerView *)self _updateViewsForLegibilitySettings];
  }
}

- (void)_updateViewsForLegibilitySettings
{
  v3 = [(CSTeachableMomentsContainerView *)self callToActionLabel];
  [v3 setLegibilitySettings:self->_legibilitySettings];

  v10 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  controlCenterGrabberView = self->_controlCenterGrabberView;
  v5 = [v10 colorWithAlphaComponent:0.5];
  [(UIView *)controlCenterGrabberView setBackgroundColor:v5];

  [(UIImageView *)self->_controlCenterGlyphView setTintColor:v10];
  v6 = [(_UILegibilitySettings *)self->_legibilitySettings style];
  v7 = [(CSPropertyAnimatingTouchPassThroughView *)self->_controlCenterGrabberContainerView layer];
  v8 = MEMORY[0x277CDA5D8];
  if (v6 == 1)
  {
    v8 = MEMORY[0x277CDA5E8];
  }

  v9 = [MEMORY[0x277CD9EA0] filterWithType:*v8];
  [v7 setCompositingFilter:v9];
}

- (void)statusBarManager:(id)a3 didUpdateAvoidanceFrameForStatusBar:(id)a4 withAnimationSettings:(id)a5
{
  v7 = a5;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_statusBarToFollow);

  if (WeakRetained == v8 && [(CSTeachableMomentsContainerView *)self usesStatusBarRelativeLayoutForControlCenterTutors])
  {
    v10 = SBLogDashBoard();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21EB05000, v10, OS_LOG_TYPE_DEFAULT, "CSTeachableMomentsContainerView updating for status bar avoidance frame change", buf, 2u);
    }

    v11 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16[5] = 0;
      *buf = 0;
      v12 = v7;
      [v12 stiffness];
      [v12 damping];

      convertTensionAndFrictionToDampingRatioAndResponse();
      [v11 setDampingRatio:*buf];
      [v11 setResponse:0.0];
    }

    v13 = [(CSTeachableMomentsContainerView *)self controlCenterGrabberContainerView];
    [v13 bounds];
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
    [MEMORY[0x277D75D18] sb_animateWithSettings:v11 mode:v15 animations:v16 completion:0];
  }
}

uint64_t __110__CSTeachableMomentsContainerView_statusBarManager_didUpdateAvoidanceFrameForStatusBar_withAnimationSettings___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)setStatusBarToFollow:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_statusBarToFollow);
  if (WeakRetained != v4)
  {
    v6 = SBLogDashBoard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "CSTeachableMomentsContainerView setting new statusBarToFollow: %@", &v13, 0xCu);
    }

    v7 = [WeakRetained window];
    v8 = [v7 windowScene];
    v9 = [v8 statusBarManager];
    [v9 sbf_removeObserver:self];

    objc_storeWeak(&self->_statusBarToFollow, v4);
    v10 = [v4 window];
    v11 = [v10 windowScene];
    v12 = [v11 statusBarManager];
    [v12 sbf_addObserver:self];

    [(CSTeachableMomentsContainerView *)self setNeedsLayout];
  }
}

- (id)createCallToActionLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D67CF8]);
  v4 = [(CSTeachableMomentsContainerView *)self _callToActionLabelFont];
  [v3 setFont:v4];

  [v3 setNumberOfLines:0];
  [v3 setTextAlignment:1];
  [v3 bs_setHitTestingDisabled:1];
  [v3 setStrength:0.3];
  [v3 setAccessibilityIdentifier:@"call-to-action-label"];

  return v3;
}

- (void)setCallToActionLabel:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_callToActionLabel != v5)
  {
    v6 = SBLogDashBoard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "CSTeachableMomentsContainerView setting new callToActionLabel: %@", &v8, 0xCu);
    }

    [(SBUILegibilityLabel *)self->_callToActionLabel removeFromSuperview];
    objc_storeStrong(&self->_callToActionLabel, a3);
    [(SBUILegibilityLabel *)self->_callToActionLabel setLegibilitySettings:self->_legibilitySettings];
    v7 = [(CSTeachableMomentsContainerView *)self callToActionLabelContainerView];
    [v7 addSubview:v5];

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
  v5 = [v22 layer];
  [v5 setAllowsGroupBlending:0];

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
    v2 = [MEMORY[0x277D75418] currentDevice];
    if ([v2 userInterfaceIdiom])
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
        v3 = [MEMORY[0x277D759A0] mainScreen];
        [v3 _referenceBounds];
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

- (CGPoint)_grabberCenterForContainerBounds:(CGRect)a3 grabberTop:(double)a4 grabberTopIsRelative:(BOOL)a5 grabberSize:(CGSize)a6 isSpaceConstrained:(BOOL *)a7
{
  height = a6.height;
  width = a6.width;
  v16 = a5;
  v18 = a3.size.height;
  v19 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v507 = v16;
  v509 = a7;
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
  v36 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
  v37 = __sb__runningInSpringBoard();
  v38 = v37;
  v508 = a4;
  v505 = v19;
  v506 = v18;
  if (v36 == 1)
  {
    if (v37)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        LODWORD(v429) = 0;
        LODWORD(v440) = 0;
        goto LABEL_25;
      }
    }

    else
    {
      v393 = [MEMORY[0x277D75418] currentDevice];
      if ([v393 userInterfaceIdiom] != 1)
      {
        LODWORD(v440) = 0;
        LODWORD(v429) = 1;
        goto LABEL_25;
      }
    }

    LODWORD(v429) = v38 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v39 = __sb__runningInSpringBoard();
      if (v39)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v372 = [MEMORY[0x277D759A0] mainScreen];
        [v372 _referenceBounds];
      }

      LODWORD(v440) = v39 ^ 1;
      BSSizeRoundForScale();
      if (v76 == *(MEMORY[0x277D66E30] + 288) && v75 == *(MEMORY[0x277D66E30] + 296))
      {
        LODWORD(v439) = 0;
        LODWORD(v438) = 0;
        LODWORD(v437) = 0;
        LODWORD(v436) = 0;
        LODWORD(v435) = 0;
        LODWORD(v434) = 0;
        LODWORD(v433) = 0;
        LODWORD(v432) = 0;
        LODWORD(v431) = 0;
        LODWORD(v430) = 0;
        LODWORD(v405) = 0;
        LODWORD(v428) = 0;
        LODWORD(v427) = 0;
        LODWORD(v426) = 0;
        LODWORD(v425) = 0;
        LODWORD(v424) = 0;
        LODWORD(v401) = 0;
        LODWORD(v423) = 0;
        LODWORD(v422) = 0;
        LODWORD(v421) = 0;
        LODWORD(v420) = 0;
        LODWORD(v419) = 0;
        LODWORD(v418) = 0;
        LODWORD(v417) = 0;
        LODWORD(v416) = 0;
        LODWORD(v400) = 0;
        LODWORD(rect_24) = 0;
        LODWORD(v415) = 0;
        v504 = 0;
        LODWORD(v414) = 0;
        LODWORD(v413) = 0;
        v501 = 0;
        LODWORD(v412) = 0;
        v495 = 0;
        LODWORD(rect_16) = 0;
        rect_12 = 0;
        HIDWORD(v489) = 0;
        LODWORD(v411) = 0;
        HIDWORD(v485) = 0;
        LODWORD(v410) = 0;
        LODWORD(v409) = 0;
        LODWORD(v408) = 0;
        LODWORD(v481) = 0;
        LODWORD(v407) = 0;
        LODWORD(v406) = 0;
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
      LODWORD(v440) = 0;
    }

LABEL_25:
    v41 = __sb__runningInSpringBoard();
    if (v41)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        LODWORD(v439) = 0;
        LODWORD(v438) = 0;
        goto LABEL_43;
      }
    }

    else
    {
      v391 = [MEMORY[0x277D75418] currentDevice];
      if ([v391 userInterfaceIdiom] != 1)
      {
        LODWORD(v438) = 0;
        LODWORD(v439) = 1;
        goto LABEL_43;
      }
    }

    LODWORD(v439) = v41 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v42 = __sb__runningInSpringBoard();
      if (v42)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v370 = [MEMORY[0x277D759A0] mainScreen];
        [v370 _referenceBounds];
      }

      LODWORD(v438) = v42 ^ 1;
      BSSizeRoundForScale();
      if (v79 >= *(MEMORY[0x277D66E30] + 440))
      {
        LODWORD(v437) = 0;
        LODWORD(v436) = 0;
        LODWORD(v435) = 0;
        LODWORD(v434) = 0;
        LODWORD(v433) = 0;
        LODWORD(v432) = 0;
        LODWORD(v431) = 0;
        LODWORD(v430) = 0;
        LODWORD(v405) = 0;
        LODWORD(v428) = 0;
        LODWORD(v427) = 0;
        LODWORD(v426) = 0;
        LODWORD(v425) = 0;
        LODWORD(v424) = 0;
        LODWORD(v401) = 0;
        LODWORD(v423) = 0;
        LODWORD(v422) = 0;
        LODWORD(v421) = 0;
        LODWORD(v420) = 0;
        LODWORD(v419) = 0;
        LODWORD(v418) = 0;
        LODWORD(v417) = 0;
        LODWORD(v416) = 0;
        LODWORD(v400) = 0;
        LODWORD(rect_24) = 0;
        LODWORD(v415) = 0;
        v504 = 0;
        LODWORD(v414) = 0;
        LODWORD(v413) = 0;
        v501 = 0;
        LODWORD(v412) = 0;
        v495 = 0;
        LODWORD(rect_16) = 0;
        rect_12 = 0;
        HIDWORD(v489) = 0;
        LODWORD(v411) = 0;
        HIDWORD(v485) = 0;
        LODWORD(v410) = 0;
        LODWORD(v409) = 0;
        LODWORD(v408) = 0;
        LODWORD(v481) = 0;
        LODWORD(v407) = 0;
        LODWORD(v406) = 0;
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
      LODWORD(v438) = 0;
    }

LABEL_43:
    v45 = __sb__runningInSpringBoard();
    if (v45)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        LODWORD(v437) = 0;
        LODWORD(v436) = 0;
        goto LABEL_61;
      }
    }

    else
    {
      v389 = [MEMORY[0x277D75418] currentDevice];
      if ([v389 userInterfaceIdiom] != 1)
      {
        LODWORD(v436) = 0;
        LODWORD(v437) = 1;
        goto LABEL_61;
      }
    }

    LODWORD(v437) = v45 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v46 = __sb__runningInSpringBoard();
      if (v46)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v368 = [MEMORY[0x277D759A0] mainScreen];
        [v368 _referenceBounds];
      }

      LODWORD(v436) = v46 ^ 1;
      BSSizeRoundForScale();
      if (v81 >= *(MEMORY[0x277D66E30] + 376))
      {
        LODWORD(v435) = 0;
        LODWORD(v434) = 0;
        LODWORD(v433) = 0;
        LODWORD(v432) = 0;
        LODWORD(v431) = 0;
        LODWORD(v430) = 0;
        LODWORD(v405) = 0;
        LODWORD(v428) = 0;
        LODWORD(v427) = 0;
        LODWORD(v426) = 0;
        LODWORD(v425) = 0;
        LODWORD(v424) = 0;
        LODWORD(v401) = 0;
        LODWORD(v423) = 0;
        LODWORD(v422) = 0;
        LODWORD(v421) = 0;
        LODWORD(v420) = 0;
        LODWORD(v419) = 0;
        LODWORD(v418) = 0;
        LODWORD(v417) = 0;
        LODWORD(v416) = 0;
        LODWORD(v400) = 0;
        LODWORD(rect_24) = 0;
        LODWORD(v415) = 0;
        v504 = 0;
        LODWORD(v414) = 0;
        LODWORD(v413) = 0;
        v501 = 0;
        LODWORD(v412) = 0;
        v495 = 0;
        LODWORD(rect_16) = 0;
        rect_12 = 0;
        HIDWORD(v489) = 0;
        LODWORD(v411) = 0;
        HIDWORD(v485) = 0;
        LODWORD(v410) = 0;
        LODWORD(v409) = 0;
        LODWORD(v408) = 0;
        LODWORD(v481) = 0;
        LODWORD(v407) = 0;
        LODWORD(v406) = 0;
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
      LODWORD(v436) = 0;
    }

LABEL_61:
    v49 = __sb__runningInSpringBoard();
    if (v49)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        LODWORD(v435) = 0;
        LODWORD(v434) = 0;
        goto LABEL_78;
      }
    }

    else
    {
      v385 = [MEMORY[0x277D75418] currentDevice];
      if ([v385 userInterfaceIdiom] != 1)
      {
        LODWORD(v434) = 0;
        LODWORD(v435) = 1;
        goto LABEL_78;
      }
    }

    LODWORD(v435) = v49 ^ 1;
    v50 = __sb__runningInSpringBoard();
    if (v50)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v380 = [MEMORY[0x277D759A0] mainScreen];
      [v380 _referenceBounds];
    }

    LODWORD(v434) = v50 ^ 1;
    BSSizeRoundForScale();
    if (v53 >= *(MEMORY[0x277D66E30] + 280))
    {
      LODWORD(v433) = 0;
      LODWORD(v432) = 0;
      LODWORD(v431) = 0;
      LODWORD(v430) = 0;
      LODWORD(v405) = 0;
      LODWORD(v428) = 0;
      LODWORD(v427) = 0;
      LODWORD(v426) = 0;
      LODWORD(v425) = 0;
      LODWORD(v424) = 0;
      LODWORD(v401) = 0;
      LODWORD(v423) = 0;
      LODWORD(v422) = 0;
      LODWORD(v421) = 0;
      LODWORD(v420) = 0;
      LODWORD(v419) = 0;
      LODWORD(v418) = 0;
      LODWORD(v417) = 0;
      LODWORD(v416) = 0;
      LODWORD(v400) = 0;
      LODWORD(rect_24) = 0;
      LODWORD(v415) = 0;
      v504 = 0;
      LODWORD(v414) = 0;
      LODWORD(v413) = 0;
      v501 = 0;
      LODWORD(v412) = 0;
      v495 = 0;
      LODWORD(rect_16) = 0;
      rect_12 = 0;
      HIDWORD(v489) = 0;
      LODWORD(v411) = 0;
      HIDWORD(v485) = 0;
      LODWORD(v410) = 0;
      LODWORD(v409) = 0;
      LODWORD(v408) = 0;
      LODWORD(v481) = 0;
      LODWORD(v407) = 0;
      LODWORD(v406) = 0;
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
        LODWORD(v433) = 0;
        LODWORD(v432) = 0;
        goto LABEL_98;
      }
    }

    else
    {
      a7 = [MEMORY[0x277D75418] currentDevice];
      if ([a7 userInterfaceIdiom] != 1)
      {
        LODWORD(v432) = 0;
        LODWORD(v433) = 1;
        goto LABEL_98;
      }
    }

    LODWORD(v433) = v54 ^ 1;
    v55 = __sb__runningInSpringBoard();
    if (v55)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v36 = [MEMORY[0x277D759A0] mainScreen];
      [v36 _referenceBounds];
    }

    LODWORD(v432) = v55 ^ 1;
    BSSizeRoundForScale();
    if (v69 >= *(MEMORY[0x277D66E30] + 264))
    {
      v394 = v36;
      v395 = a7;
      LODWORD(v431) = 0;
      LODWORD(v430) = 0;
      LODWORD(v405) = 0;
      LODWORD(v428) = 0;
      LODWORD(v427) = 0;
      LODWORD(v426) = 0;
      LODWORD(v425) = 0;
      LODWORD(v424) = 0;
      LODWORD(v401) = 0;
      LODWORD(v423) = 0;
      LODWORD(v422) = 0;
      LODWORD(v421) = 0;
      LODWORD(v420) = 0;
      LODWORD(v419) = 0;
      LODWORD(v418) = 0;
      LODWORD(v417) = 0;
      LODWORD(v416) = 0;
      LODWORD(v400) = 0;
      LODWORD(rect_24) = 0;
      LODWORD(v415) = 0;
      v504 = 0;
      LODWORD(v414) = 0;
      LODWORD(v413) = 0;
      v501 = 0;
      LODWORD(v412) = 0;
      v495 = 0;
      LODWORD(rect_16) = 0;
      rect_12 = 0;
      HIDWORD(v489) = 0;
      LODWORD(v411) = 0;
      HIDWORD(v485) = 0;
      LODWORD(v410) = 0;
      LODWORD(v409) = 0;
      LODWORD(v408) = 0;
      LODWORD(v481) = 0;
      LODWORD(v407) = 0;
      LODWORD(v406) = 0;
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
    v395 = a7;
    v394 = v36;
    if (v70)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        LODWORD(v431) = 0;
        LODWORD(v430) = 0;
LABEL_572:
        v110 = __sb__runningInSpringBoard();
        v387 = v7;
        v386 = v8;
        if (v110)
        {
          if (SBFEffectiveDeviceClass() != 2)
          {
            goto LABEL_574;
          }
        }

        else
        {
          v36 = [MEMORY[0x277D75418] currentDevice];
          if ([v36 userInterfaceIdiom] != 1)
          {
LABEL_574:
            a7 = (v110 ^ 1u);
            v383 = v36;
            LODWORD(v405) = v110 ^ 1;
            if (!_SBF_Private_IsD94Like())
            {
LABEL_578:
              LODWORD(v428) = 0;
              LODWORD(v427) = 0;
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
              v9 = [MEMORY[0x277D75418] currentDevice];
              if ([v9 userInterfaceIdiom])
              {
                LODWORD(v427) = 0;
                LODWORD(v428) = 1;
                goto LABEL_667;
              }
            }

            LODWORD(v428) = v111 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v120 = __sb__runningInSpringBoard();
              if (v120)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v10 = [MEMORY[0x277D759A0] mainScreen];
                [v10 _referenceBounds];
              }

              LODWORD(v427) = v120 ^ 1;
              BSSizeRoundForScale();
              if (v132 >= *(MEMORY[0x277D66E30] + 200))
              {
                v377 = v10;
                v378 = v9;
                LODWORD(v426) = 0;
                LODWORD(v425) = 0;
                LODWORD(v424) = 0;
                LODWORD(v401) = 0;
                LODWORD(v423) = 0;
                LODWORD(v422) = 0;
                LODWORD(v421) = 0;
                LODWORD(v420) = 0;
                LODWORD(v419) = 0;
                LODWORD(v418) = 0;
                LODWORD(v417) = 0;
                LODWORD(v416) = 0;
                LODWORD(v400) = 0;
                LODWORD(rect_24) = 0;
                LODWORD(v415) = 0;
                v504 = 0;
                LODWORD(v414) = 0;
                LODWORD(v413) = 0;
                v501 = 0;
                LODWORD(v412) = 0;
                v495 = 0;
                LODWORD(rect_16) = 0;
                rect_12 = 0;
                HIDWORD(v489) = 0;
                LODWORD(v411) = 0;
                HIDWORD(v485) = 0;
                LODWORD(v410) = 0;
                LODWORD(v409) = 0;
                LODWORD(v408) = 0;
                LODWORD(v481) = 0;
                LODWORD(v407) = 0;
                LODWORD(v406) = 0;
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
              LODWORD(v427) = 0;
            }

LABEL_667:
            v121 = __sb__runningInSpringBoard();
            v378 = v9;
            v377 = v10;
            if (v121)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                LODWORD(v426) = 0;
                LODWORD(v425) = 0;
                goto LABEL_677;
              }
            }

            else
            {
              v11 = [MEMORY[0x277D75418] currentDevice];
              if ([v11 userInterfaceIdiom])
              {
                LODWORD(v425) = 0;
                LODWORD(v426) = 1;
                goto LABEL_677;
              }
            }

            LODWORD(v426) = v121 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v122 = __sb__runningInSpringBoard();
              if (v122)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v36 = [MEMORY[0x277D759A0] mainScreen];
                [v36 _referenceBounds];
              }

              LODWORD(v425) = v122 ^ 1;
              BSSizeRoundForScale();
              if (v123 >= *(MEMORY[0x277D66E30] + 200))
              {
                goto LABEL_681;
              }
            }

            else
            {
              LODWORD(v425) = 0;
            }

LABEL_677:
            if (_SBF_Private_IsD94Like())
            {
              v374 = v36;
              v375 = v11;
              LODWORD(v424) = 0;
              LODWORD(v401) = 0;
              LODWORD(v423) = 0;
              LODWORD(v422) = 0;
              LODWORD(v421) = 0;
              LODWORD(v420) = 0;
              LODWORD(v419) = 0;
              LODWORD(v418) = 0;
              LODWORD(v417) = 0;
              LODWORD(v416) = 0;
              LODWORD(v400) = 0;
              LODWORD(rect_24) = 0;
              LODWORD(v415) = 0;
              v504 = 0;
              LODWORD(v414) = 0;
              LODWORD(v413) = 0;
              v501 = 0;
              LODWORD(v412) = 0;
              v495 = 0;
              LODWORD(rect_16) = 0;
              rect_12 = 0;
              HIDWORD(v489) = 0;
              LODWORD(v411) = 0;
              HIDWORD(v485) = 0;
              LODWORD(v410) = 0;
              LODWORD(v409) = 0;
              LODWORD(v408) = 0;
              LODWORD(v481) = 0;
              LODWORD(v407) = 0;
              LODWORD(v406) = 0;
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
            v375 = v11;
            v374 = v36;
            if (!_SBF_Private_IsD64Like())
            {
LABEL_685:
              LODWORD(v424) = 0;
              LODWORD(v401) = 0;
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
              v7 = [MEMORY[0x277D75418] currentDevice];
              if ([v7 userInterfaceIdiom])
              {
                LODWORD(v401) = 0;
                LODWORD(v424) = 1;
                goto LABEL_753;
              }
            }

            LODWORD(v424) = v124 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v136 = __sb__runningInSpringBoard();
              if (v136)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v8 = [MEMORY[0x277D759A0] mainScreen];
                [v8 _referenceBounds];
              }

              v348 = v8;
              LODWORD(v401) = v136 ^ 1;
              BSSizeRoundForScale();
              if (v158 >= *(MEMORY[0x277D66E30] + 136))
              {
                v365 = v7;
                LODWORD(v423) = 0;
                LODWORD(v422) = 0;
                LODWORD(v421) = 0;
                LODWORD(v420) = 0;
                LODWORD(v419) = 0;
                LODWORD(v418) = 0;
                LODWORD(v417) = 0;
                LODWORD(v416) = 0;
                LODWORD(v400) = 0;
                LODWORD(rect_24) = 0;
                LODWORD(v415) = 0;
                v504 = 0;
                LODWORD(v414) = 0;
                LODWORD(v413) = 0;
                v501 = 0;
                LODWORD(v412) = 0;
                v495 = 0;
                LODWORD(rect_16) = 0;
                rect_12 = 0;
                HIDWORD(v489) = 0;
                LODWORD(v411) = 0;
                HIDWORD(v485) = 0;
                LODWORD(v410) = 0;
                LODWORD(v409) = 0;
                LODWORD(v408) = 0;
                LODWORD(v481) = 0;
                LODWORD(v407) = 0;
                LODWORD(v406) = 0;
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
              LODWORD(v401) = 0;
            }

LABEL_753:
            v137 = __sb__runningInSpringBoard();
            v365 = v7;
            if (v137)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                LODWORD(v423) = 0;
                LODWORD(v422) = 0;
                goto LABEL_763;
              }
            }

            else
            {
              v12 = [MEMORY[0x277D75418] currentDevice];
              if ([v12 userInterfaceIdiom])
              {
                LODWORD(v422) = 0;
                LODWORD(v423) = 1;
                goto LABEL_763;
              }
            }

            LODWORD(v423) = v137 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v138 = __sb__runningInSpringBoard();
              if (v138)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v9 = [MEMORY[0x277D759A0] mainScreen];
                [v9 _referenceBounds];
              }

              LODWORD(v422) = v138 ^ 1;
              BSSizeRoundForScale();
              if (v139 >= *(MEMORY[0x277D66E30] + 136))
              {
                goto LABEL_767;
              }
            }

            else
            {
              LODWORD(v422) = 0;
            }

LABEL_763:
            if (_SBF_Private_IsD64Like())
            {
              v363 = v9;
              v364 = v12;
              LODWORD(v421) = 0;
              LODWORD(v420) = 0;
              LODWORD(v419) = 0;
              LODWORD(v418) = 0;
              LODWORD(v417) = 0;
              LODWORD(v416) = 0;
              LODWORD(v400) = 0;
              LODWORD(rect_24) = 0;
              LODWORD(v415) = 0;
              v504 = 0;
              LODWORD(v414) = 0;
              LODWORD(v413) = 0;
              v501 = 0;
              LODWORD(v412) = 0;
              v495 = 0;
              LODWORD(rect_16) = 0;
              rect_12 = 0;
              HIDWORD(v489) = 0;
              LODWORD(v411) = 0;
              HIDWORD(v485) = 0;
              LODWORD(v410) = 0;
              LODWORD(v409) = 0;
              LODWORD(v408) = 0;
              LODWORD(v481) = 0;
              LODWORD(v407) = 0;
              LODWORD(v406) = 0;
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
            v364 = v12;
            v363 = v9;
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
              v10 = [MEMORY[0x277D75418] currentDevice];
              if ([v10 userInterfaceIdiom])
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
                v11 = [MEMORY[0x277D759A0] mainScreen];
                [v11 _referenceBounds];
              }

              v142 = v143 ^ 1;
              BSSizeRoundForScale();
              if (v155 >= *(MEMORY[0x277D66E30] + 136))
              {
                v360 = v11;
                v361 = v10;
                LODWORD(v420) = v143 ^ 1;
                LODWORD(v421) = v141;
                LODWORD(v419) = 0;
                LODWORD(v418) = 0;
                LODWORD(v417) = 0;
                LODWORD(v416) = 0;
                LODWORD(v400) = 0;
                LODWORD(rect_24) = 0;
                LODWORD(v415) = 0;
                v504 = 0;
                LODWORD(v414) = 0;
                LODWORD(v413) = 0;
                v501 = 0;
                LODWORD(v412) = 0;
                v495 = 0;
                LODWORD(rect_16) = 0;
                rect_12 = 0;
                HIDWORD(v489) = 0;
                LODWORD(v411) = 0;
                HIDWORD(v485) = 0;
                LODWORD(v410) = 0;
                LODWORD(v409) = 0;
                LODWORD(v408) = 0;
                LODWORD(v481) = 0;
                LODWORD(v407) = 0;
                LODWORD(v406) = 0;
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
            LODWORD(v421) = v141;
            LODWORD(v420) = v142;
            v361 = v10;
            v360 = v11;
            if (v144)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v8 = 0;
                v145 = 0;
                goto LABEL_828;
              }
            }

            else
            {
              v352 = [MEMORY[0x277D75418] currentDevice];
              if ([v352 userInterfaceIdiom])
              {
                v145 = 0;
                v8 = 1;
                goto LABEL_828;
              }
            }

            v8 = v144 ^ 1u;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v153 = __sb__runningInSpringBoard();
              if (v153)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                a7 = [MEMORY[0x277D759A0] mainScreen];
                [a7 _referenceBounds];
              }

              v145 = v153 ^ 1u;
              BSSizeRoundForScale();
              if (v162 >= *(MEMORY[0x277D66E30] + 136))
              {
                goto LABEL_863;
              }
            }

            else
            {
              v145 = 0;
            }

LABEL_828:
            if (_SBF_Private_IsD54())
            {
              v357 = a7;
              LODWORD(v418) = v145;
              LODWORD(v419) = v8;
              LODWORD(v417) = 0;
              LODWORD(v416) = 0;
              LODWORD(v400) = 0;
              LODWORD(rect_24) = 0;
              LODWORD(v415) = 0;
              v504 = 0;
              LODWORD(v414) = 0;
              LODWORD(v413) = 0;
              v501 = 0;
              LODWORD(v412) = 0;
              v495 = 0;
              LODWORD(rect_16) = 0;
              rect_12 = 0;
              HIDWORD(v489) = 0;
              LODWORD(v411) = 0;
              HIDWORD(v485) = 0;
              LODWORD(v410) = 0;
              LODWORD(v409) = 0;
              LODWORD(v408) = 0;
              LODWORD(v481) = 0;
              LODWORD(v407) = 0;
              LODWORD(v406) = 0;
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
            LODWORD(v419) = v8;
            LODWORD(v418) = v145;
            v357 = a7;
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
              v9 = [MEMORY[0x277D75418] currentDevice];
              if ([v9 userInterfaceIdiom])
              {
                v350 = v9;
                v165 = 0;
                v164 = 1;
                goto LABEL_881;
              }
            }

            v164 = v163 ^ 1;
            v350 = v9;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v168 = __sb__runningInSpringBoard();
              if (v168)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v12 = [MEMORY[0x277D759A0] mainScreen];
                [v12 _referenceBounds];
              }

              v165 = v168 ^ 1;
              BSSizeRoundForScale();
              if (v178 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
              {
                v355 = v12;
                LODWORD(v416) = v168 ^ 1;
                LODWORD(v417) = v164;
                LODWORD(v400) = 0;
                LODWORD(rect_24) = 0;
                LODWORD(v415) = 0;
                v504 = 0;
                LODWORD(v414) = 0;
                LODWORD(v413) = 0;
                v501 = 0;
                LODWORD(v412) = 0;
                v495 = 0;
                LODWORD(rect_16) = 0;
                rect_12 = 0;
                HIDWORD(v489) = 0;
                LODWORD(v411) = 0;
                HIDWORD(v485) = 0;
                LODWORD(v410) = 0;
                LODWORD(v409) = 0;
                LODWORD(v408) = 0;
                LODWORD(v481) = 0;
                LODWORD(v407) = 0;
                LODWORD(v406) = 0;
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
            LODWORD(v417) = v164;
            LODWORD(v416) = v165;
            v355 = v12;
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
              v344 = [MEMORY[0x277D75418] currentDevice];
              if ([v344 userInterfaceIdiom])
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
                v332 = [MEMORY[0x277D759A0] mainScreen];
                [v332 _referenceBounds];
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
              LODWORD(v400) = v170;
              LODWORD(v415) = 0;
              v504 = 0;
              LODWORD(v414) = 0;
              LODWORD(v413) = 0;
              v501 = 0;
              LODWORD(v412) = 0;
              v495 = 0;
              LODWORD(rect_16) = 0;
              rect_12 = 0;
              HIDWORD(v489) = 0;
              LODWORD(v411) = 0;
              HIDWORD(v485) = 0;
              LODWORD(v410) = 0;
              LODWORD(v409) = 0;
              LODWORD(v408) = 0;
              LODWORD(v481) = 0;
              LODWORD(v407) = 0;
              LODWORD(v406) = 0;
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
            LODWORD(v400) = v170;
            LODWORD(rect_24) = v171;
            if (!_SBF_Private_IsD93Like())
            {
LABEL_950:
              LODWORD(v415) = 0;
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
              v336 = [MEMORY[0x277D75418] currentDevice];
              if ([v336 userInterfaceIdiom])
              {
                v504 = 0;
                LODWORD(v415) = 1;
                goto LABEL_994;
              }
            }

            LODWORD(v415) = v181 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v187 = __sb__runningInSpringBoard();
              if (v187)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v321 = [MEMORY[0x277D759A0] mainScreen];
                [v321 _referenceBounds];
              }

              v504 = v187 ^ 1;
              BSSizeRoundForScale();
              if (v198 >= *(MEMORY[0x277D66E30] + 184))
              {
                LODWORD(v414) = 0;
                LODWORD(v413) = 0;
                v501 = 0;
                LODWORD(v412) = 0;
                v495 = 0;
                LODWORD(rect_16) = 0;
                rect_12 = 0;
                HIDWORD(v489) = 0;
                LODWORD(v411) = 0;
                HIDWORD(v485) = 0;
                LODWORD(v410) = 0;
                LODWORD(v409) = 0;
                LODWORD(v408) = 0;
                LODWORD(v481) = 0;
                LODWORD(v407) = 0;
                LODWORD(v406) = 0;
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
                LODWORD(v414) = 0;
                LODWORD(v413) = 0;
                goto LABEL_1004;
              }
            }

            else
            {
              v341 = [MEMORY[0x277D75418] currentDevice];
              if ([v341 userInterfaceIdiom])
              {
                LODWORD(v413) = 0;
                LODWORD(v414) = 1;
                goto LABEL_1004;
              }
            }

            LODWORD(v414) = v188 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v189 = __sb__runningInSpringBoard();
              if (v189)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                a7 = [MEMORY[0x277D759A0] mainScreen];
                [a7 _referenceBounds];
              }

              LODWORD(v413) = v189 ^ 1;
              BSSizeRoundForScale();
              if (v190 >= *(MEMORY[0x277D66E30] + 184))
              {
                goto LABEL_1008;
              }
            }

            else
            {
              LODWORD(v413) = 0;
            }

LABEL_1004:
            if (_SBF_Private_IsD93Like())
            {
              v349 = a7;
              v501 = 0;
              LODWORD(v412) = 0;
              v495 = 0;
              LODWORD(rect_16) = 0;
              rect_12 = 0;
              HIDWORD(v489) = 0;
              LODWORD(v411) = 0;
              HIDWORD(v485) = 0;
              LODWORD(v410) = 0;
              LODWORD(v409) = 0;
              LODWORD(v408) = 0;
              LODWORD(v481) = 0;
              LODWORD(v407) = 0;
              LODWORD(v406) = 0;
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
            v349 = a7;
            if (!_SBF_Private_IsD63Like())
            {
LABEL_1012:
              v501 = 0;
              LODWORD(v412) = 0;
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
              v145 = [MEMORY[0x277D75418] currentDevice];
              v330 = v145;
              if ([v145 userInterfaceIdiom])
              {
                LODWORD(v412) = 0;
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
                v313 = [MEMORY[0x277D759A0] mainScreen];
                [v313 _referenceBounds];
              }

              LODWORD(v412) = v202 ^ 1;
              BSSizeRoundForScale();
              if (v216 >= *(MEMORY[0x277D66E30] + 104))
              {
                v495 = 0;
                LODWORD(rect_16) = 0;
                rect_12 = 0;
                HIDWORD(v489) = 0;
                LODWORD(v411) = 0;
                HIDWORD(v485) = 0;
                LODWORD(v410) = 0;
                LODWORD(v409) = 0;
                LODWORD(v408) = 0;
                LODWORD(v481) = 0;
                LODWORD(v407) = 0;
                LODWORD(v406) = 0;
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
              LODWORD(v412) = 0;
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
              v145 = [MEMORY[0x277D75418] currentDevice];
              if ([v145 userInterfaceIdiom])
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
                v318 = [MEMORY[0x277D759A0] mainScreen];
                [v318 _referenceBounds];
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
              v342 = v145;
              LODWORD(rect_16) = 0;
              rect_12 = 0;
              HIDWORD(v489) = 0;
              LODWORD(v411) = 0;
              HIDWORD(v485) = 0;
              LODWORD(v410) = 0;
              LODWORD(v409) = 0;
              LODWORD(v408) = 0;
              LODWORD(v481) = 0;
              LODWORD(v407) = 0;
              LODWORD(v406) = 0;
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
            v342 = v145;
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
                    LODWORD(v411) = 0;
                    goto LABEL_1206;
                  }
                }

                else
                {
                  a7 = [MEMORY[0x277D75418] currentDevice];
                  v327 = a7;
                  if ([a7 userInterfaceIdiom])
                  {
                    LODWORD(v411) = 0;
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
                    v310 = [MEMORY[0x277D759A0] mainScreen];
                    [v310 _referenceBounds];
                  }

                  LODWORD(v411) = v225 ^ 1;
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
                  LODWORD(v411) = 0;
                }

LABEL_1206:
                if (_SBF_Private_IsD23Like())
                {
                  HIDWORD(v485) = 0;
                  LODWORD(v410) = 0;
                  LODWORD(v409) = 0;
                  LODWORD(v408) = 0;
                  LODWORD(v481) = 0;
                  LODWORD(v407) = 0;
                  LODWORD(v406) = 0;
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
                    LODWORD(v410) = 0;
                    goto LABEL_1220;
                  }
                }

                else
                {
                  v324 = [MEMORY[0x277D75418] currentDevice];
                  if ([v324 userInterfaceIdiom])
                  {
                    LODWORD(v410) = 0;
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
                    v306 = [MEMORY[0x277D759A0] mainScreen];
                    [v306 _referenceBounds];
                  }

                  LODWORD(v410) = v228 ^ 1;
                  BSSizeRoundForScale();
                  if (v231 >= *(MEMORY[0x277D66E30] + 120))
                  {
                    LODWORD(v409) = 0;
                    LODWORD(v408) = 0;
                    LODWORD(v481) = 0;
                    LODWORD(v407) = 0;
                    LODWORD(v406) = 0;
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
                  LODWORD(v410) = 0;
                }

LABEL_1220:
                v229 = __sb__runningInSpringBoard();
                if (v229)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    LODWORD(v409) = 0;
                    LODWORD(v408) = 0;
                    goto LABEL_1230;
                  }
                }

                else
                {
                  v316 = [MEMORY[0x277D75418] currentDevice];
                  if ([v316 userInterfaceIdiom])
                  {
                    LODWORD(v408) = 0;
                    LODWORD(v409) = 1;
                    goto LABEL_1230;
                  }
                }

                LODWORD(v409) = v229 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  v230 = __sb__runningInSpringBoard();
                  if (v230)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    v302 = [MEMORY[0x277D759A0] mainScreen];
                    [v302 _referenceBounds];
                  }

                  LODWORD(v408) = v230 ^ 1;
                  BSSizeRoundForScale();
                  if (v241 >= *(MEMORY[0x277D66E30] + 120))
                  {
                    goto LABEL_1281;
                  }
                }

                else
                {
                  LODWORD(v408) = 0;
                }

LABEL_1230:
                if (_SBF_Private_IsD33OrSimilarDevice())
                {
                  LODWORD(v481) = 0;
                  LODWORD(v407) = 0;
                  LODWORD(v406) = 0;
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
                    LODWORD(v407) = 0;
                    goto LABEL_1310;
                  }
                }

                else
                {
                  v314 = [MEMORY[0x277D75418] currentDevice];
                  if ([v314 userInterfaceIdiom])
                  {
                    LODWORD(v407) = 0;
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
                    v300 = [MEMORY[0x277D759A0] mainScreen];
                    [v300 _referenceBounds];
                  }

                  LODWORD(v407) = v246 ^ 1;
                  BSSizeRoundForScale();
                  if (v253 >= *(MEMORY[0x277D66E30] + 104))
                  {
                    LODWORD(v406) = 0;
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
                  LODWORD(v407) = 0;
                }

LABEL_1310:
                v247 = __sb__runningInSpringBoard();
                if (v247)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    LODWORD(v406) = 0;
                    HIDWORD(v475) = 0;
                    goto LABEL_1330;
                  }
                }

                else
                {
                  v308 = [MEMORY[0x277D75418] currentDevice];
                  if ([v308 userInterfaceIdiom])
                  {
                    HIDWORD(v475) = 0;
                    LODWORD(v406) = 1;
                    goto LABEL_1330;
                  }
                }

                LODWORD(v406) = v247 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  v250 = __sb__runningInSpringBoard();
                  if (v250)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    v298 = [MEMORY[0x277D759A0] mainScreen];
                    [v298 _referenceBounds];
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
                  v296 = [MEMORY[0x277D75418] currentDevice];
                  if ([v296 userInterfaceIdiom])
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
                    v286 = [MEMORY[0x277D759A0] mainScreen];
                    [v286 _referenceBounds];
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
                  v294 = [MEMORY[0x277D75418] currentDevice];
                  if ([v294 userInterfaceIdiom])
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
                    v284 = [MEMORY[0x277D759A0] mainScreen];
                    [v284 _referenceBounds];
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
                  v292 = [MEMORY[0x277D75418] currentDevice];
                  if ([v292 userInterfaceIdiom])
                  {
                    HIDWORD(v461) = 0;
                    HIDWORD(v463) = 1;
                    goto LABEL_1468;
                  }
                }

                HIDWORD(v463) = v270 ^ 1;
                v8 = __sb__runningInSpringBoard();
                if (v8)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  v289 = [MEMORY[0x277D759A0] mainScreen];
                  [v289 _referenceBounds];
                }

                HIDWORD(v461) = v8 ^ 1;
                BSSizeRoundForScale();
                if (v273 >= *(MEMORY[0x277D66E30] + 56))
                {
                  goto LABEL_1471;
                }

LABEL_1468:
                v8 = __sb__runningInSpringBoard();
                if (v8)
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
                  a7 = [MEMORY[0x277D75418] currentDevice];
                  if ([a7 userInterfaceIdiom])
                  {
                    v60 = 0;
                    v59 = 1;
                    goto LABEL_1358;
                  }
                }

                v281 = v8 ^ 1;
                v282 = __sb__runningInSpringBoard();
                if (v282)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  v8 = [MEMORY[0x277D759A0] mainScreen];
                  [v8 _referenceBounds];
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
              v322 = [MEMORY[0x277D75418] currentDevice];
              if ([v322 userInterfaceIdiom])
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
                v304 = [MEMORY[0x277D759A0] mainScreen];
                [v304 _referenceBounds];
              }

              rect_12 = v220 ^ 1;
              BSSizeRoundForScale();
              if (v223 >= *(MEMORY[0x277D66E30] + 216))
              {
                HIDWORD(v489) = 0;
                LODWORD(v411) = 0;
                HIDWORD(v485) = 0;
                LODWORD(v410) = 0;
                LODWORD(v409) = 0;
                LODWORD(v408) = 0;
                LODWORD(v481) = 0;
                LODWORD(v407) = 0;
                LODWORD(v406) = 0;
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

        v383 = v36;
        LODWORD(v428) = 0;
        LODWORD(v427) = 0;
        LODWORD(v426) = 0;
        LODWORD(v425) = 0;
        LODWORD(v424) = 0;
        LODWORD(v401) = 0;
        LODWORD(v423) = 0;
        LODWORD(v422) = 0;
        LODWORD(v421) = 0;
        LODWORD(v420) = 0;
        LODWORD(v419) = 0;
        LODWORD(v418) = 0;
        LODWORD(v417) = 0;
        LODWORD(v416) = 0;
        LODWORD(v400) = 0;
        LODWORD(rect_24) = 0;
        LODWORD(v415) = 0;
        v504 = 0;
        LODWORD(v414) = 0;
        LODWORD(v413) = 0;
        v501 = 0;
        LODWORD(v412) = 0;
        v495 = 0;
        LODWORD(rect_16) = 0;
        rect_12 = 0;
        HIDWORD(v489) = 0;
        LODWORD(v411) = 0;
        HIDWORD(v485) = 0;
        LODWORD(v410) = 0;
        LODWORD(v409) = 0;
        LODWORD(v408) = 0;
        LODWORD(v481) = 0;
        LODWORD(v407) = 0;
        LODWORD(v406) = 0;
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
        LODWORD(v405) = v110 ^ 1;
LABEL_132:
        v62 = 0;
        v63 = 0;
        LODWORD(v403) = 0;
        v64 = 0;
        v65 = 0;
        v66 = 0;
        LODWORD(v402) = 0;
        v67 = 0;
        LODWORD(v404) = 0;
        LODWORD(v441) = 0;
        LODWORD(v443) = 0;
        LODWORD(v442) = 0;
        LODWORD(v445) = 0;
        LODWORD(v444) = 0;
        LODWORD(v447) = 0;
        LODWORD(v446) = 0;
        LODWORD(v449) = 0;
        LODWORD(v448) = 0;
        v451 = 0;
        LODWORD(v450) = 0;
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
      v7 = [MEMORY[0x277D75418] currentDevice];
      if ([v7 userInterfaceIdiom] != 1)
      {
        LODWORD(v430) = 0;
        LODWORD(v431) = 1;
        goto LABEL_572;
      }
    }

    LODWORD(v431) = v70 ^ 1;
    v71 = __sb__runningInSpringBoard();
    if (v71)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v8 = [MEMORY[0x277D759A0] mainScreen];
      [v8 _referenceBounds];
    }

    LODWORD(v430) = v71 ^ 1;
    BSSizeRoundForScale();
    if (v109 >= *(MEMORY[0x277D66E30] + 248))
    {
      v386 = v8;
      v387 = v7;
      LODWORD(v405) = 0;
      LODWORD(v428) = 0;
      LODWORD(v427) = 0;
      LODWORD(v426) = 0;
      LODWORD(v425) = 0;
      LODWORD(v424) = 0;
      LODWORD(v401) = 0;
      LODWORD(v423) = 0;
      LODWORD(v422) = 0;
      LODWORD(v421) = 0;
      LODWORD(v420) = 0;
      LODWORD(v419) = 0;
      LODWORD(v418) = 0;
      LODWORD(v417) = 0;
      LODWORD(v416) = 0;
      LODWORD(v400) = 0;
      LODWORD(rect_24) = 0;
      LODWORD(v415) = 0;
      v504 = 0;
      LODWORD(v414) = 0;
      LODWORD(v413) = 0;
      v501 = 0;
      LODWORD(v412) = 0;
      v495 = 0;
      LODWORD(rect_16) = 0;
      rect_12 = 0;
      HIDWORD(v489) = 0;
      LODWORD(v411) = 0;
      HIDWORD(v485) = 0;
      LODWORD(v410) = 0;
      LODWORD(v409) = 0;
      LODWORD(v408) = 0;
      LODWORD(v481) = 0;
      LODWORD(v407) = 0;
      LODWORD(v406) = 0;
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
    v392 = [MEMORY[0x277D75418] currentDevice];
    if ([v392 userInterfaceIdiom] != 1)
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
      v371 = [MEMORY[0x277D759A0] mainScreen];
      [v371 _referenceBounds];
    }

    v499 = v40 ^ 1;
    BSSizeRoundForScale();
    if (v78 == *(MEMORY[0x277D66E30] + 288) && v77 == *(MEMORY[0x277D66E30] + 296))
    {
      v62 = 0;
      LODWORD(v429) = 0;
      v63 = 0;
      LODWORD(v403) = 0;
      LODWORD(v440) = 0;
      LODWORD(v439) = 0;
      LODWORD(v438) = 0;
      LODWORD(v437) = 0;
      v64 = 0;
      LODWORD(v436) = 0;
      v65 = 0;
      LODWORD(v435) = 0;
      LODWORD(v434) = 0;
      LODWORD(v433) = 0;
      v66 = 0;
      LODWORD(v432) = 0;
      LODWORD(v402) = 0;
      LODWORD(v431) = 0;
      LODWORD(v430) = 0;
      LODWORD(v405) = 0;
      LODWORD(v428) = 0;
      v67 = 0;
      LODWORD(v427) = 0;
      LODWORD(v404) = 0;
      LODWORD(v426) = 0;
      LODWORD(v425) = 0;
      LODWORD(v424) = 0;
      LODWORD(v441) = 0;
      LODWORD(v401) = 0;
      LODWORD(v443) = 0;
      LODWORD(v423) = 0;
      LODWORD(v422) = 0;
      LODWORD(v421) = 0;
      LODWORD(v442) = 0;
      LODWORD(v420) = 0;
      LODWORD(v445) = 0;
      LODWORD(v419) = 0;
      LODWORD(v418) = 0;
      LODWORD(v417) = 0;
      LODWORD(v444) = 0;
      LODWORD(v416) = 0;
      LODWORD(v447) = 0;
      LODWORD(v400) = 0;
      LODWORD(rect_24) = 0;
      LODWORD(v415) = 0;
      LODWORD(v446) = 0;
      v504 = 0;
      LODWORD(v449) = 0;
      LODWORD(v414) = 0;
      LODWORD(v413) = 0;
      v501 = 0;
      LODWORD(v448) = 0;
      LODWORD(v412) = 0;
      v451 = 0;
      v495 = 0;
      LODWORD(rect_16) = 0;
      LODWORD(v450) = 0;
      rect_12 = 0;
      v453 = 0;
      LODWORD(v411) = 0;
      LODWORD(v410) = 0;
      v455 = 0;
      LODWORD(v409) = 0;
      LODWORD(v408) = 0;
      v481 = 0;
      LODWORD(v407) = 0;
      v457 = 0;
      LODWORD(v406) = 0;
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
    v390 = [MEMORY[0x277D75418] currentDevice];
    if ([v390 userInterfaceIdiom] != 1)
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
      v369 = [MEMORY[0x277D759A0] mainScreen];
      [v369 _referenceBounds];
    }

    LODWORD(v497) = v44 ^ 1;
    BSSizeRoundForScale();
    if (v80 >= *(MEMORY[0x277D66E30] + 440))
    {
      v62 = 0;
      LODWORD(v429) = 0;
      v63 = 0;
      LODWORD(v403) = 0;
      LODWORD(v440) = 0;
      LODWORD(v439) = 0;
      LODWORD(v438) = 0;
      LODWORD(v437) = 0;
      v64 = 0;
      LODWORD(v436) = 0;
      v65 = 0;
      LODWORD(v435) = 0;
      LODWORD(v434) = 0;
      LODWORD(v433) = 0;
      v66 = 0;
      LODWORD(v432) = 0;
      LODWORD(v402) = 0;
      LODWORD(v431) = 0;
      LODWORD(v430) = 0;
      LODWORD(v405) = 0;
      LODWORD(v428) = 0;
      v67 = 0;
      LODWORD(v427) = 0;
      LODWORD(v404) = 0;
      LODWORD(v426) = 0;
      LODWORD(v425) = 0;
      LODWORD(v424) = 0;
      LODWORD(v441) = 0;
      LODWORD(v401) = 0;
      LODWORD(v443) = 0;
      LODWORD(v423) = 0;
      LODWORD(v422) = 0;
      LODWORD(v421) = 0;
      LODWORD(v442) = 0;
      LODWORD(v420) = 0;
      LODWORD(v445) = 0;
      LODWORD(v419) = 0;
      LODWORD(v418) = 0;
      LODWORD(v417) = 0;
      LODWORD(v444) = 0;
      LODWORD(v416) = 0;
      LODWORD(v447) = 0;
      LODWORD(v400) = 0;
      LODWORD(rect_24) = 0;
      LODWORD(v415) = 0;
      LODWORD(v446) = 0;
      v504 = 0;
      LODWORD(v449) = 0;
      LODWORD(v414) = 0;
      LODWORD(v413) = 0;
      v501 = 0;
      LODWORD(v448) = 0;
      LODWORD(v412) = 0;
      v451 = 0;
      v495 = 0;
      LODWORD(rect_16) = 0;
      LODWORD(v450) = 0;
      rect_12 = 0;
      v453 = 0;
      LODWORD(v411) = 0;
      LODWORD(v410) = 0;
      v455 = 0;
      LODWORD(v409) = 0;
      LODWORD(v408) = 0;
      v481 = 0;
      LODWORD(v407) = 0;
      v457 = 0;
      LODWORD(v406) = 0;
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
    v388 = [MEMORY[0x277D75418] currentDevice];
    if ([v388 userInterfaceIdiom] != 1)
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
      v367 = [MEMORY[0x277D759A0] mainScreen];
      [v367 _referenceBounds];
    }

    LODWORD(v493) = v48 ^ 1;
    BSSizeRoundForScale();
    if (v108 >= *(MEMORY[0x277D66E30] + 376))
    {
      v62 = 0;
      LODWORD(v429) = 0;
      v63 = 0;
      LODWORD(v403) = 0;
      LODWORD(v440) = 0;
      LODWORD(v439) = 0;
      LODWORD(v438) = 0;
      LODWORD(v437) = 0;
      v64 = 0;
      LODWORD(v436) = 0;
      v65 = 0;
      LODWORD(v435) = 0;
      LODWORD(v434) = 0;
      LODWORD(v433) = 0;
      v66 = 0;
      LODWORD(v432) = 0;
      LODWORD(v402) = 0;
      LODWORD(v431) = 0;
      LODWORD(v430) = 0;
      LODWORD(v405) = 0;
      LODWORD(v428) = 0;
      v67 = 0;
      LODWORD(v427) = 0;
      LODWORD(v404) = 0;
      LODWORD(v426) = 0;
      LODWORD(v425) = 0;
      LODWORD(v424) = 0;
      LODWORD(v441) = 0;
      LODWORD(v401) = 0;
      LODWORD(v443) = 0;
      LODWORD(v423) = 0;
      LODWORD(v422) = 0;
      LODWORD(v421) = 0;
      LODWORD(v442) = 0;
      LODWORD(v420) = 0;
      LODWORD(v445) = 0;
      LODWORD(v419) = 0;
      LODWORD(v418) = 0;
      LODWORD(v417) = 0;
      LODWORD(v444) = 0;
      LODWORD(v416) = 0;
      LODWORD(v447) = 0;
      LODWORD(v400) = 0;
      LODWORD(rect_24) = 0;
      LODWORD(v415) = 0;
      LODWORD(v446) = 0;
      v504 = 0;
      LODWORD(v449) = 0;
      LODWORD(v414) = 0;
      LODWORD(v413) = 0;
      v501 = 0;
      LODWORD(v448) = 0;
      LODWORD(v412) = 0;
      v451 = 0;
      v495 = 0;
      LODWORD(rect_16) = 0;
      LODWORD(v450) = 0;
      rect_12 = 0;
      v453 = 0;
      LODWORD(v411) = 0;
      LODWORD(v410) = 0;
      v455 = 0;
      LODWORD(v409) = 0;
      LODWORD(v408) = 0;
      v481 = 0;
      LODWORD(v407) = 0;
      v457 = 0;
      LODWORD(v406) = 0;
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
    v384 = [MEMORY[0x277D75418] currentDevice];
    if ([v384 userInterfaceIdiom] != 1)
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
    v379 = [MEMORY[0x277D759A0] mainScreen];
    [v379 _referenceBounds];
  }

  LODWORD(v491) = v52 ^ 1;
  BSSizeRoundForScale();
  if (v56 >= *(MEMORY[0x277D66E30] + 280))
  {
    v62 = 0;
    LODWORD(v429) = 0;
    v63 = 0;
    LODWORD(v403) = 0;
    LODWORD(v440) = 0;
    LODWORD(v439) = 0;
    LODWORD(v438) = 0;
    LODWORD(v437) = 0;
    v64 = 0;
    LODWORD(v436) = 0;
    v65 = 0;
    LODWORD(v435) = 0;
    LODWORD(v434) = 0;
    LODWORD(v433) = 0;
    v66 = 0;
    LODWORD(v432) = 0;
    LODWORD(v402) = 0;
    LODWORD(v431) = 0;
    LODWORD(v430) = 0;
    LODWORD(v405) = 0;
    LODWORD(v428) = 0;
    v67 = 0;
    LODWORD(v427) = 0;
    LODWORD(v404) = 0;
    LODWORD(v426) = 0;
    LODWORD(v425) = 0;
    LODWORD(v424) = 0;
    LODWORD(v441) = 0;
    LODWORD(v401) = 0;
    LODWORD(v443) = 0;
    LODWORD(v423) = 0;
    LODWORD(v422) = 0;
    LODWORD(v421) = 0;
    LODWORD(v442) = 0;
    LODWORD(v420) = 0;
    LODWORD(v445) = 0;
    LODWORD(v419) = 0;
    LODWORD(v418) = 0;
    LODWORD(v417) = 0;
    LODWORD(v444) = 0;
    LODWORD(v416) = 0;
    LODWORD(v447) = 0;
    LODWORD(v400) = 0;
    LODWORD(rect_24) = 0;
    LODWORD(v415) = 0;
    LODWORD(v446) = 0;
    v504 = 0;
    LODWORD(v449) = 0;
    LODWORD(v414) = 0;
    LODWORD(v413) = 0;
    v501 = 0;
    LODWORD(v448) = 0;
    LODWORD(v412) = 0;
    v451 = 0;
    v495 = 0;
    LODWORD(rect_16) = 0;
    LODWORD(v450) = 0;
    rect_12 = 0;
    v453 = 0;
    LODWORD(v411) = 0;
    LODWORD(v410) = 0;
    v455 = 0;
    LODWORD(v409) = 0;
    LODWORD(v408) = 0;
    v481 = 0;
    LODWORD(v407) = 0;
    v457 = 0;
    LODWORD(v406) = 0;
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
    v382 = [MEMORY[0x277D75418] currentDevice];
    if ([v382 userInterfaceIdiom] != 1)
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
    v373 = [MEMORY[0x277D759A0] mainScreen];
    [v373 _referenceBounds];
  }

  HIDWORD(v487) = v58 ^ 1;
  BSSizeRoundForScale();
  if (v72 >= *(MEMORY[0x277D66E30] + 264))
  {
    v62 = 0;
    LODWORD(v429) = 0;
    v63 = 0;
    LODWORD(v403) = 0;
    LODWORD(v440) = 0;
    LODWORD(v439) = 0;
    LODWORD(v438) = 0;
    LODWORD(v437) = 0;
    v64 = 0;
    LODWORD(v436) = 0;
    v65 = 0;
    LODWORD(v435) = 0;
    LODWORD(v434) = 0;
    LODWORD(v433) = 0;
    v66 = 0;
    LODWORD(v432) = 0;
    LODWORD(v402) = 0;
    LODWORD(v431) = 0;
    LODWORD(v430) = 0;
    LODWORD(v405) = 0;
    LODWORD(v428) = 0;
    v67 = 0;
    LODWORD(v427) = 0;
    LODWORD(v404) = 0;
    LODWORD(v426) = 0;
    LODWORD(v425) = 0;
    LODWORD(v424) = 0;
    LODWORD(v441) = 0;
    LODWORD(v401) = 0;
    LODWORD(v443) = 0;
    LODWORD(v423) = 0;
    LODWORD(v422) = 0;
    LODWORD(v421) = 0;
    LODWORD(v442) = 0;
    LODWORD(v420) = 0;
    LODWORD(v445) = 0;
    LODWORD(v419) = 0;
    LODWORD(v418) = 0;
    LODWORD(v417) = 0;
    LODWORD(v444) = 0;
    LODWORD(v416) = 0;
    LODWORD(v447) = 0;
    LODWORD(v400) = 0;
    LODWORD(rect_24) = 0;
    LODWORD(v415) = 0;
    LODWORD(v446) = 0;
    v504 = 0;
    LODWORD(v449) = 0;
    LODWORD(v414) = 0;
    LODWORD(v413) = 0;
    v501 = 0;
    LODWORD(v448) = 0;
    LODWORD(v412) = 0;
    v451 = 0;
    v495 = 0;
    LODWORD(rect_16) = 0;
    LODWORD(v450) = 0;
    rect_12 = 0;
    v453 = 0;
    HIDWORD(v489) = 0;
    LODWORD(v411) = 0;
    LODWORD(v410) = 0;
    v455 = 0;
    LODWORD(v409) = 0;
    LODWORD(v408) = 0;
    v481 = 0;
    LODWORD(v407) = 0;
    v457 = 0;
    LODWORD(v406) = 0;
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
    v381 = [MEMORY[0x277D75418] currentDevice];
    if ([v381 userInterfaceIdiom] != 1)
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
    v366 = [MEMORY[0x277D759A0] mainScreen];
    [v366 _referenceBounds];
  }

  LODWORD(v485) = v74 ^ 1;
  BSSizeRoundForScale();
  if (v112 >= *(MEMORY[0x277D66E30] + 248))
  {
    v62 = 0;
    LODWORD(v429) = 0;
    v63 = 0;
    LODWORD(v403) = 0;
    LODWORD(v440) = 0;
    LODWORD(v439) = 0;
    LODWORD(v438) = 0;
    LODWORD(v437) = 0;
    v64 = 0;
    LODWORD(v436) = 0;
    v65 = 0;
    LODWORD(v435) = 0;
    LODWORD(v434) = 0;
    LODWORD(v433) = 0;
    v66 = 0;
    LODWORD(v432) = 0;
    LODWORD(v402) = 0;
    LODWORD(v431) = 0;
    LODWORD(v430) = 0;
    LODWORD(v405) = 0;
    LODWORD(v428) = 0;
    v67 = 0;
    LODWORD(v427) = 0;
    LODWORD(v404) = 0;
    LODWORD(v426) = 0;
    LODWORD(v425) = 0;
    LODWORD(v424) = 0;
    LODWORD(v441) = 0;
    LODWORD(v401) = 0;
    LODWORD(v443) = 0;
    LODWORD(v423) = 0;
    LODWORD(v422) = 0;
    LODWORD(v421) = 0;
    LODWORD(v442) = 0;
    LODWORD(v420) = 0;
    LODWORD(v445) = 0;
    LODWORD(v419) = 0;
    LODWORD(v418) = 0;
    LODWORD(v417) = 0;
    LODWORD(v444) = 0;
    LODWORD(v416) = 0;
    LODWORD(v447) = 0;
    LODWORD(v400) = 0;
    LODWORD(rect_24) = 0;
    LODWORD(v415) = 0;
    LODWORD(v446) = 0;
    v504 = 0;
    LODWORD(v449) = 0;
    LODWORD(v414) = 0;
    LODWORD(v413) = 0;
    v501 = 0;
    LODWORD(v448) = 0;
    LODWORD(v412) = 0;
    v451 = 0;
    v495 = 0;
    LODWORD(rect_16) = 0;
    LODWORD(v450) = 0;
    rect_12 = 0;
    v453 = 0;
    HIDWORD(v489) = 0;
    LODWORD(v411) = 0;
    HIDWORD(v485) = 0;
    LODWORD(v410) = 0;
    v455 = 0;
    LODWORD(v409) = 0;
    LODWORD(v408) = 0;
    v481 = 0;
    LODWORD(v407) = 0;
    v457 = 0;
    LODWORD(v406) = 0;
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
    v62 = 0;
    LODWORD(v429) = 0;
    v63 = 0;
    LODWORD(v403) = 0;
    LODWORD(v440) = 0;
    LODWORD(v439) = 0;
    LODWORD(v438) = 0;
    LODWORD(v437) = 0;
    v64 = 0;
    LODWORD(v436) = 0;
    v65 = 0;
    LODWORD(v435) = 0;
    LODWORD(v434) = 0;
    LODWORD(v433) = 0;
    v66 = 0;
    LODWORD(v432) = 0;
    LODWORD(v402) = 0;
    LODWORD(v431) = 0;
    LODWORD(v430) = 0;
    LODWORD(v405) = 0;
    LODWORD(v428) = 0;
    v67 = 0;
    LODWORD(v427) = 0;
    LODWORD(v404) = 0;
    LODWORD(v426) = 0;
    LODWORD(v425) = 0;
    LODWORD(v424) = 0;
    LODWORD(v441) = 0;
    LODWORD(v401) = 0;
    LODWORD(v443) = 0;
    LODWORD(v423) = 0;
    LODWORD(v422) = 0;
    LODWORD(v421) = 0;
    LODWORD(v442) = 0;
    LODWORD(v420) = 0;
    LODWORD(v445) = 0;
    LODWORD(v419) = 0;
    LODWORD(v418) = 0;
    LODWORD(v417) = 0;
    LODWORD(v444) = 0;
    LODWORD(v416) = 0;
    LODWORD(v447) = 0;
    LODWORD(v400) = 0;
    LODWORD(rect_24) = 0;
    LODWORD(v415) = 0;
    LODWORD(v446) = 0;
    v504 = 0;
    LODWORD(v449) = 0;
    LODWORD(v414) = 0;
    LODWORD(v413) = 0;
    v501 = 0;
    LODWORD(v448) = 0;
    LODWORD(v412) = 0;
    v451 = 0;
    v495 = 0;
    LODWORD(rect_16) = 0;
    LODWORD(v450) = 0;
    rect_12 = 0;
    v453 = 0;
    HIDWORD(v489) = 0;
    LODWORD(v411) = 0;
    HIDWORD(v485) = 0;
    LODWORD(v410) = 0;
    v455 = 0;
    LODWORD(v409) = 0;
    LODWORD(v408) = 0;
    v481 = 0;
    LODWORD(v407) = 0;
    v457 = 0;
    LODWORD(v406) = 0;
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

  v376 = [MEMORY[0x277D75418] currentDevice];
  if ([v376 userInterfaceIdiom] == 1)
  {
    goto LABEL_592;
  }

LABEL_586:
  a7 = (v113 ^ 1u);
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
    v359 = [MEMORY[0x277D75418] currentDevice];
    if ([v359 userInterfaceIdiom])
    {
      HIDWORD(v481) = 0;
      LODWORD(v483) = 1;
      goto LABEL_692;
    }
  }

  a7 = (v114 ^ 1u);
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
      v346 = [MEMORY[0x277D759A0] mainScreen];
      [v346 _referenceBounds];
    }

    HIDWORD(v481) = v125 ^ 1;
    BSSizeRoundForScale();
    if (v133 >= *(MEMORY[0x277D66E30] + 200))
    {
      v62 = 0;
      LODWORD(v429) = 0;
      v63 = 0;
      LODWORD(v403) = 0;
      LODWORD(v440) = 0;
      LODWORD(v439) = 0;
      LODWORD(v438) = 0;
      LODWORD(v437) = 0;
      v64 = 0;
      LODWORD(v436) = 0;
      v65 = 0;
      LODWORD(v435) = 0;
      LODWORD(v434) = 0;
      LODWORD(v433) = 0;
      v66 = 0;
      LODWORD(v432) = 0;
      LODWORD(v402) = 0;
      LODWORD(v431) = 0;
      LODWORD(v430) = 0;
      LODWORD(v405) = 0;
      LODWORD(v428) = 0;
      v67 = 0;
      LODWORD(v427) = 0;
      LODWORD(v404) = 0;
      LODWORD(v426) = 0;
      LODWORD(v425) = 0;
      LODWORD(v424) = 0;
      LODWORD(v441) = 0;
      LODWORD(v401) = 0;
      LODWORD(v443) = 0;
      LODWORD(v423) = 0;
      LODWORD(v422) = 0;
      LODWORD(v421) = 0;
      LODWORD(v442) = 0;
      LODWORD(v420) = 0;
      LODWORD(v445) = 0;
      LODWORD(v419) = 0;
      LODWORD(v418) = 0;
      LODWORD(v417) = 0;
      LODWORD(v444) = 0;
      LODWORD(v416) = 0;
      LODWORD(v447) = 0;
      LODWORD(v400) = 0;
      LODWORD(rect_24) = 0;
      LODWORD(v415) = 0;
      LODWORD(v446) = 0;
      v504 = 0;
      LODWORD(v449) = 0;
      LODWORD(v414) = 0;
      LODWORD(v413) = 0;
      v501 = 0;
      LODWORD(v448) = 0;
      LODWORD(v412) = 0;
      v451 = 0;
      v495 = 0;
      LODWORD(rect_16) = 0;
      LODWORD(v450) = 0;
      rect_12 = 0;
      v453 = 0;
      HIDWORD(v489) = 0;
      LODWORD(v411) = 0;
      HIDWORD(v485) = 0;
      LODWORD(v410) = 0;
      v455 = 0;
      LODWORD(v409) = 0;
      LODWORD(v408) = 0;
      LODWORD(v481) = 0;
      LODWORD(v407) = 0;
      v457 = 0;
      LODWORD(v406) = 0;
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
    v362 = [MEMORY[0x277D75418] currentDevice];
    if ([v362 userInterfaceIdiom])
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
      v353 = [MEMORY[0x277D759A0] mainScreen];
      [v353 _referenceBounds];
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
    v62 = 0;
    LODWORD(v429) = 0;
    v63 = 0;
    LODWORD(v403) = 0;
    LODWORD(v440) = 0;
    LODWORD(v439) = 0;
    LODWORD(v438) = 0;
    LODWORD(v437) = 0;
    v64 = 0;
    LODWORD(v436) = 0;
    v65 = 0;
    LODWORD(v435) = 0;
    LODWORD(v434) = 0;
    LODWORD(v433) = 0;
    v66 = 0;
    LODWORD(v432) = 0;
    LODWORD(v402) = 0;
    LODWORD(v431) = 0;
    LODWORD(v430) = 0;
    LODWORD(v405) = 0;
    LODWORD(v428) = 0;
    v67 = 0;
    LODWORD(v427) = 0;
    LODWORD(v404) = 0;
    LODWORD(v426) = 0;
    LODWORD(v425) = 0;
    LODWORD(v424) = 0;
    LODWORD(v441) = 0;
    LODWORD(v401) = 0;
    LODWORD(v443) = 0;
    LODWORD(v423) = 0;
    LODWORD(v422) = 0;
    LODWORD(v421) = 0;
    LODWORD(v442) = 0;
    LODWORD(v420) = 0;
    LODWORD(v445) = 0;
    LODWORD(v419) = 0;
    LODWORD(v418) = 0;
    LODWORD(v417) = 0;
    LODWORD(v444) = 0;
    LODWORD(v416) = 0;
    LODWORD(v447) = 0;
    LODWORD(v400) = 0;
    LODWORD(rect_24) = 0;
    LODWORD(v415) = 0;
    LODWORD(v446) = 0;
    v504 = 0;
    LODWORD(v449) = 0;
    LODWORD(v414) = 0;
    LODWORD(v413) = 0;
    v501 = 0;
    LODWORD(v448) = 0;
    LODWORD(v412) = 0;
    v451 = 0;
    v495 = 0;
    LODWORD(rect_16) = 0;
    LODWORD(v450) = 0;
    rect_12 = 0;
    v453 = 0;
    HIDWORD(v489) = 0;
    LODWORD(v411) = 0;
    HIDWORD(v485) = 0;
    LODWORD(v410) = 0;
    v455 = 0;
    LODWORD(v409) = 0;
    LODWORD(v408) = 0;
    LODWORD(v481) = 0;
    LODWORD(v407) = 0;
    v457 = 0;
    LODWORD(v406) = 0;
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
    v354 = [MEMORY[0x277D75418] currentDevice];
    if ([v354 userInterfaceIdiom])
    {
      v477 = 0x100000000;
      goto LABEL_787;
    }
  }

  a7 = (v129 ^ 1u);
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
    v338 = [MEMORY[0x277D759A0] mainScreen];
    [v338 _referenceBounds];
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
      v358 = [MEMORY[0x277D75418] currentDevice];
      if ([v358 userInterfaceIdiom])
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
        v345 = [MEMORY[0x277D759A0] mainScreen];
        [v345 _referenceBounds];
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
      v62 = 0;
      LODWORD(v429) = 0;
      v63 = 0;
      LODWORD(v403) = 0;
      LODWORD(v440) = 0;
      LODWORD(v439) = 0;
      LODWORD(v438) = 0;
      LODWORD(v437) = 0;
      v64 = 0;
      LODWORD(v436) = 0;
      v65 = 0;
      LODWORD(v435) = 0;
      LODWORD(v434) = 0;
      LODWORD(v433) = 0;
      v66 = 0;
      LODWORD(v432) = 0;
      LODWORD(v402) = 0;
      LODWORD(v431) = 0;
      LODWORD(v430) = 0;
      LODWORD(v405) = 0;
      LODWORD(v428) = 0;
      v67 = 0;
      LODWORD(v427) = 0;
      LODWORD(v404) = 0;
      LODWORD(v426) = 0;
      LODWORD(v425) = 0;
      LODWORD(v424) = 0;
      LODWORD(v441) = 0;
      LODWORD(v401) = 0;
      LODWORD(v443) = 0;
      LODWORD(v423) = 0;
      LODWORD(v422) = 0;
      LODWORD(v421) = 0;
      LODWORD(v442) = 0;
      LODWORD(v420) = 0;
      LODWORD(v445) = 0;
      LODWORD(v419) = 0;
      LODWORD(v418) = 0;
      LODWORD(v417) = 0;
      LODWORD(v444) = 0;
      LODWORD(v416) = 0;
      LODWORD(v447) = 0;
      LODWORD(v400) = 0;
      LODWORD(rect_24) = 0;
      LODWORD(v415) = 0;
      LODWORD(v446) = 0;
      v504 = 0;
      LODWORD(v449) = 0;
      LODWORD(v414) = 0;
      LODWORD(v413) = 0;
      v501 = 0;
      LODWORD(v448) = 0;
      LODWORD(v412) = 0;
      v451 = 0;
      v495 = 0;
      LODWORD(rect_16) = 0;
      LODWORD(v450) = 0;
      rect_12 = 0;
      v453 = 0;
      HIDWORD(v489) = 0;
      LODWORD(v411) = 0;
      HIDWORD(v485) = 0;
      LODWORD(v410) = 0;
      v455 = 0;
      LODWORD(v409) = 0;
      LODWORD(v408) = 0;
      LODWORD(v481) = 0;
      LODWORD(v407) = 0;
      v457 = 0;
      LODWORD(v406) = 0;
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
      v356 = [MEMORY[0x277D75418] currentDevice];
      if ([v356 userInterfaceIdiom])
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
        v339 = [MEMORY[0x277D759A0] mainScreen];
        [v339 _referenceBounds];
      }

      HIDWORD(v469) = v151 ^ 1;
      BSSizeRoundForScale();
      if (v156 >= *(MEMORY[0x277D66E30] + 136))
      {
        v62 = 0;
        LODWORD(v429) = 0;
        v63 = 0;
        LODWORD(v403) = 0;
        LODWORD(v440) = 0;
        LODWORD(v439) = 0;
        LODWORD(v438) = 0;
        LODWORD(v437) = 0;
        v64 = 0;
        LODWORD(v436) = 0;
        v65 = 0;
        LODWORD(v435) = 0;
        LODWORD(v434) = 0;
        LODWORD(v433) = 0;
        v66 = 0;
        LODWORD(v432) = 0;
        LODWORD(v402) = 0;
        LODWORD(v431) = 0;
        LODWORD(v430) = 0;
        LODWORD(v405) = 0;
        LODWORD(v428) = 0;
        v67 = 0;
        LODWORD(v427) = 0;
        LODWORD(v404) = 0;
        LODWORD(v426) = 0;
        LODWORD(v425) = 0;
        LODWORD(v424) = 0;
        LODWORD(v441) = 0;
        LODWORD(v401) = 0;
        LODWORD(v443) = 0;
        LODWORD(v423) = 0;
        LODWORD(v422) = 0;
        LODWORD(v421) = 0;
        LODWORD(v442) = 0;
        LODWORD(v420) = 0;
        LODWORD(v445) = 0;
        LODWORD(v419) = 0;
        LODWORD(v418) = 0;
        LODWORD(v417) = 0;
        LODWORD(v444) = 0;
        LODWORD(v416) = 0;
        LODWORD(v447) = 0;
        LODWORD(v400) = 0;
        LODWORD(rect_24) = 0;
        LODWORD(v415) = 0;
        LODWORD(v446) = 0;
        v504 = 0;
        LODWORD(v449) = 0;
        LODWORD(v414) = 0;
        LODWORD(v413) = 0;
        v501 = 0;
        LODWORD(v448) = 0;
        LODWORD(v412) = 0;
        v451 = 0;
        v495 = 0;
        LODWORD(rect_16) = 0;
        LODWORD(v450) = 0;
        rect_12 = 0;
        v453 = 0;
        HIDWORD(v489) = 0;
        LODWORD(v411) = 0;
        HIDWORD(v485) = 0;
        LODWORD(v410) = 0;
        v455 = 0;
        LODWORD(v409) = 0;
        LODWORD(v408) = 0;
        LODWORD(v481) = 0;
        LODWORD(v407) = 0;
        v457 = 0;
        LODWORD(v406) = 0;
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
      v351 = [MEMORY[0x277D75418] currentDevice];
      if ([v351 userInterfaceIdiom])
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
        v337 = [MEMORY[0x277D759A0] mainScreen];
        [v337 _referenceBounds];
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
      v62 = 0;
      LODWORD(v429) = 0;
      v63 = 0;
      LODWORD(v403) = 0;
      LODWORD(v440) = 0;
      LODWORD(v439) = 0;
      LODWORD(v438) = 0;
      LODWORD(v437) = 0;
      v64 = 0;
      LODWORD(v436) = 0;
      v65 = 0;
      LODWORD(v435) = 0;
      LODWORD(v434) = 0;
      LODWORD(v433) = 0;
      v66 = 0;
      LODWORD(v432) = 0;
      LODWORD(v402) = 0;
      LODWORD(v431) = 0;
      LODWORD(v430) = 0;
      LODWORD(v405) = 0;
      LODWORD(v428) = 0;
      v67 = 0;
      LODWORD(v427) = 0;
      LODWORD(v404) = 0;
      LODWORD(v426) = 0;
      LODWORD(v425) = 0;
      LODWORD(v424) = 0;
      LODWORD(v441) = 0;
      LODWORD(v401) = 0;
      LODWORD(v443) = 0;
      LODWORD(v423) = 0;
      LODWORD(v422) = 0;
      LODWORD(v421) = 0;
      LODWORD(v442) = 0;
      LODWORD(v420) = 0;
      LODWORD(v445) = 0;
      LODWORD(v419) = 0;
      LODWORD(v418) = 0;
      LODWORD(v417) = 0;
      LODWORD(v444) = 0;
      LODWORD(v416) = 0;
      LODWORD(v447) = 0;
      LODWORD(v400) = 0;
      LODWORD(rect_24) = 0;
      LODWORD(v415) = 0;
      LODWORD(v446) = 0;
      v504 = 0;
      LODWORD(v449) = 0;
      LODWORD(v414) = 0;
      LODWORD(v413) = 0;
      v501 = 0;
      LODWORD(v448) = 0;
      LODWORD(v412) = 0;
      v451 = 0;
      v495 = 0;
      LODWORD(rect_16) = 0;
      LODWORD(v450) = 0;
      rect_12 = 0;
      v453 = 0;
      HIDWORD(v489) = 0;
      LODWORD(v411) = 0;
      HIDWORD(v485) = 0;
      LODWORD(v410) = 0;
      v455 = 0;
      LODWORD(v409) = 0;
      LODWORD(v408) = 0;
      LODWORD(v481) = 0;
      LODWORD(v407) = 0;
      v457 = 0;
      LODWORD(v406) = 0;
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
      v347 = [MEMORY[0x277D75418] currentDevice];
      if ([v347 userInterfaceIdiom])
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
        v333 = [MEMORY[0x277D759A0] mainScreen];
        [v333 _referenceBounds];
      }

      a7 = (v172 ^ 1u);
      BSSizeRoundForScale();
      LODWORD(v463) = v172 ^ 1;
      if (v179 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
      {
        v62 = 0;
        LODWORD(v429) = 0;
        v63 = 0;
        LODWORD(v403) = 0;
        LODWORD(v440) = 0;
        LODWORD(v439) = 0;
        LODWORD(v438) = 0;
        LODWORD(v437) = 0;
        v64 = 0;
        LODWORD(v436) = 0;
        v65 = 0;
        LODWORD(v435) = 0;
        LODWORD(v434) = 0;
        LODWORD(v433) = 0;
        v66 = 0;
        LODWORD(v432) = 0;
        LODWORD(v402) = 0;
        LODWORD(v431) = 0;
        LODWORD(v430) = 0;
        LODWORD(v405) = 0;
        LODWORD(v428) = 0;
        v67 = 0;
        LODWORD(v427) = 0;
        LODWORD(v404) = 0;
        LODWORD(v426) = 0;
        LODWORD(v425) = 0;
        LODWORD(v424) = 0;
        LODWORD(v441) = 0;
        LODWORD(v401) = 0;
        LODWORD(v443) = 0;
        LODWORD(v423) = 0;
        LODWORD(v422) = 0;
        LODWORD(v421) = 0;
        LODWORD(v442) = 0;
        LODWORD(v420) = 0;
        LODWORD(v445) = 0;
        LODWORD(v419) = 0;
        LODWORD(v418) = 0;
        LODWORD(v417) = 0;
        LODWORD(v444) = 0;
        LODWORD(v416) = 0;
        LODWORD(v447) = 0;
        LODWORD(v400) = 0;
        LODWORD(rect_24) = 0;
        LODWORD(v415) = 0;
        LODWORD(v446) = 0;
        v504 = 0;
        LODWORD(v449) = 0;
        LODWORD(v414) = 0;
        LODWORD(v413) = 0;
        v501 = 0;
        LODWORD(v448) = 0;
        LODWORD(v412) = 0;
        v451 = 0;
        v495 = 0;
        LODWORD(rect_16) = 0;
        LODWORD(v450) = 0;
        rect_12 = 0;
        v453 = 0;
        HIDWORD(v489) = 0;
        LODWORD(v411) = 0;
        HIDWORD(v485) = 0;
        LODWORD(v410) = 0;
        v455 = 0;
        LODWORD(v409) = 0;
        LODWORD(v408) = 0;
        LODWORD(v481) = 0;
        LODWORD(v407) = 0;
        v457 = 0;
        LODWORD(v406) = 0;
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
      v343 = [MEMORY[0x277D75418] currentDevice];
      if ([v343 userInterfaceIdiom])
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
        v331 = [MEMORY[0x277D759A0] mainScreen];
        [v331 _referenceBounds];
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
      v62 = 0;
      LODWORD(v429) = 0;
      v63 = 0;
      LODWORD(v403) = 0;
      LODWORD(v440) = 0;
      LODWORD(v439) = 0;
      LODWORD(v438) = 0;
      LODWORD(v437) = 0;
      v64 = 0;
      LODWORD(v436) = 0;
      v65 = 0;
      LODWORD(v435) = 0;
      LODWORD(v434) = 0;
      LODWORD(v433) = 0;
      v66 = 0;
      LODWORD(v432) = 0;
      LODWORD(v402) = 0;
      LODWORD(v431) = 0;
      LODWORD(v430) = 0;
      LODWORD(v405) = 0;
      LODWORD(v428) = 0;
      v67 = 0;
      LODWORD(v427) = 0;
      LODWORD(v404) = 0;
      LODWORD(v426) = 0;
      LODWORD(v425) = 0;
      LODWORD(v424) = 0;
      LODWORD(v441) = 0;
      LODWORD(v401) = 0;
      LODWORD(v443) = 0;
      LODWORD(v423) = 0;
      LODWORD(v422) = 0;
      LODWORD(v421) = 0;
      LODWORD(v442) = 0;
      LODWORD(v420) = 0;
      LODWORD(v445) = 0;
      LODWORD(v419) = 0;
      LODWORD(v418) = 0;
      LODWORD(v417) = 0;
      LODWORD(v444) = 0;
      LODWORD(v416) = 0;
      LODWORD(v447) = 0;
      LODWORD(v400) = 0;
      LODWORD(rect_24) = 0;
      LODWORD(v415) = 0;
      LODWORD(v446) = 0;
      v504 = 0;
      LODWORD(v449) = 0;
      LODWORD(v414) = 0;
      LODWORD(v413) = 0;
      v501 = 0;
      LODWORD(v448) = 0;
      LODWORD(v412) = 0;
      v451 = 0;
      v495 = 0;
      LODWORD(rect_16) = 0;
      LODWORD(v450) = 0;
      rect_12 = 0;
      v453 = 0;
      HIDWORD(v489) = 0;
      LODWORD(v411) = 0;
      HIDWORD(v485) = 0;
      LODWORD(v410) = 0;
      v455 = 0;
      LODWORD(v409) = 0;
      LODWORD(v408) = 0;
      LODWORD(v481) = 0;
      LODWORD(v407) = 0;
      v457 = 0;
      LODWORD(v406) = 0;
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
      v335 = [MEMORY[0x277D75418] currentDevice];
      if ([v335 userInterfaceIdiom])
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
        v320 = [MEMORY[0x277D759A0] mainScreen];
        [v320 _referenceBounds];
      }

      LODWORD(v459) = v192 ^ 1;
      BSSizeRoundForScale();
      if (v199 >= *(MEMORY[0x277D66E30] + 184))
      {
        v62 = 0;
        LODWORD(v429) = 0;
        v63 = 0;
        LODWORD(v403) = 0;
        LODWORD(v440) = 0;
        LODWORD(v439) = 0;
        LODWORD(v438) = 0;
        LODWORD(v437) = 0;
        v64 = 0;
        LODWORD(v436) = 0;
        v65 = 0;
        LODWORD(v435) = 0;
        LODWORD(v434) = 0;
        LODWORD(v433) = 0;
        v66 = 0;
        LODWORD(v432) = 0;
        LODWORD(v402) = 0;
        LODWORD(v431) = 0;
        LODWORD(v430) = 0;
        LODWORD(v405) = 0;
        LODWORD(v428) = 0;
        v67 = 0;
        LODWORD(v427) = 0;
        LODWORD(v404) = 0;
        LODWORD(v426) = 0;
        LODWORD(v425) = 0;
        LODWORD(v424) = 0;
        LODWORD(v441) = 0;
        LODWORD(v401) = 0;
        LODWORD(v443) = 0;
        LODWORD(v423) = 0;
        LODWORD(v422) = 0;
        LODWORD(v421) = 0;
        LODWORD(v442) = 0;
        LODWORD(v420) = 0;
        LODWORD(v445) = 0;
        LODWORD(v419) = 0;
        LODWORD(v418) = 0;
        LODWORD(v417) = 0;
        LODWORD(v444) = 0;
        LODWORD(v416) = 0;
        LODWORD(v447) = 0;
        LODWORD(v400) = 0;
        LODWORD(rect_24) = 0;
        LODWORD(v415) = 0;
        LODWORD(v446) = 0;
        v504 = 0;
        LODWORD(v449) = 0;
        LODWORD(v414) = 0;
        LODWORD(v413) = 0;
        v501 = 0;
        LODWORD(v448) = 0;
        LODWORD(v412) = 0;
        v451 = 0;
        v495 = 0;
        LODWORD(rect_16) = 0;
        LODWORD(v450) = 0;
        rect_12 = 0;
        v453 = 0;
        HIDWORD(v489) = 0;
        LODWORD(v411) = 0;
        HIDWORD(v485) = 0;
        LODWORD(v410) = 0;
        v455 = 0;
        LODWORD(v409) = 0;
        LODWORD(v408) = 0;
        LODWORD(v481) = 0;
        LODWORD(v407) = 0;
        LODWORD(v457) = 0;
        LODWORD(v406) = 0;
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
      v340 = [MEMORY[0x277D75418] currentDevice];
      if ([v340 userInterfaceIdiom])
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
        v326 = [MEMORY[0x277D759A0] mainScreen];
        [v326 _referenceBounds];
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
      v62 = 0;
      LODWORD(v429) = 0;
      v63 = 0;
      LODWORD(v403) = 0;
      LODWORD(v440) = 0;
      LODWORD(v439) = 0;
      LODWORD(v438) = 0;
      LODWORD(v437) = 0;
      v64 = 0;
      LODWORD(v436) = 0;
      v65 = 0;
      LODWORD(v435) = 0;
      LODWORD(v434) = 0;
      LODWORD(v433) = 0;
      v66 = 0;
      LODWORD(v432) = 0;
      LODWORD(v402) = 0;
      LODWORD(v431) = 0;
      LODWORD(v430) = 0;
      LODWORD(v405) = 0;
      LODWORD(v428) = 0;
      v67 = 0;
      LODWORD(v427) = 0;
      LODWORD(v404) = 0;
      LODWORD(v426) = 0;
      LODWORD(v425) = 0;
      LODWORD(v424) = 0;
      LODWORD(v441) = 0;
      LODWORD(v401) = 0;
      LODWORD(v443) = 0;
      LODWORD(v423) = 0;
      LODWORD(v422) = 0;
      LODWORD(v421) = 0;
      LODWORD(v442) = 0;
      LODWORD(v420) = 0;
      LODWORD(v445) = 0;
      LODWORD(v419) = 0;
      LODWORD(v418) = 0;
      LODWORD(v417) = 0;
      LODWORD(v444) = 0;
      LODWORD(v416) = 0;
      LODWORD(v447) = 0;
      LODWORD(v400) = 0;
      LODWORD(rect_24) = 0;
      LODWORD(v415) = 0;
      LODWORD(v446) = 0;
      v504 = 0;
      LODWORD(v449) = 0;
      LODWORD(v414) = 0;
      LODWORD(v413) = 0;
      v501 = 0;
      LODWORD(v448) = 0;
      LODWORD(v412) = 0;
      v451 = 0;
      v495 = 0;
      LODWORD(rect_16) = 0;
      LODWORD(v450) = 0;
      rect_12 = 0;
      v453 = 0;
      HIDWORD(v489) = 0;
      LODWORD(v411) = 0;
      HIDWORD(v485) = 0;
      LODWORD(v410) = 0;
      LODWORD(v455) = 0;
      LODWORD(v409) = 0;
      LODWORD(v408) = 0;
      LODWORD(v481) = 0;
      LODWORD(v407) = 0;
      LODWORD(v406) = 0;
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
      a7 = [MEMORY[0x277D75418] currentDevice];
      v329 = a7;
      if ([a7 userInterfaceIdiom])
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
        v312 = [MEMORY[0x277D759A0] mainScreen];
        [v312 _referenceBounds];
      }

      LODWORD(v455) = v208 ^ 1;
      BSSizeRoundForScale();
      if (v217 >= *(MEMORY[0x277D66E30] + 104))
      {
        v62 = 0;
        LODWORD(v429) = 0;
        v63 = 0;
        LODWORD(v403) = 0;
        LODWORD(v440) = 0;
        LODWORD(v439) = 0;
        LODWORD(v438) = 0;
        LODWORD(v437) = 0;
        v64 = 0;
        LODWORD(v436) = 0;
        v65 = 0;
        LODWORD(v435) = 0;
        LODWORD(v434) = 0;
        LODWORD(v433) = 0;
        v66 = 0;
        LODWORD(v432) = 0;
        LODWORD(v402) = 0;
        LODWORD(v431) = 0;
        LODWORD(v430) = 0;
        LODWORD(v405) = 0;
        LODWORD(v428) = 0;
        v67 = 0;
        LODWORD(v427) = 0;
        LODWORD(v404) = 0;
        LODWORD(v426) = 0;
        LODWORD(v425) = 0;
        LODWORD(v424) = 0;
        LODWORD(v441) = 0;
        LODWORD(v401) = 0;
        LODWORD(v443) = 0;
        LODWORD(v423) = 0;
        LODWORD(v422) = 0;
        LODWORD(v421) = 0;
        LODWORD(v442) = 0;
        LODWORD(v420) = 0;
        LODWORD(v445) = 0;
        LODWORD(v419) = 0;
        LODWORD(v418) = 0;
        LODWORD(v417) = 0;
        LODWORD(v444) = 0;
        LODWORD(v416) = 0;
        LODWORD(v447) = 0;
        LODWORD(v400) = 0;
        LODWORD(rect_24) = 0;
        LODWORD(v415) = 0;
        LODWORD(v446) = 0;
        v504 = 0;
        LODWORD(v449) = 0;
        LODWORD(v414) = 0;
        LODWORD(v413) = 0;
        v501 = 0;
        LODWORD(v448) = 0;
        LODWORD(v412) = 0;
        v451 = 0;
        v495 = 0;
        LODWORD(rect_16) = 0;
        LODWORD(v450) = 0;
        rect_12 = 0;
        LODWORD(v453) = 0;
        HIDWORD(v489) = 0;
        LODWORD(v411) = 0;
        HIDWORD(v485) = 0;
        LODWORD(v410) = 0;
        LODWORD(v409) = 0;
        LODWORD(v408) = 0;
        LODWORD(v481) = 0;
        LODWORD(v407) = 0;
        LODWORD(v406) = 0;
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
      v334 = [MEMORY[0x277D75418] currentDevice];
      if ([v334 userInterfaceIdiom])
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
        v319 = [MEMORY[0x277D759A0] mainScreen];
        [v319 _referenceBounds];
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
      v62 = 0;
      LODWORD(v429) = 0;
      v63 = 0;
      LODWORD(v403) = 0;
      LODWORD(v440) = 0;
      LODWORD(v439) = 0;
      LODWORD(v438) = 0;
      LODWORD(v437) = 0;
      v64 = 0;
      LODWORD(v436) = 0;
      v65 = 0;
      LODWORD(v435) = 0;
      LODWORD(v434) = 0;
      LODWORD(v433) = 0;
      v66 = 0;
      LODWORD(v432) = 0;
      LODWORD(v402) = 0;
      LODWORD(v431) = 0;
      LODWORD(v430) = 0;
      LODWORD(v405) = 0;
      LODWORD(v428) = 0;
      v67 = 0;
      LODWORD(v427) = 0;
      LODWORD(v404) = 0;
      LODWORD(v426) = 0;
      LODWORD(v425) = 0;
      LODWORD(v424) = 0;
      LODWORD(v441) = 0;
      LODWORD(v401) = 0;
      LODWORD(v443) = 0;
      LODWORD(v423) = 0;
      LODWORD(v422) = 0;
      LODWORD(v421) = 0;
      LODWORD(v442) = 0;
      LODWORD(v420) = 0;
      LODWORD(v445) = 0;
      LODWORD(v419) = 0;
      LODWORD(v418) = 0;
      LODWORD(v417) = 0;
      LODWORD(v444) = 0;
      LODWORD(v416) = 0;
      LODWORD(v447) = 0;
      LODWORD(v400) = 0;
      LODWORD(rect_24) = 0;
      LODWORD(v415) = 0;
      LODWORD(v446) = 0;
      v504 = 0;
      LODWORD(v449) = 0;
      LODWORD(v414) = 0;
      LODWORD(v413) = 0;
      v501 = 0;
      LODWORD(v448) = 0;
      LODWORD(v412) = 0;
      LODWORD(v451) = 0;
      v495 = 0;
      LODWORD(rect_16) = 0;
      LODWORD(v450) = 0;
      rect_12 = 0;
      HIDWORD(v489) = 0;
      LODWORD(v411) = 0;
      HIDWORD(v485) = 0;
      LODWORD(v410) = 0;
      LODWORD(v409) = 0;
      LODWORD(v408) = 0;
      LODWORD(v481) = 0;
      LODWORD(v407) = 0;
      LODWORD(v406) = 0;
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
      LODWORD(v450) = 0;
      goto LABEL_1238;
    }

    v212 = MidX;
    v213 = __sb__runningInSpringBoard();
    if (v213)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        LODWORD(v451) = 0;
        LODWORD(v450) = 0;
LABEL_1237:
        v34 = v26;
        v33 = v511;
LABEL_1238:
        v233 = __sb__runningInSpringBoard();
        if (v233)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v449) = 0;
            LODWORD(v448) = 0;
            goto LABEL_1248;
          }
        }

        else
        {
          a7 = [MEMORY[0x277D75418] currentDevice];
          v328 = a7;
          if ([a7 userInterfaceIdiom])
          {
            LODWORD(v449) = 0;
            LODWORD(v448) = 1;
            goto LABEL_1248;
          }
        }

        LODWORD(v448) = v233 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v234 = __sb__runningInSpringBoard();
          if (v234)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v311 = [MEMORY[0x277D759A0] mainScreen];
            [v311 _referenceBounds];
          }

          LODWORD(v449) = v234 ^ 1;
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
          LODWORD(v449) = 0;
        }

LABEL_1248:
        if (_SBF_Private_IsD23Like())
        {
          v62 = 0;
          LODWORD(v429) = 0;
          v63 = 0;
          LODWORD(v403) = 0;
          LODWORD(v440) = 0;
          LODWORD(v439) = 0;
          LODWORD(v438) = 0;
          LODWORD(v437) = 0;
          v64 = 0;
          LODWORD(v436) = 0;
          v65 = 0;
          LODWORD(v435) = 0;
          LODWORD(v434) = 0;
          LODWORD(v433) = 0;
          v66 = 0;
          LODWORD(v432) = 0;
          LODWORD(v402) = 0;
          LODWORD(v431) = 0;
          LODWORD(v430) = 0;
          LODWORD(v405) = 0;
          LODWORD(v428) = 0;
          v67 = 0;
          LODWORD(v427) = 0;
          LODWORD(v404) = 0;
          LODWORD(v426) = 0;
          LODWORD(v425) = 0;
          LODWORD(v424) = 0;
          LODWORD(v441) = 0;
          LODWORD(v401) = 0;
          LODWORD(v443) = 0;
          LODWORD(v423) = 0;
          LODWORD(v422) = 0;
          LODWORD(v421) = 0;
          LODWORD(v442) = 0;
          LODWORD(v420) = 0;
          LODWORD(v445) = 0;
          LODWORD(v419) = 0;
          LODWORD(v418) = 0;
          LODWORD(v417) = 0;
          LODWORD(v444) = 0;
          LODWORD(v416) = 0;
          LODWORD(v447) = 0;
          LODWORD(v400) = 0;
          LODWORD(rect_24) = 0;
          LODWORD(v415) = 0;
          LODWORD(v446) = 0;
          v504 = 0;
          LODWORD(v414) = 0;
          LODWORD(v413) = 0;
          v501 = 0;
          LODWORD(v412) = 0;
          v495 = 0;
          LODWORD(rect_16) = 0;
          rect_12 = 0;
          HIDWORD(v489) = 0;
          LODWORD(v411) = 0;
          HIDWORD(v485) = 0;
          LODWORD(v410) = 0;
          LODWORD(v409) = 0;
          LODWORD(v408) = 0;
          LODWORD(v481) = 0;
          LODWORD(v407) = 0;
          LODWORD(v406) = 0;
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
            LODWORD(v447) = 0;
            LODWORD(v446) = 0;
            goto LABEL_1262;
          }
        }

        else
        {
          v325 = [MEMORY[0x277D75418] currentDevice];
          if ([v325 userInterfaceIdiom])
          {
            LODWORD(v447) = 0;
            LODWORD(v446) = 1;
            goto LABEL_1262;
          }
        }

        LODWORD(v446) = v236 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v237 = __sb__runningInSpringBoard();
          if (v237)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v307 = [MEMORY[0x277D759A0] mainScreen];
            [v307 _referenceBounds];
          }

          LODWORD(v447) = v237 ^ 1;
          BSSizeRoundForScale();
          if (v240 >= *(MEMORY[0x277D66E30] + 120))
          {
            v62 = 0;
            LODWORD(v429) = 0;
            v63 = 0;
            LODWORD(v403) = 0;
            LODWORD(v440) = 0;
            LODWORD(v439) = 0;
            LODWORD(v438) = 0;
            LODWORD(v437) = 0;
            v64 = 0;
            LODWORD(v436) = 0;
            v65 = 0;
            LODWORD(v435) = 0;
            LODWORD(v434) = 0;
            LODWORD(v433) = 0;
            v66 = 0;
            LODWORD(v432) = 0;
            LODWORD(v402) = 0;
            LODWORD(v431) = 0;
            LODWORD(v430) = 0;
            LODWORD(v405) = 0;
            LODWORD(v428) = 0;
            v67 = 0;
            LODWORD(v427) = 0;
            LODWORD(v404) = 0;
            LODWORD(v426) = 0;
            LODWORD(v425) = 0;
            LODWORD(v424) = 0;
            LODWORD(v441) = 0;
            LODWORD(v401) = 0;
            LODWORD(v443) = 0;
            LODWORD(v423) = 0;
            LODWORD(v422) = 0;
            LODWORD(v421) = 0;
            LODWORD(v442) = 0;
            LODWORD(v420) = 0;
            LODWORD(v445) = 0;
            LODWORD(v419) = 0;
            LODWORD(v418) = 0;
            LODWORD(v417) = 0;
            LODWORD(v444) = 0;
            LODWORD(v416) = 0;
            LODWORD(v400) = 0;
            LODWORD(rect_24) = 0;
            LODWORD(v415) = 0;
            v504 = 0;
            LODWORD(v414) = 0;
            LODWORD(v413) = 0;
            v501 = 0;
            LODWORD(v412) = 0;
            v495 = 0;
            LODWORD(rect_16) = 0;
            rect_12 = 0;
            HIDWORD(v489) = 0;
            LODWORD(v411) = 0;
            HIDWORD(v485) = 0;
            LODWORD(v410) = 0;
            LODWORD(v409) = 0;
            LODWORD(v408) = 0;
            LODWORD(v481) = 0;
            LODWORD(v407) = 0;
            LODWORD(v406) = 0;
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
          LODWORD(v447) = 0;
        }

LABEL_1262:
        v238 = __sb__runningInSpringBoard();
        if (v238)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v445) = 0;
            LODWORD(v444) = 0;
            goto LABEL_1272;
          }
        }

        else
        {
          v317 = [MEMORY[0x277D75418] currentDevice];
          if ([v317 userInterfaceIdiom])
          {
            LODWORD(v445) = 0;
            LODWORD(v444) = 1;
            goto LABEL_1272;
          }
        }

        LODWORD(v444) = v238 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v239 = __sb__runningInSpringBoard();
          if (v239)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v303 = [MEMORY[0x277D759A0] mainScreen];
            [v303 _referenceBounds];
          }

          LODWORD(v445) = v239 ^ 1;
          BSSizeRoundForScale();
          if (v243 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_1289;
          }
        }

        else
        {
          LODWORD(v445) = 0;
        }

LABEL_1272:
        if (_SBF_Private_IsD33OrSimilarDevice())
        {
          v62 = 0;
          LODWORD(v429) = 0;
          v63 = 0;
          LODWORD(v403) = 0;
          LODWORD(v440) = 0;
          LODWORD(v439) = 0;
          LODWORD(v438) = 0;
          LODWORD(v437) = 0;
          v64 = 0;
          LODWORD(v436) = 0;
          v65 = 0;
          LODWORD(v435) = 0;
          LODWORD(v434) = 0;
          LODWORD(v433) = 0;
          v66 = 0;
          LODWORD(v432) = 0;
          LODWORD(v402) = 0;
          LODWORD(v431) = 0;
          LODWORD(v430) = 0;
          LODWORD(v405) = 0;
          LODWORD(v428) = 0;
          v67 = 0;
          LODWORD(v427) = 0;
          LODWORD(v404) = 0;
          LODWORD(v426) = 0;
          LODWORD(v425) = 0;
          LODWORD(v424) = 0;
          LODWORD(v441) = 0;
          LODWORD(v401) = 0;
          LODWORD(v443) = 0;
          LODWORD(v423) = 0;
          LODWORD(v422) = 0;
          LODWORD(v421) = 0;
          LODWORD(v442) = 0;
          LODWORD(v420) = 0;
          LODWORD(v419) = 0;
          LODWORD(v418) = 0;
          LODWORD(v417) = 0;
          LODWORD(v416) = 0;
          LODWORD(v400) = 0;
          LODWORD(rect_24) = 0;
          LODWORD(v415) = 0;
          v504 = 0;
          LODWORD(v414) = 0;
          LODWORD(v413) = 0;
          v501 = 0;
          LODWORD(v412) = 0;
          v495 = 0;
          LODWORD(rect_16) = 0;
          rect_12 = 0;
          HIDWORD(v489) = 0;
          LODWORD(v411) = 0;
          HIDWORD(v485) = 0;
          LODWORD(v410) = 0;
          LODWORD(v409) = 0;
          LODWORD(v408) = 0;
          LODWORD(v481) = 0;
          LODWORD(v407) = 0;
          LODWORD(v406) = 0;
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
            LODWORD(v443) = 0;
            LODWORD(v442) = 0;
            goto LABEL_1320;
          }
        }

        else
        {
          v315 = [MEMORY[0x277D75418] currentDevice];
          if ([v315 userInterfaceIdiom])
          {
            LODWORD(v443) = 0;
            LODWORD(v442) = 1;
            goto LABEL_1320;
          }
        }

        LODWORD(v442) = v244 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v248 = __sb__runningInSpringBoard();
          if (v248)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v301 = [MEMORY[0x277D759A0] mainScreen];
            [v301 _referenceBounds];
          }

          LODWORD(v443) = v248 ^ 1;
          BSSizeRoundForScale();
          if (v254 >= *(MEMORY[0x277D66E30] + 104))
          {
            v62 = 0;
            LODWORD(v429) = 0;
            v63 = 0;
            LODWORD(v403) = 0;
            LODWORD(v440) = 0;
            LODWORD(v439) = 0;
            LODWORD(v438) = 0;
            LODWORD(v437) = 0;
            v64 = 0;
            LODWORD(v436) = 0;
            v65 = 0;
            LODWORD(v435) = 0;
            LODWORD(v434) = 0;
            LODWORD(v433) = 0;
            v66 = 0;
            LODWORD(v432) = 0;
            LODWORD(v402) = 0;
            LODWORD(v431) = 0;
            LODWORD(v430) = 0;
            LODWORD(v405) = 0;
            LODWORD(v428) = 0;
            v67 = 0;
            LODWORD(v427) = 0;
            LODWORD(v404) = 0;
            LODWORD(v426) = 0;
            LODWORD(v425) = 0;
            LODWORD(v424) = 0;
            LODWORD(v441) = 0;
            LODWORD(v401) = 0;
            LODWORD(v423) = 0;
            LODWORD(v422) = 0;
            LODWORD(v421) = 0;
            LODWORD(v420) = 0;
            LODWORD(v419) = 0;
            LODWORD(v418) = 0;
            LODWORD(v417) = 0;
            LODWORD(v416) = 0;
            LODWORD(v400) = 0;
            LODWORD(rect_24) = 0;
            LODWORD(v415) = 0;
            v504 = 0;
            LODWORD(v414) = 0;
            LODWORD(v413) = 0;
            v501 = 0;
            LODWORD(v412) = 0;
            v495 = 0;
            LODWORD(rect_16) = 0;
            rect_12 = 0;
            HIDWORD(v489) = 0;
            LODWORD(v411) = 0;
            HIDWORD(v485) = 0;
            LODWORD(v410) = 0;
            LODWORD(v409) = 0;
            LODWORD(v408) = 0;
            LODWORD(v481) = 0;
            LODWORD(v407) = 0;
            LODWORD(v406) = 0;
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
          LODWORD(v443) = 0;
        }

LABEL_1320:
        v249 = __sb__runningInSpringBoard();
        if (v249)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v404) = 0;
            LODWORD(v441) = 0;
            goto LABEL_1336;
          }
        }

        else
        {
          v309 = [MEMORY[0x277D75418] currentDevice];
          if ([v309 userInterfaceIdiom])
          {
            LODWORD(v404) = 0;
            LODWORD(v441) = 1;
            goto LABEL_1336;
          }
        }

        LODWORD(v441) = v249 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v251 = __sb__runningInSpringBoard();
          if (v251)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v299 = [MEMORY[0x277D759A0] mainScreen];
            [v299 _referenceBounds];
          }

          LODWORD(v404) = v251 ^ 1;
          BSSizeRoundForScale();
          if (v256 >= *(MEMORY[0x277D66E30] + 104))
          {
            goto LABEL_1361;
          }
        }

        else
        {
          LODWORD(v404) = 0;
        }

LABEL_1336:
        if (_SBF_Private_IsD53())
        {
LABEL_1365:
          v62 = 0;
          LODWORD(v429) = 0;
          v63 = 0;
          LODWORD(v403) = 0;
          LODWORD(v440) = 0;
          LODWORD(v439) = 0;
          LODWORD(v438) = 0;
          LODWORD(v437) = 0;
          v64 = 0;
          LODWORD(v436) = 0;
          v65 = 0;
          LODWORD(v435) = 0;
          LODWORD(v434) = 0;
          LODWORD(v433) = 0;
          v66 = 0;
          LODWORD(v432) = 0;
          LODWORD(v402) = 0;
          LODWORD(v431) = 0;
          LODWORD(v430) = 0;
          LODWORD(v405) = 0;
          LODWORD(v428) = 0;
          v67 = 0;
          LODWORD(v427) = 0;
          LODWORD(v426) = 0;
          LODWORD(v425) = 0;
          LODWORD(v424) = 0;
          LODWORD(v401) = 0;
          LODWORD(v423) = 0;
          LODWORD(v422) = 0;
          LODWORD(v421) = 0;
          LODWORD(v420) = 0;
          LODWORD(v419) = 0;
          LODWORD(v418) = 0;
          LODWORD(v417) = 0;
          LODWORD(v416) = 0;
          LODWORD(v400) = 0;
          LODWORD(rect_24) = 0;
          LODWORD(v415) = 0;
          v504 = 0;
          LODWORD(v414) = 0;
          LODWORD(v413) = 0;
          v501 = 0;
          LODWORD(v412) = 0;
          v495 = 0;
          LODWORD(rect_16) = 0;
          rect_12 = 0;
          HIDWORD(v489) = 0;
          LODWORD(v411) = 0;
          HIDWORD(v485) = 0;
          LODWORD(v410) = 0;
          LODWORD(v409) = 0;
          LODWORD(v408) = 0;
          LODWORD(v481) = 0;
          LODWORD(v407) = 0;
          LODWORD(v406) = 0;
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
          v62 = 0;
          LODWORD(v429) = 0;
          v63 = 0;
          LODWORD(v403) = 0;
          LODWORD(v440) = 0;
          LODWORD(v439) = 0;
          LODWORD(v438) = 0;
          LODWORD(v437) = 0;
          v64 = 0;
          LODWORD(v436) = 0;
          v65 = 0;
          LODWORD(v435) = 0;
          LODWORD(v434) = 0;
          LODWORD(v433) = 0;
          v66 = 0;
          LODWORD(v432) = 0;
          LODWORD(v402) = 0;
          LODWORD(v431) = 0;
          LODWORD(v430) = 0;
          LODWORD(v405) = 0;
          LODWORD(v428) = 0;
          v67 = 0;
          LODWORD(v427) = 0;
          LODWORD(v426) = 0;
          LODWORD(v425) = 0;
          LODWORD(v424) = 0;
          LODWORD(v401) = 0;
          LODWORD(v423) = 0;
          LODWORD(v422) = 0;
          LODWORD(v421) = 0;
          LODWORD(v420) = 0;
          LODWORD(v419) = 0;
          LODWORD(v418) = 0;
          LODWORD(v417) = 0;
          LODWORD(v416) = 0;
          LODWORD(v400) = 0;
          LODWORD(rect_24) = 0;
          LODWORD(v415) = 0;
          v504 = 0;
          LODWORD(v414) = 0;
          LODWORD(v413) = 0;
          v501 = 0;
          LODWORD(v412) = 0;
          v495 = 0;
          LODWORD(rect_16) = 0;
          rect_12 = 0;
          HIDWORD(v489) = 0;
          LODWORD(v411) = 0;
          HIDWORD(v485) = 0;
          LODWORD(v410) = 0;
          LODWORD(v409) = 0;
          LODWORD(v408) = 0;
          LODWORD(v481) = 0;
          LODWORD(v407) = 0;
          LODWORD(v406) = 0;
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
            LODWORD(v402) = 0;
            v67 = 0;
            goto LABEL_1438;
          }
        }

        else
        {
          v297 = [MEMORY[0x277D75418] currentDevice];
          if ([v297 userInterfaceIdiom])
          {
            LODWORD(v402) = 0;
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
            v287 = [MEMORY[0x277D759A0] mainScreen];
            [v287 _referenceBounds];
          }

          LODWORD(v402) = v267 ^ 1;
          BSSizeRoundForScale();
          if (v278 >= *(MEMORY[0x277D66E30] + 88))
          {
            v62 = 0;
            LODWORD(v429) = 0;
            v63 = 0;
            LODWORD(v403) = 0;
            LODWORD(v440) = 0;
            LODWORD(v439) = 0;
            LODWORD(v438) = 0;
            LODWORD(v437) = 0;
            v64 = 0;
            LODWORD(v436) = 0;
            v65 = 0;
            LODWORD(v435) = 0;
            LODWORD(v434) = 0;
            LODWORD(v433) = 0;
            v66 = 0;
            LODWORD(v432) = 0;
            LODWORD(v431) = 0;
            LODWORD(v430) = 0;
            LODWORD(v405) = 0;
            LODWORD(v428) = 0;
            LODWORD(v427) = 0;
            LODWORD(v426) = 0;
            LODWORD(v425) = 0;
            LODWORD(v424) = 0;
            LODWORD(v401) = 0;
            LODWORD(v423) = 0;
            LODWORD(v422) = 0;
            LODWORD(v421) = 0;
            LODWORD(v420) = 0;
            LODWORD(v419) = 0;
            LODWORD(v418) = 0;
            LODWORD(v417) = 0;
            LODWORD(v416) = 0;
            LODWORD(v400) = 0;
            LODWORD(rect_24) = 0;
            LODWORD(v415) = 0;
            v504 = 0;
            LODWORD(v414) = 0;
            LODWORD(v413) = 0;
            v501 = 0;
            LODWORD(v412) = 0;
            v495 = 0;
            LODWORD(rect_16) = 0;
            rect_12 = 0;
            HIDWORD(v489) = 0;
            LODWORD(v411) = 0;
            HIDWORD(v485) = 0;
            LODWORD(v410) = 0;
            LODWORD(v409) = 0;
            LODWORD(v408) = 0;
            LODWORD(v481) = 0;
            LODWORD(v407) = 0;
            LODWORD(v406) = 0;
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
          LODWORD(v402) = 0;
        }

LABEL_1438:
        v268 = __sb__runningInSpringBoard();
        if (v268)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v65 = 0;
            v66 = 0;
            goto LABEL_1458;
          }
        }

        else
        {
          v295 = [MEMORY[0x277D75418] currentDevice];
          if ([v295 userInterfaceIdiom])
          {
            v65 = 0;
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
            v285 = [MEMORY[0x277D759A0] mainScreen];
            [v285 _referenceBounds];
          }

          v65 = v271 ^ 1u;
          BSSizeRoundForScale();
          if (v280 >= *(MEMORY[0x277D66E30] + 72))
          {
            v62 = 0;
            LODWORD(v429) = 0;
            v63 = 0;
            LODWORD(v403) = 0;
            LODWORD(v440) = 0;
            LODWORD(v439) = 0;
            LODWORD(v438) = 0;
            LODWORD(v437) = 0;
            v64 = 0;
            LODWORD(v436) = 0;
            LODWORD(v435) = 0;
            LODWORD(v434) = 0;
            LODWORD(v433) = 0;
            LODWORD(v432) = 0;
            LODWORD(v431) = 0;
            LODWORD(v430) = 0;
            LODWORD(v405) = 0;
            LODWORD(v428) = 0;
            LODWORD(v427) = 0;
            LODWORD(v426) = 0;
            LODWORD(v425) = 0;
            LODWORD(v424) = 0;
            LODWORD(v401) = 0;
            LODWORD(v423) = 0;
            LODWORD(v422) = 0;
            LODWORD(v421) = 0;
            LODWORD(v420) = 0;
            LODWORD(v419) = 0;
            LODWORD(v418) = 0;
            LODWORD(v417) = 0;
            LODWORD(v416) = 0;
            LODWORD(v400) = 0;
            LODWORD(rect_24) = 0;
            LODWORD(v415) = 0;
            v504 = 0;
            LODWORD(v414) = 0;
            LODWORD(v413) = 0;
            v501 = 0;
            LODWORD(v412) = 0;
            v495 = 0;
            LODWORD(rect_16) = 0;
            rect_12 = 0;
            HIDWORD(v489) = 0;
            LODWORD(v411) = 0;
            HIDWORD(v485) = 0;
            LODWORD(v410) = 0;
            LODWORD(v409) = 0;
            LODWORD(v408) = 0;
            LODWORD(v481) = 0;
            LODWORD(v407) = 0;
            LODWORD(v406) = 0;
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
          v65 = 0;
        }

LABEL_1458:
        v272 = __sb__runningInSpringBoard();
        if (v272)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v403) = 0;
            v64 = 0;
            goto LABEL_1478;
          }
        }

        else
        {
          v293 = [MEMORY[0x277D75418] currentDevice];
          if ([v293 userInterfaceIdiom])
          {
            LODWORD(v403) = 0;
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
          v290 = [MEMORY[0x277D759A0] mainScreen];
          [v290 _referenceBounds];
        }

        LODWORD(v403) = v274 ^ 1;
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
            v62 = 0;
            LODWORD(v429) = 0;
            v63 = 0;
            LODWORD(v440) = 0;
            LODWORD(v439) = 0;
            LODWORD(v438) = 0;
            LODWORD(v437) = 0;
            LODWORD(v436) = 0;
            LODWORD(v435) = 0;
            LODWORD(v434) = 0;
            LODWORD(v433) = 0;
            LODWORD(v432) = 0;
            LODWORD(v431) = 0;
            LODWORD(v430) = 0;
            LODWORD(v405) = 0;
            LODWORD(v428) = 0;
            LODWORD(v427) = 0;
            LODWORD(v426) = 0;
            LODWORD(v425) = 0;
            LODWORD(v424) = 0;
            LODWORD(v401) = 0;
            LODWORD(v423) = 0;
            LODWORD(v422) = 0;
            LODWORD(v421) = 0;
            LODWORD(v420) = 0;
            LODWORD(v419) = 0;
            LODWORD(v418) = 0;
            LODWORD(v417) = 0;
            LODWORD(v416) = 0;
            LODWORD(v400) = 0;
            LODWORD(rect_24) = 0;
            LODWORD(v415) = 0;
            v504 = 0;
            LODWORD(v414) = 0;
            LODWORD(v413) = 0;
            v501 = 0;
            LODWORD(v412) = 0;
            v495 = 0;
            LODWORD(rect_16) = 0;
            rect_12 = 0;
            HIDWORD(v489) = 0;
            LODWORD(v411) = 0;
            HIDWORD(v485) = 0;
            LODWORD(v410) = 0;
            LODWORD(v409) = 0;
            LODWORD(v408) = 0;
            LODWORD(v481) = 0;
            LODWORD(v407) = 0;
            LODWORD(v406) = 0;
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
          v291 = [MEMORY[0x277D75418] currentDevice];
          if ([v291 userInterfaceIdiom])
          {
            v62 = 0;
            LODWORD(v429) = 0;
            LODWORD(v440) = 0;
            LODWORD(v439) = 0;
            LODWORD(v438) = 0;
            LODWORD(v437) = 0;
            LODWORD(v436) = 0;
            LODWORD(v435) = 0;
            LODWORD(v434) = 0;
            LODWORD(v433) = 0;
            LODWORD(v432) = 0;
            LODWORD(v431) = 0;
            LODWORD(v430) = 0;
            LODWORD(v405) = 0;
            LODWORD(v428) = 0;
            LODWORD(v427) = 0;
            LODWORD(v426) = 0;
            LODWORD(v425) = 0;
            LODWORD(v424) = 0;
            LODWORD(v401) = 0;
            LODWORD(v423) = 0;
            LODWORD(v422) = 0;
            LODWORD(v421) = 0;
            LODWORD(v420) = 0;
            LODWORD(v419) = 0;
            LODWORD(v418) = 0;
            LODWORD(v417) = 0;
            LODWORD(v416) = 0;
            LODWORD(v400) = 0;
            LODWORD(rect_24) = 0;
            LODWORD(v415) = 0;
            v504 = 0;
            LODWORD(v414) = 0;
            LODWORD(v413) = 0;
            v501 = 0;
            LODWORD(v412) = 0;
            v495 = 0;
            LODWORD(rect_16) = 0;
            rect_12 = 0;
            HIDWORD(v489) = 0;
            LODWORD(v411) = 0;
            HIDWORD(v485) = 0;
            LODWORD(v410) = 0;
            LODWORD(v409) = 0;
            LODWORD(v408) = 0;
            LODWORD(v481) = 0;
            LODWORD(v407) = 0;
            LODWORD(v406) = 0;
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
          v288 = [MEMORY[0x277D759A0] mainScreen];
          [v288 _referenceBounds];
        }

        v62 = v283 ^ 1u;
        BSSizeRoundForScale();
        LODWORD(v429) = 0;
        LODWORD(v440) = 0;
        LODWORD(v439) = 0;
        LODWORD(v438) = 0;
        LODWORD(v437) = 0;
        LODWORD(v436) = 0;
        LODWORD(v435) = 0;
        LODWORD(v434) = 0;
        LODWORD(v433) = 0;
        LODWORD(v432) = 0;
        LODWORD(v431) = 0;
        LODWORD(v430) = 0;
        LODWORD(v405) = 0;
        LODWORD(v428) = 0;
        LODWORD(v427) = 0;
        LODWORD(v426) = 0;
        LODWORD(v425) = 0;
        LODWORD(v424) = 0;
        LODWORD(v401) = 0;
        LODWORD(v423) = 0;
        LODWORD(v422) = 0;
        LODWORD(v421) = 0;
        LODWORD(v420) = 0;
        LODWORD(v419) = 0;
        LODWORD(v418) = 0;
        LODWORD(v417) = 0;
        LODWORD(v416) = 0;
        LODWORD(v400) = 0;
        LODWORD(rect_24) = 0;
        LODWORD(v415) = 0;
        v504 = 0;
        LODWORD(v414) = 0;
        LODWORD(v413) = 0;
        v501 = 0;
        LODWORD(v412) = 0;
        v495 = 0;
        LODWORD(rect_16) = 0;
        rect_12 = 0;
        HIDWORD(v489) = 0;
        LODWORD(v411) = 0;
        HIDWORD(v485) = 0;
        LODWORD(v410) = 0;
        LODWORD(v409) = 0;
        LODWORD(v408) = 0;
        LODWORD(v481) = 0;
        LODWORD(v407) = 0;
        LODWORD(v406) = 0;
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
      v323 = [MEMORY[0x277D75418] currentDevice];
      if ([v323 userInterfaceIdiom])
      {
        LODWORD(v451) = 0;
        LODWORD(v450) = 1;
        goto LABEL_1238;
      }
    }

    LODWORD(v450) = v213 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v221 = __sb__runningInSpringBoard();
      if (v221)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v305 = [MEMORY[0x277D759A0] mainScreen];
        [v305 _referenceBounds];
      }

      LODWORD(v451) = v221 ^ 1;
      BSSizeRoundForScale();
      if (v232 >= *(MEMORY[0x277D66E30] + 216))
      {
        v62 = 0;
        LODWORD(v429) = 0;
        v63 = 0;
        LODWORD(v403) = 0;
        LODWORD(v440) = 0;
        LODWORD(v439) = 0;
        LODWORD(v438) = 0;
        LODWORD(v437) = 0;
        v64 = 0;
        LODWORD(v436) = 0;
        v65 = 0;
        LODWORD(v435) = 0;
        LODWORD(v434) = 0;
        LODWORD(v433) = 0;
        v66 = 0;
        LODWORD(v432) = 0;
        LODWORD(v402) = 0;
        LODWORD(v431) = 0;
        LODWORD(v430) = 0;
        LODWORD(v405) = 0;
        LODWORD(v428) = 0;
        v67 = 0;
        LODWORD(v427) = 0;
        LODWORD(v404) = 0;
        LODWORD(v426) = 0;
        LODWORD(v425) = 0;
        LODWORD(v424) = 0;
        LODWORD(v441) = 0;
        LODWORD(v401) = 0;
        LODWORD(v443) = 0;
        LODWORD(v423) = 0;
        LODWORD(v422) = 0;
        LODWORD(v421) = 0;
        LODWORD(v442) = 0;
        LODWORD(v420) = 0;
        LODWORD(v445) = 0;
        LODWORD(v419) = 0;
        LODWORD(v418) = 0;
        LODWORD(v417) = 0;
        LODWORD(v444) = 0;
        LODWORD(v416) = 0;
        LODWORD(v447) = 0;
        LODWORD(v400) = 0;
        LODWORD(rect_24) = 0;
        LODWORD(v415) = 0;
        LODWORD(v446) = 0;
        v504 = 0;
        LODWORD(v449) = 0;
        LODWORD(v414) = 0;
        LODWORD(v413) = 0;
        v501 = 0;
        LODWORD(v448) = 0;
        LODWORD(v412) = 0;
        v495 = 0;
        LODWORD(rect_16) = 0;
        rect_12 = 0;
        HIDWORD(v489) = 0;
        LODWORD(v411) = 0;
        HIDWORD(v485) = 0;
        LODWORD(v410) = 0;
        LODWORD(v409) = 0;
        LODWORD(v408) = 0;
        LODWORD(v481) = 0;
        LODWORD(v407) = 0;
        LODWORD(v406) = 0;
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

  v62 = 0;
  LODWORD(v429) = 0;
  v63 = 0;
  LODWORD(v403) = 0;
  LODWORD(v440) = 0;
  LODWORD(v439) = 0;
  LODWORD(v438) = 0;
  LODWORD(v437) = 0;
  v64 = 0;
  LODWORD(v436) = 0;
  v65 = 0;
  LODWORD(v435) = 0;
  LODWORD(v434) = 0;
  LODWORD(v433) = 0;
  v66 = 0;
  LODWORD(v432) = 0;
  LODWORD(v402) = 0;
  LODWORD(v431) = 0;
  LODWORD(v430) = 0;
  LODWORD(v405) = 0;
  LODWORD(v428) = 0;
  v67 = 0;
  LODWORD(v427) = 0;
  LODWORD(v404) = 0;
  LODWORD(v426) = 0;
  LODWORD(v425) = 0;
  LODWORD(v424) = 0;
  LODWORD(v441) = 0;
  LODWORD(v401) = 0;
  LODWORD(v443) = 0;
  LODWORD(v423) = 0;
  LODWORD(v422) = 0;
  LODWORD(v421) = 0;
  LODWORD(v442) = 0;
  LODWORD(v420) = 0;
  LODWORD(v445) = 0;
  LODWORD(v419) = 0;
  LODWORD(v418) = 0;
  LODWORD(v417) = 0;
  LODWORD(v444) = 0;
  LODWORD(v416) = 0;
  LODWORD(v447) = 0;
  LODWORD(v400) = 0;
  LODWORD(rect_24) = 0;
  LODWORD(v415) = 0;
  LODWORD(v446) = 0;
  v504 = 0;
  LODWORD(v449) = 0;
  LODWORD(v414) = 0;
  LODWORD(v413) = 0;
  v501 = 0;
  LODWORD(v448) = 0;
  LODWORD(v412) = 0;
  v451 = 0;
  v495 = 0;
  LODWORD(rect_16) = 0;
  LODWORD(v450) = 0;
  rect_12 = 0;
  v453 = 0;
  HIDWORD(v489) = 0;
  LODWORD(v411) = 0;
  HIDWORD(v485) = 0;
  LODWORD(v410) = 0;
  v455 = 0;
  LODWORD(v409) = 0;
  LODWORD(v408) = 0;
  LODWORD(v481) = 0;
  LODWORD(v407) = 0;
  v457 = 0;
  LODWORD(v406) = 0;
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

  if (v406)
  {
  }

  if (v407)
  {
  }

  if (v481)
  {
  }

  if (v408)
  {
  }

  if (v409)
  {
  }

  if (v410)
  {
  }

  if (HIDWORD(v485))
  {
  }

  if (v411)
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

  if (v412)
  {
  }

  if (v501)
  {
  }

  if (v413)
  {
  }

  if (v414)
  {
  }

  if (v504)
  {
  }

  if (v415)
  {
  }

  if (rect_24)
  {
  }

  if (v400)
  {
  }

  if (v416)
  {
  }

  if (v417)
  {
  }

  if (v418)
  {
  }

  if (v419)
  {
  }

  if (v420)
  {
  }

  if (v421)
  {
  }

  if (v422)
  {
  }

  if (v423)
  {
  }

  if (v401)
  {
  }

  if (v424)
  {
  }

  if (v425)
  {
  }

  if (v426)
  {
  }

  if (v427)
  {

    if (!v428)
    {
      goto LABEL_219;
    }
  }

  else if (!v428)
  {
LABEL_219:
    if (!v405)
    {
      goto LABEL_221;
    }

    goto LABEL_220;
  }

  if (v405)
  {
LABEL_220:
  }

LABEL_221:
  if (v430)
  {
  }

  if (v431)
  {
  }

  if (v432)
  {
  }

  if (v433)
  {
  }

  if (v434)
  {
  }

  if (v435)
  {
  }

  if (v436)
  {
  }

  if (v437)
  {
  }

  if (v438)
  {
  }

  if (v439)
  {
  }

  if (v440)
  {
  }

  if (v429)
  {

    if (!v62)
    {
      goto LABEL_245;
    }
  }

  else if (!v62)
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
  if (v403)
  {

    if (!v64)
    {
      goto LABEL_249;
    }
  }

  else if (!v64)
  {
LABEL_249:
    if (v65)
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

  if (!v65)
  {
    goto LABEL_260;
  }

LABEL_250:

  if (v66)
  {
LABEL_261:
  }

LABEL_262:
  if (v402)
  {
  }

  if (v67)
  {
  }

  if (v404)
  {
  }

  if (v441)
  {
  }

  if (v443)
  {
  }

  if (v442)
  {
  }

  if (v445)
  {
  }

  if (v444)
  {
  }

  if (v447)
  {
  }

  if (v446)
  {
  }

  if (v449)
  {
  }

  if (v448)
  {
  }

  if (v451)
  {
  }

  if (v450)
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
    v450 = [MEMORY[0x277D75418] currentDevice];
    if ([v450 userInterfaceIdiom] != 1)
    {
      v503 = 0x100000000;
      goto LABEL_374;
    }
  }

  HIDWORD(v503) = v83 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v441 = [MEMORY[0x277D759A0] mainScreen];
      [v441 _referenceBounds];
    }

    LODWORD(v503) = v84 ^ 1;
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
    v449 = [MEMORY[0x277D75418] currentDevice];
    if ([v449 userInterfaceIdiom] != 1)
    {
      v500 = 0x100000000;
      goto LABEL_383;
    }
  }

  HIDWORD(v500) = v85 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v440 = [MEMORY[0x277D759A0] mainScreen];
      [v440 _referenceBounds];
    }

    LODWORD(v500) = v84 ^ 1;
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
    v448 = [MEMORY[0x277D75418] currentDevice];
    if ([v448 userInterfaceIdiom] != 1)
    {
      v498 = 0x100000000;
      goto LABEL_392;
    }
  }

  HIDWORD(v498) = v86 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v439 = [MEMORY[0x277D759A0] mainScreen];
      [v439 _referenceBounds];
    }

    LODWORD(v498) = v84 ^ 1;
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
    v447 = [MEMORY[0x277D75418] currentDevice];
    if ([v447 userInterfaceIdiom] != 1)
    {
      v496 = 0x100000000;
      goto LABEL_401;
    }
  }

  HIDWORD(v496) = v87 ^ 1;
  v84 = __sb__runningInSpringBoard();
  if (v84)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v444 = [MEMORY[0x277D759A0] mainScreen];
    [v444 _referenceBounds];
  }

  LODWORD(v496) = v84 ^ 1;
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
    v446 = [MEMORY[0x277D75418] currentDevice];
    if ([v446 userInterfaceIdiom] != 1)
    {
      v494 = 0x100000000;
      goto LABEL_411;
    }
  }

  HIDWORD(v494) = v89 ^ 1;
  v84 = __sb__runningInSpringBoard();
  if (v84)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v442 = [MEMORY[0x277D759A0] mainScreen];
    [v442 _referenceBounds];
  }

  LODWORD(v494) = v84 ^ 1;
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
    v445 = [MEMORY[0x277D75418] currentDevice];
    if ([v445 userInterfaceIdiom] != 1)
    {
      v492 = 0x100000000;
      goto LABEL_556;
    }
  }

  HIDWORD(v492) = v97 ^ 1;
  v84 = __sb__runningInSpringBoard();
  if (v84)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v438 = [MEMORY[0x277D759A0] mainScreen];
    [v438 _referenceBounds];
  }

  LODWORD(v492) = v84 ^ 1;
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
  v84 = __sb__runningInSpringBoard();
  if (v84)
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
    HIDWORD(v490) = v84 ^ 1;
    goto LABEL_428;
  }

  v443 = [MEMORY[0x277D75418] currentDevice];
  if ([v443 userInterfaceIdiom] == 1)
  {
    goto LABEL_564;
  }

LABEL_558:
  HIDWORD(v490) = v84 ^ 1;
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
    v436 = [MEMORY[0x277D75418] currentDevice];
    if ([v436 userInterfaceIdiom])
    {
      HIDWORD(v488) = 0;
      LODWORD(v490) = 1;
      goto LABEL_605;
    }
  }

  LODWORD(v490) = v107 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v429 = [MEMORY[0x277D759A0] mainScreen];
      [v429 _referenceBounds];
    }

    BSSizeRoundForScale();
    HIDWORD(v488) = v84 ^ 1;
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
  v84 = __sb__runningInSpringBoard();
  if (v84)
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
    v437 = [MEMORY[0x277D75418] currentDevice];
    if ([v437 userInterfaceIdiom])
    {
      HIDWORD(v486) = 0;
      LODWORD(v488) = 1;
      goto LABEL_615;
    }
  }

  LODWORD(v488) = v84 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v432 = [MEMORY[0x277D759A0] mainScreen];
      [v432 _referenceBounds];
    }

    HIDWORD(v486) = v84 ^ 1;
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
    v433 = [MEMORY[0x277D75418] currentDevice];
    if ([v433 userInterfaceIdiom])
    {
      HIDWORD(v484) = 0;
      LODWORD(v486) = 1;
      goto LABEL_633;
    }
  }

  LODWORD(v486) = v116 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v424 = [MEMORY[0x277D759A0] mainScreen];
      [v424 _referenceBounds];
    }

    BSSizeRoundForScale();
    HIDWORD(v484) = v84 ^ 1;
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
  v84 = __sb__runningInSpringBoard();
  if (v84)
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
    v435 = [MEMORY[0x277D75418] currentDevice];
    if ([v435 userInterfaceIdiom])
    {
      HIDWORD(v482) = 0;
      LODWORD(v484) = 1;
      goto LABEL_643;
    }
  }

  LODWORD(v484) = v84 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v428 = [MEMORY[0x277D759A0] mainScreen];
      [v428 _referenceBounds];
    }

    HIDWORD(v482) = v84 ^ 1;
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
    v434 = [MEMORY[0x277D75418] currentDevice];
    if ([v434 userInterfaceIdiom])
    {
      HIDWORD(v480) = 0;
      LODWORD(v482) = 1;
      goto LABEL_657;
    }
  }

  LODWORD(v482) = v119 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v425 = [MEMORY[0x277D759A0] mainScreen];
      [v425 _referenceBounds];
    }

    HIDWORD(v480) = v84 ^ 1;
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
  v84 = __sb__runningInSpringBoard();
  if (v84)
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
    v431 = [MEMORY[0x277D75418] currentDevice];
    if ([v431 userInterfaceIdiom])
    {
      HIDWORD(v478) = 0;
      LODWORD(v480) = 1;
      goto LABEL_717;
    }
  }

  LODWORD(v480) = v84 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v423 = [MEMORY[0x277D759A0] mainScreen];
      [v423 _referenceBounds];
    }

    HIDWORD(v478) = v84 ^ 1;
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
    v430 = [MEMORY[0x277D75418] currentDevice];
    if ([v430 userInterfaceIdiom])
    {
      HIDWORD(v476) = 0;
      LODWORD(v478) = 1;
      goto LABEL_743;
    }
  }

  LODWORD(v478) = v135 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v420 = [MEMORY[0x277D759A0] mainScreen];
      [v420 _referenceBounds];
    }

    BSSizeRoundForScale();
    HIDWORD(v476) = v84 ^ 1;
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
  v84 = __sb__runningInSpringBoard();
  if (v84)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v460 = 0;
      goto LABEL_821;
    }
  }

  else
  {
    v427 = [MEMORY[0x277D75418] currentDevice];
    if ([v427 userInterfaceIdiom])
    {
      v460 = 0x100000000;
      goto LABEL_821;
    }
  }

  HIDWORD(v460) = v84 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v419 = [MEMORY[0x277D759A0] mainScreen];
      [v419 _referenceBounds];
    }

    LODWORD(v460) = v84 ^ 1;
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
    v422 = [MEMORY[0x277D75418] currentDevice];
    if ([v422 userInterfaceIdiom])
    {
      HIDWORD(v458) = 0;
      LODWORD(v476) = 1;
      goto LABEL_915;
    }
  }

  LODWORD(v476) = v161 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v413 = [MEMORY[0x277D759A0] mainScreen];
      [v413 _referenceBounds];
    }

    BSSizeRoundForScale();
    HIDWORD(v458) = v84 ^ 1;
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
  v84 = __sb__runningInSpringBoard();
  if (v84)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v474 = 0;
      goto LABEL_925;
    }
  }

  else
  {
    v426 = [MEMORY[0x277D75418] currentDevice];
    if ([v426 userInterfaceIdiom])
    {
      v474 = 0x100000000;
      goto LABEL_925;
    }
  }

  HIDWORD(v474) = v84 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v416 = [MEMORY[0x277D759A0] mainScreen];
      [v416 _referenceBounds];
    }

    LODWORD(v474) = v84 ^ 1;
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
    v418 = [MEMORY[0x277D75418] currentDevice];
    if ([v418 userInterfaceIdiom])
    {
      v472 = 0x100000000;
      goto LABEL_969;
    }
  }

  HIDWORD(v472) = v177 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v409 = [MEMORY[0x277D759A0] mainScreen];
      [v409 _referenceBounds];
    }

    LODWORD(v472) = v84 ^ 1;
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
  v84 = __sb__runningInSpringBoard();
  if (v84)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v470 = 0;
      goto LABEL_979;
    }
  }

  else
  {
    v421 = [MEMORY[0x277D75418] currentDevice];
    if ([v421 userInterfaceIdiom])
    {
      v470 = 0x100000000;
      goto LABEL_979;
    }
  }

  HIDWORD(v470) = v84 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v412 = [MEMORY[0x277D759A0] mainScreen];
      [v412 _referenceBounds];
    }

    LODWORD(v470) = v84 ^ 1;
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
    v414 = [MEMORY[0x277D75418] currentDevice];
    if ([v414 userInterfaceIdiom])
    {
      v468 = 0x100000000;
      goto LABEL_1053;
    }
  }

  HIDWORD(v468) = v186 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v405 = [MEMORY[0x277D759A0] mainScreen];
      [v405 _referenceBounds];
    }

    LODWORD(v468) = v84 ^ 1;
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
  v84 = __sb__runningInSpringBoard();
  if (v84)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v466 = 0;
      goto LABEL_1063;
    }
  }

  else
  {
    v417 = [MEMORY[0x277D75418] currentDevice];
    if ([v417 userInterfaceIdiom])
    {
      v466 = 0x100000000;
      goto LABEL_1063;
    }
  }

  HIDWORD(v466) = v84 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v408 = [MEMORY[0x277D759A0] mainScreen];
      [v408 _referenceBounds];
    }

    LODWORD(v466) = v84 ^ 1;
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
    v415 = [MEMORY[0x277D75418] currentDevice];
    if ([v415 userInterfaceIdiom])
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

  v84 = __sb__runningInSpringBoard();
  if (v84)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v406 = [MEMORY[0x277D759A0] mainScreen];
    [v406 _referenceBounds];
  }

  LODWORD(v464) = v84 ^ 1;
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
  v84 = __sb__runningInSpringBoard();
  if (v84)
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
    v411 = [MEMORY[0x277D75418] currentDevice];
    if ([v411 userInterfaceIdiom])
    {
      LODWORD(v458) = 0;
      HIDWORD(v462) = 1;
      goto LABEL_1139;
    }
  }

  HIDWORD(v462) = v84 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v404 = [MEMORY[0x277D759A0] mainScreen];
      [v404 _referenceBounds];
    }

    LODWORD(v458) = v84 ^ 1;
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
    v410 = [MEMORY[0x277D75418] currentDevice];
    if ([v410 userInterfaceIdiom])
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

  v84 = __sb__runningInSpringBoard();
  if (v84)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v403 = [MEMORY[0x277D759A0] mainScreen];
    [v403 _referenceBounds];
  }

  LODWORD(v462) = v84 ^ 1;
  BSSizeRoundForScale();
  if (v222 < *(MEMORY[0x277D66E30] + 104))
  {
LABEL_1170:
    v84 = __sb__runningInSpringBoard();
    if (v84)
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
      v407 = [MEMORY[0x277D75418] currentDevice];
      if ([v407 userInterfaceIdiom])
      {
        LODWORD(v454) = 0;
        LODWORD(v456) = 1;
        goto LABEL_1188;
      }
    }

    LODWORD(v456) = v84 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v84 = __sb__runningInSpringBoard();
      if (v84)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v402 = [MEMORY[0x277D759A0] mainScreen];
        [v402 _referenceBounds];
      }

      LODWORD(v454) = v84 ^ 1;
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
      v401 = [MEMORY[0x277D75418] currentDevice];
      if ([v401 userInterfaceIdiom])
      {
        HIDWORD(v452) = 0;
        HIDWORD(v454) = 1;
        goto LABEL_1388;
      }
    }

    HIDWORD(v454) = v252 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v84 = __sb__runningInSpringBoard();
      if (v84)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        rect_24 = [MEMORY[0x277D759A0] mainScreen];
        [rect_24 _referenceBounds];
      }

      HIDWORD(v452) = v84 ^ 1;
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
      v400 = [MEMORY[0x277D75418] currentDevice];
      if ([v400 userInterfaceIdiom])
      {
        v90 = 0;
        LODWORD(v452) = 1;
        goto LABEL_1398;
      }
    }

    LODWORD(v452) = v259 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v84 = __sb__runningInSpringBoard();
      if (v84)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        rect_16 = [MEMORY[0x277D759A0] mainScreen];
        [rect_16 _referenceBounds];
      }

      v90 = v84 ^ 1;
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
      v62 = [MEMORY[0x277D75418] currentDevice];
      if ([v62 userInterfaceIdiom])
      {
        v92 = 0;
        v91 = 1;
        goto LABEL_1408;
      }
    }

    v91 = v260 ^ 1;
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v65 = [MEMORY[0x277D759A0] mainScreen];
      [v65 _referenceBounds];
    }

    v92 = v84 ^ 1;
    BSSizeRoundForScale();
    if (v261 >= *(MEMORY[0x277D66E30] + 56))
    {
      goto LABEL_1411;
    }

LABEL_1408:
    v84 = __sb__runningInSpringBoard();
    if (v84)
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
      v8 = [MEMORY[0x277D75418] currentDevice];
      if ([v8 userInterfaceIdiom])
      {
        v94 = 0;
        v93 = 1;
        goto LABEL_1305;
      }
    }

    v93 = v84 ^ 1;
    v264 = __sb__runningInSpringBoard();
    if (v264)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v84 = [MEMORY[0x277D759A0] mainScreen];
      [v84 _referenceBounds];
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
    v104 = CGRectGetMaxY(v521) + v508;
    v105 = v515;
  }

  else
  {
    v105 = v515;
    v104 = v508;
  }

  v28 = v105 * 0.5 + v104;
  if (v509)
  {
    *v509 = v34 < v513 + -15.0;
  }

LABEL_5:

  v30 = v29;
  v31 = v28;
  result.y = v31;
  result.x = v30;
  return result;
}

- (void)_preferredTextSizeChanged:(id)a3
{
  callToActionLabel = self->_callToActionLabel;
  v4 = [(CSTeachableMomentsContainerView *)self _callToActionLabelFont];
  [(SBUILegibilityLabel *)callToActionLabel setFont:v4];
}

- (id)_callToActionLabelFont
{
  v2 = [MEMORY[0x277CF0D60] preferredFontProvider];
  v3 = [v2 preferredFontForTextStyle:*MEMORY[0x277D76918] hiFontStyle:12];

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