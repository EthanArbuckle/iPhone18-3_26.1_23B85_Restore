@interface CSMagSafeAccessoryWalletView
- (CSMagSafeAccessoryWalletView)initWithFrame:(CGRect)a3;
- (void)_dismissAnimation;
- (void)_presentAnimation;
- (void)_runAnimationWithType:(unint64_t)a3;
- (void)layoutSubviews;
- (void)performAnimation:(unint64_t)a3 completionHandler:(id)a4;
@end

@implementation CSMagSafeAccessoryWalletView

- (CSMagSafeAccessoryWalletView)initWithFrame:(CGRect)a3
{
  v563[1] = *MEMORY[0x277D85DE8];
  v562.receiver = self;
  v562.super_class = CSMagSafeAccessoryWalletView;
  v3 = [(CSMagSafeAccessoryView *)&v562 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  if (!v3)
  {
    goto LABEL_715;
  }

  v4 = [(CSMagSafeAccessoryWalletView *)v3 layer];
  [v4 setAllowsGroupBlending:0];

  if ([(CSMagSafeAccessoryView *)v3 isReduceTransparencyEnabled])
  {
    v5 = [MEMORY[0x277CD9E08] layer];
    averageColorBackdropLayer = v3->_averageColorBackdropLayer;
    v3->_averageColorBackdropLayer = v5;

    [(CABackdropLayer *)v3->_averageColorBackdropLayer setOpacity:0.0];
    v7 = v3->_averageColorBackdropLayer;
    v8 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA268]];
    v563[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v563 count:1];
    [(CABackdropLayer *)v7 setFilters:v9];

    [(CABackdropLayer *)v3->_averageColorBackdropLayer setScale:100.0];
    [(CABackdropLayer *)v3->_averageColorBackdropLayer setAllowsGroupOpacity:1];
    [(CABackdropLayer *)v3->_averageColorBackdropLayer setAllowsGroupBlending:1];
    [(CABackdropLayer *)v3->_averageColorBackdropLayer setAllowsEdgeAntialiasing:1];
  }

  v10 = [MEMORY[0x277CD9E08] backdropLayerWithGaussianBlurRadius:0.0 brightnessAmount:0.0 saturationAmount:1.0];
  backgroundBackdropLayer = v3->_backgroundBackdropLayer;
  v3->_backgroundBackdropLayer = v10;

  v12 = v3->_backgroundBackdropLayer;
  v13 = *MEMORY[0x277CDA5C0];
  v14 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5C0]];
  [(CABackdropLayer *)v12 setCompositingFilter:v14];

  LODWORD(v15) = 1.0;
  [(CABackdropLayer *)v3->_backgroundBackdropLayer setOpacity:v15];
  if ([(CSMagSafeAccessoryView *)v3 isReduceMotionEnabled])
  {
    v16 = [MEMORY[0x277CD9E08] backdropLayerWithGaussianBlurRadius:60.0 brightnessAmount:0.0 saturationAmount:1.0];
    backgroundRadiusBackdropLayer = v3->_backgroundRadiusBackdropLayer;
    v3->_backgroundRadiusBackdropLayer = v16;

    v18 = v3->_backgroundRadiusBackdropLayer;
    v19 = [MEMORY[0x277CD9EA0] filterWithType:v13];
    [(CABackdropLayer *)v18 setCompositingFilter:v19];

    [(CABackdropLayer *)v3->_backgroundRadiusBackdropLayer setOpacity:0.0];
  }

  v20 = [MEMORY[0x277CD9E08] backdropLayerWithGaussianBlurRadius:45.0 brightnessAmount:0.15 saturationAmount:1.3];
  trackRingBlurBackdropLayer = v3->_trackRingBlurBackdropLayer;
  v3->_trackRingBlurBackdropLayer = v20;

  v22 = v3->_trackRingBlurBackdropLayer;
  v23 = [MEMORY[0x277CD9EA0] filterWithType:v13];
  [(CABackdropLayer *)v22 setCompositingFilter:v23];

  v24 = [(CSMagSafeAccessoryWalletView *)v3 configuration];
  v25 = [v24 ring];
  [v25 ringDiameter];
  v27 = v26;
  v28 = [(CSMagSafeAccessoryWalletView *)v3 configuration];
  v29 = [v28 ring];
  [v29 lineWidth];
  v31 = [CSRingLayer ringLayerWithBlendMode:v13 diameter:v27 lineWidth:v30 brightnessAmount:0.1 saturationAmount:1.25];
  trackRingBlurLayer = v3->_trackRingBlurLayer;
  v3->_trackRingBlurLayer = v31;

  v33 = v3->_trackRingBlurLayer;
  v34 = [MEMORY[0x277D75348] whiteColor];
  -[CSRingLayer setStrokeColor:](v33, "setStrokeColor:", [v34 CGColor]);

  [(CABackdropLayer *)v3->_trackRingBlurBackdropLayer setMask:v3->_trackRingBlurLayer];
  v35 = __sb__runningInSpringBoard();
  if (v35)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v560 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v440 = [MEMORY[0x277D75418] currentDevice];
    if ([v440 userInterfaceIdiom] != 1)
    {
      v560 = 0x100000000;
      goto LABEL_15;
    }
  }

  HIDWORD(v560) = v35 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v36 = __sb__runningInSpringBoard();
    if (v36)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v448 = [MEMORY[0x277D759A0] mainScreen];
      [v448 _referenceBounds];
    }

    LODWORD(v560) = v36 ^ 1;
    BSSizeRoundForScale();
    if (v51 == *(MEMORY[0x277D66E30] + 288) && v50 == *(MEMORY[0x277D66E30] + 296))
    {
      v451 = 0;
      LODWORD(v452) = 0;
      LODWORD(v453) = 0;
      LODWORD(v454) = 0;
      LODWORD(v455) = 0;
      LODWORD(v456) = 0;
      LODWORD(v457) = 0;
      LODWORD(v466) = 0;
      LODWORD(v458) = 0;
      LODWORD(v467) = 0;
      v521 = 0;
      LODWORD(v468) = 0;
      LODWORD(v469) = 0;
      v524 = 0;
      v527 = 0;
      v530 = 0;
      v533 = 0;
      v536 = 0;
      v539 = 0;
      LODWORD(v470) = 0;
      v542 = 0;
      LODWORD(v471) = 0;
      LODWORD(v472) = 0;
      v545 = 0;
      v548 = 0;
      v551 = 0;
      memset(v554, 0, sizeof(v554));
      v555 = 0;
      v556 = 0;
      v557 = 0;
      v558 = 0;
      v559 = 0;
      v46 = 0.0;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v560) = 0;
  }

LABEL_15:
  v37 = __sb__runningInSpringBoard();
  if (v37)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v559 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    v438 = [MEMORY[0x277D75418] currentDevice];
    if ([v438 userInterfaceIdiom] != 1)
    {
      v559 = 0x100000000;
      goto LABEL_24;
    }
  }

  HIDWORD(v559) = v37 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v38 = __sb__runningInSpringBoard();
    if (v38)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v421 = [MEMORY[0x277D759A0] mainScreen];
      [v421 _referenceBounds];
    }

    LODWORD(v559) = v38 ^ 1;
    BSSizeRoundForScale();
    if (v52 >= *(MEMORY[0x277D66E30] + 440))
    {
      v451 = 0;
      LODWORD(v452) = 0;
      LODWORD(v453) = 0;
      LODWORD(v454) = 0;
      LODWORD(v455) = 0;
      LODWORD(v456) = 0;
      LODWORD(v457) = 0;
      LODWORD(v466) = 0;
      LODWORD(v458) = 0;
      LODWORD(v467) = 0;
      v521 = 0;
      LODWORD(v468) = 0;
      LODWORD(v469) = 0;
      v524 = 0;
      v527 = 0;
      v530 = 0;
      v533 = 0;
      v536 = 0;
      v539 = 0;
      LODWORD(v470) = 0;
      v542 = 0;
      LODWORD(v471) = 0;
      LODWORD(v472) = 0;
      v545 = 0;
      v548 = 0;
      v551 = 0;
      memset(v554, 0, sizeof(v554));
      v555 = 0;
      v556 = 0;
      v557 = 0;
      v558 = 0;
      v46 = 0.0;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v559) = 0;
  }

LABEL_24:
  v39 = __sb__runningInSpringBoard();
  if (v39)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v558 = 0;
      goto LABEL_33;
    }
  }

  else
  {
    v436 = [MEMORY[0x277D75418] currentDevice];
    if ([v436 userInterfaceIdiom] != 1)
    {
      v558 = 0x100000000;
      goto LABEL_33;
    }
  }

  HIDWORD(v558) = v39 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v40 = __sb__runningInSpringBoard();
    if (v40)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v419 = [MEMORY[0x277D759A0] mainScreen];
      [v419 _referenceBounds];
    }

    LODWORD(v558) = v40 ^ 1;
    BSSizeRoundForScale();
    if (v53 >= *(MEMORY[0x277D66E30] + 376))
    {
      v451 = 0;
      LODWORD(v452) = 0;
      LODWORD(v453) = 0;
      LODWORD(v454) = 0;
      LODWORD(v455) = 0;
      LODWORD(v456) = 0;
      LODWORD(v457) = 0;
      LODWORD(v466) = 0;
      LODWORD(v458) = 0;
      LODWORD(v467) = 0;
      v521 = 0;
      LODWORD(v468) = 0;
      LODWORD(v469) = 0;
      v524 = 0;
      v527 = 0;
      v530 = 0;
      v533 = 0;
      v536 = 0;
      v539 = 0;
      LODWORD(v470) = 0;
      v542 = 0;
      LODWORD(v471) = 0;
      LODWORD(v472) = 0;
      v545 = 0;
      v548 = 0;
      v551 = 0;
      memset(v554, 0, sizeof(v554));
      v555 = 0;
      v556 = 0;
      v557 = 0;
      v46 = 0.0;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v558) = 0;
  }

LABEL_33:
  v41 = __sb__runningInSpringBoard();
  if (v41)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v557 = 0;
      goto LABEL_42;
    }
  }

  else
  {
    v434 = [MEMORY[0x277D75418] currentDevice];
    if ([v434 userInterfaceIdiom] != 1)
    {
      v557 = 0x100000000;
      goto LABEL_42;
    }
  }

  HIDWORD(v557) = v41 ^ 1;
  v42 = __sb__runningInSpringBoard();
  if (v42)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v428 = [MEMORY[0x277D759A0] mainScreen];
    [v428 _referenceBounds];
  }

  LODWORD(v557) = v42 ^ 1;
  BSSizeRoundForScale();
  if (v43 >= *(MEMORY[0x277D66E30] + 280))
  {
    v451 = 0;
    LODWORD(v452) = 0;
    LODWORD(v453) = 0;
    LODWORD(v454) = 0;
    LODWORD(v455) = 0;
    LODWORD(v456) = 0;
    LODWORD(v457) = 0;
    LODWORD(v466) = 0;
    LODWORD(v458) = 0;
    LODWORD(v467) = 0;
    v521 = 0;
    LODWORD(v468) = 0;
    LODWORD(v469) = 0;
    v524 = 0;
    v527 = 0;
    v530 = 0;
    v533 = 0;
    v536 = 0;
    v539 = 0;
    LODWORD(v470) = 0;
    v542 = 0;
    LODWORD(v471) = 0;
    LODWORD(v472) = 0;
    v545 = 0;
    v548 = 0;
    v551 = 0;
    memset(v554, 0, sizeof(v554));
    v555 = 0;
    v556 = 0;
    v46 = 0.0;
    goto LABEL_69;
  }

LABEL_42:
  v44 = __sb__runningInSpringBoard();
  if (v44)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v556 = 0;
      goto LABEL_52;
    }
  }

  else
  {
    v432 = [MEMORY[0x277D75418] currentDevice];
    if ([v432 userInterfaceIdiom] != 1)
    {
      v556 = 0x100000000;
      goto LABEL_52;
    }
  }

  HIDWORD(v556) = v44 ^ 1;
  v45 = __sb__runningInSpringBoard();
  if (v45)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v424 = [MEMORY[0x277D759A0] mainScreen];
    [v424 _referenceBounds];
  }

  LODWORD(v556) = v45 ^ 1;
  BSSizeRoundForScale();
  if (v47 >= *(MEMORY[0x277D66E30] + 264))
  {
    v451 = 0;
    LODWORD(v452) = 0;
    LODWORD(v453) = 0;
    LODWORD(v454) = 0;
    LODWORD(v455) = 0;
    LODWORD(v456) = 0;
    LODWORD(v457) = 0;
    LODWORD(v466) = 0;
    LODWORD(v458) = 0;
    LODWORD(v467) = 0;
    v521 = 0;
    LODWORD(v468) = 0;
    LODWORD(v469) = 0;
    v524 = 0;
    v527 = 0;
    v530 = 0;
    v533 = 0;
    v536 = 0;
    v539 = 0;
    LODWORD(v470) = 0;
    v542 = 0;
    LODWORD(v471) = 0;
    LODWORD(v472) = 0;
    v545 = 0;
    v548 = 0;
    v551 = 0;
    memset(v554, 0, sizeof(v554));
    v555 = 0;
    v46 = 0.0;
    goto LABEL_69;
  }

LABEL_52:
  v48 = __sb__runningInSpringBoard();
  if (v48)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v555 = 0;
      goto LABEL_724;
    }
  }

  else
  {
    v430 = [MEMORY[0x277D75418] currentDevice];
    if ([v430 userInterfaceIdiom] != 1)
    {
      v555 = 0x100000000;
      goto LABEL_724;
    }
  }

  HIDWORD(v555) = v48 ^ 1;
  v49 = __sb__runningInSpringBoard();
  if (v49)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v417 = [MEMORY[0x277D759A0] mainScreen];
    [v417 _referenceBounds];
  }

  LODWORD(v555) = v49 ^ 1;
  BSSizeRoundForScale();
  if (v156 >= *(MEMORY[0x277D66E30] + 248))
  {
    v451 = 0;
    LODWORD(v452) = 0;
    LODWORD(v453) = 0;
    LODWORD(v454) = 0;
    LODWORD(v455) = 0;
    LODWORD(v456) = 0;
    LODWORD(v457) = 0;
    LODWORD(v466) = 0;
    LODWORD(v458) = 0;
    LODWORD(v467) = 0;
    v521 = 0;
    LODWORD(v468) = 0;
    LODWORD(v469) = 0;
    v524 = 0;
    v527 = 0;
    v530 = 0;
    v533 = 0;
    v536 = 0;
    v539 = 0;
    LODWORD(v470) = 0;
    v542 = 0;
    LODWORD(v471) = 0;
    LODWORD(v472) = 0;
    v545 = 0;
    v548 = 0;
    v551 = 0;
    memset(v554, 0, sizeof(v554));
    v46 = 0.0;
    goto LABEL_69;
  }

LABEL_724:
  v157 = __sb__runningInSpringBoard();
  if (v157)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_726;
    }

LABEL_732:
    v451 = 0;
    LODWORD(v452) = 0;
    LODWORD(v453) = 0;
    LODWORD(v454) = 0;
    LODWORD(v455) = 0;
    LODWORD(v456) = 0;
    LODWORD(v457) = 0;
    LODWORD(v466) = 0;
    LODWORD(v458) = 0;
    LODWORD(v467) = 0;
    v521 = 0;
    LODWORD(v468) = 0;
    LODWORD(v469) = 0;
    v524 = 0;
    v527 = 0;
    v530 = 0;
    v533 = 0;
    v536 = 0;
    v539 = 0;
    LODWORD(v470) = 0;
    v542 = 0;
    LODWORD(v471) = 0;
    LODWORD(v472) = 0;
    v545 = 0;
    v548 = 0;
    v551 = 0;
    memset(v554, 0, 28);
    v46 = 0.0;
    HIDWORD(v554[3]) = v157 ^ 1;
    goto LABEL_69;
  }

  v426 = [MEMORY[0x277D75418] currentDevice];
  if ([v426 userInterfaceIdiom] == 1)
  {
    goto LABEL_732;
  }

LABEL_726:
  HIDWORD(v554[3]) = v157 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_730:
    *(&v554[2] + 4) = 0;
    goto LABEL_785;
  }

  v158 = __sb__runningInSpringBoard();
  if (v158)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_730;
    }
  }

  else
  {
    v413 = [MEMORY[0x277D75418] currentDevice];
    if ([v413 userInterfaceIdiom])
    {
      HIDWORD(v554[2]) = 0;
      LODWORD(v554[3]) = 1;
      goto LABEL_785;
    }
  }

  LODWORD(v554[3]) = v158 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v165 = __sb__runningInSpringBoard();
    if (v165)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v399 = [MEMORY[0x277D759A0] mainScreen];
      [v399 _referenceBounds];
    }

    HIDWORD(v554[2]) = v165 ^ 1;
    BSSizeRoundForScale();
    if (v176 >= *(MEMORY[0x277D66E30] + 200))
    {
      v451 = 0;
      LODWORD(v452) = 0;
      LODWORD(v453) = 0;
      LODWORD(v454) = 0;
      LODWORD(v455) = 0;
      LODWORD(v456) = 0;
      LODWORD(v457) = 0;
      LODWORD(v466) = 0;
      LODWORD(v458) = 0;
      LODWORD(v467) = 0;
      v521 = 0;
      LODWORD(v468) = 0;
      LODWORD(v469) = 0;
      v524 = 0;
      v527 = 0;
      v530 = 0;
      v533 = 0;
      v536 = 0;
      v539 = 0;
      LODWORD(v470) = 0;
      v542 = 0;
      LODWORD(v471) = 0;
      LODWORD(v472) = 0;
      v545 = 0;
      v548 = 0;
      v551 = 0;
      memset(v554, 0, 20);
      v46 = 389.0;
      goto LABEL_69;
    }
  }

  else
  {
    HIDWORD(v554[2]) = 0;
  }

LABEL_785:
  v166 = __sb__runningInSpringBoard();
  if (v166)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v554[1] + 4) = 0;
      goto LABEL_795;
    }
  }

  else
  {
    v415 = [MEMORY[0x277D75418] currentDevice];
    if ([v415 userInterfaceIdiom])
    {
      HIDWORD(v554[1]) = 0;
      LODWORD(v554[2]) = 1;
      goto LABEL_795;
    }
  }

  LODWORD(v554[2]) = v166 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v167 = __sb__runningInSpringBoard();
    if (v167)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v405 = [MEMORY[0x277D759A0] mainScreen];
      [v405 _referenceBounds];
    }

    HIDWORD(v554[1]) = v167 ^ 1;
    BSSizeRoundForScale();
    if (v168 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_799;
    }
  }

  else
  {
    HIDWORD(v554[1]) = 0;
  }

LABEL_795:
  if (_SBF_Private_IsD94Like())
  {
    v451 = 0;
    LODWORD(v452) = 0;
    LODWORD(v453) = 0;
    LODWORD(v454) = 0;
    LODWORD(v455) = 0;
    LODWORD(v456) = 0;
    LODWORD(v457) = 0;
    LODWORD(v466) = 0;
    LODWORD(v458) = 0;
    LODWORD(v467) = 0;
    v521 = 0;
    LODWORD(v468) = 0;
    LODWORD(v469) = 0;
    v524 = 0;
    v527 = 0;
    v530 = 0;
    v533 = 0;
    v536 = 0;
    v539 = 0;
    LODWORD(v470) = 0;
    v542 = 0;
    LODWORD(v471) = 0;
    LODWORD(v472) = 0;
    v545 = 0;
    v548 = 0;
    v551 = 0;
    v554[0] = 0;
    LODWORD(v554[1]) = 0;
    v46 = 340.666666;
    goto LABEL_69;
  }

LABEL_799:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_803:
    *(v554 + 4) = 0;
    goto LABEL_897;
  }

  v169 = __sb__runningInSpringBoard();
  if (v169)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_803;
    }
  }

  else
  {
    v34 = [MEMORY[0x277D75418] currentDevice];
    if ([v34 userInterfaceIdiom])
    {
      v409 = v34;
      HIDWORD(v554[0]) = 0;
      LODWORD(v554[1]) = 1;
      goto LABEL_897;
    }
  }

  LODWORD(v554[1]) = v169 ^ 1;
  v409 = v34;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v180 = __sb__runningInSpringBoard();
    if (v180)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v389 = [MEMORY[0x277D759A0] mainScreen];
      [v389 _referenceBounds];
    }

    HIDWORD(v554[0]) = v180 ^ 1;
    BSSizeRoundForScale();
    if (v199 >= *(MEMORY[0x277D66E30] + 136))
    {
      v451 = 0;
      LODWORD(v452) = 0;
      LODWORD(v453) = 0;
      LODWORD(v454) = 0;
      LODWORD(v455) = 0;
      LODWORD(v456) = 0;
      LODWORD(v457) = 0;
      LODWORD(v466) = 0;
      LODWORD(v458) = 0;
      LODWORD(v467) = 0;
      v521 = 0;
      LODWORD(v468) = 0;
      LODWORD(v469) = 0;
      v524 = 0;
      v527 = 0;
      v530 = 0;
      v533 = 0;
      v536 = 0;
      v539 = 0;
      LODWORD(v470) = 0;
      v542 = 0;
      LODWORD(v471) = 0;
      LODWORD(v472) = 0;
      v545 = 0;
      v548 = 0;
      v551 = 0;
      LODWORD(v554[0]) = 0;
      v46 = 380.0;
      goto LABEL_69;
    }
  }

  else
  {
    HIDWORD(v554[0]) = 0;
  }

LABEL_897:
  v181 = __sb__runningInSpringBoard();
  v182 = &off_21EC94000;
  if (v181)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v551) = 0;
      LODWORD(v554[0]) = 0;
      goto LABEL_907;
    }
  }

  else
  {
    v411 = [MEMORY[0x277D75418] currentDevice];
    if ([v411 userInterfaceIdiom])
    {
      HIDWORD(v551) = 0;
      LODWORD(v554[0]) = 1;
      goto LABEL_907;
    }
  }

  LODWORD(v554[0]) = v181 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v183 = __sb__runningInSpringBoard();
    if (v183)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v397 = [MEMORY[0x277D759A0] mainScreen];
      [v397 _referenceBounds];
    }

    HIDWORD(v551) = v183 ^ 1;
    BSSizeRoundForScale();
    if (v184 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_911;
    }
  }

  else
  {
    HIDWORD(v551) = 0;
  }

LABEL_907:
  if (_SBF_Private_IsD64Like())
  {
    v451 = 0;
    LODWORD(v452) = 0;
    LODWORD(v453) = 0;
    LODWORD(v454) = 0;
    LODWORD(v455) = 0;
    LODWORD(v456) = 0;
    LODWORD(v457) = 0;
    LODWORD(v466) = 0;
    LODWORD(v458) = 0;
    LODWORD(v467) = 0;
    v521 = 0;
    LODWORD(v468) = 0;
    LODWORD(v469) = 0;
    v524 = 0;
    v527 = 0;
    v530 = 0;
    v533 = 0;
    v536 = 0;
    v539 = 0;
    LODWORD(v470) = 0;
    v542 = 0;
    LODWORD(v471) = 0;
    LODWORD(v472) = 0;
    v545 = 0;
    v548 = 0;
    LODWORD(v551) = 0;
    v46 = 332.666666;
    goto LABEL_69;
  }

LABEL_911:
  v185 = __sb__runningInSpringBoard();
  if (v185)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v548) = 0;
      LODWORD(v551) = 0;
      goto LABEL_921;
    }
  }

  else
  {
    v408 = [MEMORY[0x277D75418] currentDevice];
    if ([v408 userInterfaceIdiom])
    {
      HIDWORD(v548) = 0;
      LODWORD(v551) = 1;
      goto LABEL_921;
    }
  }

  LODWORD(v551) = v185 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v186 = __sb__runningInSpringBoard();
    if (v186)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v391 = [MEMORY[0x277D759A0] mainScreen];
      [v391 _referenceBounds];
    }

    HIDWORD(v548) = v186 ^ 1;
    BSSizeRoundForScale();
    if (v195 >= *(MEMORY[0x277D66E30] + 136))
    {
      v451 = 0;
      LODWORD(v452) = 0;
      LODWORD(v453) = 0;
      LODWORD(v454) = 0;
      LODWORD(v455) = 0;
      LODWORD(v456) = 0;
      LODWORD(v457) = 0;
      LODWORD(v466) = 0;
      LODWORD(v458) = 0;
      LODWORD(v467) = 0;
      v521 = 0;
      LODWORD(v468) = 0;
      LODWORD(v469) = 0;
      v524 = 0;
      v527 = 0;
      v530 = 0;
      v533 = 0;
      v536 = 0;
      v539 = 0;
      LODWORD(v470) = 0;
      v542 = 0;
      LODWORD(v471) = 0;
      LODWORD(v472) = 0;
      v545 = 0;
      LODWORD(v548) = 0;
      v46 = 380.0;
      goto LABEL_69;
    }
  }

  else
  {
    HIDWORD(v548) = 0;
  }

LABEL_921:
  v187 = __sb__runningInSpringBoard();
  if (v187)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v545) = 0;
      LODWORD(v548) = 0;
      goto LABEL_1033;
    }
  }

  else
  {
    v403 = [MEMORY[0x277D75418] currentDevice];
    if ([v403 userInterfaceIdiom])
    {
      HIDWORD(v545) = 0;
      LODWORD(v548) = 1;
      goto LABEL_1033;
    }
  }

  LODWORD(v548) = v187 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v194 = __sb__runningInSpringBoard();
    if (v194)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v387 = [MEMORY[0x277D759A0] mainScreen];
      [v387 _referenceBounds];
    }

    HIDWORD(v545) = v194 ^ 1;
    BSSizeRoundForScale();
    if (v203 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_1079;
    }
  }

  else
  {
    HIDWORD(v545) = 0;
  }

LABEL_1033:
  if (_SBF_Private_IsD54())
  {
    v451 = 0;
    LODWORD(v452) = 0;
    LODWORD(v453) = 0;
    LODWORD(v454) = 0;
    LODWORD(v455) = 0;
    LODWORD(v456) = 0;
    LODWORD(v457) = 0;
    LODWORD(v466) = 0;
    LODWORD(v458) = 0;
    LODWORD(v467) = 0;
    v521 = 0;
    LODWORD(v468) = 0;
    LODWORD(v469) = 0;
    v524 = 0;
    v527 = 0;
    v530 = 0;
    v533 = 0;
    v536 = 0;
    v539 = 0;
    LODWORD(v470) = 0;
    v542 = 0;
    LODWORD(v471) = 0;
    LODWORD(v472) = 0;
    LODWORD(v545) = 0;
    v46 = 332.666666;
    goto LABEL_69;
  }

LABEL_1079:
  v204 = __sb__runningInSpringBoard();
  if (v204)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v542) = 0;
      LODWORD(v545) = 0;
      goto LABEL_1113;
    }
  }

  else
  {
    v401 = [MEMORY[0x277D75418] currentDevice];
    if ([v401 userInterfaceIdiom])
    {
      HIDWORD(v542) = 0;
      LODWORD(v545) = 1;
      goto LABEL_1113;
    }
  }

  LODWORD(v545) = v204 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v211 = __sb__runningInSpringBoard();
    if (v211)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v380 = [MEMORY[0x277D759A0] mainScreen];
      [v380 _referenceBounds];
    }

    BSSizeRoundForScale();
    HIDWORD(v542) = v211 ^ 1;
    if (v217 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      v451 = 0;
      LODWORD(v452) = 0;
      LODWORD(v453) = 0;
      LODWORD(v454) = 0;
      LODWORD(v455) = 0;
      LODWORD(v456) = 0;
      LODWORD(v457) = 0;
      LODWORD(v466) = 0;
      LODWORD(v458) = 0;
      LODWORD(v467) = 0;
      v521 = 0;
      LODWORD(v468) = 0;
      LODWORD(v469) = 0;
      v524 = 0;
      v527 = 0;
      v530 = 0;
      v533 = 0;
      v536 = 0;
      v539 = 0;
      LODWORD(v470) = 0;
      LODWORD(v542) = 0;
      LODWORD(v471) = 0;
      LODWORD(v472) = 0;
      v46 = 0.0;
      goto LABEL_69;
    }
  }

  else
  {
    HIDWORD(v542) = 0;
  }

LABEL_1113:
  v212 = __sb__runningInSpringBoard();
  if (v212)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v471) = 0;
      LODWORD(v472) = 0;
      goto LABEL_1153;
    }
  }

  else
  {
    v395 = [MEMORY[0x277D75418] currentDevice];
    if ([v395 userInterfaceIdiom])
    {
      LODWORD(v471) = 0;
      LODWORD(v472) = 1;
      goto LABEL_1153;
    }
  }

  LODWORD(v472) = v212 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v216 = __sb__runningInSpringBoard();
    if (v216)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v378 = [MEMORY[0x277D759A0] mainScreen];
      [v378 _referenceBounds];
    }

    LODWORD(v471) = v216 ^ 1;
    BSSizeRoundForScale();
    if (v221 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_1195;
    }
  }

  else
  {
    LODWORD(v471) = 0;
  }

LABEL_1153:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    v451 = 0;
    LODWORD(v452) = 0;
    LODWORD(v453) = 0;
    LODWORD(v454) = 0;
    LODWORD(v455) = 0;
    LODWORD(v456) = 0;
    LODWORD(v457) = 0;
    LODWORD(v466) = 0;
    LODWORD(v458) = 0;
    LODWORD(v467) = 0;
    v521 = 0;
    LODWORD(v468) = 0;
    LODWORD(v469) = 0;
    v524 = 0;
    v527 = 0;
    v530 = 0;
    v533 = 0;
    v536 = 0;
    v539 = 0;
    LODWORD(v470) = 0;
    LODWORD(v542) = 0;
    v46 = 0.0;
    goto LABEL_69;
  }

LABEL_1195:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_1199:
    LODWORD(v470) = 0;
    LODWORD(v542) = 0;
    goto LABEL_1233;
  }

  v222 = __sb__runningInSpringBoard();
  if (v222)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_1199;
    }
  }

  else
  {
    v385 = [MEMORY[0x277D75418] currentDevice];
    if ([v385 userInterfaceIdiom])
    {
      LODWORD(v470) = 0;
      LODWORD(v542) = 1;
      goto LABEL_1233;
    }
  }

  LODWORD(v542) = v222 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v229 = __sb__runningInSpringBoard();
    if (v229)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v367 = [MEMORY[0x277D759A0] mainScreen];
      [v367 _referenceBounds];
    }

    BSSizeRoundForScale();
    LODWORD(v470) = v229 ^ 1;
    if (v243 >= *(MEMORY[0x277D66E30] + 184))
    {
      v451 = 0;
      LODWORD(v452) = 0;
      LODWORD(v453) = 0;
      LODWORD(v454) = 0;
      LODWORD(v455) = 0;
      LODWORD(v456) = 0;
      LODWORD(v457) = 0;
      LODWORD(v466) = 0;
      LODWORD(v458) = 0;
      LODWORD(v467) = 0;
      v521 = 0;
      LODWORD(v468) = 0;
      LODWORD(v469) = 0;
      v524 = 0;
      v527 = 0;
      v530 = 0;
      v533 = 0;
      v536 = 0;
      v539 = 0;
      v46 = 374.0;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v470) = 0;
  }

LABEL_1233:
  v230 = __sb__runningInSpringBoard();
  if (v230)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v539 = 0;
      goto LABEL_1243;
    }
  }

  else
  {
    v393 = [MEMORY[0x277D75418] currentDevice];
    if ([v393 userInterfaceIdiom])
    {
      v539 = 0x100000000;
      goto LABEL_1243;
    }
  }

  HIDWORD(v539) = v230 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v231 = __sb__runningInSpringBoard();
    if (v231)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v373 = [MEMORY[0x277D759A0] mainScreen];
      [v373 _referenceBounds];
    }

    LODWORD(v539) = v231 ^ 1;
    BSSizeRoundForScale();
    if (v232 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_1247;
    }
  }

  else
  {
    LODWORD(v539) = 0;
  }

LABEL_1243:
  if (_SBF_Private_IsD93Like())
  {
    v451 = 0;
    LODWORD(v452) = 0;
    LODWORD(v453) = 0;
    LODWORD(v454) = 0;
    LODWORD(v455) = 0;
    LODWORD(v456) = 0;
    LODWORD(v457) = 0;
    LODWORD(v466) = 0;
    LODWORD(v458) = 0;
    LODWORD(v467) = 0;
    v521 = 0;
    LODWORD(v468) = 0;
    LODWORD(v469) = 0;
    v524 = 0;
    v527 = 0;
    v530 = 0;
    v533 = 0;
    v536 = 0;
    v46 = 306.0;
    goto LABEL_69;
  }

LABEL_1247:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_1251:
    v536 = 0;
    goto LABEL_1345;
  }

  v233 = __sb__runningInSpringBoard();
  if (v233)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_1251;
    }
  }

  else
  {
    v182 = [MEMORY[0x277D75418] currentDevice];
    if ([v182 userInterfaceIdiom])
    {
      v381 = v182;
      v536 = 0x100000000;
      goto LABEL_1345;
    }
  }

  HIDWORD(v536) = v233 ^ 1;
  v381 = v182;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v247 = __sb__runningInSpringBoard();
    if (v247)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v359 = [MEMORY[0x277D759A0] mainScreen];
      [v359 _referenceBounds];
    }

    LODWORD(v536) = v247 ^ 1;
    BSSizeRoundForScale();
    if (v258 >= *(MEMORY[0x277D66E30] + 104))
    {
      v451 = 0;
      LODWORD(v452) = 0;
      LODWORD(v453) = 0;
      LODWORD(v454) = 0;
      LODWORD(v455) = 0;
      LODWORD(v456) = 0;
      LODWORD(v457) = 0;
      LODWORD(v466) = 0;
      LODWORD(v458) = 0;
      LODWORD(v467) = 0;
      v521 = 0;
      LODWORD(v468) = 0;
      LODWORD(v469) = 0;
      v524 = 0;
      v527 = 0;
      v530 = 0;
      v533 = 0;
      v46 = 366.0;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v536) = 0;
  }

LABEL_1345:
  v248 = __sb__runningInSpringBoard();
  if (v248)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v533 = 0;
      goto LABEL_1355;
    }
  }

  else
  {
    v383 = [MEMORY[0x277D75418] currentDevice];
    if ([v383 userInterfaceIdiom])
    {
      v533 = 0x100000000;
      goto LABEL_1355;
    }
  }

  HIDWORD(v533) = v248 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v249 = __sb__runningInSpringBoard();
    if (v249)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v365 = [MEMORY[0x277D759A0] mainScreen];
      [v365 _referenceBounds];
    }

    LODWORD(v533) = v249 ^ 1;
    BSSizeRoundForScale();
    if (v250 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_1359;
    }
  }

  else
  {
    LODWORD(v533) = 0;
  }

LABEL_1355:
  if (_SBF_Private_IsD63Like())
  {
    v451 = 0;
    LODWORD(v452) = 0;
    LODWORD(v453) = 0;
    LODWORD(v454) = 0;
    LODWORD(v455) = 0;
    LODWORD(v456) = 0;
    LODWORD(v457) = 0;
    LODWORD(v466) = 0;
    LODWORD(v458) = 0;
    LODWORD(v467) = 0;
    v521 = 0;
    LODWORD(v468) = 0;
    LODWORD(v469) = 0;
    v524 = 0;
    v527 = 0;
    v530 = 0;
    v46 = 300.0;
    goto LABEL_69;
  }

LABEL_1359:
  if (!_SBF_Private_IsD23Like())
  {
LABEL_1363:
    v530 = 0;
    goto LABEL_1457;
  }

  v251 = __sb__runningInSpringBoard();
  if (v251)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_1363;
    }
  }

  else
  {
    v369 = [MEMORY[0x277D75418] currentDevice];
    if ([v369 userInterfaceIdiom])
    {
      v530 = 0x100000000;
      goto LABEL_1457;
    }
  }

  HIDWORD(v530) = v251 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v262 = __sb__runningInSpringBoard();
    if (v262)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v351 = [MEMORY[0x277D759A0] mainScreen];
      [v351 _referenceBounds];
    }

    BSSizeRoundForScale();
    LODWORD(v530) = v262 ^ 1;
    if (v283 >= *(MEMORY[0x277D66E30] + 216))
    {
      v451 = 0;
      LODWORD(v452) = 0;
      LODWORD(v453) = 0;
      LODWORD(v454) = 0;
      LODWORD(v455) = 0;
      LODWORD(v456) = 0;
      LODWORD(v457) = 0;
      LODWORD(v466) = 0;
      LODWORD(v458) = 0;
      LODWORD(v467) = 0;
      v521 = 0;
      LODWORD(v468) = 0;
      LODWORD(v469) = 0;
      v524 = 0;
      v527 = 0;
      v46 = 365.0;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v530) = 0;
  }

LABEL_1457:
  v263 = __sb__runningInSpringBoard();
  if (v263)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v527 = 0;
      goto LABEL_1467;
    }
  }

  else
  {
    v375 = [MEMORY[0x277D75418] currentDevice];
    if ([v375 userInterfaceIdiom])
    {
      v527 = 0x100000000;
      goto LABEL_1467;
    }
  }

  HIDWORD(v527) = v263 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v264 = __sb__runningInSpringBoard();
    if (v264)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v357 = [MEMORY[0x277D759A0] mainScreen];
      [v357 _referenceBounds];
    }

    LODWORD(v527) = v264 ^ 1;
    BSSizeRoundForScale();
    if (v265 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_1471;
    }
  }

  else
  {
    LODWORD(v527) = 0;
  }

LABEL_1467:
  if (_SBF_Private_IsD23Like())
  {
    v451 = 0;
    LODWORD(v452) = 0;
    LODWORD(v453) = 0;
    LODWORD(v454) = 0;
    LODWORD(v455) = 0;
    LODWORD(v456) = 0;
    LODWORD(v457) = 0;
    LODWORD(v466) = 0;
    LODWORD(v458) = 0;
    LODWORD(v467) = 0;
    v521 = 0;
    LODWORD(v468) = 0;
    LODWORD(v469) = 0;
    v524 = 0;
    v46 = 300.0;
    goto LABEL_69;
  }

LABEL_1471:
  v266 = __sb__runningInSpringBoard();
  if (v266)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v524 = 0;
      goto LABEL_1481;
    }
  }

  else
  {
    v371 = [MEMORY[0x277D75418] currentDevice];
    if ([v371 userInterfaceIdiom])
    {
      v524 = 0x100000000;
      goto LABEL_1481;
    }
  }

  HIDWORD(v524) = v266 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v267 = __sb__runningInSpringBoard();
    if (v267)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v353 = [MEMORY[0x277D759A0] mainScreen];
      [v353 _referenceBounds];
    }

    LODWORD(v524) = v267 ^ 1;
    BSSizeRoundForScale();
    if (v279 >= *(MEMORY[0x277D66E30] + 120))
    {
      v451 = 0;
      LODWORD(v452) = 0;
      LODWORD(v453) = 0;
      LODWORD(v454) = 0;
      LODWORD(v455) = 0;
      LODWORD(v456) = 0;
      LODWORD(v457) = 0;
      LODWORD(v466) = 0;
      LODWORD(v458) = 0;
      LODWORD(v467) = 0;
      v521 = 0;
      LODWORD(v468) = 0;
      LODWORD(v469) = 0;
      v46 = 0.0;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v524) = 0;
  }

LABEL_1481:
  v268 = __sb__runningInSpringBoard();
  if (v268)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v469) = 0;
      HIDWORD(v521) = 0;
      goto LABEL_1593;
    }
  }

  else
  {
    v363 = [MEMORY[0x277D75418] currentDevice];
    if ([v363 userInterfaceIdiom])
    {
      LODWORD(v469) = 0;
      HIDWORD(v521) = 1;
      goto LABEL_1593;
    }
  }

  HIDWORD(v521) = v268 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v278 = __sb__runningInSpringBoard();
    if (v278)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v349 = [MEMORY[0x277D759A0] mainScreen];
      [v349 _referenceBounds];
    }

    LODWORD(v469) = v278 ^ 1;
    BSSizeRoundForScale();
    if (v287 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_1639;
    }
  }

  else
  {
    LODWORD(v469) = 0;
  }

LABEL_1593:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    v451 = 0;
    LODWORD(v452) = 0;
    LODWORD(v453) = 0;
    LODWORD(v454) = 0;
    LODWORD(v455) = 0;
    LODWORD(v456) = 0;
    LODWORD(v457) = 0;
    LODWORD(v466) = 0;
    LODWORD(v458) = 0;
    LODWORD(v467) = 0;
    LODWORD(v521) = 0;
    LODWORD(v468) = 0;
    v46 = 0.0;
    goto LABEL_69;
  }

LABEL_1639:
  v288 = __sb__runningInSpringBoard();
  if (v288)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v521) = 0;
      LODWORD(v468) = 0;
      goto LABEL_1673;
    }
  }

  else
  {
    v361 = [MEMORY[0x277D75418] currentDevice];
    if ([v361 userInterfaceIdiom])
    {
      LODWORD(v521) = 0;
      LODWORD(v468) = 1;
      goto LABEL_1673;
    }
  }

  LODWORD(v468) = v288 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v295 = __sb__runningInSpringBoard();
    if (v295)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v447 = [MEMORY[0x277D759A0] mainScreen];
      [v447 _referenceBounds];
    }

    LODWORD(v521) = v295 ^ 1;
    BSSizeRoundForScale();
    if (v298 >= *(MEMORY[0x277D66E30] + 104))
    {
      v451 = 0;
      LODWORD(v452) = 0;
      LODWORD(v453) = 0;
      LODWORD(v454) = 0;
      LODWORD(v455) = 0;
      LODWORD(v456) = 0;
      LODWORD(v457) = 0;
      LODWORD(v466) = 0;
      LODWORD(v458) = 0;
      LODWORD(v467) = 0;
      v46 = 366.0;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v521) = 0;
  }

LABEL_1673:
  v296 = __sb__runningInSpringBoard();
  if (v296)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v458) = 0;
      LODWORD(v467) = 0;
      goto LABEL_1713;
    }
  }

  else
  {
    v355 = [MEMORY[0x277D75418] currentDevice];
    if ([v355 userInterfaceIdiom])
    {
      LODWORD(v458) = 0;
      LODWORD(v467) = 1;
      goto LABEL_1713;
    }
  }

  LODWORD(v467) = v296 ^ 1;
  if (SBFEffectiveHomeButtonType() != 2)
  {
    LODWORD(v458) = 0;
    goto LABEL_1713;
  }

  v297 = __sb__runningInSpringBoard();
  if (v297)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v446 = [MEMORY[0x277D759A0] mainScreen];
    [v446 _referenceBounds];
  }

  LODWORD(v458) = v297 ^ 1;
  BSSizeRoundForScale();
  if (v302 < *(MEMORY[0x277D66E30] + 104))
  {
LABEL_1713:
    if (_SBF_Private_IsD53())
    {
      v451 = 0;
      LODWORD(v452) = 0;
      LODWORD(v453) = 0;
      LODWORD(v454) = 0;
      LODWORD(v455) = 0;
      LODWORD(v456) = 0;
      LODWORD(v457) = 0;
      LODWORD(v466) = 0;
      v46 = 300.0;
      goto LABEL_69;
    }
  }

  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
  {
    goto LABEL_1752;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    goto LABEL_1754;
  }

  if (_SBF_Private_IsD52OrSimilarDevice())
  {
LABEL_1752:
    v451 = 0;
    LODWORD(v452) = 0;
    LODWORD(v453) = 0;
    LODWORD(v454) = 0;
    LODWORD(v455) = 0;
    LODWORD(v456) = 0;
    LODWORD(v457) = 0;
    LODWORD(v466) = 0;
    v46 = 375.0;
    goto LABEL_69;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
LABEL_1754:
    v451 = 0;
    LODWORD(v452) = 0;
    LODWORD(v453) = 0;
    LODWORD(v454) = 0;
    LODWORD(v455) = 0;
    LODWORD(v456) = 0;
    LODWORD(v457) = 0;
    LODWORD(v466) = 0;
    v46 = 320.0;
    goto LABEL_69;
  }

  v306 = __sb__runningInSpringBoard();
  if (v306)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v457) = 0;
      LODWORD(v466) = 0;
      goto LABEL_1813;
    }
  }

  else
  {
    v445 = [MEMORY[0x277D75418] currentDevice];
    if ([v445 userInterfaceIdiom])
    {
      LODWORD(v457) = 0;
      LODWORD(v466) = 1;
      goto LABEL_1813;
    }
  }

  LODWORD(v466) = v306 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v310 = __sb__runningInSpringBoard();
    if (v310)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v442 = [MEMORY[0x277D759A0] mainScreen];
      [v442 _referenceBounds];
    }

    LODWORD(v457) = v310 ^ 1;
    BSSizeRoundForScale();
    if (v326 >= *(MEMORY[0x277D66E30] + 88))
    {
      v451 = 0;
      LODWORD(v452) = 0;
      LODWORD(v453) = 0;
      LODWORD(v454) = 0;
      LODWORD(v455) = 0;
      LODWORD(v456) = 0;
      v46 = 0.0;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v457) = 0;
  }

LABEL_1813:
  v311 = __sb__runningInSpringBoard();
  if (v311)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v455) = 0;
      LODWORD(v456) = 0;
      goto LABEL_1853;
    }
  }

  else
  {
    v444 = [MEMORY[0x277D75418] currentDevice];
    if ([v444 userInterfaceIdiom])
    {
      LODWORD(v455) = 0;
      LODWORD(v456) = 1;
      goto LABEL_1853;
    }
  }

  LODWORD(v456) = v311 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v315 = __sb__runningInSpringBoard();
    if (v315)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v441 = [MEMORY[0x277D759A0] mainScreen];
      [v441 _referenceBounds];
    }

    LODWORD(v455) = v315 ^ 1;
    BSSizeRoundForScale();
    if (v330 >= *(MEMORY[0x277D66E30] + 72))
    {
      v451 = 0;
      LODWORD(v452) = 0;
      LODWORD(v453) = 0;
      LODWORD(v454) = 0;
      v46 = 0.0;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v455) = 0;
  }

LABEL_1853:
  v316 = __sb__runningInSpringBoard();
  if (!v316)
  {
    v343 = [MEMORY[0x277D75418] currentDevice];
    if ([v343 userInterfaceIdiom])
    {
      LODWORD(v453) = 0;
      LODWORD(v454) = 1;
      goto LABEL_1893;
    }

LABEL_1889:
    LODWORD(v454) = v316 ^ 1;
    v317 = __sb__runningInSpringBoard();
    if (v317)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v443 = [MEMORY[0x277D759A0] mainScreen];
      [v443 _referenceBounds];
    }

    LODWORD(v453) = v317 ^ 1;
    BSSizeRoundForScale();
    if (v318 >= *(MEMORY[0x277D66E30] + 56))
    {
      goto LABEL_1896;
    }

    goto LABEL_1893;
  }

  if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
  {
    goto LABEL_1889;
  }

  LODWORD(v453) = 0;
  LODWORD(v454) = 0;
LABEL_1893:
  v319 = __sb__runningInSpringBoard();
  if (v319)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
LABEL_1896:
      v451 = 0;
      LODWORD(v452) = 0;
      v46 = 0.0;
      goto LABEL_69;
    }
  }

  else
  {
    v341 = [MEMORY[0x277D75418] currentDevice];
    if ([v341 userInterfaceIdiom])
    {
      v451 = 0;
      v46 = 0.0;
      LODWORD(v452) = 1;
      goto LABEL_69;
    }
  }

  LODWORD(v452) = v319 ^ 1;
  v334 = __sb__runningInSpringBoard();
  if (v334)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v340 = [MEMORY[0x277D759A0] mainScreen];
    [v340 _referenceBounds];
  }

  v451 = v334 ^ 1;
  BSSizeRoundForScale();
  v46 = 0.0;
LABEL_69:
  v54 = __sb__runningInSpringBoard();
  v561 = v13;
  if (v54)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v55 = 0;
      v56 = 0;
      goto LABEL_78;
    }
  }

  else
  {
    v439 = [MEMORY[0x277D75418] currentDevice];
    if ([v439 userInterfaceIdiom] != 1)
    {
      v55 = 0;
      v56 = 1;
      goto LABEL_78;
    }
  }

  v56 = v54 ^ 1u;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v57 = __sb__runningInSpringBoard();
    if (v57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v422 = [MEMORY[0x277D759A0] mainScreen];
      [v422 _referenceBounds];
    }

    v55 = v57 ^ 1;
    BSSizeRoundForScale();
    if (v76 == *(MEMORY[0x277D66E30] + 288) && v75 == *(MEMORY[0x277D66E30] + 296))
    {
      v517 = v57 ^ 1;
      v520 = v56;
      LODWORD(v495) = 0;
      LODWORD(v494) = 0;
      LODWORD(v496) = 0;
      LODWORD(v493) = 0;
      LODWORD(v492) = 0;
      LODWORD(v491) = 0;
      LODWORD(v497) = 0;
      LODWORD(v490) = 0;
      LODWORD(v498) = 0;
      LODWORD(v489) = 0;
      LODWORD(v488) = 0;
      LODWORD(v465) = 0;
      LODWORD(v499) = 0;
      LODWORD(v464) = 0;
      LODWORD(v500) = 0;
      LODWORD(v487) = 0;
      LODWORD(v463) = 0;
      LODWORD(v486) = 0;
      LODWORD(v501) = 0;
      LODWORD(v485) = 0;
      LODWORD(v502) = 0;
      LODWORD(v484) = 0;
      LODWORD(v503) = 0;
      LODWORD(v483) = 0;
      LODWORD(v482) = 0;
      LODWORD(v481) = 0;
      LODWORD(v504) = 0;
      LODWORD(v480) = 0;
      v505 = 0;
      LODWORD(v479) = 0;
      LODWORD(v478) = 0;
      LODWORD(v477) = 0;
      LODWORD(v476) = 0;
      v508 = 0;
      LODWORD(v475) = 0;
      LODWORD(v474) = 0;
      LODWORD(v462) = 0;
      LODWORD(v461) = 0;
      v511 = 0;
      LODWORD(v473) = 0;
      LODWORD(v460) = 0;
      v450 = 0;
      LODWORD(v459) = 0;
      v514 = 0;
      v449 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0.0;
      goto LABEL_132;
    }
  }

  else
  {
    v55 = 0;
  }

LABEL_78:
  v58 = __sb__runningInSpringBoard();
  v520 = v56;
  v517 = v55;
  if (v58)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v59 = 0;
      v60 = 0;
      goto LABEL_87;
    }
  }

  else
  {
    v437 = [MEMORY[0x277D75418] currentDevice];
    if ([v437 userInterfaceIdiom] != 1)
    {
      v59 = 0;
      v60 = 1;
      goto LABEL_87;
    }
  }

  v60 = v58 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v57 = __sb__runningInSpringBoard();
    if (v57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v420 = [MEMORY[0x277D759A0] mainScreen];
      [v420 _referenceBounds];
    }

    v59 = v57 ^ 1;
    BSSizeRoundForScale();
    if (v77 >= *(MEMORY[0x277D66E30] + 440))
    {
      LODWORD(v514) = v57 ^ 1;
      HIDWORD(v514) = v60;
      LODWORD(v495) = 0;
      LODWORD(v494) = 0;
      LODWORD(v496) = 0;
      LODWORD(v493) = 0;
      LODWORD(v492) = 0;
      LODWORD(v491) = 0;
      LODWORD(v497) = 0;
      LODWORD(v490) = 0;
      LODWORD(v498) = 0;
      LODWORD(v489) = 0;
      LODWORD(v488) = 0;
      LODWORD(v465) = 0;
      LODWORD(v499) = 0;
      LODWORD(v464) = 0;
      LODWORD(v500) = 0;
      LODWORD(v487) = 0;
      LODWORD(v463) = 0;
      LODWORD(v486) = 0;
      LODWORD(v501) = 0;
      LODWORD(v485) = 0;
      LODWORD(v502) = 0;
      LODWORD(v484) = 0;
      LODWORD(v503) = 0;
      LODWORD(v483) = 0;
      LODWORD(v482) = 0;
      LODWORD(v481) = 0;
      LODWORD(v504) = 0;
      LODWORD(v480) = 0;
      v505 = 0;
      LODWORD(v479) = 0;
      LODWORD(v478) = 0;
      LODWORD(v477) = 0;
      LODWORD(v476) = 0;
      v508 = 0;
      LODWORD(v475) = 0;
      LODWORD(v474) = 0;
      LODWORD(v462) = 0;
      LODWORD(v461) = 0;
      v511 = 0;
      LODWORD(v473) = 0;
      LODWORD(v460) = 0;
      v450 = 0;
      LODWORD(v459) = 0;
      v449 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0.0;
      goto LABEL_132;
    }
  }

  else
  {
    v59 = 0;
  }

LABEL_87:
  v61 = __sb__runningInSpringBoard();
  v514 = __PAIR64__(v60, v59);
  if (v61)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v62 = 0;
      v63 = 0;
      goto LABEL_96;
    }
  }

  else
  {
    v435 = [MEMORY[0x277D75418] currentDevice];
    if ([v435 userInterfaceIdiom] != 1)
    {
      v62 = 0;
      v63 = 1;
      goto LABEL_96;
    }
  }

  v63 = v61 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v57 = __sb__runningInSpringBoard();
    if (v57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v418 = [MEMORY[0x277D759A0] mainScreen];
      [v418 _referenceBounds];
    }

    v62 = v57 ^ 1;
    BSSizeRoundForScale();
    if (v78 >= *(MEMORY[0x277D66E30] + 376))
    {
      LODWORD(v511) = v57 ^ 1;
      HIDWORD(v511) = v63;
      LODWORD(v495) = 0;
      LODWORD(v494) = 0;
      LODWORD(v496) = 0;
      LODWORD(v493) = 0;
      LODWORD(v492) = 0;
      LODWORD(v491) = 0;
      LODWORD(v497) = 0;
      LODWORD(v490) = 0;
      LODWORD(v498) = 0;
      LODWORD(v489) = 0;
      LODWORD(v488) = 0;
      LODWORD(v465) = 0;
      LODWORD(v499) = 0;
      LODWORD(v464) = 0;
      LODWORD(v500) = 0;
      LODWORD(v487) = 0;
      LODWORD(v463) = 0;
      LODWORD(v486) = 0;
      LODWORD(v501) = 0;
      LODWORD(v485) = 0;
      LODWORD(v502) = 0;
      LODWORD(v484) = 0;
      LODWORD(v503) = 0;
      LODWORD(v483) = 0;
      LODWORD(v482) = 0;
      LODWORD(v481) = 0;
      LODWORD(v504) = 0;
      LODWORD(v480) = 0;
      v505 = 0;
      LODWORD(v479) = 0;
      LODWORD(v478) = 0;
      LODWORD(v477) = 0;
      LODWORD(v476) = 0;
      v508 = 0;
      LODWORD(v475) = 0;
      LODWORD(v474) = 0;
      LODWORD(v462) = 0;
      LODWORD(v461) = 0;
      LODWORD(v473) = 0;
      LODWORD(v460) = 0;
      v450 = 0;
      LODWORD(v459) = 0;
      v449 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0.0;
      goto LABEL_132;
    }
  }

  else
  {
    v62 = 0;
  }

LABEL_96:
  v64 = __sb__runningInSpringBoard();
  v511 = __PAIR64__(v63, v62);
  if (v64)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v508 = 0;
      goto LABEL_105;
    }
  }

  else
  {
    v433 = [MEMORY[0x277D75418] currentDevice];
    if ([v433 userInterfaceIdiom] != 1)
    {
      v508 = 0x100000000;
      goto LABEL_105;
    }
  }

  HIDWORD(v508) = v64 ^ 1;
  v57 = __sb__runningInSpringBoard();
  if (v57)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v427 = [MEMORY[0x277D759A0] mainScreen];
    [v427 _referenceBounds];
  }

  LODWORD(v508) = v57 ^ 1;
  BSSizeRoundForScale();
  if (v65 >= *(MEMORY[0x277D66E30] + 280))
  {
    LODWORD(v495) = 0;
    LODWORD(v494) = 0;
    LODWORD(v496) = 0;
    LODWORD(v493) = 0;
    LODWORD(v492) = 0;
    LODWORD(v491) = 0;
    LODWORD(v497) = 0;
    LODWORD(v490) = 0;
    LODWORD(v498) = 0;
    LODWORD(v489) = 0;
    LODWORD(v488) = 0;
    LODWORD(v465) = 0;
    LODWORD(v499) = 0;
    LODWORD(v464) = 0;
    LODWORD(v500) = 0;
    LODWORD(v487) = 0;
    LODWORD(v463) = 0;
    LODWORD(v486) = 0;
    LODWORD(v501) = 0;
    LODWORD(v485) = 0;
    LODWORD(v502) = 0;
    LODWORD(v484) = 0;
    LODWORD(v503) = 0;
    LODWORD(v483) = 0;
    LODWORD(v482) = 0;
    LODWORD(v481) = 0;
    LODWORD(v504) = 0;
    LODWORD(v480) = 0;
    v505 = 0;
    LODWORD(v479) = 0;
    LODWORD(v478) = 0;
    LODWORD(v477) = 0;
    LODWORD(v476) = 0;
    LODWORD(v475) = 0;
    LODWORD(v474) = 0;
    LODWORD(v462) = 0;
    LODWORD(v461) = 0;
    LODWORD(v473) = 0;
    LODWORD(v460) = 0;
    v450 = 0;
    LODWORD(v459) = 0;
    v449 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0.0;
    goto LABEL_132;
  }

LABEL_105:
  v66 = __sb__runningInSpringBoard();
  if (v66)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v505 = 0;
      goto LABEL_115;
    }
  }

  else
  {
    v431 = [MEMORY[0x277D75418] currentDevice];
    if ([v431 userInterfaceIdiom] != 1)
    {
      v505 = 0x100000000;
      goto LABEL_115;
    }
  }

  HIDWORD(v505) = v66 ^ 1;
  v57 = __sb__runningInSpringBoard();
  if (v57)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v423 = [MEMORY[0x277D759A0] mainScreen];
    [v423 _referenceBounds];
  }

  LODWORD(v505) = v57 ^ 1;
  BSSizeRoundForScale();
  if (v73 >= *(MEMORY[0x277D66E30] + 264))
  {
    LODWORD(v495) = 0;
    LODWORD(v494) = 0;
    LODWORD(v496) = 0;
    LODWORD(v493) = 0;
    LODWORD(v492) = 0;
    LODWORD(v491) = 0;
    LODWORD(v497) = 0;
    LODWORD(v490) = 0;
    LODWORD(v498) = 0;
    LODWORD(v489) = 0;
    LODWORD(v488) = 0;
    LODWORD(v465) = 0;
    LODWORD(v499) = 0;
    LODWORD(v464) = 0;
    LODWORD(v500) = 0;
    LODWORD(v487) = 0;
    LODWORD(v463) = 0;
    LODWORD(v486) = 0;
    LODWORD(v501) = 0;
    LODWORD(v485) = 0;
    LODWORD(v502) = 0;
    LODWORD(v484) = 0;
    LODWORD(v503) = 0;
    LODWORD(v483) = 0;
    LODWORD(v482) = 0;
    LODWORD(v481) = 0;
    LODWORD(v504) = 0;
    LODWORD(v480) = 0;
    LODWORD(v479) = 0;
    LODWORD(v478) = 0;
    LODWORD(v477) = 0;
    LODWORD(v476) = 0;
    LODWORD(v475) = 0;
    LODWORD(v474) = 0;
    LODWORD(v462) = 0;
    LODWORD(v461) = 0;
    LODWORD(v473) = 0;
    LODWORD(v460) = 0;
    v450 = 0;
    LODWORD(v459) = 0;
    v449 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0.0;
    goto LABEL_132;
  }

LABEL_115:
  v74 = __sb__runningInSpringBoard();
  if (v74)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      LODWORD(v503) = 0;
      LODWORD(v504) = 0;
      goto LABEL_736;
    }
  }

  else
  {
    v429 = [MEMORY[0x277D75418] currentDevice];
    if ([v429 userInterfaceIdiom] != 1)
    {
      LODWORD(v503) = 0;
      LODWORD(v504) = 1;
      goto LABEL_736;
    }
  }

  LODWORD(v504) = v74 ^ 1;
  v57 = __sb__runningInSpringBoard();
  if (v57)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v416 = [MEMORY[0x277D759A0] mainScreen];
    [v416 _referenceBounds];
  }

  LODWORD(v503) = v57 ^ 1;
  BSSizeRoundForScale();
  if (v159 >= *(MEMORY[0x277D66E30] + 248))
  {
    LODWORD(v495) = 0;
    LODWORD(v494) = 0;
    LODWORD(v496) = 0;
    LODWORD(v493) = 0;
    LODWORD(v492) = 0;
    LODWORD(v491) = 0;
    LODWORD(v497) = 0;
    LODWORD(v490) = 0;
    LODWORD(v498) = 0;
    LODWORD(v489) = 0;
    LODWORD(v488) = 0;
    LODWORD(v465) = 0;
    LODWORD(v499) = 0;
    LODWORD(v464) = 0;
    LODWORD(v500) = 0;
    LODWORD(v487) = 0;
    LODWORD(v463) = 0;
    LODWORD(v486) = 0;
    LODWORD(v501) = 0;
    LODWORD(v485) = 0;
    LODWORD(v502) = 0;
    LODWORD(v484) = 0;
    LODWORD(v483) = 0;
    LODWORD(v482) = 0;
    LODWORD(v481) = 0;
    LODWORD(v480) = 0;
    LODWORD(v479) = 0;
    LODWORD(v478) = 0;
    LODWORD(v477) = 0;
    LODWORD(v476) = 0;
    LODWORD(v475) = 0;
    LODWORD(v474) = 0;
    LODWORD(v462) = 0;
    LODWORD(v461) = 0;
    LODWORD(v473) = 0;
    LODWORD(v460) = 0;
    v450 = 0;
    LODWORD(v459) = 0;
    v449 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0.0;
    goto LABEL_132;
  }

LABEL_736:
  v57 = __sb__runningInSpringBoard();
  if (v57)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_738;
    }

LABEL_744:
    LODWORD(v495) = 0;
    LODWORD(v494) = 0;
    LODWORD(v496) = 0;
    LODWORD(v493) = 0;
    LODWORD(v492) = 0;
    LODWORD(v491) = 0;
    LODWORD(v497) = 0;
    LODWORD(v490) = 0;
    LODWORD(v498) = 0;
    LODWORD(v489) = 0;
    LODWORD(v488) = 0;
    LODWORD(v465) = 0;
    LODWORD(v499) = 0;
    LODWORD(v464) = 0;
    LODWORD(v500) = 0;
    LODWORD(v487) = 0;
    LODWORD(v463) = 0;
    LODWORD(v486) = 0;
    LODWORD(v501) = 0;
    LODWORD(v485) = 0;
    LODWORD(v484) = 0;
    LODWORD(v483) = 0;
    LODWORD(v482) = 0;
    LODWORD(v481) = 0;
    LODWORD(v480) = 0;
    LODWORD(v479) = 0;
    LODWORD(v478) = 0;
    LODWORD(v477) = 0;
    LODWORD(v476) = 0;
    LODWORD(v475) = 0;
    LODWORD(v474) = 0;
    LODWORD(v462) = 0;
    LODWORD(v461) = 0;
    LODWORD(v473) = 0;
    LODWORD(v460) = 0;
    v450 = 0;
    LODWORD(v459) = 0;
    v449 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0.0;
    LODWORD(v502) = v57 ^ 1;
    goto LABEL_132;
  }

  v425 = [MEMORY[0x277D75418] currentDevice];
  if ([v425 userInterfaceIdiom] == 1)
  {
    goto LABEL_744;
  }

LABEL_738:
  LODWORD(v502) = v57 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_742:
    LODWORD(v500) = 0;
    LODWORD(v501) = 0;
    goto LABEL_810;
  }

  v160 = __sb__runningInSpringBoard();
  if (v160)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_742;
    }
  }

  else
  {
    v412 = [MEMORY[0x277D75418] currentDevice];
    if ([v412 userInterfaceIdiom])
    {
      LODWORD(v500) = 0;
      LODWORD(v501) = 1;
      goto LABEL_810;
    }
  }

  LODWORD(v501) = v160 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v57 = __sb__runningInSpringBoard();
    if (v57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v398 = [MEMORY[0x277D759A0] mainScreen];
      [v398 _referenceBounds];
    }

    LODWORD(v500) = v57 ^ 1;
    BSSizeRoundForScale();
    if (v177 >= *(MEMORY[0x277D66E30] + 200))
    {
      LODWORD(v495) = 0;
      LODWORD(v494) = 0;
      LODWORD(v496) = 0;
      LODWORD(v493) = 0;
      LODWORD(v492) = 0;
      LODWORD(v491) = 0;
      LODWORD(v497) = 0;
      LODWORD(v490) = 0;
      LODWORD(v498) = 0;
      LODWORD(v489) = 0;
      LODWORD(v488) = 0;
      LODWORD(v465) = 0;
      LODWORD(v499) = 0;
      LODWORD(v464) = 0;
      LODWORD(v487) = 0;
      LODWORD(v463) = 0;
      LODWORD(v486) = 0;
      LODWORD(v485) = 0;
      LODWORD(v484) = 0;
      LODWORD(v483) = 0;
      LODWORD(v482) = 0;
      LODWORD(v481) = 0;
      LODWORD(v480) = 0;
      LODWORD(v479) = 0;
      LODWORD(v478) = 0;
      LODWORD(v477) = 0;
      LODWORD(v476) = 0;
      LODWORD(v475) = 0;
      LODWORD(v474) = 0;
      LODWORD(v462) = 0;
      LODWORD(v461) = 0;
      LODWORD(v473) = 0;
      LODWORD(v460) = 0;
      v450 = 0;
      LODWORD(v459) = 0;
      v449 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 579.66666;
      goto LABEL_132;
    }
  }

  else
  {
    LODWORD(v500) = 0;
  }

LABEL_810:
  v57 = __sb__runningInSpringBoard();
  if (v57)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v498) = 0;
      LODWORD(v499) = 0;
      goto LABEL_820;
    }
  }

  else
  {
    v414 = [MEMORY[0x277D75418] currentDevice];
    if ([v414 userInterfaceIdiom])
    {
      LODWORD(v498) = 0;
      LODWORD(v499) = 1;
      goto LABEL_820;
    }
  }

  LODWORD(v499) = v57 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v57 = __sb__runningInSpringBoard();
    if (v57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v404 = [MEMORY[0x277D759A0] mainScreen];
      [v404 _referenceBounds];
    }

    LODWORD(v498) = v57 ^ 1;
    BSSizeRoundForScale();
    if (v170 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_824;
    }
  }

  else
  {
    LODWORD(v498) = 0;
  }

LABEL_820:
  if (_SBF_Private_IsD94Like())
  {
    LODWORD(v495) = 0;
    LODWORD(v494) = 0;
    LODWORD(v496) = 0;
    LODWORD(v493) = 0;
    LODWORD(v492) = 0;
    LODWORD(v491) = 0;
    LODWORD(v497) = 0;
    LODWORD(v490) = 0;
    LODWORD(v489) = 0;
    LODWORD(v488) = 0;
    LODWORD(v465) = 0;
    LODWORD(v464) = 0;
    LODWORD(v487) = 0;
    LODWORD(v463) = 0;
    LODWORD(v486) = 0;
    LODWORD(v485) = 0;
    LODWORD(v484) = 0;
    LODWORD(v483) = 0;
    LODWORD(v482) = 0;
    LODWORD(v481) = 0;
    LODWORD(v480) = 0;
    LODWORD(v479) = 0;
    LODWORD(v478) = 0;
    LODWORD(v477) = 0;
    LODWORD(v476) = 0;
    LODWORD(v475) = 0;
    LODWORD(v474) = 0;
    LODWORD(v462) = 0;
    LODWORD(v461) = 0;
    LODWORD(v473) = 0;
    LODWORD(v460) = 0;
    v450 = 0;
    LODWORD(v459) = 0;
    v449 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 507.66666;
    goto LABEL_132;
  }

LABEL_824:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_828:
    LODWORD(v496) = 0;
    LODWORD(v497) = 0;
    goto LABEL_931;
  }

  v171 = __sb__runningInSpringBoard();
  if (v171)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_828;
    }
  }

  else
  {
    v406 = [MEMORY[0x277D75418] currentDevice];
    if ([v406 userInterfaceIdiom])
    {
      LODWORD(v496) = 0;
      LODWORD(v497) = 1;
      goto LABEL_931;
    }
  }

  LODWORD(v497) = v171 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v57 = __sb__runningInSpringBoard();
    if (v57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v388 = [MEMORY[0x277D759A0] mainScreen];
      [v388 _referenceBounds];
    }

    LODWORD(v496) = v57 ^ 1;
    BSSizeRoundForScale();
    if (v200 >= *(MEMORY[0x277D66E30] + 136))
    {
      LODWORD(v495) = 0;
      LODWORD(v494) = 0;
      LODWORD(v493) = 0;
      LODWORD(v492) = 0;
      LODWORD(v491) = 0;
      LODWORD(v490) = 0;
      LODWORD(v489) = 0;
      LODWORD(v488) = 0;
      LODWORD(v465) = 0;
      LODWORD(v464) = 0;
      LODWORD(v487) = 0;
      LODWORD(v463) = 0;
      LODWORD(v486) = 0;
      LODWORD(v485) = 0;
      LODWORD(v484) = 0;
      LODWORD(v483) = 0;
      LODWORD(v482) = 0;
      LODWORD(v481) = 0;
      LODWORD(v480) = 0;
      LODWORD(v479) = 0;
      LODWORD(v478) = 0;
      LODWORD(v477) = 0;
      LODWORD(v476) = 0;
      LODWORD(v475) = 0;
      LODWORD(v474) = 0;
      LODWORD(v462) = 0;
      LODWORD(v461) = 0;
      LODWORD(v473) = 0;
      LODWORD(v460) = 0;
      v450 = 0;
      LODWORD(v459) = 0;
      v449 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 565.0;
      goto LABEL_132;
    }
  }

  else
  {
    LODWORD(v496) = 0;
  }

LABEL_931:
  v57 = __sb__runningInSpringBoard();
  if (v57)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v495) = 0;
      LODWORD(v494) = 0;
      goto LABEL_941;
    }
  }

  else
  {
    v410 = [MEMORY[0x277D75418] currentDevice];
    if ([v410 userInterfaceIdiom])
    {
      LODWORD(v494) = 0;
      LODWORD(v495) = 1;
      goto LABEL_941;
    }
  }

  LODWORD(v495) = v57 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v57 = __sb__runningInSpringBoard();
    if (v57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v396 = [MEMORY[0x277D759A0] mainScreen];
      [v396 _referenceBounds];
    }

    LODWORD(v494) = v57 ^ 1;
    BSSizeRoundForScale();
    if (v188 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_945;
    }
  }

  else
  {
    LODWORD(v494) = 0;
  }

LABEL_941:
  if (_SBF_Private_IsD64Like())
  {
    LODWORD(v493) = 0;
    LODWORD(v492) = 0;
    LODWORD(v491) = 0;
    LODWORD(v490) = 0;
    LODWORD(v489) = 0;
    LODWORD(v488) = 0;
    LODWORD(v465) = 0;
    LODWORD(v464) = 0;
    LODWORD(v487) = 0;
    LODWORD(v463) = 0;
    LODWORD(v486) = 0;
    LODWORD(v485) = 0;
    LODWORD(v484) = 0;
    LODWORD(v483) = 0;
    LODWORD(v482) = 0;
    LODWORD(v481) = 0;
    LODWORD(v480) = 0;
    LODWORD(v479) = 0;
    LODWORD(v478) = 0;
    LODWORD(v477) = 0;
    LODWORD(v476) = 0;
    LODWORD(v475) = 0;
    LODWORD(v474) = 0;
    LODWORD(v462) = 0;
    LODWORD(v461) = 0;
    LODWORD(v473) = 0;
    LODWORD(v460) = 0;
    v450 = 0;
    LODWORD(v459) = 0;
    v449 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 495.0;
    goto LABEL_132;
  }

LABEL_945:
  v189 = __sb__runningInSpringBoard();
  if (v189)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v493) = 0;
      LODWORD(v492) = 0;
      goto LABEL_955;
    }
  }

  else
  {
    v407 = [MEMORY[0x277D75418] currentDevice];
    if ([v407 userInterfaceIdiom])
    {
      LODWORD(v492) = 0;
      LODWORD(v493) = 1;
      goto LABEL_955;
    }
  }

  LODWORD(v493) = v189 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v57 = __sb__runningInSpringBoard();
    if (v57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v390 = [MEMORY[0x277D759A0] mainScreen];
      [v390 _referenceBounds];
    }

    LODWORD(v492) = v57 ^ 1;
    BSSizeRoundForScale();
    if (v196 >= *(MEMORY[0x277D66E30] + 136))
    {
      LODWORD(v491) = 0;
      LODWORD(v490) = 0;
      LODWORD(v489) = 0;
      LODWORD(v488) = 0;
      LODWORD(v465) = 0;
      LODWORD(v464) = 0;
      LODWORD(v487) = 0;
      LODWORD(v463) = 0;
      LODWORD(v486) = 0;
      LODWORD(v485) = 0;
      LODWORD(v484) = 0;
      LODWORD(v483) = 0;
      LODWORD(v482) = 0;
      LODWORD(v481) = 0;
      LODWORD(v480) = 0;
      LODWORD(v479) = 0;
      LODWORD(v478) = 0;
      LODWORD(v477) = 0;
      LODWORD(v476) = 0;
      LODWORD(v475) = 0;
      LODWORD(v474) = 0;
      LODWORD(v462) = 0;
      LODWORD(v461) = 0;
      LODWORD(v473) = 0;
      LODWORD(v460) = 0;
      v450 = 0;
      LODWORD(v459) = 0;
      v449 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 565.0;
      goto LABEL_132;
    }
  }

  else
  {
    LODWORD(v492) = 0;
  }

LABEL_955:
  v57 = __sb__runningInSpringBoard();
  if (v57)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v491) = 0;
      LODWORD(v490) = 0;
      goto LABEL_1039;
    }
  }

  else
  {
    v402 = [MEMORY[0x277D75418] currentDevice];
    if ([v402 userInterfaceIdiom])
    {
      LODWORD(v490) = 0;
      LODWORD(v491) = 1;
      goto LABEL_1039;
    }
  }

  LODWORD(v491) = v57 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v57 = __sb__runningInSpringBoard();
    if (v57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v386 = [MEMORY[0x277D759A0] mainScreen];
      [v386 _referenceBounds];
    }

    LODWORD(v490) = v57 ^ 1;
    BSSizeRoundForScale();
    if (v205 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_1087;
    }
  }

  else
  {
    LODWORD(v490) = 0;
  }

LABEL_1039:
  if (_SBF_Private_IsD54())
  {
    LODWORD(v489) = 0;
    LODWORD(v488) = 0;
    LODWORD(v465) = 0;
    LODWORD(v464) = 0;
    LODWORD(v487) = 0;
    LODWORD(v463) = 0;
    LODWORD(v486) = 0;
    LODWORD(v485) = 0;
    LODWORD(v484) = 0;
    LODWORD(v483) = 0;
    LODWORD(v482) = 0;
    LODWORD(v481) = 0;
    LODWORD(v480) = 0;
    LODWORD(v479) = 0;
    LODWORD(v478) = 0;
    LODWORD(v477) = 0;
    LODWORD(v476) = 0;
    LODWORD(v475) = 0;
    LODWORD(v474) = 0;
    LODWORD(v462) = 0;
    LODWORD(v461) = 0;
    LODWORD(v473) = 0;
    LODWORD(v460) = 0;
    v450 = 0;
    LODWORD(v459) = 0;
    v449 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 495.0;
    goto LABEL_132;
  }

LABEL_1087:
  v206 = __sb__runningInSpringBoard();
  if (v206)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v489) = 0;
      LODWORD(v488) = 0;
      goto LABEL_1123;
    }
  }

  else
  {
    v400 = [MEMORY[0x277D75418] currentDevice];
    if ([v400 userInterfaceIdiom])
    {
      LODWORD(v488) = 0;
      LODWORD(v489) = 1;
      goto LABEL_1123;
    }
  }

  LODWORD(v489) = v206 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v213 = __sb__runningInSpringBoard();
    if (v213)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v379 = [MEMORY[0x277D759A0] mainScreen];
      [v379 _referenceBounds];
    }

    v57 = v213 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v488) = v57;
    if (v218 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      LODWORD(v465) = 0;
      LODWORD(v464) = 0;
      LODWORD(v487) = 0;
      LODWORD(v463) = 0;
      LODWORD(v486) = 0;
      LODWORD(v485) = 0;
      LODWORD(v484) = 0;
      LODWORD(v483) = 0;
      LODWORD(v482) = 0;
      LODWORD(v481) = 0;
      LODWORD(v480) = 0;
      LODWORD(v479) = 0;
      LODWORD(v478) = 0;
      LODWORD(v477) = 0;
      LODWORD(v476) = 0;
      LODWORD(v475) = 0;
      LODWORD(v474) = 0;
      LODWORD(v462) = 0;
      LODWORD(v461) = 0;
      LODWORD(v473) = 0;
      LODWORD(v460) = 0;
      v450 = 0;
      LODWORD(v459) = 0;
      v449 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0.0;
      goto LABEL_132;
    }
  }

  else
  {
    LODWORD(v488) = 0;
  }

LABEL_1123:
  v57 = __sb__runningInSpringBoard();
  if (v57)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v465) = 0;
      LODWORD(v464) = 0;
      goto LABEL_1160;
    }
  }

  else
  {
    v394 = [MEMORY[0x277D75418] currentDevice];
    if ([v394 userInterfaceIdiom])
    {
      LODWORD(v464) = 0;
      LODWORD(v465) = 1;
      goto LABEL_1160;
    }
  }

  LODWORD(v465) = v57 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v57 = __sb__runningInSpringBoard();
    if (v57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v377 = [MEMORY[0x277D759A0] mainScreen];
      [v377 _referenceBounds];
    }

    LODWORD(v464) = v57 ^ 1;
    BSSizeRoundForScale();
    if (v223 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_1204;
    }
  }

  else
  {
    LODWORD(v464) = 0;
  }

LABEL_1160:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    LODWORD(v487) = 0;
    LODWORD(v463) = 0;
    LODWORD(v486) = 0;
    LODWORD(v485) = 0;
    LODWORD(v484) = 0;
    LODWORD(v483) = 0;
    LODWORD(v482) = 0;
    LODWORD(v481) = 0;
    LODWORD(v480) = 0;
    LODWORD(v479) = 0;
    LODWORD(v478) = 0;
    LODWORD(v477) = 0;
    LODWORD(v476) = 0;
    LODWORD(v475) = 0;
    LODWORD(v474) = 0;
    LODWORD(v462) = 0;
    LODWORD(v461) = 0;
    LODWORD(v473) = 0;
    LODWORD(v460) = 0;
    v450 = 0;
    LODWORD(v459) = 0;
    v449 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0.0;
    goto LABEL_132;
  }

LABEL_1204:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_1208:
    LODWORD(v487) = 0;
    LODWORD(v463) = 0;
    goto LABEL_1258;
  }

  v224 = __sb__runningInSpringBoard();
  if (v224)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_1208;
    }
  }

  else
  {
    v384 = [MEMORY[0x277D75418] currentDevice];
    if ([v384 userInterfaceIdiom])
    {
      LODWORD(v463) = 0;
      LODWORD(v487) = 1;
      goto LABEL_1258;
    }
  }

  LODWORD(v487) = v224 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v234 = __sb__runningInSpringBoard();
    if (v234)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v366 = [MEMORY[0x277D759A0] mainScreen];
      [v366 _referenceBounds];
    }

    v57 = v234 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v463) = v57;
    if (v244 >= *(MEMORY[0x277D66E30] + 184))
    {
      LODWORD(v486) = 0;
      LODWORD(v485) = 0;
      LODWORD(v484) = 0;
      LODWORD(v483) = 0;
      LODWORD(v482) = 0;
      LODWORD(v481) = 0;
      LODWORD(v480) = 0;
      LODWORD(v479) = 0;
      LODWORD(v478) = 0;
      LODWORD(v477) = 0;
      LODWORD(v476) = 0;
      LODWORD(v475) = 0;
      LODWORD(v474) = 0;
      LODWORD(v462) = 0;
      LODWORD(v461) = 0;
      LODWORD(v473) = 0;
      LODWORD(v460) = 0;
      v450 = 0;
      LODWORD(v459) = 0;
      v449 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 579.0;
      goto LABEL_132;
    }
  }

  else
  {
    LODWORD(v463) = 0;
  }

LABEL_1258:
  v57 = __sb__runningInSpringBoard();
  if (v57)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v486) = 0;
      LODWORD(v485) = 0;
      goto LABEL_1268;
    }
  }

  else
  {
    v392 = [MEMORY[0x277D75418] currentDevice];
    if ([v392 userInterfaceIdiom])
    {
      LODWORD(v485) = 0;
      LODWORD(v486) = 1;
      goto LABEL_1268;
    }
  }

  LODWORD(v486) = v57 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v57 = __sb__runningInSpringBoard();
    if (v57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v372 = [MEMORY[0x277D759A0] mainScreen];
      [v372 _referenceBounds];
    }

    LODWORD(v485) = v57 ^ 1;
    BSSizeRoundForScale();
    if (v235 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_1272;
    }
  }

  else
  {
    LODWORD(v485) = 0;
  }

LABEL_1268:
  if (_SBF_Private_IsD93Like())
  {
    LODWORD(v484) = 0;
    LODWORD(v483) = 0;
    LODWORD(v482) = 0;
    LODWORD(v481) = 0;
    LODWORD(v480) = 0;
    LODWORD(v479) = 0;
    LODWORD(v478) = 0;
    LODWORD(v477) = 0;
    LODWORD(v476) = 0;
    LODWORD(v475) = 0;
    LODWORD(v474) = 0;
    LODWORD(v462) = 0;
    LODWORD(v461) = 0;
    LODWORD(v473) = 0;
    LODWORD(v460) = 0;
    v450 = 0;
    LODWORD(v459) = 0;
    v449 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 475.0;
    goto LABEL_132;
  }

LABEL_1272:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_1276:
    LODWORD(v484) = 0;
    LODWORD(v483) = 0;
    goto LABEL_1370;
  }

  v236 = __sb__runningInSpringBoard();
  if (v236)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_1276;
    }
  }

  else
  {
    v376 = [MEMORY[0x277D75418] currentDevice];
    if ([v376 userInterfaceIdiom])
    {
      LODWORD(v483) = 0;
      LODWORD(v484) = 1;
      goto LABEL_1370;
    }
  }

  LODWORD(v484) = v236 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v57 = __sb__runningInSpringBoard();
    if (v57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v358 = [MEMORY[0x277D759A0] mainScreen];
      [v358 _referenceBounds];
    }

    LODWORD(v483) = v57 ^ 1;
    BSSizeRoundForScale();
    if (v259 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v482) = 0;
      LODWORD(v481) = 0;
      LODWORD(v480) = 0;
      LODWORD(v479) = 0;
      LODWORD(v478) = 0;
      LODWORD(v477) = 0;
      LODWORD(v476) = 0;
      LODWORD(v475) = 0;
      LODWORD(v474) = 0;
      LODWORD(v462) = 0;
      LODWORD(v461) = 0;
      LODWORD(v473) = 0;
      LODWORD(v460) = 0;
      v450 = 0;
      LODWORD(v459) = 0;
      v449 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 567.0;
      goto LABEL_132;
    }
  }

  else
  {
    LODWORD(v483) = 0;
  }

LABEL_1370:
  v57 = __sb__runningInSpringBoard();
  if (v57)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v482) = 0;
      LODWORD(v481) = 0;
      goto LABEL_1380;
    }
  }

  else
  {
    v382 = [MEMORY[0x277D75418] currentDevice];
    if ([v382 userInterfaceIdiom])
    {
      LODWORD(v481) = 0;
      LODWORD(v482) = 1;
      goto LABEL_1380;
    }
  }

  LODWORD(v482) = v57 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v57 = __sb__runningInSpringBoard();
    if (v57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v364 = [MEMORY[0x277D759A0] mainScreen];
      [v364 _referenceBounds];
    }

    LODWORD(v481) = v57 ^ 1;
    BSSizeRoundForScale();
    if (v252 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_1384;
    }
  }

  else
  {
    LODWORD(v481) = 0;
  }

LABEL_1380:
  if (_SBF_Private_IsD63Like())
  {
    LODWORD(v480) = 0;
    LODWORD(v479) = 0;
    LODWORD(v478) = 0;
    LODWORD(v477) = 0;
    LODWORD(v476) = 0;
    LODWORD(v475) = 0;
    LODWORD(v474) = 0;
    LODWORD(v462) = 0;
    LODWORD(v461) = 0;
    LODWORD(v473) = 0;
    LODWORD(v460) = 0;
    v450 = 0;
    LODWORD(v459) = 0;
    v449 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 465.33333;
    goto LABEL_132;
  }

LABEL_1384:
  if (!_SBF_Private_IsD23Like())
  {
LABEL_1388:
    LODWORD(v480) = 0;
    LODWORD(v479) = 0;
    goto LABEL_1491;
  }

  v253 = __sb__runningInSpringBoard();
  if (v253)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_1388;
    }
  }

  else
  {
    v368 = [MEMORY[0x277D75418] currentDevice];
    if ([v368 userInterfaceIdiom])
    {
      LODWORD(v479) = 0;
      LODWORD(v480) = 1;
      goto LABEL_1491;
    }
  }

  LODWORD(v480) = v253 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v269 = __sb__runningInSpringBoard();
    if (v269)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v350 = [MEMORY[0x277D759A0] mainScreen];
      [v350 _referenceBounds];
    }

    v57 = v269 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v479) = v57;
    if (v284 >= *(MEMORY[0x277D66E30] + 216))
    {
      LODWORD(v478) = 0;
      LODWORD(v477) = 0;
      LODWORD(v476) = 0;
      LODWORD(v475) = 0;
      LODWORD(v474) = 0;
      LODWORD(v462) = 0;
      LODWORD(v461) = 0;
      LODWORD(v473) = 0;
      LODWORD(v460) = 0;
      v450 = 0;
      LODWORD(v459) = 0;
      v449 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 565.0;
      goto LABEL_132;
    }
  }

  else
  {
    LODWORD(v479) = 0;
  }

LABEL_1491:
  v57 = __sb__runningInSpringBoard();
  if (v57)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v478) = 0;
      LODWORD(v477) = 0;
      goto LABEL_1501;
    }
  }

  else
  {
    v374 = [MEMORY[0x277D75418] currentDevice];
    if ([v374 userInterfaceIdiom])
    {
      LODWORD(v477) = 0;
      LODWORD(v478) = 1;
      goto LABEL_1501;
    }
  }

  LODWORD(v478) = v57 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v57 = __sb__runningInSpringBoard();
    if (v57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v356 = [MEMORY[0x277D759A0] mainScreen];
      [v356 _referenceBounds];
    }

    LODWORD(v477) = v57 ^ 1;
    BSSizeRoundForScale();
    if (v270 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_1505;
    }
  }

  else
  {
    LODWORD(v477) = 0;
  }

LABEL_1501:
  if (_SBF_Private_IsD23Like())
  {
    LODWORD(v476) = 0;
    LODWORD(v475) = 0;
    LODWORD(v474) = 0;
    LODWORD(v462) = 0;
    LODWORD(v461) = 0;
    LODWORD(v473) = 0;
    LODWORD(v460) = 0;
    v450 = 0;
    LODWORD(v459) = 0;
    v449 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 495.0;
    goto LABEL_132;
  }

LABEL_1505:
  v271 = __sb__runningInSpringBoard();
  if (v271)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v476) = 0;
      LODWORD(v475) = 0;
      goto LABEL_1515;
    }
  }

  else
  {
    v370 = [MEMORY[0x277D75418] currentDevice];
    if ([v370 userInterfaceIdiom])
    {
      LODWORD(v475) = 0;
      LODWORD(v476) = 1;
      goto LABEL_1515;
    }
  }

  LODWORD(v476) = v271 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v57 = __sb__runningInSpringBoard();
    if (v57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v352 = [MEMORY[0x277D759A0] mainScreen];
      [v352 _referenceBounds];
    }

    LODWORD(v475) = v57 ^ 1;
    BSSizeRoundForScale();
    if (v280 >= *(MEMORY[0x277D66E30] + 120))
    {
      LODWORD(v474) = 0;
      LODWORD(v462) = 0;
      LODWORD(v461) = 0;
      LODWORD(v473) = 0;
      LODWORD(v460) = 0;
      v450 = 0;
      LODWORD(v459) = 0;
      v449 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0.0;
      goto LABEL_132;
    }
  }

  else
  {
    LODWORD(v475) = 0;
  }

LABEL_1515:
  v57 = __sb__runningInSpringBoard();
  if (v57)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v474) = 0;
      LODWORD(v462) = 0;
      goto LABEL_1599;
    }
  }

  else
  {
    v362 = [MEMORY[0x277D75418] currentDevice];
    if ([v362 userInterfaceIdiom])
    {
      LODWORD(v462) = 0;
      LODWORD(v474) = 1;
      goto LABEL_1599;
    }
  }

  LODWORD(v474) = v57 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v57 = __sb__runningInSpringBoard();
    if (v57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v348 = [MEMORY[0x277D759A0] mainScreen];
      [v348 _referenceBounds];
    }

    LODWORD(v462) = v57 ^ 1;
    BSSizeRoundForScale();
    if (v289 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_1647;
    }
  }

  else
  {
    LODWORD(v462) = 0;
  }

LABEL_1599:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    LODWORD(v461) = 0;
    LODWORD(v473) = 0;
    LODWORD(v460) = 0;
    v450 = 0;
    LODWORD(v459) = 0;
    v449 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0.0;
    goto LABEL_132;
  }

LABEL_1647:
  v290 = __sb__runningInSpringBoard();
  if (v290)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v461) = 0;
      LODWORD(v473) = 0;
      goto LABEL_1683;
    }
  }

  else
  {
    v360 = [MEMORY[0x277D75418] currentDevice];
    if ([v360 userInterfaceIdiom])
    {
      LODWORD(v473) = 0;
      LODWORD(v461) = 1;
      goto LABEL_1683;
    }
  }

  LODWORD(v461) = v290 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v57 = __sb__runningInSpringBoard();
    if (v57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v347 = [MEMORY[0x277D759A0] mainScreen];
      [v347 _referenceBounds];
    }

    LODWORD(v473) = v57 ^ 1;
    BSSizeRoundForScale();
    if (v299 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v460) = 0;
      v450 = 0;
      LODWORD(v459) = 0;
      v449 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 567.33;
      goto LABEL_132;
    }
  }

  else
  {
    LODWORD(v473) = 0;
  }

LABEL_1683:
  v57 = __sb__runningInSpringBoard();
  if (v57)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v460) = 0;
      v450 = 0;
      goto LABEL_1719;
    }
  }

  else
  {
    v354 = [MEMORY[0x277D75418] currentDevice];
    if ([v354 userInterfaceIdiom])
    {
      v450 = 0;
      LODWORD(v460) = 1;
      goto LABEL_1719;
    }
  }

  LODWORD(v460) = v57 ^ 1;
  if (SBFEffectiveHomeButtonType() != 2)
  {
    v450 = 0;
    goto LABEL_1719;
  }

  v57 = __sb__runningInSpringBoard();
  if (v57)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v346 = [MEMORY[0x277D759A0] mainScreen];
    [v346 _referenceBounds];
  }

  v450 = v57 ^ 1;
  BSSizeRoundForScale();
  if (v303 < *(MEMORY[0x277D66E30] + 104))
  {
LABEL_1719:
    if (_SBF_Private_IsD53())
    {
      LODWORD(v459) = 0;
      v449 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 465.33333;
      goto LABEL_132;
    }
  }

  v57 = &off_21EC94000;
  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
  {
    goto LABEL_1762;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    goto LABEL_1764;
  }

  if (_SBF_Private_IsD52OrSimilarDevice())
  {
LABEL_1762:
    LODWORD(v459) = 0;
    v449 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 594.0;
    goto LABEL_132;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
LABEL_1764:
    LODWORD(v459) = 0;
    v449 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 506.66666;
    goto LABEL_132;
  }

  v307 = __sb__runningInSpringBoard();
  if (v307)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v459) = 0;
      v449 = 0;
      goto LABEL_1823;
    }
  }

  else
  {
    v345 = [MEMORY[0x277D75418] currentDevice];
    if ([v345 userInterfaceIdiom])
    {
      v449 = 0;
      LODWORD(v459) = 1;
      goto LABEL_1823;
    }
  }

  LODWORD(v459) = v307 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v57 = __sb__runningInSpringBoard();
    if (v57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v339 = [MEMORY[0x277D759A0] mainScreen];
      [v339 _referenceBounds];
    }

    v449 = v57 ^ 1;
    BSSizeRoundForScale();
    if (v327 >= *(MEMORY[0x277D66E30] + 88))
    {
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0.0;
      goto LABEL_132;
    }
  }

  else
  {
    v449 = 0;
  }

LABEL_1823:
  v312 = __sb__runningInSpringBoard();
  if (v312)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v67 = 0;
      v68 = 0;
      goto LABEL_1863;
    }
  }

  else
  {
    v344 = [MEMORY[0x277D75418] currentDevice];
    if ([v344 userInterfaceIdiom])
    {
      v68 = 0;
      v67 = 1;
      goto LABEL_1863;
    }
  }

  v67 = v312 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v57 = __sb__runningInSpringBoard();
    if (v57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v338 = [MEMORY[0x277D759A0] mainScreen];
      [v338 _referenceBounds];
    }

    v68 = v57 ^ 1;
    BSSizeRoundForScale();
    if (v331 >= *(MEMORY[0x277D66E30] + 72))
    {
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0.0;
      goto LABEL_132;
    }
  }

  else
  {
    v68 = 0;
  }

LABEL_1863:
  v57 = __sb__runningInSpringBoard();
  if (!v57)
  {
    v342 = [MEMORY[0x277D75418] currentDevice];
    if ([v342 userInterfaceIdiom])
    {
      v70 = 0;
      v69 = 1;
      goto LABEL_1903;
    }

LABEL_1899:
    v69 = v57 ^ 1;
    v57 = __sb__runningInSpringBoard();
    if (v57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v56 = [MEMORY[0x277D759A0] mainScreen];
      [v56 _referenceBounds];
    }

    v70 = v57 ^ 1;
    BSSizeRoundForScale();
    if (v320 >= *(MEMORY[0x277D66E30] + 56))
    {
      goto LABEL_1906;
    }

    goto LABEL_1903;
  }

  if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
  {
    goto LABEL_1899;
  }

  v69 = 0;
  v70 = 0;
LABEL_1903:
  v321 = __sb__runningInSpringBoard();
  if (v321)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
LABEL_1906:
      v71 = 0;
      v72 = 0.0;
      goto LABEL_132;
    }
  }

  else
  {
    v57 = [MEMORY[0x277D75418] currentDevice];
    if ([v57 userInterfaceIdiom])
    {
      v72 = 0.0;
      v71 = 1;
      goto LABEL_132;
    }
  }

  v71 = v321 ^ 1;
  v335 = __sb__runningInSpringBoard();
  if (v335)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v321 = [MEMORY[0x277D759A0] mainScreen];
    [v321 _referenceBounds];
  }

  BSSizeRoundForScale();
  v72 = 0.0;
  if (v335 != 1)
  {
  }

LABEL_132:
  if (v71)
  {
  }

  v79 = v442;
  if (v70)
  {
  }

  if (v69)
  {
  }

  if (v68)
  {
  }

  if (v67)
  {
  }

  v80 = v441;
  if (v449)
  {
  }

  if (v459)
  {
  }

  if (v450)
  {
  }

  if (v460)
  {
  }

  if (v473)
  {
  }

  if (v461)
  {
  }

  if (v462)
  {
  }

  if (v474)
  {
  }

  if (v475)
  {
  }

  if (v476)
  {
  }

  if (v477)
  {
  }

  if (v478)
  {
  }

  if (v479)
  {
  }

  if (v480)
  {
  }

  if (v481)
  {
  }

  if (v482)
  {
  }

  if (v483)
  {
  }

  if (v484)
  {
  }

  if (v485)
  {
  }

  if (v486)
  {
  }

  if (v463)
  {
  }

  if (v487)
  {
  }

  if (v464)
  {
  }

  if (v465)
  {
  }

  if (v488)
  {
  }

  if (v489)
  {
  }

  if (v490)
  {
  }

  if (v491)
  {
  }

  if (v492)
  {
  }

  if (v493)
  {
  }

  if (v494)
  {
  }

  if (v495)
  {
  }

  if (v496)
  {
  }

  if (v497)
  {
  }

  if (v498)
  {
  }

  if (v499)
  {
  }

  if (v500)
  {
  }

  if (v501)
  {
  }

  if (v502)
  {
  }

  if (v503)
  {
  }

  if (v504)
  {
  }

  if (v505)
  {
  }

  if (HIDWORD(v505))
  {
  }

  if (v508)
  {
  }

  if (HIDWORD(v508))
  {
  }

  if (v511)
  {
  }

  if (HIDWORD(v511))
  {
  }

  if (v514)
  {
  }

  if (HIDWORD(v514))
  {
  }

  if (v517)
  {
  }

  if (v520)
  {
  }

  if (v451)
  {
  }

  if (v452)
  {
  }

  if (v453)
  {
  }

  if (v454)
  {
  }

  if (v455)
  {
  }

  if (v456)
  {
  }

  if (v457)
  {
  }

  if (v466)
  {
  }

  if (v458)
  {
  }

  if (v467)
  {
  }

  if (v521)
  {
  }

  if (v468)
  {
  }

  if (v469)
  {
  }

  if (HIDWORD(v521))
  {
  }

  if (v524)
  {
  }

  if (HIDWORD(v524))
  {
  }

  if (v527)
  {
  }

  if (HIDWORD(v527))
  {
  }

  if (v530)
  {
  }

  if (HIDWORD(v530))
  {
  }

  if (v533)
  {
  }

  if (HIDWORD(v533))
  {
  }

  if (v536)
  {
  }

  if (HIDWORD(v536))
  {
  }

  if (v539)
  {
  }

  if (HIDWORD(v539))
  {
  }

  if (v470)
  {
  }

  if (v542)
  {
  }

  if (v471)
  {
  }

  if (v472)
  {
  }

  if (HIDWORD(v542))
  {
  }

  if (v545)
  {
  }

  if (HIDWORD(v545))
  {
  }

  if (v548)
  {
  }

  if (HIDWORD(v548))
  {
  }

  if (v551)
  {
  }

  if (HIDWORD(v551))
  {
  }

  if (LODWORD(v554[0]))
  {
  }

  if (HIDWORD(v554[0]))
  {
  }

  if (LODWORD(v554[1]))
  {
  }

  if (HIDWORD(v554[1]))
  {
  }

  if (LODWORD(v554[2]))
  {
  }

  if (HIDWORD(v554[2]))
  {
  }

  if (LODWORD(v554[3]))
  {
  }

  if (HIDWORD(v554[3]))
  {
  }

  if (v555)
  {
  }

  if (HIDWORD(v555))
  {
  }

  if (v556)
  {
  }

  if (HIDWORD(v556))
  {
  }

  if (v557)
  {
  }

  if (HIDWORD(v557))
  {
  }

  if (v558)
  {
  }

  if (HIDWORD(v558))
  {
  }

  if (v559)
  {
  }

  if (HIDWORD(v559))
  {
  }

  if (v560)
  {
  }

  if (HIDWORD(v560))
  {
  }

  v81 = __sb__runningInSpringBoard();
  if (v81)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v82 = 0;
      v83 = 0;
      goto LABEL_367;
    }
  }

  else
  {
    v504 = [MEMORY[0x277D75418] currentDevice];
    if ([v504 userInterfaceIdiom] != 1)
    {
      v83 = 0;
      v82 = 1;
      goto LABEL_367;
    }
  }

  v82 = v81 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v495 = [MEMORY[0x277D759A0] mainScreen];
      [v495 _referenceBounds];
    }

    v83 = v84 ^ 1;
    BSSizeRoundForScale();
    if (v101 == *(MEMORY[0x277D66E30] + 288) && v100 == *(MEMORY[0x277D66E30] + 296))
    {
      LODWORD(v560) = v84 ^ 1;
      HIDWORD(v560) = v82;
      v558 = 0;
      v559 = 0;
      v556 = 0;
      v557 = 0;
      v555 = 0;
      memset(v554, 0, sizeof(v554));
      v552 = 0;
      v549 = 0;
      v546 = 0;
      v543 = 0;
      v518 = 0;
      v515 = 0;
      v540 = 0;
      v537 = 0;
      v534 = 0;
      v531 = 0;
      v528 = 0;
      v525 = 0;
      v522 = 0;
      v512 = 0;
      v509 = 0;
      v506 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v97 = 0.0;
      goto LABEL_421;
    }
  }

  else
  {
    v83 = 0;
  }

LABEL_367:
  v85 = __sb__runningInSpringBoard();
  v560 = __PAIR64__(v82, v83);
  if (v85)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v86 = 0;
      v87 = 0;
      goto LABEL_376;
    }
  }

  else
  {
    v503 = [MEMORY[0x277D75418] currentDevice];
    if ([v503 userInterfaceIdiom] != 1)
    {
      v87 = 0;
      v86 = 1;
      goto LABEL_376;
    }
  }

  v86 = v85 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v494 = [MEMORY[0x277D759A0] mainScreen];
      [v494 _referenceBounds];
    }

    v87 = v84 ^ 1;
    BSSizeRoundForScale();
    if (v102 >= *(MEMORY[0x277D66E30] + 440))
    {
      LODWORD(v559) = v84 ^ 1;
      HIDWORD(v559) = v86;
      v557 = 0;
      v558 = 0;
      v555 = 0;
      v556 = 0;
      memset(v554, 0, sizeof(v554));
      v552 = 0;
      v549 = 0;
      v546 = 0;
      v543 = 0;
      v518 = 0;
      v515 = 0;
      v540 = 0;
      v537 = 0;
      v534 = 0;
      v531 = 0;
      v528 = 0;
      v525 = 0;
      v522 = 0;
      v512 = 0;
      v509 = 0;
      v506 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v97 = 0.0;
      goto LABEL_421;
    }
  }

  else
  {
    v87 = 0;
  }

LABEL_376:
  v88 = __sb__runningInSpringBoard();
  v559 = __PAIR64__(v86, v87);
  if (v88)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v79 = 0;
      v89 = 0;
      goto LABEL_385;
    }
  }

  else
  {
    v502 = [MEMORY[0x277D75418] currentDevice];
    if ([v502 userInterfaceIdiom] != 1)
    {
      v89 = 0;
      v79 = 1;
      goto LABEL_385;
    }
  }

  v79 = v88 ^ 1u;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v493 = [MEMORY[0x277D759A0] mainScreen];
      [v493 _referenceBounds];
    }

    v89 = v84 ^ 1;
    BSSizeRoundForScale();
    if (v103 >= *(MEMORY[0x277D66E30] + 376))
    {
      LODWORD(v558) = v84 ^ 1;
      HIDWORD(v558) = v79;
      v556 = 0;
      v557 = 0;
      v555 = 0;
      memset(v554, 0, sizeof(v554));
      v552 = 0;
      v549 = 0;
      v546 = 0;
      v543 = 0;
      v518 = 0;
      v515 = 0;
      v540 = 0;
      v537 = 0;
      v534 = 0;
      v531 = 0;
      v528 = 0;
      v525 = 0;
      v522 = 0;
      v512 = 0;
      v509 = 0;
      v506 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v97 = 0.0;
      goto LABEL_421;
    }
  }

  else
  {
    v89 = 0;
  }

LABEL_385:
  v90 = __sb__runningInSpringBoard();
  v558 = __PAIR64__(v79, v89);
  if (v90)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v80 = 0;
      LODWORD(v557) = 0;
      goto LABEL_394;
    }
  }

  else
  {
    v501 = [MEMORY[0x277D75418] currentDevice];
    if ([v501 userInterfaceIdiom] != 1)
    {
      LODWORD(v557) = 0;
      v80 = 1;
      goto LABEL_394;
    }
  }

  v80 = v90 ^ 1u;
  v84 = __sb__runningInSpringBoard();
  if (v84)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v498 = [MEMORY[0x277D759A0] mainScreen];
    [v498 _referenceBounds];
  }

  LODWORD(v557) = v84 ^ 1;
  BSSizeRoundForScale();
  if (v91 >= *(MEMORY[0x277D66E30] + 280))
  {
    HIDWORD(v557) = v80;
    v555 = 0;
    v556 = 0;
    memset(v554, 0, sizeof(v554));
    v552 = 0;
    v549 = 0;
    v546 = 0;
    v543 = 0;
    v518 = 0;
    v515 = 0;
    v540 = 0;
    v537 = 0;
    v534 = 0;
    v531 = 0;
    v528 = 0;
    v525 = 0;
    v522 = 0;
    v512 = 0;
    v509 = 0;
    v506 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 0.0;
    goto LABEL_421;
  }

LABEL_394:
  v92 = __sb__runningInSpringBoard();
  HIDWORD(v557) = v80;
  if (v92)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v556 = 0;
      goto LABEL_404;
    }
  }

  else
  {
    v500 = [MEMORY[0x277D75418] currentDevice];
    if ([v500 userInterfaceIdiom] != 1)
    {
      v556 = 0x100000000;
      goto LABEL_404;
    }
  }

  HIDWORD(v556) = v92 ^ 1;
  v84 = __sb__runningInSpringBoard();
  if (v84)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v496 = [MEMORY[0x277D759A0] mainScreen];
    [v496 _referenceBounds];
  }

  LODWORD(v556) = v84 ^ 1;
  BSSizeRoundForScale();
  if (v98 >= *(MEMORY[0x277D66E30] + 264))
  {
    v555 = 0;
    memset(v554, 0, sizeof(v554));
    v552 = 0;
    v549 = 0;
    v546 = 0;
    v543 = 0;
    v518 = 0;
    v515 = 0;
    v540 = 0;
    v537 = 0;
    v534 = 0;
    v531 = 0;
    v528 = 0;
    v525 = 0;
    v522 = 0;
    v512 = 0;
    v509 = 0;
    v506 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 0.0;
    goto LABEL_421;
  }

LABEL_404:
  v99 = __sb__runningInSpringBoard();
  if (v99)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v555 = 0;
      goto LABEL_748;
    }
  }

  else
  {
    v499 = [MEMORY[0x277D75418] currentDevice];
    if ([v499 userInterfaceIdiom] != 1)
    {
      v555 = 0x100000000;
      goto LABEL_748;
    }
  }

  HIDWORD(v555) = v99 ^ 1;
  v84 = __sb__runningInSpringBoard();
  if (v84)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v492 = [MEMORY[0x277D759A0] mainScreen];
    [v492 _referenceBounds];
  }

  LODWORD(v555) = v84 ^ 1;
  BSSizeRoundForScale();
  if (v161 >= *(MEMORY[0x277D66E30] + 248))
  {
    memset(v554, 0, sizeof(v554));
    v552 = 0;
    v549 = 0;
    v546 = 0;
    v543 = 0;
    v518 = 0;
    v515 = 0;
    v540 = 0;
    v537 = 0;
    v534 = 0;
    v531 = 0;
    v528 = 0;
    v525 = 0;
    v522 = 0;
    v512 = 0;
    v509 = 0;
    v506 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 0.0;
    goto LABEL_421;
  }

LABEL_748:
  v84 = __sb__runningInSpringBoard();
  if (v84)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_750;
    }

LABEL_756:
    memset(v554, 0, 28);
    v552 = 0;
    v549 = 0;
    v546 = 0;
    v543 = 0;
    v518 = 0;
    v515 = 0;
    v540 = 0;
    v537 = 0;
    v534 = 0;
    v531 = 0;
    v528 = 0;
    v525 = 0;
    v522 = 0;
    v512 = 0;
    v509 = 0;
    v506 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 0.0;
    HIDWORD(v554[3]) = v84 ^ 1;
    goto LABEL_421;
  }

  v497 = [MEMORY[0x277D75418] currentDevice];
  if ([v497 userInterfaceIdiom] == 1)
  {
    goto LABEL_756;
  }

LABEL_750:
  HIDWORD(v554[3]) = v84 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_754:
    *(&v554[2] + 4) = 0;
    goto LABEL_835;
  }

  v162 = __sb__runningInSpringBoard();
  if (v162)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_754;
    }
  }

  else
  {
    v490 = [MEMORY[0x277D75418] currentDevice];
    if ([v490 userInterfaceIdiom])
    {
      HIDWORD(v554[2]) = 0;
      LODWORD(v554[3]) = 1;
      goto LABEL_835;
    }
  }

  LODWORD(v554[3]) = v162 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v482 = [MEMORY[0x277D759A0] mainScreen];
      [v482 _referenceBounds];
    }

    HIDWORD(v554[2]) = v84 ^ 1;
    BSSizeRoundForScale();
    if (v178 >= *(MEMORY[0x277D66E30] + 200))
    {
      memset(v554, 0, 20);
      v552 = 0;
      v549 = 0;
      v546 = 0;
      v543 = 0;
      v518 = 0;
      v515 = 0;
      v540 = 0;
      v537 = 0;
      v534 = 0;
      v531 = 0;
      v528 = 0;
      v525 = 0;
      v522 = 0;
      v512 = 0;
      v509 = 0;
      v506 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v97 = 83.0;
      goto LABEL_421;
    }
  }

  else
  {
    HIDWORD(v554[2]) = 0;
  }

LABEL_835:
  v84 = __sb__runningInSpringBoard();
  if (v84)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v554[1] + 4) = 0;
      goto LABEL_845;
    }
  }

  else
  {
    v491 = [MEMORY[0x277D75418] currentDevice];
    if ([v491 userInterfaceIdiom])
    {
      HIDWORD(v554[1]) = 0;
      LODWORD(v554[2]) = 1;
      goto LABEL_845;
    }
  }

  LODWORD(v554[2]) = v84 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v486 = [MEMORY[0x277D759A0] mainScreen];
      [v486 _referenceBounds];
    }

    HIDWORD(v554[1]) = v84 ^ 1;
    BSSizeRoundForScale();
    if (v172 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_849;
    }
  }

  else
  {
    HIDWORD(v554[1]) = 0;
  }

LABEL_845:
  if (_SBF_Private_IsD94Like())
  {
    *(v554 + 4) = 0;
    LODWORD(v554[0]) = 0;
    v552 = 0;
    v549 = 0;
    v546 = 0;
    v543 = 0;
    v518 = 0;
    v515 = 0;
    v540 = 0;
    v537 = 0;
    v534 = 0;
    v531 = 0;
    v528 = 0;
    v525 = 0;
    v522 = 0;
    v512 = 0;
    v509 = 0;
    v506 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 73.0;
    goto LABEL_421;
  }

LABEL_849:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_853:
    *(v554 + 4) = 0;
    goto LABEL_965;
  }

  v173 = __sb__runningInSpringBoard();
  if (v173)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_853;
    }
  }

  else
  {
    v487 = [MEMORY[0x277D75418] currentDevice];
    if ([v487 userInterfaceIdiom])
    {
      HIDWORD(v554[0]) = 0;
      LODWORD(v554[1]) = 1;
      goto LABEL_965;
    }
  }

  LODWORD(v554[1]) = v173 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v80 = [MEMORY[0x277D759A0] mainScreen];
      [v80 _referenceBounds];
    }

    v484 = v80;
    HIDWORD(v554[0]) = v84 ^ 1;
    BSSizeRoundForScale();
    if (v201 >= *(MEMORY[0x277D66E30] + 136))
    {
      LODWORD(v554[0]) = 0;
      v552 = 0;
      v549 = 0;
      v546 = 0;
      v543 = 0;
      v518 = 0;
      v515 = 0;
      v540 = 0;
      v537 = 0;
      v534 = 0;
      v531 = 0;
      v528 = 0;
      v525 = 0;
      v522 = 0;
      v512 = 0;
      v509 = 0;
      v506 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v97 = 71.0;
      goto LABEL_421;
    }
  }

  else
  {
    HIDWORD(v554[0]) = 0;
  }

LABEL_965:
  v84 = __sb__runningInSpringBoard();
  v80 = &off_21EC94000;
  if (v84)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v554[0]) = 0;
      HIDWORD(v552) = 0;
      goto LABEL_975;
    }
  }

  else
  {
    v489 = [MEMORY[0x277D75418] currentDevice];
    if ([v489 userInterfaceIdiom])
    {
      HIDWORD(v552) = 0;
      LODWORD(v554[0]) = 1;
      goto LABEL_975;
    }
  }

  LODWORD(v554[0]) = v84 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v481 = [MEMORY[0x277D759A0] mainScreen];
      [v481 _referenceBounds];
    }

    HIDWORD(v552) = v84 ^ 1;
    BSSizeRoundForScale();
    if (v190 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_979;
    }
  }

  else
  {
    HIDWORD(v552) = 0;
  }

LABEL_975:
  if (_SBF_Private_IsD64Like())
  {
    LODWORD(v552) = 0;
    v549 = 0;
    v546 = 0;
    v543 = 0;
    v518 = 0;
    v515 = 0;
    v540 = 0;
    v537 = 0;
    v534 = 0;
    v531 = 0;
    v528 = 0;
    v525 = 0;
    v522 = 0;
    v512 = 0;
    v509 = 0;
    v506 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 62.33333;
    goto LABEL_421;
  }

LABEL_979:
  v191 = __sb__runningInSpringBoard();
  if (v191)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v552) = 0;
      HIDWORD(v549) = 0;
      goto LABEL_989;
    }
  }

  else
  {
    v488 = [MEMORY[0x277D75418] currentDevice];
    if ([v488 userInterfaceIdiom])
    {
      HIDWORD(v549) = 0;
      LODWORD(v552) = 1;
      goto LABEL_989;
    }
  }

  LODWORD(v552) = v191 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v478 = [MEMORY[0x277D759A0] mainScreen];
      [v478 _referenceBounds];
    }

    HIDWORD(v549) = v84 ^ 1;
    BSSizeRoundForScale();
    if (v197 >= *(MEMORY[0x277D66E30] + 136))
    {
      LODWORD(v549) = 0;
      v546 = 0;
      v543 = 0;
      v518 = 0;
      v515 = 0;
      v540 = 0;
      v537 = 0;
      v534 = 0;
      v531 = 0;
      v528 = 0;
      v525 = 0;
      v522 = 0;
      v512 = 0;
      v509 = 0;
      v506 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v97 = 71.0;
      goto LABEL_421;
    }
  }

  else
  {
    HIDWORD(v549) = 0;
  }

LABEL_989:
  v84 = __sb__runningInSpringBoard();
  if (v84)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v549) = 0;
      HIDWORD(v546) = 0;
      goto LABEL_1045;
    }
  }

  else
  {
    v485 = [MEMORY[0x277D75418] currentDevice];
    if ([v485 userInterfaceIdiom])
    {
      HIDWORD(v546) = 0;
      LODWORD(v549) = 1;
      goto LABEL_1045;
    }
  }

  LODWORD(v549) = v84 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v477 = [MEMORY[0x277D759A0] mainScreen];
      [v477 _referenceBounds];
    }

    HIDWORD(v546) = v84 ^ 1;
    BSSizeRoundForScale();
    if (v207 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_1095;
    }
  }

  else
  {
    HIDWORD(v546) = 0;
  }

LABEL_1045:
  if (_SBF_Private_IsD54())
  {
    LODWORD(v546) = 0;
    v543 = 0;
    v518 = 0;
    v515 = 0;
    v540 = 0;
    v537 = 0;
    v534 = 0;
    v531 = 0;
    v528 = 0;
    v525 = 0;
    v522 = 0;
    v512 = 0;
    v509 = 0;
    v506 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 62.33333;
    goto LABEL_421;
  }

LABEL_1095:
  v208 = __sb__runningInSpringBoard();
  if (v208)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v80 = 0;
      HIDWORD(v543) = 0;
      goto LABEL_1133;
    }
  }

  else
  {
    v483 = [MEMORY[0x277D75418] currentDevice];
    if ([v483 userInterfaceIdiom])
    {
      HIDWORD(v543) = 0;
      v80 = 1;
      goto LABEL_1133;
    }
  }

  v80 = v208 ^ 1u;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v214 = __sb__runningInSpringBoard();
    if (v214)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v474 = [MEMORY[0x277D759A0] mainScreen];
      [v474 _referenceBounds];
    }

    v84 = v214 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v543) = v84;
    if (v219 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      LODWORD(v546) = v80;
      v518 = 0;
      LODWORD(v543) = 0;
      v515 = 0;
      v540 = 0;
      v537 = 0;
      v534 = 0;
      v531 = 0;
      v528 = 0;
      v525 = 0;
      v522 = 0;
      v512 = 0;
      v509 = 0;
      v506 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v97 = 0.0;
      goto LABEL_421;
    }
  }

  else
  {
    HIDWORD(v543) = 0;
  }

LABEL_1133:
  v84 = __sb__runningInSpringBoard();
  LODWORD(v546) = v80;
  if (v84)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v518 = 0;
      goto LABEL_1167;
    }
  }

  else
  {
    v480 = [MEMORY[0x277D75418] currentDevice];
    if ([v480 userInterfaceIdiom])
    {
      v518 = 0x100000000;
      goto LABEL_1167;
    }
  }

  HIDWORD(v518) = v84 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v473 = [MEMORY[0x277D759A0] mainScreen];
      [v473 _referenceBounds];
    }

    LODWORD(v518) = v84 ^ 1;
    BSSizeRoundForScale();
    if (v225 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_1213;
    }
  }

  else
  {
    LODWORD(v518) = 0;
  }

LABEL_1167:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    LODWORD(v543) = 0;
    v515 = 0;
    v540 = 0;
    v537 = 0;
    v534 = 0;
    v531 = 0;
    v528 = 0;
    v525 = 0;
    v522 = 0;
    v512 = 0;
    v509 = 0;
    v506 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 0.0;
    goto LABEL_421;
  }

LABEL_1213:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_1217:
    LODWORD(v543) = 0;
    HIDWORD(v515) = 0;
    goto LABEL_1283;
  }

  v226 = __sb__runningInSpringBoard();
  if (v226)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_1217;
    }
  }

  else
  {
    v476 = [MEMORY[0x277D75418] currentDevice];
    if ([v476 userInterfaceIdiom])
    {
      HIDWORD(v515) = 0;
      LODWORD(v543) = 1;
      goto LABEL_1283;
    }
  }

  LODWORD(v543) = v226 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v237 = __sb__runningInSpringBoard();
    if (v237)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v467 = [MEMORY[0x277D759A0] mainScreen];
      [v467 _referenceBounds];
    }

    v84 = v237 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v515) = v84;
    if (v245 >= *(MEMORY[0x277D66E30] + 184))
    {
      v540 = 0;
      v537 = 0;
      v534 = 0;
      v531 = 0;
      v528 = 0;
      v525 = 0;
      v522 = 0;
      LODWORD(v515) = 0;
      v512 = 0;
      v509 = 0;
      v506 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v97 = 37.0;
      goto LABEL_421;
    }
  }

  else
  {
    HIDWORD(v515) = 0;
  }

LABEL_1283:
  v84 = __sb__runningInSpringBoard();
  if (v84)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v540 = 0;
      goto LABEL_1293;
    }
  }

  else
  {
    v479 = [MEMORY[0x277D75418] currentDevice];
    if ([v479 userInterfaceIdiom])
    {
      v540 = 0x100000000;
      goto LABEL_1293;
    }
  }

  HIDWORD(v540) = v84 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v470 = [MEMORY[0x277D759A0] mainScreen];
      [v470 _referenceBounds];
    }

    LODWORD(v540) = v84 ^ 1;
    BSSizeRoundForScale();
    if (v238 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_1297;
    }
  }

  else
  {
    LODWORD(v540) = 0;
  }

LABEL_1293:
  if (_SBF_Private_IsD93Like())
  {
    v537 = 0;
    v534 = 0;
    v531 = 0;
    v528 = 0;
    v525 = 0;
    v522 = 0;
    LODWORD(v515) = 0;
    v512 = 0;
    v509 = 0;
    v506 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 30.333333;
    goto LABEL_421;
  }

LABEL_1297:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_1301:
    v537 = 0;
    goto LABEL_1395;
  }

  v239 = __sb__runningInSpringBoard();
  if (v239)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_1301;
    }
  }

  else
  {
    v472 = [MEMORY[0x277D75418] currentDevice];
    if ([v472 userInterfaceIdiom])
    {
      v537 = 0x100000000;
      goto LABEL_1395;
    }
  }

  HIDWORD(v537) = v239 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v463 = [MEMORY[0x277D759A0] mainScreen];
      [v463 _referenceBounds];
    }

    LODWORD(v537) = v84 ^ 1;
    BSSizeRoundForScale();
    if (v260 >= *(MEMORY[0x277D66E30] + 104))
    {
      v534 = 0;
      v531 = 0;
      v528 = 0;
      v525 = 0;
      v522 = 0;
      LODWORD(v515) = 0;
      v512 = 0;
      v509 = 0;
      v506 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v97 = 28.0;
      goto LABEL_421;
    }
  }

  else
  {
    LODWORD(v537) = 0;
  }

LABEL_1395:
  v84 = __sb__runningInSpringBoard();
  if (v84)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v534 = 0;
      goto LABEL_1405;
    }
  }

  else
  {
    v475 = [MEMORY[0x277D75418] currentDevice];
    if ([v475 userInterfaceIdiom])
    {
      v534 = 0x100000000;
      goto LABEL_1405;
    }
  }

  HIDWORD(v534) = v84 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v466 = [MEMORY[0x277D759A0] mainScreen];
      [v466 _referenceBounds];
    }

    LODWORD(v534) = v84 ^ 1;
    BSSizeRoundForScale();
    if (v254 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_1409;
    }
  }

  else
  {
    LODWORD(v534) = 0;
  }

LABEL_1405:
  if (_SBF_Private_IsD63Like())
  {
    v531 = 0;
    v528 = 0;
    v525 = 0;
    v522 = 0;
    LODWORD(v515) = 0;
    v512 = 0;
    v509 = 0;
    v506 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 23.0;
    goto LABEL_421;
  }

LABEL_1409:
  if (!_SBF_Private_IsD23Like())
  {
LABEL_1413:
    v531 = 0;
    goto LABEL_1525;
  }

  v255 = __sb__runningInSpringBoard();
  if (v255)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_1413;
    }
  }

  else
  {
    v468 = [MEMORY[0x277D75418] currentDevice];
    if ([v468 userInterfaceIdiom])
    {
      v531 = 0x100000000;
      goto LABEL_1525;
    }
  }

  HIDWORD(v531) = v255 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v272 = __sb__runningInSpringBoard();
    if (v272)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v459 = [MEMORY[0x277D759A0] mainScreen];
      [v459 _referenceBounds];
    }

    v84 = v272 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v531) = v84;
    if (v285 >= *(MEMORY[0x277D66E30] + 216))
    {
      v528 = 0;
      v525 = 0;
      v522 = 0;
      LODWORD(v515) = 0;
      v512 = 0;
      v509 = 0;
      v506 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v97 = 60.0;
      goto LABEL_421;
    }
  }

  else
  {
    LODWORD(v531) = 0;
  }

LABEL_1525:
  v84 = __sb__runningInSpringBoard();
  if (v84)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v528 = 0;
      goto LABEL_1535;
    }
  }

  else
  {
    v471 = [MEMORY[0x277D75418] currentDevice];
    if ([v471 userInterfaceIdiom])
    {
      v528 = 0x100000000;
      goto LABEL_1535;
    }
  }

  HIDWORD(v528) = v84 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v462 = [MEMORY[0x277D759A0] mainScreen];
      [v462 _referenceBounds];
    }

    LODWORD(v528) = v84 ^ 1;
    BSSizeRoundForScale();
    if (v273 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_1539;
    }
  }

  else
  {
    LODWORD(v528) = 0;
  }

LABEL_1535:
  if (_SBF_Private_IsD23Like())
  {
    v525 = 0;
    v522 = 0;
    LODWORD(v515) = 0;
    v512 = 0;
    v509 = 0;
    v506 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 52.0;
    goto LABEL_421;
  }

LABEL_1539:
  v274 = __sb__runningInSpringBoard();
  if (v274)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v525 = 0;
      goto LABEL_1549;
    }
  }

  else
  {
    v469 = [MEMORY[0x277D75418] currentDevice];
    if ([v469 userInterfaceIdiom])
    {
      v525 = 0x100000000;
      goto LABEL_1549;
    }
  }

  HIDWORD(v525) = v274 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v460 = [MEMORY[0x277D759A0] mainScreen];
      [v460 _referenceBounds];
    }

    LODWORD(v525) = v84 ^ 1;
    BSSizeRoundForScale();
    if (v281 >= *(MEMORY[0x277D66E30] + 120))
    {
      v522 = 0;
      LODWORD(v515) = 0;
      v512 = 0;
      v509 = 0;
      v506 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v97 = 0.0;
      goto LABEL_421;
    }
  }

  else
  {
    LODWORD(v525) = 0;
  }

LABEL_1549:
  v84 = __sb__runningInSpringBoard();
  if (v84)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v522) = 0;
      LODWORD(v515) = 0;
      goto LABEL_1605;
    }
  }

  else
  {
    v465 = [MEMORY[0x277D75418] currentDevice];
    if ([v465 userInterfaceIdiom])
    {
      LODWORD(v515) = 0;
      HIDWORD(v522) = 1;
      goto LABEL_1605;
    }
  }

  HIDWORD(v522) = v84 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v458 = [MEMORY[0x277D759A0] mainScreen];
      [v458 _referenceBounds];
    }

    LODWORD(v515) = v84 ^ 1;
    BSSizeRoundForScale();
    if (v291 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_1655;
    }
  }

  else
  {
    LODWORD(v515) = 0;
  }

LABEL_1605:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    v512 = 0;
    LODWORD(v522) = 0;
    v509 = 0;
    v506 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 0.0;
    goto LABEL_421;
  }

LABEL_1655:
  v292 = __sb__runningInSpringBoard();
  if (v292)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v512) = 0;
      LODWORD(v522) = 0;
      goto LABEL_1693;
    }
  }

  else
  {
    v464 = [MEMORY[0x277D75418] currentDevice];
    if ([v464 userInterfaceIdiom])
    {
      LODWORD(v522) = 0;
      HIDWORD(v512) = 1;
      goto LABEL_1693;
    }
  }

  HIDWORD(v512) = v292 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v457 = [MEMORY[0x277D759A0] mainScreen];
      [v457 _referenceBounds];
    }

    LODWORD(v522) = v84 ^ 1;
    BSSizeRoundForScale();
    if (v300 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v512) = 0;
      v509 = 0;
      v506 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v97 = 28.0;
      goto LABEL_421;
    }
  }

  else
  {
    LODWORD(v522) = 0;
  }

LABEL_1693:
  v84 = __sb__runningInSpringBoard();
  if (v84)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v512) = 0;
      LODWORD(v509) = 0;
      goto LABEL_1725;
    }
  }

  else
  {
    v461 = [MEMORY[0x277D75418] currentDevice];
    if ([v461 userInterfaceIdiom])
    {
      LODWORD(v509) = 0;
      LODWORD(v512) = 1;
      goto LABEL_1725;
    }
  }

  LODWORD(v512) = v84 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v456 = [MEMORY[0x277D759A0] mainScreen];
      [v456 _referenceBounds];
    }

    LODWORD(v509) = v84 ^ 1;
    BSSizeRoundForScale();
    if (v304 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_1767;
    }
  }

  else
  {
    LODWORD(v509) = 0;
  }

LABEL_1725:
  if (_SBF_Private_IsD53())
  {
    HIDWORD(v509) = 0;
    v506 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 23.0;
    goto LABEL_421;
  }

LABEL_1767:
  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0 || _SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    HIDWORD(v509) = 0;
    v506 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 0.0;
    goto LABEL_421;
  }

  v97 = 0.0;
  if (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0 || (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
    HIDWORD(v509) = 0;
    v506 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    goto LABEL_421;
  }

  v308 = __sb__runningInSpringBoard();
  if (v308)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v509) = 0;
      HIDWORD(v506) = 0;
      goto LABEL_1833;
    }
  }

  else
  {
    v455 = [MEMORY[0x277D75418] currentDevice];
    if ([v455 userInterfaceIdiom])
    {
      HIDWORD(v506) = 0;
      HIDWORD(v509) = 1;
      goto LABEL_1833;
    }
  }

  HIDWORD(v509) = v308 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v453 = [MEMORY[0x277D759A0] mainScreen];
      [v453 _referenceBounds];
    }

    HIDWORD(v506) = v84 ^ 1;
    BSSizeRoundForScale();
    if (v328 >= *(MEMORY[0x277D66E30] + 88))
    {
      LODWORD(v506) = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0;
      v96 = 0;
      goto LABEL_421;
    }
  }

  else
  {
    HIDWORD(v506) = 0;
  }

LABEL_1833:
  v313 = __sb__runningInSpringBoard();
  if (v313)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v506) = 0;
      v93 = 0;
      goto LABEL_1873;
    }
  }

  else
  {
    v454 = [MEMORY[0x277D75418] currentDevice];
    if ([v454 userInterfaceIdiom])
    {
      v93 = 0;
      LODWORD(v506) = 1;
      goto LABEL_1873;
    }
  }

  LODWORD(v506) = v313 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v452 = [MEMORY[0x277D759A0] mainScreen];
      [v452 _referenceBounds];
    }

    v93 = v84 ^ 1;
    BSSizeRoundForScale();
    if (v332 >= *(MEMORY[0x277D66E30] + 72))
    {
      v94 = 0;
      v95 = 0;
      v96 = 0;
      goto LABEL_421;
    }
  }

  else
  {
    v93 = 0;
  }

LABEL_1873:
  v84 = __sb__runningInSpringBoard();
  if (!v84)
  {
    v79 = [MEMORY[0x277D75418] currentDevice];
    if ([v79 userInterfaceIdiom])
    {
      v95 = 0;
      v94 = 1;
      goto LABEL_1913;
    }

LABEL_1909:
    v94 = v84 ^ 1;
    v80 = __sb__runningInSpringBoard();
    if (v80)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v84 = [MEMORY[0x277D759A0] mainScreen];
      [v84 _referenceBounds];
    }

    v95 = v80 ^ 1;
    BSSizeRoundForScale();
    if (v322 >= *(MEMORY[0x277D66E30] + 56))
    {
      goto LABEL_1916;
    }

    goto LABEL_1913;
  }

  if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
  {
    goto LABEL_1909;
  }

  v94 = 0;
  v95 = 0;
LABEL_1913:
  v323 = __sb__runningInSpringBoard();
  if (v323)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
LABEL_1916:
      v96 = 0;
      goto LABEL_421;
    }
  }

  else
  {
    v80 = [MEMORY[0x277D75418] currentDevice];
    if ([v80 userInterfaceIdiom])
    {
      v96 = 1;
      goto LABEL_421;
    }
  }

  v96 = v323 ^ 1;
  v336 = __sb__runningInSpringBoard();
  if (v336)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v323 = [MEMORY[0x277D759A0] mainScreen];
    [v323 _referenceBounds];
  }

  BSSizeRoundForScale();
  if (v336 != 1)
  {
  }

LABEL_421:
  if (v96)
  {
  }

  v104 = v558;
  if (v95)
  {
  }

  if (v94)
  {
  }

  if (v93)
  {
  }

  if (v506)
  {
  }

  if (HIDWORD(v506))
  {
  }

  if (HIDWORD(v509))
  {
  }

  if (v509)
  {
  }

  if (v512)
  {
  }

  if (v522)
  {
  }

  if (HIDWORD(v512))
  {
  }

  if (v515)
  {
  }

  if (HIDWORD(v522))
  {
  }

  if (v525)
  {
  }

  if (HIDWORD(v525))
  {
  }

  if (v528)
  {
  }

  if (HIDWORD(v528))
  {
  }

  if (v531)
  {
  }

  if (HIDWORD(v531))
  {
  }

  if (v534)
  {
  }

  if (HIDWORD(v534))
  {
  }

  if (v537)
  {
  }

  if (HIDWORD(v537))
  {
  }

  if (v540)
  {
  }

  if (HIDWORD(v540))
  {
  }

  if (HIDWORD(v515))
  {
  }

  if (v543)
  {
  }

  if (v518)
  {
  }

  if (HIDWORD(v518))
  {
  }

  if (HIDWORD(v543))
  {
  }

  if (v546)
  {
  }

  if (HIDWORD(v546))
  {
  }

  if (v549)
  {
  }

  if (HIDWORD(v549))
  {
  }

  if (v552)
  {
  }

  if (HIDWORD(v552))
  {
  }

  if (LODWORD(v554[0]))
  {
  }

  if (HIDWORD(v554[0]))
  {
  }

  if (LODWORD(v554[1]))
  {
  }

  if (HIDWORD(v554[1]))
  {
  }

  if (LODWORD(v554[2]))
  {
  }

  if (HIDWORD(v554[2]))
  {
  }

  if (LODWORD(v554[3]))
  {
  }

  if (HIDWORD(v554[3]))
  {
  }

  if (v555)
  {
  }

  if (HIDWORD(v555))
  {
  }

  if (v556)
  {
  }

  if (HIDWORD(v556))
  {
  }

  if (v557)
  {
  }

  if (HIDWORD(v557))
  {

    if (!v558)
    {
      goto LABEL_521;
    }
  }

  else if (!v558)
  {
LABEL_521:
    if (HIDWORD(v558))
    {
      goto LABEL_522;
    }

    goto LABEL_532;
  }

  if (HIDWORD(v558))
  {
LABEL_522:

    if (!v559)
    {
      goto LABEL_523;
    }

    goto LABEL_533;
  }

LABEL_532:
  if (!v559)
  {
LABEL_523:
    if (HIDWORD(v559))
    {
      goto LABEL_524;
    }

    goto LABEL_534;
  }

LABEL_533:

  if (HIDWORD(v559))
  {
LABEL_524:

    if (!v560)
    {
      goto LABEL_525;
    }

    goto LABEL_535;
  }

LABEL_534:
  if (!v560)
  {
LABEL_525:
    if (!HIDWORD(v560))
    {
      goto LABEL_527;
    }

    goto LABEL_526;
  }

LABEL_535:

  if (HIDWORD(v560))
  {
LABEL_526:
  }

LABEL_527:
  v105 = __sb__runningInSpringBoard();
  if (v105)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v106 = 0;
      v107 = 0;
      goto LABEL_543;
    }
  }

  else
  {
    v504 = [MEMORY[0x277D75418] currentDevice];
    if ([v504 userInterfaceIdiom] != 1)
    {
      v107 = 0;
      v106 = 1;
      goto LABEL_543;
    }
  }

  v106 = v105 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v108 = __sb__runningInSpringBoard();
    if (v108)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v495 = [MEMORY[0x277D759A0] mainScreen];
      [v495 _referenceBounds];
    }

    v107 = v108 ^ 1;
    BSSizeRoundForScale();
    if (v125 == *(MEMORY[0x277D66E30] + 288) && v124 == *(MEMORY[0x277D66E30] + 296))
    {
      LODWORD(v560) = v108 ^ 1;
      HIDWORD(v560) = v106;
      v558 = 0;
      v559 = 0;
      v556 = 0;
      v557 = 0;
      v555 = 0;
      memset(v554, 0, sizeof(v554));
      v553 = 0;
      v550 = 0;
      v547 = 0;
      v544 = 0;
      v519 = 0;
      v516 = 0;
      v541 = 0;
      v538 = 0;
      v535 = 0;
      v532 = 0;
      v529 = 0;
      v526 = 0;
      v523 = 0;
      v513 = 0;
      v510 = 0;
      v507 = 0;
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 0.0;
      goto LABEL_597;
    }
  }

  else
  {
    v107 = 0;
  }

LABEL_543:
  v109 = __sb__runningInSpringBoard();
  v560 = __PAIR64__(v106, v107);
  if (v109)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v110 = 0;
      v111 = 0;
      goto LABEL_552;
    }
  }

  else
  {
    v503 = [MEMORY[0x277D75418] currentDevice];
    if ([v503 userInterfaceIdiom] != 1)
    {
      v111 = 0;
      v110 = 1;
      goto LABEL_552;
    }
  }

  v110 = v109 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v108 = __sb__runningInSpringBoard();
    if (v108)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v494 = [MEMORY[0x277D759A0] mainScreen];
      [v494 _referenceBounds];
    }

    v111 = v108 ^ 1;
    BSSizeRoundForScale();
    if (v126 >= *(MEMORY[0x277D66E30] + 440))
    {
      LODWORD(v559) = v108 ^ 1;
      HIDWORD(v559) = v110;
      v557 = 0;
      v558 = 0;
      v555 = 0;
      v556 = 0;
      memset(v554, 0, sizeof(v554));
      v553 = 0;
      v550 = 0;
      v547 = 0;
      v544 = 0;
      v519 = 0;
      v516 = 0;
      v541 = 0;
      v538 = 0;
      v535 = 0;
      v532 = 0;
      v529 = 0;
      v526 = 0;
      v523 = 0;
      v513 = 0;
      v510 = 0;
      v507 = 0;
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 0.0;
      goto LABEL_597;
    }
  }

  else
  {
    v111 = 0;
  }

LABEL_552:
  v112 = __sb__runningInSpringBoard();
  v559 = __PAIR64__(v110, v111);
  if (v112)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v79 = 0;
      v113 = 0;
      goto LABEL_561;
    }
  }

  else
  {
    v502 = [MEMORY[0x277D75418] currentDevice];
    if ([v502 userInterfaceIdiom] != 1)
    {
      v113 = 0;
      v79 = 1;
      goto LABEL_561;
    }
  }

  v79 = v112 ^ 1u;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v108 = __sb__runningInSpringBoard();
    if (v108)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v493 = [MEMORY[0x277D759A0] mainScreen];
      [v493 _referenceBounds];
    }

    v113 = v108 ^ 1;
    BSSizeRoundForScale();
    if (v127 >= *(MEMORY[0x277D66E30] + 376))
    {
      LODWORD(v558) = v108 ^ 1;
      HIDWORD(v558) = v79;
      v556 = 0;
      v557 = 0;
      v555 = 0;
      memset(v554, 0, sizeof(v554));
      v553 = 0;
      v550 = 0;
      v547 = 0;
      v544 = 0;
      v519 = 0;
      v516 = 0;
      v541 = 0;
      v538 = 0;
      v535 = 0;
      v532 = 0;
      v529 = 0;
      v526 = 0;
      v523 = 0;
      v513 = 0;
      v510 = 0;
      v507 = 0;
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 0.0;
      goto LABEL_597;
    }
  }

  else
  {
    v113 = 0;
  }

LABEL_561:
  v114 = __sb__runningInSpringBoard();
  v558 = __PAIR64__(v79, v113);
  if (v114)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v104 = 0;
      LODWORD(v557) = 0;
      goto LABEL_570;
    }
  }

  else
  {
    v501 = [MEMORY[0x277D75418] currentDevice];
    if ([v501 userInterfaceIdiom] != 1)
    {
      LODWORD(v557) = 0;
      v104 = 1;
      goto LABEL_570;
    }
  }

  v104 = v114 ^ 1u;
  v108 = __sb__runningInSpringBoard();
  if (v108)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v498 = [MEMORY[0x277D759A0] mainScreen];
    [v498 _referenceBounds];
  }

  LODWORD(v557) = v108 ^ 1;
  BSSizeRoundForScale();
  if (v115 >= *(MEMORY[0x277D66E30] + 280))
  {
    HIDWORD(v557) = v104;
    v555 = 0;
    v556 = 0;
    memset(v554, 0, sizeof(v554));
    v553 = 0;
    v550 = 0;
    v547 = 0;
    v544 = 0;
    v519 = 0;
    v516 = 0;
    v541 = 0;
    v538 = 0;
    v535 = 0;
    v532 = 0;
    v529 = 0;
    v526 = 0;
    v523 = 0;
    v513 = 0;
    v510 = 0;
    v507 = 0;
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 0.0;
    goto LABEL_597;
  }

LABEL_570:
  v116 = __sb__runningInSpringBoard();
  HIDWORD(v557) = v104;
  if (v116)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v556 = 0;
      goto LABEL_580;
    }
  }

  else
  {
    v500 = [MEMORY[0x277D75418] currentDevice];
    if ([v500 userInterfaceIdiom] != 1)
    {
      v556 = 0x100000000;
      goto LABEL_580;
    }
  }

  HIDWORD(v556) = v116 ^ 1;
  v108 = __sb__runningInSpringBoard();
  if (v108)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v496 = [MEMORY[0x277D759A0] mainScreen];
    [v496 _referenceBounds];
  }

  LODWORD(v556) = v108 ^ 1;
  BSSizeRoundForScale();
  if (v122 >= *(MEMORY[0x277D66E30] + 264))
  {
    v555 = 0;
    memset(v554, 0, sizeof(v554));
    v553 = 0;
    v550 = 0;
    v547 = 0;
    v544 = 0;
    v519 = 0;
    v516 = 0;
    v541 = 0;
    v538 = 0;
    v535 = 0;
    v532 = 0;
    v529 = 0;
    v526 = 0;
    v523 = 0;
    v513 = 0;
    v510 = 0;
    v507 = 0;
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 0.0;
    goto LABEL_597;
  }

LABEL_580:
  v123 = __sb__runningInSpringBoard();
  if (v123)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v555 = 0;
      goto LABEL_760;
    }
  }

  else
  {
    v499 = [MEMORY[0x277D75418] currentDevice];
    if ([v499 userInterfaceIdiom] != 1)
    {
      v555 = 0x100000000;
      goto LABEL_760;
    }
  }

  HIDWORD(v555) = v123 ^ 1;
  v108 = __sb__runningInSpringBoard();
  if (v108)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v492 = [MEMORY[0x277D759A0] mainScreen];
    [v492 _referenceBounds];
  }

  LODWORD(v555) = v108 ^ 1;
  BSSizeRoundForScale();
  if (v163 >= *(MEMORY[0x277D66E30] + 248))
  {
    memset(v554, 0, sizeof(v554));
    v553 = 0;
    v550 = 0;
    v547 = 0;
    v544 = 0;
    v519 = 0;
    v516 = 0;
    v541 = 0;
    v538 = 0;
    v535 = 0;
    v532 = 0;
    v529 = 0;
    v526 = 0;
    v523 = 0;
    v513 = 0;
    v510 = 0;
    v507 = 0;
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 0.0;
    goto LABEL_597;
  }

LABEL_760:
  v108 = __sb__runningInSpringBoard();
  if (v108)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_762;
    }

LABEL_768:
    memset(v554, 0, 28);
    v553 = 0;
    v550 = 0;
    v547 = 0;
    v544 = 0;
    v519 = 0;
    v516 = 0;
    v541 = 0;
    v538 = 0;
    v535 = 0;
    v532 = 0;
    v529 = 0;
    v526 = 0;
    v523 = 0;
    v513 = 0;
    v510 = 0;
    v507 = 0;
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 0.0;
    HIDWORD(v554[3]) = v108 ^ 1;
    goto LABEL_597;
  }

  v497 = [MEMORY[0x277D75418] currentDevice];
  if ([v497 userInterfaceIdiom] == 1)
  {
    goto LABEL_768;
  }

LABEL_762:
  HIDWORD(v554[3]) = v108 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_766:
    *(&v554[2] + 4) = 0;
    goto LABEL_860;
  }

  v164 = __sb__runningInSpringBoard();
  if (v164)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_766;
    }
  }

  else
  {
    v490 = [MEMORY[0x277D75418] currentDevice];
    if ([v490 userInterfaceIdiom])
    {
      HIDWORD(v554[2]) = 0;
      LODWORD(v554[3]) = 1;
      goto LABEL_860;
    }
  }

  LODWORD(v554[3]) = v164 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v108 = __sb__runningInSpringBoard();
    if (v108)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v104 = [MEMORY[0x277D759A0] mainScreen];
      [v104 _referenceBounds];
    }

    v487 = v104;
    HIDWORD(v554[2]) = v108 ^ 1;
    BSSizeRoundForScale();
    if (v179 >= *(MEMORY[0x277D66E30] + 200))
    {
      memset(v554, 0, 20);
      v553 = 0;
      v550 = 0;
      v547 = 0;
      v544 = 0;
      v519 = 0;
      v516 = 0;
      v541 = 0;
      v538 = 0;
      v535 = 0;
      v532 = 0;
      v529 = 0;
      v526 = 0;
      v523 = 0;
      v513 = 0;
      v510 = 0;
      v507 = 0;
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 50.0;
      goto LABEL_597;
    }
  }

  else
  {
    HIDWORD(v554[2]) = 0;
  }

LABEL_860:
  v108 = __sb__runningInSpringBoard();
  v104 = &off_21EC94000;
  if (v108)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v554[1] + 4) = 0;
      goto LABEL_870;
    }
  }

  else
  {
    v491 = [MEMORY[0x277D75418] currentDevice];
    if ([v491 userInterfaceIdiom])
    {
      HIDWORD(v554[1]) = 0;
      LODWORD(v554[2]) = 1;
      goto LABEL_870;
    }
  }

  LODWORD(v554[2]) = v108 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v108 = __sb__runningInSpringBoard();
    if (v108)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v485 = [MEMORY[0x277D759A0] mainScreen];
      [v485 _referenceBounds];
    }

    HIDWORD(v554[1]) = v108 ^ 1;
    BSSizeRoundForScale();
    if (v174 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_874;
    }
  }

  else
  {
    HIDWORD(v554[1]) = 0;
  }

LABEL_870:
  if (_SBF_Private_IsD94Like())
  {
    *(v554 + 4) = 0;
    LODWORD(v554[0]) = 0;
    v553 = 0;
    v550 = 0;
    v547 = 0;
    v544 = 0;
    v519 = 0;
    v516 = 0;
    v541 = 0;
    v538 = 0;
    v535 = 0;
    v532 = 0;
    v529 = 0;
    v526 = 0;
    v523 = 0;
    v513 = 0;
    v510 = 0;
    v507 = 0;
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 43.66666;
    goto LABEL_597;
  }

LABEL_874:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_878:
    *(v554 + 4) = 0;
    goto LABEL_999;
  }

  v175 = __sb__runningInSpringBoard();
  if (v175)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_878;
    }
  }

  else
  {
    v486 = [MEMORY[0x277D75418] currentDevice];
    if ([v486 userInterfaceIdiom])
    {
      HIDWORD(v554[0]) = 0;
      LODWORD(v554[1]) = 1;
      goto LABEL_999;
    }
  }

  LODWORD(v554[1]) = v175 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v108 = __sb__runningInSpringBoard();
    if (v108)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v478 = [MEMORY[0x277D759A0] mainScreen];
      [v478 _referenceBounds];
    }

    HIDWORD(v554[0]) = v108 ^ 1;
    BSSizeRoundForScale();
    if (v202 >= *(MEMORY[0x277D66E30] + 136))
    {
      LODWORD(v554[0]) = 0;
      v553 = 0;
      v550 = 0;
      v547 = 0;
      v544 = 0;
      v519 = 0;
      v516 = 0;
      v541 = 0;
      v538 = 0;
      v535 = 0;
      v532 = 0;
      v529 = 0;
      v526 = 0;
      v523 = 0;
      v513 = 0;
      v510 = 0;
      v507 = 0;
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 50.0;
      goto LABEL_597;
    }
  }

  else
  {
    HIDWORD(v554[0]) = 0;
  }

LABEL_999:
  v108 = __sb__runningInSpringBoard();
  if (v108)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v554[0]) = 0;
      HIDWORD(v553) = 0;
      goto LABEL_1009;
    }
  }

  else
  {
    v489 = [MEMORY[0x277D75418] currentDevice];
    if ([v489 userInterfaceIdiom])
    {
      HIDWORD(v553) = 0;
      LODWORD(v554[0]) = 1;
      goto LABEL_1009;
    }
  }

  LODWORD(v554[0]) = v108 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v108 = __sb__runningInSpringBoard();
    if (v108)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v482 = [MEMORY[0x277D759A0] mainScreen];
      [v482 _referenceBounds];
    }

    HIDWORD(v553) = v108 ^ 1;
    BSSizeRoundForScale();
    if (v192 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_1013;
    }
  }

  else
  {
    HIDWORD(v553) = 0;
  }

LABEL_1009:
  if (_SBF_Private_IsD64Like())
  {
    LODWORD(v553) = 0;
    v550 = 0;
    v547 = 0;
    v544 = 0;
    v519 = 0;
    v516 = 0;
    v541 = 0;
    v538 = 0;
    v535 = 0;
    v532 = 0;
    v529 = 0;
    v526 = 0;
    v523 = 0;
    v513 = 0;
    v510 = 0;
    v507 = 0;
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 43.666666;
    goto LABEL_597;
  }

LABEL_1013:
  v193 = __sb__runningInSpringBoard();
  if (v193)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v553) = 0;
      HIDWORD(v550) = 0;
      goto LABEL_1023;
    }
  }

  else
  {
    v488 = [MEMORY[0x277D75418] currentDevice];
    if ([v488 userInterfaceIdiom])
    {
      HIDWORD(v550) = 0;
      LODWORD(v553) = 1;
      goto LABEL_1023;
    }
  }

  LODWORD(v553) = v193 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v108 = __sb__runningInSpringBoard();
    if (v108)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v479 = [MEMORY[0x277D759A0] mainScreen];
      [v479 _referenceBounds];
    }

    HIDWORD(v550) = v108 ^ 1;
    BSSizeRoundForScale();
    if (v198 >= *(MEMORY[0x277D66E30] + 136))
    {
      LODWORD(v550) = 0;
      v547 = 0;
      v544 = 0;
      v519 = 0;
      v516 = 0;
      v541 = 0;
      v538 = 0;
      v535 = 0;
      v532 = 0;
      v529 = 0;
      v526 = 0;
      v523 = 0;
      v513 = 0;
      v510 = 0;
      v507 = 0;
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 50.0;
      goto LABEL_597;
    }
  }

  else
  {
    HIDWORD(v550) = 0;
  }

LABEL_1023:
  v108 = __sb__runningInSpringBoard();
  if (v108)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v550) = 0;
      HIDWORD(v547) = 0;
      goto LABEL_1051;
    }
  }

  else
  {
    v484 = [MEMORY[0x277D75418] currentDevice];
    if ([v484 userInterfaceIdiom])
    {
      HIDWORD(v547) = 0;
      LODWORD(v550) = 1;
      goto LABEL_1051;
    }
  }

  LODWORD(v550) = v108 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v108 = __sb__runningInSpringBoard();
    if (v108)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v477 = [MEMORY[0x277D759A0] mainScreen];
      [v477 _referenceBounds];
    }

    HIDWORD(v547) = v108 ^ 1;
    BSSizeRoundForScale();
    if (v209 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_1103;
    }
  }

  else
  {
    HIDWORD(v547) = 0;
  }

LABEL_1051:
  if (_SBF_Private_IsD54())
  {
    LODWORD(v547) = 0;
    v544 = 0;
    v519 = 0;
    v516 = 0;
    v541 = 0;
    v538 = 0;
    v535 = 0;
    v532 = 0;
    v529 = 0;
    v526 = 0;
    v523 = 0;
    v513 = 0;
    v510 = 0;
    v507 = 0;
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 43.66666;
    goto LABEL_597;
  }

LABEL_1103:
  v210 = __sb__runningInSpringBoard();
  if (v210)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v104 = 0;
      HIDWORD(v544) = 0;
      goto LABEL_1143;
    }
  }

  else
  {
    v483 = [MEMORY[0x277D75418] currentDevice];
    if ([v483 userInterfaceIdiom])
    {
      HIDWORD(v544) = 0;
      v104 = 1;
      goto LABEL_1143;
    }
  }

  v104 = v210 ^ 1u;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v215 = __sb__runningInSpringBoard();
    if (v215)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v474 = [MEMORY[0x277D759A0] mainScreen];
      [v474 _referenceBounds];
    }

    v108 = v215 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v544) = v108;
    if (v220 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      LODWORD(v547) = v104;
      v519 = 0;
      LODWORD(v544) = 0;
      v516 = 0;
      v541 = 0;
      v538 = 0;
      v535 = 0;
      v532 = 0;
      v529 = 0;
      v526 = 0;
      v523 = 0;
      v513 = 0;
      v510 = 0;
      v507 = 0;
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 0.0;
      goto LABEL_597;
    }
  }

  else
  {
    HIDWORD(v544) = 0;
  }

LABEL_1143:
  v108 = __sb__runningInSpringBoard();
  LODWORD(v547) = v104;
  if (v108)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v519 = 0;
      goto LABEL_1174;
    }
  }

  else
  {
    v481 = [MEMORY[0x277D75418] currentDevice];
    if ([v481 userInterfaceIdiom])
    {
      v519 = 0x100000000;
      goto LABEL_1174;
    }
  }

  HIDWORD(v519) = v108 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v108 = __sb__runningInSpringBoard();
    if (v108)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v473 = [MEMORY[0x277D759A0] mainScreen];
      [v473 _referenceBounds];
    }

    LODWORD(v519) = v108 ^ 1;
    BSSizeRoundForScale();
    if (v227 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_1222;
    }
  }

  else
  {
    LODWORD(v519) = 0;
  }

LABEL_1174:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    LODWORD(v544) = 0;
    v516 = 0;
    v541 = 0;
    v538 = 0;
    v535 = 0;
    v532 = 0;
    v529 = 0;
    v526 = 0;
    v523 = 0;
    v513 = 0;
    v510 = 0;
    v507 = 0;
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 0.0;
    goto LABEL_597;
  }

LABEL_1222:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_1226:
    LODWORD(v544) = 0;
    HIDWORD(v516) = 0;
    goto LABEL_1308;
  }

  v228 = __sb__runningInSpringBoard();
  if (v228)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_1226;
    }
  }

  else
  {
    v476 = [MEMORY[0x277D75418] currentDevice];
    if ([v476 userInterfaceIdiom])
    {
      HIDWORD(v516) = 0;
      LODWORD(v544) = 1;
      goto LABEL_1308;
    }
  }

  LODWORD(v544) = v228 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v240 = __sb__runningInSpringBoard();
    if (v240)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v104 = [MEMORY[0x277D759A0] mainScreen];
      [v104 _referenceBounds];
    }

    v472 = v104;
    v108 = v240 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v516) = v108;
    if (v246 >= *(MEMORY[0x277D66E30] + 184))
    {
      v541 = 0;
      v538 = 0;
      v535 = 0;
      v532 = 0;
      v529 = 0;
      v526 = 0;
      v523 = 0;
      LODWORD(v516) = 0;
      v513 = 0;
      v510 = 0;
      v507 = 0;
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 43.0;
      goto LABEL_597;
    }
  }

  else
  {
    HIDWORD(v516) = 0;
  }

LABEL_1308:
  v108 = __sb__runningInSpringBoard();
  v104 = &off_21EC94000;
  if (v108)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v541 = 0;
      goto LABEL_1318;
    }
  }

  else
  {
    v480 = [MEMORY[0x277D75418] currentDevice];
    if ([v480 userInterfaceIdiom])
    {
      v541 = 0x100000000;
      goto LABEL_1318;
    }
  }

  HIDWORD(v541) = v108 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v108 = __sb__runningInSpringBoard();
    if (v108)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v469 = [MEMORY[0x277D759A0] mainScreen];
      [v469 _referenceBounds];
    }

    LODWORD(v541) = v108 ^ 1;
    BSSizeRoundForScale();
    if (v241 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_1322;
    }
  }

  else
  {
    LODWORD(v541) = 0;
  }

LABEL_1318:
  if (_SBF_Private_IsD93Like())
  {
    v538 = 0;
    v535 = 0;
    v532 = 0;
    v529 = 0;
    v526 = 0;
    v523 = 0;
    LODWORD(v516) = 0;
    v513 = 0;
    v510 = 0;
    v507 = 0;
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 35.33333;
    goto LABEL_597;
  }

LABEL_1322:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_1326:
    v538 = 0;
    goto LABEL_1420;
  }

  v242 = __sb__runningInSpringBoard();
  if (v242)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_1326;
    }
  }

  else
  {
    v471 = [MEMORY[0x277D75418] currentDevice];
    if ([v471 userInterfaceIdiom])
    {
      v538 = 0x100000000;
      goto LABEL_1420;
    }
  }

  HIDWORD(v538) = v242 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v108 = __sb__runningInSpringBoard();
    if (v108)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v463 = [MEMORY[0x277D759A0] mainScreen];
      [v463 _referenceBounds];
    }

    LODWORD(v538) = v108 ^ 1;
    BSSizeRoundForScale();
    if (v261 >= *(MEMORY[0x277D66E30] + 104))
    {
      v535 = 0;
      v532 = 0;
      v529 = 0;
      v526 = 0;
      v523 = 0;
      LODWORD(v516) = 0;
      v513 = 0;
      v510 = 0;
      v507 = 0;
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 43.0;
      goto LABEL_597;
    }
  }

  else
  {
    LODWORD(v538) = 0;
  }

LABEL_1420:
  v108 = __sb__runningInSpringBoard();
  if (v108)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v535 = 0;
      goto LABEL_1430;
    }
  }

  else
  {
    v475 = [MEMORY[0x277D75418] currentDevice];
    if ([v475 userInterfaceIdiom])
    {
      v535 = 0x100000000;
      goto LABEL_1430;
    }
  }

  HIDWORD(v535) = v108 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v108 = __sb__runningInSpringBoard();
    if (v108)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v466 = [MEMORY[0x277D759A0] mainScreen];
      [v466 _referenceBounds];
    }

    LODWORD(v535) = v108 ^ 1;
    BSSizeRoundForScale();
    if (v256 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_1434;
    }
  }

  else
  {
    LODWORD(v535) = 0;
  }

LABEL_1430:
  if (_SBF_Private_IsD63Like())
  {
    v532 = 0;
    v529 = 0;
    v526 = 0;
    v523 = 0;
    LODWORD(v516) = 0;
    v513 = 0;
    v510 = 0;
    v507 = 0;
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 35.33333;
    goto LABEL_597;
  }

LABEL_1434:
  if (!_SBF_Private_IsD23Like())
  {
LABEL_1438:
    v532 = 0;
    goto LABEL_1559;
  }

  v257 = __sb__runningInSpringBoard();
  if (v257)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_1438;
    }
  }

  else
  {
    v467 = [MEMORY[0x277D75418] currentDevice];
    if ([v467 userInterfaceIdiom])
    {
      v532 = 0x100000000;
      goto LABEL_1559;
    }
  }

  HIDWORD(v532) = v257 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v275 = __sb__runningInSpringBoard();
    if (v275)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v459 = [MEMORY[0x277D759A0] mainScreen];
      [v459 _referenceBounds];
    }

    v108 = v275 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v532) = v108;
    if (v286 >= *(MEMORY[0x277D66E30] + 216))
    {
      v529 = 0;
      v526 = 0;
      v523 = 0;
      LODWORD(v516) = 0;
      v513 = 0;
      v510 = 0;
      v507 = 0;
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 43.0;
      goto LABEL_597;
    }
  }

  else
  {
    LODWORD(v532) = 0;
  }

LABEL_1559:
  v108 = __sb__runningInSpringBoard();
  if (v108)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v529 = 0;
      goto LABEL_1569;
    }
  }

  else
  {
    v470 = [MEMORY[0x277D75418] currentDevice];
    if ([v470 userInterfaceIdiom])
    {
      v529 = 0x100000000;
      goto LABEL_1569;
    }
  }

  HIDWORD(v529) = v108 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v108 = __sb__runningInSpringBoard();
    if (v108)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v462 = [MEMORY[0x277D759A0] mainScreen];
      [v462 _referenceBounds];
    }

    LODWORD(v529) = v108 ^ 1;
    BSSizeRoundForScale();
    if (v276 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_1573;
    }
  }

  else
  {
    LODWORD(v529) = 0;
  }

LABEL_1569:
  if (_SBF_Private_IsD23Like())
  {
    v526 = 0;
    v523 = 0;
    LODWORD(v516) = 0;
    v513 = 0;
    v510 = 0;
    v507 = 0;
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 35.33333;
    goto LABEL_597;
  }

LABEL_1573:
  v277 = __sb__runningInSpringBoard();
  if (v277)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v526 = 0;
      goto LABEL_1583;
    }
  }

  else
  {
    v468 = [MEMORY[0x277D75418] currentDevice];
    if ([v468 userInterfaceIdiom])
    {
      v526 = 0x100000000;
      goto LABEL_1583;
    }
  }

  HIDWORD(v526) = v277 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v108 = __sb__runningInSpringBoard();
    if (v108)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v460 = [MEMORY[0x277D759A0] mainScreen];
      [v460 _referenceBounds];
    }

    LODWORD(v526) = v108 ^ 1;
    BSSizeRoundForScale();
    if (v282 >= *(MEMORY[0x277D66E30] + 120))
    {
      v523 = 0;
      LODWORD(v516) = 0;
      v513 = 0;
      v510 = 0;
      v507 = 0;
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 0.0;
      goto LABEL_597;
    }
  }

  else
  {
    LODWORD(v526) = 0;
  }

LABEL_1583:
  v108 = __sb__runningInSpringBoard();
  if (v108)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v523) = 0;
      LODWORD(v516) = 0;
      goto LABEL_1611;
    }
  }

  else
  {
    v465 = [MEMORY[0x277D75418] currentDevice];
    if ([v465 userInterfaceIdiom])
    {
      LODWORD(v516) = 0;
      HIDWORD(v523) = 1;
      goto LABEL_1611;
    }
  }

  HIDWORD(v523) = v108 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v108 = __sb__runningInSpringBoard();
    if (v108)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v458 = [MEMORY[0x277D759A0] mainScreen];
      [v458 _referenceBounds];
    }

    LODWORD(v516) = v108 ^ 1;
    BSSizeRoundForScale();
    if (v293 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_1663;
    }
  }

  else
  {
    LODWORD(v516) = 0;
  }

LABEL_1611:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    v513 = 0;
    LODWORD(v523) = 0;
    v510 = 0;
    v507 = 0;
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 0.0;
    goto LABEL_597;
  }

LABEL_1663:
  v294 = __sb__runningInSpringBoard();
  if (v294)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v513) = 0;
      LODWORD(v523) = 0;
      goto LABEL_1703;
    }
  }

  else
  {
    v464 = [MEMORY[0x277D75418] currentDevice];
    if ([v464 userInterfaceIdiom])
    {
      LODWORD(v523) = 0;
      HIDWORD(v513) = 1;
      goto LABEL_1703;
    }
  }

  HIDWORD(v513) = v294 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v108 = __sb__runningInSpringBoard();
    if (v108)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v457 = [MEMORY[0x277D759A0] mainScreen];
      [v457 _referenceBounds];
    }

    LODWORD(v523) = v108 ^ 1;
    BSSizeRoundForScale();
    if (v301 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v513) = 0;
      v510 = 0;
      v507 = 0;
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 43.0;
      goto LABEL_597;
    }
  }

  else
  {
    LODWORD(v523) = 0;
  }

LABEL_1703:
  v108 = __sb__runningInSpringBoard();
  if (v108)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v513) = 0;
      LODWORD(v510) = 0;
      goto LABEL_1731;
    }
  }

  else
  {
    v461 = [MEMORY[0x277D75418] currentDevice];
    if ([v461 userInterfaceIdiom])
    {
      LODWORD(v510) = 0;
      LODWORD(v513) = 1;
      goto LABEL_1731;
    }
  }

  LODWORD(v513) = v108 ^ 1;
  if (SBFEffectiveHomeButtonType() != 2)
  {
    LODWORD(v510) = 0;
    goto LABEL_1731;
  }

  v108 = __sb__runningInSpringBoard();
  if (v108)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v456 = [MEMORY[0x277D759A0] mainScreen];
    [v456 _referenceBounds];
  }

  LODWORD(v510) = v108 ^ 1;
  BSSizeRoundForScale();
  if (v305 < *(MEMORY[0x277D66E30] + 104))
  {
LABEL_1731:
    if (_SBF_Private_IsD53())
    {
      HIDWORD(v510) = 0;
      v507 = 0;
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 35.33333;
      goto LABEL_597;
    }
  }

  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
  {
    goto LABEL_1782;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    goto LABEL_1784;
  }

  if (_SBF_Private_IsD52OrSimilarDevice())
  {
LABEL_1782:
    HIDWORD(v510) = 0;
    v507 = 0;
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 44.0;
    goto LABEL_597;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
LABEL_1784:
    HIDWORD(v510) = 0;
    v507 = 0;
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 37.66666;
    goto LABEL_597;
  }

  v309 = __sb__runningInSpringBoard();
  if (v309)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v510) = 0;
      HIDWORD(v507) = 0;
      goto LABEL_1843;
    }
  }

  else
  {
    v455 = [MEMORY[0x277D75418] currentDevice];
    if ([v455 userInterfaceIdiom])
    {
      HIDWORD(v507) = 0;
      HIDWORD(v510) = 1;
      goto LABEL_1843;
    }
  }

  HIDWORD(v510) = v309 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v108 = __sb__runningInSpringBoard();
    if (v108)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v453 = [MEMORY[0x277D759A0] mainScreen];
      [v453 _referenceBounds];
    }

    HIDWORD(v507) = v108 ^ 1;
    BSSizeRoundForScale();
    if (v329 >= *(MEMORY[0x277D66E30] + 88))
    {
      LODWORD(v507) = 0;
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 0.0;
      goto LABEL_597;
    }
  }

  else
  {
    HIDWORD(v507) = 0;
  }

LABEL_1843:
  v314 = __sb__runningInSpringBoard();
  if (v314)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v507) = 0;
      v117 = 0;
      goto LABEL_1883;
    }
  }

  else
  {
    v454 = [MEMORY[0x277D75418] currentDevice];
    if ([v454 userInterfaceIdiom])
    {
      v117 = 0;
      LODWORD(v507) = 1;
      goto LABEL_1883;
    }
  }

  LODWORD(v507) = v314 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v108 = __sb__runningInSpringBoard();
    if (v108)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v452 = [MEMORY[0x277D759A0] mainScreen];
      [v452 _referenceBounds];
    }

    v117 = v108 ^ 1;
    BSSizeRoundForScale();
    if (v333 >= *(MEMORY[0x277D66E30] + 72))
    {
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 0.0;
      goto LABEL_597;
    }
  }

  else
  {
    v117 = 0;
  }

LABEL_1883:
  v108 = __sb__runningInSpringBoard();
  if (!v108)
  {
    v79 = [MEMORY[0x277D75418] currentDevice];
    if ([v79 userInterfaceIdiom])
    {
      v119 = 0;
      v118 = 1;
      goto LABEL_1923;
    }

LABEL_1919:
    v118 = v108 ^ 1;
    v104 = __sb__runningInSpringBoard();
    if (v104)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v108 = [MEMORY[0x277D759A0] mainScreen];
      [v108 _referenceBounds];
    }

    v119 = v104 ^ 1;
    BSSizeRoundForScale();
    if (v324 >= *(MEMORY[0x277D66E30] + 56))
    {
      goto LABEL_1926;
    }

    goto LABEL_1923;
  }

  if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
  {
    goto LABEL_1919;
  }

  v118 = 0;
  v119 = 0;
LABEL_1923:
  v325 = __sb__runningInSpringBoard();
  if (v325)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
LABEL_1926:
      v120 = 0;
      v121 = 0.0;
      goto LABEL_597;
    }
  }

  else
  {
    v104 = [MEMORY[0x277D75418] currentDevice];
    if ([v104 userInterfaceIdiom])
    {
      v121 = 0.0;
      v120 = 1;
      goto LABEL_597;
    }
  }

  v120 = v325 ^ 1;
  v337 = __sb__runningInSpringBoard();
  if (v337)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v325 = [MEMORY[0x277D759A0] mainScreen];
    [v325 _referenceBounds];
  }

  BSSizeRoundForScale();
  v121 = 0.0;
  if (v337 != 1)
  {
  }

LABEL_597:
  if (v120)
  {
  }

  if (v119)
  {
  }

  if (v118)
  {
  }

  if (v117)
  {
  }

  if (v507)
  {
  }

  if (HIDWORD(v507))
  {
  }

  if (HIDWORD(v510))
  {
  }

  if (v510)
  {
  }

  if (v513)
  {
  }

  if (v523)
  {
  }

  if (HIDWORD(v513))
  {
  }

  if (v516)
  {
  }

  if (HIDWORD(v523))
  {
  }

  if (v526)
  {
  }

  if (HIDWORD(v526))
  {
  }

  if (v529)
  {
  }

  if (HIDWORD(v529))
  {
  }

  if (v532)
  {
  }

  if (HIDWORD(v532))
  {
  }

  if (v535)
  {
  }

  if (HIDWORD(v535))
  {
  }

  if (v538)
  {
  }

  if (HIDWORD(v538))
  {
  }

  if (v541)
  {
  }

  if (HIDWORD(v541))
  {
  }

  if (HIDWORD(v516))
  {
  }

  if (v544)
  {
  }

  if (v519)
  {
  }

  if (HIDWORD(v519))
  {
  }

  if (HIDWORD(v544))
  {
  }

  if (v547)
  {
  }

  if (HIDWORD(v547))
  {
  }

  if (v550)
  {
  }

  if (HIDWORD(v550))
  {
  }

  if (v553)
  {
  }

  if (HIDWORD(v553))
  {
  }

  if (LODWORD(v554[0]))
  {
  }

  if (HIDWORD(v554[0]))
  {
  }

  if (LODWORD(v554[1]))
  {
  }

  if (HIDWORD(v554[1]))
  {
  }

  if (LODWORD(v554[2]))
  {
  }

  if (HIDWORD(v554[2]))
  {
  }

  if (LODWORD(v554[3]))
  {
  }

  if (HIDWORD(v554[3]))
  {
  }

  if (v555)
  {
  }

  if (HIDWORD(v555))
  {
  }

  if (v556)
  {
  }

  if (HIDWORD(v556))
  {
  }

  if (v557)
  {
  }

  if (HIDWORD(v557))
  {
  }

  if (v558)
  {
  }

  if (HIDWORD(v558))
  {

    if (!v559)
    {
      goto LABEL_701;
    }
  }

  else if (!v559)
  {
LABEL_701:
    if (HIDWORD(v559))
    {
      goto LABEL_702;
    }

    goto LABEL_718;
  }

  if (HIDWORD(v559))
  {
LABEL_702:

    if (!v560)
    {
      goto LABEL_703;
    }

LABEL_719:

    if (!HIDWORD(v560))
    {
      goto LABEL_705;
    }

    goto LABEL_704;
  }

LABEL_718:
  if (v560)
  {
    goto LABEL_719;
  }

LABEL_703:
  if (HIDWORD(v560))
  {
LABEL_704:
  }

LABEL_705:
  if (v97 == 0.0)
  {
    v128 = 3;
  }

  else
  {
    v128 = -1;
  }

  v129 = [[CSMagSafeSilhouetteConfiguration alloc] initWithSize:v128 bottomOffset:v46 cornerRadius:v72 roundedCorners:v97, v121];
  silhouette = v3->_silhouette;
  v3->_silhouette = v129;

  v131 = MEMORY[0x277CD9ED0];
  [(CSMagSafeSilhouetteConfiguration *)v3->_silhouette cornerRadius];
  v132 = [v131 ringLayerWithBlendMode:v561 cornerRadius:? borderWidth:?];
  walletLayer = v3->_walletLayer;
  v3->_walletLayer = v132;

  [(CALayer *)v3->_walletLayer setCornerCurve:*MEMORY[0x277CDA138]];
  [(CALayer *)v3->_walletLayer setOpacity:0.0];
  v134 = v3->_walletLayer;
  v135 = [MEMORY[0x277D75348] whiteColor];
  -[CALayer setBackgroundColor:](v134, "setBackgroundColor:", [v135 CGColor]);

  [(CSMagSafeSilhouetteConfiguration *)v3->_silhouette bottomOffset];
  if (v136 == 0.0)
  {
    -[CALayer setMaskedCorners:](v3->_walletLayer, "setMaskedCorners:", -[CSMagSafeSilhouetteConfiguration roundedCornersMaskForOrientation:](v3->_silhouette, "roundedCornersMaskForOrientation:", [*MEMORY[0x277D76620] activeInterfaceOrientation]));
  }

  v137 = [(CSMagSafeAccessoryWalletView *)v3 configuration];
  v138 = [v137 ring];
  [v138 ringDiameter];
  v140 = v139;
  v141 = [(CSMagSafeAccessoryWalletView *)v3 configuration];
  v142 = [v141 ring];
  [v142 lineWidth];
  v144 = [CSRingLayer ringLayerWithBlendMode:v561 diameter:v140 lineWidth:v143 brightnessAmount:0.2 saturationAmount:1.25];
  trackRing = v3->_trackRing;
  v3->_trackRing = v144;

  v146 = v3->_trackRing;
  v147 = [MEMORY[0x277D75348] whiteColor];
  -[CSRingLayer setStrokeColor:](v146, "setStrokeColor:", [v147 CGColor]);

  if ([(CSMagSafeAccessoryView *)v3 isReduceTransparencyEnabled])
  {
    v148 = [(CSMagSafeAccessoryWalletView *)v3 layer];
    [v148 addSublayer:v3->_averageColorBackdropLayer];
  }

  if ([(CSMagSafeAccessoryView *)v3 isReduceMotionEnabled])
  {
    v149 = [(CSMagSafeAccessoryWalletView *)v3 layer];
    [v149 addSublayer:v3->_backgroundRadiusBackdropLayer];
  }

  v150 = [(CSMagSafeAccessoryWalletView *)v3 layer];
  [v150 addSublayer:v3->_backgroundBackdropLayer];

  v151 = [(CSMagSafeAccessoryWalletView *)v3 layer];
  [v151 insertSublayer:v3->_trackRingBlurBackdropLayer above:v3->_backgroundBackdropLayer];

  v152 = [(CSMagSafeAccessoryWalletView *)v3 layer];
  [v152 insertSublayer:v3->_walletLayer above:v3->_trackRingBlurBackdropLayer];

  v153 = [(CSMagSafeAccessoryWalletView *)v3 layer];
  [v153 insertSublayer:v3->_trackRing above:v3->_walletLayer];

LABEL_715:
  v154 = v3;

  return v154;
}

- (void)layoutSubviews
{
  v47.receiver = self;
  v47.super_class = CSMagSafeAccessoryWalletView;
  [(CSMagSafeAccessoryView *)&v47 layoutSubviews];
  v3 = [(CSMagSafeAccessoryWalletView *)self superview];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(CSMagSafeAccessoryWalletView *)self setFrame:v5, v7, v9, v11];
  v12 = [(CSMagSafeAccessoryWalletView *)self configuration];
  v13 = [v12 ring];
  [v13 ringDiameter];
  v46 = v14;
  v15 = [(CSMagSafeAccessoryWalletView *)self configuration];
  v16 = [v15 ring];
  [v16 ringDiameter];
  v18 = v17;

  if ([(CSMagSafeAccessoryView *)self isReduceTransparencyEnabled])
  {
    [(CABackdropLayer *)self->_averageColorBackdropLayer setBounds:v5, v7, v9, v11];
    averageColorBackdropLayer = self->_averageColorBackdropLayer;
    [(CABackdropLayer *)averageColorBackdropLayer bounds];
    [(CSMagSafeAccessoryWalletView *)self bounds];
    UIRectCenteredIntegralRect();
    UIRectGetCenter();
    [(CABackdropLayer *)averageColorBackdropLayer setPosition:?];
  }

  if ([(CSMagSafeAccessoryView *)self isReduceMotionEnabled])
  {
    [(CABackdropLayer *)self->_backgroundRadiusBackdropLayer setBounds:v5, v7, v9, v11];
    backgroundRadiusBackdropLayer = self->_backgroundRadiusBackdropLayer;
    [(CABackdropLayer *)backgroundRadiusBackdropLayer bounds];
    [(CSMagSafeAccessoryWalletView *)self bounds];
    v11 = v45;
    UIRectCenteredIntegralRect();
    UIRectGetCenter();
    [(CABackdropLayer *)backgroundRadiusBackdropLayer setPosition:?];
  }

  [(CABackdropLayer *)self->_backgroundBackdropLayer setBounds:v5, v7, v9, v11];
  backgroundBackdropLayer = self->_backgroundBackdropLayer;
  [(CABackdropLayer *)backgroundBackdropLayer bounds];
  [(CSMagSafeAccessoryWalletView *)self bounds];
  UIRectCenteredIntegralRect();
  UIRectGetCenter();
  [(CABackdropLayer *)backgroundBackdropLayer setPosition:?];
  [(CABackdropLayer *)self->_trackRingBlurBackdropLayer setBounds:0.0, 0.0, v46, v18];
  trackRingBlurBackdropLayer = self->_trackRingBlurBackdropLayer;
  [(CABackdropLayer *)trackRingBlurBackdropLayer bounds];
  [(CSMagSafeAccessoryWalletView *)self bounds];
  UIRectCenteredIntegralRect();
  UIRectGetCenter();
  [(CABackdropLayer *)trackRingBlurBackdropLayer setPosition:?];
  [(CSRingLayer *)self->_trackRingBlurLayer setBounds:0.0, 0.0, v46, v18];
  trackRingBlurLayer = self->_trackRingBlurLayer;
  [(CSRingLayer *)trackRingBlurLayer bounds];
  [(CABackdropLayer *)self->_trackRingBlurBackdropLayer bounds];
  UIRectCenteredIntegralRect();
  UIRectGetCenter();
  [(CSRingLayer *)trackRingBlurLayer setPosition:?];
  [(CSMagSafeSilhouetteConfiguration *)self->_silhouette size];
  v25 = v24;
  [(CSMagSafeSilhouetteConfiguration *)self->_silhouette size];
  v27 = v26;
  v28 = MEMORY[0x277D76620];
  v29 = [*MEMORY[0x277D76620] activeInterfaceOrientation];
  if ((v29 - 1) >= 2)
  {
    v30 = v25;
  }

  else
  {
    v30 = v27;
  }

  if ((v29 - 1) >= 2)
  {
    v31 = v27;
  }

  else
  {
    v31 = v25;
  }

  v32 = [*v28 activeInterfaceOrientation];
  if ((v32 - 1) > 1)
  {
    if (v32 == 3)
    {
      [(CSMagSafeAccessoryWalletView *)self bounds];
      v40 = v39;
      [(CSMagSafeSilhouetteConfiguration *)self->_silhouette bottomOffset];
      v34 = v40 - (v31 + v41);
    }

    else
    {
      [(CSMagSafeSilhouetteConfiguration *)self->_silhouette bottomOffset];
      v34 = v42;
    }

    [(CSMagSafeAccessoryWalletView *)self bounds];
    v38 = (v43 - v30) * 0.5;
  }

  else
  {
    [(CSMagSafeAccessoryWalletView *)self bounds];
    v34 = (v33 - v31) * 0.5;
    [(CSMagSafeAccessoryWalletView *)self bounds];
    v36 = v35;
    [(CSMagSafeSilhouetteConfiguration *)self->_silhouette bottomOffset];
    v38 = v36 - (v30 + v37);
  }

  [(CALayer *)self->_walletLayer setFrame:v34, v38, v31, v30];
  [(CSRingLayer *)self->_trackRing setBounds:0.0, 0.0, v46, v18];
  trackRing = self->_trackRing;
  [(CSRingLayer *)trackRing bounds];
  [(CSMagSafeAccessoryWalletView *)self bounds];
  UIRectCenteredIntegralRect();
  UIRectGetCenter();
  [(CSRingLayer *)trackRing setPosition:?];
}

- (void)_presentAnimation
{
  v36[2] = *MEMORY[0x277D85DE8];
  v3 = CACurrentMediaTime();
  if ([(CSMagSafeAccessoryView *)self isReduceTransparencyEnabled])
  {
    v4 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
    [v4 setKeyTimes:&unk_2830790B0];
    [v4 setValues:&unk_2830790C8];
    [v4 setDuration:0.42];
    [v4 setRemovedOnCompletion:0];
    v5 = *MEMORY[0x277CDA238];
    [v4 setFillMode:*MEMORY[0x277CDA238]];
    v6 = *MEMORY[0x277CDA7C8];
    v7 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
    [v4 setTimingFunction:v7];

    [(CABackdropLayer *)self->_averageColorBackdropLayer addAnimation:v4 forKey:@"opacity"];
  }

  else
  {
    v4 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"filters.colorBrightness.inputAmount"];
    [v4 setKeyTimes:&unk_2830790E0];
    [v4 setValues:&unk_2830790F8];
    [v4 setDuration:0.42];
    [v4 setRemovedOnCompletion:0];
    v5 = *MEMORY[0x277CDA238];
    [v4 setFillMode:*MEMORY[0x277CDA238]];
    v6 = *MEMORY[0x277CDA7C8];
    v8 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
    [v4 setTimingFunction:v8];

    [(CABackdropLayer *)self->_backgroundBackdropLayer addAnimation:v4 forKey:@"filters.colorBrightness.inputAmount"];
    v9 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"filters.colorSaturate.inputAmount"];
    [v9 setKeyTimes:&unk_283079110];
    [v9 setValues:&unk_283079128];
    [v9 setDuration:0.42];
    [v9 setRemovedOnCompletion:0];
    [v9 setFillMode:v5];
    v10 = [MEMORY[0x277CD9EF8] functionWithName:v6];
    [v9 setTimingFunction:v10];

    [(CABackdropLayer *)self->_backgroundBackdropLayer addAnimation:v9 forKey:@"filters.colorSaturate.inputAmount"];
    if ([(CSMagSafeAccessoryView *)self isReduceMotionEnabled])
    {
      v11 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
      [v11 setKeyTimes:&unk_283079170];
      [v11 setValues:&unk_283079188];
      [v11 setDuration:0.42];
      [v11 setRemovedOnCompletion:0];
      [v11 setFillMode:v5];
      v12 = [MEMORY[0x277CD9EF8] functionWithName:v6];
      [v11 setTimingFunction:v12];

      backgroundRadiusBackdropLayer = self->_backgroundRadiusBackdropLayer;
      v14 = v11;
      v15 = @"opacity";
    }

    else
    {
      v11 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
      [v11 setKeyTimes:&unk_283079140];
      [v11 setValues:&unk_283079158];
      [v11 setDuration:0.42];
      [v11 setRemovedOnCompletion:0];
      [v11 setFillMode:v5];
      v16 = [MEMORY[0x277CD9EF8] functionWithName:v6];
      [v11 setTimingFunction:v16];

      backgroundRadiusBackdropLayer = self->_backgroundBackdropLayer;
      v14 = v11;
      v15 = @"filters.gaussianBlur.inputRadius";
    }

    [(CABackdropLayer *)backgroundRadiusBackdropLayer addAnimation:v14 forKey:v15];
  }

  if ([(CSMagSafeAccessoryView *)self isReduceMotionEnabled])
  {
    v17 = *MEMORY[0x277CDA7B8];
    v18 = v3 + 0.25;
  }

  else
  {
    v19 = MEMORY[0x277CCABB0];
    v20 = [(CSMagSafeAccessoryWalletView *)self configuration];
    v21 = [v20 ring];
    [v21 lineWidth];
    *&v22 = v22;
    v23 = [v19 numberWithFloat:v22];

    v24 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"lineWidth"];
    v18 = v3 + 0.25;
    [v24 setBeginTime:v18];
    [v24 setKeyTimes:&unk_2830791A0];
    v36[0] = &unk_283078A50;
    v36[1] = v23;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
    [v24 setValues:v25];

    [v24 setDuration:0.3];
    [v24 setRemovedOnCompletion:0];
    [v24 setFillMode:v5];
    v17 = *MEMORY[0x277CDA7B8];
    v26 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    [v24 setTimingFunction:v26];

    [(CSRingLayer *)self->_trackRingBlurLayer addAnimation:v24 forKey:@"lineWidth"];
    [(CSRingLayer *)self->_trackRing addAnimation:v24 forKey:@"lineWidth"];
  }

  v27 = [MEMORY[0x277CD9EC8] animationWithKeyPath:{@"opacity", v6}];
  [v27 setBeginTime:v18];
  [v27 setKeyTimes:&unk_2830791B8];
  [v27 setValues:&unk_2830791D0];
  [v27 setDuration:0.3];
  [v27 setRemovedOnCompletion:0];
  [v27 setFillMode:v5];
  v28 = [MEMORY[0x277CD9EF8] functionWithName:v17];
  [v27 setTimingFunction:v28];

  [(CSRingLayer *)self->_trackRing addAnimation:v27 forKey:@"opacity"];
  v29 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v29 setBeginTime:v18];
  [v29 setKeyTimes:&unk_2830791E8];
  [v29 setValues:&unk_283079200];
  [v29 setDuration:0.3];
  [v29 setRemovedOnCompletion:0];
  [v29 setFillMode:v5];
  v30 = [MEMORY[0x277CD9EF8] functionWithName:v17];
  [v29 setTimingFunction:v30];

  [(CABackdropLayer *)self->_trackRingBlurBackdropLayer addAnimation:v29 forKey:@"opacity"];
  v31 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v31 setBeginTime:v18];
  [v31 setKeyTimes:&unk_283079218];
  [v31 setValues:&unk_283079230];
  [v31 setDuration:0.3];
  [v31 setRemovedOnCompletion:0];
  [v31 setFillMode:v5];
  v32 = [MEMORY[0x277CD9EF8] functionWithName:v17];
  [v31 setTimingFunction:v32];

  [(CSRingLayer *)self->_trackRingBlurLayer addAnimation:v31 forKey:@"opacity"];
  v33 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v33 setBeginTime:v18];
  [v33 setKeyTimes:&unk_283079248];
  [v33 setValues:&unk_283079260];
  [v33 setDuration:0.3];
  [v33 setRemovedOnCompletion:0];
  [v33 setFillMode:v5];
  v34 = [MEMORY[0x277CD9EF8] functionWithName:v35];
  [v33 setTimingFunction:v34];

  [(CALayer *)self->_walletLayer addAnimation:v33 forKey:@"opacity"];
}

- (void)_dismissAnimation
{
  v32[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v3 setKeyTimes:&unk_283079278];
  [v3 setValues:&unk_283079290];
  [v3 setDuration:0.3];
  [v3 setRemovedOnCompletion:0];
  v4 = *MEMORY[0x277CDA238];
  [v3 setFillMode:*MEMORY[0x277CDA238]];
  v5 = *MEMORY[0x277CDA7B8];
  v6 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v3 setTimingFunction:v6];

  [(CSRingLayer *)self->_trackRing addAnimation:v3 forKey:@"fadeOut"];
  if (![(CSMagSafeAccessoryView *)self isReduceMotionEnabled])
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = [(CSMagSafeAccessoryWalletView *)self configuration];
    v9 = [v8 ring];
    [v9 lineWidth];
    *&v10 = v10;
    v11 = [v7 numberWithFloat:v10];

    v12 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"lineWidth"];
    [v12 setKeyTimes:&unk_2830792A8];
    v32[0] = v11;
    v32[1] = &unk_283078A50;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    [v12 setValues:v13];

    [v12 setDuration:0.3];
    [v12 setRemovedOnCompletion:0];
    [v12 setFillMode:v4];
    v14 = [MEMORY[0x277CD9EF8] functionWithName:v5];
    [v12 setTimingFunction:v14];

    [(CSRingLayer *)self->_trackRing addAnimation:v12 forKey:@"lineWidthDismiss"];
    [(CSRingLayer *)self->_trackRingBlurLayer addAnimation:v12 forKey:@"lineWidthDismiss"];
  }

  v15 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v15 setKeyTimes:&unk_2830792C0];
  [v15 setValues:&unk_2830792D8];
  [v15 setDuration:0.3];
  [v15 setRemovedOnCompletion:0];
  [v15 setFillMode:v4];
  v16 = *MEMORY[0x277CDA7C8];
  v17 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
  [v15 setTimingFunction:v17];

  [(CALayer *)self->_walletLayer addAnimation:v15 forKey:@"fadeOut"];
  v18 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v18 setKeyTimes:&unk_2830792F0];
  [v18 setValues:&unk_283079308];
  [v18 setDuration:0.3];
  [v18 setRemovedOnCompletion:0];
  [v18 setFillMode:v4];
  v19 = [MEMORY[0x277CD9EF8] functionWithName:v5];
  [v18 setTimingFunction:v19];

  [(CABackdropLayer *)self->_trackRingBlurBackdropLayer addAnimation:v18 forKey:@"fadeOut"];
  v20 = CACurrentMediaTime();
  if ([(CSMagSafeAccessoryView *)self isReduceTransparencyEnabled])
  {
    v21 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
    [v21 setKeyTimes:&unk_283079320];
    [v21 setValues:&unk_283079338];
    [v21 setBeginTime:v20 + 0.07];
    [v21 setDuration:0.26];
    [v21 setRemovedOnCompletion:0];
    [v21 setFillMode:v4];
    v22 = [MEMORY[0x277CD9EF8] functionWithName:v16];
    [v21 setTimingFunction:v22];

    [(CABackdropLayer *)self->_averageColorBackdropLayer addAnimation:v21 forKey:@"opacity"];
  }

  else
  {
    v21 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"filters.colorBrightness.inputAmount"];
    [v21 setBeginTime:v20 + 0.07];
    [v21 setKeyTimes:&unk_283079350];
    [v21 setValues:&unk_283079368];
    [v21 setDuration:0.26];
    [v21 setRemovedOnCompletion:0];
    [v21 setFillMode:v4];
    v23 = [MEMORY[0x277CD9EF8] functionWithName:v16];
    [v21 setTimingFunction:v23];

    [(CABackdropLayer *)self->_backgroundBackdropLayer addAnimation:v21 forKey:@"brightnessDismiss"];
    v24 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"filters.colorSaturate.inputAmount"];
    [v24 setBeginTime:v20 + 0.07];
    [v24 setKeyTimes:&unk_283079380];
    [v24 setValues:&unk_283079398];
    [v24 setDuration:0.26];
    [v24 setRemovedOnCompletion:0];
    [v24 setFillMode:v4];
    v25 = [MEMORY[0x277CD9EF8] functionWithName:v16];
    [v24 setTimingFunction:v25];

    [(CABackdropLayer *)self->_backgroundBackdropLayer addAnimation:v24 forKey:@"dismissSaturation"];
    if ([(CSMagSafeAccessoryView *)self isReduceMotionEnabled])
    {
      v26 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
      [v26 setKeyTimes:&unk_2830793E0];
      [v26 setValues:&unk_2830793F8];
      [v26 setDuration:0.26];
      [v26 setRemovedOnCompletion:0];
      [v26 setFillMode:v4];
      v27 = [MEMORY[0x277CD9EF8] functionWithName:v16];
      [v26 setTimingFunction:v27];

      backgroundRadiusBackdropLayer = self->_backgroundRadiusBackdropLayer;
      v29 = v26;
      v30 = @"opacity";
    }

    else
    {
      v26 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
      [v26 setBeginTime:v20 + 0.07];
      [v26 setKeyTimes:&unk_2830793B0];
      [v26 setValues:&unk_2830793C8];
      [v26 setDuration:0.26];
      [v26 setRemovedOnCompletion:0];
      [v26 setFillMode:v4];
      v31 = [MEMORY[0x277CD9EF8] functionWithName:v16];
      [v26 setTimingFunction:v31];

      backgroundRadiusBackdropLayer = self->_backgroundBackdropLayer;
      v30 = @"dismissGaussianBlur";
      v29 = v26;
    }

    [(CABackdropLayer *)backgroundRadiusBackdropLayer addAnimation:v29 forKey:v30];
  }
}

- (void)_runAnimationWithType:(unint64_t)a3
{
  if (a3 == 1)
  {
    [(CSMagSafeAccessoryWalletView *)self _dismissAnimation];
  }

  else if (!a3)
  {
    [(CSMagSafeAccessoryWalletView *)self _presentAnimation];
  }
}

- (void)performAnimation:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = MEMORY[0x277CD9FF0];
  v7 = a4;
  [v6 begin];
  [MEMORY[0x277CD9FF0] setCompletionBlock:v7];

  [(CSMagSafeAccessoryWalletView *)self _runAnimationWithType:a3];
  v8 = MEMORY[0x277CD9FF0];

  [v8 commit];
}

@end