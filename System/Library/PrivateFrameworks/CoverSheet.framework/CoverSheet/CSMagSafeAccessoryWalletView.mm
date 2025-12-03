@interface CSMagSafeAccessoryWalletView
- (CSMagSafeAccessoryWalletView)initWithFrame:(CGRect)frame;
- (void)_dismissAnimation;
- (void)_presentAnimation;
- (void)_runAnimationWithType:(unint64_t)type;
- (void)layoutSubviews;
- (void)performAnimation:(unint64_t)animation completionHandler:(id)handler;
@end

@implementation CSMagSafeAccessoryWalletView

- (CSMagSafeAccessoryWalletView)initWithFrame:(CGRect)frame
{
  v563[1] = *MEMORY[0x277D85DE8];
  v562.receiver = self;
  v562.super_class = CSMagSafeAccessoryWalletView;
  v3 = [(CSMagSafeAccessoryView *)&v562 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];

  if (!v3)
  {
    goto LABEL_715;
  }

  layer = [(CSMagSafeAccessoryWalletView *)v3 layer];
  [layer setAllowsGroupBlending:0];

  if ([(CSMagSafeAccessoryView *)v3 isReduceTransparencyEnabled])
  {
    layer2 = [MEMORY[0x277CD9E08] layer];
    averageColorBackdropLayer = v3->_averageColorBackdropLayer;
    v3->_averageColorBackdropLayer = layer2;

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

  configuration = [(CSMagSafeAccessoryWalletView *)v3 configuration];
  ring = [configuration ring];
  [ring ringDiameter];
  v27 = v26;
  configuration2 = [(CSMagSafeAccessoryWalletView *)v3 configuration];
  ring2 = [configuration2 ring];
  [ring2 lineWidth];
  v31 = [CSRingLayer ringLayerWithBlendMode:v13 diameter:v27 lineWidth:v30 brightnessAmount:0.1 saturationAmount:1.25];
  trackRingBlurLayer = v3->_trackRingBlurLayer;
  v3->_trackRingBlurLayer = v31;

  v33 = v3->_trackRingBlurLayer;
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  -[CSRingLayer setStrokeColor:](v33, "setStrokeColor:", [whiteColor CGColor]);

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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
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
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen _referenceBounds];
    }

    LODWORD(v560) = v36 ^ 1;
    BSSizeRoundForScale();
    if (v51 == *(MEMORY[0x277D66E30] + 288) && v50 == *(MEMORY[0x277D66E30] + 296))
    {
      v451 = 0;
      LODWORD(mainScreen82) = 0;
      LODWORD(mainScreen81) = 0;
      LODWORD(currentDevice84) = 0;
      LODWORD(currentDevice83) = 0;
      LODWORD(mainScreen80) = 0;
      LODWORD(mainScreen79) = 0;
      LODWORD(mainScreen74) = 0;
      LODWORD(mainScreen78) = 0;
      LODWORD(mainScreen71) = 0;
      v521 = 0;
      LODWORD(currentDevice77) = 0;
      LODWORD(currentDevice79) = 0;
      v524 = 0;
      v527 = 0;
      v530 = 0;
      v533 = 0;
      v536 = 0;
      v539 = 0;
      LODWORD(mainScreen72) = 0;
      v542 = 0;
      LODWORD(currentDevice78) = 0;
      LODWORD(currentDevice75) = 0;
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
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice2 userInterfaceIdiom] != 1)
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
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 _referenceBounds];
    }

    LODWORD(v559) = v38 ^ 1;
    BSSizeRoundForScale();
    if (v52 >= *(MEMORY[0x277D66E30] + 440))
    {
      v451 = 0;
      LODWORD(mainScreen82) = 0;
      LODWORD(mainScreen81) = 0;
      LODWORD(currentDevice84) = 0;
      LODWORD(currentDevice83) = 0;
      LODWORD(mainScreen80) = 0;
      LODWORD(mainScreen79) = 0;
      LODWORD(mainScreen74) = 0;
      LODWORD(mainScreen78) = 0;
      LODWORD(mainScreen71) = 0;
      v521 = 0;
      LODWORD(currentDevice77) = 0;
      LODWORD(currentDevice79) = 0;
      v524 = 0;
      v527 = 0;
      v530 = 0;
      v533 = 0;
      v536 = 0;
      v539 = 0;
      LODWORD(mainScreen72) = 0;
      v542 = 0;
      LODWORD(currentDevice78) = 0;
      LODWORD(currentDevice75) = 0;
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
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice3 userInterfaceIdiom] != 1)
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
      mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen3 _referenceBounds];
    }

    LODWORD(v558) = v40 ^ 1;
    BSSizeRoundForScale();
    if (v53 >= *(MEMORY[0x277D66E30] + 376))
    {
      v451 = 0;
      LODWORD(mainScreen82) = 0;
      LODWORD(mainScreen81) = 0;
      LODWORD(currentDevice84) = 0;
      LODWORD(currentDevice83) = 0;
      LODWORD(mainScreen80) = 0;
      LODWORD(mainScreen79) = 0;
      LODWORD(mainScreen74) = 0;
      LODWORD(mainScreen78) = 0;
      LODWORD(mainScreen71) = 0;
      v521 = 0;
      LODWORD(currentDevice77) = 0;
      LODWORD(currentDevice79) = 0;
      v524 = 0;
      v527 = 0;
      v530 = 0;
      v533 = 0;
      v536 = 0;
      v539 = 0;
      LODWORD(mainScreen72) = 0;
      v542 = 0;
      LODWORD(currentDevice78) = 0;
      LODWORD(currentDevice75) = 0;
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
    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice4 userInterfaceIdiom] != 1)
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
    mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen4 _referenceBounds];
  }

  LODWORD(v557) = v42 ^ 1;
  BSSizeRoundForScale();
  if (v43 >= *(MEMORY[0x277D66E30] + 280))
  {
    v451 = 0;
    LODWORD(mainScreen82) = 0;
    LODWORD(mainScreen81) = 0;
    LODWORD(currentDevice84) = 0;
    LODWORD(currentDevice83) = 0;
    LODWORD(mainScreen80) = 0;
    LODWORD(mainScreen79) = 0;
    LODWORD(mainScreen74) = 0;
    LODWORD(mainScreen78) = 0;
    LODWORD(mainScreen71) = 0;
    v521 = 0;
    LODWORD(currentDevice77) = 0;
    LODWORD(currentDevice79) = 0;
    v524 = 0;
    v527 = 0;
    v530 = 0;
    v533 = 0;
    v536 = 0;
    v539 = 0;
    LODWORD(mainScreen72) = 0;
    v542 = 0;
    LODWORD(currentDevice78) = 0;
    LODWORD(currentDevice75) = 0;
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
    currentDevice5 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice5 userInterfaceIdiom] != 1)
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
    mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen5 _referenceBounds];
  }

  LODWORD(v556) = v45 ^ 1;
  BSSizeRoundForScale();
  if (v47 >= *(MEMORY[0x277D66E30] + 264))
  {
    v451 = 0;
    LODWORD(mainScreen82) = 0;
    LODWORD(mainScreen81) = 0;
    LODWORD(currentDevice84) = 0;
    LODWORD(currentDevice83) = 0;
    LODWORD(mainScreen80) = 0;
    LODWORD(mainScreen79) = 0;
    LODWORD(mainScreen74) = 0;
    LODWORD(mainScreen78) = 0;
    LODWORD(mainScreen71) = 0;
    v521 = 0;
    LODWORD(currentDevice77) = 0;
    LODWORD(currentDevice79) = 0;
    v524 = 0;
    v527 = 0;
    v530 = 0;
    v533 = 0;
    v536 = 0;
    v539 = 0;
    LODWORD(mainScreen72) = 0;
    v542 = 0;
    LODWORD(currentDevice78) = 0;
    LODWORD(currentDevice75) = 0;
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
    currentDevice6 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice6 userInterfaceIdiom] != 1)
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
    mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen6 _referenceBounds];
  }

  LODWORD(v555) = v49 ^ 1;
  BSSizeRoundForScale();
  if (v156 >= *(MEMORY[0x277D66E30] + 248))
  {
    v451 = 0;
    LODWORD(mainScreen82) = 0;
    LODWORD(mainScreen81) = 0;
    LODWORD(currentDevice84) = 0;
    LODWORD(currentDevice83) = 0;
    LODWORD(mainScreen80) = 0;
    LODWORD(mainScreen79) = 0;
    LODWORD(mainScreen74) = 0;
    LODWORD(mainScreen78) = 0;
    LODWORD(mainScreen71) = 0;
    v521 = 0;
    LODWORD(currentDevice77) = 0;
    LODWORD(currentDevice79) = 0;
    v524 = 0;
    v527 = 0;
    v530 = 0;
    v533 = 0;
    v536 = 0;
    v539 = 0;
    LODWORD(mainScreen72) = 0;
    v542 = 0;
    LODWORD(currentDevice78) = 0;
    LODWORD(currentDevice75) = 0;
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
    LODWORD(mainScreen82) = 0;
    LODWORD(mainScreen81) = 0;
    LODWORD(currentDevice84) = 0;
    LODWORD(currentDevice83) = 0;
    LODWORD(mainScreen80) = 0;
    LODWORD(mainScreen79) = 0;
    LODWORD(mainScreen74) = 0;
    LODWORD(mainScreen78) = 0;
    LODWORD(mainScreen71) = 0;
    v521 = 0;
    LODWORD(currentDevice77) = 0;
    LODWORD(currentDevice79) = 0;
    v524 = 0;
    v527 = 0;
    v530 = 0;
    v533 = 0;
    v536 = 0;
    v539 = 0;
    LODWORD(mainScreen72) = 0;
    v542 = 0;
    LODWORD(currentDevice78) = 0;
    LODWORD(currentDevice75) = 0;
    v545 = 0;
    v548 = 0;
    v551 = 0;
    memset(v554, 0, 28);
    v46 = 0.0;
    HIDWORD(v554[3]) = v157 ^ 1;
    goto LABEL_69;
  }

  currentDevice7 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice7 userInterfaceIdiom] == 1)
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
    currentDevice8 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice8 userInterfaceIdiom])
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
      mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen7 _referenceBounds];
    }

    HIDWORD(v554[2]) = v165 ^ 1;
    BSSizeRoundForScale();
    if (v176 >= *(MEMORY[0x277D66E30] + 200))
    {
      v451 = 0;
      LODWORD(mainScreen82) = 0;
      LODWORD(mainScreen81) = 0;
      LODWORD(currentDevice84) = 0;
      LODWORD(currentDevice83) = 0;
      LODWORD(mainScreen80) = 0;
      LODWORD(mainScreen79) = 0;
      LODWORD(mainScreen74) = 0;
      LODWORD(mainScreen78) = 0;
      LODWORD(mainScreen71) = 0;
      v521 = 0;
      LODWORD(currentDevice77) = 0;
      LODWORD(currentDevice79) = 0;
      v524 = 0;
      v527 = 0;
      v530 = 0;
      v533 = 0;
      v536 = 0;
      v539 = 0;
      LODWORD(mainScreen72) = 0;
      v542 = 0;
      LODWORD(currentDevice78) = 0;
      LODWORD(currentDevice75) = 0;
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
    currentDevice9 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice9 userInterfaceIdiom])
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
      mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen8 _referenceBounds];
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
    LODWORD(mainScreen82) = 0;
    LODWORD(mainScreen81) = 0;
    LODWORD(currentDevice84) = 0;
    LODWORD(currentDevice83) = 0;
    LODWORD(mainScreen80) = 0;
    LODWORD(mainScreen79) = 0;
    LODWORD(mainScreen74) = 0;
    LODWORD(mainScreen78) = 0;
    LODWORD(mainScreen71) = 0;
    v521 = 0;
    LODWORD(currentDevice77) = 0;
    LODWORD(currentDevice79) = 0;
    v524 = 0;
    v527 = 0;
    v530 = 0;
    v533 = 0;
    v536 = 0;
    v539 = 0;
    LODWORD(mainScreen72) = 0;
    v542 = 0;
    LODWORD(currentDevice78) = 0;
    LODWORD(currentDevice75) = 0;
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
    whiteColor = [MEMORY[0x277D75418] currentDevice];
    if ([whiteColor userInterfaceIdiom])
    {
      v409 = whiteColor;
      HIDWORD(v554[0]) = 0;
      LODWORD(v554[1]) = 1;
      goto LABEL_897;
    }
  }

  LODWORD(v554[1]) = v169 ^ 1;
  v409 = whiteColor;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v180 = __sb__runningInSpringBoard();
    if (v180)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen9 _referenceBounds];
    }

    HIDWORD(v554[0]) = v180 ^ 1;
    BSSizeRoundForScale();
    if (v199 >= *(MEMORY[0x277D66E30] + 136))
    {
      v451 = 0;
      LODWORD(mainScreen82) = 0;
      LODWORD(mainScreen81) = 0;
      LODWORD(currentDevice84) = 0;
      LODWORD(currentDevice83) = 0;
      LODWORD(mainScreen80) = 0;
      LODWORD(mainScreen79) = 0;
      LODWORD(mainScreen74) = 0;
      LODWORD(mainScreen78) = 0;
      LODWORD(mainScreen71) = 0;
      v521 = 0;
      LODWORD(currentDevice77) = 0;
      LODWORD(currentDevice79) = 0;
      v524 = 0;
      v527 = 0;
      v530 = 0;
      v533 = 0;
      v536 = 0;
      v539 = 0;
      LODWORD(mainScreen72) = 0;
      v542 = 0;
      LODWORD(currentDevice78) = 0;
      LODWORD(currentDevice75) = 0;
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
  currentDevice17 = &off_21EC94000;
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
    currentDevice10 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice10 userInterfaceIdiom])
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
      mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen10 _referenceBounds];
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
    LODWORD(mainScreen82) = 0;
    LODWORD(mainScreen81) = 0;
    LODWORD(currentDevice84) = 0;
    LODWORD(currentDevice83) = 0;
    LODWORD(mainScreen80) = 0;
    LODWORD(mainScreen79) = 0;
    LODWORD(mainScreen74) = 0;
    LODWORD(mainScreen78) = 0;
    LODWORD(mainScreen71) = 0;
    v521 = 0;
    LODWORD(currentDevice77) = 0;
    LODWORD(currentDevice79) = 0;
    v524 = 0;
    v527 = 0;
    v530 = 0;
    v533 = 0;
    v536 = 0;
    v539 = 0;
    LODWORD(mainScreen72) = 0;
    v542 = 0;
    LODWORD(currentDevice78) = 0;
    LODWORD(currentDevice75) = 0;
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
    currentDevice11 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice11 userInterfaceIdiom])
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
      mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen11 _referenceBounds];
    }

    HIDWORD(v548) = v186 ^ 1;
    BSSizeRoundForScale();
    if (v195 >= *(MEMORY[0x277D66E30] + 136))
    {
      v451 = 0;
      LODWORD(mainScreen82) = 0;
      LODWORD(mainScreen81) = 0;
      LODWORD(currentDevice84) = 0;
      LODWORD(currentDevice83) = 0;
      LODWORD(mainScreen80) = 0;
      LODWORD(mainScreen79) = 0;
      LODWORD(mainScreen74) = 0;
      LODWORD(mainScreen78) = 0;
      LODWORD(mainScreen71) = 0;
      v521 = 0;
      LODWORD(currentDevice77) = 0;
      LODWORD(currentDevice79) = 0;
      v524 = 0;
      v527 = 0;
      v530 = 0;
      v533 = 0;
      v536 = 0;
      v539 = 0;
      LODWORD(mainScreen72) = 0;
      v542 = 0;
      LODWORD(currentDevice78) = 0;
      LODWORD(currentDevice75) = 0;
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
    currentDevice12 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice12 userInterfaceIdiom])
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
      mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen12 _referenceBounds];
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
    LODWORD(mainScreen82) = 0;
    LODWORD(mainScreen81) = 0;
    LODWORD(currentDevice84) = 0;
    LODWORD(currentDevice83) = 0;
    LODWORD(mainScreen80) = 0;
    LODWORD(mainScreen79) = 0;
    LODWORD(mainScreen74) = 0;
    LODWORD(mainScreen78) = 0;
    LODWORD(mainScreen71) = 0;
    v521 = 0;
    LODWORD(currentDevice77) = 0;
    LODWORD(currentDevice79) = 0;
    v524 = 0;
    v527 = 0;
    v530 = 0;
    v533 = 0;
    v536 = 0;
    v539 = 0;
    LODWORD(mainScreen72) = 0;
    v542 = 0;
    LODWORD(currentDevice78) = 0;
    LODWORD(currentDevice75) = 0;
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
    currentDevice13 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice13 userInterfaceIdiom])
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
      mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen13 _referenceBounds];
    }

    BSSizeRoundForScale();
    HIDWORD(v542) = v211 ^ 1;
    if (v217 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      v451 = 0;
      LODWORD(mainScreen82) = 0;
      LODWORD(mainScreen81) = 0;
      LODWORD(currentDevice84) = 0;
      LODWORD(currentDevice83) = 0;
      LODWORD(mainScreen80) = 0;
      LODWORD(mainScreen79) = 0;
      LODWORD(mainScreen74) = 0;
      LODWORD(mainScreen78) = 0;
      LODWORD(mainScreen71) = 0;
      v521 = 0;
      LODWORD(currentDevice77) = 0;
      LODWORD(currentDevice79) = 0;
      v524 = 0;
      v527 = 0;
      v530 = 0;
      v533 = 0;
      v536 = 0;
      v539 = 0;
      LODWORD(mainScreen72) = 0;
      LODWORD(v542) = 0;
      LODWORD(currentDevice78) = 0;
      LODWORD(currentDevice75) = 0;
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
      LODWORD(currentDevice78) = 0;
      LODWORD(currentDevice75) = 0;
      goto LABEL_1153;
    }
  }

  else
  {
    currentDevice14 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice14 userInterfaceIdiom])
    {
      LODWORD(currentDevice78) = 0;
      LODWORD(currentDevice75) = 1;
      goto LABEL_1153;
    }
  }

  LODWORD(currentDevice75) = v212 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v216 = __sb__runningInSpringBoard();
    if (v216)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen14 _referenceBounds];
    }

    LODWORD(currentDevice78) = v216 ^ 1;
    BSSizeRoundForScale();
    if (v221 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_1195;
    }
  }

  else
  {
    LODWORD(currentDevice78) = 0;
  }

LABEL_1153:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    v451 = 0;
    LODWORD(mainScreen82) = 0;
    LODWORD(mainScreen81) = 0;
    LODWORD(currentDevice84) = 0;
    LODWORD(currentDevice83) = 0;
    LODWORD(mainScreen80) = 0;
    LODWORD(mainScreen79) = 0;
    LODWORD(mainScreen74) = 0;
    LODWORD(mainScreen78) = 0;
    LODWORD(mainScreen71) = 0;
    v521 = 0;
    LODWORD(currentDevice77) = 0;
    LODWORD(currentDevice79) = 0;
    v524 = 0;
    v527 = 0;
    v530 = 0;
    v533 = 0;
    v536 = 0;
    v539 = 0;
    LODWORD(mainScreen72) = 0;
    LODWORD(v542) = 0;
    v46 = 0.0;
    goto LABEL_69;
  }

LABEL_1195:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_1199:
    LODWORD(mainScreen72) = 0;
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
    currentDevice15 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice15 userInterfaceIdiom])
    {
      LODWORD(mainScreen72) = 0;
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
      mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen15 _referenceBounds];
    }

    BSSizeRoundForScale();
    LODWORD(mainScreen72) = v229 ^ 1;
    if (v243 >= *(MEMORY[0x277D66E30] + 184))
    {
      v451 = 0;
      LODWORD(mainScreen82) = 0;
      LODWORD(mainScreen81) = 0;
      LODWORD(currentDevice84) = 0;
      LODWORD(currentDevice83) = 0;
      LODWORD(mainScreen80) = 0;
      LODWORD(mainScreen79) = 0;
      LODWORD(mainScreen74) = 0;
      LODWORD(mainScreen78) = 0;
      LODWORD(mainScreen71) = 0;
      v521 = 0;
      LODWORD(currentDevice77) = 0;
      LODWORD(currentDevice79) = 0;
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
    LODWORD(mainScreen72) = 0;
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
    currentDevice16 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice16 userInterfaceIdiom])
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
      mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen16 _referenceBounds];
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
    LODWORD(mainScreen82) = 0;
    LODWORD(mainScreen81) = 0;
    LODWORD(currentDevice84) = 0;
    LODWORD(currentDevice83) = 0;
    LODWORD(mainScreen80) = 0;
    LODWORD(mainScreen79) = 0;
    LODWORD(mainScreen74) = 0;
    LODWORD(mainScreen78) = 0;
    LODWORD(mainScreen71) = 0;
    v521 = 0;
    LODWORD(currentDevice77) = 0;
    LODWORD(currentDevice79) = 0;
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
    currentDevice17 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice17 userInterfaceIdiom])
    {
      v381 = currentDevice17;
      v536 = 0x100000000;
      goto LABEL_1345;
    }
  }

  HIDWORD(v536) = v233 ^ 1;
  v381 = currentDevice17;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v247 = __sb__runningInSpringBoard();
    if (v247)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen17 _referenceBounds];
    }

    LODWORD(v536) = v247 ^ 1;
    BSSizeRoundForScale();
    if (v258 >= *(MEMORY[0x277D66E30] + 104))
    {
      v451 = 0;
      LODWORD(mainScreen82) = 0;
      LODWORD(mainScreen81) = 0;
      LODWORD(currentDevice84) = 0;
      LODWORD(currentDevice83) = 0;
      LODWORD(mainScreen80) = 0;
      LODWORD(mainScreen79) = 0;
      LODWORD(mainScreen74) = 0;
      LODWORD(mainScreen78) = 0;
      LODWORD(mainScreen71) = 0;
      v521 = 0;
      LODWORD(currentDevice77) = 0;
      LODWORD(currentDevice79) = 0;
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
    currentDevice18 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice18 userInterfaceIdiom])
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
      mainScreen18 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen18 _referenceBounds];
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
    LODWORD(mainScreen82) = 0;
    LODWORD(mainScreen81) = 0;
    LODWORD(currentDevice84) = 0;
    LODWORD(currentDevice83) = 0;
    LODWORD(mainScreen80) = 0;
    LODWORD(mainScreen79) = 0;
    LODWORD(mainScreen74) = 0;
    LODWORD(mainScreen78) = 0;
    LODWORD(mainScreen71) = 0;
    v521 = 0;
    LODWORD(currentDevice77) = 0;
    LODWORD(currentDevice79) = 0;
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
    currentDevice19 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice19 userInterfaceIdiom])
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
      mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen19 _referenceBounds];
    }

    BSSizeRoundForScale();
    LODWORD(v530) = v262 ^ 1;
    if (v283 >= *(MEMORY[0x277D66E30] + 216))
    {
      v451 = 0;
      LODWORD(mainScreen82) = 0;
      LODWORD(mainScreen81) = 0;
      LODWORD(currentDevice84) = 0;
      LODWORD(currentDevice83) = 0;
      LODWORD(mainScreen80) = 0;
      LODWORD(mainScreen79) = 0;
      LODWORD(mainScreen74) = 0;
      LODWORD(mainScreen78) = 0;
      LODWORD(mainScreen71) = 0;
      v521 = 0;
      LODWORD(currentDevice77) = 0;
      LODWORD(currentDevice79) = 0;
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
    currentDevice20 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice20 userInterfaceIdiom])
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
      mainScreen20 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen20 _referenceBounds];
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
    LODWORD(mainScreen82) = 0;
    LODWORD(mainScreen81) = 0;
    LODWORD(currentDevice84) = 0;
    LODWORD(currentDevice83) = 0;
    LODWORD(mainScreen80) = 0;
    LODWORD(mainScreen79) = 0;
    LODWORD(mainScreen74) = 0;
    LODWORD(mainScreen78) = 0;
    LODWORD(mainScreen71) = 0;
    v521 = 0;
    LODWORD(currentDevice77) = 0;
    LODWORD(currentDevice79) = 0;
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
    currentDevice21 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice21 userInterfaceIdiom])
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
      mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen21 _referenceBounds];
    }

    LODWORD(v524) = v267 ^ 1;
    BSSizeRoundForScale();
    if (v279 >= *(MEMORY[0x277D66E30] + 120))
    {
      v451 = 0;
      LODWORD(mainScreen82) = 0;
      LODWORD(mainScreen81) = 0;
      LODWORD(currentDevice84) = 0;
      LODWORD(currentDevice83) = 0;
      LODWORD(mainScreen80) = 0;
      LODWORD(mainScreen79) = 0;
      LODWORD(mainScreen74) = 0;
      LODWORD(mainScreen78) = 0;
      LODWORD(mainScreen71) = 0;
      v521 = 0;
      LODWORD(currentDevice77) = 0;
      LODWORD(currentDevice79) = 0;
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
      LODWORD(currentDevice79) = 0;
      HIDWORD(v521) = 0;
      goto LABEL_1593;
    }
  }

  else
  {
    currentDevice22 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice22 userInterfaceIdiom])
    {
      LODWORD(currentDevice79) = 0;
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
      mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen22 _referenceBounds];
    }

    LODWORD(currentDevice79) = v278 ^ 1;
    BSSizeRoundForScale();
    if (v287 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_1639;
    }
  }

  else
  {
    LODWORD(currentDevice79) = 0;
  }

LABEL_1593:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    v451 = 0;
    LODWORD(mainScreen82) = 0;
    LODWORD(mainScreen81) = 0;
    LODWORD(currentDevice84) = 0;
    LODWORD(currentDevice83) = 0;
    LODWORD(mainScreen80) = 0;
    LODWORD(mainScreen79) = 0;
    LODWORD(mainScreen74) = 0;
    LODWORD(mainScreen78) = 0;
    LODWORD(mainScreen71) = 0;
    LODWORD(v521) = 0;
    LODWORD(currentDevice77) = 0;
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
      LODWORD(currentDevice77) = 0;
      goto LABEL_1673;
    }
  }

  else
  {
    currentDevice23 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice23 userInterfaceIdiom])
    {
      LODWORD(v521) = 0;
      LODWORD(currentDevice77) = 1;
      goto LABEL_1673;
    }
  }

  LODWORD(currentDevice77) = v288 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v295 = __sb__runningInSpringBoard();
    if (v295)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen23 _referenceBounds];
    }

    LODWORD(v521) = v295 ^ 1;
    BSSizeRoundForScale();
    if (v298 >= *(MEMORY[0x277D66E30] + 104))
    {
      v451 = 0;
      LODWORD(mainScreen82) = 0;
      LODWORD(mainScreen81) = 0;
      LODWORD(currentDevice84) = 0;
      LODWORD(currentDevice83) = 0;
      LODWORD(mainScreen80) = 0;
      LODWORD(mainScreen79) = 0;
      LODWORD(mainScreen74) = 0;
      LODWORD(mainScreen78) = 0;
      LODWORD(mainScreen71) = 0;
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
      LODWORD(mainScreen78) = 0;
      LODWORD(mainScreen71) = 0;
      goto LABEL_1713;
    }
  }

  else
  {
    currentDevice24 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice24 userInterfaceIdiom])
    {
      LODWORD(mainScreen78) = 0;
      LODWORD(mainScreen71) = 1;
      goto LABEL_1713;
    }
  }

  LODWORD(mainScreen71) = v296 ^ 1;
  if (SBFEffectiveHomeButtonType() != 2)
  {
    LODWORD(mainScreen78) = 0;
    goto LABEL_1713;
  }

  v297 = __sb__runningInSpringBoard();
  if (v297)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen24 _referenceBounds];
  }

  LODWORD(mainScreen78) = v297 ^ 1;
  BSSizeRoundForScale();
  if (v302 < *(MEMORY[0x277D66E30] + 104))
  {
LABEL_1713:
    if (_SBF_Private_IsD53())
    {
      v451 = 0;
      LODWORD(mainScreen82) = 0;
      LODWORD(mainScreen81) = 0;
      LODWORD(currentDevice84) = 0;
      LODWORD(currentDevice83) = 0;
      LODWORD(mainScreen80) = 0;
      LODWORD(mainScreen79) = 0;
      LODWORD(mainScreen74) = 0;
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
    LODWORD(mainScreen82) = 0;
    LODWORD(mainScreen81) = 0;
    LODWORD(currentDevice84) = 0;
    LODWORD(currentDevice83) = 0;
    LODWORD(mainScreen80) = 0;
    LODWORD(mainScreen79) = 0;
    LODWORD(mainScreen74) = 0;
    v46 = 375.0;
    goto LABEL_69;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
LABEL_1754:
    v451 = 0;
    LODWORD(mainScreen82) = 0;
    LODWORD(mainScreen81) = 0;
    LODWORD(currentDevice84) = 0;
    LODWORD(currentDevice83) = 0;
    LODWORD(mainScreen80) = 0;
    LODWORD(mainScreen79) = 0;
    LODWORD(mainScreen74) = 0;
    v46 = 320.0;
    goto LABEL_69;
  }

  v306 = __sb__runningInSpringBoard();
  if (v306)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(mainScreen79) = 0;
      LODWORD(mainScreen74) = 0;
      goto LABEL_1813;
    }
  }

  else
  {
    currentDevice25 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice25 userInterfaceIdiom])
    {
      LODWORD(mainScreen79) = 0;
      LODWORD(mainScreen74) = 1;
      goto LABEL_1813;
    }
  }

  LODWORD(mainScreen74) = v306 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v310 = __sb__runningInSpringBoard();
    if (v310)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen25 _referenceBounds];
    }

    LODWORD(mainScreen79) = v310 ^ 1;
    BSSizeRoundForScale();
    if (v326 >= *(MEMORY[0x277D66E30] + 88))
    {
      v451 = 0;
      LODWORD(mainScreen82) = 0;
      LODWORD(mainScreen81) = 0;
      LODWORD(currentDevice84) = 0;
      LODWORD(currentDevice83) = 0;
      LODWORD(mainScreen80) = 0;
      v46 = 0.0;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(mainScreen79) = 0;
  }

LABEL_1813:
  v311 = __sb__runningInSpringBoard();
  if (v311)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(currentDevice83) = 0;
      LODWORD(mainScreen80) = 0;
      goto LABEL_1853;
    }
  }

  else
  {
    currentDevice26 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice26 userInterfaceIdiom])
    {
      LODWORD(currentDevice83) = 0;
      LODWORD(mainScreen80) = 1;
      goto LABEL_1853;
    }
  }

  LODWORD(mainScreen80) = v311 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v315 = __sb__runningInSpringBoard();
    if (v315)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen26 _referenceBounds];
    }

    LODWORD(currentDevice83) = v315 ^ 1;
    BSSizeRoundForScale();
    if (v330 >= *(MEMORY[0x277D66E30] + 72))
    {
      v451 = 0;
      LODWORD(mainScreen82) = 0;
      LODWORD(mainScreen81) = 0;
      LODWORD(currentDevice84) = 0;
      v46 = 0.0;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(currentDevice83) = 0;
  }

LABEL_1853:
  v316 = __sb__runningInSpringBoard();
  if (!v316)
  {
    currentDevice27 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice27 userInterfaceIdiom])
    {
      LODWORD(mainScreen81) = 0;
      LODWORD(currentDevice84) = 1;
      goto LABEL_1893;
    }

LABEL_1889:
    LODWORD(currentDevice84) = v316 ^ 1;
    v317 = __sb__runningInSpringBoard();
    if (v317)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen27 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen27 _referenceBounds];
    }

    LODWORD(mainScreen81) = v317 ^ 1;
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

  LODWORD(mainScreen81) = 0;
  LODWORD(currentDevice84) = 0;
LABEL_1893:
  v319 = __sb__runningInSpringBoard();
  if (v319)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
LABEL_1896:
      v451 = 0;
      LODWORD(mainScreen82) = 0;
      v46 = 0.0;
      goto LABEL_69;
    }
  }

  else
  {
    currentDevice28 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice28 userInterfaceIdiom])
    {
      v451 = 0;
      v46 = 0.0;
      LODWORD(mainScreen82) = 1;
      goto LABEL_69;
    }
  }

  LODWORD(mainScreen82) = v319 ^ 1;
  v334 = __sb__runningInSpringBoard();
  if (v334)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen28 _referenceBounds];
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
      mainScreen55 = 0;
      goto LABEL_78;
    }
  }

  else
  {
    currentDevice29 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice29 userInterfaceIdiom] != 1)
    {
      v55 = 0;
      mainScreen55 = 1;
      goto LABEL_78;
    }
  }

  mainScreen55 = v54 ^ 1u;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice57 = __sb__runningInSpringBoard();
    if (currentDevice57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen29 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen29 _referenceBounds];
    }

    v55 = currentDevice57 ^ 1;
    BSSizeRoundForScale();
    if (v76 == *(MEMORY[0x277D66E30] + 288) && v75 == *(MEMORY[0x277D66E30] + 296))
    {
      v517 = currentDevice57 ^ 1;
      v520 = mainScreen55;
      LODWORD(mainScreen57) = 0;
      LODWORD(mainScreen58) = 0;
      LODWORD(mainScreen61) = 0;
      LODWORD(mainScreen59) = 0;
      LODWORD(mainScreen62) = 0;
      LODWORD(currentDevice66) = 0;
      LODWORD(currentDevice64) = 0;
      LODWORD(currentDevice65) = 0;
      LODWORD(mainScreen60) = 0;
      LODWORD(currentDevice68) = 0;
      LODWORD(currentDevice69) = 0;
      LODWORD(currentDevice80) = 0;
      LODWORD(currentDevice63) = 0;
      LODWORD(currentDevice81) = 0;
      LODWORD(currentDevice62) = 0;
      LODWORD(currentDevice67) = 0;
      LODWORD(mainScreen73) = 0;
      LODWORD(mainScreen64) = 0;
      LODWORD(currentDevice61) = 0;
      LODWORD(currentDevice70) = 0;
      LODWORD(currentDevice60) = 0;
      LODWORD(currentDevice86) = 0;
      LODWORD(currentDevice59) = 0;
      LODWORD(currentDevice71) = 0;
      LODWORD(mainScreen63) = 0;
      LODWORD(mainScreen66) = 0;
      LODWORD(currentDevice58) = 0;
      LODWORD(currentDevice72) = 0;
      v505 = 0;
      LODWORD(currentDevice74) = 0;
      LODWORD(mainScreen67) = 0;
      LODWORD(mainScreen68) = 0;
      LODWORD(currentDevice73) = 0;
      v508 = 0;
      LODWORD(currentDevice76) = 0;
      LODWORD(mainScreen69) = 0;
      LODWORD(mainScreen76) = 0;
      LODWORD(currentDevice82) = 0;
      v511 = 0;
      LODWORD(mainScreen70) = 0;
      LODWORD(mainScreen77) = 0;
      v450 = 0;
      LODWORD(mainScreen75) = 0;
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
  v520 = mainScreen55;
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
    currentDevice30 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice30 userInterfaceIdiom] != 1)
    {
      v59 = 0;
      v60 = 1;
      goto LABEL_87;
    }
  }

  v60 = v58 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice57 = __sb__runningInSpringBoard();
    if (currentDevice57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen30 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen30 _referenceBounds];
    }

    v59 = currentDevice57 ^ 1;
    BSSizeRoundForScale();
    if (v77 >= *(MEMORY[0x277D66E30] + 440))
    {
      LODWORD(v514) = currentDevice57 ^ 1;
      HIDWORD(v514) = v60;
      LODWORD(mainScreen57) = 0;
      LODWORD(mainScreen58) = 0;
      LODWORD(mainScreen61) = 0;
      LODWORD(mainScreen59) = 0;
      LODWORD(mainScreen62) = 0;
      LODWORD(currentDevice66) = 0;
      LODWORD(currentDevice64) = 0;
      LODWORD(currentDevice65) = 0;
      LODWORD(mainScreen60) = 0;
      LODWORD(currentDevice68) = 0;
      LODWORD(currentDevice69) = 0;
      LODWORD(currentDevice80) = 0;
      LODWORD(currentDevice63) = 0;
      LODWORD(currentDevice81) = 0;
      LODWORD(currentDevice62) = 0;
      LODWORD(currentDevice67) = 0;
      LODWORD(mainScreen73) = 0;
      LODWORD(mainScreen64) = 0;
      LODWORD(currentDevice61) = 0;
      LODWORD(currentDevice70) = 0;
      LODWORD(currentDevice60) = 0;
      LODWORD(currentDevice86) = 0;
      LODWORD(currentDevice59) = 0;
      LODWORD(currentDevice71) = 0;
      LODWORD(mainScreen63) = 0;
      LODWORD(mainScreen66) = 0;
      LODWORD(currentDevice58) = 0;
      LODWORD(currentDevice72) = 0;
      v505 = 0;
      LODWORD(currentDevice74) = 0;
      LODWORD(mainScreen67) = 0;
      LODWORD(mainScreen68) = 0;
      LODWORD(currentDevice73) = 0;
      v508 = 0;
      LODWORD(currentDevice76) = 0;
      LODWORD(mainScreen69) = 0;
      LODWORD(mainScreen76) = 0;
      LODWORD(currentDevice82) = 0;
      v511 = 0;
      LODWORD(mainScreen70) = 0;
      LODWORD(mainScreen77) = 0;
      v450 = 0;
      LODWORD(mainScreen75) = 0;
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
    currentDevice31 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice31 userInterfaceIdiom] != 1)
    {
      v62 = 0;
      v63 = 1;
      goto LABEL_96;
    }
  }

  v63 = v61 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice57 = __sb__runningInSpringBoard();
    if (currentDevice57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen31 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen31 _referenceBounds];
    }

    v62 = currentDevice57 ^ 1;
    BSSizeRoundForScale();
    if (v78 >= *(MEMORY[0x277D66E30] + 376))
    {
      LODWORD(v511) = currentDevice57 ^ 1;
      HIDWORD(v511) = v63;
      LODWORD(mainScreen57) = 0;
      LODWORD(mainScreen58) = 0;
      LODWORD(mainScreen61) = 0;
      LODWORD(mainScreen59) = 0;
      LODWORD(mainScreen62) = 0;
      LODWORD(currentDevice66) = 0;
      LODWORD(currentDevice64) = 0;
      LODWORD(currentDevice65) = 0;
      LODWORD(mainScreen60) = 0;
      LODWORD(currentDevice68) = 0;
      LODWORD(currentDevice69) = 0;
      LODWORD(currentDevice80) = 0;
      LODWORD(currentDevice63) = 0;
      LODWORD(currentDevice81) = 0;
      LODWORD(currentDevice62) = 0;
      LODWORD(currentDevice67) = 0;
      LODWORD(mainScreen73) = 0;
      LODWORD(mainScreen64) = 0;
      LODWORD(currentDevice61) = 0;
      LODWORD(currentDevice70) = 0;
      LODWORD(currentDevice60) = 0;
      LODWORD(currentDevice86) = 0;
      LODWORD(currentDevice59) = 0;
      LODWORD(currentDevice71) = 0;
      LODWORD(mainScreen63) = 0;
      LODWORD(mainScreen66) = 0;
      LODWORD(currentDevice58) = 0;
      LODWORD(currentDevice72) = 0;
      v505 = 0;
      LODWORD(currentDevice74) = 0;
      LODWORD(mainScreen67) = 0;
      LODWORD(mainScreen68) = 0;
      LODWORD(currentDevice73) = 0;
      v508 = 0;
      LODWORD(currentDevice76) = 0;
      LODWORD(mainScreen69) = 0;
      LODWORD(mainScreen76) = 0;
      LODWORD(currentDevice82) = 0;
      LODWORD(mainScreen70) = 0;
      LODWORD(mainScreen77) = 0;
      v450 = 0;
      LODWORD(mainScreen75) = 0;
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
    currentDevice32 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice32 userInterfaceIdiom] != 1)
    {
      v508 = 0x100000000;
      goto LABEL_105;
    }
  }

  HIDWORD(v508) = v64 ^ 1;
  currentDevice57 = __sb__runningInSpringBoard();
  if (currentDevice57)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen32 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen32 _referenceBounds];
  }

  LODWORD(v508) = currentDevice57 ^ 1;
  BSSizeRoundForScale();
  if (v65 >= *(MEMORY[0x277D66E30] + 280))
  {
    LODWORD(mainScreen57) = 0;
    LODWORD(mainScreen58) = 0;
    LODWORD(mainScreen61) = 0;
    LODWORD(mainScreen59) = 0;
    LODWORD(mainScreen62) = 0;
    LODWORD(currentDevice66) = 0;
    LODWORD(currentDevice64) = 0;
    LODWORD(currentDevice65) = 0;
    LODWORD(mainScreen60) = 0;
    LODWORD(currentDevice68) = 0;
    LODWORD(currentDevice69) = 0;
    LODWORD(currentDevice80) = 0;
    LODWORD(currentDevice63) = 0;
    LODWORD(currentDevice81) = 0;
    LODWORD(currentDevice62) = 0;
    LODWORD(currentDevice67) = 0;
    LODWORD(mainScreen73) = 0;
    LODWORD(mainScreen64) = 0;
    LODWORD(currentDevice61) = 0;
    LODWORD(currentDevice70) = 0;
    LODWORD(currentDevice60) = 0;
    LODWORD(currentDevice86) = 0;
    LODWORD(currentDevice59) = 0;
    LODWORD(currentDevice71) = 0;
    LODWORD(mainScreen63) = 0;
    LODWORD(mainScreen66) = 0;
    LODWORD(currentDevice58) = 0;
    LODWORD(currentDevice72) = 0;
    v505 = 0;
    LODWORD(currentDevice74) = 0;
    LODWORD(mainScreen67) = 0;
    LODWORD(mainScreen68) = 0;
    LODWORD(currentDevice73) = 0;
    LODWORD(currentDevice76) = 0;
    LODWORD(mainScreen69) = 0;
    LODWORD(mainScreen76) = 0;
    LODWORD(currentDevice82) = 0;
    LODWORD(mainScreen70) = 0;
    LODWORD(mainScreen77) = 0;
    v450 = 0;
    LODWORD(mainScreen75) = 0;
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
    currentDevice33 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice33 userInterfaceIdiom] != 1)
    {
      v505 = 0x100000000;
      goto LABEL_115;
    }
  }

  HIDWORD(v505) = v66 ^ 1;
  currentDevice57 = __sb__runningInSpringBoard();
  if (currentDevice57)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen33 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen33 _referenceBounds];
  }

  LODWORD(v505) = currentDevice57 ^ 1;
  BSSizeRoundForScale();
  if (v73 >= *(MEMORY[0x277D66E30] + 264))
  {
    LODWORD(mainScreen57) = 0;
    LODWORD(mainScreen58) = 0;
    LODWORD(mainScreen61) = 0;
    LODWORD(mainScreen59) = 0;
    LODWORD(mainScreen62) = 0;
    LODWORD(currentDevice66) = 0;
    LODWORD(currentDevice64) = 0;
    LODWORD(currentDevice65) = 0;
    LODWORD(mainScreen60) = 0;
    LODWORD(currentDevice68) = 0;
    LODWORD(currentDevice69) = 0;
    LODWORD(currentDevice80) = 0;
    LODWORD(currentDevice63) = 0;
    LODWORD(currentDevice81) = 0;
    LODWORD(currentDevice62) = 0;
    LODWORD(currentDevice67) = 0;
    LODWORD(mainScreen73) = 0;
    LODWORD(mainScreen64) = 0;
    LODWORD(currentDevice61) = 0;
    LODWORD(currentDevice70) = 0;
    LODWORD(currentDevice60) = 0;
    LODWORD(currentDevice86) = 0;
    LODWORD(currentDevice59) = 0;
    LODWORD(currentDevice71) = 0;
    LODWORD(mainScreen63) = 0;
    LODWORD(mainScreen66) = 0;
    LODWORD(currentDevice58) = 0;
    LODWORD(currentDevice72) = 0;
    LODWORD(currentDevice74) = 0;
    LODWORD(mainScreen67) = 0;
    LODWORD(mainScreen68) = 0;
    LODWORD(currentDevice73) = 0;
    LODWORD(currentDevice76) = 0;
    LODWORD(mainScreen69) = 0;
    LODWORD(mainScreen76) = 0;
    LODWORD(currentDevice82) = 0;
    LODWORD(mainScreen70) = 0;
    LODWORD(mainScreen77) = 0;
    v450 = 0;
    LODWORD(mainScreen75) = 0;
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
      LODWORD(currentDevice59) = 0;
      LODWORD(currentDevice58) = 0;
      goto LABEL_736;
    }
  }

  else
  {
    currentDevice34 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice34 userInterfaceIdiom] != 1)
    {
      LODWORD(currentDevice59) = 0;
      LODWORD(currentDevice58) = 1;
      goto LABEL_736;
    }
  }

  LODWORD(currentDevice58) = v74 ^ 1;
  currentDevice57 = __sb__runningInSpringBoard();
  if (currentDevice57)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen34 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen34 _referenceBounds];
  }

  LODWORD(currentDevice59) = currentDevice57 ^ 1;
  BSSizeRoundForScale();
  if (v159 >= *(MEMORY[0x277D66E30] + 248))
  {
    LODWORD(mainScreen57) = 0;
    LODWORD(mainScreen58) = 0;
    LODWORD(mainScreen61) = 0;
    LODWORD(mainScreen59) = 0;
    LODWORD(mainScreen62) = 0;
    LODWORD(currentDevice66) = 0;
    LODWORD(currentDevice64) = 0;
    LODWORD(currentDevice65) = 0;
    LODWORD(mainScreen60) = 0;
    LODWORD(currentDevice68) = 0;
    LODWORD(currentDevice69) = 0;
    LODWORD(currentDevice80) = 0;
    LODWORD(currentDevice63) = 0;
    LODWORD(currentDevice81) = 0;
    LODWORD(currentDevice62) = 0;
    LODWORD(currentDevice67) = 0;
    LODWORD(mainScreen73) = 0;
    LODWORD(mainScreen64) = 0;
    LODWORD(currentDevice61) = 0;
    LODWORD(currentDevice70) = 0;
    LODWORD(currentDevice60) = 0;
    LODWORD(currentDevice86) = 0;
    LODWORD(currentDevice71) = 0;
    LODWORD(mainScreen63) = 0;
    LODWORD(mainScreen66) = 0;
    LODWORD(currentDevice72) = 0;
    LODWORD(currentDevice74) = 0;
    LODWORD(mainScreen67) = 0;
    LODWORD(mainScreen68) = 0;
    LODWORD(currentDevice73) = 0;
    LODWORD(currentDevice76) = 0;
    LODWORD(mainScreen69) = 0;
    LODWORD(mainScreen76) = 0;
    LODWORD(currentDevice82) = 0;
    LODWORD(mainScreen70) = 0;
    LODWORD(mainScreen77) = 0;
    v450 = 0;
    LODWORD(mainScreen75) = 0;
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
  currentDevice57 = __sb__runningInSpringBoard();
  if (currentDevice57)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_738;
    }

LABEL_744:
    LODWORD(mainScreen57) = 0;
    LODWORD(mainScreen58) = 0;
    LODWORD(mainScreen61) = 0;
    LODWORD(mainScreen59) = 0;
    LODWORD(mainScreen62) = 0;
    LODWORD(currentDevice66) = 0;
    LODWORD(currentDevice64) = 0;
    LODWORD(currentDevice65) = 0;
    LODWORD(mainScreen60) = 0;
    LODWORD(currentDevice68) = 0;
    LODWORD(currentDevice69) = 0;
    LODWORD(currentDevice80) = 0;
    LODWORD(currentDevice63) = 0;
    LODWORD(currentDevice81) = 0;
    LODWORD(currentDevice62) = 0;
    LODWORD(currentDevice67) = 0;
    LODWORD(mainScreen73) = 0;
    LODWORD(mainScreen64) = 0;
    LODWORD(currentDevice61) = 0;
    LODWORD(currentDevice70) = 0;
    LODWORD(currentDevice86) = 0;
    LODWORD(currentDevice71) = 0;
    LODWORD(mainScreen63) = 0;
    LODWORD(mainScreen66) = 0;
    LODWORD(currentDevice72) = 0;
    LODWORD(currentDevice74) = 0;
    LODWORD(mainScreen67) = 0;
    LODWORD(mainScreen68) = 0;
    LODWORD(currentDevice73) = 0;
    LODWORD(currentDevice76) = 0;
    LODWORD(mainScreen69) = 0;
    LODWORD(mainScreen76) = 0;
    LODWORD(currentDevice82) = 0;
    LODWORD(mainScreen70) = 0;
    LODWORD(mainScreen77) = 0;
    v450 = 0;
    LODWORD(mainScreen75) = 0;
    v449 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0.0;
    LODWORD(currentDevice60) = currentDevice57 ^ 1;
    goto LABEL_132;
  }

  currentDevice35 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice35 userInterfaceIdiom] == 1)
  {
    goto LABEL_744;
  }

LABEL_738:
  LODWORD(currentDevice60) = currentDevice57 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_742:
    LODWORD(currentDevice62) = 0;
    LODWORD(currentDevice61) = 0;
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
    currentDevice36 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice36 userInterfaceIdiom])
    {
      LODWORD(currentDevice62) = 0;
      LODWORD(currentDevice61) = 1;
      goto LABEL_810;
    }
  }

  LODWORD(currentDevice61) = v160 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice57 = __sb__runningInSpringBoard();
    if (currentDevice57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen35 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen35 _referenceBounds];
    }

    LODWORD(currentDevice62) = currentDevice57 ^ 1;
    BSSizeRoundForScale();
    if (v177 >= *(MEMORY[0x277D66E30] + 200))
    {
      LODWORD(mainScreen57) = 0;
      LODWORD(mainScreen58) = 0;
      LODWORD(mainScreen61) = 0;
      LODWORD(mainScreen59) = 0;
      LODWORD(mainScreen62) = 0;
      LODWORD(currentDevice66) = 0;
      LODWORD(currentDevice64) = 0;
      LODWORD(currentDevice65) = 0;
      LODWORD(mainScreen60) = 0;
      LODWORD(currentDevice68) = 0;
      LODWORD(currentDevice69) = 0;
      LODWORD(currentDevice80) = 0;
      LODWORD(currentDevice63) = 0;
      LODWORD(currentDevice81) = 0;
      LODWORD(currentDevice67) = 0;
      LODWORD(mainScreen73) = 0;
      LODWORD(mainScreen64) = 0;
      LODWORD(currentDevice70) = 0;
      LODWORD(currentDevice86) = 0;
      LODWORD(currentDevice71) = 0;
      LODWORD(mainScreen63) = 0;
      LODWORD(mainScreen66) = 0;
      LODWORD(currentDevice72) = 0;
      LODWORD(currentDevice74) = 0;
      LODWORD(mainScreen67) = 0;
      LODWORD(mainScreen68) = 0;
      LODWORD(currentDevice73) = 0;
      LODWORD(currentDevice76) = 0;
      LODWORD(mainScreen69) = 0;
      LODWORD(mainScreen76) = 0;
      LODWORD(currentDevice82) = 0;
      LODWORD(mainScreen70) = 0;
      LODWORD(mainScreen77) = 0;
      v450 = 0;
      LODWORD(mainScreen75) = 0;
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
    LODWORD(currentDevice62) = 0;
  }

LABEL_810:
  currentDevice57 = __sb__runningInSpringBoard();
  if (currentDevice57)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(mainScreen60) = 0;
      LODWORD(currentDevice63) = 0;
      goto LABEL_820;
    }
  }

  else
  {
    currentDevice37 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice37 userInterfaceIdiom])
    {
      LODWORD(mainScreen60) = 0;
      LODWORD(currentDevice63) = 1;
      goto LABEL_820;
    }
  }

  LODWORD(currentDevice63) = currentDevice57 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice57 = __sb__runningInSpringBoard();
    if (currentDevice57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen36 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen36 _referenceBounds];
    }

    LODWORD(mainScreen60) = currentDevice57 ^ 1;
    BSSizeRoundForScale();
    if (v170 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_824;
    }
  }

  else
  {
    LODWORD(mainScreen60) = 0;
  }

LABEL_820:
  if (_SBF_Private_IsD94Like())
  {
    LODWORD(mainScreen57) = 0;
    LODWORD(mainScreen58) = 0;
    LODWORD(mainScreen61) = 0;
    LODWORD(mainScreen59) = 0;
    LODWORD(mainScreen62) = 0;
    LODWORD(currentDevice66) = 0;
    LODWORD(currentDevice64) = 0;
    LODWORD(currentDevice65) = 0;
    LODWORD(currentDevice68) = 0;
    LODWORD(currentDevice69) = 0;
    LODWORD(currentDevice80) = 0;
    LODWORD(currentDevice81) = 0;
    LODWORD(currentDevice67) = 0;
    LODWORD(mainScreen73) = 0;
    LODWORD(mainScreen64) = 0;
    LODWORD(currentDevice70) = 0;
    LODWORD(currentDevice86) = 0;
    LODWORD(currentDevice71) = 0;
    LODWORD(mainScreen63) = 0;
    LODWORD(mainScreen66) = 0;
    LODWORD(currentDevice72) = 0;
    LODWORD(currentDevice74) = 0;
    LODWORD(mainScreen67) = 0;
    LODWORD(mainScreen68) = 0;
    LODWORD(currentDevice73) = 0;
    LODWORD(currentDevice76) = 0;
    LODWORD(mainScreen69) = 0;
    LODWORD(mainScreen76) = 0;
    LODWORD(currentDevice82) = 0;
    LODWORD(mainScreen70) = 0;
    LODWORD(mainScreen77) = 0;
    v450 = 0;
    LODWORD(mainScreen75) = 0;
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
    LODWORD(mainScreen61) = 0;
    LODWORD(currentDevice64) = 0;
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
    currentDevice38 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice38 userInterfaceIdiom])
    {
      LODWORD(mainScreen61) = 0;
      LODWORD(currentDevice64) = 1;
      goto LABEL_931;
    }
  }

  LODWORD(currentDevice64) = v171 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice57 = __sb__runningInSpringBoard();
    if (currentDevice57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen37 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen37 _referenceBounds];
    }

    LODWORD(mainScreen61) = currentDevice57 ^ 1;
    BSSizeRoundForScale();
    if (v200 >= *(MEMORY[0x277D66E30] + 136))
    {
      LODWORD(mainScreen57) = 0;
      LODWORD(mainScreen58) = 0;
      LODWORD(mainScreen59) = 0;
      LODWORD(mainScreen62) = 0;
      LODWORD(currentDevice66) = 0;
      LODWORD(currentDevice65) = 0;
      LODWORD(currentDevice68) = 0;
      LODWORD(currentDevice69) = 0;
      LODWORD(currentDevice80) = 0;
      LODWORD(currentDevice81) = 0;
      LODWORD(currentDevice67) = 0;
      LODWORD(mainScreen73) = 0;
      LODWORD(mainScreen64) = 0;
      LODWORD(currentDevice70) = 0;
      LODWORD(currentDevice86) = 0;
      LODWORD(currentDevice71) = 0;
      LODWORD(mainScreen63) = 0;
      LODWORD(mainScreen66) = 0;
      LODWORD(currentDevice72) = 0;
      LODWORD(currentDevice74) = 0;
      LODWORD(mainScreen67) = 0;
      LODWORD(mainScreen68) = 0;
      LODWORD(currentDevice73) = 0;
      LODWORD(currentDevice76) = 0;
      LODWORD(mainScreen69) = 0;
      LODWORD(mainScreen76) = 0;
      LODWORD(currentDevice82) = 0;
      LODWORD(mainScreen70) = 0;
      LODWORD(mainScreen77) = 0;
      v450 = 0;
      LODWORD(mainScreen75) = 0;
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
    LODWORD(mainScreen61) = 0;
  }

LABEL_931:
  currentDevice57 = __sb__runningInSpringBoard();
  if (currentDevice57)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(mainScreen57) = 0;
      LODWORD(mainScreen58) = 0;
      goto LABEL_941;
    }
  }

  else
  {
    currentDevice39 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice39 userInterfaceIdiom])
    {
      LODWORD(mainScreen58) = 0;
      LODWORD(mainScreen57) = 1;
      goto LABEL_941;
    }
  }

  LODWORD(mainScreen57) = currentDevice57 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice57 = __sb__runningInSpringBoard();
    if (currentDevice57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen38 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen38 _referenceBounds];
    }

    LODWORD(mainScreen58) = currentDevice57 ^ 1;
    BSSizeRoundForScale();
    if (v188 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_945;
    }
  }

  else
  {
    LODWORD(mainScreen58) = 0;
  }

LABEL_941:
  if (_SBF_Private_IsD64Like())
  {
    LODWORD(mainScreen59) = 0;
    LODWORD(mainScreen62) = 0;
    LODWORD(currentDevice66) = 0;
    LODWORD(currentDevice65) = 0;
    LODWORD(currentDevice68) = 0;
    LODWORD(currentDevice69) = 0;
    LODWORD(currentDevice80) = 0;
    LODWORD(currentDevice81) = 0;
    LODWORD(currentDevice67) = 0;
    LODWORD(mainScreen73) = 0;
    LODWORD(mainScreen64) = 0;
    LODWORD(currentDevice70) = 0;
    LODWORD(currentDevice86) = 0;
    LODWORD(currentDevice71) = 0;
    LODWORD(mainScreen63) = 0;
    LODWORD(mainScreen66) = 0;
    LODWORD(currentDevice72) = 0;
    LODWORD(currentDevice74) = 0;
    LODWORD(mainScreen67) = 0;
    LODWORD(mainScreen68) = 0;
    LODWORD(currentDevice73) = 0;
    LODWORD(currentDevice76) = 0;
    LODWORD(mainScreen69) = 0;
    LODWORD(mainScreen76) = 0;
    LODWORD(currentDevice82) = 0;
    LODWORD(mainScreen70) = 0;
    LODWORD(mainScreen77) = 0;
    v450 = 0;
    LODWORD(mainScreen75) = 0;
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
      LODWORD(mainScreen59) = 0;
      LODWORD(mainScreen62) = 0;
      goto LABEL_955;
    }
  }

  else
  {
    currentDevice40 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice40 userInterfaceIdiom])
    {
      LODWORD(mainScreen62) = 0;
      LODWORD(mainScreen59) = 1;
      goto LABEL_955;
    }
  }

  LODWORD(mainScreen59) = v189 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice57 = __sb__runningInSpringBoard();
    if (currentDevice57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen39 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen39 _referenceBounds];
    }

    LODWORD(mainScreen62) = currentDevice57 ^ 1;
    BSSizeRoundForScale();
    if (v196 >= *(MEMORY[0x277D66E30] + 136))
    {
      LODWORD(currentDevice66) = 0;
      LODWORD(currentDevice65) = 0;
      LODWORD(currentDevice68) = 0;
      LODWORD(currentDevice69) = 0;
      LODWORD(currentDevice80) = 0;
      LODWORD(currentDevice81) = 0;
      LODWORD(currentDevice67) = 0;
      LODWORD(mainScreen73) = 0;
      LODWORD(mainScreen64) = 0;
      LODWORD(currentDevice70) = 0;
      LODWORD(currentDevice86) = 0;
      LODWORD(currentDevice71) = 0;
      LODWORD(mainScreen63) = 0;
      LODWORD(mainScreen66) = 0;
      LODWORD(currentDevice72) = 0;
      LODWORD(currentDevice74) = 0;
      LODWORD(mainScreen67) = 0;
      LODWORD(mainScreen68) = 0;
      LODWORD(currentDevice73) = 0;
      LODWORD(currentDevice76) = 0;
      LODWORD(mainScreen69) = 0;
      LODWORD(mainScreen76) = 0;
      LODWORD(currentDevice82) = 0;
      LODWORD(mainScreen70) = 0;
      LODWORD(mainScreen77) = 0;
      v450 = 0;
      LODWORD(mainScreen75) = 0;
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
    LODWORD(mainScreen62) = 0;
  }

LABEL_955:
  currentDevice57 = __sb__runningInSpringBoard();
  if (currentDevice57)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(currentDevice66) = 0;
      LODWORD(currentDevice65) = 0;
      goto LABEL_1039;
    }
  }

  else
  {
    currentDevice41 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice41 userInterfaceIdiom])
    {
      LODWORD(currentDevice65) = 0;
      LODWORD(currentDevice66) = 1;
      goto LABEL_1039;
    }
  }

  LODWORD(currentDevice66) = currentDevice57 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice57 = __sb__runningInSpringBoard();
    if (currentDevice57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen40 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen40 _referenceBounds];
    }

    LODWORD(currentDevice65) = currentDevice57 ^ 1;
    BSSizeRoundForScale();
    if (v205 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_1087;
    }
  }

  else
  {
    LODWORD(currentDevice65) = 0;
  }

LABEL_1039:
  if (_SBF_Private_IsD54())
  {
    LODWORD(currentDevice68) = 0;
    LODWORD(currentDevice69) = 0;
    LODWORD(currentDevice80) = 0;
    LODWORD(currentDevice81) = 0;
    LODWORD(currentDevice67) = 0;
    LODWORD(mainScreen73) = 0;
    LODWORD(mainScreen64) = 0;
    LODWORD(currentDevice70) = 0;
    LODWORD(currentDevice86) = 0;
    LODWORD(currentDevice71) = 0;
    LODWORD(mainScreen63) = 0;
    LODWORD(mainScreen66) = 0;
    LODWORD(currentDevice72) = 0;
    LODWORD(currentDevice74) = 0;
    LODWORD(mainScreen67) = 0;
    LODWORD(mainScreen68) = 0;
    LODWORD(currentDevice73) = 0;
    LODWORD(currentDevice76) = 0;
    LODWORD(mainScreen69) = 0;
    LODWORD(mainScreen76) = 0;
    LODWORD(currentDevice82) = 0;
    LODWORD(mainScreen70) = 0;
    LODWORD(mainScreen77) = 0;
    v450 = 0;
    LODWORD(mainScreen75) = 0;
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
      LODWORD(currentDevice68) = 0;
      LODWORD(currentDevice69) = 0;
      goto LABEL_1123;
    }
  }

  else
  {
    currentDevice42 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice42 userInterfaceIdiom])
    {
      LODWORD(currentDevice69) = 0;
      LODWORD(currentDevice68) = 1;
      goto LABEL_1123;
    }
  }

  LODWORD(currentDevice68) = v206 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v213 = __sb__runningInSpringBoard();
    if (v213)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen41 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen41 _referenceBounds];
    }

    currentDevice57 = v213 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(currentDevice69) = currentDevice57;
    if (v218 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      LODWORD(currentDevice80) = 0;
      LODWORD(currentDevice81) = 0;
      LODWORD(currentDevice67) = 0;
      LODWORD(mainScreen73) = 0;
      LODWORD(mainScreen64) = 0;
      LODWORD(currentDevice70) = 0;
      LODWORD(currentDevice86) = 0;
      LODWORD(currentDevice71) = 0;
      LODWORD(mainScreen63) = 0;
      LODWORD(mainScreen66) = 0;
      LODWORD(currentDevice72) = 0;
      LODWORD(currentDevice74) = 0;
      LODWORD(mainScreen67) = 0;
      LODWORD(mainScreen68) = 0;
      LODWORD(currentDevice73) = 0;
      LODWORD(currentDevice76) = 0;
      LODWORD(mainScreen69) = 0;
      LODWORD(mainScreen76) = 0;
      LODWORD(currentDevice82) = 0;
      LODWORD(mainScreen70) = 0;
      LODWORD(mainScreen77) = 0;
      v450 = 0;
      LODWORD(mainScreen75) = 0;
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
    LODWORD(currentDevice69) = 0;
  }

LABEL_1123:
  currentDevice57 = __sb__runningInSpringBoard();
  if (currentDevice57)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(currentDevice80) = 0;
      LODWORD(currentDevice81) = 0;
      goto LABEL_1160;
    }
  }

  else
  {
    currentDevice43 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice43 userInterfaceIdiom])
    {
      LODWORD(currentDevice81) = 0;
      LODWORD(currentDevice80) = 1;
      goto LABEL_1160;
    }
  }

  LODWORD(currentDevice80) = currentDevice57 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice57 = __sb__runningInSpringBoard();
    if (currentDevice57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen42 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen42 _referenceBounds];
    }

    LODWORD(currentDevice81) = currentDevice57 ^ 1;
    BSSizeRoundForScale();
    if (v223 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_1204;
    }
  }

  else
  {
    LODWORD(currentDevice81) = 0;
  }

LABEL_1160:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    LODWORD(currentDevice67) = 0;
    LODWORD(mainScreen73) = 0;
    LODWORD(mainScreen64) = 0;
    LODWORD(currentDevice70) = 0;
    LODWORD(currentDevice86) = 0;
    LODWORD(currentDevice71) = 0;
    LODWORD(mainScreen63) = 0;
    LODWORD(mainScreen66) = 0;
    LODWORD(currentDevice72) = 0;
    LODWORD(currentDevice74) = 0;
    LODWORD(mainScreen67) = 0;
    LODWORD(mainScreen68) = 0;
    LODWORD(currentDevice73) = 0;
    LODWORD(currentDevice76) = 0;
    LODWORD(mainScreen69) = 0;
    LODWORD(mainScreen76) = 0;
    LODWORD(currentDevice82) = 0;
    LODWORD(mainScreen70) = 0;
    LODWORD(mainScreen77) = 0;
    v450 = 0;
    LODWORD(mainScreen75) = 0;
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
    LODWORD(currentDevice67) = 0;
    LODWORD(mainScreen73) = 0;
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
    currentDevice44 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice44 userInterfaceIdiom])
    {
      LODWORD(mainScreen73) = 0;
      LODWORD(currentDevice67) = 1;
      goto LABEL_1258;
    }
  }

  LODWORD(currentDevice67) = v224 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v234 = __sb__runningInSpringBoard();
    if (v234)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen43 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen43 _referenceBounds];
    }

    currentDevice57 = v234 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(mainScreen73) = currentDevice57;
    if (v244 >= *(MEMORY[0x277D66E30] + 184))
    {
      LODWORD(mainScreen64) = 0;
      LODWORD(currentDevice70) = 0;
      LODWORD(currentDevice86) = 0;
      LODWORD(currentDevice71) = 0;
      LODWORD(mainScreen63) = 0;
      LODWORD(mainScreen66) = 0;
      LODWORD(currentDevice72) = 0;
      LODWORD(currentDevice74) = 0;
      LODWORD(mainScreen67) = 0;
      LODWORD(mainScreen68) = 0;
      LODWORD(currentDevice73) = 0;
      LODWORD(currentDevice76) = 0;
      LODWORD(mainScreen69) = 0;
      LODWORD(mainScreen76) = 0;
      LODWORD(currentDevice82) = 0;
      LODWORD(mainScreen70) = 0;
      LODWORD(mainScreen77) = 0;
      v450 = 0;
      LODWORD(mainScreen75) = 0;
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
    LODWORD(mainScreen73) = 0;
  }

LABEL_1258:
  currentDevice57 = __sb__runningInSpringBoard();
  if (currentDevice57)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(mainScreen64) = 0;
      LODWORD(currentDevice70) = 0;
      goto LABEL_1268;
    }
  }

  else
  {
    currentDevice45 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice45 userInterfaceIdiom])
    {
      LODWORD(currentDevice70) = 0;
      LODWORD(mainScreen64) = 1;
      goto LABEL_1268;
    }
  }

  LODWORD(mainScreen64) = currentDevice57 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice57 = __sb__runningInSpringBoard();
    if (currentDevice57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen44 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen44 _referenceBounds];
    }

    LODWORD(currentDevice70) = currentDevice57 ^ 1;
    BSSizeRoundForScale();
    if (v235 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_1272;
    }
  }

  else
  {
    LODWORD(currentDevice70) = 0;
  }

LABEL_1268:
  if (_SBF_Private_IsD93Like())
  {
    LODWORD(currentDevice86) = 0;
    LODWORD(currentDevice71) = 0;
    LODWORD(mainScreen63) = 0;
    LODWORD(mainScreen66) = 0;
    LODWORD(currentDevice72) = 0;
    LODWORD(currentDevice74) = 0;
    LODWORD(mainScreen67) = 0;
    LODWORD(mainScreen68) = 0;
    LODWORD(currentDevice73) = 0;
    LODWORD(currentDevice76) = 0;
    LODWORD(mainScreen69) = 0;
    LODWORD(mainScreen76) = 0;
    LODWORD(currentDevice82) = 0;
    LODWORD(mainScreen70) = 0;
    LODWORD(mainScreen77) = 0;
    v450 = 0;
    LODWORD(mainScreen75) = 0;
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
    LODWORD(currentDevice86) = 0;
    LODWORD(currentDevice71) = 0;
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
    currentDevice46 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice46 userInterfaceIdiom])
    {
      LODWORD(currentDevice71) = 0;
      LODWORD(currentDevice86) = 1;
      goto LABEL_1370;
    }
  }

  LODWORD(currentDevice86) = v236 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice57 = __sb__runningInSpringBoard();
    if (currentDevice57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen45 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen45 _referenceBounds];
    }

    LODWORD(currentDevice71) = currentDevice57 ^ 1;
    BSSizeRoundForScale();
    if (v259 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(mainScreen63) = 0;
      LODWORD(mainScreen66) = 0;
      LODWORD(currentDevice72) = 0;
      LODWORD(currentDevice74) = 0;
      LODWORD(mainScreen67) = 0;
      LODWORD(mainScreen68) = 0;
      LODWORD(currentDevice73) = 0;
      LODWORD(currentDevice76) = 0;
      LODWORD(mainScreen69) = 0;
      LODWORD(mainScreen76) = 0;
      LODWORD(currentDevice82) = 0;
      LODWORD(mainScreen70) = 0;
      LODWORD(mainScreen77) = 0;
      v450 = 0;
      LODWORD(mainScreen75) = 0;
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
    LODWORD(currentDevice71) = 0;
  }

LABEL_1370:
  currentDevice57 = __sb__runningInSpringBoard();
  if (currentDevice57)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(mainScreen63) = 0;
      LODWORD(mainScreen66) = 0;
      goto LABEL_1380;
    }
  }

  else
  {
    currentDevice47 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice47 userInterfaceIdiom])
    {
      LODWORD(mainScreen66) = 0;
      LODWORD(mainScreen63) = 1;
      goto LABEL_1380;
    }
  }

  LODWORD(mainScreen63) = currentDevice57 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice57 = __sb__runningInSpringBoard();
    if (currentDevice57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen46 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen46 _referenceBounds];
    }

    LODWORD(mainScreen66) = currentDevice57 ^ 1;
    BSSizeRoundForScale();
    if (v252 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_1384;
    }
  }

  else
  {
    LODWORD(mainScreen66) = 0;
  }

LABEL_1380:
  if (_SBF_Private_IsD63Like())
  {
    LODWORD(currentDevice72) = 0;
    LODWORD(currentDevice74) = 0;
    LODWORD(mainScreen67) = 0;
    LODWORD(mainScreen68) = 0;
    LODWORD(currentDevice73) = 0;
    LODWORD(currentDevice76) = 0;
    LODWORD(mainScreen69) = 0;
    LODWORD(mainScreen76) = 0;
    LODWORD(currentDevice82) = 0;
    LODWORD(mainScreen70) = 0;
    LODWORD(mainScreen77) = 0;
    v450 = 0;
    LODWORD(mainScreen75) = 0;
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
    LODWORD(currentDevice72) = 0;
    LODWORD(currentDevice74) = 0;
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
    currentDevice48 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice48 userInterfaceIdiom])
    {
      LODWORD(currentDevice74) = 0;
      LODWORD(currentDevice72) = 1;
      goto LABEL_1491;
    }
  }

  LODWORD(currentDevice72) = v253 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v269 = __sb__runningInSpringBoard();
    if (v269)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen47 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen47 _referenceBounds];
    }

    currentDevice57 = v269 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(currentDevice74) = currentDevice57;
    if (v284 >= *(MEMORY[0x277D66E30] + 216))
    {
      LODWORD(mainScreen67) = 0;
      LODWORD(mainScreen68) = 0;
      LODWORD(currentDevice73) = 0;
      LODWORD(currentDevice76) = 0;
      LODWORD(mainScreen69) = 0;
      LODWORD(mainScreen76) = 0;
      LODWORD(currentDevice82) = 0;
      LODWORD(mainScreen70) = 0;
      LODWORD(mainScreen77) = 0;
      v450 = 0;
      LODWORD(mainScreen75) = 0;
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
    LODWORD(currentDevice74) = 0;
  }

LABEL_1491:
  currentDevice57 = __sb__runningInSpringBoard();
  if (currentDevice57)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(mainScreen67) = 0;
      LODWORD(mainScreen68) = 0;
      goto LABEL_1501;
    }
  }

  else
  {
    currentDevice49 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice49 userInterfaceIdiom])
    {
      LODWORD(mainScreen68) = 0;
      LODWORD(mainScreen67) = 1;
      goto LABEL_1501;
    }
  }

  LODWORD(mainScreen67) = currentDevice57 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice57 = __sb__runningInSpringBoard();
    if (currentDevice57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen48 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen48 _referenceBounds];
    }

    LODWORD(mainScreen68) = currentDevice57 ^ 1;
    BSSizeRoundForScale();
    if (v270 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_1505;
    }
  }

  else
  {
    LODWORD(mainScreen68) = 0;
  }

LABEL_1501:
  if (_SBF_Private_IsD23Like())
  {
    LODWORD(currentDevice73) = 0;
    LODWORD(currentDevice76) = 0;
    LODWORD(mainScreen69) = 0;
    LODWORD(mainScreen76) = 0;
    LODWORD(currentDevice82) = 0;
    LODWORD(mainScreen70) = 0;
    LODWORD(mainScreen77) = 0;
    v450 = 0;
    LODWORD(mainScreen75) = 0;
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
      LODWORD(currentDevice73) = 0;
      LODWORD(currentDevice76) = 0;
      goto LABEL_1515;
    }
  }

  else
  {
    currentDevice50 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice50 userInterfaceIdiom])
    {
      LODWORD(currentDevice76) = 0;
      LODWORD(currentDevice73) = 1;
      goto LABEL_1515;
    }
  }

  LODWORD(currentDevice73) = v271 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice57 = __sb__runningInSpringBoard();
    if (currentDevice57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen49 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen49 _referenceBounds];
    }

    LODWORD(currentDevice76) = currentDevice57 ^ 1;
    BSSizeRoundForScale();
    if (v280 >= *(MEMORY[0x277D66E30] + 120))
    {
      LODWORD(mainScreen69) = 0;
      LODWORD(mainScreen76) = 0;
      LODWORD(currentDevice82) = 0;
      LODWORD(mainScreen70) = 0;
      LODWORD(mainScreen77) = 0;
      v450 = 0;
      LODWORD(mainScreen75) = 0;
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
    LODWORD(currentDevice76) = 0;
  }

LABEL_1515:
  currentDevice57 = __sb__runningInSpringBoard();
  if (currentDevice57)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(mainScreen69) = 0;
      LODWORD(mainScreen76) = 0;
      goto LABEL_1599;
    }
  }

  else
  {
    currentDevice51 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice51 userInterfaceIdiom])
    {
      LODWORD(mainScreen76) = 0;
      LODWORD(mainScreen69) = 1;
      goto LABEL_1599;
    }
  }

  LODWORD(mainScreen69) = currentDevice57 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice57 = __sb__runningInSpringBoard();
    if (currentDevice57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen50 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen50 _referenceBounds];
    }

    LODWORD(mainScreen76) = currentDevice57 ^ 1;
    BSSizeRoundForScale();
    if (v289 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_1647;
    }
  }

  else
  {
    LODWORD(mainScreen76) = 0;
  }

LABEL_1599:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    LODWORD(currentDevice82) = 0;
    LODWORD(mainScreen70) = 0;
    LODWORD(mainScreen77) = 0;
    v450 = 0;
    LODWORD(mainScreen75) = 0;
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
      LODWORD(currentDevice82) = 0;
      LODWORD(mainScreen70) = 0;
      goto LABEL_1683;
    }
  }

  else
  {
    currentDevice52 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice52 userInterfaceIdiom])
    {
      LODWORD(mainScreen70) = 0;
      LODWORD(currentDevice82) = 1;
      goto LABEL_1683;
    }
  }

  LODWORD(currentDevice82) = v290 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice57 = __sb__runningInSpringBoard();
    if (currentDevice57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen51 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen51 _referenceBounds];
    }

    LODWORD(mainScreen70) = currentDevice57 ^ 1;
    BSSizeRoundForScale();
    if (v299 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(mainScreen77) = 0;
      v450 = 0;
      LODWORD(mainScreen75) = 0;
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
    LODWORD(mainScreen70) = 0;
  }

LABEL_1683:
  currentDevice57 = __sb__runningInSpringBoard();
  if (currentDevice57)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(mainScreen77) = 0;
      v450 = 0;
      goto LABEL_1719;
    }
  }

  else
  {
    currentDevice53 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice53 userInterfaceIdiom])
    {
      v450 = 0;
      LODWORD(mainScreen77) = 1;
      goto LABEL_1719;
    }
  }

  LODWORD(mainScreen77) = currentDevice57 ^ 1;
  if (SBFEffectiveHomeButtonType() != 2)
  {
    v450 = 0;
    goto LABEL_1719;
  }

  currentDevice57 = __sb__runningInSpringBoard();
  if (currentDevice57)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen52 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen52 _referenceBounds];
  }

  v450 = currentDevice57 ^ 1;
  BSSizeRoundForScale();
  if (v303 < *(MEMORY[0x277D66E30] + 104))
  {
LABEL_1719:
    if (_SBF_Private_IsD53())
    {
      LODWORD(mainScreen75) = 0;
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

  currentDevice57 = &off_21EC94000;
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
    LODWORD(mainScreen75) = 0;
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
    LODWORD(mainScreen75) = 0;
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
      LODWORD(mainScreen75) = 0;
      v449 = 0;
      goto LABEL_1823;
    }
  }

  else
  {
    currentDevice54 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice54 userInterfaceIdiom])
    {
      v449 = 0;
      LODWORD(mainScreen75) = 1;
      goto LABEL_1823;
    }
  }

  LODWORD(mainScreen75) = v307 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice57 = __sb__runningInSpringBoard();
    if (currentDevice57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen53 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen53 _referenceBounds];
    }

    v449 = currentDevice57 ^ 1;
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
    currentDevice55 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice55 userInterfaceIdiom])
    {
      v68 = 0;
      v67 = 1;
      goto LABEL_1863;
    }
  }

  v67 = v312 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice57 = __sb__runningInSpringBoard();
    if (currentDevice57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen54 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen54 _referenceBounds];
    }

    v68 = currentDevice57 ^ 1;
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
  currentDevice57 = __sb__runningInSpringBoard();
  if (!currentDevice57)
  {
    currentDevice56 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice56 userInterfaceIdiom])
    {
      v70 = 0;
      v69 = 1;
      goto LABEL_1903;
    }

LABEL_1899:
    v69 = currentDevice57 ^ 1;
    currentDevice57 = __sb__runningInSpringBoard();
    if (currentDevice57)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen55 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen55 _referenceBounds];
    }

    v70 = currentDevice57 ^ 1;
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
  mainScreen56 = __sb__runningInSpringBoard();
  if (mainScreen56)
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
    currentDevice57 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice57 userInterfaceIdiom])
    {
      v72 = 0.0;
      v71 = 1;
      goto LABEL_132;
    }
  }

  v71 = mainScreen56 ^ 1;
  v335 = __sb__runningInSpringBoard();
  if (v335)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen56 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen56 _referenceBounds];
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

  currentDevice85 = mainScreen25;
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

  mainScreen65 = mainScreen26;
  if (v449)
  {
  }

  if (mainScreen75)
  {
  }

  if (v450)
  {
  }

  if (mainScreen77)
  {
  }

  if (mainScreen70)
  {
  }

  if (currentDevice82)
  {
  }

  if (mainScreen76)
  {
  }

  if (mainScreen69)
  {
  }

  if (currentDevice76)
  {
  }

  if (currentDevice73)
  {
  }

  if (mainScreen68)
  {
  }

  if (mainScreen67)
  {
  }

  if (currentDevice74)
  {
  }

  if (currentDevice72)
  {
  }

  if (mainScreen66)
  {
  }

  if (mainScreen63)
  {
  }

  if (currentDevice71)
  {
  }

  if (currentDevice86)
  {
  }

  if (currentDevice70)
  {
  }

  if (mainScreen64)
  {
  }

  if (mainScreen73)
  {
  }

  if (currentDevice67)
  {
  }

  if (currentDevice81)
  {
  }

  if (currentDevice80)
  {
  }

  if (currentDevice69)
  {
  }

  if (currentDevice68)
  {
  }

  if (currentDevice65)
  {
  }

  if (currentDevice66)
  {
  }

  if (mainScreen62)
  {
  }

  if (mainScreen59)
  {
  }

  if (mainScreen58)
  {
  }

  if (mainScreen57)
  {
  }

  if (mainScreen61)
  {
  }

  if (currentDevice64)
  {
  }

  if (mainScreen60)
  {
  }

  if (currentDevice63)
  {
  }

  if (currentDevice62)
  {
  }

  if (currentDevice61)
  {
  }

  if (currentDevice60)
  {
  }

  if (currentDevice59)
  {
  }

  if (currentDevice58)
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

  if (mainScreen82)
  {
  }

  if (mainScreen81)
  {
  }

  if (currentDevice84)
  {
  }

  if (currentDevice83)
  {
  }

  if (mainScreen80)
  {
  }

  if (mainScreen79)
  {
  }

  if (mainScreen74)
  {
  }

  if (mainScreen78)
  {
  }

  if (mainScreen71)
  {
  }

  if (v521)
  {
  }

  if (currentDevice77)
  {
  }

  if (currentDevice79)
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

  if (mainScreen72)
  {
  }

  if (v542)
  {
  }

  if (currentDevice78)
  {
  }

  if (currentDevice75)
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
    currentDevice58 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice58 userInterfaceIdiom] != 1)
    {
      v83 = 0;
      v82 = 1;
      goto LABEL_367;
    }
  }

  v82 = v81 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen83 = __sb__runningInSpringBoard();
    if (mainScreen83)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen57 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen57 _referenceBounds];
    }

    v83 = mainScreen83 ^ 1;
    BSSizeRoundForScale();
    if (v101 == *(MEMORY[0x277D66E30] + 288) && v100 == *(MEMORY[0x277D66E30] + 296))
    {
      LODWORD(v560) = mainScreen83 ^ 1;
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
    currentDevice59 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice59 userInterfaceIdiom] != 1)
    {
      v87 = 0;
      v86 = 1;
      goto LABEL_376;
    }
  }

  v86 = v85 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen83 = __sb__runningInSpringBoard();
    if (mainScreen83)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen58 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen58 _referenceBounds];
    }

    v87 = mainScreen83 ^ 1;
    BSSizeRoundForScale();
    if (v102 >= *(MEMORY[0x277D66E30] + 440))
    {
      LODWORD(v559) = mainScreen83 ^ 1;
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
      currentDevice85 = 0;
      v89 = 0;
      goto LABEL_385;
    }
  }

  else
  {
    currentDevice60 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice60 userInterfaceIdiom] != 1)
    {
      v89 = 0;
      currentDevice85 = 1;
      goto LABEL_385;
    }
  }

  currentDevice85 = v88 ^ 1u;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen83 = __sb__runningInSpringBoard();
    if (mainScreen83)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen59 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen59 _referenceBounds];
    }

    v89 = mainScreen83 ^ 1;
    BSSizeRoundForScale();
    if (v103 >= *(MEMORY[0x277D66E30] + 376))
    {
      LODWORD(v558) = mainScreen83 ^ 1;
      HIDWORD(v558) = currentDevice85;
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
  v558 = __PAIR64__(currentDevice85, v89);
  if (v90)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      mainScreen65 = 0;
      LODWORD(v557) = 0;
      goto LABEL_394;
    }
  }

  else
  {
    currentDevice61 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice61 userInterfaceIdiom] != 1)
    {
      LODWORD(v557) = 0;
      mainScreen65 = 1;
      goto LABEL_394;
    }
  }

  mainScreen65 = v90 ^ 1u;
  mainScreen83 = __sb__runningInSpringBoard();
  if (mainScreen83)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen60 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen60 _referenceBounds];
  }

  LODWORD(v557) = mainScreen83 ^ 1;
  BSSizeRoundForScale();
  if (v91 >= *(MEMORY[0x277D66E30] + 280))
  {
    HIDWORD(v557) = mainScreen65;
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
  HIDWORD(v557) = mainScreen65;
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
    currentDevice62 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice62 userInterfaceIdiom] != 1)
    {
      v556 = 0x100000000;
      goto LABEL_404;
    }
  }

  HIDWORD(v556) = v92 ^ 1;
  mainScreen83 = __sb__runningInSpringBoard();
  if (mainScreen83)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen61 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen61 _referenceBounds];
  }

  LODWORD(v556) = mainScreen83 ^ 1;
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
    currentDevice63 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice63 userInterfaceIdiom] != 1)
    {
      v555 = 0x100000000;
      goto LABEL_748;
    }
  }

  HIDWORD(v555) = v99 ^ 1;
  mainScreen83 = __sb__runningInSpringBoard();
  if (mainScreen83)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen62 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen62 _referenceBounds];
  }

  LODWORD(v555) = mainScreen83 ^ 1;
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
  mainScreen83 = __sb__runningInSpringBoard();
  if (mainScreen83)
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
    HIDWORD(v554[3]) = mainScreen83 ^ 1;
    goto LABEL_421;
  }

  currentDevice64 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice64 userInterfaceIdiom] == 1)
  {
    goto LABEL_756;
  }

LABEL_750:
  HIDWORD(v554[3]) = mainScreen83 ^ 1;
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
    currentDevice65 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice65 userInterfaceIdiom])
    {
      HIDWORD(v554[2]) = 0;
      LODWORD(v554[3]) = 1;
      goto LABEL_835;
    }
  }

  LODWORD(v554[3]) = v162 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen83 = __sb__runningInSpringBoard();
    if (mainScreen83)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen63 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen63 _referenceBounds];
    }

    HIDWORD(v554[2]) = mainScreen83 ^ 1;
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
  mainScreen83 = __sb__runningInSpringBoard();
  if (mainScreen83)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v554[1] + 4) = 0;
      goto LABEL_845;
    }
  }

  else
  {
    currentDevice66 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice66 userInterfaceIdiom])
    {
      HIDWORD(v554[1]) = 0;
      LODWORD(v554[2]) = 1;
      goto LABEL_845;
    }
  }

  LODWORD(v554[2]) = mainScreen83 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen83 = __sb__runningInSpringBoard();
    if (mainScreen83)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen64 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen64 _referenceBounds];
    }

    HIDWORD(v554[1]) = mainScreen83 ^ 1;
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
    currentDevice67 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice67 userInterfaceIdiom])
    {
      HIDWORD(v554[0]) = 0;
      LODWORD(v554[1]) = 1;
      goto LABEL_965;
    }
  }

  LODWORD(v554[1]) = v173 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen83 = __sb__runningInSpringBoard();
    if (mainScreen83)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen65 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen65 _referenceBounds];
    }

    currentDevice86 = mainScreen65;
    HIDWORD(v554[0]) = mainScreen83 ^ 1;
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
  mainScreen83 = __sb__runningInSpringBoard();
  mainScreen65 = &off_21EC94000;
  if (mainScreen83)
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
    currentDevice68 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice68 userInterfaceIdiom])
    {
      HIDWORD(v552) = 0;
      LODWORD(v554[0]) = 1;
      goto LABEL_975;
    }
  }

  LODWORD(v554[0]) = mainScreen83 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen83 = __sb__runningInSpringBoard();
    if (mainScreen83)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen66 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen66 _referenceBounds];
    }

    HIDWORD(v552) = mainScreen83 ^ 1;
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
    currentDevice69 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice69 userInterfaceIdiom])
    {
      HIDWORD(v549) = 0;
      LODWORD(v552) = 1;
      goto LABEL_989;
    }
  }

  LODWORD(v552) = v191 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen83 = __sb__runningInSpringBoard();
    if (mainScreen83)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen67 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen67 _referenceBounds];
    }

    HIDWORD(v549) = mainScreen83 ^ 1;
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
  mainScreen83 = __sb__runningInSpringBoard();
  if (mainScreen83)
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
    currentDevice70 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice70 userInterfaceIdiom])
    {
      HIDWORD(v546) = 0;
      LODWORD(v549) = 1;
      goto LABEL_1045;
    }
  }

  LODWORD(v549) = mainScreen83 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen83 = __sb__runningInSpringBoard();
    if (mainScreen83)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen68 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen68 _referenceBounds];
    }

    HIDWORD(v546) = mainScreen83 ^ 1;
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
      mainScreen65 = 0;
      HIDWORD(v543) = 0;
      goto LABEL_1133;
    }
  }

  else
  {
    currentDevice71 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice71 userInterfaceIdiom])
    {
      HIDWORD(v543) = 0;
      mainScreen65 = 1;
      goto LABEL_1133;
    }
  }

  mainScreen65 = v208 ^ 1u;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v214 = __sb__runningInSpringBoard();
    if (v214)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen69 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen69 _referenceBounds];
    }

    mainScreen83 = v214 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v543) = mainScreen83;
    if (v219 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      LODWORD(v546) = mainScreen65;
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
  mainScreen83 = __sb__runningInSpringBoard();
  LODWORD(v546) = mainScreen65;
  if (mainScreen83)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v518 = 0;
      goto LABEL_1167;
    }
  }

  else
  {
    currentDevice72 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice72 userInterfaceIdiom])
    {
      v518 = 0x100000000;
      goto LABEL_1167;
    }
  }

  HIDWORD(v518) = mainScreen83 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen83 = __sb__runningInSpringBoard();
    if (mainScreen83)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen70 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen70 _referenceBounds];
    }

    LODWORD(v518) = mainScreen83 ^ 1;
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
    currentDevice73 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice73 userInterfaceIdiom])
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
      mainScreen71 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen71 _referenceBounds];
    }

    mainScreen83 = v237 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v515) = mainScreen83;
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
  mainScreen83 = __sb__runningInSpringBoard();
  if (mainScreen83)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v540 = 0;
      goto LABEL_1293;
    }
  }

  else
  {
    currentDevice74 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice74 userInterfaceIdiom])
    {
      v540 = 0x100000000;
      goto LABEL_1293;
    }
  }

  HIDWORD(v540) = mainScreen83 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen83 = __sb__runningInSpringBoard();
    if (mainScreen83)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen72 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen72 _referenceBounds];
    }

    LODWORD(v540) = mainScreen83 ^ 1;
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
    currentDevice75 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice75 userInterfaceIdiom])
    {
      v537 = 0x100000000;
      goto LABEL_1395;
    }
  }

  HIDWORD(v537) = v239 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen83 = __sb__runningInSpringBoard();
    if (mainScreen83)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen73 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen73 _referenceBounds];
    }

    LODWORD(v537) = mainScreen83 ^ 1;
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
  mainScreen83 = __sb__runningInSpringBoard();
  if (mainScreen83)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v534 = 0;
      goto LABEL_1405;
    }
  }

  else
  {
    currentDevice76 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice76 userInterfaceIdiom])
    {
      v534 = 0x100000000;
      goto LABEL_1405;
    }
  }

  HIDWORD(v534) = mainScreen83 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen83 = __sb__runningInSpringBoard();
    if (mainScreen83)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen74 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen74 _referenceBounds];
    }

    LODWORD(v534) = mainScreen83 ^ 1;
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
    currentDevice77 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice77 userInterfaceIdiom])
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
      mainScreen75 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen75 _referenceBounds];
    }

    mainScreen83 = v272 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v531) = mainScreen83;
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
  mainScreen83 = __sb__runningInSpringBoard();
  if (mainScreen83)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v528 = 0;
      goto LABEL_1535;
    }
  }

  else
  {
    currentDevice78 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice78 userInterfaceIdiom])
    {
      v528 = 0x100000000;
      goto LABEL_1535;
    }
  }

  HIDWORD(v528) = mainScreen83 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen83 = __sb__runningInSpringBoard();
    if (mainScreen83)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen76 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen76 _referenceBounds];
    }

    LODWORD(v528) = mainScreen83 ^ 1;
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
    currentDevice79 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice79 userInterfaceIdiom])
    {
      v525 = 0x100000000;
      goto LABEL_1549;
    }
  }

  HIDWORD(v525) = v274 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen83 = __sb__runningInSpringBoard();
    if (mainScreen83)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen77 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen77 _referenceBounds];
    }

    LODWORD(v525) = mainScreen83 ^ 1;
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
  mainScreen83 = __sb__runningInSpringBoard();
  if (mainScreen83)
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
    currentDevice80 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice80 userInterfaceIdiom])
    {
      LODWORD(v515) = 0;
      HIDWORD(v522) = 1;
      goto LABEL_1605;
    }
  }

  HIDWORD(v522) = mainScreen83 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen83 = __sb__runningInSpringBoard();
    if (mainScreen83)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen78 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen78 _referenceBounds];
    }

    LODWORD(v515) = mainScreen83 ^ 1;
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
    currentDevice81 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice81 userInterfaceIdiom])
    {
      LODWORD(v522) = 0;
      HIDWORD(v512) = 1;
      goto LABEL_1693;
    }
  }

  HIDWORD(v512) = v292 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen83 = __sb__runningInSpringBoard();
    if (mainScreen83)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen79 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen79 _referenceBounds];
    }

    LODWORD(v522) = mainScreen83 ^ 1;
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
  mainScreen83 = __sb__runningInSpringBoard();
  if (mainScreen83)
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
    currentDevice82 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice82 userInterfaceIdiom])
    {
      LODWORD(v509) = 0;
      LODWORD(v512) = 1;
      goto LABEL_1725;
    }
  }

  LODWORD(v512) = mainScreen83 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen83 = __sb__runningInSpringBoard();
    if (mainScreen83)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen80 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen80 _referenceBounds];
    }

    LODWORD(v509) = mainScreen83 ^ 1;
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
    currentDevice83 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice83 userInterfaceIdiom])
    {
      HIDWORD(v506) = 0;
      HIDWORD(v509) = 1;
      goto LABEL_1833;
    }
  }

  HIDWORD(v509) = v308 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen83 = __sb__runningInSpringBoard();
    if (mainScreen83)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen81 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen81 _referenceBounds];
    }

    HIDWORD(v506) = mainScreen83 ^ 1;
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
    currentDevice84 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice84 userInterfaceIdiom])
    {
      v93 = 0;
      LODWORD(v506) = 1;
      goto LABEL_1873;
    }
  }

  LODWORD(v506) = v313 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen83 = __sb__runningInSpringBoard();
    if (mainScreen83)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen82 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen82 _referenceBounds];
    }

    v93 = mainScreen83 ^ 1;
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
  mainScreen83 = __sb__runningInSpringBoard();
  if (!mainScreen83)
  {
    currentDevice85 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice85 userInterfaceIdiom])
    {
      v95 = 0;
      v94 = 1;
      goto LABEL_1913;
    }

LABEL_1909:
    v94 = mainScreen83 ^ 1;
    mainScreen65 = __sb__runningInSpringBoard();
    if (mainScreen65)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen83 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen83 _referenceBounds];
    }

    v95 = mainScreen65 ^ 1;
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
  mainScreen84 = __sb__runningInSpringBoard();
  if (mainScreen84)
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
    mainScreen65 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen65 userInterfaceIdiom])
    {
      v96 = 1;
      goto LABEL_421;
    }
  }

  v96 = mainScreen84 ^ 1;
  v336 = __sb__runningInSpringBoard();
  if (v336)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen84 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen84 _referenceBounds];
  }

  BSSizeRoundForScale();
  if (v336 != 1)
  {
  }

LABEL_421:
  if (v96)
  {
  }

  mainScreen85 = v558;
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
    currentDevice58 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice58 userInterfaceIdiom] != 1)
    {
      v107 = 0;
      v106 = 1;
      goto LABEL_543;
    }
  }

  v106 = v105 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen86 = __sb__runningInSpringBoard();
    if (mainScreen86)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen57 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen57 _referenceBounds];
    }

    v107 = mainScreen86 ^ 1;
    BSSizeRoundForScale();
    if (v125 == *(MEMORY[0x277D66E30] + 288) && v124 == *(MEMORY[0x277D66E30] + 296))
    {
      LODWORD(v560) = mainScreen86 ^ 1;
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
    currentDevice59 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice59 userInterfaceIdiom] != 1)
    {
      v111 = 0;
      v110 = 1;
      goto LABEL_552;
    }
  }

  v110 = v109 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen86 = __sb__runningInSpringBoard();
    if (mainScreen86)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen58 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen58 _referenceBounds];
    }

    v111 = mainScreen86 ^ 1;
    BSSizeRoundForScale();
    if (v126 >= *(MEMORY[0x277D66E30] + 440))
    {
      LODWORD(v559) = mainScreen86 ^ 1;
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
      currentDevice85 = 0;
      v113 = 0;
      goto LABEL_561;
    }
  }

  else
  {
    currentDevice60 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice60 userInterfaceIdiom] != 1)
    {
      v113 = 0;
      currentDevice85 = 1;
      goto LABEL_561;
    }
  }

  currentDevice85 = v112 ^ 1u;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen86 = __sb__runningInSpringBoard();
    if (mainScreen86)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen59 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen59 _referenceBounds];
    }

    v113 = mainScreen86 ^ 1;
    BSSizeRoundForScale();
    if (v127 >= *(MEMORY[0x277D66E30] + 376))
    {
      LODWORD(v558) = mainScreen86 ^ 1;
      HIDWORD(v558) = currentDevice85;
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
  v558 = __PAIR64__(currentDevice85, v113);
  if (v114)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      mainScreen85 = 0;
      LODWORD(v557) = 0;
      goto LABEL_570;
    }
  }

  else
  {
    currentDevice61 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice61 userInterfaceIdiom] != 1)
    {
      LODWORD(v557) = 0;
      mainScreen85 = 1;
      goto LABEL_570;
    }
  }

  mainScreen85 = v114 ^ 1u;
  mainScreen86 = __sb__runningInSpringBoard();
  if (mainScreen86)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen60 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen60 _referenceBounds];
  }

  LODWORD(v557) = mainScreen86 ^ 1;
  BSSizeRoundForScale();
  if (v115 >= *(MEMORY[0x277D66E30] + 280))
  {
    HIDWORD(v557) = mainScreen85;
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
  HIDWORD(v557) = mainScreen85;
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
    currentDevice62 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice62 userInterfaceIdiom] != 1)
    {
      v556 = 0x100000000;
      goto LABEL_580;
    }
  }

  HIDWORD(v556) = v116 ^ 1;
  mainScreen86 = __sb__runningInSpringBoard();
  if (mainScreen86)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen61 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen61 _referenceBounds];
  }

  LODWORD(v556) = mainScreen86 ^ 1;
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
    currentDevice63 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice63 userInterfaceIdiom] != 1)
    {
      v555 = 0x100000000;
      goto LABEL_760;
    }
  }

  HIDWORD(v555) = v123 ^ 1;
  mainScreen86 = __sb__runningInSpringBoard();
  if (mainScreen86)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen62 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen62 _referenceBounds];
  }

  LODWORD(v555) = mainScreen86 ^ 1;
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
  mainScreen86 = __sb__runningInSpringBoard();
  if (mainScreen86)
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
    HIDWORD(v554[3]) = mainScreen86 ^ 1;
    goto LABEL_597;
  }

  currentDevice64 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice64 userInterfaceIdiom] == 1)
  {
    goto LABEL_768;
  }

LABEL_762:
  HIDWORD(v554[3]) = mainScreen86 ^ 1;
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
    currentDevice65 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice65 userInterfaceIdiom])
    {
      HIDWORD(v554[2]) = 0;
      LODWORD(v554[3]) = 1;
      goto LABEL_860;
    }
  }

  LODWORD(v554[3]) = v164 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen86 = __sb__runningInSpringBoard();
    if (mainScreen86)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen85 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen85 _referenceBounds];
    }

    currentDevice67 = mainScreen85;
    HIDWORD(v554[2]) = mainScreen86 ^ 1;
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
  mainScreen86 = __sb__runningInSpringBoard();
  mainScreen85 = &off_21EC94000;
  if (mainScreen86)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v554[1] + 4) = 0;
      goto LABEL_870;
    }
  }

  else
  {
    currentDevice66 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice66 userInterfaceIdiom])
    {
      HIDWORD(v554[1]) = 0;
      LODWORD(v554[2]) = 1;
      goto LABEL_870;
    }
  }

  LODWORD(v554[2]) = mainScreen86 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen86 = __sb__runningInSpringBoard();
    if (mainScreen86)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice70 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice70 _referenceBounds];
    }

    HIDWORD(v554[1]) = mainScreen86 ^ 1;
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
    mainScreen64 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen64 userInterfaceIdiom])
    {
      HIDWORD(v554[0]) = 0;
      LODWORD(v554[1]) = 1;
      goto LABEL_999;
    }
  }

  LODWORD(v554[1]) = v175 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen86 = __sb__runningInSpringBoard();
    if (mainScreen86)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen67 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen67 _referenceBounds];
    }

    HIDWORD(v554[0]) = mainScreen86 ^ 1;
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
  mainScreen86 = __sb__runningInSpringBoard();
  if (mainScreen86)
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
    currentDevice68 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice68 userInterfaceIdiom])
    {
      HIDWORD(v553) = 0;
      LODWORD(v554[0]) = 1;
      goto LABEL_1009;
    }
  }

  LODWORD(v554[0]) = mainScreen86 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen86 = __sb__runningInSpringBoard();
    if (mainScreen86)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen63 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen63 _referenceBounds];
    }

    HIDWORD(v553) = mainScreen86 ^ 1;
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
    currentDevice69 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice69 userInterfaceIdiom])
    {
      HIDWORD(v550) = 0;
      LODWORD(v553) = 1;
      goto LABEL_1023;
    }
  }

  LODWORD(v553) = v193 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen86 = __sb__runningInSpringBoard();
    if (mainScreen86)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice74 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice74 _referenceBounds];
    }

    HIDWORD(v550) = mainScreen86 ^ 1;
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
  mainScreen86 = __sb__runningInSpringBoard();
  if (mainScreen86)
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
    currentDevice86 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice86 userInterfaceIdiom])
    {
      HIDWORD(v547) = 0;
      LODWORD(v550) = 1;
      goto LABEL_1051;
    }
  }

  LODWORD(v550) = mainScreen86 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen86 = __sb__runningInSpringBoard();
    if (mainScreen86)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen68 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen68 _referenceBounds];
    }

    HIDWORD(v547) = mainScreen86 ^ 1;
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
      mainScreen85 = 0;
      HIDWORD(v544) = 0;
      goto LABEL_1143;
    }
  }

  else
  {
    currentDevice71 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice71 userInterfaceIdiom])
    {
      HIDWORD(v544) = 0;
      mainScreen85 = 1;
      goto LABEL_1143;
    }
  }

  mainScreen85 = v210 ^ 1u;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v215 = __sb__runningInSpringBoard();
    if (v215)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen69 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen69 _referenceBounds];
    }

    mainScreen86 = v215 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v544) = mainScreen86;
    if (v220 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      LODWORD(v547) = mainScreen85;
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
  mainScreen86 = __sb__runningInSpringBoard();
  LODWORD(v547) = mainScreen85;
  if (mainScreen86)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v519 = 0;
      goto LABEL_1174;
    }
  }

  else
  {
    mainScreen66 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen66 userInterfaceIdiom])
    {
      v519 = 0x100000000;
      goto LABEL_1174;
    }
  }

  HIDWORD(v519) = mainScreen86 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen86 = __sb__runningInSpringBoard();
    if (mainScreen86)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen70 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen70 _referenceBounds];
    }

    LODWORD(v519) = mainScreen86 ^ 1;
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
    currentDevice73 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice73 userInterfaceIdiom])
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
      mainScreen85 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen85 _referenceBounds];
    }

    currentDevice75 = mainScreen85;
    mainScreen86 = v240 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v516) = mainScreen86;
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
  mainScreen86 = __sb__runningInSpringBoard();
  mainScreen85 = &off_21EC94000;
  if (mainScreen86)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v541 = 0;
      goto LABEL_1318;
    }
  }

  else
  {
    currentDevice72 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice72 userInterfaceIdiom])
    {
      v541 = 0x100000000;
      goto LABEL_1318;
    }
  }

  HIDWORD(v541) = mainScreen86 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen86 = __sb__runningInSpringBoard();
    if (mainScreen86)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice79 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice79 _referenceBounds];
    }

    LODWORD(v541) = mainScreen86 ^ 1;
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
    currentDevice78 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice78 userInterfaceIdiom])
    {
      v538 = 0x100000000;
      goto LABEL_1420;
    }
  }

  HIDWORD(v538) = v242 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen86 = __sb__runningInSpringBoard();
    if (mainScreen86)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen73 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen73 _referenceBounds];
    }

    LODWORD(v538) = mainScreen86 ^ 1;
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
  mainScreen86 = __sb__runningInSpringBoard();
  if (mainScreen86)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v535 = 0;
      goto LABEL_1430;
    }
  }

  else
  {
    currentDevice76 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice76 userInterfaceIdiom])
    {
      v535 = 0x100000000;
      goto LABEL_1430;
    }
  }

  HIDWORD(v535) = mainScreen86 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen86 = __sb__runningInSpringBoard();
    if (mainScreen86)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen74 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen74 _referenceBounds];
    }

    LODWORD(v535) = mainScreen86 ^ 1;
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
    mainScreen71 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen71 userInterfaceIdiom])
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
      mainScreen75 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen75 _referenceBounds];
    }

    mainScreen86 = v275 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v532) = mainScreen86;
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
  mainScreen86 = __sb__runningInSpringBoard();
  if (mainScreen86)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v529 = 0;
      goto LABEL_1569;
    }
  }

  else
  {
    mainScreen72 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen72 userInterfaceIdiom])
    {
      v529 = 0x100000000;
      goto LABEL_1569;
    }
  }

  HIDWORD(v529) = mainScreen86 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen86 = __sb__runningInSpringBoard();
    if (mainScreen86)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen76 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen76 _referenceBounds];
    }

    LODWORD(v529) = mainScreen86 ^ 1;
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
    currentDevice77 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice77 userInterfaceIdiom])
    {
      v526 = 0x100000000;
      goto LABEL_1583;
    }
  }

  HIDWORD(v526) = v277 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen86 = __sb__runningInSpringBoard();
    if (mainScreen86)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen77 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen77 _referenceBounds];
    }

    LODWORD(v526) = mainScreen86 ^ 1;
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
  mainScreen86 = __sb__runningInSpringBoard();
  if (mainScreen86)
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
    currentDevice80 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice80 userInterfaceIdiom])
    {
      LODWORD(v516) = 0;
      HIDWORD(v523) = 1;
      goto LABEL_1611;
    }
  }

  HIDWORD(v523) = mainScreen86 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen86 = __sb__runningInSpringBoard();
    if (mainScreen86)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen78 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen78 _referenceBounds];
    }

    LODWORD(v516) = mainScreen86 ^ 1;
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
    currentDevice81 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice81 userInterfaceIdiom])
    {
      LODWORD(v523) = 0;
      HIDWORD(v513) = 1;
      goto LABEL_1703;
    }
  }

  HIDWORD(v513) = v294 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen86 = __sb__runningInSpringBoard();
    if (mainScreen86)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen79 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen79 _referenceBounds];
    }

    LODWORD(v523) = mainScreen86 ^ 1;
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
  mainScreen86 = __sb__runningInSpringBoard();
  if (mainScreen86)
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
    currentDevice82 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice82 userInterfaceIdiom])
    {
      LODWORD(v510) = 0;
      LODWORD(v513) = 1;
      goto LABEL_1731;
    }
  }

  LODWORD(v513) = mainScreen86 ^ 1;
  if (SBFEffectiveHomeButtonType() != 2)
  {
    LODWORD(v510) = 0;
    goto LABEL_1731;
  }

  mainScreen86 = __sb__runningInSpringBoard();
  if (mainScreen86)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen80 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen80 _referenceBounds];
  }

  LODWORD(v510) = mainScreen86 ^ 1;
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
    currentDevice83 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice83 userInterfaceIdiom])
    {
      HIDWORD(v507) = 0;
      HIDWORD(v510) = 1;
      goto LABEL_1843;
    }
  }

  HIDWORD(v510) = v309 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen86 = __sb__runningInSpringBoard();
    if (mainScreen86)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen81 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen81 _referenceBounds];
    }

    HIDWORD(v507) = mainScreen86 ^ 1;
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
    currentDevice84 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice84 userInterfaceIdiom])
    {
      v117 = 0;
      LODWORD(v507) = 1;
      goto LABEL_1883;
    }
  }

  LODWORD(v507) = v314 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen86 = __sb__runningInSpringBoard();
    if (mainScreen86)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen82 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen82 _referenceBounds];
    }

    v117 = mainScreen86 ^ 1;
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
  mainScreen86 = __sb__runningInSpringBoard();
  if (!mainScreen86)
  {
    currentDevice85 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice85 userInterfaceIdiom])
    {
      v119 = 0;
      v118 = 1;
      goto LABEL_1923;
    }

LABEL_1919:
    v118 = mainScreen86 ^ 1;
    mainScreen85 = __sb__runningInSpringBoard();
    if (mainScreen85)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen86 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen86 _referenceBounds];
    }

    v119 = mainScreen85 ^ 1;
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
  mainScreen87 = __sb__runningInSpringBoard();
  if (mainScreen87)
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
    mainScreen85 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen85 userInterfaceIdiom])
    {
      v121 = 0.0;
      v120 = 1;
      goto LABEL_597;
    }
  }

  v120 = mainScreen87 ^ 1;
  v337 = __sb__runningInSpringBoard();
  if (v337)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen87 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen87 _referenceBounds];
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

  v121 = [[CSMagSafeSilhouetteConfiguration alloc] initWithSize:v128 bottomOffset:v46 cornerRadius:v72 roundedCorners:v97, v121];
  silhouette = v3->_silhouette;
  v3->_silhouette = v121;

  v131 = MEMORY[0x277CD9ED0];
  [(CSMagSafeSilhouetteConfiguration *)v3->_silhouette cornerRadius];
  v132 = [v131 ringLayerWithBlendMode:v561 cornerRadius:? borderWidth:?];
  walletLayer = v3->_walletLayer;
  v3->_walletLayer = v132;

  [(CALayer *)v3->_walletLayer setCornerCurve:*MEMORY[0x277CDA138]];
  [(CALayer *)v3->_walletLayer setOpacity:0.0];
  v134 = v3->_walletLayer;
  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  -[CALayer setBackgroundColor:](v134, "setBackgroundColor:", [whiteColor2 CGColor]);

  [(CSMagSafeSilhouetteConfiguration *)v3->_silhouette bottomOffset];
  if (v136 == 0.0)
  {
    -[CALayer setMaskedCorners:](v3->_walletLayer, "setMaskedCorners:", -[CSMagSafeSilhouetteConfiguration roundedCornersMaskForOrientation:](v3->_silhouette, "roundedCornersMaskForOrientation:", [*MEMORY[0x277D76620] activeInterfaceOrientation]));
  }

  configuration3 = [(CSMagSafeAccessoryWalletView *)v3 configuration];
  ring3 = [configuration3 ring];
  [ring3 ringDiameter];
  v140 = v139;
  configuration4 = [(CSMagSafeAccessoryWalletView *)v3 configuration];
  ring4 = [configuration4 ring];
  [ring4 lineWidth];
  v144 = [CSRingLayer ringLayerWithBlendMode:v561 diameter:v140 lineWidth:v143 brightnessAmount:0.2 saturationAmount:1.25];
  trackRing = v3->_trackRing;
  v3->_trackRing = v144;

  v146 = v3->_trackRing;
  whiteColor3 = [MEMORY[0x277D75348] whiteColor];
  -[CSRingLayer setStrokeColor:](v146, "setStrokeColor:", [whiteColor3 CGColor]);

  if ([(CSMagSafeAccessoryView *)v3 isReduceTransparencyEnabled])
  {
    layer3 = [(CSMagSafeAccessoryWalletView *)v3 layer];
    [layer3 addSublayer:v3->_averageColorBackdropLayer];
  }

  if ([(CSMagSafeAccessoryView *)v3 isReduceMotionEnabled])
  {
    layer4 = [(CSMagSafeAccessoryWalletView *)v3 layer];
    [layer4 addSublayer:v3->_backgroundRadiusBackdropLayer];
  }

  layer5 = [(CSMagSafeAccessoryWalletView *)v3 layer];
  [layer5 addSublayer:v3->_backgroundBackdropLayer];

  layer6 = [(CSMagSafeAccessoryWalletView *)v3 layer];
  [layer6 insertSublayer:v3->_trackRingBlurBackdropLayer above:v3->_backgroundBackdropLayer];

  layer7 = [(CSMagSafeAccessoryWalletView *)v3 layer];
  [layer7 insertSublayer:v3->_walletLayer above:v3->_trackRingBlurBackdropLayer];

  layer8 = [(CSMagSafeAccessoryWalletView *)v3 layer];
  [layer8 insertSublayer:v3->_trackRing above:v3->_walletLayer];

LABEL_715:
  v154 = v3;

  return v154;
}

- (void)layoutSubviews
{
  v47.receiver = self;
  v47.super_class = CSMagSafeAccessoryWalletView;
  [(CSMagSafeAccessoryView *)&v47 layoutSubviews];
  superview = [(CSMagSafeAccessoryWalletView *)self superview];
  [superview bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(CSMagSafeAccessoryWalletView *)self setFrame:v5, v7, v9, v11];
  configuration = [(CSMagSafeAccessoryWalletView *)self configuration];
  ring = [configuration ring];
  [ring ringDiameter];
  v46 = v14;
  configuration2 = [(CSMagSafeAccessoryWalletView *)self configuration];
  ring2 = [configuration2 ring];
  [ring2 ringDiameter];
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
  activeInterfaceOrientation = [*MEMORY[0x277D76620] activeInterfaceOrientation];
  if ((activeInterfaceOrientation - 1) >= 2)
  {
    v30 = v25;
  }

  else
  {
    v30 = v27;
  }

  if ((activeInterfaceOrientation - 1) >= 2)
  {
    v31 = v27;
  }

  else
  {
    v31 = v25;
  }

  activeInterfaceOrientation2 = [*v28 activeInterfaceOrientation];
  if ((activeInterfaceOrientation2 - 1) > 1)
  {
    if (activeInterfaceOrientation2 == 3)
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
    configuration = [(CSMagSafeAccessoryWalletView *)self configuration];
    ring = [configuration ring];
    [ring lineWidth];
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
    configuration = [(CSMagSafeAccessoryWalletView *)self configuration];
    ring = [configuration ring];
    [ring lineWidth];
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

- (void)_runAnimationWithType:(unint64_t)type
{
  if (type == 1)
  {
    [(CSMagSafeAccessoryWalletView *)self _dismissAnimation];
  }

  else if (!type)
  {
    [(CSMagSafeAccessoryWalletView *)self _presentAnimation];
  }
}

- (void)performAnimation:(unint64_t)animation completionHandler:(id)handler
{
  v6 = MEMORY[0x277CD9FF0];
  handlerCopy = handler;
  [v6 begin];
  [MEMORY[0x277CD9FF0] setCompletionBlock:handlerCopy];

  [(CSMagSafeAccessoryWalletView *)self _runAnimationWithType:animation];
  v8 = MEMORY[0x277CD9FF0];

  [v8 commit];
}

@end