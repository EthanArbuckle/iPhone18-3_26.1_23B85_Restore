@interface CSBatteryChargingRingView
+ (double)_pointsPerMillimeter;
- (BOOL)_isShowingAuxiliary;
- (BOOL)_supportsPowerOut;
- (CGPath)_pathForRingConfiguration:(id)a3;
- (CGPoint)_positionForPill:(id)a3 forBatteryCharge:(double)a4;
- (CGRect)_pillFrameForBatteryCharge:(double)a3;
- (CGSize)_defaultSilhouettePhysicalSize;
- (CGSize)_silhouettePhysicalSizeInMillimeters;
- (CSBatteryChargingRingView)initWithFrame:(CGRect)a3;
- (CSBatteryChargingRingView)initWithFrame:(CGRect)a3 configuration:(id)a4 externalBattery:(id)a5;
- (double)_estimatedDurationForAnimation:(unint64_t)a3;
- (double)_silhouetteBottomOffset;
- (double)_silhouetteBottomToAuxillaryRingInset;
- (double)_silhouetteCornerRadius;
- (double)batteryChargingLevel;
- (double)desiredVisibilityDuration;
- (id)_auxillaryGlyphImageForConfig:(id)a3;
- (id)_powerStatusForBattery:(id)a3;
- (id)_ringLayerForRingConfiguration:(id)a3;
- (id)_silhouetteConfiguration;
- (id)_springAnimationWithKeyPath:(id)a3 delay:(double)a4 forPresent:(BOOL)a5 from:(id)a6 to:(id)a7;
- (id)_springAnimationWithKeyPath:(id)a3 forPresent:(BOOL)a4 from:(id)a5 to:(id)a6;
- (id)_springAnimationWithKeyPath:(id)a3 stiffness:(double)a4 damping:(double)a5 duration:(double)a6 delay:(double)a7;
- (id)_trackAnimationForConfiguration:(id)a3 withCurrentTime:(double)a4;
- (id)_trackRingForRingConfiguration:(id)a3 withBlendMode:(id)a4;
- (id)_updateChargeString:(id)a3 oldLabel:(id)a4 font:(id)a5;
- (int64_t)batteryCount;
- (void)_animateSilhouetteToVisible:(BOOL)a3;
- (void)_createAuxiliaryPillViewsIfNeeded;
- (void)_createBoltViewsIfNeeded;
- (void)_handleExternalStatusUpdate;
- (void)_layoutAuxiliaryChargePercentLabel;
- (void)_layoutChargePercentLabel;
- (void)_performChargingBoltDismissAnimation;
- (void)_performChargingBoltPresentAnimation;
- (void)_runAnimationWithType:(unint64_t)a3;
- (void)_runAuxiliaryBatteryLevelAnimation;
- (void)_runAuxiliaryBatteryLevelDismissAnimation;
- (void)_runAuxiliaryChargingBoltAnimationVisible:(BOOL)a3;
- (void)_runAuxiliaryChargingLabelPresentAnimation;
- (void)_runAuxiliarySplashRingAnimation;
- (void)_runBatteryLevelDismissAnimation;
- (void)_runBatteryLevelRingAnimation;
- (void)_runChargingBoltAnimationVisible:(BOOL)a3;
- (void)_runChargingLabelPresentAnimation;
- (void)_runDimAnimation;
- (void)_runRingBlurAnimation;
- (void)_runSplashRingAnimation;
- (void)dealloc;
- (void)layoutSubviews;
- (void)performAnimation:(unint64_t)a3 completionHandler:(id)a4;
- (void)setBatteryVisible:(BOOL)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setPrimaryBatteryText:(id)a3 forBattery:(id)a4;
- (void)setSecondaryBatteryText:(id)a3 forBattery:(id)a4;
- (void)setSilhouette:(id)a3;
- (void)setSilhouetteLayer:(id)a3;
- (void)updateForInternalBatteryDevice:(id)a3;
- (void)updateForInternalPowerStatus:(id)a3;
@end

@implementation CSBatteryChargingRingView

- (CSBatteryChargingRingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = +[CSMagSafeAccessoryConfiguration defaultConfiguration];
  v9 = [(CSBatteryChargingRingView *)self initWithFrame:v8 configuration:x, y, width, height];

  return v9;
}

- (CSBatteryChargingRingView)initWithFrame:(CGRect)a3 configuration:(id)a4 externalBattery:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v487[1] = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  v485.receiver = self;
  v485.super_class = CSBatteryChargingRingView;
  v14 = [(CSBatteryChargingView *)&v485 initWithFrame:x, y, width, height];

  if (v14)
  {
    v481 = v13;
    objc_storeStrong(&v14->_configuration, a4);
    objc_storeStrong(&v14->_externalBattery, a5);
    v15 = objc_alloc(MEMORY[0x277D75D18]);
    v16 = [v15 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    chargingContainerView = v14->_chargingContainerView;
    v14->_chargingContainerView = v16;

    v18 = v14->_chargingContainerView;
    [(CSBatteryChargingRingView *)v14 center];
    [(UIView *)v18 setCenter:?];
    p_chargingContainerView = &v14->_chargingContainerView;
    v19 = [(UIView *)v14->_chargingContainerView layer];
    [v19 setAllowsGroupBlending:0];

    v20 = [v12 staticViewNeeded];
    v21 = 0x277CD9000uLL;
    v22 = MEMORY[0x277CDA5C0];
    v23 = MEMORY[0x277CDA5E8];
    if (v20)
    {
      v24 = *MEMORY[0x277CDA5C0];
      v25 = *MEMORY[0x277CDA5E8];
    }

    else
    {
      v26 = [MEMORY[0x277CD9E08] backdropLayerWithGaussianBlurRadius:0.0 brightnessAmount:0.0 saturationAmount:1.0];
      backgroundBackdropLayer = v14->_backgroundBackdropLayer;
      v14->_backgroundBackdropLayer = v26;

      v28 = v14->_backgroundBackdropLayer;
      v24 = *v22;
      v29 = [MEMORY[0x277CD9EA0] filterWithType:v24];
      [(CABackdropLayer *)v28 setCompositingFilter:v29];

      LODWORD(v30) = 1.0;
      [(CABackdropLayer *)v14->_backgroundBackdropLayer setOpacity:v30];
      [(CABackdropLayer *)v14->_backgroundBackdropLayer setBounds:x, y, width, height];
      if ([(CSBatteryChargingRingView *)v14 _isReduceMotionEnabled])
      {
        v31 = [MEMORY[0x277CD9E08] backdropLayerWithGaussianBlurRadius:60.0 brightnessAmount:0.0 saturationAmount:1.0];
        backgroundRadiusBackdropLayer = v14->_backgroundRadiusBackdropLayer;
        v14->_backgroundRadiusBackdropLayer = v31;

        v33 = v14->_backgroundRadiusBackdropLayer;
        v34 = [MEMORY[0x277CD9EA0] filterWithType:v24];
        [(CABackdropLayer *)v33 setCompositingFilter:v34];

        [(CABackdropLayer *)v14->_backgroundRadiusBackdropLayer setOpacity:0.0];
      }

      if ([(CSBatteryChargingRingView *)v14 _isReduceTransparencyEnabled])
      {
        v35 = [MEMORY[0x277CD9E08] layer];
        averageColorBackdropLayer = v14->_averageColorBackdropLayer;
        v14->_averageColorBackdropLayer = v35;

        [(CABackdropLayer *)v14->_averageColorBackdropLayer setOpacity:0.0];
        v37 = v14->_averageColorBackdropLayer;
        v38 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA268]];
        v487[0] = v38;
        v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v487 count:1];
        [(CABackdropLayer *)v37 setFilters:v39];

        [(CABackdropLayer *)v14->_averageColorBackdropLayer setScale:100.0];
        [(CABackdropLayer *)v14->_averageColorBackdropLayer setAllowsGroupOpacity:1];
        [(CABackdropLayer *)v14->_averageColorBackdropLayer setAllowsGroupBlending:1];
        [(CABackdropLayer *)v14->_averageColorBackdropLayer setAllowsEdgeAntialiasing:1];
      }

      v40 = [MEMORY[0x277CD9E08] backdropLayerWithGaussianBlurRadius:45.0 brightnessAmount:0.15 saturationAmount:1.3];
      ringBlurBackdropLayer = v14->_ringBlurBackdropLayer;
      v14->_ringBlurBackdropLayer = v40;

      v42 = v14->_ringBlurBackdropLayer;
      v43 = [MEMORY[0x277CD9EA0] filterWithType:v24];
      [(CABackdropLayer *)v42 setCompositingFilter:v43];

      [(CABackdropLayer *)v14->_ringBlurBackdropLayer setBounds:x, y, width, height];
      v44 = [v12 ring];
      [v44 ringDiameter];
      v46 = v45;
      v47 = [v12 ring];
      [v47 lineWidth];
      v49 = [CSRingLayer ringLayerWithBlendMode:v24 diameter:v46 lineWidth:v48 brightnessAmount:-0.15 saturationAmount:0.0];
      ringBlurLayer = v14->_ringBlurLayer;
      v14->_ringBlurLayer = v49;

      [(CABackdropLayer *)v14->_ringBlurBackdropLayer setMask:v14->_ringBlurLayer];
      v51 = MEMORY[0x277CD9ED0];
      v52 = *MEMORY[0x277CDA5D0];
      v53 = [v12 ring];
      [v53 ringDiameter];
      v55 = v54 * 0.5;
      v56 = [v12 ring];
      [v56 lineWidth];
      v58 = [v51 ringLayerWithBlendMode:v52 cornerRadius:v55 borderWidth:v57];
      ringTempOverlayLayer = v14->_ringTempOverlayLayer;
      v14->_ringTempOverlayLayer = v58;

      v60 = [v12 ring];
      [v60 splashRingDiameter];
      v62 = v61;

      v25 = *v23;
      v63 = [MEMORY[0x277CD9ED0] ringLayerWithBlendMode:*v23 cornerRadius:v62 * 1.66 * 0.5 borderWidth:0.0];
      splashRing = v14->_splashRing;
      v14->_splashRing = v63;

      v65 = [MEMORY[0x277CD9ED0] ringLayerWithBlendMode:v25 cornerRadius:v62 * 1.2 * 0.5 borderWidth:0.0];
      splashRing1 = v14->_splashRing1;
      v14->_splashRing1 = v65;

      v67 = [MEMORY[0x277CD9ED0] ringLayerWithBlendMode:v52 cornerRadius:v62 * 2.1 * 0.5 borderWidth:0.0];
      splashRing3 = v14->_splashRing3;
      v14->_splashRing3 = v67;
    }

    if ([(CSBatteryChargingRingView *)v14 _isDarkerSystemColorsEnabled])
    {
      v69 = v24;
    }

    else
    {
      v69 = v25;
    }

    v70 = v69;
    v71 = [v12 ring];
    v72 = [(CSBatteryChargingRingView *)v14 _trackRingForRingConfiguration:v71 withBlendMode:v70];
    trackFillRingLayer = v14->_trackFillRingLayer;
    v14->_trackFillRingLayer = v72;

    v74 = [v12 auxiliaryRing];
    v480 = v70;
    v75 = [(CSBatteryChargingRingView *)v14 _trackRingForRingConfiguration:v74 withBlendMode:v70];
    auxiliaryBatteryTrackFillRingLayer = v14->_auxiliaryBatteryTrackFillRingLayer;
    v14->_auxiliaryBatteryTrackFillRingLayer = v75;

    v479 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v77 = [MEMORY[0x277D755B8] imageNamed:@"ChargingAlert" inBundle:?];
    v78 = [MEMORY[0x277D75348] whiteColor];
    v79 = [v77 _flatImageWithColor:v78];

    v484 = v12;
    if (![(CSMagSafeAccessoryConfiguration *)v14->_configuration staticViewNeeded])
    {
LABEL_191:
      v483 = [v79 imageWithRenderingMode:2];

      v104 = [MEMORY[0x277CD9ED0] layer];
      chargingBoltGlyph = v14->_chargingBoltGlyph;
      v14->_chargingBoltGlyph = v104;

      v106 = 1.0;
      if ([v12 staticViewNeeded])
      {
        +[CSMagSafeRingConfiguration staticScaleFactor];
        v106 = v107;
      }

      v108 = __sb__runningInSpringBoard();
      if (v108)
      {
        if (SBFEffectiveDeviceClass() != 2)
        {
          v109 = 0;
          v110 = 0;
          goto LABEL_202;
        }
      }

      else
      {
        v382 = [MEMORY[0x277D75418] currentDevice];
        if ([v382 userInterfaceIdiom] != 1)
        {
          v109 = 0;
          v110 = 1;
          goto LABEL_202;
        }
      }

      v110 = v108 ^ 1u;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        v111 = __sb__runningInSpringBoard();
        if (v111)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v383 = [MEMORY[0x277D759A0] mainScreen];
          [v383 _referenceBounds];
        }

        v109 = v111 ^ 1;
        BSSizeRoundForScale();
        if (v126 == *(MEMORY[0x277D66E30] + 288) && v125 == *(MEMORY[0x277D66E30] + 296))
        {
          v474 = v111 ^ 1;
          v408 = v110;
          v468 = 0;
          v471 = 0;
          v465 = 0;
          v462 = 0;
          v459 = 0;
          v456 = 0;
          v453 = 0;
          v450 = 0;
          v447 = 0;
          v444 = 0;
          v441 = 0;
          v438 = 0;
          v435 = 0;
          v432 = 0;
          v406 = 0;
          v400 = 0;
          v403 = 0;
          v429 = 0;
          v426 = 0;
          v423 = 0;
          v420 = 0;
          v417 = 0;
          v411 = 0;
          v414 = 0;
          v397 = 0;
          v394 = 0;
          v391 = 0;
          v388 = 0;
          v385 = 0;
          v119 = 0;
          v120 = 0;
          v121 = 0;
          v122 = 0.0;
          goto LABEL_256;
        }
      }

      else
      {
        v109 = 0;
      }

LABEL_202:
      v112 = __sb__runningInSpringBoard();
      v474 = v109;
      v408 = v110;
      if (v112)
      {
        if (SBFEffectiveDeviceClass() != 2)
        {
          v113 = 0;
          v114 = 0;
          goto LABEL_211;
        }
      }

      else
      {
        v381 = [MEMORY[0x277D75418] currentDevice];
        if ([v381 userInterfaceIdiom] != 1)
        {
          v113 = 0;
          v114 = 1;
          goto LABEL_211;
        }
      }

      v114 = v112 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        v111 = __sb__runningInSpringBoard();
        if (v111)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v373 = [MEMORY[0x277D759A0] mainScreen];
          [v373 _referenceBounds];
        }

        v113 = v111 ^ 1;
        BSSizeRoundForScale();
        if (v127 >= *(MEMORY[0x277D66E30] + 440))
        {
          v468 = v111 ^ 1;
          v471 = v114;
          v465 = 0;
          v462 = 0;
          v459 = 0;
          v456 = 0;
          v453 = 0;
          v450 = 0;
          v447 = 0;
          v444 = 0;
          v441 = 0;
          v438 = 0;
          v435 = 0;
          v432 = 0;
          v406 = 0;
          v400 = 0;
          v403 = 0;
          v429 = 0;
          v426 = 0;
          v423 = 0;
          v420 = 0;
          v417 = 0;
          v411 = 0;
          v414 = 0;
          v397 = 0;
          v394 = 0;
          v391 = 0;
          v388 = 0;
          v385 = 0;
          v119 = 0;
          v120 = 0;
          v121 = 0;
          v122 = 0.0;
          goto LABEL_256;
        }
      }

      else
      {
        v113 = 0;
      }

LABEL_211:
      v115 = __sb__runningInSpringBoard();
      v471 = v114;
      v468 = v113;
      if (v115)
      {
        if (SBFEffectiveDeviceClass() != 2)
        {
          v12 = 0;
          v21 = 0;
          goto LABEL_220;
        }
      }

      else
      {
        v380 = [MEMORY[0x277D75418] currentDevice];
        if ([v380 userInterfaceIdiom] != 1)
        {
          v21 = 0;
          v12 = 1;
          goto LABEL_220;
        }
      }

      v12 = v115 ^ 1u;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        v111 = __sb__runningInSpringBoard();
        if (v111)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v372 = [MEMORY[0x277D759A0] mainScreen];
          [v372 _referenceBounds];
        }

        v21 = v111 ^ 1;
        BSSizeRoundForScale();
        if (v128 >= *(MEMORY[0x277D66E30] + 376))
        {
          v465 = __PAIR64__(v12, v21);
          v462 = 0;
          v459 = 0;
          v456 = 0;
          v453 = 0;
          v450 = 0;
          v447 = 0;
          v444 = 0;
          v441 = 0;
          v438 = 0;
          v435 = 0;
          v432 = 0;
          v406 = 0;
          v400 = 0;
          v403 = 0;
          v429 = 0;
          v426 = 0;
          v423 = 0;
          v420 = 0;
          v417 = 0;
          v411 = 0;
          v414 = 0;
          v397 = 0;
          v394 = 0;
          v391 = 0;
          v388 = 0;
          v385 = 0;
          v119 = 0;
          v120 = 0;
          v121 = 0;
          v122 = 0.0;
          goto LABEL_256;
        }
      }

      else
      {
        v21 = 0;
      }

LABEL_220:
      v116 = __sb__runningInSpringBoard();
      v465 = __PAIR64__(v12, v21);
      if (v116)
      {
        if (SBFEffectiveDeviceClass() != 2)
        {
          v462 = 0;
          goto LABEL_229;
        }
      }

      else
      {
        v379 = [MEMORY[0x277D75418] currentDevice];
        if ([v379 userInterfaceIdiom] != 1)
        {
          v462 = 0x100000000;
          goto LABEL_229;
        }
      }

      HIDWORD(v462) = v116 ^ 1;
      v111 = __sb__runningInSpringBoard();
      if (v111)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v376 = [MEMORY[0x277D759A0] mainScreen];
        [v376 _referenceBounds];
      }

      LODWORD(v462) = v111 ^ 1;
      BSSizeRoundForScale();
      if (v117 >= *(MEMORY[0x277D66E30] + 280))
      {
        v459 = 0;
        v456 = 0;
        v453 = 0;
        v450 = 0;
        v447 = 0;
        v444 = 0;
        v441 = 0;
        v438 = 0;
        v435 = 0;
        v432 = 0;
        v406 = 0;
        v400 = 0;
        v403 = 0;
        v429 = 0;
        v426 = 0;
        v423 = 0;
        v420 = 0;
        v417 = 0;
        v411 = 0;
        v414 = 0;
        v397 = 0;
        v394 = 0;
        v391 = 0;
        v388 = 0;
        v385 = 0;
        v119 = 0;
        v120 = 0;
        v121 = 0;
        v122 = 0.0;
        goto LABEL_256;
      }

LABEL_229:
      v118 = __sb__runningInSpringBoard();
      if (v118)
      {
        if (SBFEffectiveDeviceClass() != 2)
        {
          v459 = 0;
          goto LABEL_239;
        }
      }

      else
      {
        v378 = [MEMORY[0x277D75418] currentDevice];
        if ([v378 userInterfaceIdiom] != 1)
        {
          v459 = 0x100000000;
          goto LABEL_239;
        }
      }

      HIDWORD(v459) = v118 ^ 1;
      v111 = __sb__runningInSpringBoard();
      if (v111)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v374 = [MEMORY[0x277D759A0] mainScreen];
        [v374 _referenceBounds];
      }

      LODWORD(v459) = v111 ^ 1;
      BSSizeRoundForScale();
      if (v123 >= *(MEMORY[0x277D66E30] + 264))
      {
        v456 = 0;
        v453 = 0;
        v450 = 0;
        v447 = 0;
        v444 = 0;
        v441 = 0;
        v438 = 0;
        v435 = 0;
        v432 = 0;
        v406 = 0;
        v400 = 0;
        v403 = 0;
        v429 = 0;
        v426 = 0;
        v423 = 0;
        v420 = 0;
        v417 = 0;
        v411 = 0;
        v414 = 0;
        v397 = 0;
        v394 = 0;
        v391 = 0;
        v388 = 0;
        v385 = 0;
        v119 = 0;
        v120 = 0;
        v121 = 0;
        v122 = 0.0;
        goto LABEL_256;
      }

LABEL_239:
      v124 = __sb__runningInSpringBoard();
      if (v124)
      {
        if (SBFEffectiveDeviceClass() != 2)
        {
          v456 = 0;
          goto LABEL_573;
        }
      }

      else
      {
        v377 = [MEMORY[0x277D75418] currentDevice];
        if ([v377 userInterfaceIdiom] != 1)
        {
          v456 = 0x100000000;
          goto LABEL_573;
        }
      }

      HIDWORD(v456) = v124 ^ 1;
      v111 = __sb__runningInSpringBoard();
      if (v111)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v371 = [MEMORY[0x277D759A0] mainScreen];
        [v371 _referenceBounds];
      }

      LODWORD(v456) = v111 ^ 1;
      BSSizeRoundForScale();
      if (v218 >= *(MEMORY[0x277D66E30] + 248))
      {
        v453 = 0;
        v450 = 0;
        v447 = 0;
        v444 = 0;
        v441 = 0;
        v438 = 0;
        v435 = 0;
        v432 = 0;
        v406 = 0;
        v400 = 0;
        v403 = 0;
        v429 = 0;
        v426 = 0;
        v423 = 0;
        v420 = 0;
        v417 = 0;
        v411 = 0;
        v414 = 0;
        v397 = 0;
        v394 = 0;
        v391 = 0;
        v388 = 0;
        v385 = 0;
        v119 = 0;
        v120 = 0;
        v121 = 0;
        v122 = 0.0;
        goto LABEL_256;
      }

LABEL_573:
      v111 = __sb__runningInSpringBoard();
      if (v111)
      {
        if (SBFEffectiveDeviceClass() != 2)
        {
          goto LABEL_575;
        }
      }

      else
      {
        v375 = [MEMORY[0x277D75418] currentDevice];
        if ([v375 userInterfaceIdiom] != 1)
        {
LABEL_575:
          HIDWORD(v453) = v111 ^ 1;
          if (!_SBF_Private_IsD94Like())
          {
LABEL_579:
            LODWORD(v453) = 0;
            HIDWORD(v450) = 0;
            goto LABEL_619;
          }

          v219 = __sb__runningInSpringBoard();
          if (v219)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              goto LABEL_579;
            }
          }

          else
          {
            v369 = [MEMORY[0x277D75418] currentDevice];
            if ([v369 userInterfaceIdiom])
            {
              HIDWORD(v450) = 0;
              LODWORD(v453) = 1;
              goto LABEL_619;
            }
          }

          LODWORD(v453) = v219 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            v111 = __sb__runningInSpringBoard();
            if (v111)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v362 = [MEMORY[0x277D759A0] mainScreen];
              [v362 _referenceBounds];
            }

            HIDWORD(v450) = v111 ^ 1;
            BSSizeRoundForScale();
            if (v228 >= *(MEMORY[0x277D66E30] + 200))
            {
              LODWORD(v450) = 0;
              v447 = 0;
              v444 = 0;
              v441 = 0;
              v438 = 0;
              v435 = 0;
              v432 = 0;
              v406 = 0;
              v400 = 0;
              v403 = 0;
              v429 = 0;
              v426 = 0;
              v423 = 0;
              v420 = 0;
              v417 = 0;
              v411 = 0;
              v414 = 0;
              v397 = 0;
              v394 = 0;
              v391 = 0;
              v388 = 0;
              v385 = 0;
              v119 = 0;
              v120 = 0;
              v121 = 0;
              v122 = 80.0;
              goto LABEL_256;
            }
          }

          else
          {
            HIDWORD(v450) = 0;
          }

LABEL_619:
          v111 = __sb__runningInSpringBoard();
          if (v111)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              LODWORD(v450) = 0;
              HIDWORD(v447) = 0;
              goto LABEL_629;
            }
          }

          else
          {
            v370 = [MEMORY[0x277D75418] currentDevice];
            if ([v370 userInterfaceIdiom])
            {
              HIDWORD(v447) = 0;
              LODWORD(v450) = 1;
              goto LABEL_629;
            }
          }

          LODWORD(v450) = v111 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            v111 = __sb__runningInSpringBoard();
            if (v111)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v365 = [MEMORY[0x277D759A0] mainScreen];
              [v365 _referenceBounds];
            }

            HIDWORD(v447) = v111 ^ 1;
            BSSizeRoundForScale();
            if (v224 >= *(MEMORY[0x277D66E30] + 200))
            {
              goto LABEL_633;
            }
          }

          else
          {
            HIDWORD(v447) = 0;
          }

LABEL_629:
          if (_SBF_Private_IsD94Like())
          {
            LODWORD(v447) = 0;
            v444 = 0;
            v441 = 0;
            v438 = 0;
            v435 = 0;
            v432 = 0;
            v406 = 0;
            v400 = 0;
            v403 = 0;
            v429 = 0;
            v426 = 0;
            v423 = 0;
            v420 = 0;
            v417 = 0;
            v411 = 0;
            v414 = 0;
            v397 = 0;
            v394 = 0;
            v391 = 0;
            v388 = 0;
            v385 = 0;
            v119 = 0;
            v120 = 0;
            v121 = 0;
            v122 = 70.0;
            goto LABEL_256;
          }

LABEL_633:
          if (!_SBF_Private_IsD64Like())
          {
LABEL_637:
            LODWORD(v447) = 0;
            HIDWORD(v444) = 0;
            goto LABEL_675;
          }

          v225 = __sb__runningInSpringBoard();
          if (v225)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              goto LABEL_637;
            }
          }

          else
          {
            v366 = [MEMORY[0x277D75418] currentDevice];
            if ([v366 userInterfaceIdiom])
            {
              HIDWORD(v444) = 0;
              LODWORD(v447) = 1;
              goto LABEL_675;
            }
          }

          LODWORD(v447) = v225 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            v111 = __sb__runningInSpringBoard();
            if (v111)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v357 = [MEMORY[0x277D759A0] mainScreen];
              [v357 _referenceBounds];
            }

            HIDWORD(v444) = v111 ^ 1;
            BSSizeRoundForScale();
            if (v238 >= *(MEMORY[0x277D66E30] + 136))
            {
              LODWORD(v444) = 0;
              v441 = 0;
              v438 = 0;
              v435 = 0;
              v432 = 0;
              v406 = 0;
              v400 = 0;
              v403 = 0;
              v429 = 0;
              v426 = 0;
              v423 = 0;
              v420 = 0;
              v417 = 0;
              v411 = 0;
              v414 = 0;
              v397 = 0;
              v394 = 0;
              v391 = 0;
              v388 = 0;
              v385 = 0;
              v119 = 0;
              v120 = 0;
              v121 = 0;
              v122 = 80.0;
              goto LABEL_256;
            }
          }

          else
          {
            HIDWORD(v444) = 0;
          }

LABEL_675:
          v111 = __sb__runningInSpringBoard();
          if (v111)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              LODWORD(v444) = 0;
              HIDWORD(v441) = 0;
              goto LABEL_685;
            }
          }

          else
          {
            v368 = [MEMORY[0x277D75418] currentDevice];
            if ([v368 userInterfaceIdiom])
            {
              HIDWORD(v441) = 0;
              LODWORD(v444) = 1;
              goto LABEL_685;
            }
          }

          LODWORD(v444) = v111 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            v111 = __sb__runningInSpringBoard();
            if (v111)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v361 = [MEMORY[0x277D759A0] mainScreen];
              [v361 _referenceBounds];
            }

            HIDWORD(v441) = v111 ^ 1;
            BSSizeRoundForScale();
            if (v230 >= *(MEMORY[0x277D66E30] + 136))
            {
              goto LABEL_689;
            }
          }

          else
          {
            HIDWORD(v441) = 0;
          }

LABEL_685:
          if (_SBF_Private_IsD64Like())
          {
            LODWORD(v441) = 0;
            v438 = 0;
            v435 = 0;
            v432 = 0;
            v406 = 0;
            v400 = 0;
            v403 = 0;
            v429 = 0;
            v426 = 0;
            v423 = 0;
            v420 = 0;
            v417 = 0;
            v411 = 0;
            v414 = 0;
            v397 = 0;
            v394 = 0;
            v391 = 0;
            v388 = 0;
            v385 = 0;
            v119 = 0;
            v120 = 0;
            v121 = 0;
            v122 = 70.0;
            goto LABEL_256;
          }

LABEL_689:
          v231 = __sb__runningInSpringBoard();
          if (v231)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              LODWORD(v441) = 0;
              HIDWORD(v438) = 0;
              goto LABEL_699;
            }
          }

          else
          {
            v367 = [MEMORY[0x277D75418] currentDevice];
            if ([v367 userInterfaceIdiom])
            {
              HIDWORD(v438) = 0;
              LODWORD(v441) = 1;
              goto LABEL_699;
            }
          }

          LODWORD(v441) = v231 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            v111 = __sb__runningInSpringBoard();
            if (v111)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v358 = [MEMORY[0x277D759A0] mainScreen];
              [v358 _referenceBounds];
            }

            HIDWORD(v438) = v111 ^ 1;
            BSSizeRoundForScale();
            if (v236 >= *(MEMORY[0x277D66E30] + 136))
            {
              LODWORD(v438) = 0;
              v435 = 0;
              v432 = 0;
              v406 = 0;
              v400 = 0;
              v403 = 0;
              v429 = 0;
              v426 = 0;
              v423 = 0;
              v420 = 0;
              v417 = 0;
              v411 = 0;
              v414 = 0;
              v397 = 0;
              v394 = 0;
              v391 = 0;
              v388 = 0;
              v385 = 0;
              v119 = 0;
              v120 = 0;
              v121 = 0;
              v122 = 80.0;
              goto LABEL_256;
            }
          }

          else
          {
            HIDWORD(v438) = 0;
          }

LABEL_699:
          v111 = __sb__runningInSpringBoard();
          if (v111)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              LODWORD(v438) = 0;
              HIDWORD(v435) = 0;
              goto LABEL_768;
            }
          }

          else
          {
            v364 = [MEMORY[0x277D75418] currentDevice];
            if ([v364 userInterfaceIdiom])
            {
              HIDWORD(v435) = 0;
              LODWORD(v438) = 1;
              goto LABEL_768;
            }
          }

          LODWORD(v438) = v111 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            v111 = __sb__runningInSpringBoard();
            if (v111)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v356 = [MEMORY[0x277D759A0] mainScreen];
              [v356 _referenceBounds];
            }

            HIDWORD(v435) = v111 ^ 1;
            BSSizeRoundForScale();
            if (v241 >= *(MEMORY[0x277D66E30] + 136))
            {
              goto LABEL_793;
            }
          }

          else
          {
            HIDWORD(v435) = 0;
          }

LABEL_768:
          if (_SBF_Private_IsD54())
          {
            LODWORD(v435) = 0;
            v432 = 0;
            v406 = 0;
            v400 = 0;
            v403 = 0;
            v429 = 0;
            v426 = 0;
            v423 = 0;
            v420 = 0;
            v417 = 0;
            v411 = 0;
            v414 = 0;
            v397 = 0;
            v394 = 0;
            v391 = 0;
            v388 = 0;
            v385 = 0;
            v119 = 0;
            v120 = 0;
            v121 = 0;
            v122 = 70.0;
            goto LABEL_256;
          }

LABEL_793:
          v242 = __sb__runningInSpringBoard();
          if (v242)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              LODWORD(v435) = 0;
              HIDWORD(v432) = 0;
              goto LABEL_811;
            }
          }

          else
          {
            v363 = [MEMORY[0x277D75418] currentDevice];
            if ([v363 userInterfaceIdiom])
            {
              HIDWORD(v432) = 0;
              LODWORD(v435) = 1;
              goto LABEL_811;
            }
          }

          LODWORD(v435) = v242 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            v245 = __sb__runningInSpringBoard();
            if (v245)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v353 = [MEMORY[0x277D759A0] mainScreen];
              [v353 _referenceBounds];
            }

            v111 = v245 ^ 1u;
            BSSizeRoundForScale();
            HIDWORD(v432) = v111;
            if (v250 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
            {
              v406 = 0;
              v400 = 0;
              v403 = 0;
              LODWORD(v432) = 0;
              v429 = 0;
              v426 = 0;
              v423 = 0;
              v420 = 0;
              v417 = 0;
              v411 = 0;
              v414 = 0;
              v397 = 0;
              v394 = 0;
              v391 = 0;
              v388 = 0;
              v385 = 0;
              v119 = 0;
              v120 = 0;
              v121 = 0;
              v122 = 0.0;
              goto LABEL_256;
            }
          }

          else
          {
            HIDWORD(v432) = 0;
          }

LABEL_811:
          v111 = __sb__runningInSpringBoard();
          if (v111)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              v406 = 0;
              HIDWORD(v403) = 0;
              goto LABEL_865;
            }
          }

          else
          {
            v360 = [MEMORY[0x277D75418] currentDevice];
            if ([v360 userInterfaceIdiom])
            {
              HIDWORD(v403) = 0;
              v406 = 1;
              goto LABEL_865;
            }
          }

          v406 = v111 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            v111 = __sb__runningInSpringBoard();
            if (v111)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v352 = [MEMORY[0x277D759A0] mainScreen];
              [v352 _referenceBounds];
            }

            HIDWORD(v403) = v111 ^ 1;
            BSSizeRoundForScale();
            if (v253 >= *(MEMORY[0x277D66E30] + 120))
            {
              goto LABEL_897;
            }
          }

          else
          {
            HIDWORD(v403) = 0;
          }

LABEL_865:
          if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
          {
            LODWORD(v432) = 0;
            LODWORD(v403) = 0;
            v429 = 0;
            v426 = 0;
            v423 = 0;
            v420 = 0;
            v417 = 0;
            v411 = 0;
            v414 = 0;
            v397 = 0;
            v400 = 0;
            v394 = 0;
            v391 = 0;
            v388 = 0;
            v385 = 0;
            v119 = 0;
            v120 = 0;
            v121 = 0;
            v122 = 0.0;
            goto LABEL_256;
          }

LABEL_897:
          if (!_SBF_Private_IsD93Like())
          {
LABEL_901:
            LODWORD(v432) = 0;
            LODWORD(v403) = 0;
            goto LABEL_942;
          }

          v254 = __sb__runningInSpringBoard();
          if (v254)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              goto LABEL_901;
            }
          }

          else
          {
            v355 = [MEMORY[0x277D75418] currentDevice];
            if ([v355 userInterfaceIdiom])
            {
              LODWORD(v403) = 0;
              LODWORD(v432) = 1;
              goto LABEL_942;
            }
          }

          LODWORD(v432) = v254 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            v259 = __sb__runningInSpringBoard();
            if (v259)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v346 = [MEMORY[0x277D759A0] mainScreen];
              [v346 _referenceBounds];
            }

            v111 = v259 ^ 1u;
            BSSizeRoundForScale();
            LODWORD(v403) = v111;
            if (v268 >= *(MEMORY[0x277D66E30] + 184))
            {
              v429 = 0;
              v426 = 0;
              v423 = 0;
              v420 = 0;
              v417 = 0;
              v411 = 0;
              v414 = 0;
              v397 = 0;
              v400 = 0;
              v394 = 0;
              v391 = 0;
              v388 = 0;
              v385 = 0;
              v119 = 0;
              v120 = 0;
              v121 = 0;
              v122 = 80.0;
              goto LABEL_256;
            }
          }

          else
          {
            LODWORD(v403) = 0;
          }

LABEL_942:
          v111 = __sb__runningInSpringBoard();
          if (v111)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              v429 = 0;
              goto LABEL_952;
            }
          }

          else
          {
            v359 = [MEMORY[0x277D75418] currentDevice];
            if ([v359 userInterfaceIdiom])
            {
              v429 = 0x100000000;
              goto LABEL_952;
            }
          }

          HIDWORD(v429) = v111 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            v111 = __sb__runningInSpringBoard();
            if (v111)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v349 = [MEMORY[0x277D759A0] mainScreen];
              [v349 _referenceBounds];
            }

            LODWORD(v429) = v111 ^ 1;
            BSSizeRoundForScale();
            if (v260 >= *(MEMORY[0x277D66E30] + 184))
            {
              goto LABEL_956;
            }
          }

          else
          {
            LODWORD(v429) = 0;
          }

LABEL_952:
          if (_SBF_Private_IsD93Like())
          {
            v426 = 0;
            v423 = 0;
            v420 = 0;
            v417 = 0;
            v411 = 0;
            v414 = 0;
            v397 = 0;
            v400 = 0;
            v394 = 0;
            v391 = 0;
            v388 = 0;
            v385 = 0;
            v119 = 0;
            v120 = 0;
            v121 = 0;
            v122 = 65.66666;
            goto LABEL_256;
          }

LABEL_956:
          if (!_SBF_Private_IsD63Like())
          {
LABEL_960:
            v426 = 0;
            goto LABEL_1011;
          }

          v261 = __sb__runningInSpringBoard();
          if (v261)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              goto LABEL_960;
            }
          }

          else
          {
            v351 = [MEMORY[0x277D75418] currentDevice];
            if ([v351 userInterfaceIdiom])
            {
              v426 = 0x100000000;
              goto LABEL_1011;
            }
          }

          HIDWORD(v426) = v261 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            v111 = __sb__runningInSpringBoard();
            if (v111)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v342 = [MEMORY[0x277D759A0] mainScreen];
              [v342 _referenceBounds];
            }

            LODWORD(v426) = v111 ^ 1;
            BSSizeRoundForScale();
            if (v276 >= *(MEMORY[0x277D66E30] + 104))
            {
              v423 = 0;
              v420 = 0;
              v417 = 0;
              v411 = 0;
              v414 = 0;
              v397 = 0;
              v400 = 0;
              v394 = 0;
              v391 = 0;
              v388 = 0;
              v385 = 0;
              v119 = 0;
              v120 = 0;
              v121 = 0;
              v122 = 80.0;
              goto LABEL_256;
            }
          }

          else
          {
            LODWORD(v426) = 0;
          }

LABEL_1011:
          v111 = __sb__runningInSpringBoard();
          if (v111)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              v423 = 0;
              goto LABEL_1021;
            }
          }

          else
          {
            v354 = [MEMORY[0x277D75418] currentDevice];
            if ([v354 userInterfaceIdiom])
            {
              v423 = 0x100000000;
              goto LABEL_1021;
            }
          }

          HIDWORD(v423) = v111 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            v111 = __sb__runningInSpringBoard();
            if (v111)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v345 = [MEMORY[0x277D759A0] mainScreen];
              [v345 _referenceBounds];
            }

            LODWORD(v423) = v111 ^ 1;
            BSSizeRoundForScale();
            if (v270 >= *(MEMORY[0x277D66E30] + 104))
            {
              goto LABEL_1025;
            }
          }

          else
          {
            LODWORD(v423) = 0;
          }

LABEL_1021:
          if (_SBF_Private_IsD63Like())
          {
            v420 = 0;
            v417 = 0;
            v411 = 0;
            v414 = 0;
            v397 = 0;
            v400 = 0;
            v394 = 0;
            v391 = 0;
            v388 = 0;
            v385 = 0;
            v119 = 0;
            v120 = 0;
            v121 = 0;
            v122 = 65.66666;
            goto LABEL_256;
          }

LABEL_1025:
          if (!_SBF_Private_IsD23Like())
          {
LABEL_1029:
            v420 = 0;
            goto LABEL_1095;
          }

          v271 = __sb__runningInSpringBoard();
          if (v271)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              goto LABEL_1029;
            }
          }

          else
          {
            v347 = [MEMORY[0x277D75418] currentDevice];
            if ([v347 userInterfaceIdiom])
            {
              v420 = 0x100000000;
              goto LABEL_1095;
            }
          }

          HIDWORD(v420) = v271 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            v279 = __sb__runningInSpringBoard();
            if (v279)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v338 = [MEMORY[0x277D759A0] mainScreen];
              [v338 _referenceBounds];
            }

            v111 = v279 ^ 1u;
            BSSizeRoundForScale();
            LODWORD(v420) = v111;
            if (v289 >= *(MEMORY[0x277D66E30] + 216))
            {
              v417 = 0;
              v411 = 0;
              v414 = 0;
              v397 = 0;
              v400 = 0;
              v394 = 0;
              v391 = 0;
              v388 = 0;
              v385 = 0;
              v119 = 0;
              v120 = 0;
              v121 = 0;
              v122 = 80.0;
              goto LABEL_256;
            }
          }

          else
          {
            LODWORD(v420) = 0;
          }

LABEL_1095:
          v111 = __sb__runningInSpringBoard();
          if (v111)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              v417 = 0;
              goto LABEL_1105;
            }
          }

          else
          {
            v350 = [MEMORY[0x277D75418] currentDevice];
            if ([v350 userInterfaceIdiom])
            {
              v417 = 0x100000000;
              goto LABEL_1105;
            }
          }

          HIDWORD(v417) = v111 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            v111 = __sb__runningInSpringBoard();
            if (v111)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v341 = [MEMORY[0x277D759A0] mainScreen];
              [v341 _referenceBounds];
            }

            LODWORD(v417) = v111 ^ 1;
            BSSizeRoundForScale();
            if (v280 >= *(MEMORY[0x277D66E30] + 216))
            {
              goto LABEL_1109;
            }
          }

          else
          {
            LODWORD(v417) = 0;
          }

LABEL_1105:
          if (_SBF_Private_IsD23Like())
          {
            v411 = 0;
            v414 = 0;
            v397 = 0;
            v400 = 0;
            v394 = 0;
            v391 = 0;
            v388 = 0;
            v385 = 0;
            v119 = 0;
            v120 = 0;
            v121 = 0;
            v122 = 70.0;
            goto LABEL_256;
          }

LABEL_1109:
          v281 = __sb__runningInSpringBoard();
          if (v281)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              v414 = 0;
              goto LABEL_1119;
            }
          }

          else
          {
            v348 = [MEMORY[0x277D75418] currentDevice];
            if ([v348 userInterfaceIdiom])
            {
              v414 = 0x100000000;
              goto LABEL_1119;
            }
          }

          HIDWORD(v414) = v281 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            v111 = __sb__runningInSpringBoard();
            if (v111)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v339 = [MEMORY[0x277D759A0] mainScreen];
              [v339 _referenceBounds];
            }

            LODWORD(v414) = v111 ^ 1;
            BSSizeRoundForScale();
            if (v287 >= *(MEMORY[0x277D66E30] + 120))
            {
              v411 = 0;
              v397 = 0;
              v400 = 0;
              v394 = 0;
              v391 = 0;
              v388 = 0;
              v385 = 0;
              v119 = 0;
              v120 = 0;
              v121 = 0;
              v122 = 0.0;
              goto LABEL_256;
            }
          }

          else
          {
            LODWORD(v414) = 0;
          }

LABEL_1119:
          v111 = __sb__runningInSpringBoard();
          if (v111)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              HIDWORD(v411) = 0;
              HIDWORD(v400) = 0;
              goto LABEL_1188;
            }
          }

          else
          {
            v344 = [MEMORY[0x277D75418] currentDevice];
            if ([v344 userInterfaceIdiom])
            {
              HIDWORD(v400) = 0;
              HIDWORD(v411) = 1;
              goto LABEL_1188;
            }
          }

          HIDWORD(v411) = v111 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            v111 = __sb__runningInSpringBoard();
            if (v111)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v337 = [MEMORY[0x277D759A0] mainScreen];
              [v337 _referenceBounds];
            }

            HIDWORD(v400) = v111 ^ 1;
            BSSizeRoundForScale();
            if (v292 >= *(MEMORY[0x277D66E30] + 120))
            {
              goto LABEL_1213;
            }
          }

          else
          {
            HIDWORD(v400) = 0;
          }

LABEL_1188:
          if (_SBF_Private_IsD33OrSimilarDevice())
          {
            LODWORD(v400) = 0;
            LODWORD(v411) = 0;
            v397 = 0;
            v394 = 0;
            v391 = 0;
            v388 = 0;
            v385 = 0;
            v119 = 0;
            v120 = 0;
            v121 = 0;
            v122 = 0.0;
            goto LABEL_256;
          }

LABEL_1213:
          v293 = __sb__runningInSpringBoard();
          if (v293)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              LODWORD(v400) = 0;
              LODWORD(v411) = 0;
              goto LABEL_1231;
            }
          }

          else
          {
            v343 = [MEMORY[0x277D75418] currentDevice];
            if ([v343 userInterfaceIdiom])
            {
              LODWORD(v411) = 0;
              LODWORD(v400) = 1;
              goto LABEL_1231;
            }
          }

          LODWORD(v400) = v293 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            v111 = __sb__runningInSpringBoard();
            if (v111)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v336 = [MEMORY[0x277D759A0] mainScreen];
              [v336 _referenceBounds];
            }

            LODWORD(v411) = v111 ^ 1;
            BSSizeRoundForScale();
            if (v299 >= *(MEMORY[0x277D66E30] + 104))
            {
              v397 = 0;
              v394 = 0;
              v391 = 0;
              v388 = 0;
              v385 = 0;
              v119 = 0;
              v120 = 0;
              v121 = 0;
LABEL_1327:
              v122 = 80.0;
              goto LABEL_256;
            }
          }

          else
          {
            LODWORD(v411) = 0;
          }

LABEL_1231:
          v111 = __sb__runningInSpringBoard();
          if (v111)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              HIDWORD(v397) = 0;
              v394 = 0;
              goto LABEL_1291;
            }
          }

          else
          {
            v340 = [MEMORY[0x277D75418] currentDevice];
            if ([v340 userInterfaceIdiom])
            {
              v394 = 0;
              HIDWORD(v397) = 1;
              goto LABEL_1291;
            }
          }

          HIDWORD(v397) = v111 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            v111 = __sb__runningInSpringBoard();
            if (v111)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v335 = [MEMORY[0x277D759A0] mainScreen];
              [v335 _referenceBounds];
            }

            v394 = v111 ^ 1;
            BSSizeRoundForScale();
            if (v304 >= *(MEMORY[0x277D66E30] + 104))
            {
LABEL_1321:
              if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
              {
                goto LABEL_1326;
              }

              if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
              {
                goto LABEL_1329;
              }

              if (_SBF_Private_IsD52OrSimilarDevice())
              {
LABEL_1326:
                LODWORD(v397) = 0;
                v391 = 0;
                v388 = 0;
                v385 = 0;
                v119 = 0;
                v120 = 0;
                v121 = 0;
                goto LABEL_1327;
              }

              if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
              {
LABEL_1329:
                LODWORD(v397) = 0;
                v391 = 0;
                v388 = 0;
                v385 = 0;
                v119 = 0;
                v120 = 0;
                v121 = 0;
                v122 = 68.33333;
                goto LABEL_256;
              }

              v306 = __sb__runningInSpringBoard();
              if (v306)
              {
                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                {
                  LODWORD(v397) = 0;
                  v391 = 0;
                  goto LABEL_1392;
                }
              }

              else
              {
                v334 = [MEMORY[0x277D75418] currentDevice];
                if ([v334 userInterfaceIdiom])
                {
                  v391 = 0;
                  LODWORD(v397) = 1;
                  goto LABEL_1392;
                }
              }

              LODWORD(v397) = v306 ^ 1;
              if (SBFEffectiveHomeButtonType() == 2)
              {
                v111 = __sb__runningInSpringBoard();
                if (v111)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  v332 = [MEMORY[0x277D759A0] mainScreen];
                  [v332 _referenceBounds];
                }

                v391 = v111 ^ 1;
                BSSizeRoundForScale();
                if (v319 >= *(MEMORY[0x277D66E30] + 88))
                {
                  v388 = 0;
                  v385 = 0;
                  v119 = 0;
                  v120 = 0;
                  v121 = 0;
                  v122 = 0.0;
                  goto LABEL_256;
                }
              }

              else
              {
                v391 = 0;
              }

LABEL_1392:
              v111 = __sb__runningInSpringBoard();
              if (v111)
              {
                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                {
                  v388 = 0;
                  v385 = 0;
                  goto LABEL_1412;
                }
              }

              else
              {
                v333 = [MEMORY[0x277D75418] currentDevice];
                if ([v333 userInterfaceIdiom])
                {
                  v385 = 0;
                  v388 = 1;
                  goto LABEL_1412;
                }
              }

              v388 = v111 ^ 1;
              if (SBFEffectiveHomeButtonType() == 2)
              {
                v111 = __sb__runningInSpringBoard();
                if (v111)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  v110 = [MEMORY[0x277D759A0] mainScreen];
                  [v110 _referenceBounds];
                }

                v385 = v111 ^ 1;
                BSSizeRoundForScale();
                if (v321 >= *(MEMORY[0x277D66E30] + 72))
                {
                  v119 = 0;
                  v120 = 0;
                  v121 = 0;
                  v122 = 0.0;
                  goto LABEL_256;
                }
              }

              else
              {
                v385 = 0;
              }

LABEL_1412:
              v311 = __sb__runningInSpringBoard();
              if (v311)
              {
                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                {
                  v119 = 0;
                  v120 = 0;
LABEL_1432:
                  v315 = __sb__runningInSpringBoard();
                  if (v315)
                  {
                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                    {
LABEL_1435:
                      v121 = 0;
                      v122 = 0.0;
                      goto LABEL_256;
                    }
                  }

                  else
                  {
                    v12 = [MEMORY[0x277D75418] currentDevice];
                    if ([v12 userInterfaceIdiom])
                    {
                      v122 = 0.0;
                      v121 = 1;
                      goto LABEL_256;
                    }
                  }

                  v121 = v315 ^ 1;
                  v323 = __sb__runningInSpringBoard();
                  if (v323)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    v315 = [MEMORY[0x277D759A0] mainScreen];
                    [v315 _referenceBounds];
                  }

                  BSSizeRoundForScale();
                  v122 = 0.0;
                  if (v323 != 1)
                  {
                  }

LABEL_256:
                  if (v121)
                  {
                  }

                  if (v120)
                  {
                  }

                  if (v119)
                  {
                  }

                  if (v385)
                  {
                  }

                  if (v388)
                  {
                  }

                  if (v391)
                  {
                  }

                  if (v397)
                  {
                  }

                  if (v394)
                  {
                  }

                  if (HIDWORD(v397))
                  {
                  }

                  if (v411)
                  {
                  }

                  if (v400)
                  {
                  }

                  if (HIDWORD(v400))
                  {
                  }

                  if (HIDWORD(v411))
                  {
                  }

                  if (v414)
                  {
                  }

                  if (HIDWORD(v414))
                  {
                  }

                  if (v417)
                  {
                  }

                  if (HIDWORD(v417))
                  {
                  }

                  if (v420)
                  {
                  }

                  if (HIDWORD(v420))
                  {
                  }

                  if (v423)
                  {
                  }

                  if (HIDWORD(v423))
                  {
                  }

                  if (v426)
                  {
                  }

                  if (HIDWORD(v426))
                  {
                  }

                  if (v429)
                  {
                  }

                  if (HIDWORD(v429))
                  {
                  }

                  if (v403)
                  {
                  }

                  if (v432)
                  {
                  }

                  if (HIDWORD(v403))
                  {
                  }

                  if (v406)
                  {
                  }

                  if (HIDWORD(v432))
                  {
                  }

                  if (v435)
                  {
                  }

                  if (HIDWORD(v435))
                  {
                  }

                  if (v438)
                  {
                  }

                  if (HIDWORD(v438))
                  {
                  }

                  if (v441)
                  {
                  }

                  if (HIDWORD(v441))
                  {
                  }

                  if (v444)
                  {
                  }

                  if (HIDWORD(v444))
                  {
                  }

                  if (v447)
                  {
                  }

                  if (HIDWORD(v447))
                  {
                  }

                  if (v450)
                  {
                  }

                  if (HIDWORD(v450))
                  {
                  }

                  if (v453)
                  {
                  }

                  if (HIDWORD(v453))
                  {
                  }

                  if (v456)
                  {
                  }

                  if (HIDWORD(v456))
                  {
                  }

                  if (v459)
                  {
                  }

                  if (HIDWORD(v459))
                  {
                  }

                  if (v462)
                  {
                  }

                  if (HIDWORD(v462))
                  {

                    if (!v465)
                    {
                      goto LABEL_356;
                    }
                  }

                  else if (!v465)
                  {
LABEL_356:
                    if (HIDWORD(v465))
                    {
                      goto LABEL_357;
                    }

                    goto LABEL_369;
                  }

                  if (HIDWORD(v465))
                  {
LABEL_357:

                    if (!v468)
                    {
                      goto LABEL_358;
                    }

                    goto LABEL_370;
                  }

LABEL_369:
                  if (!v468)
                  {
LABEL_358:
                    if (!v471)
                    {
                      goto LABEL_360;
                    }

                    goto LABEL_359;
                  }

LABEL_370:

                  if (!v471)
                  {
LABEL_360:
                    if (v474)
                    {
                    }

                    if (v408)
                    {
                    }

                    v129 = __sb__runningInSpringBoard();
                    if (v129)
                    {
                      if (SBFEffectiveDeviceClass() != 2)
                      {
                        v130 = 0;
                        v131 = 0;
                        goto LABEL_378;
                      }
                    }

                    else
                    {
                      v382 = [MEMORY[0x277D75418] currentDevice];
                      if ([v382 userInterfaceIdiom] != 1)
                      {
                        v131 = 0;
                        v130 = 1;
                        goto LABEL_378;
                      }
                    }

                    v130 = v129 ^ 1u;
                    if (SBFEffectiveHomeButtonType() == 2)
                    {
                      v132 = __sb__runningInSpringBoard();
                      if (v132)
                      {
                        __sb__mainScreenReferenceBounds();
                      }

                      else
                      {
                        v383 = [MEMORY[0x277D759A0] mainScreen];
                        [v383 _referenceBounds];
                      }

                      v131 = v132 ^ 1;
                      BSSizeRoundForScale();
                      if (v148 == *(MEMORY[0x277D66E30] + 288) && v147 == *(MEMORY[0x277D66E30] + 296))
                      {
                        v475 = v132 ^ 1;
                        v409 = v130;
                        v472 = 0;
                        v469 = 0;
                        v466 = 0;
                        v463 = 0;
                        v460 = 0;
                        v457 = 0;
                        v454 = 0;
                        v451 = 0;
                        v448 = 0;
                        v445 = 0;
                        v442 = 0;
                        v439 = 0;
                        v436 = 0;
                        v433 = 0;
                        v407 = 0;
                        v401 = 0;
                        v404 = 0;
                        v430 = 0;
                        v427 = 0;
                        v424 = 0;
                        v421 = 0;
                        v418 = 0;
                        v412 = 0;
                        v415 = 0;
                        v398 = 0;
                        v395 = 0;
                        v392 = 0;
                        v389 = 0;
                        v386 = 0;
                        v141 = 0;
                        v142 = 0;
                        v143 = 0;
                        v144 = 0.0;
                        goto LABEL_432;
                      }
                    }

                    else
                    {
                      v131 = 0;
                    }

LABEL_378:
                    v133 = __sb__runningInSpringBoard();
                    v475 = v131;
                    v409 = v130;
                    if (v133)
                    {
                      if (SBFEffectiveDeviceClass() != 2)
                      {
                        v134 = 0;
                        v135 = 0;
                        goto LABEL_387;
                      }
                    }

                    else
                    {
                      v381 = [MEMORY[0x277D75418] currentDevice];
                      if ([v381 userInterfaceIdiom] != 1)
                      {
                        v135 = 0;
                        v134 = 1;
                        goto LABEL_387;
                      }
                    }

                    v134 = v133 ^ 1;
                    if (SBFEffectiveHomeButtonType() == 2)
                    {
                      v132 = __sb__runningInSpringBoard();
                      if (v132)
                      {
                        __sb__mainScreenReferenceBounds();
                      }

                      else
                      {
                        v373 = [MEMORY[0x277D759A0] mainScreen];
                        [v373 _referenceBounds];
                      }

                      v135 = v132 ^ 1;
                      BSSizeRoundForScale();
                      if (v149 >= *(MEMORY[0x277D66E30] + 440))
                      {
                        v469 = v132 ^ 1;
                        v472 = v134;
                        v466 = 0;
                        v463 = 0;
                        v460 = 0;
                        v457 = 0;
                        v454 = 0;
                        v451 = 0;
                        v448 = 0;
                        v445 = 0;
                        v442 = 0;
                        v439 = 0;
                        v436 = 0;
                        v433 = 0;
                        v407 = 0;
                        v401 = 0;
                        v404 = 0;
                        v430 = 0;
                        v427 = 0;
                        v424 = 0;
                        v421 = 0;
                        v418 = 0;
                        v412 = 0;
                        v415 = 0;
                        v398 = 0;
                        v395 = 0;
                        v392 = 0;
                        v389 = 0;
                        v386 = 0;
                        v141 = 0;
                        v142 = 0;
                        v143 = 0;
                        v144 = 0.0;
                        goto LABEL_432;
                      }
                    }

                    else
                    {
                      v135 = 0;
                    }

LABEL_387:
                    v136 = __sb__runningInSpringBoard();
                    v472 = v134;
                    v469 = v135;
                    if (v136)
                    {
                      if (SBFEffectiveDeviceClass() != 2)
                      {
                        v137 = 0;
                        v12 = 0;
                        goto LABEL_396;
                      }
                    }

                    else
                    {
                      v380 = [MEMORY[0x277D75418] currentDevice];
                      if ([v380 userInterfaceIdiom] != 1)
                      {
                        v12 = 0;
                        v137 = 1;
                        goto LABEL_396;
                      }
                    }

                    v137 = v136 ^ 1;
                    if (SBFEffectiveHomeButtonType() == 2)
                    {
                      v132 = __sb__runningInSpringBoard();
                      if (v132)
                      {
                        __sb__mainScreenReferenceBounds();
                      }

                      else
                      {
                        v372 = [MEMORY[0x277D759A0] mainScreen];
                        [v372 _referenceBounds];
                      }

                      v12 = v132 ^ 1;
                      BSSizeRoundForScale();
                      if (v150 >= *(MEMORY[0x277D66E30] + 376))
                      {
                        v466 = __PAIR64__(v137, v12);
                        v463 = 0;
                        v460 = 0;
                        v457 = 0;
                        v454 = 0;
                        v451 = 0;
                        v448 = 0;
                        v445 = 0;
                        v442 = 0;
                        v439 = 0;
                        v436 = 0;
                        v433 = 0;
                        v407 = 0;
                        v401 = 0;
                        v404 = 0;
                        v430 = 0;
                        v427 = 0;
                        v424 = 0;
                        v421 = 0;
                        v418 = 0;
                        v412 = 0;
                        v415 = 0;
                        v398 = 0;
                        v395 = 0;
                        v392 = 0;
                        v389 = 0;
                        v386 = 0;
                        v141 = 0;
                        v142 = 0;
                        v143 = 0;
                        v144 = 0.0;
                        goto LABEL_432;
                      }
                    }

                    else
                    {
                      v12 = 0;
                    }

LABEL_396:
                    v138 = __sb__runningInSpringBoard();
                    v466 = __PAIR64__(v137, v12);
                    if (v138)
                    {
                      if (SBFEffectiveDeviceClass() != 2)
                      {
                        v21 = 0;
                        LODWORD(v463) = 0;
                        goto LABEL_405;
                      }
                    }

                    else
                    {
                      v379 = [MEMORY[0x277D75418] currentDevice];
                      if ([v379 userInterfaceIdiom] != 1)
                      {
                        LODWORD(v463) = 0;
                        v21 = 1;
                        goto LABEL_405;
                      }
                    }

                    v21 = v138 ^ 1u;
                    v132 = __sb__runningInSpringBoard();
                    if (v132)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      v376 = [MEMORY[0x277D759A0] mainScreen];
                      [v376 _referenceBounds];
                    }

                    LODWORD(v463) = v132 ^ 1;
                    BSSizeRoundForScale();
                    if (v139 >= *(MEMORY[0x277D66E30] + 280))
                    {
                      HIDWORD(v463) = v21;
                      v460 = 0;
                      v457 = 0;
                      v454 = 0;
                      v451 = 0;
                      v448 = 0;
                      v445 = 0;
                      v442 = 0;
                      v439 = 0;
                      v436 = 0;
                      v433 = 0;
                      v407 = 0;
                      v401 = 0;
                      v404 = 0;
                      v430 = 0;
                      v427 = 0;
                      v424 = 0;
                      v421 = 0;
                      v418 = 0;
                      v412 = 0;
                      v415 = 0;
                      v398 = 0;
                      v395 = 0;
                      v392 = 0;
                      v389 = 0;
                      v386 = 0;
                      v141 = 0;
                      v142 = 0;
                      v143 = 0;
                      v144 = 0.0;
                      goto LABEL_432;
                    }

LABEL_405:
                    v140 = __sb__runningInSpringBoard();
                    HIDWORD(v463) = v21;
                    if (v140)
                    {
                      if (SBFEffectiveDeviceClass() != 2)
                      {
                        v460 = 0;
                        goto LABEL_415;
                      }
                    }

                    else
                    {
                      v378 = [MEMORY[0x277D75418] currentDevice];
                      if ([v378 userInterfaceIdiom] != 1)
                      {
                        v460 = 0x100000000;
                        goto LABEL_415;
                      }
                    }

                    HIDWORD(v460) = v140 ^ 1;
                    v132 = __sb__runningInSpringBoard();
                    if (v132)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      v374 = [MEMORY[0x277D759A0] mainScreen];
                      [v374 _referenceBounds];
                    }

                    LODWORD(v460) = v132 ^ 1;
                    BSSizeRoundForScale();
                    if (v145 >= *(MEMORY[0x277D66E30] + 264))
                    {
                      v457 = 0;
                      v454 = 0;
                      v451 = 0;
                      v448 = 0;
                      v445 = 0;
                      v442 = 0;
                      v439 = 0;
                      v436 = 0;
                      v433 = 0;
                      v407 = 0;
                      v401 = 0;
                      v404 = 0;
                      v430 = 0;
                      v427 = 0;
                      v424 = 0;
                      v421 = 0;
                      v418 = 0;
                      v412 = 0;
                      v415 = 0;
                      v398 = 0;
                      v395 = 0;
                      v392 = 0;
                      v389 = 0;
                      v386 = 0;
                      v141 = 0;
                      v142 = 0;
                      v143 = 0;
                      v144 = 0.0;
                      goto LABEL_432;
                    }

LABEL_415:
                    v146 = __sb__runningInSpringBoard();
                    if (v146)
                    {
                      if (SBFEffectiveDeviceClass() != 2)
                      {
                        v457 = 0;
                        goto LABEL_585;
                      }
                    }

                    else
                    {
                      v377 = [MEMORY[0x277D75418] currentDevice];
                      if ([v377 userInterfaceIdiom] != 1)
                      {
                        v457 = 0x100000000;
                        goto LABEL_585;
                      }
                    }

                    HIDWORD(v457) = v146 ^ 1;
                    v132 = __sb__runningInSpringBoard();
                    if (v132)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      v371 = [MEMORY[0x277D759A0] mainScreen];
                      [v371 _referenceBounds];
                    }

                    LODWORD(v457) = v132 ^ 1;
                    BSSizeRoundForScale();
                    if (v220 >= *(MEMORY[0x277D66E30] + 248))
                    {
                      v454 = 0;
                      v451 = 0;
                      v448 = 0;
                      v445 = 0;
                      v442 = 0;
                      v439 = 0;
                      v436 = 0;
                      v433 = 0;
                      v407 = 0;
                      v401 = 0;
                      v404 = 0;
                      v430 = 0;
                      v427 = 0;
                      v424 = 0;
                      v421 = 0;
                      v418 = 0;
                      v412 = 0;
                      v415 = 0;
                      v398 = 0;
                      v395 = 0;
                      v392 = 0;
                      v389 = 0;
                      v386 = 0;
                      v141 = 0;
                      v142 = 0;
                      v143 = 0;
                      v144 = 0.0;
                      goto LABEL_432;
                    }

LABEL_585:
                    v132 = __sb__runningInSpringBoard();
                    if (v132)
                    {
                      if (SBFEffectiveDeviceClass() != 2)
                      {
                        goto LABEL_587;
                      }
                    }

                    else
                    {
                      v375 = [MEMORY[0x277D75418] currentDevice];
                      if ([v375 userInterfaceIdiom] != 1)
                      {
LABEL_587:
                        HIDWORD(v454) = v132 ^ 1;
                        if (!_SBF_Private_IsD94Like())
                        {
LABEL_591:
                          LODWORD(v454) = 0;
                          HIDWORD(v451) = 0;
                          goto LABEL_644;
                        }

                        v221 = __sb__runningInSpringBoard();
                        if (v221)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            goto LABEL_591;
                          }
                        }

                        else
                        {
                          v369 = [MEMORY[0x277D75418] currentDevice];
                          if ([v369 userInterfaceIdiom])
                          {
                            HIDWORD(v451) = 0;
                            LODWORD(v454) = 1;
                            goto LABEL_644;
                          }
                        }

                        LODWORD(v454) = v221 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          v132 = __sb__runningInSpringBoard();
                          if (v132)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            v362 = [MEMORY[0x277D759A0] mainScreen];
                            [v362 _referenceBounds];
                          }

                          HIDWORD(v451) = v132 ^ 1;
                          BSSizeRoundForScale();
                          if (v229 >= *(MEMORY[0x277D66E30] + 200))
                          {
                            LODWORD(v451) = 0;
                            v448 = 0;
                            v445 = 0;
                            v442 = 0;
                            v439 = 0;
                            v436 = 0;
                            v433 = 0;
                            v407 = 0;
                            v401 = 0;
                            v404 = 0;
                            v430 = 0;
                            v427 = 0;
                            v424 = 0;
                            v421 = 0;
                            v418 = 0;
                            v412 = 0;
                            v415 = 0;
                            v398 = 0;
                            v395 = 0;
                            v392 = 0;
                            v389 = 0;
                            v386 = 0;
                            v141 = 0;
                            v142 = 0;
                            v143 = 0;
                            v144 = 120.0;
                            goto LABEL_432;
                          }
                        }

                        else
                        {
                          HIDWORD(v451) = 0;
                        }

LABEL_644:
                        v132 = __sb__runningInSpringBoard();
                        if (v132)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            LODWORD(v451) = 0;
                            HIDWORD(v448) = 0;
                            goto LABEL_654;
                          }
                        }

                        else
                        {
                          v370 = [MEMORY[0x277D75418] currentDevice];
                          if ([v370 userInterfaceIdiom])
                          {
                            HIDWORD(v448) = 0;
                            LODWORD(v451) = 1;
                            goto LABEL_654;
                          }
                        }

                        LODWORD(v451) = v132 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          v132 = __sb__runningInSpringBoard();
                          if (v132)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            v365 = [MEMORY[0x277D759A0] mainScreen];
                            [v365 _referenceBounds];
                          }

                          HIDWORD(v448) = v132 ^ 1;
                          BSSizeRoundForScale();
                          if (v226 >= *(MEMORY[0x277D66E30] + 200))
                          {
                            goto LABEL_658;
                          }
                        }

                        else
                        {
                          HIDWORD(v448) = 0;
                        }

LABEL_654:
                        if (_SBF_Private_IsD94Like())
                        {
                          LODWORD(v448) = 0;
                          v445 = 0;
                          v442 = 0;
                          v439 = 0;
                          v436 = 0;
                          v433 = 0;
                          v407 = 0;
                          v401 = 0;
                          v404 = 0;
                          v430 = 0;
                          v427 = 0;
                          v424 = 0;
                          v421 = 0;
                          v418 = 0;
                          v412 = 0;
                          v415 = 0;
                          v398 = 0;
                          v395 = 0;
                          v392 = 0;
                          v389 = 0;
                          v386 = 0;
                          v141 = 0;
                          v142 = 0;
                          v143 = 0;
                          v144 = 105.33333;
                          goto LABEL_432;
                        }

LABEL_658:
                        if (!_SBF_Private_IsD64Like())
                        {
LABEL_662:
                          LODWORD(v448) = 0;
                          HIDWORD(v445) = 0;
                          goto LABEL_709;
                        }

                        v227 = __sb__runningInSpringBoard();
                        if (v227)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            goto LABEL_662;
                          }
                        }

                        else
                        {
                          v366 = [MEMORY[0x277D75418] currentDevice];
                          if ([v366 userInterfaceIdiom])
                          {
                            HIDWORD(v445) = 0;
                            LODWORD(v448) = 1;
                            goto LABEL_709;
                          }
                        }

                        LODWORD(v448) = v227 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          v132 = __sb__runningInSpringBoard();
                          if (v132)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            v357 = [MEMORY[0x277D759A0] mainScreen];
                            [v357 _referenceBounds];
                          }

                          HIDWORD(v445) = v132 ^ 1;
                          BSSizeRoundForScale();
                          if (v239 >= *(MEMORY[0x277D66E30] + 136))
                          {
                            LODWORD(v445) = 0;
                            v442 = 0;
                            v439 = 0;
                            v436 = 0;
                            v433 = 0;
                            v407 = 0;
                            v401 = 0;
                            v404 = 0;
                            v430 = 0;
                            v427 = 0;
                            v424 = 0;
                            v421 = 0;
                            v418 = 0;
                            v412 = 0;
                            v415 = 0;
                            v398 = 0;
                            v395 = 0;
                            v392 = 0;
                            v389 = 0;
                            v386 = 0;
                            v141 = 0;
                            v142 = 0;
                            v143 = 0;
                            v144 = 120.0;
                            goto LABEL_432;
                          }
                        }

                        else
                        {
                          HIDWORD(v445) = 0;
                        }

LABEL_709:
                        v132 = __sb__runningInSpringBoard();
                        if (v132)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            LODWORD(v445) = 0;
                            HIDWORD(v442) = 0;
                            goto LABEL_719;
                          }
                        }

                        else
                        {
                          v368 = [MEMORY[0x277D75418] currentDevice];
                          if ([v368 userInterfaceIdiom])
                          {
                            HIDWORD(v442) = 0;
                            LODWORD(v445) = 1;
                            goto LABEL_719;
                          }
                        }

                        LODWORD(v445) = v132 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          v132 = __sb__runningInSpringBoard();
                          if (v132)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            v361 = [MEMORY[0x277D759A0] mainScreen];
                            [v361 _referenceBounds];
                          }

                          HIDWORD(v442) = v132 ^ 1;
                          BSSizeRoundForScale();
                          if (v232 >= *(MEMORY[0x277D66E30] + 136))
                          {
                            goto LABEL_723;
                          }
                        }

                        else
                        {
                          HIDWORD(v442) = 0;
                        }

LABEL_719:
                        if (_SBF_Private_IsD64Like())
                        {
                          LODWORD(v442) = 0;
                          v439 = 0;
                          v436 = 0;
                          v433 = 0;
                          v407 = 0;
                          v401 = 0;
                          v404 = 0;
                          v430 = 0;
                          v427 = 0;
                          v424 = 0;
                          v421 = 0;
                          v418 = 0;
                          v412 = 0;
                          v415 = 0;
                          v398 = 0;
                          v395 = 0;
                          v392 = 0;
                          v389 = 0;
                          v386 = 0;
                          v141 = 0;
                          v142 = 0;
                          v143 = 0;
                          v144 = 105.33333;
                          goto LABEL_432;
                        }

LABEL_723:
                        v233 = __sb__runningInSpringBoard();
                        if (v233)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            LODWORD(v442) = 0;
                            HIDWORD(v439) = 0;
                            goto LABEL_733;
                          }
                        }

                        else
                        {
                          v367 = [MEMORY[0x277D75418] currentDevice];
                          if ([v367 userInterfaceIdiom])
                          {
                            HIDWORD(v439) = 0;
                            LODWORD(v442) = 1;
                            goto LABEL_733;
                          }
                        }

                        LODWORD(v442) = v233 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          v132 = __sb__runningInSpringBoard();
                          if (v132)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            v358 = [MEMORY[0x277D759A0] mainScreen];
                            [v358 _referenceBounds];
                          }

                          HIDWORD(v439) = v132 ^ 1;
                          BSSizeRoundForScale();
                          if (v237 >= *(MEMORY[0x277D66E30] + 136))
                          {
                            LODWORD(v439) = 0;
                            v436 = 0;
                            v433 = 0;
                            v407 = 0;
                            v401 = 0;
                            v404 = 0;
                            v430 = 0;
                            v427 = 0;
                            v424 = 0;
                            v421 = 0;
                            v418 = 0;
                            v412 = 0;
                            v415 = 0;
                            v398 = 0;
                            v395 = 0;
                            v392 = 0;
                            v389 = 0;
                            v386 = 0;
                            v141 = 0;
                            v142 = 0;
                            v143 = 0;
                            v144 = 120.0;
                            goto LABEL_432;
                          }
                        }

                        else
                        {
                          HIDWORD(v439) = 0;
                        }

LABEL_733:
                        v132 = __sb__runningInSpringBoard();
                        if (v132)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            LODWORD(v439) = 0;
                            HIDWORD(v436) = 0;
                            goto LABEL_774;
                          }
                        }

                        else
                        {
                          v364 = [MEMORY[0x277D75418] currentDevice];
                          if ([v364 userInterfaceIdiom])
                          {
                            HIDWORD(v436) = 0;
                            LODWORD(v439) = 1;
                            goto LABEL_774;
                          }
                        }

                        LODWORD(v439) = v132 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          v132 = __sb__runningInSpringBoard();
                          if (v132)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            v356 = [MEMORY[0x277D759A0] mainScreen];
                            [v356 _referenceBounds];
                          }

                          HIDWORD(v436) = v132 ^ 1;
                          BSSizeRoundForScale();
                          if (v243 >= *(MEMORY[0x277D66E30] + 136))
                          {
                            goto LABEL_801;
                          }
                        }

                        else
                        {
                          HIDWORD(v436) = 0;
                        }

LABEL_774:
                        if (_SBF_Private_IsD54())
                        {
                          LODWORD(v436) = 0;
                          v433 = 0;
                          v407 = 0;
                          v401 = 0;
                          v404 = 0;
                          v430 = 0;
                          v427 = 0;
                          v424 = 0;
                          v421 = 0;
                          v418 = 0;
                          v412 = 0;
                          v415 = 0;
                          v398 = 0;
                          v395 = 0;
                          v392 = 0;
                          v389 = 0;
                          v386 = 0;
                          v141 = 0;
                          v142 = 0;
                          v143 = 0;
                          v144 = 105.33333;
                          goto LABEL_432;
                        }

LABEL_801:
                        v244 = __sb__runningInSpringBoard();
                        if (v244)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            LODWORD(v436) = 0;
                            HIDWORD(v433) = 0;
                            goto LABEL_821;
                          }
                        }

                        else
                        {
                          v363 = [MEMORY[0x277D75418] currentDevice];
                          if ([v363 userInterfaceIdiom])
                          {
                            HIDWORD(v433) = 0;
                            LODWORD(v436) = 1;
                            goto LABEL_821;
                          }
                        }

                        LODWORD(v436) = v244 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          v246 = __sb__runningInSpringBoard();
                          if (v246)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            v353 = [MEMORY[0x277D759A0] mainScreen];
                            [v353 _referenceBounds];
                          }

                          v132 = v246 ^ 1u;
                          BSSizeRoundForScale();
                          HIDWORD(v433) = v132;
                          if (v251 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
                          {
                            v407 = 0;
                            v401 = 0;
                            v404 = 0;
                            LODWORD(v433) = 0;
                            v430 = 0;
                            v427 = 0;
                            v424 = 0;
                            v421 = 0;
                            v418 = 0;
                            v412 = 0;
                            v415 = 0;
                            v398 = 0;
                            v395 = 0;
                            v392 = 0;
                            v389 = 0;
                            v386 = 0;
                            v141 = 0;
                            v142 = 0;
                            v143 = 0;
                            v144 = 0.0;
                            goto LABEL_432;
                          }
                        }

                        else
                        {
                          HIDWORD(v433) = 0;
                        }

LABEL_821:
                        v132 = __sb__runningInSpringBoard();
                        if (v132)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            v407 = 0;
                            HIDWORD(v404) = 0;
                            goto LABEL_872;
                          }
                        }

                        else
                        {
                          v360 = [MEMORY[0x277D75418] currentDevice];
                          if ([v360 userInterfaceIdiom])
                          {
                            HIDWORD(v404) = 0;
                            v407 = 1;
                            goto LABEL_872;
                          }
                        }

                        v407 = v132 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          v132 = __sb__runningInSpringBoard();
                          if (v132)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            v352 = [MEMORY[0x277D759A0] mainScreen];
                            [v352 _referenceBounds];
                          }

                          HIDWORD(v404) = v132 ^ 1;
                          BSSizeRoundForScale();
                          if (v255 >= *(MEMORY[0x277D66E30] + 120))
                          {
                            goto LABEL_906;
                          }
                        }

                        else
                        {
                          HIDWORD(v404) = 0;
                        }

LABEL_872:
                        if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
                        {
                          LODWORD(v433) = 0;
                          LODWORD(v404) = 0;
                          v430 = 0;
                          v427 = 0;
                          v424 = 0;
                          v421 = 0;
                          v418 = 0;
                          v412 = 0;
                          v415 = 0;
                          v398 = 0;
                          v401 = 0;
                          v395 = 0;
                          v392 = 0;
                          v389 = 0;
                          v386 = 0;
                          v141 = 0;
                          v142 = 0;
                          v143 = 0;
                          v144 = 0.0;
                          goto LABEL_432;
                        }

LABEL_906:
                        if (!_SBF_Private_IsD93Like())
                        {
LABEL_910:
                          LODWORD(v433) = 0;
                          LODWORD(v404) = 0;
                          goto LABEL_967;
                        }

                        v256 = __sb__runningInSpringBoard();
                        if (v256)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            goto LABEL_910;
                          }
                        }

                        else
                        {
                          v355 = [MEMORY[0x277D75418] currentDevice];
                          if ([v355 userInterfaceIdiom])
                          {
                            LODWORD(v404) = 0;
                            LODWORD(v433) = 1;
                            goto LABEL_967;
                          }
                        }

                        LODWORD(v433) = v256 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          v262 = __sb__runningInSpringBoard();
                          if (v262)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            v346 = [MEMORY[0x277D759A0] mainScreen];
                            [v346 _referenceBounds];
                          }

                          v132 = v262 ^ 1u;
                          BSSizeRoundForScale();
                          LODWORD(v404) = v132;
                          if (v269 >= *(MEMORY[0x277D66E30] + 184))
                          {
                            v430 = 0;
                            v427 = 0;
                            v424 = 0;
                            v421 = 0;
                            v418 = 0;
                            v412 = 0;
                            v415 = 0;
                            v398 = 0;
                            v401 = 0;
                            v395 = 0;
                            v392 = 0;
                            v389 = 0;
                            v386 = 0;
                            v141 = 0;
                            v142 = 0;
                            v143 = 0;
                            v144 = 120.0;
                            goto LABEL_432;
                          }
                        }

                        else
                        {
                          LODWORD(v404) = 0;
                        }

LABEL_967:
                        v132 = __sb__runningInSpringBoard();
                        if (v132)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            v430 = 0;
                            goto LABEL_977;
                          }
                        }

                        else
                        {
                          v359 = [MEMORY[0x277D75418] currentDevice];
                          if ([v359 userInterfaceIdiom])
                          {
                            v430 = 0x100000000;
                            goto LABEL_977;
                          }
                        }

                        HIDWORD(v430) = v132 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          v132 = __sb__runningInSpringBoard();
                          if (v132)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            v349 = [MEMORY[0x277D759A0] mainScreen];
                            [v349 _referenceBounds];
                          }

                          LODWORD(v430) = v132 ^ 1;
                          BSSizeRoundForScale();
                          if (v263 >= *(MEMORY[0x277D66E30] + 184))
                          {
                            goto LABEL_981;
                          }
                        }

                        else
                        {
                          LODWORD(v430) = 0;
                        }

LABEL_977:
                        if (_SBF_Private_IsD93Like())
                        {
                          v427 = 0;
                          v424 = 0;
                          v421 = 0;
                          v418 = 0;
                          v412 = 0;
                          v415 = 0;
                          v398 = 0;
                          v401 = 0;
                          v395 = 0;
                          v392 = 0;
                          v389 = 0;
                          v386 = 0;
                          v141 = 0;
                          v142 = 0;
                          v143 = 0;
                          v144 = 98.5;
                          goto LABEL_432;
                        }

LABEL_981:
                        if (!_SBF_Private_IsD63Like())
                        {
LABEL_985:
                          v427 = 0;
                          goto LABEL_1036;
                        }

                        v264 = __sb__runningInSpringBoard();
                        if (v264)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            goto LABEL_985;
                          }
                        }

                        else
                        {
                          v351 = [MEMORY[0x277D75418] currentDevice];
                          if ([v351 userInterfaceIdiom])
                          {
                            v427 = 0x100000000;
                            goto LABEL_1036;
                          }
                        }

                        HIDWORD(v427) = v264 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          v132 = __sb__runningInSpringBoard();
                          if (v132)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            v342 = [MEMORY[0x277D759A0] mainScreen];
                            [v342 _referenceBounds];
                          }

                          LODWORD(v427) = v132 ^ 1;
                          BSSizeRoundForScale();
                          if (v277 >= *(MEMORY[0x277D66E30] + 104))
                          {
                            v424 = 0;
                            v421 = 0;
                            v418 = 0;
                            v412 = 0;
                            v415 = 0;
                            v398 = 0;
                            v401 = 0;
                            v395 = 0;
                            v392 = 0;
                            v389 = 0;
                            v386 = 0;
                            v141 = 0;
                            v142 = 0;
                            v143 = 0;
                            v144 = 120.0;
                            goto LABEL_432;
                          }
                        }

                        else
                        {
                          LODWORD(v427) = 0;
                        }

LABEL_1036:
                        v132 = __sb__runningInSpringBoard();
                        if (v132)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            v424 = 0;
                            goto LABEL_1046;
                          }
                        }

                        else
                        {
                          v354 = [MEMORY[0x277D75418] currentDevice];
                          if ([v354 userInterfaceIdiom])
                          {
                            v424 = 0x100000000;
                            goto LABEL_1046;
                          }
                        }

                        HIDWORD(v424) = v132 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          v132 = __sb__runningInSpringBoard();
                          if (v132)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            v345 = [MEMORY[0x277D759A0] mainScreen];
                            [v345 _referenceBounds];
                          }

                          LODWORD(v424) = v132 ^ 1;
                          BSSizeRoundForScale();
                          if (v272 >= *(MEMORY[0x277D66E30] + 104))
                          {
                            goto LABEL_1050;
                          }
                        }

                        else
                        {
                          LODWORD(v424) = 0;
                        }

LABEL_1046:
                        if (_SBF_Private_IsD63Like())
                        {
                          v421 = 0;
                          v418 = 0;
                          v412 = 0;
                          v415 = 0;
                          v398 = 0;
                          v401 = 0;
                          v395 = 0;
                          v392 = 0;
                          v389 = 0;
                          v386 = 0;
                          v141 = 0;
                          v142 = 0;
                          v143 = 0;
                          v144 = 98.5;
                          goto LABEL_432;
                        }

LABEL_1050:
                        if (!_SBF_Private_IsD23Like())
                        {
LABEL_1054:
                          v421 = 0;
                          goto LABEL_1129;
                        }

                        v273 = __sb__runningInSpringBoard();
                        if (v273)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            goto LABEL_1054;
                          }
                        }

                        else
                        {
                          v347 = [MEMORY[0x277D75418] currentDevice];
                          if ([v347 userInterfaceIdiom])
                          {
                            v421 = 0x100000000;
                            goto LABEL_1129;
                          }
                        }

                        HIDWORD(v421) = v273 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          v282 = __sb__runningInSpringBoard();
                          if (v282)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            v338 = [MEMORY[0x277D759A0] mainScreen];
                            [v338 _referenceBounds];
                          }

                          v132 = v282 ^ 1u;
                          BSSizeRoundForScale();
                          LODWORD(v421) = v132;
                          if (v290 >= *(MEMORY[0x277D66E30] + 216))
                          {
                            v418 = 0;
                            v412 = 0;
                            v415 = 0;
                            v398 = 0;
                            v401 = 0;
                            v395 = 0;
                            v392 = 0;
                            v389 = 0;
                            v386 = 0;
                            v141 = 0;
                            v142 = 0;
                            v143 = 0;
                            v144 = 120.0;
                            goto LABEL_432;
                          }
                        }

                        else
                        {
                          LODWORD(v421) = 0;
                        }

LABEL_1129:
                        v132 = __sb__runningInSpringBoard();
                        if (v132)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            v418 = 0;
                            goto LABEL_1139;
                          }
                        }

                        else
                        {
                          v350 = [MEMORY[0x277D75418] currentDevice];
                          if ([v350 userInterfaceIdiom])
                          {
                            v418 = 0x100000000;
                            goto LABEL_1139;
                          }
                        }

                        HIDWORD(v418) = v132 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          v132 = __sb__runningInSpringBoard();
                          if (v132)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            v341 = [MEMORY[0x277D759A0] mainScreen];
                            [v341 _referenceBounds];
                          }

                          LODWORD(v418) = v132 ^ 1;
                          BSSizeRoundForScale();
                          if (v283 >= *(MEMORY[0x277D66E30] + 216))
                          {
                            goto LABEL_1143;
                          }
                        }

                        else
                        {
                          LODWORD(v418) = 0;
                        }

LABEL_1139:
                        if (_SBF_Private_IsD23Like())
                        {
                          v412 = 0;
                          v415 = 0;
                          v398 = 0;
                          v401 = 0;
                          v395 = 0;
                          v392 = 0;
                          v389 = 0;
                          v386 = 0;
                          v141 = 0;
                          v142 = 0;
                          v143 = 0;
                          v144 = 105.33333;
                          goto LABEL_432;
                        }

LABEL_1143:
                        v284 = __sb__runningInSpringBoard();
                        if (v284)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            v415 = 0;
                            goto LABEL_1153;
                          }
                        }

                        else
                        {
                          v348 = [MEMORY[0x277D75418] currentDevice];
                          if ([v348 userInterfaceIdiom])
                          {
                            v415 = 0x100000000;
                            goto LABEL_1153;
                          }
                        }

                        HIDWORD(v415) = v284 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          v132 = __sb__runningInSpringBoard();
                          if (v132)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            v339 = [MEMORY[0x277D759A0] mainScreen];
                            [v339 _referenceBounds];
                          }

                          LODWORD(v415) = v132 ^ 1;
                          BSSizeRoundForScale();
                          if (v288 >= *(MEMORY[0x277D66E30] + 120))
                          {
                            v412 = 0;
                            v398 = 0;
                            v401 = 0;
                            v395 = 0;
                            v392 = 0;
                            v389 = 0;
                            v386 = 0;
                            v141 = 0;
                            v142 = 0;
                            v143 = 0;
                            v144 = 0.0;
                            goto LABEL_432;
                          }
                        }

                        else
                        {
                          LODWORD(v415) = 0;
                        }

LABEL_1153:
                        v132 = __sb__runningInSpringBoard();
                        if (v132)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            HIDWORD(v412) = 0;
                            HIDWORD(v401) = 0;
                            goto LABEL_1194;
                          }
                        }

                        else
                        {
                          v344 = [MEMORY[0x277D75418] currentDevice];
                          if ([v344 userInterfaceIdiom])
                          {
                            HIDWORD(v401) = 0;
                            HIDWORD(v412) = 1;
                            goto LABEL_1194;
                          }
                        }

                        HIDWORD(v412) = v132 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          v132 = __sb__runningInSpringBoard();
                          if (v132)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            v337 = [MEMORY[0x277D759A0] mainScreen];
                            [v337 _referenceBounds];
                          }

                          HIDWORD(v401) = v132 ^ 1;
                          BSSizeRoundForScale();
                          if (v294 >= *(MEMORY[0x277D66E30] + 120))
                          {
                            goto LABEL_1221;
                          }
                        }

                        else
                        {
                          HIDWORD(v401) = 0;
                        }

LABEL_1194:
                        if (_SBF_Private_IsD33OrSimilarDevice())
                        {
                          LODWORD(v401) = 0;
                          LODWORD(v412) = 0;
                          v398 = 0;
                          v395 = 0;
                          v392 = 0;
                          v389 = 0;
                          v386 = 0;
                          v141 = 0;
                          v142 = 0;
                          v143 = 0;
                          v144 = 0.0;
                          goto LABEL_432;
                        }

LABEL_1221:
                        v295 = __sb__runningInSpringBoard();
                        if (v295)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            LODWORD(v401) = 0;
                            LODWORD(v412) = 0;
                            goto LABEL_1241;
                          }
                        }

                        else
                        {
                          v343 = [MEMORY[0x277D75418] currentDevice];
                          if ([v343 userInterfaceIdiom])
                          {
                            LODWORD(v412) = 0;
                            LODWORD(v401) = 1;
                            goto LABEL_1241;
                          }
                        }

                        LODWORD(v401) = v295 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          v132 = __sb__runningInSpringBoard();
                          if (v132)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            v336 = [MEMORY[0x277D759A0] mainScreen];
                            [v336 _referenceBounds];
                          }

                          LODWORD(v412) = v132 ^ 1;
                          BSSizeRoundForScale();
                          if (v300 >= *(MEMORY[0x277D66E30] + 104))
                          {
                            v398 = 0;
                            v395 = 0;
                            v392 = 0;
                            v389 = 0;
                            v386 = 0;
                            v141 = 0;
                            v142 = 0;
                            v143 = 0;
LABEL_1338:
                            v144 = 120.0;
                            goto LABEL_432;
                          }
                        }

                        else
                        {
                          LODWORD(v412) = 0;
                        }

LABEL_1241:
                        v132 = __sb__runningInSpringBoard();
                        if (v132)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            HIDWORD(v398) = 0;
                            v395 = 0;
                            goto LABEL_1297;
                          }
                        }

                        else
                        {
                          v340 = [MEMORY[0x277D75418] currentDevice];
                          if ([v340 userInterfaceIdiom])
                          {
                            v395 = 0;
                            HIDWORD(v398) = 1;
                            goto LABEL_1297;
                          }
                        }

                        HIDWORD(v398) = v132 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          v132 = __sb__runningInSpringBoard();
                          if (v132)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            v335 = [MEMORY[0x277D759A0] mainScreen];
                            [v335 _referenceBounds];
                          }

                          v395 = v132 ^ 1;
                          BSSizeRoundForScale();
                          if (v305 >= *(MEMORY[0x277D66E30] + 104))
                          {
LABEL_1332:
                            if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
                            {
                              goto LABEL_1337;
                            }

                            if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
                            {
                              goto LABEL_1340;
                            }

                            if (_SBF_Private_IsD52OrSimilarDevice())
                            {
LABEL_1337:
                              LODWORD(v398) = 0;
                              v392 = 0;
                              v389 = 0;
                              v386 = 0;
                              v141 = 0;
                              v142 = 0;
                              v143 = 0;
                              goto LABEL_1338;
                            }

                            if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
                            {
LABEL_1340:
                              LODWORD(v398) = 0;
                              v392 = 0;
                              v389 = 0;
                              v386 = 0;
                              v141 = 0;
                              v142 = 0;
                              v143 = 0;
                              v144 = 102.33333;
                              goto LABEL_432;
                            }

                            v307 = __sb__runningInSpringBoard();
                            if (v307)
                            {
                              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                              {
                                LODWORD(v398) = 0;
                                v392 = 0;
                                goto LABEL_1402;
                              }
                            }

                            else
                            {
                              v334 = [MEMORY[0x277D75418] currentDevice];
                              if ([v334 userInterfaceIdiom])
                              {
                                v392 = 0;
                                LODWORD(v398) = 1;
                                goto LABEL_1402;
                              }
                            }

                            LODWORD(v398) = v307 ^ 1;
                            if (SBFEffectiveHomeButtonType() == 2)
                            {
                              v132 = __sb__runningInSpringBoard();
                              if (v132)
                              {
                                __sb__mainScreenReferenceBounds();
                              }

                              else
                              {
                                v332 = [MEMORY[0x277D759A0] mainScreen];
                                [v332 _referenceBounds];
                              }

                              v392 = v132 ^ 1;
                              BSSizeRoundForScale();
                              if (v320 >= *(MEMORY[0x277D66E30] + 88))
                              {
                                v389 = 0;
                                v386 = 0;
                                v141 = 0;
                                v142 = 0;
                                v143 = 0;
                                v144 = 0.0;
                                goto LABEL_432;
                              }
                            }

                            else
                            {
                              v392 = 0;
                            }

LABEL_1402:
                            v132 = __sb__runningInSpringBoard();
                            if (v132)
                            {
                              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                              {
                                v389 = 0;
                                v386 = 0;
                                goto LABEL_1422;
                              }
                            }

                            else
                            {
                              v333 = [MEMORY[0x277D75418] currentDevice];
                              if ([v333 userInterfaceIdiom])
                              {
                                v386 = 0;
                                v389 = 1;
                                goto LABEL_1422;
                              }
                            }

                            v389 = v132 ^ 1;
                            if (SBFEffectiveHomeButtonType() == 2)
                            {
                              v132 = __sb__runningInSpringBoard();
                              if (v132)
                              {
                                __sb__mainScreenReferenceBounds();
                              }

                              else
                              {
                                v130 = [MEMORY[0x277D759A0] mainScreen];
                                [v130 _referenceBounds];
                              }

                              v386 = v132 ^ 1;
                              BSSizeRoundForScale();
                              if (v322 >= *(MEMORY[0x277D66E30] + 72))
                              {
                                v141 = 0;
                                v142 = 0;
                                v143 = 0;
                                v144 = 0.0;
                                goto LABEL_432;
                              }
                            }

                            else
                            {
                              v386 = 0;
                            }

LABEL_1422:
                            v312 = __sb__runningInSpringBoard();
                            if (v312)
                            {
                              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                              {
                                v141 = 0;
                                v142 = 0;
LABEL_1442:
                                v318 = __sb__runningInSpringBoard();
                                if (v318)
                                {
                                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                                  {
LABEL_1445:
                                    v143 = 0;
                                    v144 = 0.0;
                                    goto LABEL_432;
                                  }
                                }

                                else
                                {
                                  v12 = [MEMORY[0x277D75418] currentDevice];
                                  if ([v12 userInterfaceIdiom])
                                  {
                                    v144 = 0.0;
                                    v143 = 1;
                                    goto LABEL_432;
                                  }
                                }

                                v143 = v318 ^ 1;
                                v324 = __sb__runningInSpringBoard();
                                if (v324)
                                {
                                  __sb__mainScreenReferenceBounds();
                                }

                                else
                                {
                                  v318 = [MEMORY[0x277D759A0] mainScreen];
                                  [v318 _referenceBounds];
                                }

                                BSSizeRoundForScale();
                                v144 = 0.0;
                                if (v324 != 1)
                                {
                                }

LABEL_432:
                                if (v143)
                                {
                                }

                                if (v142)
                                {
                                }

                                if (v141)
                                {
                                }

                                if (v386)
                                {
                                }

                                if (v389)
                                {
                                }

                                if (v392)
                                {
                                }

                                if (v398)
                                {
                                }

                                if (v395)
                                {
                                }

                                if (HIDWORD(v398))
                                {
                                }

                                if (v412)
                                {
                                }

                                if (v401)
                                {
                                }

                                if (HIDWORD(v401))
                                {
                                }

                                if (HIDWORD(v412))
                                {
                                }

                                if (v415)
                                {
                                }

                                if (HIDWORD(v415))
                                {
                                }

                                if (v418)
                                {
                                }

                                if (HIDWORD(v418))
                                {
                                }

                                if (v421)
                                {
                                }

                                if (HIDWORD(v421))
                                {
                                }

                                if (v424)
                                {
                                }

                                if (HIDWORD(v424))
                                {
                                }

                                if (v427)
                                {
                                }

                                if (HIDWORD(v427))
                                {
                                }

                                if (v430)
                                {
                                }

                                if (HIDWORD(v430))
                                {
                                }

                                if (v404)
                                {
                                }

                                if (v433)
                                {
                                }

                                if (HIDWORD(v404))
                                {
                                }

                                if (v407)
                                {
                                }

                                if (HIDWORD(v433))
                                {
                                }

                                if (v436)
                                {
                                }

                                if (HIDWORD(v436))
                                {
                                }

                                if (v439)
                                {
                                }

                                if (HIDWORD(v439))
                                {
                                }

                                if (v442)
                                {
                                }

                                if (HIDWORD(v442))
                                {
                                }

                                if (v445)
                                {
                                }

                                if (HIDWORD(v445))
                                {
                                }

                                if (v448)
                                {
                                }

                                if (HIDWORD(v448))
                                {
                                }

                                if (v451)
                                {
                                }

                                if (HIDWORD(v451))
                                {
                                }

                                if (v454)
                                {
                                }

                                if (HIDWORD(v454))
                                {
                                }

                                if (v457)
                                {
                                }

                                if (HIDWORD(v457))
                                {
                                }

                                if (v460)
                                {
                                }

                                if (HIDWORD(v460))
                                {
                                }

                                if (v463)
                                {
                                }

                                if (HIDWORD(v463))
                                {
                                }

                                if (v466)
                                {
                                }

                                if (HIDWORD(v466))
                                {

                                  if (!v469)
                                  {
                                    goto LABEL_536;
                                  }
                                }

                                else if (!v469)
                                {
LABEL_536:
                                  if (!v472)
                                  {
                                    goto LABEL_538;
                                  }

                                  goto LABEL_537;
                                }

                                if (!v472)
                                {
LABEL_538:
                                  if (v475)
                                  {
                                  }

                                  v151 = v106 * v122;
                                  v152 = v106 * v144;
                                  if (v409)
                                  {
                                  }

                                  [(CALayer *)v14->_chargingBoltGlyph setBounds:0.0, 0.0, v151, v152];
                                  -[CALayer setContents:](v14->_chargingBoltGlyph, "setContents:", [v483 CGImage]);
                                  [(CALayer *)v14->_chargingBoltGlyph setOpacity:0.0];
                                  v153 = v14->_chargingBoltGlyph;
                                  v154 = [MEMORY[0x277CD9EA0] brightnessFilterWithAmount:0.1];
                                  v486 = v154;
                                  v155 = [MEMORY[0x277CBEA60] arrayWithObjects:&v486 count:1];
                                  [(CALayer *)v153 setFilters:v155];

                                  v156 = [v484 ring];
                                  v157 = [(CSBatteryChargingRingView *)v14 _ringLayerForRingConfiguration:v156];
                                  batteryLevelRing = v14->_batteryLevelRing;
                                  v14->_batteryLevelRing = v157;

                                  v159 = [v484 auxiliaryRing];
                                  v160 = [(CSBatteryChargingRingView *)v14 _ringLayerForRingConfiguration:v159];
                                  auxiliaryBatteryLevelRing = v14->_auxiliaryBatteryLevelRing;
                                  v14->_auxiliaryBatteryLevelRing = v160;

                                  [(CSBatteryChargingRingView *)v14 _createAuxiliaryPillViewsIfNeeded];
                                  v162 = +[CSLockScreenDomain rootSettings];
                                  v163 = [v162 chargingSettings];

                                  v164 = [MEMORY[0x277CD9ED0] layer];
                                  auxiliaryBatteryContainerLayer = v14->_auxiliaryBatteryContainerLayer;
                                  v14->_auxiliaryBatteryContainerLayer = v164;

                                  v166 = v14->_auxiliaryBatteryContainerLayer;
                                  [(CSBatteryChargingRingView *)v14 bounds];
                                  [(CALayer *)v166 setBounds:?];
                                  v476 = v163;
                                  if (([v163 useWhimsicalDesign] & 1) == 0)
                                  {
                                    v167 = MEMORY[0x277D755D0];
                                    v168 = [MEMORY[0x277D75348] whiteColor];
                                    v169 = [v167 configurationWithHierarchicalColor:v168];

                                    v170 = [(CSBatteryChargingRingView *)v14 _auxillaryGlyphImageForConfig:v169];
                                    v171 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v170];
                                    auxiliaryGlyphImageView = v14->_auxiliaryGlyphImageView;
                                    v14->_auxiliaryGlyphImageView = v171;

                                    [(UIImageView *)v14->_auxiliaryGlyphImageView setPreferredSymbolConfiguration:v169];
                                    [(UIImageView *)v14->_auxiliaryGlyphImageView setContentMode:1];
                                    [(UIImageView *)v14->_auxiliaryGlyphImageView setSize:44.0, 44.0];
                                    v173 = [(UIImageView *)v14->_auxiliaryGlyphImageView layer];
                                    auxiliaryGlyphLayer = v14->_auxiliaryGlyphLayer;
                                    v14->_auxiliaryGlyphLayer = v173;

                                    [(CALayer *)v14->_auxiliaryGlyphLayer setOpacity:0.0];
                                  }

                                  [(CSBatteryChargingRingView *)v14 _createBoltViewsIfNeeded];
                                  v175 = objc_alloc_init(MEMORY[0x277CD9E08]);
                                  auxiliaryCaptureBackdrop = v14->_auxiliaryCaptureBackdrop;
                                  v14->_auxiliaryCaptureBackdrop = v175;

                                  [(CABackdropLayer *)v14->_auxiliaryCaptureBackdrop setAllowsInPlaceFiltering:1];
                                  v177 = v14->_auxiliaryCaptureBackdrop;
                                  [(CSBatteryChargingRingView *)v14 bounds];
                                  [(CABackdropLayer *)v177 setBounds:?];
                                  v178 = [(CSBatteryChargingRingView *)v14 _silhouetteConfiguration];
                                  [(CSBatteryChargingRingView *)v14 setSilhouette:v178];

                                  p_auxiliaryBatteryPillClippingView = &v14->_chargingContainerView;
                                  [(CSBatteryChargingRingView *)v14 addSubview:*p_chargingContainerView];
                                  if ([v484 staticViewNeeded])
                                  {
                                    LODWORD(v180) = 1036831949;
                                    [(CSRingLayer *)v14->_trackFillRingLayer setOpacity:v180];
                                    LODWORD(v181) = 1.0;
                                    [(CALayer *)v14->_chargingBoltGlyph setOpacity:v181];
                                    LODWORD(v182) = 1.0;
                                    [(CSRingLayer *)v14->_batteryLevelRing setOpacity:v182];
                                    v183 = [(CSMagSafeAccessoryConfiguration *)v14->_configuration ring];
                                    v184 = [(CSBatteryChargingRingView *)v14 _pathForRingConfiguration:v183];

                                    [(CSRingLayer *)v14->_batteryLevelRing setPath:v184];
                                    CGPathRelease(v184);
                                    LODWORD(v185) = 1.0;
                                    [(CSRingLayer *)v14->_auxiliaryBatteryLevelRing setOpacity:v185];
                                    v186 = [(CSMagSafeAccessoryConfiguration *)v14->_configuration auxiliaryRing];
                                    v187 = [(CSBatteryChargingRingView *)v14 _pathForRingConfiguration:v186];

                                    [(CSRingLayer *)v14->_auxiliaryBatteryLevelRing setPath:v187];
                                    CGPathRelease(v187);
                                    v188 = [(UIView *)v14->_auxiliaryBatteryPillTrackView layer];
                                    LODWORD(v189) = 1036831949;
                                    [v188 setOpacity:v189];

                                    v190 = [(UIView *)v14->_auxiliaryBatteryPillLevelView layer];
                                    LODWORD(v191) = 1.0;
                                    [v190 setOpacity:v191];

                                    LODWORD(v192) = 1041865114;
                                    [(CALayer *)v14->_silhouetteLayer setOpacity:v192];
                                  }

                                  else
                                  {
                                    v193 = [*p_chargingContainerView layer];
                                    [v193 addSublayer:v14->_backgroundBackdropLayer];

                                    if ([(CSBatteryChargingRingView *)v14 _isReduceTransparencyEnabled])
                                    {
                                      v194 = [*p_chargingContainerView layer];
                                      [v194 addSublayer:v14->_averageColorBackdropLayer];
                                    }

                                    if ([(CSBatteryChargingRingView *)v14 _isShowingAuxiliary])
                                    {
                                      v195 = [*p_chargingContainerView layer];
                                      [v195 addSublayer:v14->_silhouetteLayer];

                                      v196 = [*p_chargingContainerView layer];
                                      [v196 addSublayer:v14->_auxiliaryBatteryContainerLayer];
                                    }

                                    if ([(CSBatteryChargingRingView *)v14 _isReduceMotionEnabled])
                                    {
                                      v197 = [*p_chargingContainerView layer];
                                      [v197 insertSublayer:v14->_backgroundRadiusBackdropLayer below:v14->_backgroundBackdropLayer];
                                    }

                                    else
                                    {
                                      if ([(CSBatteryChargingRingView *)v14 _isShowingAuxiliary])
                                      {
                                        [(CALayer *)v14->_silhouetteLayer addSublayer:v14->_splashRing];
                                        [(CALayer *)v14->_silhouetteLayer addSublayer:v14->_splashRing1];
                                        [(CALayer *)v14->_silhouetteLayer addSublayer:v14->_splashRing3];
                                      }

                                      else
                                      {
                                        v198 = [*p_chargingContainerView layer];
                                        [v198 addSublayer:v14->_splashRing];

                                        v199 = [*p_chargingContainerView layer];
                                        [v199 addSublayer:v14->_splashRing1];

                                        v200 = [*p_chargingContainerView layer];
                                        [v200 addSublayer:v14->_splashRing3];
                                      }

                                      v197 = [*p_chargingContainerView layer];
                                      [v197 addSublayer:v14->_ringTempOverlayLayer];
                                    }

                                    v201 = [*p_chargingContainerView layer];
                                    [v201 addSublayer:v14->_ringBlurBackdropLayer];
                                  }

                                  v202 = [*p_chargingContainerView layer];
                                  [v202 addSublayer:v14->_trackFillRingLayer];

                                  v203 = [*p_chargingContainerView layer];
                                  [v203 addSublayer:v14->_batteryLevelRing];

                                  v204 = [*p_chargingContainerView layer];
                                  [v204 addSublayer:v14->_chargingBoltGlyph];

                                  if ([v476 useWhimsicalDesign])
                                  {
                                    if ([(CSBatteryChargingRingView *)v14 _isShowingAuxiliary])
                                    {
                                      p_auxiliaryBatteryPillClippingView = &v14->_auxiliaryBatteryPillClippingView;
                                      v205 = [(UIView *)v14->_auxiliaryBatteryPillClippingView layer];
                                      v206 = v14->_auxiliaryCaptureBackdrop;
                                      v207 = [(UIView *)v14->_auxiliaryBatteryPillTrackView layer];
                                      [v205 insertSublayer:v206 above:v207];

                                      v208 = &OBJC_IVAR___CSBatteryChargingRingView__auxiliaryChargingBoltGlyph;
                                      v209 = &OBJC_IVAR___CSBatteryChargingRingView__auxiliaryChargingBoltGlyphMask;
LABEL_567:
                                      v214 = [*p_auxiliaryBatteryPillClippingView layer];
                                      [v214 addSublayer:*(&v14->super.super.super.super.super.super.isa + *v209)];

                                      v215 = [*p_auxiliaryBatteryPillClippingView layer];
                                      [v215 addSublayer:*(&v14->super.super.super.super.super.super.isa + *v208)];
                                    }
                                  }

                                  else if (v14->_auxiliaryBatteryLevelRing)
                                  {
                                    v210 = [*p_chargingContainerView layer];
                                    [v210 addSublayer:v14->_auxiliaryBatteryTrackFillRingLayer];

                                    [(CALayer *)v14->_auxiliaryBatteryContainerLayer addSublayer:v14->_auxiliaryBatteryLevelRing];
                                    v211 = +[CSLockScreenDomain rootSettings];
                                    v212 = [v211 chargingSettings];
                                    v213 = [v212 shouldShowMaskForAuxiliaryBattery];

                                    if (v213)
                                    {
                                      [(CALayer *)v14->_auxiliaryBatteryContainerLayer insertSublayer:v14->_auxiliaryCaptureBackdrop above:v14->_auxiliaryBatteryTrackFillRingLayer];
                                      [(CALayer *)v14->_auxiliaryBatteryContainerLayer addSublayer:v14->_auxiliaryChargingBoltGlyphMask];
                                    }

                                    v208 = &OBJC_IVAR___CSBatteryChargingRingView__auxiliaryGlyphLayer;
                                    v209 = &OBJC_IVAR___CSBatteryChargingRingView__auxiliaryChargingBoltGlyph;
                                    goto LABEL_567;
                                  }

                                  v12 = v484;
                                  v13 = v481;
                                  goto LABEL_569;
                                }

LABEL_537:

                                goto LABEL_538;
                              }
                            }

                            else
                            {
                              v132 = [MEMORY[0x277D75418] currentDevice];
                              if ([v132 userInterfaceIdiom])
                              {
                                v142 = 0;
                                v141 = 1;
                                goto LABEL_1442;
                              }
                            }

                            v141 = v312 ^ 1;
                            v316 = __sb__runningInSpringBoard();
                            if (v316)
                            {
                              __sb__mainScreenReferenceBounds();
                            }

                            else
                            {
                              v21 = [MEMORY[0x277D759A0] mainScreen];
                              [v21 _referenceBounds];
                            }

                            v142 = v316 ^ 1;
                            BSSizeRoundForScale();
                            if (v317 >= *(MEMORY[0x277D66E30] + 56))
                            {
                              goto LABEL_1445;
                            }

                            goto LABEL_1442;
                          }
                        }

                        else
                        {
                          v395 = 0;
                        }

LABEL_1297:
                        if (_SBF_Private_IsD53())
                        {
                          LODWORD(v398) = 0;
                          v392 = 0;
                          v389 = 0;
                          v386 = 0;
                          v141 = 0;
                          v142 = 0;
                          v143 = 0;
                          v144 = 98.5;
                          goto LABEL_432;
                        }

                        goto LABEL_1332;
                      }
                    }

                    LODWORD(v454) = 0;
                    v451 = 0;
                    v448 = 0;
                    v445 = 0;
                    v442 = 0;
                    v439 = 0;
                    v436 = 0;
                    v433 = 0;
                    v407 = 0;
                    v401 = 0;
                    v404 = 0;
                    v430 = 0;
                    v427 = 0;
                    v424 = 0;
                    v421 = 0;
                    v418 = 0;
                    v412 = 0;
                    v415 = 0;
                    v398 = 0;
                    v395 = 0;
                    v392 = 0;
                    v389 = 0;
                    v386 = 0;
                    v141 = 0;
                    v142 = 0;
                    v143 = 0;
                    v144 = 0.0;
                    HIDWORD(v454) = v132 ^ 1;
                    goto LABEL_432;
                  }

LABEL_359:

                  goto LABEL_360;
                }
              }

              else
              {
                v111 = [MEMORY[0x277D75418] currentDevice];
                if ([v111 userInterfaceIdiom])
                {
                  v120 = 0;
                  v119 = 1;
                  goto LABEL_1432;
                }
              }

              v119 = v311 ^ 1;
              v313 = __sb__runningInSpringBoard();
              if (v313)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v21 = [MEMORY[0x277D759A0] mainScreen];
                [v21 _referenceBounds];
              }

              v120 = v313 ^ 1;
              BSSizeRoundForScale();
              if (v314 >= *(MEMORY[0x277D66E30] + 56))
              {
                goto LABEL_1435;
              }

              goto LABEL_1432;
            }
          }

          else
          {
            v394 = 0;
          }

LABEL_1291:
          if (_SBF_Private_IsD53())
          {
            LODWORD(v397) = 0;
            v391 = 0;
            v388 = 0;
            v385 = 0;
            v119 = 0;
            v120 = 0;
            v121 = 0;
            v122 = 65.66666;
            goto LABEL_256;
          }

          goto LABEL_1321;
        }
      }

      LODWORD(v453) = 0;
      v450 = 0;
      v447 = 0;
      v444 = 0;
      v441 = 0;
      v438 = 0;
      v435 = 0;
      v432 = 0;
      v406 = 0;
      v400 = 0;
      v403 = 0;
      v429 = 0;
      v426 = 0;
      v423 = 0;
      v420 = 0;
      v417 = 0;
      v411 = 0;
      v414 = 0;
      v397 = 0;
      v394 = 0;
      v391 = 0;
      v388 = 0;
      v385 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v122 = 0.0;
      HIDWORD(v453) = v111 ^ 1;
      goto LABEL_256;
    }

    v80 = MEMORY[0x277D755D0];
    v81 = __sb__runningInSpringBoard();
    if (v81)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v478 = 0;
        v482 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      v387 = [MEMORY[0x277D75418] currentDevice];
      if ([v387 userInterfaceIdiom] != 1)
      {
        v478 = 0;
        v482 = 1;
        goto LABEL_22;
      }
    }

    v482 = v81 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v82 = __sb__runningInSpringBoard();
      if (v82)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v390 = [MEMORY[0x277D759A0] mainScreen];
        [v390 _referenceBounds];
      }

      v478 = v82 ^ 1;
      BSSizeRoundForScale();
      if (v97 == *(MEMORY[0x277D66E30] + 288) && v96 == *(MEMORY[0x277D66E30] + 296))
      {
        v88 = 0;
        v89 = 0;
        v90 = 0;
        v91 = 0;
        v393 = 0;
        v396 = 0;
        v399 = 0;
        v92 = 0;
        v410 = 0;
        v413 = 0;
        v402 = 0;
        v405 = 0;
        v416 = 0;
        v419 = 0;
        v422 = 0;
        v425 = 0;
        v428 = 0;
        v431 = 0;
        v434 = 0;
        v437 = 0;
        v440 = 0;
        v443 = 0;
        v446 = 0;
        v449 = 0;
        v452 = 0;
        v455 = 0;
        v458 = 0;
        v461 = 0;
        v464 = 0;
        v467 = 0;
        v470 = 0;
        v473 = 0;
        v93 = 0.0;
        goto LABEL_76;
      }
    }

    else
    {
      v478 = 0;
    }

LABEL_22:
    v83 = __sb__runningInSpringBoard();
    if (v83)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v470 = 0;
        v473 = 0;
        goto LABEL_31;
      }
    }

    else
    {
      v384 = [MEMORY[0x277D75418] currentDevice];
      if ([v384 userInterfaceIdiom] != 1)
      {
        v470 = 0;
        v473 = 1;
        goto LABEL_31;
      }
    }

    v473 = v83 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v82 = __sb__runningInSpringBoard();
      if (v82)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v376 = [MEMORY[0x277D759A0] mainScreen];
        [v376 _referenceBounds];
      }

      v470 = v82 ^ 1;
      BSSizeRoundForScale();
      if (v98 >= *(MEMORY[0x277D66E30] + 440))
      {
        v88 = 0;
        v89 = 0;
        v90 = 0;
        v91 = 0;
        v393 = 0;
        v396 = 0;
        v399 = 0;
        v92 = 0;
        v410 = 0;
        v413 = 0;
        v402 = 0;
        v405 = 0;
        v416 = 0;
        v419 = 0;
        v422 = 0;
        v425 = 0;
        v428 = 0;
        v431 = 0;
        v434 = 0;
        v437 = 0;
        v440 = 0;
        v443 = 0;
        v446 = 0;
        v449 = 0;
        v452 = 0;
        v455 = 0;
        v458 = 0;
        v461 = 0;
        v464 = 0;
        v467 = 0;
        v93 = 0.0;
        goto LABEL_76;
      }
    }

    else
    {
      v470 = 0;
    }

LABEL_31:
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        HIDWORD(v464) = 0;
        v467 = 0;
        goto LABEL_40;
      }
    }

    else
    {
      v383 = [MEMORY[0x277D75418] currentDevice];
      if ([v383 userInterfaceIdiom] != 1)
      {
        HIDWORD(v464) = 0;
        v467 = 1;
        goto LABEL_40;
      }
    }

    v467 = v84 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v82 = __sb__runningInSpringBoard();
      if (v82)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v375 = [MEMORY[0x277D759A0] mainScreen];
        [v375 _referenceBounds];
      }

      HIDWORD(v464) = v82 ^ 1;
      BSSizeRoundForScale();
      if (v99 >= *(MEMORY[0x277D66E30] + 376))
      {
        v88 = 0;
        v89 = 0;
        v90 = 0;
        v91 = 0;
        v393 = 0;
        v396 = 0;
        v399 = 0;
        v92 = 0;
        v410 = 0;
        v413 = 0;
        v402 = 0;
        v405 = 0;
        v416 = 0;
        v419 = 0;
        v422 = 0;
        v425 = 0;
        v428 = 0;
        v431 = 0;
        v434 = 0;
        v437 = 0;
        v440 = 0;
        v443 = 0;
        v446 = 0;
        v449 = 0;
        v452 = 0;
        v455 = 0;
        v458 = 0;
        v461 = 0;
        LODWORD(v464) = 0;
        v93 = 0.0;
        goto LABEL_76;
      }
    }

    else
    {
      HIDWORD(v464) = 0;
    }

LABEL_40:
    v85 = __sb__runningInSpringBoard();
    if (v85)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        HIDWORD(v461) = 0;
        LODWORD(v464) = 0;
        goto LABEL_49;
      }
    }

    else
    {
      v382 = [MEMORY[0x277D75418] currentDevice];
      if ([v382 userInterfaceIdiom] != 1)
      {
        HIDWORD(v461) = 0;
        LODWORD(v464) = 1;
        goto LABEL_49;
      }
    }

    LODWORD(v464) = v85 ^ 1;
    v82 = __sb__runningInSpringBoard();
    if (v82)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v379 = [MEMORY[0x277D759A0] mainScreen];
      [v379 _referenceBounds];
    }

    HIDWORD(v461) = v82 ^ 1;
    BSSizeRoundForScale();
    if (v86 >= *(MEMORY[0x277D66E30] + 280))
    {
      v88 = 0;
      v89 = 0;
      v90 = 0;
      v91 = 0;
      v393 = 0;
      v396 = 0;
      v399 = 0;
      v92 = 0;
      v410 = 0;
      v413 = 0;
      v402 = 0;
      v405 = 0;
      v416 = 0;
      v419 = 0;
      v422 = 0;
      v425 = 0;
      v428 = 0;
      v431 = 0;
      v434 = 0;
      v437 = 0;
      v440 = 0;
      v443 = 0;
      v446 = 0;
      v449 = 0;
      v452 = 0;
      v455 = 0;
      v458 = 0;
      LODWORD(v461) = 0;
      v93 = 0.0;
      goto LABEL_76;
    }

LABEL_49:
    v87 = __sb__runningInSpringBoard();
    if (v87)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        HIDWORD(v458) = 0;
        LODWORD(v461) = 0;
        goto LABEL_59;
      }
    }

    else
    {
      v381 = [MEMORY[0x277D75418] currentDevice];
      if ([v381 userInterfaceIdiom] != 1)
      {
        HIDWORD(v458) = 0;
        LODWORD(v461) = 1;
        goto LABEL_59;
      }
    }

    LODWORD(v461) = v87 ^ 1;
    v82 = __sb__runningInSpringBoard();
    if (v82)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v377 = [MEMORY[0x277D759A0] mainScreen];
      [v377 _referenceBounds];
    }

    HIDWORD(v458) = v82 ^ 1;
    BSSizeRoundForScale();
    if (v94 >= *(MEMORY[0x277D66E30] + 264))
    {
      v88 = 0;
      v89 = 0;
      v90 = 0;
      v91 = 0;
      v393 = 0;
      v396 = 0;
      v399 = 0;
      v92 = 0;
      v410 = 0;
      v413 = 0;
      v402 = 0;
      v405 = 0;
      v416 = 0;
      v419 = 0;
      v422 = 0;
      v425 = 0;
      v428 = 0;
      v431 = 0;
      v434 = 0;
      v437 = 0;
      v440 = 0;
      v443 = 0;
      v446 = 0;
      v449 = 0;
      v452 = 0;
      v455 = 0;
      LODWORD(v458) = 0;
      v93 = 0.0;
      goto LABEL_76;
    }

LABEL_59:
    v95 = __sb__runningInSpringBoard();
    if (v95)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        HIDWORD(v455) = 0;
        LODWORD(v458) = 0;
LABEL_599:
        v82 = __sb__runningInSpringBoard();
        if (v82)
        {
          if (SBFEffectiveDeviceClass() != 2)
          {
            goto LABEL_601;
          }
        }

        else
        {
          v378 = [MEMORY[0x277D75418] currentDevice];
          if ([v378 userInterfaceIdiom] != 1)
          {
LABEL_601:
            LODWORD(v455) = v82 ^ 1;
            if (!_SBF_Private_IsD94Like())
            {
LABEL_605:
              v452 = 0;
              goto LABEL_743;
            }

            v223 = __sb__runningInSpringBoard();
            if (v223)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                goto LABEL_605;
              }
            }

            else
            {
              v372 = [MEMORY[0x277D75418] currentDevice];
              if ([v372 userInterfaceIdiom])
              {
                v452 = 0x100000000;
                goto LABEL_743;
              }
            }

            HIDWORD(v452) = v223 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v82 = __sb__runningInSpringBoard();
              if (v82)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v365 = [MEMORY[0x277D759A0] mainScreen];
                [v365 _referenceBounds];
              }

              LODWORD(v452) = v82 ^ 1;
              BSSizeRoundForScale();
              if (v240 >= *(MEMORY[0x277D66E30] + 200))
              {
                v88 = 0;
                v89 = 0;
                v90 = 0;
                v91 = 0;
                v393 = 0;
                v396 = 0;
                v399 = 0;
                v92 = 0;
                v410 = 0;
                v413 = 0;
                v402 = 0;
                v405 = 0;
                v416 = 0;
                v419 = 0;
                v422 = 0;
                v425 = 0;
                v428 = 0;
                v431 = 0;
                v434 = 0;
                v437 = 0;
                v440 = 0;
                v443 = 0;
                v446 = 0;
                v449 = 0;
                v93 = 25.0;
                goto LABEL_76;
              }
            }

            else
            {
              LODWORD(v452) = 0;
            }

LABEL_743:
            v82 = __sb__runningInSpringBoard();
            if (v82)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v449 = 0;
                goto LABEL_753;
              }
            }

            else
            {
              v373 = [MEMORY[0x277D75418] currentDevice];
              if ([v373 userInterfaceIdiom])
              {
                v449 = 0x100000000;
                goto LABEL_753;
              }
            }

            HIDWORD(v449) = v82 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v82 = __sb__runningInSpringBoard();
              if (v82)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v368 = [MEMORY[0x277D759A0] mainScreen];
                [v368 _referenceBounds];
              }

              LODWORD(v449) = v82 ^ 1;
              BSSizeRoundForScale();
              if (v234 >= *(MEMORY[0x277D66E30] + 200))
              {
                goto LABEL_757;
              }
            }

            else
            {
              LODWORD(v449) = 0;
            }

LABEL_753:
            if (_SBF_Private_IsD94Like())
            {
              v88 = 0;
              v89 = 0;
              v90 = 0;
              v91 = 0;
              v393 = 0;
              v396 = 0;
              v399 = 0;
              v92 = 0;
              v410 = 0;
              v413 = 0;
              v402 = 0;
              v405 = 0;
              v416 = 0;
              v419 = 0;
              v422 = 0;
              v425 = 0;
              v428 = 0;
              v431 = 0;
              v434 = 0;
              v437 = 0;
              v440 = 0;
              v443 = 0;
              v446 = 0;
              v93 = 22.0;
              goto LABEL_76;
            }

LABEL_757:
            if (!_SBF_Private_IsD64Like())
            {
LABEL_761:
              v446 = 0;
              goto LABEL_831;
            }

            v235 = __sb__runningInSpringBoard();
            if (v235)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                goto LABEL_761;
              }
            }

            else
            {
              v369 = [MEMORY[0x277D75418] currentDevice];
              if ([v369 userInterfaceIdiom])
              {
                v446 = 0x100000000;
                goto LABEL_831;
              }
            }

            HIDWORD(v446) = v235 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v82 = __sb__runningInSpringBoard();
              if (v82)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v360 = [MEMORY[0x277D759A0] mainScreen];
                [v360 _referenceBounds];
              }

              LODWORD(v446) = v82 ^ 1;
              BSSizeRoundForScale();
              if (v252 >= *(MEMORY[0x277D66E30] + 136))
              {
                v88 = 0;
                v89 = 0;
                v90 = 0;
                v91 = 0;
                v393 = 0;
                v396 = 0;
                v399 = 0;
                v92 = 0;
                v410 = 0;
                v413 = 0;
                v402 = 0;
                v405 = 0;
                v416 = 0;
                v419 = 0;
                v422 = 0;
                v425 = 0;
                v428 = 0;
                v431 = 0;
                v434 = 0;
                v437 = 0;
                v440 = 0;
                v443 = 0;
                v93 = 25.0;
                goto LABEL_76;
              }
            }

            else
            {
              LODWORD(v446) = 0;
            }

LABEL_831:
            v82 = __sb__runningInSpringBoard();
            if (v82)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v443 = 0;
                goto LABEL_841;
              }
            }

            else
            {
              v371 = [MEMORY[0x277D75418] currentDevice];
              if ([v371 userInterfaceIdiom])
              {
                v443 = 0x100000000;
                goto LABEL_841;
              }
            }

            HIDWORD(v443) = v82 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v82 = __sb__runningInSpringBoard();
              if (v82)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v364 = [MEMORY[0x277D759A0] mainScreen];
                [v364 _referenceBounds];
              }

              LODWORD(v443) = v82 ^ 1;
              BSSizeRoundForScale();
              if (v247 >= *(MEMORY[0x277D66E30] + 136))
              {
                goto LABEL_845;
              }
            }

            else
            {
              LODWORD(v443) = 0;
            }

LABEL_841:
            if (_SBF_Private_IsD64Like())
            {
              v88 = 0;
              v89 = 0;
              v90 = 0;
              v91 = 0;
              v393 = 0;
              v396 = 0;
              v399 = 0;
              v92 = 0;
              v410 = 0;
              v413 = 0;
              v402 = 0;
              v405 = 0;
              v416 = 0;
              v419 = 0;
              v422 = 0;
              v425 = 0;
              v428 = 0;
              v431 = 0;
              v434 = 0;
              v437 = 0;
              v440 = 0;
              v93 = 22.0;
              goto LABEL_76;
            }

LABEL_845:
            v248 = __sb__runningInSpringBoard();
            if (v248)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v440 = 0;
                goto LABEL_855;
              }
            }

            else
            {
              v370 = [MEMORY[0x277D75418] currentDevice];
              if ([v370 userInterfaceIdiom])
              {
                v440 = 0x100000000;
                goto LABEL_855;
              }
            }

            HIDWORD(v440) = v248 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v82 = __sb__runningInSpringBoard();
              if (v82)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v361 = [MEMORY[0x277D759A0] mainScreen];
                [v361 _referenceBounds];
              }

              LODWORD(v440) = v82 ^ 1;
              BSSizeRoundForScale();
              if (v249 >= *(MEMORY[0x277D66E30] + 136))
              {
                v88 = 0;
                v89 = 0;
                v90 = 0;
                v91 = 0;
                v393 = 0;
                v396 = 0;
                v399 = 0;
                v92 = 0;
                v410 = 0;
                v413 = 0;
                v402 = 0;
                v405 = 0;
                v416 = 0;
                v419 = 0;
                v422 = 0;
                v425 = 0;
                v428 = 0;
                v431 = 0;
                v434 = 0;
                v437 = 0;
                v93 = 25.0;
                goto LABEL_76;
              }
            }

            else
            {
              LODWORD(v440) = 0;
            }

LABEL_855:
            v82 = __sb__runningInSpringBoard();
            if (v82)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v437 = 0;
                goto LABEL_879;
              }
            }

            else
            {
              v367 = [MEMORY[0x277D75418] currentDevice];
              if ([v367 userInterfaceIdiom])
              {
                v437 = 0x100000000;
                goto LABEL_879;
              }
            }

            HIDWORD(v437) = v82 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v82 = __sb__runningInSpringBoard();
              if (v82)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v359 = [MEMORY[0x277D759A0] mainScreen];
                [v359 _referenceBounds];
              }

              LODWORD(v437) = v82 ^ 1;
              BSSizeRoundForScale();
              if (v257 >= *(MEMORY[0x277D66E30] + 136))
              {
                goto LABEL_915;
              }
            }

            else
            {
              LODWORD(v437) = 0;
            }

LABEL_879:
            if (_SBF_Private_IsD54())
            {
              v88 = 0;
              v89 = 0;
              v90 = 0;
              v91 = 0;
              v393 = 0;
              v396 = 0;
              v399 = 0;
              v92 = 0;
              v410 = 0;
              v413 = 0;
              v402 = 0;
              v405 = 0;
              v416 = 0;
              v419 = 0;
              v422 = 0;
              v425 = 0;
              v428 = 0;
              v431 = 0;
              v434 = 0;
              v93 = 22.0;
              goto LABEL_76;
            }

LABEL_915:
            v258 = __sb__runningInSpringBoard();
            if (v258)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v434 = 0;
                goto LABEL_925;
              }
            }

            else
            {
              v366 = [MEMORY[0x277D75418] currentDevice];
              if ([v366 userInterfaceIdiom])
              {
                v434 = 0x100000000;
                goto LABEL_925;
              }
            }

            HIDWORD(v434) = v258 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v82 = __sb__runningInSpringBoard();
              if (v82)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v356 = [MEMORY[0x277D759A0] mainScreen];
                [v356 _referenceBounds];
              }

              BSSizeRoundForScale();
              LODWORD(v434) = v82 ^ 1;
              if (v265 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
              {
                v88 = 0;
                v89 = 0;
                v90 = 0;
                v91 = 0;
                v393 = 0;
                v396 = 0;
                v399 = 0;
                v92 = 0;
                v410 = 0;
                v413 = 0;
                v402 = 0;
                v405 = 0;
                v416 = 0;
                v419 = 0;
                v422 = 0;
                v425 = 0;
                v428 = 0;
                v431 = 0;
                v93 = 0.0;
                goto LABEL_76;
              }
            }

            else
            {
              LODWORD(v434) = 0;
            }

LABEL_925:
            v82 = __sb__runningInSpringBoard();
            if (v82)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                HIDWORD(v405) = 0;
                LODWORD(v410) = 0;
                goto LABEL_935;
              }
            }

            else
            {
              v363 = [MEMORY[0x277D75418] currentDevice];
              if ([v363 userInterfaceIdiom])
              {
                HIDWORD(v405) = 0;
                LODWORD(v410) = 1;
                goto LABEL_935;
              }
            }

            LODWORD(v410) = v82 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v82 = __sb__runningInSpringBoard();
              if (v82)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v355 = [MEMORY[0x277D759A0] mainScreen];
                [v355 _referenceBounds];
              }

              HIDWORD(v405) = v82 ^ 1;
              BSSizeRoundForScale();
              if (v266 >= *(MEMORY[0x277D66E30] + 120))
              {
                goto LABEL_994;
              }
            }

            else
            {
              HIDWORD(v405) = 0;
            }

LABEL_935:
            if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
            {
              v88 = 0;
              v89 = 0;
              v90 = 0;
              v91 = 0;
              v393 = 0;
              v396 = 0;
              v399 = 0;
              v92 = 0;
              v413 = 0;
              v402 = 0;
              v416 = 0;
              v419 = 0;
              v422 = 0;
              HIDWORD(v410) = 0;
              v425 = 0;
              v428 = 0;
              v431 = 0;
              LODWORD(v405) = 0;
              v93 = 0.0;
              goto LABEL_76;
            }

LABEL_994:
            if (!_SBF_Private_IsD93Like())
            {
LABEL_998:
              LODWORD(v405) = 0;
              HIDWORD(v431) = 0;
              goto LABEL_1061;
            }

            v267 = __sb__runningInSpringBoard();
            if (v267)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                goto LABEL_998;
              }
            }

            else
            {
              v358 = [MEMORY[0x277D75418] currentDevice];
              if ([v358 userInterfaceIdiom])
              {
                LODWORD(v405) = 0;
                HIDWORD(v431) = 1;
                goto LABEL_1061;
              }
            }

            HIDWORD(v431) = v267 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v82 = __sb__runningInSpringBoard();
              if (v82)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v349 = [MEMORY[0x277D759A0] mainScreen];
                [v349 _referenceBounds];
              }

              BSSizeRoundForScale();
              LODWORD(v405) = v82 ^ 1;
              if (v278 >= *(MEMORY[0x277D66E30] + 184))
              {
                v88 = 0;
                v89 = 0;
                v90 = 0;
                v91 = 0;
                v393 = 0;
                v396 = 0;
                v399 = 0;
                v92 = 0;
                v413 = 0;
                v402 = 0;
                v416 = 0;
                v419 = 0;
                v422 = 0;
                HIDWORD(v410) = 0;
                v425 = 0;
                v428 = 0;
                LODWORD(v431) = 0;
                v93 = 22.0;
                goto LABEL_76;
              }
            }

            else
            {
              LODWORD(v405) = 0;
            }

LABEL_1061:
            v82 = __sb__runningInSpringBoard();
            if (v82)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                HIDWORD(v428) = 0;
                LODWORD(v431) = 0;
                goto LABEL_1071;
              }
            }

            else
            {
              v362 = [MEMORY[0x277D75418] currentDevice];
              if ([v362 userInterfaceIdiom])
              {
                HIDWORD(v428) = 0;
                LODWORD(v431) = 1;
                goto LABEL_1071;
              }
            }

            LODWORD(v431) = v82 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v82 = __sb__runningInSpringBoard();
              if (v82)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v352 = [MEMORY[0x277D759A0] mainScreen];
                [v352 _referenceBounds];
              }

              HIDWORD(v428) = v82 ^ 1;
              BSSizeRoundForScale();
              if (v274 >= *(MEMORY[0x277D66E30] + 184))
              {
                goto LABEL_1075;
              }
            }

            else
            {
              HIDWORD(v428) = 0;
            }

LABEL_1071:
            if (_SBF_Private_IsD93Like())
            {
              v88 = 0;
              v89 = 0;
              v90 = 0;
              v91 = 0;
              v393 = 0;
              v396 = 0;
              v399 = 0;
              v92 = 0;
              v413 = 0;
              v402 = 0;
              v416 = 0;
              v419 = 0;
              v422 = 0;
              HIDWORD(v410) = 0;
              v425 = 0;
              LODWORD(v428) = 0;
              v93 = 18.0;
              goto LABEL_76;
            }

LABEL_1075:
            if (!_SBF_Private_IsD63Like())
            {
LABEL_1079:
              HIDWORD(v422) = 0;
              LODWORD(v428) = 0;
              goto LABEL_1163;
            }

            v275 = __sb__runningInSpringBoard();
            if (v275)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                goto LABEL_1079;
              }
            }

            else
            {
              v354 = [MEMORY[0x277D75418] currentDevice];
              if ([v354 userInterfaceIdiom])
              {
                HIDWORD(v422) = 0;
                LODWORD(v428) = 1;
                goto LABEL_1163;
              }
            }

            LODWORD(v428) = v275 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v82 = __sb__runningInSpringBoard();
              if (v82)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v345 = [MEMORY[0x277D759A0] mainScreen];
                [v345 _referenceBounds];
              }

              BSSizeRoundForScale();
              HIDWORD(v422) = v82 ^ 1;
              if (v291 >= *(MEMORY[0x277D66E30] + 104))
              {
                v88 = 0;
                v89 = 0;
                v90 = 0;
                v91 = 0;
                v393 = 0;
                v396 = 0;
                v399 = 0;
                v92 = 0;
                v413 = 0;
                v402 = 0;
                v416 = 0;
                v419 = 0;
                LODWORD(v422) = 0;
                HIDWORD(v410) = 0;
                v425 = 0;
                v93 = 22.0;
                goto LABEL_76;
              }
            }

            else
            {
              HIDWORD(v422) = 0;
            }

LABEL_1163:
            v82 = __sb__runningInSpringBoard();
            if (v82)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v425 = 0;
                goto LABEL_1173;
              }
            }

            else
            {
              v357 = [MEMORY[0x277D75418] currentDevice];
              if ([v357 userInterfaceIdiom])
              {
                v425 = 0x100000000;
                goto LABEL_1173;
              }
            }

            HIDWORD(v425) = v82 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v82 = __sb__runningInSpringBoard();
              if (v82)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v348 = [MEMORY[0x277D759A0] mainScreen];
                [v348 _referenceBounds];
              }

              LODWORD(v425) = v82 ^ 1;
              BSSizeRoundForScale();
              if (v285 >= *(MEMORY[0x277D66E30] + 104))
              {
                goto LABEL_1177;
              }
            }

            else
            {
              LODWORD(v425) = 0;
            }

LABEL_1173:
            if (_SBF_Private_IsD63Like())
            {
              v88 = 0;
              v89 = 0;
              v90 = 0;
              v91 = 0;
              v393 = 0;
              v396 = 0;
              v399 = 0;
              v92 = 0;
              v413 = 0;
              v402 = 0;
              v416 = 0;
              v419 = 0;
              LODWORD(v422) = 0;
              HIDWORD(v410) = 0;
              v93 = 18.0;
              goto LABEL_76;
            }

LABEL_1177:
            if (!_SBF_Private_IsD23Like())
            {
LABEL_1181:
              LODWORD(v422) = 0;
              HIDWORD(v410) = 0;
              goto LABEL_1251;
            }

            v286 = __sb__runningInSpringBoard();
            if (v286)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                goto LABEL_1181;
              }
            }

            else
            {
              v350 = [MEMORY[0x277D75418] currentDevice];
              if ([v350 userInterfaceIdiom])
              {
                LODWORD(v422) = 0;
                HIDWORD(v410) = 1;
                goto LABEL_1251;
              }
            }

            HIDWORD(v410) = v286 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v82 = __sb__runningInSpringBoard();
              if (v82)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v341 = [MEMORY[0x277D759A0] mainScreen];
                [v341 _referenceBounds];
              }

              LODWORD(v422) = v82 ^ 1;
              BSSizeRoundForScale();
              if (v301 >= *(MEMORY[0x277D66E30] + 216))
              {
                v88 = 0;
                v89 = 0;
                v90 = 0;
                v91 = 0;
                v393 = 0;
                v396 = 0;
                v399 = 0;
                v92 = 0;
                v413 = 0;
                v402 = 0;
                v416 = 0;
                v419 = 0;
                v93 = 25.0;
                goto LABEL_76;
              }
            }

            else
            {
              LODWORD(v422) = 0;
            }

LABEL_1251:
            v82 = __sb__runningInSpringBoard();
            if (v82)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v419 = 0;
                goto LABEL_1261;
              }
            }

            else
            {
              v353 = [MEMORY[0x277D75418] currentDevice];
              if ([v353 userInterfaceIdiom])
              {
                v419 = 0x100000000;
                goto LABEL_1261;
              }
            }

            HIDWORD(v419) = v82 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v82 = __sb__runningInSpringBoard();
              if (v82)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v344 = [MEMORY[0x277D759A0] mainScreen];
                [v344 _referenceBounds];
              }

              LODWORD(v419) = v82 ^ 1;
              BSSizeRoundForScale();
              if (v296 >= *(MEMORY[0x277D66E30] + 216))
              {
                goto LABEL_1265;
              }
            }

            else
            {
              LODWORD(v419) = 0;
            }

LABEL_1261:
            if (_SBF_Private_IsD23Like())
            {
              v88 = 0;
              v89 = 0;
              v90 = 0;
              v91 = 0;
              v393 = 0;
              v396 = 0;
              v399 = 0;
              v92 = 0;
              v413 = 0;
              v402 = 0;
              v416 = 0;
              v93 = 22.0;
              goto LABEL_76;
            }

LABEL_1265:
            v297 = __sb__runningInSpringBoard();
            if (v297)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v416 = 0;
                goto LABEL_1275;
              }
            }

            else
            {
              v351 = [MEMORY[0x277D75418] currentDevice];
              if ([v351 userInterfaceIdiom])
              {
                v416 = 0x100000000;
                goto LABEL_1275;
              }
            }

            HIDWORD(v416) = v297 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v82 = __sb__runningInSpringBoard();
              if (v82)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v342 = [MEMORY[0x277D759A0] mainScreen];
                [v342 _referenceBounds];
              }

              LODWORD(v416) = v82 ^ 1;
              BSSizeRoundForScale();
              if (v298 >= *(MEMORY[0x277D66E30] + 120))
              {
                v88 = 0;
                v89 = 0;
                v90 = 0;
                v91 = 0;
                v393 = 0;
                v396 = 0;
                v399 = 0;
                v92 = 0;
                v413 = 0;
                v402 = 0;
                v93 = 0.0;
                goto LABEL_76;
              }
            }

            else
            {
              LODWORD(v416) = 0;
            }

LABEL_1275:
            v82 = __sb__runningInSpringBoard();
            if (v82)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                HIDWORD(v402) = 0;
                HIDWORD(v413) = 0;
                goto LABEL_1285;
              }
            }

            else
            {
              v347 = [MEMORY[0x277D75418] currentDevice];
              if ([v347 userInterfaceIdiom])
              {
                HIDWORD(v402) = 0;
                HIDWORD(v413) = 1;
                goto LABEL_1285;
              }
            }

            HIDWORD(v413) = v82 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v82 = __sb__runningInSpringBoard();
              if (v82)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v340 = [MEMORY[0x277D759A0] mainScreen];
                [v340 _referenceBounds];
              }

              HIDWORD(v402) = v82 ^ 1;
              BSSizeRoundForScale();
              if (v302 >= *(MEMORY[0x277D66E30] + 120))
              {
                goto LABEL_1313;
              }
            }

            else
            {
              HIDWORD(v402) = 0;
            }

LABEL_1285:
            if (_SBF_Private_IsD33OrSimilarDevice())
            {
              v88 = 0;
              v89 = 0;
              v90 = 0;
              v91 = 0;
              v393 = 0;
              v396 = 0;
              v399 = 0;
              v92 = 0;
              LODWORD(v413) = 0;
              LODWORD(v402) = 0;
              v93 = 0.0;
              goto LABEL_76;
            }

LABEL_1313:
            v303 = __sb__runningInSpringBoard();
            if (v303)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                LODWORD(v413) = 0;
                LODWORD(v402) = 0;
                goto LABEL_1345;
              }
            }

            else
            {
              v346 = [MEMORY[0x277D75418] currentDevice];
              if ([v346 userInterfaceIdiom])
              {
                LODWORD(v413) = 0;
                LODWORD(v402) = 1;
                goto LABEL_1345;
              }
            }

            LODWORD(v402) = v303 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v82 = __sb__runningInSpringBoard();
              if (v82)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v339 = [MEMORY[0x277D759A0] mainScreen];
                [v339 _referenceBounds];
              }

              LODWORD(v413) = v82 ^ 1;
              BSSizeRoundForScale();
              if (v308 >= *(MEMORY[0x277D66E30] + 104))
              {
                v88 = 0;
                v89 = 0;
                v90 = 0;
                v91 = 0;
                v393 = 0;
                v396 = 0;
                v399 = 0;
                v92 = 0;
                v93 = 22.0;
                goto LABEL_76;
              }
            }

            else
            {
              LODWORD(v413) = 0;
            }

LABEL_1345:
            v82 = __sb__runningInSpringBoard();
            if (v82)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v92 = 0;
                HIDWORD(v399) = 0;
                goto LABEL_1355;
              }
            }

            else
            {
              v343 = [MEMORY[0x277D75418] currentDevice];
              if ([v343 userInterfaceIdiom])
              {
                v92 = 0;
                HIDWORD(v399) = 1;
                goto LABEL_1355;
              }
            }

            HIDWORD(v399) = v82 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v82 = __sb__runningInSpringBoard();
              if (v82)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v338 = [MEMORY[0x277D759A0] mainScreen];
                [v338 _referenceBounds];
              }

              v92 = v82 ^ 1;
              BSSizeRoundForScale();
              if (v309 >= *(MEMORY[0x277D66E30] + 104))
              {
LABEL_1370:
                if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
                {
                  goto LABEL_1375;
                }

                if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
                {
                  goto LABEL_1377;
                }

                if (_SBF_Private_IsD52OrSimilarDevice())
                {
LABEL_1375:
                  v88 = 0;
                  v89 = 0;
                  v90 = 0;
                  v91 = 0;
                  v393 = 0;
                  v396 = 0;
                  LODWORD(v399) = 0;
                  v93 = 22.0;
                  goto LABEL_76;
                }

                if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
                {
LABEL_1377:
                  v88 = 0;
                  v89 = 0;
                  v90 = 0;
                  v91 = 0;
                  v393 = 0;
                  v396 = 0;
                  LODWORD(v399) = 0;
                  v93 = 18.66666;
                  goto LABEL_76;
                }

                v310 = __sb__runningInSpringBoard();
                if (v310)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    HIDWORD(v396) = 0;
                    LODWORD(v399) = 0;
                    goto LABEL_1474;
                  }
                }

                else
                {
                  v337 = [MEMORY[0x277D75418] currentDevice];
                  if ([v337 userInterfaceIdiom])
                  {
                    HIDWORD(v396) = 0;
                    LODWORD(v399) = 1;
                    goto LABEL_1474;
                  }
                }

                LODWORD(v399) = v310 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  v82 = __sb__runningInSpringBoard();
                  if (v82)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    v332 = [MEMORY[0x277D759A0] mainScreen];
                    [v332 _referenceBounds];
                  }

                  HIDWORD(v396) = v82 ^ 1;
                  BSSizeRoundForScale();
                  if (v328 >= *(MEMORY[0x277D66E30] + 88))
                  {
                    v88 = 0;
                    v89 = 0;
                    v90 = 0;
                    v91 = 0;
                    v393 = 0;
                    LODWORD(v396) = 0;
                    v93 = 0.0;
                    goto LABEL_76;
                  }
                }

                else
                {
                  HIDWORD(v396) = 0;
                }

LABEL_1474:
                v325 = __sb__runningInSpringBoard();
                if (v325)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    v393 = 0;
                    LODWORD(v396) = 0;
                    goto LABEL_1484;
                  }
                }

                else
                {
                  v336 = [MEMORY[0x277D75418] currentDevice];
                  if ([v336 userInterfaceIdiom])
                  {
                    v393 = 0;
                    LODWORD(v396) = 1;
                    goto LABEL_1484;
                  }
                }

                LODWORD(v396) = v325 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  v82 = __sb__runningInSpringBoard();
                  if (v82)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    v331 = [MEMORY[0x277D759A0] mainScreen];
                    [v331 _referenceBounds];
                  }

                  v393 = v82 ^ 1;
                  BSSizeRoundForScale();
                  if (v329 >= *(MEMORY[0x277D66E30] + 72))
                  {
                    v88 = 0;
                    v89 = 0;
                    v90 = 0;
                    v91 = 0;
                    v93 = 0.0;
                    goto LABEL_76;
                  }
                }

                else
                {
                  v393 = 0;
                }

LABEL_1484:
                v82 = __sb__runningInSpringBoard();
                if (v82)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    v90 = 0;
                    v91 = 0;
                    goto LABEL_1494;
                  }
                }

                else
                {
                  v335 = [MEMORY[0x277D75418] currentDevice];
                  if ([v335 userInterfaceIdiom])
                  {
                    v90 = 0;
                    v91 = 1;
                    goto LABEL_1494;
                  }
                }

                v91 = v82 ^ 1;
                v82 = __sb__runningInSpringBoard();
                if (v82)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  v334 = [MEMORY[0x277D759A0] mainScreen];
                  [v334 _referenceBounds];
                }

                v90 = v82 ^ 1;
                BSSizeRoundForScale();
                if (v326 >= *(MEMORY[0x277D66E30] + 56))
                {
                  goto LABEL_1497;
                }

LABEL_1494:
                v327 = __sb__runningInSpringBoard();
                if (v327)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
LABEL_1497:
                    v88 = 0;
                    v89 = 0;
                    v93 = 0.0;
                    goto LABEL_76;
                  }
                }

                else
                {
                  v82 = [MEMORY[0x277D75418] currentDevice];
                  if ([v82 userInterfaceIdiom])
                  {
                    v88 = 0;
                    v93 = 0.0;
                    v89 = 1;
                    goto LABEL_76;
                  }
                }

                v89 = v327 ^ 1;
                v330 = __sb__runningInSpringBoard();
                if (v330)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  v333 = [MEMORY[0x277D759A0] mainScreen];
                  [v333 _referenceBounds];
                }

                v88 = v330 ^ 1;
                BSSizeRoundForScale();
                v93 = 0.0;
                goto LABEL_76;
              }
            }

            else
            {
              v92 = 0;
            }

LABEL_1355:
            if (_SBF_Private_IsD53())
            {
              v88 = 0;
              v89 = 0;
              v90 = 0;
              v91 = 0;
              v393 = 0;
              v396 = 0;
              LODWORD(v399) = 0;
              v93 = 18.0;
              goto LABEL_76;
            }

            goto LABEL_1370;
          }
        }

        v88 = 0;
        v89 = 0;
        v90 = 0;
        v91 = 0;
        v393 = 0;
        v396 = 0;
        v399 = 0;
        v92 = 0;
        v410 = 0;
        v413 = 0;
        v402 = 0;
        v405 = 0;
        v416 = 0;
        v419 = 0;
        v422 = 0;
        v425 = 0;
        v428 = 0;
        v431 = 0;
        v434 = 0;
        v437 = 0;
        v440 = 0;
        v443 = 0;
        v446 = 0;
        v449 = 0;
        v452 = 0;
        v93 = 0.0;
        LODWORD(v455) = v82 ^ 1;
LABEL_76:
        v100 = [v80 configurationWithPointSize:7 weight:v93];
        if (v88)
        {
        }

        if (v89)
        {
        }

        v12 = v484;
        v21 = 0x277CD9000uLL;
        if (v90)
        {
        }

        if (v91)
        {
        }

        if (v393)
        {
        }

        if (v396)
        {
        }

        if (HIDWORD(v396))
        {
        }

        if (v399)
        {
        }

        if (v92)
        {
        }

        if (HIDWORD(v399))
        {
        }

        if (v413)
        {
        }

        if (v402)
        {
        }

        if (HIDWORD(v402))
        {
        }

        if (HIDWORD(v413))
        {
        }

        if (v416)
        {
        }

        if (HIDWORD(v416))
        {
        }

        if (v419)
        {
        }

        if (HIDWORD(v419))
        {
        }

        if (v422)
        {
        }

        if (HIDWORD(v410))
        {
        }

        if (v425)
        {
        }

        if (HIDWORD(v425))
        {
        }

        if (HIDWORD(v422))
        {
        }

        if (v428)
        {
        }

        if (HIDWORD(v428))
        {
        }

        if (v431)
        {
        }

        if (v405)
        {
        }

        if (HIDWORD(v431))
        {
        }

        if (HIDWORD(v405))
        {
        }

        if (v410)
        {
        }

        if (v434)
        {
        }

        if (HIDWORD(v434))
        {
        }

        if (v437)
        {
        }

        if (HIDWORD(v437))
        {
        }

        if (v440)
        {
        }

        if (HIDWORD(v440))
        {
        }

        if (v443)
        {
        }

        if (HIDWORD(v443))
        {
        }

        if (v446)
        {
        }

        if (HIDWORD(v446))
        {
        }

        if (v449)
        {
        }

        if (HIDWORD(v449))
        {
        }

        if (v452)
        {
        }

        if (HIDWORD(v452))
        {
        }

        if (v455)
        {
        }

        if (HIDWORD(v455))
        {
        }

        if (v458)
        {
        }

        if (HIDWORD(v458))
        {
        }

        if (v461)
        {
        }

        if (HIDWORD(v461))
        {
        }

        if (v464)
        {
        }

        if (HIDWORD(v464))
        {
        }

        if (v467)
        {
        }

        if (v470)
        {
        }

        if (v473)
        {
        }

        if (v478)
        {
        }

        if (v482)
        {
        }

        v101 = [MEMORY[0x277D755B8] systemImageNamed:@"bolt.fill" withConfiguration:v100];
        v102 = [MEMORY[0x277D75348] whiteColor];
        v103 = [v101 _flatImageWithColor:v102];

        v79 = v103;
        goto LABEL_191;
      }
    }

    else
    {
      v380 = [MEMORY[0x277D75418] currentDevice];
      if ([v380 userInterfaceIdiom] != 1)
      {
        HIDWORD(v455) = 0;
        LODWORD(v458) = 1;
        goto LABEL_599;
      }
    }

    LODWORD(v458) = v95 ^ 1;
    v82 = __sb__runningInSpringBoard();
    if (v82)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v374 = [MEMORY[0x277D759A0] mainScreen];
      [v374 _referenceBounds];
    }

    HIDWORD(v455) = v82 ^ 1;
    BSSizeRoundForScale();
    if (v222 >= *(MEMORY[0x277D66E30] + 248))
    {
      v88 = 0;
      v89 = 0;
      v90 = 0;
      v91 = 0;
      v393 = 0;
      v396 = 0;
      v399 = 0;
      v92 = 0;
      v410 = 0;
      v413 = 0;
      v402 = 0;
      v405 = 0;
      v416 = 0;
      v419 = 0;
      v422 = 0;
      v425 = 0;
      v428 = 0;
      v431 = 0;
      v434 = 0;
      v437 = 0;
      v440 = 0;
      v443 = 0;
      v446 = 0;
      v449 = 0;
      v452 = 0;
      LODWORD(v455) = 0;
      v93 = 0.0;
      goto LABEL_76;
    }

    goto LABEL_599;
  }

LABEL_569:
  v216 = v14;

  return v216;
}

- (void)dealloc
{
  [(BSAbsoluteMachTimer *)self->_longTailShortcutTimer invalidate];
  v3.receiver = self;
  v3.super_class = CSBatteryChargingRingView;
  [(CSBatteryChargingRingView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v242.receiver = self;
  v242.super_class = CSBatteryChargingRingView;
  [(CSBatteryChargingRingView *)&v242 layoutSubviews];
  v3 = [(CSBatteryChargingRingView *)self superview];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIView *)self->_chargingContainerView setFrame:v5, v7, v9, v11];
  v12 = [(CSMagSafeAccessoryConfiguration *)self->_configuration ring];
  [v12 ringDiameter];
  v14 = v13;
  v15 = [(CSMagSafeAccessoryConfiguration *)self->_configuration ring];
  [v15 ringDiameter];
  v17 = v16;

  if ([(CSMagSafeAccessoryConfiguration *)self->_configuration staticViewNeeded])
  {
    [(CSBatteryChargingRingView *)self bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    [(UIView *)self->_chargingContainerView setFrame:?];
    v243.origin.x = v19;
    v243.origin.y = v21;
    v243.size.width = v23;
    v243.size.height = v25;
    [(SBUILegibilityLabel *)self->_chargePercentLabel sizeThatFits:CGRectGetWidth(v243), 0.0];
    [(CSBatteryChargingView *)self horizontalGapBetweenBatteryAndPercentLabel];
    v244.origin.x = 0.0;
    v244.origin.y = 0.0;
    v244.size.width = v14;
    v244.size.height = v17;
    CGRectGetWidth(v244);
    SBFMainScreenScale();
    BSFloatRoundForScale();
    v27 = v26;
    SBFMainScreenScale();
    BSFloatRoundForScale();
    [(CSRingLayer *)self->_trackFillRingLayer setFrame:v27, v28, v14, v17];
    [(CSRingLayer *)self->_batteryLevelRing frame];
    v30 = v29;
    v32 = v31;
    SBFMainScreenScale();
    BSFloatRoundForScale();
    v34 = v33;
    SBFMainScreenScale();
    BSFloatRoundForScale();
    [(CSRingLayer *)self->_batteryLevelRing setFrame:v34, v35, v30, v32];
    chargingBoltGlyph = self->_chargingBoltGlyph;
    [(CALayer *)chargingBoltGlyph bounds];
    [(CSRingLayer *)self->_batteryLevelRing frame];
    UIRectCenteredIntegralRect();
    UIRectGetCenter();
    auxiliaryChargingBoltGlyphMask = chargingBoltGlyph;
    goto LABEL_204;
  }

  v240 = v17;
  v241 = v14;
  [(CABackdropLayer *)self->_backgroundBackdropLayer setBounds:v5, v7, v9, v11];
  backgroundBackdropLayer = self->_backgroundBackdropLayer;
  [(CABackdropLayer *)backgroundBackdropLayer bounds];
  [(CSBatteryChargingRingView *)self bounds];
  UIRectCenteredIntegralRect();
  UIRectGetCenter();
  [(CABackdropLayer *)backgroundBackdropLayer setPosition:?];
  if ([(CSBatteryChargingRingView *)self _isReduceTransparencyEnabled])
  {
    [(CABackdropLayer *)self->_averageColorBackdropLayer setBounds:v5, v7, v9, v11];
    averageColorBackdropLayer = self->_averageColorBackdropLayer;
    [(CABackdropLayer *)averageColorBackdropLayer bounds];
    [(CSBatteryChargingRingView *)self bounds];
    UIRectCenteredIntegralRect();
    UIRectGetCenter();
    [(CABackdropLayer *)averageColorBackdropLayer setPosition:?];
  }

  v239 = v5;
  [(CABackdropLayer *)self->_ringBlurBackdropLayer setBounds:0.0, 0.0, v14, v17];
  ringBlurBackdropLayer = self->_ringBlurBackdropLayer;
  [(CABackdropLayer *)ringBlurBackdropLayer bounds];
  [(UIView *)self->_chargingContainerView bounds];
  UIRectCenteredIntegralRect();
  UIRectGetCenter();
  [(CABackdropLayer *)ringBlurBackdropLayer setPosition:?];
  [(CSRingLayer *)self->_ringBlurLayer setBounds:0.0, 0.0, v14, v17];
  ringBlurLayer = self->_ringBlurLayer;
  [(CSRingLayer *)ringBlurLayer bounds];
  [(CABackdropLayer *)self->_ringBlurBackdropLayer bounds];
  UIRectCenteredIntegralRect();
  UIRectGetCenter();
  [(CSRingLayer *)ringBlurLayer setPosition:?];
  v44 = [*MEMORY[0x277D76620] activeInterfaceOrientation];
  v45 = v44 - 1;
  if ([(CSBatteryChargingRingView *)self _isShowingAuxiliary])
  {
    [(CSMagSafeSilhouetteConfiguration *)self->_silhouette size];
    v47 = v46;
    v49 = v48;
    [(CSMagSafeSilhouetteConfiguration *)self->_silhouette size];
    if (v45 > 1)
    {
      v57 = v50;
      if (v44 == 3)
      {
        [(CSBatteryChargingRingView *)self bounds];
        Width = CGRectGetWidth(v247);
        [(CSMagSafeSilhouetteConfiguration *)self->_silhouette bottomOffset];
        v53 = Width - (v49 + v59);
      }

      else
      {
        [(CSMagSafeSilhouetteConfiguration *)self->_silhouette bottomOffset];
        v53 = v60;
      }

      [(CSBatteryChargingRingView *)self bounds];
      v56 = (v61 - v57) * 0.5;
    }

    else
    {
      v52 = v51;
      [(CSBatteryChargingRingView *)self bounds];
      v53 = (CGRectGetWidth(v245) - v47) * 0.5;
      [(CSBatteryChargingRingView *)self bounds];
      Height = CGRectGetHeight(v246);
      [(CSMagSafeSilhouetteConfiguration *)self->_silhouette bottomOffset];
      v56 = Height - (v52 + v55);
      v57 = v52;
      v49 = v47;
    }

    [(CALayer *)self->_silhouetteLayer setFrame:v53, v56, v49, v57];
  }

  if ([(CSBatteryChargingRingView *)self _isReduceMotionEnabled])
  {
    [(CABackdropLayer *)self->_backgroundRadiusBackdropLayer setBounds:v239, v7, v9, v11];
    backgroundRadiusBackdropLayer = self->_backgroundRadiusBackdropLayer;
    [backgroundRadiusBackdropLayer bounds];
    [(CSBatteryChargingRingView *)self bounds];
    UIRectCenteredIntegralRect();
    UIRectGetCenter();
    v64 = v240;
    v63 = v241;
  }

  else
  {
    v64 = v240;
    v63 = v241;
    [(CALayer *)self->_ringTempOverlayLayer setBounds:0.0, 0.0, v241, v240];
    ringTempOverlayLayer = self->_ringTempOverlayLayer;
    [(CALayer *)ringTempOverlayLayer bounds];
    [(UIView *)self->_chargingContainerView bounds];
    UIRectCenteredIntegralRect();
    UIRectGetCenter();
    [(CALayer *)ringTempOverlayLayer setPosition:?];
    v66 = [(CSMagSafeAccessoryConfiguration *)self->_configuration ring];
    [v66 splashRingDiameter];
    v68 = v67 * 1.66;

    [(CALayer *)self->_splashRing setBounds:0.0, 0.0, v68, v68];
    splashRing1 = self->_splashRing1;
    [(CALayer *)self->_splashRing bounds];
    [(CALayer *)splashRing1 setBounds:?];
    splashRing3 = self->_splashRing3;
    [(CALayer *)self->_splashRing bounds];
    [(CALayer *)splashRing3 setBounds:?];
    if ([(CSBatteryChargingRingView *)self _isShowingAuxiliary])
    {
      [(CSRingLayer *)self->_batteryLevelRing bounds];
      [(UIView *)self->_chargingContainerView bounds];
      UIRectCenteredIntegralRect();
      UIRectGetCenter();
      v72 = v71;
      v74 = v73;
      if (v45 > 1)
      {
        if (v44 == 3)
        {
          [(CALayer *)self->_silhouetteLayer frame];
          v72 = v72 - CGRectGetMinX(v249);
        }
      }

      else
      {
        [(CALayer *)self->_silhouetteLayer frame];
        v74 = v74 - CGRectGetMinY(v248);
      }

      [(CALayer *)self->_splashRing setPosition:v72, v74];
      v75 = self->_splashRing1;
      [(CALayer *)self->_splashRing position];
      [(CALayer *)v75 setPosition:?];
      backgroundRadiusBackdropLayer = self->_splashRing3;
      [(CALayer *)self->_splashRing position];
    }

    else
    {
      backgroundRadiusBackdropLayer = self->_splashRing;
      [backgroundRadiusBackdropLayer bounds];
      [(UIView *)self->_chargingContainerView bounds];
      UIRectCenteredIntegralRect();
      UIRectGetCenter();
    }
  }

  [backgroundRadiusBackdropLayer setPosition:?];
  [(CSRingLayer *)self->_trackFillRingLayer setBounds:0.0, 0.0, v63, v64];
  trackFillRingLayer = self->_trackFillRingLayer;
  [(CSRingLayer *)trackFillRingLayer bounds];
  [(UIView *)self->_chargingContainerView bounds];
  UIRectCenteredIntegralRect();
  UIRectGetCenter();
  [(CSRingLayer *)trackFillRingLayer setPosition:?];
  v77 = self->_chargingBoltGlyph;
  [(CALayer *)v77 bounds];
  [(UIView *)self->_chargingContainerView bounds];
  UIRectCenteredIntegralRect();
  UIRectGetCenter();
  [(CALayer *)v77 setPosition:?];
  batteryLevelRing = self->_batteryLevelRing;
  [(CSRingLayer *)batteryLevelRing bounds];
  [(UIView *)self->_chargingContainerView bounds];
  UIRectCenteredIntegralRect();
  UIRectGetCenter();
  [(CSRingLayer *)batteryLevelRing setPosition:?];
  v79 = +[CSLockScreenDomain rootSettings];
  v80 = [v79 chargingSettings];
  v81 = [v80 useWhimsicalDesign];

  if (v81)
  {
    [(CSBatteryChargingRingView *)self bounds];
    MidX = CGRectGetMidX(v250);
    [(CALayer *)self->_silhouetteLayer frame];
    MaxY = CGRectGetMaxY(v251);
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        LODWORD(v240) = 0;
        LODWORD(v241) = 0;
        goto LABEL_36;
      }
    }

    else
    {
      v217 = [MEMORY[0x277D75418] currentDevice];
      if ([v217 userInterfaceIdiom] != 1)
      {
        LODWORD(v240) = 0;
        LODWORD(v241) = 1;
        goto LABEL_36;
      }
    }

    LODWORD(v241) = v84 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v98 = __sb__runningInSpringBoard();
      if (v98)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v218 = [MEMORY[0x277D759A0] mainScreen];
        [v218 _referenceBounds];
      }

      LODWORD(v240) = v98 ^ 1;
      BSSizeRoundForScale();
      if (v119 == *(MEMORY[0x277D66E30] + 288) && v118 == *(MEMORY[0x277D66E30] + 296))
      {
        v229 = 0;
        v230 = 0;
        v228 = 0;
        v226 = 0;
        v227 = 0;
        v231 = 0;
        v224 = 0;
        v225 = 0;
        v232 = 0;
        v222 = 0;
        v223 = 0;
        v233 = 0;
        v220 = 0;
        v221 = 0;
        v234 = 0;
        v235 = 0;
        v219 = 0;
        v236 = 0;
        v108 = 0;
        v109 = 0;
        v110 = 0;
        v111 = 0;
        v237 = 0;
        v112 = 0;
        v113 = 0;
        v114 = 0;
        memset(v238, 0, sizeof(v238));
        LODWORD(v239) = 0;
        v115 = 0.0;
        goto LABEL_92;
      }
    }

    else
    {
      LODWORD(v240) = 0;
    }

LABEL_36:
    v99 = __sb__runningInSpringBoard();
    if (v99)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        HIDWORD(v238[4]) = 0;
        LODWORD(v239) = 0;
        goto LABEL_47;
      }
    }

    else
    {
      v216 = [MEMORY[0x277D75418] currentDevice];
      if ([v216 userInterfaceIdiom] != 1)
      {
        HIDWORD(v238[4]) = 0;
        LODWORD(v239) = 1;
        goto LABEL_47;
      }
    }

    LODWORD(v239) = v99 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v98 = __sb__runningInSpringBoard();
      if (v98)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v208 = [MEMORY[0x277D759A0] mainScreen];
        [v208 _referenceBounds];
      }

      HIDWORD(v238[4]) = v98 ^ 1;
      BSSizeRoundForScale();
      if (v120 >= *(MEMORY[0x277D66E30] + 440))
      {
        v229 = 0;
        v230 = 0;
        v228 = 0;
        v226 = 0;
        v227 = 0;
        v231 = 0;
        v224 = 0;
        v225 = 0;
        v232 = 0;
        v222 = 0;
        v223 = 0;
        v233 = 0;
        v220 = 0;
        v221 = 0;
        v234 = 0;
        v235 = 0;
        v219 = 0;
        v236 = 0;
        v108 = 0;
        v109 = 0;
        v110 = 0;
        v111 = 0;
        v237 = 0;
        v112 = 0;
        v113 = 0;
        v114 = 0;
        memset(v238, 0, 36);
        v115 = 0.0;
        goto LABEL_92;
      }
    }

    else
    {
      HIDWORD(v238[4]) = 0;
    }

LABEL_47:
    v104 = __sb__runningInSpringBoard();
    if (v104)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        *(&v238[3] + 4) = 0;
        goto LABEL_56;
      }
    }

    else
    {
      v215 = [MEMORY[0x277D75418] currentDevice];
      if ([v215 userInterfaceIdiom] != 1)
      {
        *(&v238[3] + 4) = 0x100000000;
        goto LABEL_56;
      }
    }

    LODWORD(v238[4]) = v104 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v98 = __sb__runningInSpringBoard();
      if (v98)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v207 = [MEMORY[0x277D759A0] mainScreen];
        [v207 _referenceBounds];
      }

      HIDWORD(v238[3]) = v98 ^ 1;
      BSSizeRoundForScale();
      if (v121 >= *(MEMORY[0x277D66E30] + 376))
      {
        v229 = 0;
        v230 = 0;
        v228 = 0;
        v226 = 0;
        v227 = 0;
        v231 = 0;
        v224 = 0;
        v225 = 0;
        v232 = 0;
        v222 = 0;
        v223 = 0;
        v233 = 0;
        v220 = 0;
        v221 = 0;
        v234 = 0;
        v235 = 0;
        v219 = 0;
        v236 = 0;
        v108 = 0;
        v109 = 0;
        v110 = 0;
        v111 = 0;
        v237 = 0;
        v112 = 0;
        v113 = 0;
        v114 = 0;
        memset(v238, 0, 28);
        v115 = 0.0;
        goto LABEL_92;
      }
    }

    else
    {
      HIDWORD(v238[3]) = 0;
    }

LABEL_56:
    v105 = __sb__runningInSpringBoard();
    if (v105)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        *(&v238[2] + 4) = 0;
        goto LABEL_65;
      }
    }

    else
    {
      v214 = [MEMORY[0x277D75418] currentDevice];
      if ([v214 userInterfaceIdiom] != 1)
      {
        HIDWORD(v238[2]) = 0;
        LODWORD(v238[3]) = 1;
        goto LABEL_65;
      }
    }

    LODWORD(v238[3]) = v105 ^ 1;
    v98 = __sb__runningInSpringBoard();
    if (v98)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v211 = [MEMORY[0x277D759A0] mainScreen];
      [v211 _referenceBounds];
    }

    HIDWORD(v238[2]) = v98 ^ 1;
    BSSizeRoundForScale();
    if (v106 >= *(MEMORY[0x277D66E30] + 280))
    {
      v229 = 0;
      v230 = 0;
      v228 = 0;
      v226 = 0;
      v227 = 0;
      v231 = 0;
      v224 = 0;
      v225 = 0;
      v232 = 0;
      v222 = 0;
      v223 = 0;
      v233 = 0;
      v220 = 0;
      v221 = 0;
      v234 = 0;
      v235 = 0;
      v219 = 0;
      v236 = 0;
      v108 = 0;
      v109 = 0;
      v110 = 0;
      v111 = 0;
      v237 = 0;
      v112 = 0;
      v113 = 0;
      v114 = 0;
      memset(v238, 0, 20);
      v115 = 0.0;
      goto LABEL_92;
    }

LABEL_65:
    v107 = __sb__runningInSpringBoard();
    if (v107)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        *(&v238[1] + 4) = 0;
        goto LABEL_75;
      }
    }

    else
    {
      v213 = [MEMORY[0x277D75418] currentDevice];
      if ([v213 userInterfaceIdiom] != 1)
      {
        HIDWORD(v238[1]) = 0;
        LODWORD(v238[2]) = 1;
        goto LABEL_75;
      }
    }

    LODWORD(v238[2]) = v107 ^ 1;
    v98 = __sb__runningInSpringBoard();
    if (v98)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v209 = [MEMORY[0x277D759A0] mainScreen];
      [v209 _referenceBounds];
    }

    HIDWORD(v238[1]) = v98 ^ 1;
    BSSizeRoundForScale();
    if (v116 >= *(MEMORY[0x277D66E30] + 264))
    {
      v229 = 0;
      v230 = 0;
      v228 = 0;
      v226 = 0;
      v227 = 0;
      v231 = 0;
      v224 = 0;
      v225 = 0;
      v232 = 0;
      v222 = 0;
      v223 = 0;
      v233 = 0;
      v220 = 0;
      v221 = 0;
      v234 = 0;
      v235 = 0;
      v219 = 0;
      v236 = 0;
      v108 = 0;
      v109 = 0;
      v110 = 0;
      v111 = 0;
      v237 = 0;
      v112 = 0;
      v113 = 0;
      v114 = 0;
      v238[0] = 0;
      LODWORD(v238[1]) = 0;
      v115 = 0.0;
      goto LABEL_92;
    }

LABEL_75:
    v117 = __sb__runningInSpringBoard();
    if (v117)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        *(v238 + 4) = 0;
        goto LABEL_215;
      }
    }

    else
    {
      v212 = [MEMORY[0x277D75418] currentDevice];
      if ([v212 userInterfaceIdiom] != 1)
      {
        HIDWORD(v238[0]) = 0;
        LODWORD(v238[1]) = 1;
        goto LABEL_215;
      }
    }

    LODWORD(v238[1]) = v117 ^ 1;
    v98 = __sb__runningInSpringBoard();
    if (v98)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v206 = [MEMORY[0x277D759A0] mainScreen];
      [v206 _referenceBounds];
    }

    HIDWORD(v238[0]) = v98 ^ 1;
    BSSizeRoundForScale();
    if (v126 >= *(MEMORY[0x277D66E30] + 248))
    {
      v229 = 0;
      v230 = 0;
      v228 = 0;
      v226 = 0;
      v227 = 0;
      v231 = 0;
      v224 = 0;
      v225 = 0;
      v232 = 0;
      v222 = 0;
      v223 = 0;
      v233 = 0;
      v220 = 0;
      v221 = 0;
      v234 = 0;
      v235 = 0;
      v219 = 0;
      v236 = 0;
      v108 = 0;
      v109 = 0;
      v110 = 0;
      v111 = 0;
      v237 = 0;
      v112 = 0;
      v113 = 0;
      v114 = 0;
      LODWORD(v238[0]) = 0;
      v115 = 0.0;
      goto LABEL_92;
    }

LABEL_215:
    v98 = __sb__runningInSpringBoard();
    if (v98)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_217;
      }
    }

    else
    {
      v210 = [MEMORY[0x277D75418] currentDevice];
      if ([v210 userInterfaceIdiom] != 1)
      {
LABEL_217:
        LODWORD(v238[0]) = v98 ^ 1;
        if (!_SBF_Private_IsD94Like())
        {
LABEL_221:
          v237 = 0;
          goto LABEL_231;
        }

        v127 = __sb__runningInSpringBoard();
        if (v127)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_221;
          }
        }

        else
        {
          v204 = [MEMORY[0x277D75418] currentDevice];
          if ([v204 userInterfaceIdiom])
          {
            v237 = 0x100000000;
            goto LABEL_231;
          }
        }

        HIDWORD(v237) = v127 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v98 = __sb__runningInSpringBoard();
          if (v98)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v197 = [MEMORY[0x277D759A0] mainScreen];
            [v197 _referenceBounds];
          }

          BSSizeRoundForScale();
          LODWORD(v237) = v98 ^ 1;
          if (v130 >= *(MEMORY[0x277D66E30] + 200))
          {
            v229 = 0;
            v230 = 0;
            v228 = 0;
            v226 = 0;
            v227 = 0;
            v231 = 0;
            v224 = 0;
            v225 = 0;
            v232 = 0;
            v222 = 0;
            v223 = 0;
            v233 = 0;
            v220 = 0;
            v221 = 0;
            v234 = 0;
            v235 = 0;
            v219 = 0;
            v236 = 0;
            v108 = 0;
            v109 = 0;
            v110 = 0;
            v111 = 0;
            v112 = 0;
            v113 = 0;
            v114 = 0;
            v115 = 80.0;
            goto LABEL_92;
          }
        }

        else
        {
          LODWORD(v237) = 0;
        }

LABEL_231:
        v98 = __sb__runningInSpringBoard();
        if (v98)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v236 = 0;
            goto LABEL_241;
          }
        }

        else
        {
          v205 = [MEMORY[0x277D75418] currentDevice];
          if ([v205 userInterfaceIdiom])
          {
            v236 = 0x100000000;
            goto LABEL_241;
          }
        }

        HIDWORD(v236) = v98 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v98 = __sb__runningInSpringBoard();
          if (v98)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v200 = [MEMORY[0x277D759A0] mainScreen];
            [v200 _referenceBounds];
          }

          LODWORD(v236) = v98 ^ 1;
          BSSizeRoundForScale();
          if (v128 >= *(MEMORY[0x277D66E30] + 200))
          {
            goto LABEL_245;
          }
        }

        else
        {
          LODWORD(v236) = 0;
        }

LABEL_241:
        if (_SBF_Private_IsD94Like())
        {
          v229 = 0;
          v230 = 0;
          v228 = 0;
          v226 = 0;
          v227 = 0;
          v231 = 0;
          v224 = 0;
          v225 = 0;
          v232 = 0;
          v222 = 0;
          v223 = 0;
          v233 = 0;
          v220 = 0;
          v221 = 0;
          v234 = 0;
          v235 = 0;
          v219 = 0;
          v108 = 0;
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v112 = 0;
          v113 = 0;
          v114 = 0;
          v115 = 65.66666;
          goto LABEL_92;
        }

LABEL_245:
        if (!_SBF_Private_IsD64Like())
        {
LABEL_249:
          HIDWORD(v234) = 0;
          v235 = 0;
          goto LABEL_259;
        }

        v129 = __sb__runningInSpringBoard();
        if (v129)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_249;
          }
        }

        else
        {
          v201 = [MEMORY[0x277D75418] currentDevice];
          if ([v201 userInterfaceIdiom])
          {
            HIDWORD(v234) = 0;
            v235 = 1;
            goto LABEL_259;
          }
        }

        v235 = v129 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v98 = __sb__runningInSpringBoard();
          if (v98)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v192 = [MEMORY[0x277D759A0] mainScreen];
            [v192 _referenceBounds];
          }

          HIDWORD(v234) = v98 ^ 1;
          BSSizeRoundForScale();
          if (v134 >= *(MEMORY[0x277D66E30] + 136))
          {
            v229 = 0;
            v230 = 0;
            v228 = 0;
            v226 = 0;
            v227 = 0;
            v231 = 0;
            v224 = 0;
            v225 = 0;
            v232 = 0;
            v222 = 0;
            v223 = 0;
            v233 = 0;
            v220 = 0;
            v221 = 0;
            LODWORD(v234) = 0;
            v219 = 0;
            v108 = 0;
            v109 = 0;
            v110 = 0;
            v111 = 0;
            v112 = 0;
            v113 = 0;
            v114 = 0;
            v115 = 80.0;
            goto LABEL_92;
          }
        }

        else
        {
          HIDWORD(v234) = 0;
        }

LABEL_259:
        v98 = __sb__runningInSpringBoard();
        if (v98)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v233) = 0;
            LODWORD(v234) = 0;
            goto LABEL_269;
          }
        }

        else
        {
          v203 = [MEMORY[0x277D75418] currentDevice];
          if ([v203 userInterfaceIdiom])
          {
            HIDWORD(v233) = 0;
            LODWORD(v234) = 1;
            goto LABEL_269;
          }
        }

        LODWORD(v234) = v98 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v98 = __sb__runningInSpringBoard();
          if (v98)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v196 = [MEMORY[0x277D759A0] mainScreen];
            [v196 _referenceBounds];
          }

          HIDWORD(v233) = v98 ^ 1;
          BSSizeRoundForScale();
          if (v131 >= *(MEMORY[0x277D66E30] + 136))
          {
            goto LABEL_273;
          }
        }

        else
        {
          HIDWORD(v233) = 0;
        }

LABEL_269:
        if (_SBF_Private_IsD64Like())
        {
          v229 = 0;
          v230 = 0;
          v228 = 0;
          v226 = 0;
          v227 = 0;
          v231 = 0;
          v224 = 0;
          v225 = 0;
          v232 = 0;
          v222 = 0;
          v223 = 0;
          LODWORD(v233) = 0;
          v220 = 0;
          v221 = 0;
          v219 = 0;
          v108 = 0;
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v112 = 0;
          v113 = 0;
          v114 = 0;
          v115 = 65.66666;
          goto LABEL_92;
        }

LABEL_273:
        v132 = __sb__runningInSpringBoard();
        if (v132)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v232) = 0;
            LODWORD(v233) = 0;
            goto LABEL_283;
          }
        }

        else
        {
          v202 = [MEMORY[0x277D75418] currentDevice];
          if ([v202 userInterfaceIdiom])
          {
            HIDWORD(v232) = 0;
            LODWORD(v233) = 1;
            goto LABEL_283;
          }
        }

        LODWORD(v233) = v132 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v98 = __sb__runningInSpringBoard();
          if (v98)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v193 = [MEMORY[0x277D759A0] mainScreen];
            [v193 _referenceBounds];
          }

          BSSizeRoundForScale();
          HIDWORD(v232) = v98 ^ 1;
          if (v133 >= *(MEMORY[0x277D66E30] + 136))
          {
            v229 = 0;
            v230 = 0;
            v228 = 0;
            v226 = 0;
            v227 = 0;
            v231 = 0;
            v224 = 0;
            v225 = 0;
            LODWORD(v232) = 0;
            v222 = 0;
            v223 = 0;
            v220 = 0;
            v221 = 0;
            v219 = 0;
            v108 = 0;
            v109 = 0;
            v110 = 0;
            v111 = 0;
            v112 = 0;
            v113 = 0;
            v114 = 0;
            v115 = 80.0;
            goto LABEL_92;
          }
        }

        else
        {
          HIDWORD(v232) = 0;
        }

LABEL_283:
        v98 = __sb__runningInSpringBoard();
        if (v98)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v231) = 0;
            LODWORD(v232) = 0;
            goto LABEL_293;
          }
        }

        else
        {
          v199 = [MEMORY[0x277D75418] currentDevice];
          if ([v199 userInterfaceIdiom])
          {
            HIDWORD(v231) = 0;
            LODWORD(v232) = 1;
            goto LABEL_293;
          }
        }

        LODWORD(v232) = v98 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v98 = __sb__runningInSpringBoard();
          if (v98)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v191 = [MEMORY[0x277D759A0] mainScreen];
            [v191 _referenceBounds];
          }

          HIDWORD(v231) = v98 ^ 1;
          BSSizeRoundForScale();
          if (v135 >= *(MEMORY[0x277D66E30] + 136))
          {
            goto LABEL_303;
          }
        }

        else
        {
          HIDWORD(v231) = 0;
        }

LABEL_293:
        if (_SBF_Private_IsD54())
        {
          v229 = 0;
          v230 = 0;
          v228 = 0;
          v226 = 0;
          v227 = 0;
          LODWORD(v231) = 0;
          v224 = 0;
          v225 = 0;
          v222 = 0;
          v223 = 0;
          v220 = 0;
          v221 = 0;
          v219 = 0;
          v108 = 0;
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v112 = 0;
          v113 = 0;
          v114 = 0;
          v115 = 65.66666;
          goto LABEL_92;
        }

LABEL_303:
        v136 = __sb__runningInSpringBoard();
        if (v136)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v230) = 0;
            LODWORD(v231) = 0;
            goto LABEL_313;
          }
        }

        else
        {
          v198 = [MEMORY[0x277D75418] currentDevice];
          if ([v198 userInterfaceIdiom])
          {
            HIDWORD(v230) = 0;
            LODWORD(v231) = 1;
            goto LABEL_313;
          }
        }

        LODWORD(v231) = v136 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v98 = __sb__runningInSpringBoard();
          if (v98)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v188 = [MEMORY[0x277D759A0] mainScreen];
            [v188 _referenceBounds];
          }

          BSSizeRoundForScale();
          HIDWORD(v230) = v98 ^ 1;
          if (v137 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
          {
            v229 = 0;
            LODWORD(v230) = 0;
            v228 = 0;
            v226 = 0;
            v227 = 0;
            v224 = 0;
            v225 = 0;
            v222 = 0;
            v223 = 0;
            v220 = 0;
            v221 = 0;
            v219 = 0;
            v108 = 0;
            v109 = 0;
            v110 = 0;
            v111 = 0;
            v112 = 0;
            v113 = 0;
            v114 = 0;
            v115 = 0.0;
            goto LABEL_92;
          }
        }

        else
        {
          HIDWORD(v230) = 0;
        }

LABEL_313:
        v98 = __sb__runningInSpringBoard();
        if (v98)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v229) = 0;
            LODWORD(v230) = 0;
            goto LABEL_323;
          }
        }

        else
        {
          v195 = [MEMORY[0x277D75418] currentDevice];
          if ([v195 userInterfaceIdiom])
          {
            HIDWORD(v229) = 0;
            LODWORD(v230) = 1;
            goto LABEL_323;
          }
        }

        LODWORD(v230) = v98 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v98 = __sb__runningInSpringBoard();
          if (v98)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v187 = [MEMORY[0x277D759A0] mainScreen];
            [v187 _referenceBounds];
          }

          HIDWORD(v229) = v98 ^ 1;
          BSSizeRoundForScale();
          if (v138 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_332;
          }
        }

        else
        {
          HIDWORD(v229) = 0;
        }

LABEL_323:
        if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
        {
          LODWORD(v229) = 0;
          v228 = 0;
          v226 = 0;
          v227 = 0;
          v224 = 0;
          v225 = 0;
          v222 = 0;
          v223 = 0;
          v220 = 0;
          v221 = 0;
          v219 = 0;
          v108 = 0;
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v112 = 0;
          v113 = 0;
          v114 = 0;
          v115 = 0.0;
          goto LABEL_92;
        }

LABEL_332:
        if (!_SBF_Private_IsD93Like())
        {
LABEL_336:
          LODWORD(v229) = 0;
          HIDWORD(v228) = 0;
          goto LABEL_343;
        }

        v139 = __sb__runningInSpringBoard();
        if (v139)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_336;
          }
        }

        else
        {
          v190 = [MEMORY[0x277D75418] currentDevice];
          if ([v190 userInterfaceIdiom])
          {
            HIDWORD(v228) = 0;
            LODWORD(v229) = 1;
            goto LABEL_343;
          }
        }

        LODWORD(v229) = v139 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v98 = __sb__runningInSpringBoard();
          if (v98)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v181 = [MEMORY[0x277D759A0] mainScreen];
            [v181 _referenceBounds];
          }

          BSSizeRoundForScale();
          HIDWORD(v228) = v98 ^ 1;
          if (v142 >= *(MEMORY[0x277D66E30] + 184))
          {
            LODWORD(v228) = 0;
            v226 = 0;
            v227 = 0;
            v224 = 0;
            v225 = 0;
            v222 = 0;
            v223 = 0;
            v220 = 0;
            v221 = 0;
            v219 = 0;
            v108 = 0;
            v109 = 0;
            v110 = 0;
            v111 = 0;
            v112 = 0;
            v113 = 0;
            v114 = 0;
            v115 = 79.66666;
            goto LABEL_92;
          }
        }

        else
        {
          HIDWORD(v228) = 0;
        }

LABEL_343:
        v98 = __sb__runningInSpringBoard();
        if (v98)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v228) = 0;
            HIDWORD(v227) = 0;
            goto LABEL_353;
          }
        }

        else
        {
          v194 = [MEMORY[0x277D75418] currentDevice];
          if ([v194 userInterfaceIdiom])
          {
            HIDWORD(v227) = 0;
            LODWORD(v228) = 1;
            goto LABEL_353;
          }
        }

        LODWORD(v228) = v98 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v98 = __sb__runningInSpringBoard();
          if (v98)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v184 = [MEMORY[0x277D759A0] mainScreen];
            [v184 _referenceBounds];
          }

          HIDWORD(v227) = v98 ^ 1;
          BSSizeRoundForScale();
          if (v140 >= *(MEMORY[0x277D66E30] + 184))
          {
            goto LABEL_357;
          }
        }

        else
        {
          HIDWORD(v227) = 0;
        }

LABEL_353:
        if (_SBF_Private_IsD93Like())
        {
          LODWORD(v227) = 0;
          v225 = 0;
          v226 = 0;
          v223 = 0;
          v224 = 0;
          v221 = 0;
          v222 = 0;
          v219 = 0;
          v220 = 0;
          v108 = 0;
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v112 = 0;
          v113 = 0;
          v114 = 0;
          v115 = 65.33333;
          goto LABEL_92;
        }

LABEL_357:
        if (!_SBF_Private_IsD63Like())
        {
LABEL_361:
          LODWORD(v227) = 0;
          HIDWORD(v226) = 0;
          goto LABEL_371;
        }

        v141 = __sb__runningInSpringBoard();
        if (v141)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_361;
          }
        }

        else
        {
          v186 = [MEMORY[0x277D75418] currentDevice];
          if ([v186 userInterfaceIdiom])
          {
            HIDWORD(v226) = 0;
            LODWORD(v227) = 1;
            goto LABEL_371;
          }
        }

        LODWORD(v227) = v141 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v98 = __sb__runningInSpringBoard();
          if (v98)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v177 = [MEMORY[0x277D759A0] mainScreen];
            [v177 _referenceBounds];
          }

          BSSizeRoundForScale();
          HIDWORD(v226) = v98 ^ 1;
          if (v145 >= *(MEMORY[0x277D66E30] + 104))
          {
            LODWORD(v226) = 0;
            v224 = 0;
            v225 = 0;
            v222 = 0;
            v223 = 0;
            v220 = 0;
            v221 = 0;
            v219 = 0;
            v108 = 0;
            v109 = 0;
            v110 = 0;
            v111 = 0;
            v112 = 0;
            v113 = 0;
            v114 = 0;
            v115 = 79.66666;
            goto LABEL_92;
          }
        }

        else
        {
          HIDWORD(v226) = 0;
        }

LABEL_371:
        v98 = __sb__runningInSpringBoard();
        if (v98)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v226) = 0;
            HIDWORD(v225) = 0;
            goto LABEL_381;
          }
        }

        else
        {
          v189 = [MEMORY[0x277D75418] currentDevice];
          if ([v189 userInterfaceIdiom])
          {
            HIDWORD(v225) = 0;
            LODWORD(v226) = 1;
            goto LABEL_381;
          }
        }

        LODWORD(v226) = v98 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v98 = __sb__runningInSpringBoard();
          if (v98)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v180 = [MEMORY[0x277D759A0] mainScreen];
            [v180 _referenceBounds];
          }

          HIDWORD(v225) = v98 ^ 1;
          BSSizeRoundForScale();
          if (v143 >= *(MEMORY[0x277D66E30] + 104))
          {
            goto LABEL_385;
          }
        }

        else
        {
          HIDWORD(v225) = 0;
        }

LABEL_381:
        if (_SBF_Private_IsD63Like())
        {
          LODWORD(v225) = 0;
          v223 = 0;
          v224 = 0;
          v221 = 0;
          v222 = 0;
          v219 = 0;
          v220 = 0;
          v108 = 0;
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v112 = 0;
          v113 = 0;
          v114 = 0;
          v115 = 65.33333;
          goto LABEL_92;
        }

LABEL_385:
        if (!_SBF_Private_IsD23Like())
        {
LABEL_389:
          LODWORD(v225) = 0;
          HIDWORD(v224) = 0;
          goto LABEL_399;
        }

        v144 = __sb__runningInSpringBoard();
        if (v144)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_389;
          }
        }

        else
        {
          v182 = [MEMORY[0x277D75418] currentDevice];
          if ([v182 userInterfaceIdiom])
          {
            HIDWORD(v224) = 0;
            LODWORD(v225) = 1;
            goto LABEL_399;
          }
        }

        LODWORD(v225) = v144 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v98 = __sb__runningInSpringBoard();
          if (v98)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v173 = [MEMORY[0x277D759A0] mainScreen];
            [v173 _referenceBounds];
          }

          HIDWORD(v224) = v98 ^ 1;
          BSSizeRoundForScale();
          if (v149 >= *(MEMORY[0x277D66E30] + 216))
          {
            LODWORD(v224) = 0;
            v222 = 0;
            v223 = 0;
            v220 = 0;
            v221 = 0;
            v219 = 0;
            v108 = 0;
            v109 = 0;
            v110 = 0;
            v111 = 0;
            v112 = 0;
            v113 = 0;
            v114 = 0;
            v115 = 80.0;
            goto LABEL_92;
          }
        }

        else
        {
          HIDWORD(v224) = 0;
        }

LABEL_399:
        v98 = __sb__runningInSpringBoard();
        if (v98)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v224) = 0;
            HIDWORD(v223) = 0;
            goto LABEL_409;
          }
        }

        else
        {
          v185 = [MEMORY[0x277D75418] currentDevice];
          if ([v185 userInterfaceIdiom])
          {
            HIDWORD(v223) = 0;
            LODWORD(v224) = 1;
            goto LABEL_409;
          }
        }

        LODWORD(v224) = v98 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v98 = __sb__runningInSpringBoard();
          if (v98)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v176 = [MEMORY[0x277D759A0] mainScreen];
            [v176 _referenceBounds];
          }

          HIDWORD(v223) = v98 ^ 1;
          BSSizeRoundForScale();
          if (v146 >= *(MEMORY[0x277D66E30] + 216))
          {
            goto LABEL_413;
          }
        }

        else
        {
          HIDWORD(v223) = 0;
        }

LABEL_409:
        if (_SBF_Private_IsD23Like())
        {
          LODWORD(v223) = 0;
          v221 = 0;
          v222 = 0;
          v219 = 0;
          v220 = 0;
          v108 = 0;
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v112 = 0;
          v113 = 0;
          v114 = 0;
          v115 = 65.66666;
          goto LABEL_92;
        }

LABEL_413:
        v147 = __sb__runningInSpringBoard();
        if (v147)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v223) = 0;
            HIDWORD(v222) = 0;
            goto LABEL_423;
          }
        }

        else
        {
          v183 = [MEMORY[0x277D75418] currentDevice];
          if ([v183 userInterfaceIdiom])
          {
            HIDWORD(v222) = 0;
            LODWORD(v223) = 1;
            goto LABEL_423;
          }
        }

        LODWORD(v223) = v147 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v98 = __sb__runningInSpringBoard();
          if (v98)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v174 = [MEMORY[0x277D759A0] mainScreen];
            [v174 _referenceBounds];
          }

          HIDWORD(v222) = v98 ^ 1;
          BSSizeRoundForScale();
          if (v148 >= *(MEMORY[0x277D66E30] + 120))
          {
            LODWORD(v222) = 0;
            v220 = 0;
            v221 = 0;
            v219 = 0;
            v108 = 0;
            v109 = 0;
            v110 = 0;
            v111 = 0;
            v112 = 0;
            v113 = 0;
            v114 = 0;
            v115 = 0.0;
            goto LABEL_92;
          }
        }

        else
        {
          HIDWORD(v222) = 0;
        }

LABEL_423:
        v98 = __sb__runningInSpringBoard();
        if (v98)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v222) = 0;
            HIDWORD(v221) = 0;
            goto LABEL_433;
          }
        }

        else
        {
          v179 = [MEMORY[0x277D75418] currentDevice];
          if ([v179 userInterfaceIdiom])
          {
            HIDWORD(v221) = 0;
            LODWORD(v222) = 1;
            goto LABEL_433;
          }
        }

        LODWORD(v222) = v98 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v98 = __sb__runningInSpringBoard();
          if (v98)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v172 = [MEMORY[0x277D759A0] mainScreen];
            [v172 _referenceBounds];
          }

          HIDWORD(v221) = v98 ^ 1;
          BSSizeRoundForScale();
          if (v150 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_443;
          }
        }

        else
        {
          HIDWORD(v221) = 0;
        }

LABEL_433:
        if (_SBF_Private_IsD33OrSimilarDevice())
        {
          LODWORD(v221) = 0;
          v219 = 0;
          v220 = 0;
          v108 = 0;
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v112 = 0;
          v113 = 0;
          v114 = 0;
          v115 = 0.0;
          goto LABEL_92;
        }

LABEL_443:
        v151 = __sb__runningInSpringBoard();
        if (v151)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v221) = 0;
            HIDWORD(v220) = 0;
            goto LABEL_453;
          }
        }

        else
        {
          v178 = [MEMORY[0x277D75418] currentDevice];
          if ([v178 userInterfaceIdiom])
          {
            HIDWORD(v220) = 0;
            LODWORD(v221) = 1;
            goto LABEL_453;
          }
        }

        LODWORD(v221) = v151 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v98 = __sb__runningInSpringBoard();
          if (v98)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v171 = [MEMORY[0x277D759A0] mainScreen];
            [v171 _referenceBounds];
          }

          HIDWORD(v220) = v98 ^ 1;
          BSSizeRoundForScale();
          if (v152 >= *(MEMORY[0x277D66E30] + 104))
          {
            LODWORD(v220) = 0;
            v219 = 0;
            v108 = 0;
            v109 = 0;
            v110 = 0;
            v111 = 0;
            v112 = 0;
            v113 = 0;
            v114 = 0;
            v115 = 79.66666;
            goto LABEL_92;
          }
        }

        else
        {
          HIDWORD(v220) = 0;
        }

LABEL_453:
        v98 = __sb__runningInSpringBoard();
        if (v98)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v220) = 0;
            HIDWORD(v219) = 0;
            goto LABEL_463;
          }
        }

        else
        {
          v175 = [MEMORY[0x277D75418] currentDevice];
          if ([v175 userInterfaceIdiom])
          {
            HIDWORD(v219) = 0;
            LODWORD(v220) = 1;
            goto LABEL_463;
          }
        }

        LODWORD(v220) = v98 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v98 = __sb__runningInSpringBoard();
          if (v98)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v170 = [MEMORY[0x277D759A0] mainScreen];
            [v170 _referenceBounds];
          }

          HIDWORD(v219) = v98 ^ 1;
          BSSizeRoundForScale();
          if (v153 >= *(MEMORY[0x277D66E30] + 104))
          {
LABEL_470:
            v98 = &unk_21EC95000;
            if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
            {
              goto LABEL_475;
            }

            if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
            {
              goto LABEL_477;
            }

            if (_SBF_Private_IsD52OrSimilarDevice())
            {
LABEL_475:
              LODWORD(v219) = 0;
              v108 = 0;
              v109 = 0;
              v110 = 0;
              v111 = 0;
              v112 = 0;
              v113 = 0;
              v114 = 0;
              v115 = 63.0;
              goto LABEL_92;
            }

            if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
            {
LABEL_477:
              LODWORD(v219) = 0;
              v108 = 0;
              v109 = 0;
              v110 = 0;
              v111 = 0;
              v112 = 0;
              v113 = 0;
              v114 = 0;
              v115 = 54.0;
              goto LABEL_92;
            }

            v98 = __sb__runningInSpringBoard();
            if (v98)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                LODWORD(v219) = 0;
                v108 = 0;
                goto LABEL_488;
              }
            }

            else
            {
              v169 = [MEMORY[0x277D75418] currentDevice];
              if ([v169 userInterfaceIdiom])
              {
                v108 = 0;
                LODWORD(v219) = 1;
                goto LABEL_488;
              }
            }

            LODWORD(v219) = v98 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v154 = __sb__runningInSpringBoard();
              if (v154)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v164 = [MEMORY[0x277D759A0] mainScreen];
                [v164 _referenceBounds];
              }

              v108 = v154 ^ 1;
              BSSizeRoundForScale();
              if (v160 >= *(MEMORY[0x277D66E30] + 88))
              {
                v109 = 0;
                v110 = 0;
                v111 = 0;
                v112 = 0;
                v113 = 0;
                v114 = 0;
                v115 = 0.0;
                goto LABEL_92;
              }
            }

            else
            {
              v108 = 0;
            }

LABEL_488:
            v155 = __sb__runningInSpringBoard();
            if (v155)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v109 = 0;
                v110 = 0;
                goto LABEL_498;
              }
            }

            else
            {
              v168 = [MEMORY[0x277D75418] currentDevice];
              if ([v168 userInterfaceIdiom])
              {
                v110 = 0;
                v109 = 1;
                goto LABEL_498;
              }
            }

            v109 = v155 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v156 = __sb__runningInSpringBoard();
              if (v156)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v163 = [MEMORY[0x277D759A0] mainScreen];
                [v163 _referenceBounds];
              }

              v110 = v156 ^ 1;
              BSSizeRoundForScale();
              if (v161 >= *(MEMORY[0x277D66E30] + 72))
              {
                v111 = 0;
                v112 = 0;
                v113 = 0;
                v114 = 0;
                v115 = 0.0;
                goto LABEL_92;
              }
            }

            else
            {
              v110 = 0;
            }

LABEL_498:
            v157 = __sb__runningInSpringBoard();
            if (v157)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v111 = 0;
                v112 = 0;
LABEL_508:
                v98 = __sb__runningInSpringBoard();
                if (v98)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
LABEL_511:
                    v113 = 0;
                    v114 = 0;
                    v115 = 0.0;
                    goto LABEL_92;
                  }
                }

                else
                {
                  v166 = [MEMORY[0x277D75418] currentDevice];
                  if ([v166 userInterfaceIdiom])
                  {
                    v114 = 0;
                    v115 = 0.0;
                    v113 = 1;
                    goto LABEL_92;
                  }
                }

                v113 = v98 ^ 1;
                v162 = __sb__runningInSpringBoard();
                if (v162)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  v98 = [MEMORY[0x277D759A0] mainScreen];
                  [v98 _referenceBounds];
                }

                v114 = v162 ^ 1;
                BSSizeRoundForScale();
                v115 = 0.0;
LABEL_92:
                if (v114)
                {
                }

                if (v113)
                {
                }

                if (v112)
                {

                  if (!v111)
                  {
                    goto LABEL_98;
                  }
                }

                else if (!v111)
                {
LABEL_98:
                  if (v110)
                  {
                    goto LABEL_99;
                  }

                  goto LABEL_209;
                }

                if (v110)
                {
LABEL_99:

                  if (!v109)
                  {
                    goto LABEL_100;
                  }

                  goto LABEL_210;
                }

LABEL_209:
                if (!v109)
                {
LABEL_100:
                  if (!v108)
                  {
LABEL_102:
                    if (v219)
                    {
                    }

                    if (HIDWORD(v219))
                    {
                    }

                    if (v220)
                    {
                    }

                    if (HIDWORD(v220))
                    {
                    }

                    if (v221)
                    {
                    }

                    if (HIDWORD(v221))
                    {
                    }

                    if (v222)
                    {
                    }

                    if (HIDWORD(v222))
                    {
                    }

                    if (v223)
                    {
                    }

                    if (HIDWORD(v223))
                    {
                    }

                    if (v224)
                    {
                    }

                    if (HIDWORD(v224))
                    {
                    }

                    if (v225)
                    {
                    }

                    if (HIDWORD(v225))
                    {
                    }

                    if (v226)
                    {
                    }

                    if (HIDWORD(v226))
                    {
                    }

                    if (v227)
                    {
                    }

                    if (HIDWORD(v227))
                    {
                    }

                    if (v228)
                    {
                    }

                    if (HIDWORD(v228))
                    {
                    }

                    if (v229)
                    {
                    }

                    if (HIDWORD(v229))
                    {
                    }

                    if (v230)
                    {
                    }

                    if (HIDWORD(v230))
                    {
                    }

                    if (v231)
                    {
                    }

                    if (HIDWORD(v231))
                    {
                    }

                    if (v232)
                    {
                    }

                    if (HIDWORD(v232))
                    {
                    }

                    if (v233)
                    {
                    }

                    if (HIDWORD(v233))
                    {
                    }

                    if (v234)
                    {
                    }

                    if (HIDWORD(v234))
                    {
                    }

                    if (v235)
                    {
                    }

                    if (v236)
                    {
                    }

                    if (HIDWORD(v236))
                    {
                    }

                    if (v237)
                    {
                    }

                    if (HIDWORD(v237))
                    {
                    }

                    if (LODWORD(v238[0]))
                    {
                    }

                    if (HIDWORD(v238[0]))
                    {
                    }

                    if (LODWORD(v238[1]))
                    {
                    }

                    if (HIDWORD(v238[1]))
                    {
                    }

                    if (LODWORD(v238[2]))
                    {
                    }

                    if (HIDWORD(v238[2]))
                    {
                    }

                    if (LODWORD(v238[3]))
                    {
                    }

                    if (HIDWORD(v238[3]))
                    {
                    }

                    if (LODWORD(v238[4]))
                    {
                    }

                    if (HIDWORD(v238[4]))
                    {
                    }

                    if (LODWORD(v239))
                    {
                    }

                    if (LODWORD(v240))
                    {
                    }

                    if (LODWORD(v241))
                    {
                    }

                    v122 = [(UIView *)self->_auxiliaryBatteryPillClippingView layer];
                    [v122 setPosition:{MidX, MaxY - v115 + -43.5}];

                    [(UIView *)self->_auxiliaryBatteryPillClippingView bounds];
                    UIRectGetCenter();
                    v86 = v123;
                    v103 = v124;
                    v125 = [(UIView *)self->_auxiliaryBatteryPillTrackView layer];
                    [v125 setPosition:{v86, v103}];

                    goto LABEL_203;
                  }

LABEL_101:

                  goto LABEL_102;
                }

LABEL_210:

                if (!v108)
                {
                  goto LABEL_102;
                }

                goto LABEL_101;
              }
            }

            else
            {
              v167 = [MEMORY[0x277D75418] currentDevice];
              if ([v167 userInterfaceIdiom])
              {
                v112 = 0;
                v111 = 1;
                goto LABEL_508;
              }
            }

            v111 = v157 ^ 1;
            v158 = __sb__runningInSpringBoard();
            if (v158)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v165 = [MEMORY[0x277D759A0] mainScreen];
              [v165 _referenceBounds];
            }

            v112 = v158 ^ 1;
            BSSizeRoundForScale();
            if (v159 >= *(MEMORY[0x277D66E30] + 56))
            {
              goto LABEL_511;
            }

            goto LABEL_508;
          }
        }

        else
        {
          HIDWORD(v219) = 0;
        }

LABEL_463:
        if (_SBF_Private_IsD53())
        {
          LODWORD(v219) = 0;
          v108 = 0;
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v112 = 0;
          v113 = 0;
          v114 = 0;
          v115 = 65.33333;
          goto LABEL_92;
        }

        goto LABEL_470;
      }
    }

    v229 = 0;
    v230 = 0;
    v228 = 0;
    v226 = 0;
    v227 = 0;
    v231 = 0;
    v224 = 0;
    v225 = 0;
    v232 = 0;
    v222 = 0;
    v223 = 0;
    v233 = 0;
    v220 = 0;
    v221 = 0;
    v234 = 0;
    v235 = 0;
    v219 = 0;
    v236 = 0;
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v237 = 0;
    v112 = 0;
    v113 = 0;
    v114 = 0;
    v115 = 0.0;
    LODWORD(v238[0]) = v98 ^ 1;
    goto LABEL_92;
  }

  [(CSRingLayer *)self->_auxiliaryBatteryLevelRing bounds];
  [(UIView *)self->_chargingContainerView bounds];
  UIRectCenteredIntegralRect();
  UIRectGetCenter();
  v86 = v85;
  v88 = v87;
  [(CSBatteryChargingRingView *)self _silhouetteBottomToAuxillaryRingInset];
  v90 = v89;
  v91 = [(CSMagSafeAccessoryConfiguration *)self->_configuration auxiliaryRing];
  [v91 ringDiameter];
  v93 = v90 + v92 * 0.5;

  [(CALayer *)self->_silhouetteLayer frame];
  if (v45 > 1)
  {
    if (v44 == 3)
    {
      v86 = CGRectGetMaxX(*&v94) - v93;
    }

    else
    {
      v86 = v93 + CGRectGetMinX(*&v94);
    }
  }

  else
  {
    v88 = CGRectGetMaxY(*&v94) - v93;
  }

  [(CSRingLayer *)self->_auxiliaryBatteryLevelRing setPosition:v86, v88];
  [(CSRingLayer *)self->_auxiliaryBatteryTrackFillRingLayer setPosition:v86, v88];
  [(CALayer *)self->_auxiliaryGlyphLayer setPosition:v86, v88];
  v100 = [(CSMagSafeAccessoryConfiguration *)self->_configuration auxiliaryRing];
  [v100 lineWidth];
  v102 = v101;

  [(CSRingLayer *)self->_auxiliaryBatteryLevelRing frame];
  v103 = v102 * 0.5 + 1.0 + CGRectGetMinY(v252);
LABEL_203:
  [(CABackdropLayer *)self->_auxiliaryCaptureBackdrop setPosition:v86, v103];
  [(CALayer *)self->_auxiliaryChargingBoltGlyph setPosition:v86, v103];
  auxiliaryChargingBoltGlyphMask = self->_auxiliaryChargingBoltGlyphMask;
  v37 = v86;
  v38 = v103;
LABEL_204:
  [(CALayer *)auxiliaryChargingBoltGlyphMask setPosition:v37, v38];
  [(CSBatteryChargingRingView *)self _layoutChargePercentLabel];
  if (![(CSMagSafeAccessoryConfiguration *)self->_configuration staticViewNeeded])
  {
    [(CSBatteryChargingRingView *)self _layoutAuxiliaryChargePercentLabel];
  }
}

- (void)_layoutChargePercentLabel
{
  [(SBUILegibilityLabel *)self->_chargePercentLabel frame];
  chargePercentLabel = self->_chargePercentLabel;
  [(CSBatteryChargingRingView *)self bounds];
  [(SBUILegibilityLabel *)chargePercentLabel sizeThatFits:CGRectGetWidth(v19), 0.0];
  v5 = v4;
  v7 = v6;
  if ([(CSMagSafeAccessoryConfiguration *)self->_configuration staticViewNeeded])
  {
    [(CSBatteryChargingRingView *)self bounds];
    [(CSRingLayer *)self->_batteryLevelRing frame];
    MaxX = CGRectGetMaxX(v20);
    [(CSBatteryChargingView *)self horizontalGapBetweenBatteryAndPercentLabel];
    v10 = MaxX + v9;
    SBFMainScreenScale();
    BSFloatRoundForScale();
    v12 = v11;
  }

  else
  {
    [(CSBatteryChargingRingView *)self bounds];
    [(UIView *)self->_chargingContainerView setBounds:?];
    [(UIView *)self->_chargingContainerView frame];
    CGRectGetHeight(v21);
    v13 = [(CSMagSafeAccessoryConfiguration *)self->_configuration ring];
    [v13 ringDiameter];

    [(CSBatteryChargingRingView *)self bounds];
    UIRectCenteredXInRect();
    SBFMainScreenScale();
    BSFloatRoundForScale();
    SBFMainScreenScale();
    BSRectRoundForScale();
    v10 = v14;
    v5 = v15;
    v7 = v16;
  }

  v17 = self->_chargePercentLabel;

  [(SBUILegibilityLabel *)v17 setFrame:v10, v12, v5, v7];
}

- (void)_layoutAuxiliaryChargePercentLabel
{
  if (!self->_auxiliaryBatteryLabel || ![(CSBatteryChargingRingView *)self _isShowingAuxiliary])
  {
    return;
  }

  v3 = +[CSLockScreenDomain rootSettings];
  v4 = [v3 chargingSettings];
  v5 = [v4 useWhimsicalDesign];

  if (v5)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v160 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v134 = [MEMORY[0x277D75418] currentDevice];
      if ([v134 userInterfaceIdiom] != 1)
      {
        v160 = 0x100000000;
        goto LABEL_15;
      }
    }

    HIDWORD(v160) = v6 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v13 = __sb__runningInSpringBoard();
      if (v13)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v135 = [MEMORY[0x277D759A0] mainScreen];
        [v135 _referenceBounds];
      }

      LODWORD(v160) = v13 ^ 1;
      BSSizeRoundForScale();
      if (v28 == *(MEMORY[0x277D66E30] + 288) && v27 == *(MEMORY[0x277D66E30] + 296))
      {
        v152 = 0;
        v151 = 0;
        v153 = 0;
        v150 = 0;
        v154 = 0uLL;
        v141 = 0;
        v149 = 0;
        v140 = 0;
        v148 = 0;
        v147 = 0;
        v155 = 0;
        v146 = 0;
        v145 = 0;
        v156 = 0;
        v144 = 0;
        v157 = 0;
        v143 = 0;
        v139 = 0;
        v158 = 0;
        v138 = 0;
        v142 = 0;
        v137 = 0;
        memset(v159, 0, sizeof(v159));
        v136 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0.0;
        goto LABEL_497;
      }
    }

    else
    {
      LODWORD(v160) = 0;
    }

LABEL_15:
    v14 = __sb__runningInSpringBoard();
    if (v14)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v159[2] = 0;
        goto LABEL_24;
      }
    }

    else
    {
      v133 = [MEMORY[0x277D75418] currentDevice];
      if ([v133 userInterfaceIdiom] != 1)
      {
        v159[2] = 0x100000000;
        goto LABEL_24;
      }
    }

    HIDWORD(v159[2]) = v14 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v13 = __sb__runningInSpringBoard();
      if (v13)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v125 = [MEMORY[0x277D759A0] mainScreen];
        [v125 _referenceBounds];
      }

      LODWORD(v159[2]) = v13 ^ 1;
      BSSizeRoundForScale();
      if (v29 >= *(MEMORY[0x277D66E30] + 440))
      {
        v152 = 0;
        v151 = 0;
        v153 = 0;
        v150 = 0;
        v154 = 0uLL;
        v141 = 0;
        v149 = 0;
        v140 = 0;
        v148 = 0;
        v147 = 0;
        v155 = 0;
        v146 = 0;
        v145 = 0;
        v156 = 0;
        v144 = 0;
        v157 = 0;
        v143 = 0;
        v139 = 0;
        v158 = 0;
        v138 = 0;
        v142 = 0;
        v137 = 0;
        LODWORD(v159[0]) = 0;
        v136 = 0;
        v19 = 0;
        *(v159 + 4) = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        HIDWORD(v159[1]) = 0;
        v24 = 0.0;
        goto LABEL_497;
      }
    }

    else
    {
      LODWORD(v159[2]) = 0;
    }

LABEL_24:
    v15 = __sb__runningInSpringBoard();
    if (v15)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v159[1] = 0;
        goto LABEL_33;
      }
    }

    else
    {
      v132 = [MEMORY[0x277D75418] currentDevice];
      if ([v132 userInterfaceIdiom] != 1)
      {
        v159[1] = 0x100000000;
        goto LABEL_33;
      }
    }

    HIDWORD(v159[1]) = v15 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v13 = __sb__runningInSpringBoard();
      if (v13)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v124 = [MEMORY[0x277D759A0] mainScreen];
        [v124 _referenceBounds];
      }

      LODWORD(v159[1]) = v13 ^ 1;
      BSSizeRoundForScale();
      if (v30 >= *(MEMORY[0x277D66E30] + 376))
      {
        v152 = 0;
        v151 = 0;
        v153 = 0;
        v150 = 0;
        v154 = 0uLL;
        v141 = 0;
        v149 = 0;
        v140 = 0;
        v148 = 0;
        v147 = 0;
        v155 = 0;
        v146 = 0;
        v145 = 0;
        v156 = 0;
        v144 = 0;
        v157 = 0;
        v143 = 0;
        v139 = 0;
        v158 = 0;
        v138 = 0;
        v142 = 0;
        v137 = 0;
        v159[0] = 0;
        v136 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0.0;
        goto LABEL_497;
      }
    }

    else
    {
      LODWORD(v159[1]) = 0;
    }

LABEL_33:
    v16 = __sb__runningInSpringBoard();
    if (v16)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v159[0] = 0;
        goto LABEL_42;
      }
    }

    else
    {
      v131 = [MEMORY[0x277D75418] currentDevice];
      if ([v131 userInterfaceIdiom] != 1)
      {
        v159[0] = 0x100000000;
        goto LABEL_42;
      }
    }

    HIDWORD(v159[0]) = v16 ^ 1;
    v13 = __sb__runningInSpringBoard();
    if (v13)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v128 = [MEMORY[0x277D759A0] mainScreen];
      [v128 _referenceBounds];
    }

    LODWORD(v159[0]) = v13 ^ 1;
    BSSizeRoundForScale();
    if (v17 >= *(MEMORY[0x277D66E30] + 280))
    {
      v152 = 0;
      v151 = 0;
      v153 = 0;
      v150 = 0;
      v154 = 0uLL;
      v141 = 0;
      v149 = 0;
      v140 = 0;
      v148 = 0;
      v147 = 0;
      v155 = 0;
      v146 = 0;
      v145 = 0;
      v156 = 0;
      v144 = 0;
      v157 = 0;
      v143 = 0;
      v139 = 0;
      v158 = 0;
      v138 = 0;
      v142 = 0;
      v137 = 0;
      v136 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0.0;
      goto LABEL_497;
    }

LABEL_42:
    v18 = __sb__runningInSpringBoard();
    if (v18)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v158 = 0;
        goto LABEL_52;
      }
    }

    else
    {
      v130 = [MEMORY[0x277D75418] currentDevice];
      if ([v130 userInterfaceIdiom] != 1)
      {
        v158 = 0x100000000;
        goto LABEL_52;
      }
    }

    HIDWORD(v158) = v18 ^ 1;
    v13 = __sb__runningInSpringBoard();
    if (v13)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v126 = [MEMORY[0x277D759A0] mainScreen];
      [v126 _referenceBounds];
    }

    LODWORD(v158) = v13 ^ 1;
    BSSizeRoundForScale();
    if (v25 >= *(MEMORY[0x277D66E30] + 264))
    {
      v152 = 0;
      v151 = 0;
      v153 = 0;
      v150 = 0;
      v154 = 0uLL;
      v141 = 0;
      v149 = 0;
      v140 = 0;
      v148 = 0;
      v147 = 0;
      v155 = 0;
      v146 = 0;
      v145 = 0;
      v156 = 0;
      v144 = 0;
      v157 = 0;
      v143 = 0;
      v139 = 0;
      v137 = 0;
      v138 = 0;
      v142 = 0;
      v136 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0.0;
      goto LABEL_497;
    }

LABEL_52:
    v26 = __sb__runningInSpringBoard();
    if (v26)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v157 = 0;
        goto LABEL_72;
      }
    }

    else
    {
      v129 = [MEMORY[0x277D75418] currentDevice];
      if ([v129 userInterfaceIdiom] != 1)
      {
        v157 = 0x100000000;
        goto LABEL_72;
      }
    }

    HIDWORD(v157) = v26 ^ 1;
    v13 = __sb__runningInSpringBoard();
    if (v13)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v123 = [MEMORY[0x277D759A0] mainScreen];
      [v123 _referenceBounds];
    }

    LODWORD(v157) = v13 ^ 1;
    BSSizeRoundForScale();
    if (v31 >= *(MEMORY[0x277D66E30] + 248))
    {
      v152 = 0;
      v151 = 0;
      v153 = 0;
      v150 = 0;
      v154 = 0uLL;
      v141 = 0;
      v149 = 0;
      v140 = 0;
      v148 = 0;
      v147 = 0;
      v155 = 0;
      v146 = 0;
      v145 = 0;
      v156 = 0;
      v144 = 0;
      v142 = 0;
      v143 = 0;
      v139 = 0;
      v137 = 0;
      v138 = 0;
      v136 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0.0;
      goto LABEL_497;
    }

LABEL_72:
    v13 = __sb__runningInSpringBoard();
    if (v13)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v127 = [MEMORY[0x277D75418] currentDevice];
      if ([v127 userInterfaceIdiom] != 1)
      {
LABEL_74:
        v156 = v13 ^ 1;
        if (!_SBF_Private_IsD94Like())
        {
LABEL_78:
          v155 = 0;
          goto LABEL_204;
        }

        v32 = __sb__runningInSpringBoard();
        if (v32)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_78;
          }
        }

        else
        {
          v121 = [MEMORY[0x277D75418] currentDevice];
          if ([v121 userInterfaceIdiom])
          {
            v155 = 0x100000000;
            goto LABEL_204;
          }
        }

        HIDWORD(v155) = v32 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v44 = __sb__runningInSpringBoard();
          if (v44)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v114 = [MEMORY[0x277D759A0] mainScreen];
            [v114 _referenceBounds];
          }

          v13 = v44 ^ 1u;
          BSSizeRoundForScale();
          LODWORD(v155) = v13;
          if (v47 >= *(MEMORY[0x277D66E30] + 200))
          {
            v152 = 0;
            v151 = 0;
            v153 = 0;
            v150 = 0;
            v154 = 0uLL;
            v141 = 0;
            v149 = 0;
            v140 = 0;
            v148 = 0;
            v147 = 0;
            v145 = 0;
            v146 = 0;
            v143 = 0;
            v144 = 0;
            v142 = 0;
            v139 = 0;
            v137 = 0;
            v138 = 0;
            v136 = 0;
            v19 = 0;
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v23 = 0;
            v24 = 50.0;
            goto LABEL_497;
          }
        }

        else
        {
          LODWORD(v155) = 0;
        }

LABEL_204:
        v13 = __sb__runningInSpringBoard();
        if (v13)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v154 + 1) = 0;
            goto LABEL_214;
          }
        }

        else
        {
          v122 = [MEMORY[0x277D75418] currentDevice];
          if ([v122 userInterfaceIdiom])
          {
            *(&v154 + 1) = 0x100000000;
            goto LABEL_214;
          }
        }

        HIDWORD(v154) = v13 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v13 = __sb__runningInSpringBoard();
          if (v13)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v117 = [MEMORY[0x277D759A0] mainScreen];
            [v117 _referenceBounds];
          }

          DWORD2(v154) = v13 ^ 1;
          BSSizeRoundForScale();
          if (v45 >= *(MEMORY[0x277D66E30] + 200))
          {
            goto LABEL_218;
          }
        }

        else
        {
          DWORD2(v154) = 0;
        }

LABEL_214:
        if (_SBF_Private_IsD94Like())
        {
          v152 = 0;
          v151 = 0;
          v153 = 0;
          v150 = 0;
          *&v154 = 0;
          v141 = 0;
          v149 = 0;
          v140 = 0;
          v148 = 0;
          v147 = 0;
          v145 = 0;
          v146 = 0;
          v143 = 0;
          v144 = 0;
          v142 = 0;
          v139 = 0;
          v137 = 0;
          v138 = 0;
          v136 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 41.0;
          goto LABEL_497;
        }

LABEL_218:
        if (!_SBF_Private_IsD64Like())
        {
LABEL_222:
          *&v154 = 0;
          goto LABEL_232;
        }

        v46 = __sb__runningInSpringBoard();
        if (v46)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_222;
          }
        }

        else
        {
          v118 = [MEMORY[0x277D75418] currentDevice];
          if ([v118 userInterfaceIdiom])
          {
            *&v154 = 0x100000000;
            goto LABEL_232;
          }
        }

        DWORD1(v154) = v46 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v48 = __sb__runningInSpringBoard();
          if (v48)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v109 = [MEMORY[0x277D759A0] mainScreen];
            [v109 _referenceBounds];
          }

          v13 = v48 ^ 1u;
          BSSizeRoundForScale();
          LODWORD(v154) = v13;
          if (v52 >= *(MEMORY[0x277D66E30] + 136))
          {
            v152 = 0;
            v151 = 0;
            v153 = 0;
            v150 = 0;
            v141 = 0;
            v149 = 0;
            v140 = 0;
            v148 = 0;
            v147 = 0;
            v145 = 0;
            v146 = 0;
            v143 = 0;
            v144 = 0;
            v142 = 0;
            v139 = 0;
            v137 = 0;
            v138 = 0;
            v136 = 0;
            v19 = 0;
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v23 = 0;
            v24 = 50.0;
            goto LABEL_497;
          }
        }

        else
        {
          LODWORD(v154) = 0;
        }

LABEL_232:
        v13 = __sb__runningInSpringBoard();
        if (v13)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v153 = 0;
            goto LABEL_242;
          }
        }

        else
        {
          v120 = [MEMORY[0x277D75418] currentDevice];
          if ([v120 userInterfaceIdiom])
          {
            v153 = 0x100000000;
            goto LABEL_242;
          }
        }

        HIDWORD(v153) = v13 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v13 = __sb__runningInSpringBoard();
          if (v13)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v113 = [MEMORY[0x277D759A0] mainScreen];
            [v113 _referenceBounds];
          }

          LODWORD(v153) = v13 ^ 1;
          BSSizeRoundForScale();
          if (v49 >= *(MEMORY[0x277D66E30] + 136))
          {
            goto LABEL_246;
          }
        }

        else
        {
          LODWORD(v153) = 0;
        }

LABEL_242:
        if (_SBF_Private_IsD64Like())
        {
          v152 = 0;
          v151 = 0;
          v150 = 0;
          v141 = 0;
          v149 = 0;
          v140 = 0;
          v148 = 0;
          v147 = 0;
          v145 = 0;
          v146 = 0;
          v143 = 0;
          v144 = 0;
          v142 = 0;
          v139 = 0;
          v137 = 0;
          v138 = 0;
          v136 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 41.0;
          goto LABEL_497;
        }

LABEL_246:
        v50 = __sb__runningInSpringBoard();
        if (v50)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v152 = 0;
            goto LABEL_256;
          }
        }

        else
        {
          v119 = [MEMORY[0x277D75418] currentDevice];
          if ([v119 userInterfaceIdiom])
          {
            v152 = 0x100000000;
            goto LABEL_256;
          }
        }

        HIDWORD(v152) = v50 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v13 = __sb__runningInSpringBoard();
          if (v13)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v110 = [MEMORY[0x277D759A0] mainScreen];
            [v110 _referenceBounds];
          }

          LODWORD(v152) = v13 ^ 1;
          BSSizeRoundForScale();
          if (v51 >= *(MEMORY[0x277D66E30] + 136))
          {
            v151 = 0;
            v150 = 0;
            v141 = 0;
            v149 = 0;
            v140 = 0;
            v148 = 0;
            v147 = 0;
            v145 = 0;
            v146 = 0;
            v143 = 0;
            v144 = 0;
            v142 = 0;
            v139 = 0;
            v137 = 0;
            v138 = 0;
            v136 = 0;
            v19 = 0;
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v23 = 0;
            v24 = 50.0;
            goto LABEL_497;
          }
        }

        else
        {
          LODWORD(v152) = 0;
        }

LABEL_256:
        v13 = __sb__runningInSpringBoard();
        if (v13)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v151 = 0;
            goto LABEL_266;
          }
        }

        else
        {
          v116 = [MEMORY[0x277D75418] currentDevice];
          if ([v116 userInterfaceIdiom])
          {
            v151 = 0x100000000;
            goto LABEL_266;
          }
        }

        HIDWORD(v151) = v13 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v13 = __sb__runningInSpringBoard();
          if (v13)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v108 = [MEMORY[0x277D759A0] mainScreen];
            [v108 _referenceBounds];
          }

          LODWORD(v151) = v13 ^ 1;
          BSSizeRoundForScale();
          if (v53 >= *(MEMORY[0x277D66E30] + 136))
          {
            goto LABEL_276;
          }
        }

        else
        {
          LODWORD(v151) = 0;
        }

LABEL_266:
        if (_SBF_Private_IsD54())
        {
          v150 = 0;
          v141 = 0;
          v149 = 0;
          v140 = 0;
          v148 = 0;
          v147 = 0;
          v145 = 0;
          v146 = 0;
          v143 = 0;
          v144 = 0;
          v142 = 0;
          v139 = 0;
          v137 = 0;
          v138 = 0;
          v136 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 41.0;
          goto LABEL_497;
        }

LABEL_276:
        v54 = __sb__runningInSpringBoard();
        if (v54)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v150 = 0;
            goto LABEL_286;
          }
        }

        else
        {
          v115 = [MEMORY[0x277D75418] currentDevice];
          if ([v115 userInterfaceIdiom])
          {
            v150 = 0x100000000;
            goto LABEL_286;
          }
        }

        HIDWORD(v150) = v54 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v55 = __sb__runningInSpringBoard();
          if (v55)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v105 = [MEMORY[0x277D759A0] mainScreen];
            [v105 _referenceBounds];
          }

          v13 = v55 ^ 1u;
          BSSizeRoundForScale();
          LODWORD(v150) = v13;
          if (v56 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
          {
            v141 = 0;
            v149 = 0;
            v140 = 0;
            v148 = 0;
            v147 = 0;
            v145 = 0;
            v146 = 0;
            v143 = 0;
            v144 = 0;
            v142 = 0;
            v139 = 0;
            v137 = 0;
            v138 = 0;
            v136 = 0;
            v19 = 0;
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v23 = 0;
            v24 = 0.0;
            goto LABEL_497;
          }
        }

        else
        {
          LODWORD(v150) = 0;
        }

LABEL_286:
        v13 = __sb__runningInSpringBoard();
        if (v13)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v141 = 0;
            goto LABEL_296;
          }
        }

        else
        {
          v112 = [MEMORY[0x277D75418] currentDevice];
          if ([v112 userInterfaceIdiom])
          {
            v141 = 0x100000000;
            goto LABEL_296;
          }
        }

        HIDWORD(v141) = v13 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v13 = __sb__runningInSpringBoard();
          if (v13)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v104 = [MEMORY[0x277D759A0] mainScreen];
            [v104 _referenceBounds];
          }

          LODWORD(v141) = v13 ^ 1;
          BSSizeRoundForScale();
          if (v57 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_305;
          }
        }

        else
        {
          LODWORD(v141) = 0;
        }

LABEL_296:
        if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
        {
          v149 = 0;
          v140 = 0;
          v148 = 0;
          v147 = 0;
          v145 = 0;
          v146 = 0;
          v143 = 0;
          v144 = 0;
          v142 = 0;
          v139 = 0;
          v137 = 0;
          v138 = 0;
          v136 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 0.0;
          goto LABEL_497;
        }

LABEL_305:
        if (!_SBF_Private_IsD93Like())
        {
LABEL_309:
          v149 = 0;
          v140 = 0;
          goto LABEL_316;
        }

        v58 = __sb__runningInSpringBoard();
        if (v58)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_309;
          }
        }

        else
        {
          v107 = [MEMORY[0x277D75418] currentDevice];
          if ([v107 userInterfaceIdiom])
          {
            v140 = 0;
            v149 = 1;
            goto LABEL_316;
          }
        }

        v149 = v58 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v59 = __sb__runningInSpringBoard();
          if (v59)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v98 = [MEMORY[0x277D759A0] mainScreen];
            [v98 _referenceBounds];
          }

          v13 = v59 ^ 1u;
          BSSizeRoundForScale();
          v140 = v13;
          if (v62 >= *(MEMORY[0x277D66E30] + 184))
          {
            v148 = 0;
            v147 = 0;
            v145 = 0;
            v146 = 0;
            v143 = 0;
            v144 = 0;
            v142 = 0;
            v139 = 0;
            v137 = 0;
            v138 = 0;
            v136 = 0;
            v19 = 0;
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v23 = 0;
            v24 = 49.0;
            goto LABEL_497;
          }
        }

        else
        {
          v140 = 0;
        }

LABEL_316:
        v13 = __sb__runningInSpringBoard();
        if (v13)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v148 = 0;
            goto LABEL_326;
          }
        }

        else
        {
          v111 = [MEMORY[0x277D75418] currentDevice];
          if ([v111 userInterfaceIdiom])
          {
            v148 = 0x100000000;
            goto LABEL_326;
          }
        }

        HIDWORD(v148) = v13 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v13 = __sb__runningInSpringBoard();
          if (v13)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v101 = [MEMORY[0x277D759A0] mainScreen];
            [v101 _referenceBounds];
          }

          LODWORD(v148) = v13 ^ 1;
          BSSizeRoundForScale();
          if (v60 >= *(MEMORY[0x277D66E30] + 184))
          {
            goto LABEL_330;
          }
        }

        else
        {
          LODWORD(v148) = 0;
        }

LABEL_326:
        if (_SBF_Private_IsD93Like())
        {
          v147 = 0;
          v145 = 0;
          v146 = 0;
          v143 = 0;
          v144 = 0;
          v142 = 0;
          v139 = 0;
          v137 = 0;
          v138 = 0;
          v136 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 40.33333;
          goto LABEL_497;
        }

LABEL_330:
        if (!_SBF_Private_IsD63Like())
        {
LABEL_334:
          v147 = 0;
          goto LABEL_344;
        }

        v61 = __sb__runningInSpringBoard();
        if (v61)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_334;
          }
        }

        else
        {
          v103 = [MEMORY[0x277D75418] currentDevice];
          if ([v103 userInterfaceIdiom])
          {
            v147 = 0x100000000;
            goto LABEL_344;
          }
        }

        HIDWORD(v147) = v61 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v13 = __sb__runningInSpringBoard();
          if (v13)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v94 = [MEMORY[0x277D759A0] mainScreen];
            [v94 _referenceBounds];
          }

          LODWORD(v147) = v13 ^ 1;
          BSSizeRoundForScale();
          if (v65 >= *(MEMORY[0x277D66E30] + 104))
          {
            v145 = 0;
            v146 = 0;
            v143 = 0;
            v144 = 0;
            v142 = 0;
            v139 = 0;
            v137 = 0;
            v138 = 0;
            v136 = 0;
            v19 = 0;
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v23 = 0;
            v24 = 49.0;
            goto LABEL_497;
          }
        }

        else
        {
          LODWORD(v147) = 0;
        }

LABEL_344:
        v13 = __sb__runningInSpringBoard();
        if (v13)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v146 = 0;
            goto LABEL_354;
          }
        }

        else
        {
          v106 = [MEMORY[0x277D75418] currentDevice];
          if ([v106 userInterfaceIdiom])
          {
            v146 = 0x100000000;
            goto LABEL_354;
          }
        }

        HIDWORD(v146) = v13 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v13 = __sb__runningInSpringBoard();
          if (v13)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v97 = [MEMORY[0x277D759A0] mainScreen];
            [v97 _referenceBounds];
          }

          LODWORD(v146) = v13 ^ 1;
          BSSizeRoundForScale();
          if (v63 >= *(MEMORY[0x277D66E30] + 104))
          {
            goto LABEL_358;
          }
        }

        else
        {
          LODWORD(v146) = 0;
        }

LABEL_354:
        if (_SBF_Private_IsD63Like())
        {
          v144 = 0;
          v145 = 0;
          v142 = 0;
          v143 = 0;
          v139 = 0;
          v137 = 0;
          v138 = 0;
          v136 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 40.33333;
          goto LABEL_497;
        }

LABEL_358:
        if (!_SBF_Private_IsD23Like())
        {
LABEL_362:
          v145 = 0;
          goto LABEL_372;
        }

        v64 = __sb__runningInSpringBoard();
        if (v64)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_362;
          }
        }

        else
        {
          v99 = [MEMORY[0x277D75418] currentDevice];
          if ([v99 userInterfaceIdiom])
          {
            v145 = 0x100000000;
            goto LABEL_372;
          }
        }

        HIDWORD(v145) = v64 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v13 = __sb__runningInSpringBoard();
          if (v13)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v90 = [MEMORY[0x277D759A0] mainScreen];
            [v90 _referenceBounds];
          }

          LODWORD(v145) = v13 ^ 1;
          BSSizeRoundForScale();
          if (v69 >= *(MEMORY[0x277D66E30] + 216))
          {
            v143 = 0;
            v144 = 0;
            v142 = 0;
            v139 = 0;
            v137 = 0;
            v138 = 0;
            v136 = 0;
            v19 = 0;
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v23 = 0;
            v24 = 50.0;
            goto LABEL_497;
          }
        }

        else
        {
          LODWORD(v145) = 0;
        }

LABEL_372:
        v13 = __sb__runningInSpringBoard();
        if (v13)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v144 = 0;
            goto LABEL_382;
          }
        }

        else
        {
          v102 = [MEMORY[0x277D75418] currentDevice];
          if ([v102 userInterfaceIdiom])
          {
            v144 = 0x100000000;
            goto LABEL_382;
          }
        }

        HIDWORD(v144) = v13 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v13 = __sb__runningInSpringBoard();
          if (v13)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v93 = [MEMORY[0x277D759A0] mainScreen];
            [v93 _referenceBounds];
          }

          LODWORD(v144) = v13 ^ 1;
          BSSizeRoundForScale();
          if (v66 >= *(MEMORY[0x277D66E30] + 216))
          {
            goto LABEL_386;
          }
        }

        else
        {
          LODWORD(v144) = 0;
        }

LABEL_382:
        if (_SBF_Private_IsD23Like())
        {
          v142 = 0;
          v143 = 0;
          v139 = 0;
          v137 = 0;
          v138 = 0;
          v136 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 41.0;
          goto LABEL_497;
        }

LABEL_386:
        v67 = __sb__runningInSpringBoard();
        if (v67)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v143 = 0;
            goto LABEL_396;
          }
        }

        else
        {
          v100 = [MEMORY[0x277D75418] currentDevice];
          if ([v100 userInterfaceIdiom])
          {
            v143 = 0x100000000;
            goto LABEL_396;
          }
        }

        HIDWORD(v143) = v67 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v13 = __sb__runningInSpringBoard();
          if (v13)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v91 = [MEMORY[0x277D759A0] mainScreen];
            [v91 _referenceBounds];
          }

          LODWORD(v143) = v13 ^ 1;
          BSSizeRoundForScale();
          if (v68 >= *(MEMORY[0x277D66E30] + 120))
          {
            v142 = 0;
            v139 = 0;
            v137 = 0;
            v138 = 0;
            v136 = 0;
            v19 = 0;
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v23 = 0;
            v24 = 0.0;
            goto LABEL_497;
          }
        }

        else
        {
          LODWORD(v143) = 0;
        }

LABEL_396:
        v13 = __sb__runningInSpringBoard();
        if (v13)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v142) = 0;
            v139 = 0;
            goto LABEL_406;
          }
        }

        else
        {
          v96 = [MEMORY[0x277D75418] currentDevice];
          if ([v96 userInterfaceIdiom])
          {
            v139 = 0;
            HIDWORD(v142) = 1;
            goto LABEL_406;
          }
        }

        HIDWORD(v142) = v13 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v13 = __sb__runningInSpringBoard();
          if (v13)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v89 = [MEMORY[0x277D759A0] mainScreen];
            [v89 _referenceBounds];
          }

          v139 = v13 ^ 1;
          BSSizeRoundForScale();
          if (v70 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_416;
          }
        }

        else
        {
          v139 = 0;
        }

LABEL_406:
        if (_SBF_Private_IsD33OrSimilarDevice())
        {
          v137 = 0;
          v138 = 0;
          LODWORD(v142) = 0;
          v136 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 0.0;
          goto LABEL_497;
        }

LABEL_416:
        v71 = __sb__runningInSpringBoard();
        if (v71)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v138) = 0;
            LODWORD(v142) = 0;
            goto LABEL_426;
          }
        }

        else
        {
          v95 = [MEMORY[0x277D75418] currentDevice];
          if ([v95 userInterfaceIdiom])
          {
            LODWORD(v142) = 0;
            HIDWORD(v138) = 1;
            goto LABEL_426;
          }
        }

        HIDWORD(v138) = v71 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v13 = __sb__runningInSpringBoard();
          if (v13)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v88 = [MEMORY[0x277D759A0] mainScreen];
            [v88 _referenceBounds];
          }

          LODWORD(v142) = v13 ^ 1;
          BSSizeRoundForScale();
          if (v72 >= *(MEMORY[0x277D66E30] + 104))
          {
            LODWORD(v138) = 0;
            v137 = 0;
            v136 = 0;
            v19 = 0;
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v23 = 0;
            v24 = 49.0;
            goto LABEL_497;
          }
        }

        else
        {
          LODWORD(v142) = 0;
        }

LABEL_426:
        v13 = __sb__runningInSpringBoard();
        if (v13)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v138) = 0;
            LODWORD(v137) = 0;
            goto LABEL_436;
          }
        }

        else
        {
          v92 = [MEMORY[0x277D75418] currentDevice];
          if ([v92 userInterfaceIdiom])
          {
            LODWORD(v137) = 0;
            LODWORD(v138) = 1;
            goto LABEL_436;
          }
        }

        LODWORD(v138) = v13 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v13 = __sb__runningInSpringBoard();
          if (v13)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v87 = [MEMORY[0x277D759A0] mainScreen];
            [v87 _referenceBounds];
          }

          LODWORD(v137) = v13 ^ 1;
          BSSizeRoundForScale();
          if (v73 >= *(MEMORY[0x277D66E30] + 104))
          {
LABEL_443:
            v13 = &unk_21EC95000;
            if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
            {
              goto LABEL_448;
            }

            if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
            {
              goto LABEL_450;
            }

            if (_SBF_Private_IsD52OrSimilarDevice())
            {
LABEL_448:
              HIDWORD(v137) = 0;
              v136 = 0;
              v19 = 0;
              v20 = 0;
              v21 = 0;
              v22 = 0;
              v23 = 0;
              v24 = 33.0;
              goto LABEL_497;
            }

            if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
            {
LABEL_450:
              HIDWORD(v137) = 0;
              v136 = 0;
              v19 = 0;
              v20 = 0;
              v21 = 0;
              v22 = 0;
              v23 = 0;
              v24 = 28.33333;
              goto LABEL_497;
            }

            v74 = __sb__runningInSpringBoard();
            if (v74)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                HIDWORD(v137) = 0;
                v136 = 0;
                goto LABEL_461;
              }
            }

            else
            {
              v86 = [MEMORY[0x277D75418] currentDevice];
              if ([v86 userInterfaceIdiom])
              {
                v136 = 0;
                HIDWORD(v137) = 1;
                goto LABEL_461;
              }
            }

            HIDWORD(v137) = v74 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v13 = __sb__runningInSpringBoard();
              if (v13)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v82 = [MEMORY[0x277D759A0] mainScreen];
                [v82 _referenceBounds];
              }

              v136 = v13 ^ 1;
              BSSizeRoundForScale();
              if (v78 >= *(MEMORY[0x277D66E30] + 88))
              {
                v19 = 0;
                v20 = 0;
                v21 = 0;
                v22 = 0;
                v23 = 0;
                v24 = 0.0;
                goto LABEL_497;
              }
            }

            else
            {
              v136 = 0;
            }

LABEL_461:
            v75 = __sb__runningInSpringBoard();
            if (v75)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v19 = 0;
                v20 = 0;
                goto LABEL_471;
              }
            }

            else
            {
              v85 = [MEMORY[0x277D75418] currentDevice];
              if ([v85 userInterfaceIdiom])
              {
                v20 = 0;
                v19 = 1;
                goto LABEL_471;
              }
            }

            v19 = v75 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v13 = __sb__runningInSpringBoard();
              if (v13)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v81 = [MEMORY[0x277D759A0] mainScreen];
                [v81 _referenceBounds];
              }

              v20 = v13 ^ 1;
              BSSizeRoundForScale();
              if (v79 >= *(MEMORY[0x277D66E30] + 72))
              {
                v21 = 0;
                v22 = 0;
                v23 = 0;
                v24 = 0.0;
                goto LABEL_497;
              }
            }

            else
            {
              v20 = 0;
            }

LABEL_471:
            v13 = __sb__runningInSpringBoard();
            if (v13)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v21 = 0;
                v22 = 0;
LABEL_481:
                v77 = __sb__runningInSpringBoard();
                if (v77)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
LABEL_484:
                    v23 = 0;
                    v24 = 0.0;
                    goto LABEL_497;
                  }
                }

                else
                {
                  v13 = [MEMORY[0x277D75418] currentDevice];
                  if ([v13 userInterfaceIdiom])
                  {
                    v24 = 0.0;
                    v23 = 1;
                    goto LABEL_497;
                  }
                }

                v23 = v77 ^ 1;
                v80 = __sb__runningInSpringBoard();
                if (v80)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  v77 = [MEMORY[0x277D759A0] mainScreen];
                  [v77 _referenceBounds];
                }

                BSSizeRoundForScale();
                v24 = 0.0;
                if (v80 != 1)
                {

                  if (v23)
                  {
                    goto LABEL_498;
                  }

                  goto LABEL_82;
                }

LABEL_497:
                if (v23)
                {
LABEL_498:

                  if (!v22)
                  {
LABEL_84:
                    if (v21)
                    {

                      if (!v20)
                      {
                        goto LABEL_86;
                      }
                    }

                    else if (!v20)
                    {
LABEL_86:
                      if (!v19)
                      {
LABEL_88:
                        if (v136)
                        {
                        }

                        if (HIDWORD(v137))
                        {
                        }

                        if (v137)
                        {
                        }

                        if (v138)
                        {
                        }

                        if (v142)
                        {
                        }

                        if (HIDWORD(v138))
                        {
                        }

                        if (v139)
                        {
                        }

                        if (HIDWORD(v142))
                        {
                        }

                        if (v143)
                        {
                        }

                        if (HIDWORD(v143))
                        {
                        }

                        if (v144)
                        {
                        }

                        if (HIDWORD(v144))
                        {
                        }

                        if (v145)
                        {
                        }

                        if (HIDWORD(v145))
                        {
                        }

                        if (v146)
                        {
                        }

                        if (HIDWORD(v146))
                        {
                        }

                        if (v147)
                        {
                        }

                        if (HIDWORD(v147))
                        {
                        }

                        if (v148)
                        {
                        }

                        if (HIDWORD(v148))
                        {
                        }

                        if (v140)
                        {
                        }

                        if (v149)
                        {
                        }

                        if (v141)
                        {
                        }

                        if (HIDWORD(v141))
                        {
                        }

                        if (v150)
                        {
                        }

                        if (HIDWORD(v150))
                        {
                        }

                        if (v151)
                        {
                        }

                        if (HIDWORD(v151))
                        {
                        }

                        if (v152)
                        {
                        }

                        if (HIDWORD(v152))
                        {
                        }

                        if (v153)
                        {
                        }

                        if (HIDWORD(v153))
                        {
                        }

                        if (v154)
                        {
                        }

                        if (DWORD1(v154))
                        {
                        }

                        if (DWORD2(v154))
                        {
                        }

                        if (HIDWORD(v154))
                        {
                        }

                        if (v155)
                        {
                        }

                        if (HIDWORD(v155))
                        {
                        }

                        if (v156)
                        {
                        }

                        if (v157)
                        {
                        }

                        if (HIDWORD(v157))
                        {
                        }

                        if (v158)
                        {
                        }

                        if (HIDWORD(v158))
                        {
                        }

                        if (LODWORD(v159[0]))
                        {
                        }

                        if (HIDWORD(v159[0]))
                        {
                        }

                        if (LODWORD(v159[1]))
                        {
                        }

                        if (HIDWORD(v159[1]))
                        {
                        }

                        if (LODWORD(v159[2]))
                        {
                        }

                        if (HIDWORD(v159[2]))
                        {
                        }

                        if (v160)
                        {
                        }

                        if (HIDWORD(v160))
                        {
                        }

                        [(CALayer *)self->_silhouetteLayer frame];
                        MidY = CGRectGetMaxY(v164) - v24;
                        v33 = [(UIView *)self->_auxiliaryBatteryPillClippingView layer];
                        [v33 frame];
                        v35 = v34;
                        v37 = v36;
                        v39 = v38;
                        v41 = v40;

                        v165.origin.x = v35;
                        v165.origin.y = v37;
                        v165.size.width = v39;
                        v165.size.height = v41;
                        MidX = CGRectGetMidX(v165);
                        goto LABEL_191;
                      }

LABEL_87:

                      goto LABEL_88;
                    }

                    if (!v19)
                    {
                      goto LABEL_88;
                    }

                    goto LABEL_87;
                  }

LABEL_83:

                  goto LABEL_84;
                }

LABEL_82:
                if (!v22)
                {
                  goto LABEL_84;
                }

                goto LABEL_83;
              }
            }

            else
            {
              v84 = [MEMORY[0x277D75418] currentDevice];
              if ([v84 userInterfaceIdiom])
              {
                v22 = 0;
                v21 = 1;
                goto LABEL_481;
              }
            }

            v21 = v13 ^ 1;
            v13 = __sb__runningInSpringBoard();
            if (v13)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v83 = [MEMORY[0x277D759A0] mainScreen];
              [v83 _referenceBounds];
            }

            v22 = v13 ^ 1;
            BSSizeRoundForScale();
            if (v76 >= *(MEMORY[0x277D66E30] + 56))
            {
              goto LABEL_484;
            }

            goto LABEL_481;
          }
        }

        else
        {
          LODWORD(v137) = 0;
        }

LABEL_436:
        if (_SBF_Private_IsD53())
        {
          HIDWORD(v137) = 0;
          v136 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 40.33333;
          goto LABEL_497;
        }

        goto LABEL_443;
      }
    }

    v152 = 0;
    v151 = 0;
    v153 = 0;
    v150 = 0;
    v154 = 0uLL;
    v141 = 0;
    v149 = 0;
    v140 = 0;
    v148 = 0;
    v147 = 0;
    v155 = 0;
    v146 = 0;
    v145 = 0;
    v143 = 0;
    v144 = 0;
    v142 = 0;
    v139 = 0;
    v137 = 0;
    v138 = 0;
    v136 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0.0;
    v156 = v13 ^ 1;
    goto LABEL_497;
  }

  [(CSRingLayer *)self->_auxiliaryBatteryLevelRing frame];
  x = v162.origin.x;
  y = v162.origin.y;
  width = v162.size.width;
  height = v162.size.height;
  MidX = CGRectGetMidX(v162);
  v163.origin.x = x;
  v163.origin.y = y;
  v163.size.width = width;
  v163.size.height = height;
  MidY = CGRectGetMidY(v163);
LABEL_191:
  auxiliaryBatteryLabel = self->_auxiliaryBatteryLabel;
  [(CSBatteryChargingRingView *)self bounds];
  [(SBUILegibilityLabel *)auxiliaryBatteryLabel sizeThatFits:CGRectGetWidth(v166), 0.0];
  [(SBUILegibilityLabel *)self->_auxiliaryBatteryLabel setSize:?];
  v43 = self->_auxiliaryBatteryLabel;

  [(SBUILegibilityLabel *)v43 setCenter:MidX, MidY];
}

- (void)updateForInternalBatteryDevice:(id)a3
{
  objc_storeStrong(&self->_internalBattery, a3);
  v7 = a3;
  v5 = [(CSBatteryChargingRingView *)self _powerStatusForBattery:v7];
  internalStatus = self->_internalStatus;
  self->_internalStatus = v5;

  [(CSBatteryChargingRingView *)self updateForInternalPowerStatus:self->_internalStatus];
}

- (void)updateForInternalPowerStatus:(id)a3
{
  v4 = a3;
  v14 = CSRingColorForPowerStatus(v4);
  -[CALayer setHidden:](self->_chargingBoltGlyph, "setHidden:", [v4 chargeState] == 0);
  chargingBoltGlyph = self->_chargingBoltGlyph;
  v6 = v14;
  -[CALayer setContentsMultiplyColor:](chargingBoltGlyph, "setContentsMultiplyColor:", [v14 CGColor]);
  batteryLevelRing = self->_batteryLevelRing;
  v8 = v14;
  -[CSRingLayer setContentsMultiplyColor:](batteryLevelRing, "setContentsMultiplyColor:", [v14 CGColor]);
  v9 = self->_batteryLevelRing;
  v10 = v14;
  -[CSRingLayer setStrokeColor:](v9, "setStrokeColor:", [v14 CGColor]);
  v11 = self->_batteryLevelRing;
  [v4 powerPercent];
  v13 = v12;

  [(CSRingLayer *)v11 setStrokeEnd:v13 / 100.0];
}

- (double)batteryChargingLevel
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  [v2 batteryLevel];
  v4 = v3;

  return fmax(v4, 0.0);
}

- (id)_powerStatusForBattery:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CSMagSafePowerStatus);
  -[CSMagSafePowerStatus setPowerPercent:](v5, "setPowerPercent:", [v4 percentCharge]);
  if ([v4 isLowPowerModeActive])
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  [v4 percentCharge];
  [MEMORY[0x277D75A78] lowBatteryLevel];
  if (BSFloatLessThanOrEqualToFloat())
  {
    v6 |= 2uLL;
  }

  -[CSMagSafePowerStatus setPowerStatus:](v5, "setPowerStatus:", v6 | [v4 isCharging]);
  if ([v4 isCharging])
  {
    if ([v4 powerSourceState] == 2)
    {
      v7 = 4;
    }

    else
    {
      v7 = 3;
    }
  }

  else if ([v4 isInternal] & 1) != 0 || (objc_msgSend(v4, "isCharging"))
  {
    v7 = 0;
  }

  else
  {
    if ([(BCBatteryDevice *)self->_internalBattery isCharging]&& [(BCBatteryDevice *)self->_internalBattery powerSourceState]== 2)
    {
      v8 = [(BCBatteryDevice *)self->_internalBattery isWirelesslyCharging]^ 1;
    }

    else
    {
      v8 = 0;
    }

    v9 = [v4 productIdentifier];
    if (v9 == *MEMORY[0x277CF0DB8] || v9 == *MEMORY[0x277CF0DC0])
    {
      if ([(CSBatteryChargingRingView *)self _supportsPowerOut])
      {
        v10 = 2;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    if (v8)
    {
      v7 = v10;
    }

    else
    {
      v7 = 0;
    }
  }

  [(CSMagSafePowerStatus *)v5 setChargeState:v7];

  return v5;
}

- (BOOL)_supportsPowerOut
{
  externalBattery = self->_externalBattery;
  if (externalBattery)
  {
    v3 = [(BCBatteryDevice *)externalBattery productIdentifier];
    if (v3 == *MEMORY[0x277CF0DB8])
    {
      LODWORD(externalBattery) = IOAccessoryManagerGetServiceWithPrimaryPort();
      if (externalBattery)
      {
        CFProperty = IORegistryEntryCreateCFProperty(externalBattery, @"IOAccessoryManagerAllowedFeatures", *MEMORY[0x277CBECE8], 0);
        v5 = -1;
        valuePtr = -1;
        if (CFProperty)
        {
          v6 = CFProperty;
          CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr);
          CFRelease(v6);
          v5 = valuePtr;
        }

        v7 = v5 == -1;
        v8 = (v5 >> 21) & 1;
        if (v7)
        {
          LOBYTE(externalBattery) = 0;
        }

        else
        {
          LOBYTE(externalBattery) = v8;
        }
      }
    }

    else
    {
      LOBYTE(externalBattery) = 0;
    }
  }

  return externalBattery;
}

- (void)setPrimaryBatteryText:(id)a3 forBattery:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  objc_storeStrong(&self->_internalBattery, a4);
  v8 = a3;
  chargePercentLabel = self->_chargePercentLabel;
  v10 = [(CSBatteryChargingRingView *)self _chargePercentFont];
  v11 = [(CSBatteryChargingRingView *)self _updateChargeString:v8 oldLabel:chargePercentLabel font:v10];

  v12 = self->_chargePercentLabel;
  self->_chargePercentLabel = v11;

  v13 = [(CSBatteryChargingRingView *)self _powerStatusForBattery:v7];
  internalStatus = self->_internalStatus;
  self->_internalStatus = v13;

  if (!chargePercentLabel)
  {
    if (![(CSMagSafeAccessoryConfiguration *)self->_configuration staticViewNeeded])
    {
      v15 = [(SBUILegibilityLabel *)self->_chargePercentLabel layer];
      [v15 setOpacity:0.0];
    }

    v16 = [(SBUILegibilityLabel *)self->_chargePercentLabel layer];
    v17 = [(CSMagSafeAccessoryConfiguration *)self->_configuration staticViewNeeded];
    v18 = 0.0;
    if (v17)
    {
      *&v18 = 1.0;
    }

    [v16 setOpacity:v18];

    v19 = [(SBUILegibilityLabel *)self->_chargePercentLabel layer];
    v20 = [MEMORY[0x277CD9EA0] brightnessFilterWithAmount:0.2];
    v24[0] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    [v19 setFilters:v21];

    v22 = [(SBUILegibilityLabel *)self->_chargePercentLabel layer];
    v23 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5C0]];
    [v22 setCompositingFilter:v23];
  }

  [(CSBatteryChargingRingView *)self updateForInternalPowerStatus:self->_internalStatus];
  [(CSBatteryChargingRingView *)self setNeedsLayout];
}

- (void)setSecondaryBatteryText:(id)a3 forBattery:(id)a4
{
  v17 = a3;
  v6 = a4;
  objc_storeStrong(&self->_externalBattery, a4);
  v7 = +[CSLockScreenDomain rootSettings];
  v8 = [v7 chargingSettings];
  v9 = [v8 useWhimsicalDesign];

  if (v9)
  {
    auxiliaryBatteryLabel = self->_auxiliaryBatteryLabel;
    v11 = [(CSBatteryChargingRingView *)self _auxiliaryChargePercentFont];
    v12 = [(CSBatteryChargingRingView *)self _updateChargeString:v17 oldLabel:auxiliaryBatteryLabel font:v11];
    v13 = self->_auxiliaryBatteryLabel;
    self->_auxiliaryBatteryLabel = v12;

    v14 = [(SBUILegibilityLabel *)self->_auxiliaryBatteryLabel layer];
    [v14 setOpacity:0.0];
  }

  v15 = [(CSBatteryChargingRingView *)self _powerStatusForBattery:v6];
  externalStatus = self->_externalStatus;
  self->_externalStatus = v15;

  [(CSBatteryChargingRingView *)self _handleExternalStatusUpdate];
}

- (void)_handleExternalStatusUpdate
{
  v3 = +[CSLockScreenDomain rootSettings];
  v4 = [v3 chargingSettings];
  v5 = [v4 useWhimsicalDesign];

  v6 = CSRingColorForPowerStatus(self->_externalStatus);
  auxiliaryBatteryLevelRing = self->_auxiliaryBatteryLevelRing;
  v30 = v6;
  -[CSRingLayer setContentsMultiplyColor:](auxiliaryBatteryLevelRing, "setContentsMultiplyColor:", [v30 CGColor]);
  auxiliaryGlyphLayer = self->_auxiliaryGlyphLayer;
  v9 = [MEMORY[0x277D75348] whiteColor];
  -[CALayer setContentsMultiplyColor:](auxiliaryGlyphLayer, "setContentsMultiplyColor:", [v9 CGColor]);

  [(CSMagSafePowerStatus *)self->_externalStatus powerPercent];
  v11 = v10 / 100.0;
  if (v5)
  {
    v12 = [(UIView *)self->_auxiliaryBatteryPillLevelView layer];
    [v12 setBackgroundColor:{objc_msgSend(v30, "CGColor")}];

    [(CSBatteryChargingRingView *)self _pillFrameForBatteryCharge:v11];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [(UIView *)self->_auxiliaryBatteryPillLevelView layer];
    [v21 setFrame:{v14, v16, v18, v20}];
  }

  else
  {
    -[CSRingLayer setStrokeColor:](self->_auxiliaryBatteryLevelRing, "setStrokeColor:", [v30 CGColor]);
    [(CSRingLayer *)self->_auxiliaryBatteryLevelRing setStrokeEnd:v11];
  }

  auxiliaryChargingBoltGlyph = self->_auxiliaryChargingBoltGlyph;
  v23 = [MEMORY[0x277D75348] whiteColor];
  -[CALayer setContentsMultiplyColor:](auxiliaryChargingBoltGlyph, "setContentsMultiplyColor:", [v23 CGColor]);

  LOBYTE(auxiliaryChargingBoltGlyph) = [(CSMagSafePowerStatus *)self->_externalStatus powerStatus];
  LOBYTE(auxiliaryChargingBoltGlyph) = auxiliaryChargingBoltGlyph | ([(CSMagSafePowerStatus *)self->_externalStatus chargeState]== 2);
  [(CALayer *)self->_auxiliaryBatteryContainerLayer setAllowsGroupBlending:auxiliaryChargingBoltGlyph & 1];
  if ((auxiliaryChargingBoltGlyph & 1) == 0)
  {
    [(CABackdropLayer *)self->_auxiliaryCaptureBackdrop removeFromSuperlayer];
    [(CALayer *)self->_auxiliaryChargingBoltGlyphMask removeFromSuperlayer];
    [(CALayer *)self->_auxiliaryChargingBoltGlyph removeFromSuperlayer];
    goto LABEL_13;
  }

  v24 = [(CALayer *)self->_auxiliaryChargingBoltGlyph superlayer];

  if (v24)
  {
    goto LABEL_13;
  }

  v25 = +[CSLockScreenDomain rootSettings];
  v26 = [v25 chargingSettings];

  if ([v26 useWhimsicalDesign])
  {
    auxiliaryBatteryContainerLayer = self->_auxiliaryBatteryContainerLayer;
    auxiliaryCaptureBackdrop = self->_auxiliaryCaptureBackdrop;
    v29 = [(UIView *)self->_auxiliaryBatteryPillTrackView layer];
    [(CALayer *)auxiliaryBatteryContainerLayer insertSublayer:auxiliaryCaptureBackdrop above:v29];

LABEL_11:
    [(CALayer *)self->_auxiliaryBatteryContainerLayer addSublayer:self->_auxiliaryChargingBoltGlyphMask];
    goto LABEL_12;
  }

  if ([v26 shouldShowMaskForAuxiliaryBattery])
  {
    [(CALayer *)self->_auxiliaryBatteryContainerLayer insertSublayer:self->_auxiliaryCaptureBackdrop above:self->_auxiliaryBatteryTrackFillRingLayer];
    goto LABEL_11;
  }

LABEL_12:
  [(CALayer *)self->_auxiliaryBatteryContainerLayer addSublayer:self->_auxiliaryChargingBoltGlyph];

LABEL_13:
  [(CSBatteryChargingRingView *)self setNeedsLayout];
}

- (id)_silhouetteConfiguration
{
  v4 = self;
  v5 = 704;
  externalBattery = self->_externalBattery;
  if (externalBattery)
  {
    v7 = [(BCBatteryDevice *)externalBattery productIdentifier];
    if (v7 == *MEMORY[0x277CF0DC0])
    {
      if (v4->_externalBattery)
      {
        [(CSBatteryChargingRingView *)v4 _silhouettePhysicalSizeInMillimeters];
      }

      else
      {
        [(CSBatteryChargingRingView *)v4 _defaultSilhouettePhysicalSize];
      }

      v19 = v8;
      v20 = v9;
      [objc_opt_class() _pointsPerMillimeter];
      v22 = v21;
      v23 = [(CSBatteryChargingRingView *)v4 traitCollection];
      [v23 displayScale];
      v25 = v24;

      v26 = round(v19 * v22 * v25) / v25;
      v27 = round(v20 * v22 * v25) / v25;
      v28 = [MEMORY[0x277D759A0] mainScreen];
      [v28 bounds];
      v30 = v29;
      v32 = v31;

      if (v26 < v30)
      {
        v30 = v26;
      }

      if (v27 < v32)
      {
        v32 = v27;
      }

      goto LABEL_366;
    }
  }

  v348 = v4;
  v10 = __sb__runningInSpringBoard();
  v11 = 0x277D75000;
  if (v10)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v347 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v284 = [MEMORY[0x277D75418] currentDevice];
    if ([v284 userInterfaceIdiom] != 1)
    {
      v347 = 0x100000000;
      goto LABEL_14;
    }
  }

  HIDWORD(v347) = v10 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v12 = __sb__runningInSpringBoard();
    if (v12)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v293 = [MEMORY[0x277D759A0] mainScreen];
      [v293 _referenceBounds];
    }

    LODWORD(v347) = v12 ^ 1;
    BSSizeRoundForScale();
    if (v40 == *(MEMORY[0x277D66E30] + 288) && v39 == *(MEMORY[0x277D66E30] + 296))
    {
      v335 = 0;
      v336 = 0;
      v334 = 0;
      v306 = 0;
      v337 = 0;
      v333 = 0;
      v297 = 0;
      v296 = 0;
      v338 = 0;
      v332 = 0;
      v305 = 0;
      v339 = 0;
      v304 = 0;
      v303 = 0;
      v340 = 0uLL;
      v302 = 0;
      v331 = 0;
      v307 = 0;
      memset(v341, 0, sizeof(v341));
      v342 = 0;
      v343 = 0;
      v344 = 0;
      v345 = 0;
      v346 = 0;
      v30 = 0.0;
      goto LABEL_77;
    }
  }

  else
  {
    LODWORD(v347) = 0;
  }

LABEL_14:
  v13 = __sb__runningInSpringBoard();
  if (v13)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v346 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    v282 = [MEMORY[0x277D75418] currentDevice];
    if ([v282 userInterfaceIdiom] != 1)
    {
      v346 = 0x100000000;
      goto LABEL_23;
    }
  }

  HIDWORD(v346) = v13 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v14 = __sb__runningInSpringBoard();
    if (v14)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v292 = [MEMORY[0x277D759A0] mainScreen];
      [v292 _referenceBounds];
    }

    LODWORD(v346) = v14 ^ 1;
    BSSizeRoundForScale();
    if (v42 >= *(MEMORY[0x277D66E30] + 440))
    {
      v335 = 0;
      v336 = 0;
      v334 = 0;
      v306 = 0;
      v337 = 0;
      v333 = 0;
      v297 = 0;
      v296 = 0;
      v338 = 0;
      v332 = 0;
      v305 = 0;
      v339 = 0;
      v304 = 0;
      v303 = 0;
      v340 = 0uLL;
      v302 = 0;
      v331 = 0;
      v307 = 0;
      memset(v341, 0, sizeof(v341));
      v342 = 0;
      v343 = 0;
      v344 = 0;
      v345 = 0;
      v30 = 0.0;
      goto LABEL_77;
    }
  }

  else
  {
    LODWORD(v346) = 0;
  }

LABEL_23:
  v15 = __sb__runningInSpringBoard();
  if (v15)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v345 = 0;
      goto LABEL_32;
    }
  }

  else
  {
    v280 = [MEMORY[0x277D75418] currentDevice];
    if ([v280 userInterfaceIdiom] != 1)
    {
      v345 = 0x100000000;
      goto LABEL_32;
    }
  }

  HIDWORD(v345) = v15 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v16 = __sb__runningInSpringBoard();
    if (v16)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v264 = [MEMORY[0x277D759A0] mainScreen];
      [v264 _referenceBounds];
    }

    LODWORD(v345) = v16 ^ 1;
    BSSizeRoundForScale();
    if (v43 >= *(MEMORY[0x277D66E30] + 376))
    {
      v335 = 0;
      v336 = 0;
      v334 = 0;
      v306 = 0;
      v337 = 0;
      v333 = 0;
      v297 = 0;
      v296 = 0;
      v338 = 0;
      v332 = 0;
      v305 = 0;
      v339 = 0;
      v304 = 0;
      v303 = 0;
      v340 = 0uLL;
      v302 = 0;
      v331 = 0;
      v307 = 0;
      memset(v341, 0, sizeof(v341));
      v342 = 0;
      v343 = 0;
      v344 = 0;
      v30 = 0.0;
      goto LABEL_77;
    }
  }

  else
  {
    LODWORD(v345) = 0;
  }

LABEL_32:
  v17 = __sb__runningInSpringBoard();
  if (v17)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v344 = 0;
      goto LABEL_47;
    }
  }

  else
  {
    v278 = [MEMORY[0x277D75418] currentDevice];
    if ([v278 userInterfaceIdiom] != 1)
    {
      v344 = 0x100000000;
      goto LABEL_47;
    }
  }

  HIDWORD(v344) = v17 ^ 1;
  v18 = __sb__runningInSpringBoard();
  if (v18)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v272 = [MEMORY[0x277D759A0] mainScreen];
    [v272 _referenceBounds];
  }

  LODWORD(v344) = v18 ^ 1;
  BSSizeRoundForScale();
  if (v33 >= *(MEMORY[0x277D66E30] + 280))
  {
    v335 = 0;
    v336 = 0;
    v334 = 0;
    v306 = 0;
    v337 = 0;
    v333 = 0;
    v297 = 0;
    v296 = 0;
    v338 = 0;
    v332 = 0;
    v305 = 0;
    v339 = 0;
    v304 = 0;
    v303 = 0;
    v340 = 0uLL;
    v302 = 0;
    v331 = 0;
    v307 = 0;
    memset(v341, 0, sizeof(v341));
    v342 = 0;
    v343 = 0;
    v30 = 0.0;
    goto LABEL_77;
  }

LABEL_47:
  v34 = __sb__runningInSpringBoard();
  if (v34)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v343 = 0;
      goto LABEL_57;
    }
  }

  else
  {
    v276 = [MEMORY[0x277D75418] currentDevice];
    if ([v276 userInterfaceIdiom] != 1)
    {
      v343 = 0x100000000;
      goto LABEL_57;
    }
  }

  HIDWORD(v343) = v34 ^ 1;
  v35 = __sb__runningInSpringBoard();
  if (v35)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v268 = [MEMORY[0x277D759A0] mainScreen];
    [v268 _referenceBounds];
  }

  LODWORD(v343) = v35 ^ 1;
  BSSizeRoundForScale();
  if (v36 >= *(MEMORY[0x277D66E30] + 264))
  {
    v335 = 0;
    v336 = 0;
    v334 = 0;
    v306 = 0;
    v337 = 0;
    v333 = 0;
    v297 = 0;
    v296 = 0;
    v338 = 0;
    v332 = 0;
    v305 = 0;
    v339 = 0;
    v304 = 0;
    v303 = 0;
    v340 = 0uLL;
    v302 = 0;
    v331 = 0;
    v307 = 0;
    memset(v341, 0, sizeof(v341));
    v342 = 0;
    v30 = 0.0;
    goto LABEL_77;
  }

LABEL_57:
  v37 = __sb__runningInSpringBoard();
  if (v37)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v342 = 0;
      goto LABEL_388;
    }
  }

  else
  {
    v274 = [MEMORY[0x277D75418] currentDevice];
    if ([v274 userInterfaceIdiom] != 1)
    {
      v342 = 0x100000000;
      goto LABEL_388;
    }
  }

  HIDWORD(v342) = v37 ^ 1;
  v38 = __sb__runningInSpringBoard();
  if (v38)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v262 = [MEMORY[0x277D759A0] mainScreen];
    [v262 _referenceBounds];
  }

  LODWORD(v342) = v38 ^ 1;
  BSSizeRoundForScale();
  if (v75 >= *(MEMORY[0x277D66E30] + 248))
  {
    v335 = 0;
    v336 = 0;
    v334 = 0;
    v306 = 0;
    v337 = 0;
    v333 = 0;
    v297 = 0;
    v296 = 0;
    v338 = 0;
    v332 = 0;
    v305 = 0;
    v339 = 0;
    v304 = 0;
    v303 = 0;
    v340 = 0uLL;
    v302 = 0;
    v331 = 0;
    v307 = 0;
    memset(v341, 0, sizeof(v341));
    v30 = 0.0;
    goto LABEL_77;
  }

LABEL_388:
  v76 = __sb__runningInSpringBoard();
  if (v76)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_390;
    }

LABEL_396:
    v335 = 0;
    v336 = 0;
    v334 = 0;
    v306 = 0;
    v337 = 0;
    v333 = 0;
    v297 = 0;
    v296 = 0;
    v338 = 0;
    v332 = 0;
    v305 = 0;
    v339 = 0;
    v304 = 0;
    v303 = 0;
    v340 = 0uLL;
    v302 = 0;
    v331 = 0;
    v307 = 0;
    memset(v341, 0, 44);
    v30 = 0.0;
    HIDWORD(v341[5]) = v76 ^ 1;
    goto LABEL_77;
  }

  v270 = [MEMORY[0x277D75418] currentDevice];
  if ([v270 userInterfaceIdiom] == 1)
  {
    goto LABEL_396;
  }

LABEL_390:
  HIDWORD(v341[5]) = v76 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_394:
    *(&v341[4] + 4) = 0;
    goto LABEL_431;
  }

  v77 = __sb__runningInSpringBoard();
  if (v77)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_394;
    }
  }

  else
  {
    v258 = [MEMORY[0x277D75418] currentDevice];
    if ([v258 userInterfaceIdiom])
    {
      HIDWORD(v341[4]) = 0;
      LODWORD(v341[5]) = 1;
      goto LABEL_431;
    }
  }

  LODWORD(v341[5]) = v77 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v81 = __sb__runningInSpringBoard();
    if (v81)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v243 = [MEMORY[0x277D759A0] mainScreen];
      [v243 _referenceBounds];
    }

    HIDWORD(v341[4]) = v81 ^ 1;
    BSSizeRoundForScale();
    if (v87 >= *(MEMORY[0x277D66E30] + 200))
    {
      v335 = 0;
      v336 = 0;
      v334 = 0;
      v306 = 0;
      v337 = 0;
      v333 = 0;
      v297 = 0;
      v296 = 0;
      v338 = 0;
      v332 = 0;
      v305 = 0;
      v339 = 0;
      v304 = 0;
      v303 = 0;
      v340 = 0uLL;
      v302 = 0;
      v331 = 0;
      v307 = 0;
      memset(v341, 0, 36);
      v30 = 389.0;
      goto LABEL_77;
    }
  }

  else
  {
    HIDWORD(v341[4]) = 0;
  }

LABEL_431:
  v82 = __sb__runningInSpringBoard();
  if (v82)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v341[3] + 4) = 0;
      goto LABEL_441;
    }
  }

  else
  {
    v260 = [MEMORY[0x277D75418] currentDevice];
    if ([v260 userInterfaceIdiom])
    {
      HIDWORD(v341[3]) = 0;
      LODWORD(v341[4]) = 1;
      goto LABEL_441;
    }
  }

  LODWORD(v341[4]) = v82 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v83 = __sb__runningInSpringBoard();
    if (v83)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v250 = [MEMORY[0x277D759A0] mainScreen];
      [v250 _referenceBounds];
    }

    HIDWORD(v341[3]) = v83 ^ 1;
    BSSizeRoundForScale();
    if (v84 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_445;
    }
  }

  else
  {
    HIDWORD(v341[3]) = 0;
  }

LABEL_441:
  if (_SBF_Private_IsD94Like())
  {
    v335 = 0;
    v336 = 0;
    v334 = 0;
    v306 = 0;
    v337 = 0;
    v333 = 0;
    v297 = 0;
    v296 = 0;
    v338 = 0;
    v332 = 0;
    v305 = 0;
    v339 = 0;
    v304 = 0;
    v303 = 0;
    v340 = 0uLL;
    v302 = 0;
    v331 = 0;
    v307 = 0;
    memset(v341, 0, 28);
    v30 = 340.666666;
    goto LABEL_77;
  }

LABEL_445:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_449:
    *(&v341[2] + 4) = 0;
    goto LABEL_496;
  }

  v85 = __sb__runningInSpringBoard();
  if (v85)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_449;
    }
  }

  else
  {
    v5 = [MEMORY[0x277D75418] currentDevice];
    if ([v5 userInterfaceIdiom])
    {
      v254 = v5;
      HIDWORD(v341[2]) = 0;
      LODWORD(v341[3]) = 1;
      goto LABEL_496;
    }
  }

  LODWORD(v341[3]) = v85 ^ 1;
  v254 = v5;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v91 = __sb__runningInSpringBoard();
    if (v91)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v233 = [MEMORY[0x277D759A0] mainScreen];
      [v233 _referenceBounds];
    }

    HIDWORD(v341[2]) = v91 ^ 1;
    BSSizeRoundForScale();
    if (v103 >= *(MEMORY[0x277D66E30] + 136))
    {
      v335 = 0;
      v336 = 0;
      v334 = 0;
      v306 = 0;
      v337 = 0;
      v333 = 0;
      v297 = 0;
      v296 = 0;
      v338 = 0;
      v332 = 0;
      v305 = 0;
      v339 = 0;
      v304 = 0;
      v303 = 0;
      v340 = 0uLL;
      v302 = 0;
      v331 = 0;
      v307 = 0;
      memset(v341, 0, 20);
      v30 = 380.0;
      goto LABEL_77;
    }
  }

  else
  {
    HIDWORD(v341[2]) = 0;
  }

LABEL_496:
  v92 = __sb__runningInSpringBoard();
  v93 = &off_21EC94000;
  if (v92)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v341[1] + 4) = 0;
      goto LABEL_506;
    }
  }

  else
  {
    v256 = [MEMORY[0x277D75418] currentDevice];
    if ([v256 userInterfaceIdiom])
    {
      HIDWORD(v341[1]) = 0;
      LODWORD(v341[2]) = 1;
      goto LABEL_506;
    }
  }

  LODWORD(v341[2]) = v92 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v94 = __sb__runningInSpringBoard();
    if (v94)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v241 = [MEMORY[0x277D759A0] mainScreen];
      [v241 _referenceBounds];
    }

    HIDWORD(v341[1]) = v94 ^ 1;
    BSSizeRoundForScale();
    if (v95 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_510;
    }
  }

  else
  {
    HIDWORD(v341[1]) = 0;
  }

LABEL_506:
  if (_SBF_Private_IsD64Like())
  {
    v335 = 0;
    v336 = 0;
    v334 = 0;
    v306 = 0;
    v337 = 0;
    v333 = 0;
    v297 = 0;
    v296 = 0;
    v338 = 0;
    v332 = 0;
    v305 = 0;
    v339 = 0;
    v304 = 0;
    v303 = 0;
    v340 = 0uLL;
    v302 = 0;
    v331 = 0;
    v307 = 0;
    v341[0] = 0;
    LODWORD(v341[1]) = 0;
    v30 = 332.666666;
    goto LABEL_77;
  }

LABEL_510:
  v96 = __sb__runningInSpringBoard();
  if (v96)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(v341 + 4) = 0;
      goto LABEL_520;
    }
  }

  else
  {
    v253 = [MEMORY[0x277D75418] currentDevice];
    if ([v253 userInterfaceIdiom])
    {
      HIDWORD(v341[0]) = 0;
      LODWORD(v341[1]) = 1;
      goto LABEL_520;
    }
  }

  LODWORD(v341[1]) = v96 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v97 = __sb__runningInSpringBoard();
    if (v97)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v235 = [MEMORY[0x277D759A0] mainScreen];
      [v235 _referenceBounds];
    }

    BSSizeRoundForScale();
    HIDWORD(v341[0]) = v97 ^ 1;
    if (v101 >= *(MEMORY[0x277D66E30] + 136))
    {
      v335 = 0;
      v336 = 0;
      v334 = 0;
      v306 = 0;
      v337 = 0;
      v333 = 0;
      v297 = 0;
      v296 = 0;
      v338 = 0;
      v332 = 0;
      v305 = 0;
      v339 = 0;
      v304 = 0;
      v303 = 0;
      v340 = 0uLL;
      v302 = 0;
      v331 = 0;
      v307 = 0;
      LODWORD(v341[0]) = 0;
      v30 = 380.0;
      goto LABEL_77;
    }
  }

  else
  {
    HIDWORD(v341[0]) = 0;
  }

LABEL_520:
  v98 = __sb__runningInSpringBoard();
  if (v98)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v307 = 0;
      LODWORD(v341[0]) = 0;
      goto LABEL_536;
    }
  }

  else
  {
    v248 = [MEMORY[0x277D75418] currentDevice];
    if ([v248 userInterfaceIdiom])
    {
      v307 = 0;
      LODWORD(v341[0]) = 1;
      goto LABEL_536;
    }
  }

  LODWORD(v341[0]) = v98 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v99 = __sb__runningInSpringBoard();
    if (v99)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v232 = [MEMORY[0x277D759A0] mainScreen];
      [v232 _referenceBounds];
    }

    v307 = v99 ^ 1;
    BSSizeRoundForScale();
    if (v107 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_560;
    }
  }

  else
  {
    v307 = 0;
  }

LABEL_536:
  if (_SBF_Private_IsD54())
  {
    v335 = 0;
    v336 = 0;
    v334 = 0;
    v306 = 0;
    v337 = 0;
    v333 = 0;
    v297 = 0;
    v296 = 0;
    v338 = 0;
    v332 = 0;
    v305 = 0;
    v339 = 0;
    v304 = 0;
    v303 = 0;
    v340 = 0uLL;
    v302 = 0;
    v331 = 0;
    v30 = 332.666666;
    goto LABEL_77;
  }

LABEL_560:
  v108 = __sb__runningInSpringBoard();
  if (v108)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v340 + 1) = 0;
      goto LABEL_580;
    }
  }

  else
  {
    v245 = [MEMORY[0x277D75418] currentDevice];
    if ([v245 userInterfaceIdiom])
    {
      *(&v340 + 1) = 0x100000000;
      goto LABEL_580;
    }
  }

  HIDWORD(v340) = v108 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v110 = __sb__runningInSpringBoard();
    if (v110)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v225 = [MEMORY[0x277D759A0] mainScreen];
      [v225 _referenceBounds];
    }

    v93 = v110 ^ 1u;
    BSSizeRoundForScale();
    DWORD2(v340) = v110 ^ 1;
    if (v114 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      v335 = 0;
      v336 = 0;
      v334 = 0;
      v306 = 0;
      v337 = 0;
      v333 = 0;
      v297 = 0;
      v296 = 0;
      v338 = 0;
      v332 = 0;
      v305 = 0;
      v339 = 0;
      v304 = 0;
      v303 = 0;
      *&v340 = 0;
      v302 = 0;
      v331 = 0;
      v30 = 0.0;
      goto LABEL_77;
    }
  }

  else
  {
    DWORD2(v340) = 0;
  }

LABEL_580:
  v111 = __sb__runningInSpringBoard();
  if (v111)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *&v340 = 0;
      goto LABEL_597;
    }
  }

  else
  {
    v239 = [MEMORY[0x277D75418] currentDevice];
    if ([v239 userInterfaceIdiom])
    {
      *&v340 = 0x100000000;
      goto LABEL_597;
    }
  }

  DWORD1(v340) = v111 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v112 = __sb__runningInSpringBoard();
    if (v112)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v223 = [MEMORY[0x277D759A0] mainScreen];
      [v223 _referenceBounds];
    }

    LODWORD(v340) = v112 ^ 1;
    BSSizeRoundForScale();
    if (v117 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_619;
    }
  }

  else
  {
    LODWORD(v340) = 0;
  }

LABEL_597:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    v335 = 0;
    v336 = 0;
    v334 = 0;
    v306 = 0;
    v337 = 0;
    v333 = 0;
    v297 = 0;
    v296 = 0;
    v338 = 0;
    v332 = 0;
    v305 = 0;
    v339 = 0;
    v304 = 0;
    v303 = 0;
    v302 = 0;
    v331 = 0;
    v30 = 0.0;
    goto LABEL_77;
  }

LABEL_619:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_623:
    v339 = 0;
    goto LABEL_655;
  }

  v118 = __sb__runningInSpringBoard();
  if (v118)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_623;
    }
  }

  else
  {
    v230 = [MEMORY[0x277D75418] currentDevice];
    if ([v230 userInterfaceIdiom])
    {
      v339 = 1;
      goto LABEL_655;
    }
  }

  LODWORD(v339) = v118 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v122 = __sb__runningInSpringBoard();
    if (v122)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v212 = [MEMORY[0x277D759A0] mainScreen];
      [v212 _referenceBounds];
    }

    v93 = v122 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v339) = v122 ^ 1;
    if (v128 >= *(MEMORY[0x277D66E30] + 184))
    {
      v335 = 0;
      v336 = 0;
      v334 = 0;
      v306 = 0;
      v337 = 0;
      v333 = 0;
      v297 = 0;
      v296 = 0;
      v338 = 0;
      v332 = 0;
      v305 = 0;
      v304 = 0;
      v303 = 0;
      v302 = 0;
      v331 = 0;
      v30 = 374.0;
      goto LABEL_77;
    }
  }

  else
  {
    HIDWORD(v339) = 0;
  }

LABEL_655:
  v123 = __sb__runningInSpringBoard();
  if (v123)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v338 = 0;
      goto LABEL_665;
    }
  }

  else
  {
    v237 = [MEMORY[0x277D75418] currentDevice];
    if ([v237 userInterfaceIdiom])
    {
      v338 = 1;
      goto LABEL_665;
    }
  }

  LODWORD(v338) = v123 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v124 = __sb__runningInSpringBoard();
    if (v124)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v218 = [MEMORY[0x277D759A0] mainScreen];
      [v218 _referenceBounds];
    }

    HIDWORD(v338) = v124 ^ 1;
    BSSizeRoundForScale();
    if (v125 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_669;
    }
  }

  else
  {
    HIDWORD(v338) = 0;
  }

LABEL_665:
  if (_SBF_Private_IsD93Like())
  {
    v335 = 0;
    v336 = 0;
    v334 = 0;
    v306 = 0;
    v337 = 0;
    v333 = 0;
    v297 = 0;
    v296 = 0;
    v332 = 0;
    v305 = 0;
    v304 = 0;
    v303 = 0;
    v302 = 0;
    v331 = 0;
    v30 = 306.0;
    goto LABEL_77;
  }

LABEL_669:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_673:
    v337 = 0;
    goto LABEL_711;
  }

  v126 = __sb__runningInSpringBoard();
  if (v126)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_673;
    }
  }

  else
  {
    v93 = [MEMORY[0x277D75418] currentDevice];
    if ([v93 userInterfaceIdiom])
    {
      v226 = v93;
      v337 = 1;
      goto LABEL_711;
    }
  }

  LODWORD(v337) = v126 ^ 1;
  v226 = v93;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v131 = __sb__runningInSpringBoard();
    if (v131)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v204 = [MEMORY[0x277D759A0] mainScreen];
      [v204 _referenceBounds];
    }

    HIDWORD(v337) = v131 ^ 1;
    BSSizeRoundForScale();
    if (v137 >= *(MEMORY[0x277D66E30] + 104))
    {
      v335 = 0;
      v336 = 0;
      v334 = 0;
      v306 = 0;
      v333 = 0;
      v297 = 0;
      v296 = 0;
      v332 = 0;
      v305 = 0;
      v304 = 0;
      v303 = 0;
      v302 = 0;
      v331 = 0;
      v30 = 366.0;
      goto LABEL_77;
    }
  }

  else
  {
    HIDWORD(v337) = 0;
  }

LABEL_711:
  v132 = __sb__runningInSpringBoard();
  if (v132)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v336 = 0;
      goto LABEL_721;
    }
  }

  else
  {
    v228 = [MEMORY[0x277D75418] currentDevice];
    if ([v228 userInterfaceIdiom])
    {
      v336 = 1;
      goto LABEL_721;
    }
  }

  LODWORD(v336) = v132 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v133 = __sb__runningInSpringBoard();
    if (v133)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v210 = [MEMORY[0x277D759A0] mainScreen];
      [v210 _referenceBounds];
    }

    HIDWORD(v336) = v133 ^ 1;
    BSSizeRoundForScale();
    if (v134 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_725;
    }
  }

  else
  {
    HIDWORD(v336) = 0;
  }

LABEL_721:
  if (_SBF_Private_IsD63Like())
  {
    v335 = 0;
    v334 = 0;
    v306 = 0;
    v333 = 0;
    v297 = 0;
    v296 = 0;
    v332 = 0;
    v305 = 0;
    v304 = 0;
    v303 = 0;
    v302 = 0;
    v331 = 0;
    v30 = 300.0;
    goto LABEL_77;
  }

LABEL_725:
  if (!_SBF_Private_IsD23Like())
  {
LABEL_729:
    v335 = 0;
    goto LABEL_776;
  }

  v135 = __sb__runningInSpringBoard();
  if (v135)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_729;
    }
  }

  else
  {
    v214 = [MEMORY[0x277D75418] currentDevice];
    if ([v214 userInterfaceIdiom])
    {
      v335 = 0x100000000;
      goto LABEL_776;
    }
  }

  HIDWORD(v335) = v135 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v141 = __sb__runningInSpringBoard();
    if (v141)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v196 = [MEMORY[0x277D759A0] mainScreen];
      [v196 _referenceBounds];
    }

    LODWORD(v335) = v141 ^ 1;
    BSSizeRoundForScale();
    if (v152 >= *(MEMORY[0x277D66E30] + 216))
    {
      v334 = 0;
      v306 = 0;
      v333 = 0;
      v297 = 0;
      v296 = 0;
      v332 = 0;
      v305 = 0;
      v304 = 0;
      v303 = 0;
      v302 = 0;
      v331 = 0;
      v30 = 365.0;
      goto LABEL_77;
    }
  }

  else
  {
    LODWORD(v335) = 0;
  }

LABEL_776:
  v142 = __sb__runningInSpringBoard();
  if (v142)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v334) = 0;
      v306 = 0;
      goto LABEL_786;
    }
  }

  else
  {
    v220 = [MEMORY[0x277D75418] currentDevice];
    if ([v220 userInterfaceIdiom])
    {
      v306 = 0;
      HIDWORD(v334) = 1;
      goto LABEL_786;
    }
  }

  HIDWORD(v334) = v142 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v143 = __sb__runningInSpringBoard();
    if (v143)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v202 = [MEMORY[0x277D759A0] mainScreen];
      [v202 _referenceBounds];
    }

    v306 = v143 ^ 1;
    BSSizeRoundForScale();
    if (v144 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_790;
    }
  }

  else
  {
    v306 = 0;
  }

LABEL_786:
  if (_SBF_Private_IsD23Like())
  {
    LODWORD(v334) = 0;
    v333 = 0;
    v297 = 0;
    v296 = 0;
    v332 = 0;
    v305 = 0;
    v304 = 0;
    v303 = 0;
    v302 = 0;
    v331 = 0;
    v30 = 300.0;
    goto LABEL_77;
  }

LABEL_790:
  v145 = __sb__runningInSpringBoard();
  if (v145)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v334) = 0;
      HIDWORD(v333) = 0;
      goto LABEL_800;
    }
  }

  else
  {
    v216 = [MEMORY[0x277D75418] currentDevice];
    if ([v216 userInterfaceIdiom])
    {
      HIDWORD(v333) = 0;
      LODWORD(v334) = 1;
      goto LABEL_800;
    }
  }

  LODWORD(v334) = v145 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v146 = __sb__runningInSpringBoard();
    if (v146)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v198 = [MEMORY[0x277D759A0] mainScreen];
      [v198 _referenceBounds];
    }

    BSSizeRoundForScale();
    HIDWORD(v333) = v146 ^ 1;
    if (v150 >= *(MEMORY[0x277D66E30] + 120))
    {
      v297 = 0;
      v296 = 0;
      LODWORD(v333) = 0;
      v332 = 0;
      v305 = 0;
      v304 = 0;
      v303 = 0;
      v302 = 0;
      v331 = 0;
      v30 = 0.0;
      goto LABEL_77;
    }
  }

  else
  {
    HIDWORD(v333) = 0;
  }

LABEL_800:
  v147 = __sb__runningInSpringBoard();
  if (v147)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v297 = 0;
      v296 = 0;
      goto LABEL_816;
    }
  }

  else
  {
    v208 = [MEMORY[0x277D75418] currentDevice];
    if ([v208 userInterfaceIdiom])
    {
      v296 = 0;
      v297 = 1;
      goto LABEL_816;
    }
  }

  v297 = v147 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v148 = __sb__runningInSpringBoard();
    if (v148)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v194 = [MEMORY[0x277D759A0] mainScreen];
      [v194 _referenceBounds];
    }

    v296 = v148 ^ 1;
    BSSizeRoundForScale();
    if (v155 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_840;
    }
  }

  else
  {
    v296 = 0;
  }

LABEL_816:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    LODWORD(v333) = 0;
    v332 = 0;
    v305 = 0;
    v304 = 0;
    v303 = 0;
    v302 = 0;
    v331 = 0;
    v30 = 0.0;
    goto LABEL_77;
  }

LABEL_840:
  v156 = __sb__runningInSpringBoard();
  if (v156)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v333) = 0;
      HIDWORD(v332) = 0;
      goto LABEL_860;
    }
  }

  else
  {
    v206 = [MEMORY[0x277D75418] currentDevice];
    if ([v206 userInterfaceIdiom])
    {
      HIDWORD(v332) = 0;
      LODWORD(v333) = 1;
      goto LABEL_860;
    }
  }

  LODWORD(v333) = v156 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v157 = __sb__runningInSpringBoard();
    if (v157)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v291 = [MEMORY[0x277D759A0] mainScreen];
      [v291 _referenceBounds];
    }

    HIDWORD(v332) = v157 ^ 1;
    BSSizeRoundForScale();
    if (v162 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v332) = 0;
      v305 = 0;
      v304 = 0;
      v303 = 0;
      v302 = 0;
      v331 = 0;
      v30 = 366.0;
      goto LABEL_77;
    }
  }

  else
  {
    HIDWORD(v332) = 0;
  }

LABEL_860:
  v158 = __sb__runningInSpringBoard();
  if (v158)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v332) = 0;
      v159 = 0;
      goto LABEL_876;
    }
  }

  else
  {
    v200 = [MEMORY[0x277D75418] currentDevice];
    if ([v200 userInterfaceIdiom])
    {
      v159 = 0;
      LODWORD(v332) = 1;
      goto LABEL_876;
    }
  }

  LODWORD(v332) = v158 ^ 1;
  if (SBFEffectiveHomeButtonType() != 2)
  {
    v159 = 0;
    goto LABEL_876;
  }

  v160 = __sb__runningInSpringBoard();
  if (v160)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v290 = [MEMORY[0x277D759A0] mainScreen];
    [v290 _referenceBounds];
  }

  v159 = v160 ^ 1;
  BSSizeRoundForScale();
  if (v164 < *(MEMORY[0x277D66E30] + 104))
  {
LABEL_876:
    if (_SBF_Private_IsD53())
    {
      HIDWORD(v305) = v159;
      LODWORD(v305) = 0;
      v304 = 0;
      v303 = 0;
      v302 = 0;
      v331 = 0;
      v30 = 300.0;
      goto LABEL_77;
    }
  }

  HIDWORD(v305) = v159;
  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
  {
    goto LABEL_901;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    goto LABEL_903;
  }

  if (_SBF_Private_IsD52OrSimilarDevice())
  {
LABEL_901:
    LODWORD(v305) = 0;
    v304 = 0;
    v303 = 0;
    v302 = 0;
    v331 = 0;
    v30 = 375.0;
    goto LABEL_77;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
LABEL_903:
    LODWORD(v305) = 0;
    v304 = 0;
    v303 = 0;
    v302 = 0;
    v331 = 0;
    v30 = 320.0;
    goto LABEL_77;
  }

  v166 = __sb__runningInSpringBoard();
  if (v166)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v305) = 0;
      HIDWORD(v304) = 0;
      goto LABEL_930;
    }
  }

  else
  {
    v289 = [MEMORY[0x277D75418] currentDevice];
    if ([v289 userInterfaceIdiom])
    {
      HIDWORD(v304) = 0;
      LODWORD(v305) = 1;
      goto LABEL_930;
    }
  }

  LODWORD(v305) = v166 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v167 = __sb__runningInSpringBoard();
    if (v167)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v286 = [MEMORY[0x277D759A0] mainScreen];
      [v286 _referenceBounds];
    }

    HIDWORD(v304) = v167 ^ 1;
    BSSizeRoundForScale();
    if (v180 >= *(MEMORY[0x277D66E30] + 88))
    {
      LODWORD(v304) = 0;
      v303 = 0;
      v302 = 0;
      v331 = 0;
      v30 = 0.0;
      goto LABEL_77;
    }
  }

  else
  {
    HIDWORD(v304) = 0;
  }

LABEL_930:
  v168 = __sb__runningInSpringBoard();
  if (v168)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v304) = 0;
      HIDWORD(v303) = 0;
      goto LABEL_950;
    }
  }

  else
  {
    v288 = [MEMORY[0x277D75418] currentDevice];
    if ([v288 userInterfaceIdiom])
    {
      HIDWORD(v303) = 0;
      LODWORD(v304) = 1;
      goto LABEL_950;
    }
  }

  LODWORD(v304) = v168 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v171 = __sb__runningInSpringBoard();
    if (v171)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v285 = [MEMORY[0x277D759A0] mainScreen];
      [v285 _referenceBounds];
    }

    HIDWORD(v303) = v171 ^ 1;
    BSSizeRoundForScale();
    if (v182 >= *(MEMORY[0x277D66E30] + 72))
    {
      LODWORD(v303) = 0;
      v302 = 0;
      v331 = 0;
      v30 = 0.0;
      goto LABEL_77;
    }
  }

  else
  {
    HIDWORD(v303) = 0;
  }

LABEL_950:
  v172 = __sb__runningInSpringBoard();
  if (!v172)
  {
    v287 = [MEMORY[0x277D75418] currentDevice];
    if ([v287 userInterfaceIdiom])
    {
      v302 = 0;
      LODWORD(v303) = 1;
      goto LABEL_970;
    }

LABEL_966:
    LODWORD(v303) = v172 ^ 1;
    v176 = __sb__runningInSpringBoard();
    if (v176)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v187 = [MEMORY[0x277D759A0] mainScreen];
      [v187 _referenceBounds];
    }

    v302 = v176 ^ 1;
    BSSizeRoundForScale();
    if (v177 >= *(MEMORY[0x277D66E30] + 56))
    {
      goto LABEL_973;
    }

    goto LABEL_970;
  }

  if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
  {
    goto LABEL_966;
  }

  LODWORD(v303) = 0;
  v302 = 0;
LABEL_970:
  v178 = __sb__runningInSpringBoard();
  if (v178)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
LABEL_973:
      v331 = 0;
      v30 = 0.0;
      goto LABEL_77;
    }
  }

  else
  {
    v188 = [MEMORY[0x277D75418] currentDevice];
    if ([v188 userInterfaceIdiom])
    {
      v331 = 0x100000000;
      v30 = 0.0;
      goto LABEL_77;
    }
  }

  HIDWORD(v331) = v178 ^ 1;
  v184 = __sb__runningInSpringBoard();
  if (v184)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v186 = [MEMORY[0x277D759A0] mainScreen];
    [v186 _referenceBounds];
  }

  LODWORD(v331) = v184 ^ 1;
  BSSizeRoundForScale();
  v30 = 0.0;
LABEL_77:
  v44 = __sb__runningInSpringBoard();
  if (v44)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v45 = 0;
      v46 = 0;
      goto LABEL_86;
    }
  }

  else
  {
    v283 = [MEMORY[0x277D75418] currentDevice];
    if ([v283 userInterfaceIdiom] != 1)
    {
      v46 = 0;
      v45 = 1;
      goto LABEL_86;
    }
  }

  v45 = v44 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v47 = __sb__runningInSpringBoard();
    if (v47)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v266 = [MEMORY[0x277D759A0] mainScreen];
      [v266 _referenceBounds];
    }

    v46 = v47 ^ 1;
    BSSizeRoundForScale();
    if (v64 == *(MEMORY[0x277D66E30] + 288) && v63 == *(MEMORY[0x277D66E30] + 296))
    {
      v329 = v47 ^ 1;
      v330 = v45;
      v328 = 0;
      v327 = 0;
      v326 = 0;
      v325 = 0;
      v324 = 0;
      v323 = 0;
      v322 = 0;
      v321 = 0;
      v320 = 0;
      v319 = 0;
      v318 = 0;
      v301 = 0;
      v317 = 0;
      v316 = 0;
      v315 = 0;
      v314 = 0;
      v313 = 0;
      v312 = 0;
      v311 = 0;
      v310 = 0;
      v300 = 0;
      v309 = 0;
      v295 = 0;
      v294 = 0;
      v308 = 0;
      v299 = 0;
      v298 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v32 = 0.0;
      goto LABEL_140;
    }
  }

  else
  {
    v46 = 0;
  }

LABEL_86:
  v48 = __sb__runningInSpringBoard();
  v330 = v45;
  v329 = v46;
  if (v48)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v2 = 0;
      v3 = 0;
      goto LABEL_95;
    }
  }

  else
  {
    v281 = [MEMORY[0x277D75418] currentDevice];
    if ([v281 userInterfaceIdiom] != 1)
    {
      v3 = 0;
      v2 = 1;
      goto LABEL_95;
    }
  }

  v2 = v48 ^ 1u;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v47 = __sb__runningInSpringBoard();
    if (v47)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v265 = [MEMORY[0x277D759A0] mainScreen];
      [v265 _referenceBounds];
    }

    v3 = v47 ^ 1;
    BSSizeRoundForScale();
    if (v65 >= *(MEMORY[0x277D66E30] + 440))
    {
      v328 = __PAIR64__(v2, v3);
      v327 = 0;
      v326 = 0;
      v325 = 0;
      v324 = 0;
      v323 = 0;
      v322 = 0;
      v321 = 0;
      v320 = 0;
      v319 = 0;
      v318 = 0;
      v301 = 0;
      v317 = 0;
      v316 = 0;
      v315 = 0;
      v314 = 0;
      v313 = 0;
      v312 = 0;
      v311 = 0;
      v310 = 0;
      v300 = 0;
      v309 = 0;
      v295 = 0;
      v294 = 0;
      v308 = 0;
      v299 = 0;
      v298 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v32 = 0.0;
      goto LABEL_140;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_95:
  v49 = __sb__runningInSpringBoard();
  v328 = __PAIR64__(v2, v3);
  if (v49)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v50 = 0;
      v51 = 0;
      goto LABEL_104;
    }
  }

  else
  {
    v279 = [MEMORY[0x277D75418] currentDevice];
    if ([v279 userInterfaceIdiom] != 1)
    {
      v51 = 0;
      v50 = 1;
      goto LABEL_104;
    }
  }

  v50 = v49 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v47 = __sb__runningInSpringBoard();
    if (v47)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v263 = [MEMORY[0x277D759A0] mainScreen];
      [v263 _referenceBounds];
    }

    v51 = v47 ^ 1;
    BSSizeRoundForScale();
    if (v66 >= *(MEMORY[0x277D66E30] + 376))
    {
      LODWORD(v327) = v47 ^ 1;
      HIDWORD(v327) = v50;
      v326 = 0;
      v325 = 0;
      v324 = 0;
      v323 = 0;
      v322 = 0;
      v321 = 0;
      v320 = 0;
      v319 = 0;
      v318 = 0;
      v301 = 0;
      v317 = 0;
      v316 = 0;
      v315 = 0;
      v314 = 0;
      v313 = 0;
      v312 = 0;
      v311 = 0;
      v310 = 0;
      v300 = 0;
      v309 = 0;
      v295 = 0;
      v294 = 0;
      v308 = 0;
      v299 = 0;
      v298 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v32 = 0.0;
      goto LABEL_140;
    }
  }

  else
  {
    v51 = 0;
  }

LABEL_104:
  v52 = __sb__runningInSpringBoard();
  v327 = __PAIR64__(v50, v51);
  if (v52)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v53 = 0;
      v54 = 0;
      goto LABEL_113;
    }
  }

  else
  {
    v277 = [MEMORY[0x277D75418] currentDevice];
    if ([v277 userInterfaceIdiom] != 1)
    {
      v54 = 0;
      v53 = 1;
      goto LABEL_113;
    }
  }

  v53 = v52 ^ 1;
  v47 = __sb__runningInSpringBoard();
  if (v47)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v271 = [MEMORY[0x277D759A0] mainScreen];
    [v271 _referenceBounds];
  }

  v54 = v47 ^ 1;
  BSSizeRoundForScale();
  if (v55 >= *(MEMORY[0x277D66E30] + 280))
  {
    v326 = __PAIR64__(v53, v54);
    v325 = 0;
    v324 = 0;
    v323 = 0;
    v322 = 0;
    v321 = 0;
    v320 = 0;
    v319 = 0;
    v318 = 0;
    v301 = 0;
    v317 = 0;
    v316 = 0;
    v315 = 0;
    v314 = 0;
    v313 = 0;
    v312 = 0;
    v311 = 0;
    v310 = 0;
    v300 = 0;
    v309 = 0;
    v295 = 0;
    v294 = 0;
    v308 = 0;
    v299 = 0;
    v298 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v32 = 0.0;
    goto LABEL_140;
  }

LABEL_113:
  v56 = __sb__runningInSpringBoard();
  v326 = __PAIR64__(v53, v54);
  if (v56)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v325 = 0;
      goto LABEL_123;
    }
  }

  else
  {
    v275 = [MEMORY[0x277D75418] currentDevice];
    if ([v275 userInterfaceIdiom] != 1)
    {
      v325 = 0x100000000;
      goto LABEL_123;
    }
  }

  HIDWORD(v325) = v56 ^ 1;
  v47 = __sb__runningInSpringBoard();
  if (v47)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v267 = [MEMORY[0x277D759A0] mainScreen];
    [v267 _referenceBounds];
  }

  LODWORD(v325) = v47 ^ 1;
  BSSizeRoundForScale();
  if (v61 >= *(MEMORY[0x277D66E30] + 264))
  {
    v324 = 0;
    v323 = 0;
    v322 = 0;
    v321 = 0;
    v320 = 0;
    v319 = 0;
    v318 = 0;
    v301 = 0;
    v317 = 0;
    v316 = 0;
    v315 = 0;
    v314 = 0;
    v313 = 0;
    v312 = 0;
    v311 = 0;
    v310 = 0;
    v300 = 0;
    v309 = 0;
    v295 = 0;
    v294 = 0;
    v308 = 0;
    v299 = 0;
    v298 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v32 = 0.0;
    goto LABEL_140;
  }

LABEL_123:
  v62 = __sb__runningInSpringBoard();
  if (!v62)
  {
    v273 = [MEMORY[0x277D75418] currentDevice];
    if ([v273 userInterfaceIdiom] != 1)
    {
      v324 = 0x100000000;
      goto LABEL_375;
    }

LABEL_127:
    HIDWORD(v324) = v62 ^ 1;
    v47 = __sb__runningInSpringBoard();
    if (v47)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v261 = [MEMORY[0x277D759A0] mainScreen];
      [v261 _referenceBounds];
    }

    LODWORD(v324) = v47 ^ 1;
    BSSizeRoundForScale();
    if (v73 >= *(MEMORY[0x277D66E30] + 248))
    {
      v323 = 0;
      v322 = 0;
      v321 = 0;
      v320 = 0;
      v319 = 0;
      v318 = 0;
      v301 = 0;
      v317 = 0;
      v316 = 0;
      v315 = 0;
      v314 = 0;
      v313 = 0;
      v312 = 0;
      v311 = 0;
      v310 = 0;
      v300 = 0;
      v309 = 0;
      v295 = 0;
      v294 = 0;
      v308 = 0;
      v299 = 0;
      v298 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v32 = 0.0;
      goto LABEL_140;
    }

    goto LABEL_375;
  }

  if (SBFEffectiveDeviceClass() == 2)
  {
    goto LABEL_127;
  }

  v324 = 0;
LABEL_375:
  v47 = __sb__runningInSpringBoard();
  if (v47)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_377;
    }
  }

  else
  {
    v269 = [MEMORY[0x277D75418] currentDevice];
    if ([v269 userInterfaceIdiom] != 1)
    {
LABEL_377:
      HIDWORD(v323) = v47 ^ 1;
      if (!_SBF_Private_IsD94Like())
      {
LABEL_381:
        LODWORD(v323) = 0;
        HIDWORD(v322) = 0;
        goto LABEL_406;
      }

      v74 = __sb__runningInSpringBoard();
      if (v74)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          goto LABEL_381;
        }
      }

      else
      {
        v257 = [MEMORY[0x277D75418] currentDevice];
        if ([v257 userInterfaceIdiom])
        {
          HIDWORD(v322) = 0;
          LODWORD(v323) = 1;
          goto LABEL_406;
        }
      }

      LODWORD(v323) = v74 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        v78 = __sb__runningInSpringBoard();
        if (v78)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v242 = [MEMORY[0x277D759A0] mainScreen];
          [v242 _referenceBounds];
        }

        v47 = v78 ^ 1u;
        BSSizeRoundForScale();
        HIDWORD(v322) = v47;
        if (v86 >= *(MEMORY[0x277D66E30] + 200))
        {
          LODWORD(v322) = 0;
          v321 = 0;
          v320 = 0;
          v319 = 0;
          v318 = 0;
          v301 = 0;
          v317 = 0;
          v316 = 0;
          v315 = 0;
          v314 = 0;
          v313 = 0;
          v312 = 0;
          v311 = 0;
          v310 = 0;
          v300 = 0;
          v309 = 0;
          v295 = 0;
          v294 = 0;
          v308 = 0;
          v299 = 0;
          v298 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v32 = 579.66666;
          goto LABEL_140;
        }
      }

      else
      {
        HIDWORD(v322) = 0;
      }

LABEL_406:
      v47 = __sb__runningInSpringBoard();
      if (v47)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          LODWORD(v322) = 0;
          HIDWORD(v321) = 0;
          goto LABEL_416;
        }
      }

      else
      {
        v259 = [MEMORY[0x277D75418] currentDevice];
        if ([v259 userInterfaceIdiom])
        {
          HIDWORD(v321) = 0;
          LODWORD(v322) = 1;
          goto LABEL_416;
        }
      }

      LODWORD(v322) = v47 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        v47 = __sb__runningInSpringBoard();
        if (v47)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v249 = [MEMORY[0x277D759A0] mainScreen];
          [v249 _referenceBounds];
        }

        HIDWORD(v321) = v47 ^ 1;
        BSSizeRoundForScale();
        if (v79 >= *(MEMORY[0x277D66E30] + 200))
        {
          goto LABEL_420;
        }
      }

      else
      {
        HIDWORD(v321) = 0;
      }

LABEL_416:
      if (_SBF_Private_IsD94Like())
      {
        LODWORD(v321) = 0;
        v320 = 0;
        v319 = 0;
        v318 = 0;
        v301 = 0;
        v317 = 0;
        v316 = 0;
        v315 = 0;
        v314 = 0;
        v313 = 0;
        v312 = 0;
        v311 = 0;
        v310 = 0;
        v300 = 0;
        v309 = 0;
        v295 = 0;
        v294 = 0;
        v308 = 0;
        v299 = 0;
        v298 = 0;
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v32 = 507.66666;
        goto LABEL_140;
      }

LABEL_420:
      if (!_SBF_Private_IsD64Like())
      {
LABEL_424:
        LODWORD(v321) = 0;
        HIDWORD(v320) = 0;
        goto LABEL_462;
      }

      v80 = __sb__runningInSpringBoard();
      if (v80)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          goto LABEL_424;
        }
      }

      else
      {
        v251 = [MEMORY[0x277D75418] currentDevice];
        if ([v251 userInterfaceIdiom])
        {
          HIDWORD(v320) = 0;
          LODWORD(v321) = 1;
          goto LABEL_462;
        }
      }

      LODWORD(v321) = v80 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        v47 = __sb__runningInSpringBoard();
        if (v47)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v54 = [MEMORY[0x277D759A0] mainScreen];
          [v54 _referenceBounds];
        }

        v246 = v54;
        HIDWORD(v320) = v47 ^ 1;
        BSSizeRoundForScale();
        if (v102 >= *(MEMORY[0x277D66E30] + 136))
        {
          LODWORD(v320) = 0;
          v319 = 0;
          v318 = 0;
          v301 = 0;
          v317 = 0;
          v316 = 0;
          v315 = 0;
          v314 = 0;
          v313 = 0;
          v312 = 0;
          v311 = 0;
          v310 = 0;
          v300 = 0;
          v309 = 0;
          v295 = 0;
          v294 = 0;
          v308 = 0;
          v299 = 0;
          v298 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v32 = 565.0;
          goto LABEL_140;
        }
      }

      else
      {
        HIDWORD(v320) = 0;
      }

LABEL_462:
      v47 = __sb__runningInSpringBoard();
      if (v47)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          LODWORD(v320) = 0;
          HIDWORD(v319) = 0;
          goto LABEL_472;
        }
      }

      else
      {
        v255 = [MEMORY[0x277D75418] currentDevice];
        if ([v255 userInterfaceIdiom])
        {
          HIDWORD(v319) = 0;
          LODWORD(v320) = 1;
          goto LABEL_472;
        }
      }

      LODWORD(v320) = v47 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        v47 = __sb__runningInSpringBoard();
        if (v47)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v240 = [MEMORY[0x277D759A0] mainScreen];
          [v240 _referenceBounds];
        }

        HIDWORD(v319) = v47 ^ 1;
        BSSizeRoundForScale();
        if (v88 >= *(MEMORY[0x277D66E30] + 136))
        {
          goto LABEL_476;
        }
      }

      else
      {
        HIDWORD(v319) = 0;
      }

LABEL_472:
      if (_SBF_Private_IsD64Like())
      {
        LODWORD(v319) = 0;
        v318 = 0;
        v301 = 0;
        v317 = 0;
        v316 = 0;
        v315 = 0;
        v314 = 0;
        v313 = 0;
        v312 = 0;
        v311 = 0;
        v310 = 0;
        v300 = 0;
        v309 = 0;
        v295 = 0;
        v294 = 0;
        v308 = 0;
        v299 = 0;
        v298 = 0;
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v32 = 495.0;
        goto LABEL_140;
      }

LABEL_476:
      v89 = __sb__runningInSpringBoard();
      if (v89)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          LODWORD(v319) = 0;
          HIDWORD(v318) = 0;
          goto LABEL_486;
        }
      }

      else
      {
        v252 = [MEMORY[0x277D75418] currentDevice];
        if ([v252 userInterfaceIdiom])
        {
          HIDWORD(v318) = 0;
          LODWORD(v319) = 1;
          goto LABEL_486;
        }
      }

      LODWORD(v319) = v89 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        v90 = __sb__runningInSpringBoard();
        if (v90)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v234 = [MEMORY[0x277D759A0] mainScreen];
          [v234 _referenceBounds];
        }

        v47 = v90 ^ 1u;
        BSSizeRoundForScale();
        HIDWORD(v318) = v47;
        if (v100 >= *(MEMORY[0x277D66E30] + 136))
        {
          LODWORD(v318) = 0;
          v301 = 0;
          v317 = 0;
          v316 = 0;
          v315 = 0;
          v314 = 0;
          v313 = 0;
          v312 = 0;
          v311 = 0;
          v310 = 0;
          v300 = 0;
          v309 = 0;
          v295 = 0;
          v294 = 0;
          v308 = 0;
          v299 = 0;
          v298 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v32 = 565.0;
          goto LABEL_140;
        }
      }

      else
      {
        HIDWORD(v318) = 0;
      }

LABEL_486:
      v47 = __sb__runningInSpringBoard();
      if (v47)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          LODWORD(v318) = 0;
          v301 = 0;
          goto LABEL_530;
        }
      }

      else
      {
        v247 = [MEMORY[0x277D75418] currentDevice];
        if ([v247 userInterfaceIdiom])
        {
          v301 = 0;
          LODWORD(v318) = 1;
          goto LABEL_530;
        }
      }

      LODWORD(v318) = v47 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        v47 = __sb__runningInSpringBoard();
        if (v47)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v231 = [MEMORY[0x277D759A0] mainScreen];
          [v231 _referenceBounds];
        }

        v301 = v47 ^ 1;
        BSSizeRoundForScale();
        if (v104 >= *(MEMORY[0x277D66E30] + 136))
        {
          goto LABEL_552;
        }
      }

      else
      {
        v301 = 0;
      }

LABEL_530:
      if (_SBF_Private_IsD54())
      {
        v317 = 0;
        v316 = 0;
        v315 = 0;
        v314 = 0;
        v313 = 0;
        v312 = 0;
        v311 = 0;
        v310 = 0;
        v300 = 0;
        v309 = 0;
        v295 = 0;
        v294 = 0;
        v308 = 0;
        v299 = 0;
        v298 = 0;
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v32 = 495.0;
        goto LABEL_140;
      }

LABEL_552:
      v105 = __sb__runningInSpringBoard();
      if (v105)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          v106 = 0;
          LODWORD(v317) = 0;
          goto LABEL_570;
        }
      }

      else
      {
        v244 = [MEMORY[0x277D75418] currentDevice];
        if ([v244 userInterfaceIdiom])
        {
          LODWORD(v317) = 0;
          v106 = 1;
          goto LABEL_570;
        }
      }

      v106 = v105 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        v109 = __sb__runningInSpringBoard();
        if (v109)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v224 = [MEMORY[0x277D759A0] mainScreen];
          [v224 _referenceBounds];
        }

        v47 = v109 ^ 1u;
        BSSizeRoundForScale();
        LODWORD(v317) = v47;
        if (v113 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
        {
          HIDWORD(v317) = v106;
          v316 = 0;
          v315 = 0;
          v314 = 0;
          v313 = 0;
          v312 = 0;
          v311 = 0;
          v310 = 0;
          v300 = 0;
          v309 = 0;
          v295 = 0;
          v294 = 0;
          v308 = 0;
          v299 = 0;
          v298 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v32 = 0.0;
          goto LABEL_140;
        }
      }

      else
      {
        LODWORD(v317) = 0;
      }

LABEL_570:
      v47 = __sb__runningInSpringBoard();
      HIDWORD(v317) = v106;
      if (v47)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          v316 = 0;
          goto LABEL_590;
        }
      }

      else
      {
        v238 = [MEMORY[0x277D75418] currentDevice];
        if ([v238 userInterfaceIdiom])
        {
          v316 = 0x100000000;
          goto LABEL_590;
        }
      }

      HIDWORD(v316) = v47 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        v47 = __sb__runningInSpringBoard();
        if (v47)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v222 = [MEMORY[0x277D759A0] mainScreen];
          [v222 _referenceBounds];
        }

        LODWORD(v316) = v47 ^ 1;
        BSSizeRoundForScale();
        if (v115 >= *(MEMORY[0x277D66E30] + 120))
        {
          goto LABEL_610;
        }
      }

      else
      {
        LODWORD(v316) = 0;
      }

LABEL_590:
      if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
      {
        v315 = 0;
        v314 = 0;
        v313 = 0;
        v312 = 0;
        v311 = 0;
        v310 = 0;
        v300 = 0;
        v309 = 0;
        v295 = 0;
        v294 = 0;
        v308 = 0;
        v299 = 0;
        v298 = 0;
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v32 = 0.0;
        goto LABEL_140;
      }

LABEL_610:
      if (!_SBF_Private_IsD93Like())
      {
LABEL_614:
        v315 = 0;
        goto LABEL_630;
      }

      v116 = __sb__runningInSpringBoard();
      if (v116)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          goto LABEL_614;
        }
      }

      else
      {
        v229 = [MEMORY[0x277D75418] currentDevice];
        if ([v229 userInterfaceIdiom])
        {
          v315 = 0x100000000;
          goto LABEL_630;
        }
      }

      HIDWORD(v315) = v116 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        v119 = __sb__runningInSpringBoard();
        if (v119)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v211 = [MEMORY[0x277D759A0] mainScreen];
          [v211 _referenceBounds];
        }

        v47 = v119 ^ 1u;
        BSSizeRoundForScale();
        LODWORD(v315) = v47;
        if (v127 >= *(MEMORY[0x277D66E30] + 184))
        {
          v314 = 0;
          v313 = 0;
          v312 = 0;
          v311 = 0;
          v310 = 0;
          v300 = 0;
          v309 = 0;
          v295 = 0;
          v294 = 0;
          v308 = 0;
          v299 = 0;
          v298 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v32 = 579.0;
          goto LABEL_140;
        }
      }

      else
      {
        LODWORD(v315) = 0;
      }

LABEL_630:
      v47 = __sb__runningInSpringBoard();
      if (v47)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          v314 = 0;
          goto LABEL_640;
        }
      }

      else
      {
        v236 = [MEMORY[0x277D75418] currentDevice];
        if ([v236 userInterfaceIdiom])
        {
          v314 = 0x100000000;
          goto LABEL_640;
        }
      }

      HIDWORD(v314) = v47 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        v47 = __sb__runningInSpringBoard();
        if (v47)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v217 = [MEMORY[0x277D759A0] mainScreen];
          [v217 _referenceBounds];
        }

        LODWORD(v314) = v47 ^ 1;
        BSSizeRoundForScale();
        if (v120 >= *(MEMORY[0x277D66E30] + 184))
        {
          goto LABEL_644;
        }
      }

      else
      {
        LODWORD(v314) = 0;
      }

LABEL_640:
      if (_SBF_Private_IsD93Like())
      {
        v313 = 0;
        v312 = 0;
        v311 = 0;
        v310 = 0;
        v300 = 0;
        v309 = 0;
        v295 = 0;
        v294 = 0;
        v308 = 0;
        v299 = 0;
        v298 = 0;
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v32 = 475.0;
        goto LABEL_140;
      }

LABEL_644:
      if (!_SBF_Private_IsD63Like())
      {
LABEL_648:
        v313 = 0;
        goto LABEL_686;
      }

      v121 = __sb__runningInSpringBoard();
      if (v121)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          goto LABEL_648;
        }
      }

      else
      {
        v221 = [MEMORY[0x277D75418] currentDevice];
        if ([v221 userInterfaceIdiom])
        {
          v313 = 0x100000000;
          goto LABEL_686;
        }
      }

      HIDWORD(v313) = v121 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        v47 = __sb__runningInSpringBoard();
        if (v47)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v203 = [MEMORY[0x277D759A0] mainScreen];
          [v203 _referenceBounds];
        }

        LODWORD(v313) = v47 ^ 1;
        BSSizeRoundForScale();
        if (v136 >= *(MEMORY[0x277D66E30] + 104))
        {
          v312 = 0;
          v311 = 0;
          v310 = 0;
          v300 = 0;
          v309 = 0;
          v295 = 0;
          v294 = 0;
          v308 = 0;
          v299 = 0;
          v298 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v32 = 567.0;
          goto LABEL_140;
        }
      }

      else
      {
        LODWORD(v313) = 0;
      }

LABEL_686:
      v47 = __sb__runningInSpringBoard();
      if (v47)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          v312 = 0;
          goto LABEL_696;
        }
      }

      else
      {
        v227 = [MEMORY[0x277D75418] currentDevice];
        if ([v227 userInterfaceIdiom])
        {
          v312 = 0x100000000;
          goto LABEL_696;
        }
      }

      HIDWORD(v312) = v47 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        v47 = __sb__runningInSpringBoard();
        if (v47)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v209 = [MEMORY[0x277D759A0] mainScreen];
          [v209 _referenceBounds];
        }

        LODWORD(v312) = v47 ^ 1;
        BSSizeRoundForScale();
        if (v129 >= *(MEMORY[0x277D66E30] + 104))
        {
          goto LABEL_700;
        }
      }

      else
      {
        LODWORD(v312) = 0;
      }

LABEL_696:
      if (_SBF_Private_IsD63Like())
      {
        v311 = 0;
        v310 = 0;
        v300 = 0;
        v309 = 0;
        v295 = 0;
        v294 = 0;
        v308 = 0;
        v299 = 0;
        v298 = 0;
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v32 = 465.33333;
        goto LABEL_140;
      }

LABEL_700:
      if (!_SBF_Private_IsD23Like())
      {
LABEL_704:
        v311 = 0;
        goto LABEL_742;
      }

      v130 = __sb__runningInSpringBoard();
      if (v130)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          goto LABEL_704;
        }
      }

      else
      {
        v213 = [MEMORY[0x277D75418] currentDevice];
        if ([v213 userInterfaceIdiom])
        {
          v311 = 0x100000000;
          goto LABEL_742;
        }
      }

      HIDWORD(v311) = v130 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        v138 = __sb__runningInSpringBoard();
        if (v138)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v195 = [MEMORY[0x277D759A0] mainScreen];
          [v195 _referenceBounds];
        }

        v47 = v138 ^ 1u;
        BSSizeRoundForScale();
        LODWORD(v311) = v47;
        if (v151 >= *(MEMORY[0x277D66E30] + 216))
        {
          v310 = 0;
          v300 = 0;
          v309 = 0;
          v295 = 0;
          v294 = 0;
          v308 = 0;
          v299 = 0;
          v298 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v32 = 563.0;
          goto LABEL_140;
        }
      }

      else
      {
        LODWORD(v311) = 0;
      }

LABEL_742:
      v47 = __sb__runningInSpringBoard();
      if (v47)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          HIDWORD(v310) = 0;
          HIDWORD(v300) = 0;
          goto LABEL_752;
        }
      }

      else
      {
        v219 = [MEMORY[0x277D75418] currentDevice];
        if ([v219 userInterfaceIdiom])
        {
          HIDWORD(v300) = 0;
          HIDWORD(v310) = 1;
          goto LABEL_752;
        }
      }

      HIDWORD(v310) = v47 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        v47 = __sb__runningInSpringBoard();
        if (v47)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v201 = [MEMORY[0x277D759A0] mainScreen];
          [v201 _referenceBounds];
        }

        HIDWORD(v300) = v47 ^ 1;
        BSSizeRoundForScale();
        if (v139 >= *(MEMORY[0x277D66E30] + 216))
        {
          goto LABEL_756;
        }
      }

      else
      {
        HIDWORD(v300) = 0;
      }

LABEL_752:
      if (_SBF_Private_IsD23Like())
      {
        LODWORD(v310) = 0;
        v309 = 0;
        v295 = 0;
        v294 = 0;
        v308 = 0;
        LODWORD(v300) = 0;
        v299 = 0;
        v298 = 0;
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v32 = 496.0;
        goto LABEL_140;
      }

LABEL_756:
      v140 = __sb__runningInSpringBoard();
      if (v140)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          LODWORD(v310) = 0;
          HIDWORD(v309) = 0;
          goto LABEL_766;
        }
      }

      else
      {
        v215 = [MEMORY[0x277D75418] currentDevice];
        if ([v215 userInterfaceIdiom])
        {
          HIDWORD(v309) = 0;
          LODWORD(v310) = 1;
          goto LABEL_766;
        }
      }

      LODWORD(v310) = v140 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        v47 = __sb__runningInSpringBoard();
        if (v47)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v197 = [MEMORY[0x277D759A0] mainScreen];
          [v197 _referenceBounds];
        }

        HIDWORD(v309) = v47 ^ 1;
        BSSizeRoundForScale();
        if (v149 >= *(MEMORY[0x277D66E30] + 120))
        {
          v295 = 0;
          v294 = 0;
          LODWORD(v309) = 0;
          v308 = 0;
          LODWORD(v300) = 0;
          v299 = 0;
          v298 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v32 = 0.0;
          goto LABEL_140;
        }
      }

      else
      {
        HIDWORD(v309) = 0;
      }

LABEL_766:
      v47 = __sb__runningInSpringBoard();
      if (v47)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          v295 = 0;
          v294 = 0;
          goto LABEL_810;
        }
      }

      else
      {
        v207 = [MEMORY[0x277D75418] currentDevice];
        if ([v207 userInterfaceIdiom])
        {
          v294 = 0;
          v295 = 1;
          goto LABEL_810;
        }
      }

      v295 = v47 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        v47 = __sb__runningInSpringBoard();
        if (v47)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v193 = [MEMORY[0x277D759A0] mainScreen];
          [v193 _referenceBounds];
        }

        v294 = v47 ^ 1;
        BSSizeRoundForScale();
        if (v153 >= *(MEMORY[0x277D66E30] + 120))
        {
          goto LABEL_832;
        }
      }

      else
      {
        v294 = 0;
      }

LABEL_810:
      if (_SBF_Private_IsD33OrSimilarDevice())
      {
        LODWORD(v309) = 0;
        v308 = 0;
        LODWORD(v300) = 0;
        v299 = 0;
        v298 = 0;
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v32 = 0.0;
        goto LABEL_140;
      }

LABEL_832:
      v154 = __sb__runningInSpringBoard();
      if (v154)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          LODWORD(v309) = 0;
          HIDWORD(v308) = 0;
          goto LABEL_850;
        }
      }

      else
      {
        v205 = [MEMORY[0x277D75418] currentDevice];
        if ([v205 userInterfaceIdiom])
        {
          HIDWORD(v308) = 0;
          LODWORD(v309) = 1;
          goto LABEL_850;
        }
      }

      LODWORD(v309) = v154 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        v47 = __sb__runningInSpringBoard();
        if (v47)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v192 = [MEMORY[0x277D759A0] mainScreen];
          [v192 _referenceBounds];
        }

        HIDWORD(v308) = v47 ^ 1;
        BSSizeRoundForScale();
        if (v161 >= *(MEMORY[0x277D66E30] + 104))
        {
          LODWORD(v308) = 0;
          LODWORD(v300) = 0;
          v299 = 0;
          v298 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v32 = 567.33;
          goto LABEL_140;
        }
      }

      else
      {
        HIDWORD(v308) = 0;
      }

LABEL_850:
      v47 = __sb__runningInSpringBoard();
      if (v47)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          LODWORD(v308) = 0;
          LODWORD(v300) = 0;
          goto LABEL_870;
        }
      }

      else
      {
        v199 = [MEMORY[0x277D75418] currentDevice];
        if ([v199 userInterfaceIdiom])
        {
          LODWORD(v300) = 0;
          LODWORD(v308) = 1;
          goto LABEL_870;
        }
      }

      LODWORD(v308) = v47 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        v47 = __sb__runningInSpringBoard();
        if (v47)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v191 = [MEMORY[0x277D759A0] mainScreen];
          [v191 _referenceBounds];
        }

        LODWORD(v300) = v47 ^ 1;
        BSSizeRoundForScale();
        if (v163 >= *(MEMORY[0x277D66E30] + 104))
        {
LABEL_886:
          v47 = &off_21EC94000;
          if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
          {
            goto LABEL_891;
          }

          if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
          {
            goto LABEL_893;
          }

          if (_SBF_Private_IsD52OrSimilarDevice())
          {
LABEL_891:
            v299 = 0;
            v298 = 0;
            v57 = 0;
            v58 = 0;
            v59 = 0;
            v60 = 0;
            v32 = 600.0;
            goto LABEL_140;
          }

          if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
          {
LABEL_893:
            v299 = 0;
            v298 = 0;
            v57 = 0;
            v58 = 0;
            v59 = 0;
            v60 = 0;
            v32 = 513.666666;
            goto LABEL_140;
          }

          v165 = __sb__runningInSpringBoard();
          if (v165)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              v299 = 0;
              goto LABEL_920;
            }
          }

          else
          {
            v190 = [MEMORY[0x277D75418] currentDevice];
            if ([v190 userInterfaceIdiom])
            {
              v299 = 0x100000000;
              goto LABEL_920;
            }
          }

          HIDWORD(v299) = v165 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            v47 = __sb__runningInSpringBoard();
            if (v47)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v185 = [MEMORY[0x277D759A0] mainScreen];
              [v185 _referenceBounds];
            }

            LODWORD(v299) = v47 ^ 1;
            BSSizeRoundForScale();
            if (v179 >= *(MEMORY[0x277D66E30] + 88))
            {
              v298 = 0;
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v32 = 0.0;
              goto LABEL_140;
            }
          }

          else
          {
            LODWORD(v299) = 0;
          }

LABEL_920:
          v47 = __sb__runningInSpringBoard();
          if (v47)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              v298 = 0;
              v57 = 0;
              goto LABEL_940;
            }
          }

          else
          {
            v189 = [MEMORY[0x277D75418] currentDevice];
            if ([v189 userInterfaceIdiom])
            {
              v57 = 0;
              v298 = 1;
              goto LABEL_940;
            }
          }

          v298 = v47 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            v169 = __sb__runningInSpringBoard();
            if (v169)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v47 = [MEMORY[0x277D759A0] mainScreen];
              [v47 _referenceBounds];
            }

            v57 = v169 ^ 1;
            BSSizeRoundForScale();
            if (v181 >= *(MEMORY[0x277D66E30] + 72))
            {
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v32 = 0.0;
              goto LABEL_140;
            }
          }

          else
          {
            v57 = 0;
          }

LABEL_940:
          v170 = __sb__runningInSpringBoard();
          if (v170)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              v58 = 0;
              v59 = 0;
              goto LABEL_960;
            }
          }

          else
          {
            v3 = [MEMORY[0x277D75418] currentDevice];
            if ([v3 userInterfaceIdiom])
            {
              v59 = 0;
              v58 = 1;
              goto LABEL_960;
            }
          }

          v58 = v170 ^ 1;
          v173 = __sb__runningInSpringBoard();
          if (v173)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v2 = [MEMORY[0x277D759A0] mainScreen];
            [v2 _referenceBounds];
          }

          v59 = v173 ^ 1;
          BSSizeRoundForScale();
          if (v174 >= *(MEMORY[0x277D66E30] + 56))
          {
            goto LABEL_963;
          }

LABEL_960:
          v175 = __sb__runningInSpringBoard();
          if (v175)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
LABEL_963:
              v60 = 0;
              v32 = 0.0;
              goto LABEL_140;
            }
          }

          else
          {
            v11 = [MEMORY[0x277D75418] currentDevice];
            if ([v11 userInterfaceIdiom])
            {
              v32 = 0.0;
              v60 = 1;
              goto LABEL_140;
            }
          }

          v60 = v175 ^ 1;
          v183 = __sb__runningInSpringBoard();
          if (v183)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v175 = [MEMORY[0x277D759A0] mainScreen];
            [v175 _referenceBounds];
          }

          BSSizeRoundForScale();
          v32 = 0.0;
          if (v183 != 1)
          {
          }

          goto LABEL_140;
        }
      }

      else
      {
        LODWORD(v300) = 0;
      }

LABEL_870:
      if (_SBF_Private_IsD53())
      {
        v299 = 0;
        v298 = 0;
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v32 = 465.33333;
        goto LABEL_140;
      }

      goto LABEL_886;
    }
  }

  LODWORD(v323) = 0;
  v322 = 0;
  v321 = 0;
  v320 = 0;
  v319 = 0;
  v318 = 0;
  v301 = 0;
  v317 = 0;
  v316 = 0;
  v315 = 0;
  v314 = 0;
  v313 = 0;
  v312 = 0;
  v311 = 0;
  v310 = 0;
  v300 = 0;
  v309 = 0;
  v295 = 0;
  v294 = 0;
  v308 = 0;
  v299 = 0;
  v298 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v32 = 0.0;
  HIDWORD(v323) = v47 ^ 1;
LABEL_140:
  if (v60)
  {
  }

  if (v59)
  {
  }

  v4 = v348;
  if (v58)
  {
  }

  if (v57)
  {
  }

  if (v298)
  {
  }

  if (v299)
  {
  }

  if (HIDWORD(v299))
  {
  }

  if (v300)
  {
  }

  if (v308)
  {
  }

  if (HIDWORD(v308))
  {
  }

  if (v309)
  {
  }

  if (v294)
  {
  }

  if (v295)
  {
  }

  if (HIDWORD(v309))
  {
  }

  if (v310)
  {
  }

  if (HIDWORD(v300))
  {
  }

  if (HIDWORD(v310))
  {
  }

  if (v311)
  {
  }

  if (HIDWORD(v311))
  {
  }

  if (v312)
  {
  }

  if (HIDWORD(v312))
  {
  }

  if (v313)
  {
  }

  if (HIDWORD(v313))
  {
  }

  if (v314)
  {
  }

  if (HIDWORD(v314))
  {
  }

  if (v315)
  {
  }

  if (HIDWORD(v315))
  {
  }

  if (v316)
  {
  }

  if (HIDWORD(v316))
  {
  }

  if (v317)
  {
  }

  if (HIDWORD(v317))
  {
  }

  if (v301)
  {
  }

  if (v318)
  {
  }

  if (HIDWORD(v318))
  {
  }

  if (v319)
  {
  }

  if (HIDWORD(v319))
  {
  }

  if (v320)
  {
  }

  if (HIDWORD(v320))
  {
  }

  if (v321)
  {
  }

  if (HIDWORD(v321))
  {
  }

  if (v322)
  {
  }

  if (HIDWORD(v322))
  {
  }

  if (v323)
  {
  }

  if (HIDWORD(v323))
  {
  }

  if (v324)
  {
  }

  if (HIDWORD(v324))
  {
  }

  if (v325)
  {
  }

  if (HIDWORD(v325))
  {
  }

  if (v326)
  {
  }

  if (HIDWORD(v326))
  {
  }

  if (v327)
  {
  }

  if (HIDWORD(v327))
  {
  }

  if (v328)
  {
  }

  if (HIDWORD(v328))
  {
  }

  if (v329)
  {
  }

  if (v330)
  {
  }

  if (v331)
  {
  }

  if (HIDWORD(v331))
  {
  }

  if (v302)
  {
  }

  if (v303)
  {
  }

  if (HIDWORD(v303))
  {
  }

  if (v304)
  {
  }

  if (HIDWORD(v304))
  {
  }

  if (v305)
  {
  }

  if (HIDWORD(v305))
  {
  }

  if (v332)
  {
  }

  if (HIDWORD(v332))
  {
  }

  if (v333)
  {
  }

  if (v296)
  {
  }

  if (v297)
  {
  }

  if (HIDWORD(v333))
  {
  }

  if (v334)
  {
  }

  if (v306)
  {
  }

  if (HIDWORD(v334))
  {
  }

  if (v335)
  {
  }

  if (HIDWORD(v335))
  {
  }

  if (HIDWORD(v336))
  {
  }

  if (v336)
  {
  }

  if (HIDWORD(v337))
  {
  }

  if (v337)
  {
  }

  if (HIDWORD(v338))
  {
  }

  if (v338)
  {
  }

  if (HIDWORD(v339))
  {
  }

  if (v339)
  {
  }

  if (v340)
  {
  }

  if (DWORD1(v340))
  {
  }

  if (DWORD2(v340))
  {
  }

  if (HIDWORD(v340))
  {
  }

  if (v307)
  {
  }

  if (LODWORD(v341[0]))
  {
  }

  if (HIDWORD(v341[0]))
  {
  }

  if (LODWORD(v341[1]))
  {
  }

  if (HIDWORD(v341[1]))
  {
  }

  if (LODWORD(v341[2]))
  {
  }

  if (HIDWORD(v341[2]))
  {
  }

  if (LODWORD(v341[3]))
  {
  }

  if (HIDWORD(v341[3]))
  {
  }

  if (LODWORD(v341[4]))
  {
  }

  if (HIDWORD(v341[4]))
  {
  }

  if (LODWORD(v341[5]))
  {
  }

  if (HIDWORD(v341[5]))
  {
  }

  if (v342)
  {
  }

  if (HIDWORD(v342))
  {
  }

  if (v343)
  {
  }

  if (HIDWORD(v343))
  {
  }

  if (v344)
  {
  }

  if (HIDWORD(v344))
  {
  }

  if (v345)
  {
  }

  if (HIDWORD(v345))
  {
  }

  if (v346)
  {
  }

  if (HIDWORD(v346))
  {
  }

  if (v347)
  {
  }

  if (HIDWORD(v347))
  {
  }

LABEL_366:
  [(CSBatteryChargingRingView *)v4 _silhouetteBottomOffset];
  v68 = v67;
  [(CSBatteryChargingRingView *)v4 _silhouetteCornerRadius];
  if (v68 > 0.0)
  {
    v70 = -1;
  }

  else
  {
    v70 = 3;
  }

  v71 = [[CSMagSafeSilhouetteConfiguration alloc] initWithSize:v70 bottomOffset:v30 cornerRadius:v32 roundedCorners:v68, v69];

  return v71;
}

- (void)setBatteryVisible:(BOOL)a3
{
  chargingContainerView = self->_chargingContainerView;
  v5 = 0.0;
  if (a3)
  {
    v5 = 1.0;
  }

  [(UIView *)chargingContainerView setAlpha:v5];

  [(CSBatteryChargingRingView *)self setNeedsLayout];
}

- (int64_t)batteryCount
{
  if ([(CSBatteryChargingRingView *)self _isShowingAuxiliary])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (double)desiredVisibilityDuration
{
  v2 = [(CSBatteryChargingRingView *)self _isShowingAuxiliary];
  result = 3.65;
  if (v2)
  {
    return 4.75;
  }

  return result;
}

- (void)setLegibilitySettings:(id)a3
{
  v15.receiver = self;
  v15.super_class = CSBatteryChargingRingView;
  v4 = a3;
  [(CSBatteryChargingView *)&v15 setLegibilitySettings:v4];
  chargePercentLabel = self->_chargePercentLabel;
  v6 = [(CSBatteryChargingView *)self legibilitySettings:v15.receiver];
  [(SBUILegibilityLabel *)chargePercentLabel setLegibilitySettings:v6];

  auxiliaryBatteryLabel = self->_auxiliaryBatteryLabel;
  v8 = [(CSBatteryChargingView *)self legibilitySettings];
  [(SBUILegibilityLabel *)auxiliaryBatteryLabel setLegibilitySettings:v8];

  v9 = [v4 primaryColor];

  v10 = [v9 CGColor];
  if (![(CSBatteryChargingRingView *)self _isReduceMotionEnabled])
  {
    [(CALayer *)self->_splashRing setBackgroundColor:v10];
    [(CALayer *)self->_splashRing1 setBackgroundColor:v10];
    [(CALayer *)self->_splashRing3 setBackgroundColor:v10];
    [(CALayer *)self->_ringTempOverlayLayer setBorderColor:v10];
  }

  [(CSRingLayer *)self->_ringBlurLayer setStrokeColor:v10];
  [(CSRingLayer *)self->_trackFillRingLayer setStrokeColor:v10];
  v11 = +[CSLockScreenDomain rootSettings];
  v12 = [v11 chargingSettings];
  v13 = [v12 useWhimsicalDesign];

  if (v13)
  {
    v14 = [(UIView *)self->_auxiliaryBatteryPillTrackView layer];
    [v14 setBackgroundColor:v10];
  }

  else
  {
    [(CSRingLayer *)self->_auxiliaryBatteryTrackFillRingLayer setStrokeColor:v10];
  }
}

- (void)setSilhouette:(id)a3
{
  objc_storeStrong(&self->_silhouette, a3);
  v5 = a3;
  [(CSMagSafeSilhouetteConfiguration *)self->_silhouette cornerRadius];
  v6 = [MEMORY[0x277CD9ED0] ringLayerWithBlendMode:*MEMORY[0x277CDA5C0] cornerRadius:? borderWidth:?];

  [(CSBatteryChargingRingView *)self setSilhouetteLayer:v6];
}

- (void)setSilhouetteLayer:(id)a3
{
  v11 = a3;
  silhouetteLayer = self->_silhouetteLayer;
  [(CALayer *)silhouetteLayer removeFromSuperlayer];
  objc_storeStrong(&self->_silhouetteLayer, a3);
  [(CALayer *)self->_silhouetteLayer setCornerCurve:*MEMORY[0x277CDA138]];
  [(CSMagSafeSilhouetteConfiguration *)self->_silhouette bottomOffset];
  if (v6 == 0.0)
  {
    -[CALayer setMaskedCorners:](self->_silhouetteLayer, "setMaskedCorners:", -[CSMagSafeSilhouetteConfiguration roundedCornersMaskForOrientation:](self->_silhouette, "roundedCornersMaskForOrientation:", [*MEMORY[0x277D76620] activeInterfaceOrientation]));
  }

  [(CALayer *)self->_silhouetteLayer setOpacity:0.0];
  v7 = self->_silhouetteLayer;
  v8 = [MEMORY[0x277D75348] whiteColor];
  -[CALayer setBackgroundColor:](v7, "setBackgroundColor:", [v8 CGColor]);

  [(CALayer *)self->_silhouetteLayer setMasksToBounds:1];
  if (silhouetteLayer)
  {
    if ([(CSMagSafeAccessoryConfiguration *)self->_configuration staticViewNeeded])
    {
      LODWORD(v9) = 1041865114;
      [(CALayer *)self->_silhouetteLayer setOpacity:v9];
    }

    else
    {
      if ([(CSBatteryChargingRingView *)self _isShowingAuxiliary])
      {
        v10 = [(UIView *)self->_chargingContainerView layer];
        [v10 insertSublayer:self->_silhouetteLayer below:self->_auxiliaryBatteryContainerLayer];
      }

      if (![(CSBatteryChargingRingView *)self _isReduceMotionEnabled])
      {
        [(CALayer *)self->_silhouetteLayer addSublayer:self->_splashRing];
        [(CALayer *)self->_silhouetteLayer addSublayer:self->_splashRing1];
        [(CALayer *)self->_silhouetteLayer addSublayer:self->_splashRing3];
      }
    }
  }
}

- (void)_runDimAnimation
{
  v15 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"filters.colorBrightness.inputAmount"];
  [v15 setKeyTimes:&unk_2830798D8];
  [v15 setValues:&unk_2830798F0];
  [v15 setDuration:0.42];
  [v15 setRemovedOnCompletion:0];
  v3 = *MEMORY[0x277CDA238];
  [v15 setFillMode:*MEMORY[0x277CDA238]];
  v4 = *MEMORY[0x277CDA7C8];
  v5 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
  [v15 setTimingFunction:v5];

  [(CABackdropLayer *)self->_backgroundBackdropLayer addAnimation:v15 forKey:@"filters.colorBrightness.inputAmount"];
  v6 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"filters.colorSaturate.inputAmount"];
  [v6 setKeyTimes:&unk_283079908];
  [v6 setValues:&unk_283079920];
  [v6 setDuration:0.42];
  [v6 setRemovedOnCompletion:0];
  [v6 setFillMode:v3];
  v7 = [MEMORY[0x277CD9EF8] functionWithName:v4];
  [v6 setTimingFunction:v7];

  [(CABackdropLayer *)self->_backgroundBackdropLayer addAnimation:v6 forKey:@"filters.colorSaturate.inputAmount"];
  if ([(CSBatteryChargingRingView *)self _isReduceMotionEnabled])
  {
    v8 = @"opacity";
    v9 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
    [v9 setKeyTimes:&unk_283079968];
    [v9 setValues:&unk_283079980];
    [v9 setDuration:0.42];
    [v9 setRemovedOnCompletion:0];
    [v9 setFillMode:v3];
    v10 = [MEMORY[0x277CD9EF8] functionWithName:v4];
    [v9 setTimingFunction:v10];

    backgroundRadiusBackdropLayer = self->_backgroundRadiusBackdropLayer;
  }

  else
  {
    v8 = @"filters.gaussianBlur.inputRadius";
    v9 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
    [v9 setKeyTimes:&unk_283079938];
    [v9 setValues:&unk_283079950];
    [v9 setDuration:0.42];
    [v9 setRemovedOnCompletion:0];
    [v9 setFillMode:v3];
    v12 = [MEMORY[0x277CD9EF8] functionWithName:v4];
    [v9 setTimingFunction:v12];

    backgroundRadiusBackdropLayer = self->_backgroundBackdropLayer;
  }

  [(CABackdropLayer *)backgroundRadiusBackdropLayer addAnimation:v9 forKey:v8];

  if ([(CSBatteryChargingRingView *)self _isReduceTransparencyEnabled])
  {
    v13 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
    [v13 setKeyTimes:&unk_283079998];
    [v13 setValues:&unk_2830799B0];
    [v13 setDuration:0.42];
    [v13 setRemovedOnCompletion:0];
    [v13 setFillMode:v3];
    v14 = [MEMORY[0x277CD9EF8] functionWithName:v4];
    [v13 setTimingFunction:v14];

    [(CABackdropLayer *)self->_averageColorBackdropLayer addAnimation:v13 forKey:@"opacity"];
  }
}

- (void)_runSplashRingAnimation
{
  v29[3] = *MEMORY[0x277D85DE8];
  if (![(CSBatteryChargingRingView *)self _isReduceMotionEnabled])
  {
    v3 = CACurrentMediaTime();
    if ([(CSBatteryChargingRingView *)self _isShowingAuxiliary])
    {
      v4 = 0.4;
    }

    else
    {
      v4 = 0.2;
    }

    v5 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
    v6 = v3 + 0.45;
    [v5 setBeginTime:v6];
    [v5 setKeyTimes:&unk_2830799C8];
    v29[0] = &unk_283078C90;
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
    v29[1] = v7;
    v29[2] = &unk_283078C90;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
    [v5 setValues:v8];

    [v5 setDuration:0.78];
    v9 = *MEMORY[0x277CDA238];
    [v5 setFillMode:*MEMORY[0x277CDA238]];
    [v5 setRemovedOnCompletion:0];
    LODWORD(v10) = 1.0;
    LODWORD(v11) = 1051260355;
    LODWORD(v12) = 1059648963;
    v13 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v11 :0.0 :v12 :v10];
    v28[0] = v13;
    LODWORD(v14) = 1.0;
    LODWORD(v15) = 1051260355;
    LODWORD(v16) = 1059648963;
    v17 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v15 :0.0 :v16 :v14];
    v28[1] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
    [v5 setTimingFunctions:v18];

    [(CALayer *)self->_splashRing addAnimation:v5 forKey:@"opacity"];
    v19 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform.scale.xy"];
    [v19 setBeginTime:v6];
    [v19 setKeyTimes:&unk_2830799E0];
    v20 = [(CSBatteryChargingRingView *)self _isShowingAuxiliary];
    v21 = 0.3;
    if (v20)
    {
      v21 = 0.0;
      v22 = 1.2;
    }

    else
    {
      v22 = 0.6;
    }

    v23 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
    v24 = [MEMORY[0x277CCABB0] numberWithDouble:{v22, v23}];
    v27[1] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    [v19 setValues:v25];

    [v19 setDuration:0.85];
    [v19 setFillMode:v9];
    [v19 setRemovedOnCompletion:0];
    v26 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
    [v19 setTimingFunction:v26];

    [(CALayer *)self->_splashRing addAnimation:v19 forKey:@"scale"];
  }
}

- (void)_animateSilhouetteToVisible:(BOOL)a3
{
  v3 = a3;
  v20[2] = *MEMORY[0x277D85DE8];
  v5 = CACurrentMediaTime();
  v6 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  v7 = v6;
  if (v3)
  {
    v8 = v5 + 0.5;
  }

  else
  {
    v8 = v5;
  }

  if (v3)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 0.15;
  }

  if (v3)
  {
    v10 = 0.15;
  }

  else
  {
    v10 = 0.0;
  }

  [v6 setBeginTime:v8];
  [v7 setKeyTimes:&unk_2830799F8];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  v20[0] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  v20[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  [v7 setValues:v13];

  [v7 setDuration:0.46];
  [v7 setRemovedOnCompletion:0];
  [v7 setFillMode:*MEMORY[0x277CDA238]];
  LODWORD(v14) = 1051260355;
  LODWORD(v15) = 1059648963;
  LODWORD(v16) = 1.0;
  v17 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v14 :0.0 :v15 :v16];
  v19 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  [v7 setTimingFunctions:v18];

  [(CALayer *)self->_silhouetteLayer addAnimation:v7 forKey:@"opacity"];
}

- (void)_runAuxiliarySplashRingAnimation
{
  v46[2] = *MEMORY[0x277D85DE8];
  if ([(CSBatteryChargingRingView *)self _isShowingAuxiliary])
  {
    if (![(CSBatteryChargingRingView *)self _isReduceMotionEnabled])
    {
      v3 = CACurrentMediaTime();
      v4 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
      [v4 setBeginTime:v3 + 0.605];
      [v4 setKeyTimes:&unk_283079A10];
      [v4 setValues:&unk_283079A28];
      [v4 setDuration:0.5];
      v5 = *MEMORY[0x277CDA238];
      [v4 setFillMode:*MEMORY[0x277CDA238]];
      [v4 setRemovedOnCompletion:0];
      LODWORD(v6) = 1.0;
      LODWORD(v7) = 1051260355;
      LODWORD(v8) = 1059648963;
      v9 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v7 :0.0 :v8 :v6];
      v46[0] = v9;
      LODWORD(v10) = 1.0;
      LODWORD(v11) = 1051260355;
      LODWORD(v12) = 1059648963;
      v13 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v11 :0.0 :v12 :v10];
      v46[1] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
      [v4 setTimingFunctions:v14];

      [(CALayer *)self->_splashRing addAnimation:v4 forKey:@"opacity"];
      v15 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform.scale.xy"];
      [v15 setBeginTime:v3 + 0.605];
      [v15 setKeyTimes:&unk_283079A40];
      [v15 setValues:&unk_283079A58];
      [v15 setDuration:1.5];
      [v15 setFillMode:v5];
      [v15 setRemovedOnCompletion:0];
      v43 = *MEMORY[0x277CDA7C8];
      v16 = [MEMORY[0x277CD9EF8] functionWithName:?];
      [v15 setTimingFunction:v16];

      [(CALayer *)self->_splashRing addAnimation:v15 forKey:@"scale"];
      v17 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
      v18 = v3 + 0.785;
      [v17 setBeginTime:v3 + 0.785];
      [v17 setKeyTimes:&unk_283079A70];
      [v17 setValues:&unk_283079A88];
      [v17 setDuration:0.8];
      [v17 setFillMode:v5];
      [v17 setRemovedOnCompletion:0];
      LODWORD(v19) = 1.0;
      LODWORD(v20) = 1051260355;
      LODWORD(v21) = 1059648963;
      v22 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v20 :0.0 :v21 :v19];
      v45[0] = v22;
      LODWORD(v23) = 1.0;
      LODWORD(v24) = 1051260355;
      LODWORD(v25) = 1059648963;
      v26 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v24 :0.0 :v25 :v23];
      v45[1] = v26;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
      [v17 setTimingFunctions:v27];

      [(CALayer *)self->_splashRing1 addAnimation:v17 forKey:@"opacity"];
      v28 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform.scale.xy"];
      v29 = v3 + 0.385;
      [v28 setBeginTime:v29];
      [v28 setKeyTimes:&unk_283079AA0];
      [v28 setValues:&unk_283079AB8];
      [v28 setDuration:1.5];
      [v28 setFillMode:v5];
      [v28 setRemovedOnCompletion:0];
      v30 = [MEMORY[0x277CD9EF8] functionWithName:v43];
      [v28 setTimingFunction:v30];

      [(CALayer *)self->_splashRing1 addAnimation:v28 forKey:@"scale"];
      v31 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
      [v31 setBeginTime:v18];
      [v31 setKeyTimes:&unk_283079AD0];
      [v31 setValues:&unk_283079AE8];
      [v31 setDuration:0.8];
      [v31 setFillMode:v5];
      [v31 setRemovedOnCompletion:0];
      LODWORD(v32) = 1.0;
      LODWORD(v33) = 1051260355;
      LODWORD(v34) = 1059648963;
      v35 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v33 :0.0 :v34 :v32];
      v44[0] = v35;
      LODWORD(v36) = 1.0;
      LODWORD(v37) = 1051260355;
      LODWORD(v38) = 1059648963;
      v39 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v37 :0.0 :v38 :v36];
      v44[1] = v39;
      v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
      [v31 setTimingFunctions:v40];

      [(CALayer *)self->_splashRing3 addAnimation:v31 forKey:@"opacity"];
      v41 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform.scale.xy"];
      [v41 setBeginTime:v29];
      [v41 setKeyTimes:&unk_283079B00];
      [v41 setValues:&unk_283079B18];
      [v41 setDuration:1.5];
      [v41 setFillMode:v5];
      [v41 setRemovedOnCompletion:0];
      v42 = [MEMORY[0x277CD9EF8] functionWithName:v43];
      [v41 setTimingFunction:v42];

      [(CALayer *)self->_splashRing3 addAnimation:v41 forKey:@"scale"];
    }
  }
}

- (void)_runRingBlurAnimation
{
  v61[2] = *MEMORY[0x277D85DE8];
  v3 = CACurrentMediaTime();
  v4 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v4 setBeginTime:v3 + 0.48];
  [v4 setKeyTimes:&unk_283079B30];
  [v4 setValues:&unk_283079B48];
  [v4 setDuration:0.1];
  [v4 setRemovedOnCompletion:0];
  v5 = *MEMORY[0x277CDA238];
  [v4 setFillMode:*MEMORY[0x277CDA238]];
  LODWORD(v6) = 1.0;
  LODWORD(v7) = 1051260355;
  LODWORD(v8) = 1059648963;
  v9 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v7 :0.0 :v8 :v6];
  [v4 setTimingFunction:v9];

  [(CABackdropLayer *)self->_ringBlurBackdropLayer addAnimation:v4 forKey:@"opacity"];
  LODWORD(v9) = [(CSBatteryChargingRingView *)self _isReduceMotionEnabled];
  [v4 setBeginTime:v3 + 0.67];
  v10 = 0.17;
  if (v9)
  {
    v10 = 0.44;
  }

  [v4 setDuration:v10];
  v11 = *MEMORY[0x277CDA7C8];
  v12 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
  [v4 setTimingFunction:v12];

  [(CSRingLayer *)self->_ringBlurLayer addAnimation:v4 forKey:@"opacity"];
  if (![(CSBatteryChargingRingView *)self _isReduceMotionEnabled])
  {
    v13 = [(CSMagSafeAccessoryConfiguration *)self->_configuration ring];
    v14 = [(CSBatteryChargingRingView *)self _trackAnimationForConfiguration:v13 withCurrentTime:v3];

    [(CSRingLayer *)self->_ringBlurLayer addAnimation:v14 forKey:@"lineWidth"];
    [(CSRingLayer *)self->_ringBlurLayer addAnimation:v14 forKey:@"lineWidth"];
  }

  v15 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  if ([(CSBatteryChargingRingView *)self _isReduceMotionEnabled]|| [(CSBatteryChargingRingView *)self _isDarkerSystemColorsEnabled])
  {
    [v15 setBeginTime:v3 + 0.67];
    [v15 setDuration:0.44];
    [v15 setKeyTimes:&unk_283079B90];
    if ([(CSBatteryChargingRingView *)self _isDarkerSystemColorsEnabled])
    {
      v16 = &unk_283079BA8;
    }

    else
    {
      v16 = &unk_283079BC0;
    }

    [v15 setValues:v16];
    v17 = [MEMORY[0x277CD9EF8] functionWithName:v11];
    [v15 setTimingFunction:v17];
  }

  else
  {
    [v15 setBeginTime:v3 + 0.67];
    [v15 setDuration:0.45];
    [v15 setKeyTimes:&unk_283079B60];
    [v15 setValues:&unk_283079B78];
    v17 = [MEMORY[0x277CD9EF8] functionWithName:v11];
    v61[0] = v17;
    v18 = [MEMORY[0x277CD9EF8] functionWithName:v11];
    v61[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
    [v15 setTimingFunctions:v19];
  }

  [v15 setRemovedOnCompletion:0];
  v57 = v5;
  [v15 setFillMode:v5];
  [(CSRingLayer *)self->_trackFillRingLayer addAnimation:v15 forKey:@"opacity"];
  v20 = +[CSLockScreenDomain rootSettings];
  v21 = [v20 chargingSettings];
  v22 = [v21 useWhimsicalDesign];

  if (v22)
  {
    v23 = [(UIView *)self->_auxiliaryBatteryPillTrackView layer];
    [v23 addAnimation:v15 forKey:@"opacity"];
  }

  else
  {
    [(CSRingLayer *)self->_auxiliaryBatteryTrackFillRingLayer addAnimation:v15 forKey:@"opacity"];
  }

  if (![(CSBatteryChargingRingView *)self _isReduceMotionEnabled])
  {
    trackFillRingLayer = self->_trackFillRingLayer;
    v25 = [(CSMagSafeAccessoryConfiguration *)self->_configuration ring];
    v26 = [(CSBatteryChargingRingView *)self _trackAnimationForConfiguration:v25 withCurrentTime:v3];
    [(CSRingLayer *)trackFillRingLayer addAnimation:v26 forKey:@"lineWidth"];

    auxiliaryBatteryTrackFillRingLayer = self->_auxiliaryBatteryTrackFillRingLayer;
    v28 = [(CSMagSafeAccessoryConfiguration *)self->_configuration auxiliaryRing];
    v29 = [(CSBatteryChargingRingView *)self _trackAnimationForConfiguration:v28 withCurrentTime:v3];
    [(CSRingLayer *)auxiliaryBatteryTrackFillRingLayer addAnimation:v29 forKey:@"lineWidth"];

    v30 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
    [v30 setBeginTime:v3 + 0.48];
    [v30 setKeyTimes:&unk_283079BD8];
    [v30 setValues:&unk_283079BF0];
    [v30 setDuration:0.43];
    [v30 setRemovedOnCompletion:0];
    [v30 setFillMode:v5];
    LODWORD(v31) = 1.0;
    LODWORD(v32) = 1051260355;
    LODWORD(v33) = 1059648963;
    v34 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v32 :0.0 :v33 :v31];
    v60[0] = v34;
    v35 = [MEMORY[0x277CD9EF8] functionWithName:v11];
    v60[1] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
    [v30 setTimingFunctions:v36];

    [(CALayer *)self->_ringTempOverlayLayer addAnimation:v30 forKey:@"opacity"];
    v37 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform.scale.xy"];
    [v37 setBeginTime:v3 + 0.4];
    [v37 setKeyTimes:&unk_283079C08];
    [v37 setValues:&unk_283079C20];
    [v37 setDuration:0.75];
    [v37 setRemovedOnCompletion:0];
    [v37 setFillMode:v57];
    LODWORD(v38) = 1.0;
    LODWORD(v39) = 1051260355;
    LODWORD(v40) = 1059648963;
    v41 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v39 :0.0 :v40 :v38];
    v59[0] = v41;
    LODWORD(v42) = 1.0;
    LODWORD(v43) = 1051260355;
    LODWORD(v44) = 1059648963;
    v45 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v43 :0.0 :v44 :v42];
    v59[1] = v45;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
    [v37 setTimingFunctions:v46];

    [(CALayer *)self->_ringTempOverlayLayer addAnimation:v4 forKey:@"scale"];
    v47 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"borderWidth"];
    [v47 setKeyTimes:&unk_283079C38];
    [v47 setValues:&unk_283079C50];
    [v47 setDuration:1.08];
    [v47 setRemovedOnCompletion:0];
    [v47 setFillMode:v57];
    LODWORD(v48) = 1.0;
    LODWORD(v49) = 1053944709;
    LODWORD(v50) = 1058139013;
    v51 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v49 :0.0 :v50 :v48];
    v58[0] = v51;
    LODWORD(v52) = 1.0;
    LODWORD(v53) = 1053944709;
    LODWORD(v54) = 1058139013;
    v55 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v53 :0.0 :v54 :v52];
    v58[1] = v55;
    v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
    [v47 setTimingFunctions:v56];

    [(CALayer *)self->_ringTempOverlayLayer addAnimation:v47 forKey:@"borderWidth"];
  }
}

- (void)_runChargingBoltAnimationVisible:(BOOL)a3
{
  if (a3)
  {
    v4 = CACurrentMediaTime();
    if ([(CSBatteryChargingRingView *)self _isReduceMotionEnabled])
    {
      v17 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
      [v17 setBeginTime:v4 + 0.67];
      [v17 setDuration:0.44];
      [v17 setRemovedOnCompletion:0];
      [v17 setFillMode:*MEMORY[0x277CDA238]];
      [v17 setKeyTimes:&unk_283079C68];
      [v17 setValues:&unk_283079C80];
      v5 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
      [v17 setTimingFunction:v5];

      [(CALayer *)self->_chargingBoltGlyph addAnimation:v17 forKey:@"opacity"];
      goto LABEL_11;
    }

    v17 = [(CSBatteryChargingRingView *)self _springAnimationWithKeyPath:@"transform.scale.xy" forPresent:1 from:&unk_283078E30 to:&unk_283078CA0];
    [(CALayer *)self->_chargingBoltGlyph addAnimation:v17 forKey:@"scale"];
    v14 = [(CSBatteryChargingRingView *)self _springAnimationWithKeyPath:@"opacity" forPresent:1 from:&unk_283078C90 to:&unk_283078CA0];
    chargingBoltGlyph = self->_chargingBoltGlyph;
  }

  else
  {
    v17 = [(CSBatteryChargingRingView *)self _springAnimationWithKeyPath:@"opacity" forPresent:0 from:&unk_283078CA0 to:&unk_283078C90];
    [CALayer addAnimation:"addAnimation:forKey:" forKey:?];
    v6 = [(CSBatteryChargingRingView *)self _isReduceMotionEnabled];
    v7 = MEMORY[0x277CDA238];
    v8 = MEMORY[0x277CDA7C8];
    if (v6)
    {
      v9 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
      [v9 setKeyTimes:&unk_283079C98];
      [v9 setValues:&unk_283079CB0];
      [v9 setDuration:0.28];
      [v9 setRemovedOnCompletion:0];
      [v9 setFillMode:*v7];
      v10 = [MEMORY[0x277CD9EF8] functionWithName:*v8];
      [v9 setTimingFunction:v10];

      backgroundRadiusBackdropLayer = self->_backgroundRadiusBackdropLayer;
      v12 = v9;
      v13 = @"opacity";
    }

    else
    {
      v9 = [(CSBatteryChargingRingView *)self _springAnimationWithKeyPath:@"transform.scale.xy" forPresent:0 from:&unk_283078CA0 to:&unk_283078C90];
      backgroundRadiusBackdropLayer = self->_chargingBoltGlyph;
      v13 = @"scale";
      v12 = v9;
    }

    [backgroundRadiusBackdropLayer addAnimation:v12 forKey:v13];

    if (![(CSBatteryChargingRingView *)self _isReduceTransparencyEnabled])
    {
      goto LABEL_11;
    }

    v14 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
    [v14 setKeyTimes:&unk_283079CC8];
    [v14 setValues:&unk_283079CE0];
    [v14 setDuration:0.28];
    [v14 setRemovedOnCompletion:0];
    [v14 setFillMode:*v7];
    v16 = [MEMORY[0x277CD9EF8] functionWithName:*v8];
    [v14 setTimingFunction:v16];

    [(CABackdropLayer *)self->_backgroundBackdropLayer addAnimation:v14 forKey:@"opacity"];
    chargingBoltGlyph = self->_averageColorBackdropLayer;
  }

  [chargingBoltGlyph addAnimation:v14 forKey:@"opacity"];

LABEL_11:
}

- (void)_runAuxiliaryChargingBoltAnimationVisible:(BOOL)a3
{
  if (a3)
  {
    if ([(CSBatteryChargingRingView *)self _isReduceMotionEnabled])
    {
      v9 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
      [v9 setBeginTime:CACurrentMediaTime() + 0.67];
      [v9 setDuration:0.44];
      [v9 setRemovedOnCompletion:0];
      [v9 setFillMode:*MEMORY[0x277CDA238]];
      [v9 setKeyTimes:&unk_283079CF8];
      [v9 setValues:&unk_283079D10];
      v4 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
      [v9 setTimingFunction:v4];

      [(CALayer *)self->_auxiliaryGlyphLayer addAnimation:v9 forKey:@"opacity"];
      [(CALayer *)self->_auxiliaryChargingBoltGlyph addAnimation:v9 forKey:@"opacity"];
      [(CALayer *)self->_auxiliaryChargingBoltGlyphMask addAnimation:v9 forKey:@"opacity"];
    }

    else
    {
      v9 = [(CSBatteryChargingRingView *)self _springAnimationWithKeyPath:@"transform.scale.xy" delay:1 forPresent:&unk_283078E30 from:&unk_283078CA0 to:1.25];
      [(CALayer *)self->_auxiliaryGlyphLayer addAnimation:v9 forKey:@"scale"];
      v6 = [(CSBatteryChargingRingView *)self _springAnimationWithKeyPath:@"transform.scale.xy" forPresent:1 from:&unk_283078E30 to:&unk_283078CA0];
      [(CALayer *)self->_auxiliaryChargingBoltGlyph addAnimation:v6 forKey:@"scale"];
      [(CALayer *)self->_auxiliaryChargingBoltGlyphMask addAnimation:v6 forKey:@"scale"];
      v7 = [(CSBatteryChargingRingView *)self _springAnimationWithKeyPath:@"opacity" delay:1 forPresent:&unk_283078C90 from:&unk_283078CA0 to:1.25];
      [(CALayer *)self->_auxiliaryGlyphLayer addAnimation:v7 forKey:@"opacity"];
      v8 = [(CSBatteryChargingRingView *)self _springAnimationWithKeyPath:@"opacity" forPresent:1 from:&unk_283078C90 to:&unk_283078CA0];
      [(CALayer *)self->_auxiliaryChargingBoltGlyph addAnimation:v8 forKey:@"opacity"];
      [(CALayer *)self->_auxiliaryChargingBoltGlyphMask addAnimation:v8 forKey:@"opacity"];
    }
  }

  else
  {
    v9 = [(CSBatteryChargingRingView *)self _springAnimationWithKeyPath:@"opacity" forPresent:0 from:&unk_283078CA0 to:&unk_283078C90];
    [(CALayer *)self->_auxiliaryGlyphLayer addAnimation:v9 forKey:@"opacity"];
    [(CALayer *)self->_auxiliaryChargingBoltGlyph addAnimation:v9 forKey:@"opacity"];
    [(CALayer *)self->_auxiliaryChargingBoltGlyphMask addAnimation:v9 forKey:@"opacity"];
    if (![(CSBatteryChargingRingView *)self _isReduceMotionEnabled])
    {
      v5 = [(CSBatteryChargingRingView *)self _springAnimationWithKeyPath:@"transform.scale.xy" forPresent:0 from:&unk_283078CA0 to:&unk_283078C90];
      [(CALayer *)self->_auxiliaryGlyphLayer addAnimation:v5 forKey:@"scale"];
      [(CALayer *)self->_auxiliaryChargingBoltGlyph addAnimation:v5 forKey:@"scale"];
      [(CALayer *)self->_auxiliaryChargingBoltGlyphMask addAnimation:v5 forKey:@"scale"];
    }
  }
}

- (void)_runBatteryLevelRingAnimation
{
  v17[2] = *MEMORY[0x277D85DE8];
  if ([(CSBatteryChargingRingView *)self _isReduceMotionEnabled])
  {
    v16 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
    [v16 setBeginTime:CACurrentMediaTime() + 0.67];
    [v16 setDuration:0.44];
    [v16 setRemovedOnCompletion:0];
    [v16 setFillMode:*MEMORY[0x277CDA238]];
    [v16 setValues:&unk_283079D40];
    [v16 setKeyTimes:&unk_283079D58];
    v3 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
    [v16 setTimingFunction:v3];

    [(CSRingLayer *)self->_batteryLevelRing addAnimation:v16 forKey:@"opacity"];
  }

  else
  {
    v4 = CACurrentMediaTime();
    [(CSRingLayer *)self->_batteryLevelRing strokeEnd];
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v6 = [(CSBatteryChargingRingView *)self _springAnimationWithKeyPath:@"strokeEnd" forPresent:1 from:&unk_283078C90 to:v5];

    [(CSRingLayer *)self->_batteryLevelRing addAnimation:v6 forKey:@"strokeEnd"];
    v7 = [(CSRingLayer *)self->_batteryLevelRing path];
    v8 = [(CSMagSafeAccessoryConfiguration *)self->_configuration ring];
    v9 = [(CSBatteryChargingRingView *)self _pathForRingConfiguration:v8];

    v10 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"path"];
    [v10 setBeginTime:v4 + 0.9];
    [v10 setDuration:1.0];
    [v10 setRemovedOnCompletion:0];
    [v10 setFillMode:*MEMORY[0x277CDA238]];
    [v10 setKeyTimes:&unk_283079D28];
    v17[0] = v7;
    v17[1] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    [v10 setValues:v11];

    LODWORD(v12) = 1051260355;
    LODWORD(v13) = 1059648963;
    LODWORD(v14) = 1.0;
    v15 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v12 :0.0 :v13 :v14];
    [v10 setTimingFunction:v15];

    [(CSRingLayer *)self->_batteryLevelRing addAnimation:v10 forKey:@"path"];
    CGPathRelease(v9);
  }
}

- (void)_runAuxiliaryBatteryLevelAnimation
{
  v64[3] = *MEMORY[0x277D85DE8];
  if ([(CSBatteryChargingRingView *)self _isShowingAuxiliary])
  {
    v3 = +[CSLockScreenDomain rootSettings];
    v4 = [v3 chargingSettings];
    v5 = [v4 useWhimsicalDesign];

    if (v5)
    {
      v6 = [(UIView *)self->_chargingContainerView layer];
      v7 = [(UIView *)self->_auxiliaryBatteryPillClippingView layer];
      [v6 addSublayer:v7];
    }

    if ([(CSBatteryChargingRingView *)self _isReduceMotionEnabled])
    {
      v58 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
      v8 = [(CSBatteryChargingRingView *)self _isReduceMotionEnabled];
      v9 = CACurrentMediaTime();
      v10 = 0.67;
      if (v8)
      {
        v11 = 0.44;
      }

      else
      {
        v10 = 1.25;
        v11 = 0.5;
      }

      [v58 setBeginTime:v9 + v10];
      [v58 setDuration:v11];
      [v58 setRemovedOnCompletion:0];
      [v58 setFillMode:*MEMORY[0x277CDA238]];
      [v58 setValues:&unk_283079DA0];
      [v58 setKeyTimes:&unk_283079DB8];
      v12 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
      [v58 setTimingFunction:v12];

      if (v5)
      {
        v13 = [(UIView *)self->_auxiliaryBatteryPillTrackView layer];
        [v13 addAnimation:v58 forKey:@"opacity"];
      }

      else
      {
        [(CSRingLayer *)self->_auxiliaryBatteryLevelRing addAnimation:v58 forKey:@"opacity"];
      }
    }

    else
    {
      v14 = CACurrentMediaTime();
      if (v5)
      {
        v15 = [(UIView *)self->_auxiliaryBatteryPillLevelView layer];
        [v15 position];
        v17 = v16;

        v18 = [(UIView *)self->_auxiliaryBatteryPillLevelView layer];
        [v18 frame];
        Height = CGRectGetHeight(v66);

        v20 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"position.y"];
        [v20 setBeginTime:v14 + 1.25];
        [v20 setDuration:0.65];
        v64[0] = &unk_283078C90;
        v21 = [MEMORY[0x277CCABB0] numberWithDouble:Height / 87.0];
        v64[1] = v21;
        v64[2] = &unk_283078CA0;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:3];
        [v20 setKeyTimes:v22];

        v23 = [MEMORY[0x277CCABB0] numberWithDouble:v17 + Height];
        v63[0] = v23;
        v24 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
        v63[1] = v24;
        v25 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
        v63[2] = v25;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:3];
        [v20 setValues:v26];

        [v20 setRemovedOnCompletion:0];
        v27 = *MEMORY[0x277CDA238];
        [v20 setFillMode:*MEMORY[0x277CDA238]];
        LODWORD(v28) = 1.0;
        LODWORD(v29) = 1051260355;
        LODWORD(v30) = 1059648963;
        v31 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v29 :0.0 :v30 :v28];
        v62[0] = v31;
        LODWORD(v32) = 1.0;
        LODWORD(v33) = 1051260355;
        LODWORD(v34) = 1059648963;
        v35 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v33 :0.0 :v34 :v32];
        v62[1] = v35;
        v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:2];
        [v20 setTimingFunctions:v36];

        v37 = [(UIView *)self->_auxiliaryBatteryPillLevelView layer];
        [v37 addAnimation:v20 forKey:@"position.y"];

        v38 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
        [v38 setBeginTime:CACurrentMediaTime() + 1.25];
        [v38 setDuration:0.5];
        [v38 setBeginTime:CACurrentMediaTime()];
        [v38 setDuration:1.75];
        [v38 setRemovedOnCompletion:0];
        [v38 setFillMode:v27];
        [v38 setValues:&unk_283079D70];
        v61[0] = &unk_283078C90;
        v39 = [MEMORY[0x277CCABB0] numberWithDouble:0.714285714];
        v61[1] = v39;
        v61[2] = &unk_283078CA0;
        v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:3];
        [v38 setKeyTimes:v40];

        v41 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
        v60[0] = v41;
        LODWORD(v42) = 1.0;
        LODWORD(v43) = 1051260355;
        LODWORD(v44) = 1059648963;
        v45 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v43 :0.0 :v44 :v42];
        v60[1] = v45;
        v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
        [v38 setTimingFunctions:v46];

        v47 = [(UIView *)self->_auxiliaryBatteryPillLevelView layer];
        [v47 addAnimation:v38 forKey:@"opacity"];
      }

      else
      {
        [(CSRingLayer *)self->_auxiliaryBatteryLevelRing strokeEnd];
        v48 = [MEMORY[0x277CCABB0] numberWithDouble:?];
        v20 = [(CSBatteryChargingRingView *)self _springAnimationWithKeyPath:@"strokeEnd" delay:1 forPresent:&unk_283078C90 from:v48 to:1.25];

        [(CSRingLayer *)self->_auxiliaryBatteryLevelRing addAnimation:v20 forKey:@"strokeEnd"];
        v49 = [(CSRingLayer *)self->_auxiliaryBatteryLevelRing path];
        v50 = [(CSMagSafeAccessoryConfiguration *)self->_configuration auxiliaryRing];
        v51 = [(CSBatteryChargingRingView *)self _pathForRingConfiguration:v50];

        v52 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"path"];
        [v52 setBeginTime:v14 + 1.25];
        [v52 setDuration:1.0];
        [v52 setRemovedOnCompletion:0];
        [v52 setFillMode:*MEMORY[0x277CDA238]];
        [v52 setKeyTimes:&unk_283079D88];
        v59[0] = v49;
        v59[1] = v51;
        v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
        [v52 setValues:v53];

        LODWORD(v54) = 1051260355;
        LODWORD(v55) = 1059648963;
        LODWORD(v56) = 1.0;
        v57 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v54 :0.0 :v55 :v56];
        [v52 setTimingFunction:v57];

        [(CSRingLayer *)self->_auxiliaryBatteryLevelRing addAnimation:v52 forKey:@"path"];
        CGPathRelease(v51);
      }
    }
  }
}

- (void)_runChargingLabelPresentAnimation
{
  v10 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  v3 = [(CSBatteryChargingRingView *)self _isReduceMotionEnabled];
  v4 = CACurrentMediaTime();
  v5 = v4 + 0.67;
  v6 = v4 + 0.9 + 0.25;
  if (v3)
  {
    v6 = v5;
    v7 = 0.44;
  }

  else
  {
    v7 = 0.25;
  }

  [v10 setBeginTime:v6];
  [v10 setDuration:v7];
  [v10 setRemovedOnCompletion:0];
  [v10 setFillMode:*MEMORY[0x277CDA238]];
  [v10 setValues:&unk_283079DD0];
  [v10 setKeyTimes:&unk_283079DE8];
  v8 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
  [v10 setTimingFunction:v8];

  v9 = [(SBUILegibilityLabel *)self->_chargePercentLabel layer];
  [v9 addAnimation:v10 forKey:@"opacityLabel"];
}

- (void)_runAuxiliaryChargingLabelPresentAnimation
{
  v33[3] = *MEMORY[0x277D85DE8];
  if ([(CSBatteryChargingRingView *)self _isReduceMotionEnabled])
  {
    v30 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
    [v30 setBeginTime:CACurrentMediaTime() + 0.67];
    [v30 setDuration:0.44];
    [v30 setRemovedOnCompletion:0];
    [v30 setFillMode:*MEMORY[0x277CDA238]];
    [v30 setValues:&unk_283079E30];
    [v30 setKeyTimes:&unk_283079E48];
    v3 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
    [v30 setTimingFunction:v3];

    v4 = [(SBUILegibilityLabel *)self->_auxiliaryBatteryLabel layer];
    [v4 addAnimation:v30 forKey:@"opacityLabel"];
  }

  else
  {
    v5 = CACurrentMediaTime();
    v6 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
    v7 = v5 + 1.25;
    [v6 setBeginTime:v7];
    [v6 setDuration:0.65];
    [v6 setRemovedOnCompletion:0];
    v8 = *MEMORY[0x277CDA238];
    [v6 setFillMode:*MEMORY[0x277CDA238]];
    v33[0] = &unk_283078C90;
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:0.5];
    v33[1] = v9;
    v33[2] = &unk_283078CA0;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
    [v6 setKeyTimes:v10];

    [v6 setValues:&unk_283079E00];
    v11 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
    v32[0] = v11;
    LODWORD(v12) = 1.0;
    LODWORD(v13) = 1051260355;
    LODWORD(v14) = 1059648963;
    v15 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v13 :0.0 :v14 :v12];
    v32[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    [v6 setTimingFunctions:v16];

    v17 = [(SBUILegibilityLabel *)self->_auxiliaryBatteryLabel layer];
    [v17 addAnimation:v6 forKey:@"opacityLabel"];

    [(SBUILegibilityLabel *)self->_auxiliaryBatteryLabel center];
    v19 = v18;
    v20 = v18 + 12.0;
    v21 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"position.y"];
    [v21 setBeginTime:v7];
    [v21 setDuration:0.65];
    [v21 setKeyTimes:&unk_283079E18];
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
    v31[0] = v22;
    v23 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
    v31[1] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    [v21 setValues:v24];

    LODWORD(v25) = 1.0;
    LODWORD(v26) = 1051260355;
    LODWORD(v27) = 1059648963;
    v28 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v26 :0.0 :v27 :v25];
    [v21 setTimingFunction:v28];

    [v21 setRemovedOnCompletion:0];
    [v21 setFillMode:v8];
    v29 = [(SBUILegibilityLabel *)self->_auxiliaryBatteryLabel layer];
    [v29 addAnimation:v21 forKey:@"position.y"];
  }
}

- (void)_runBatteryLevelDismissAnimation
{
  if (![(CSBatteryChargingRingView *)self _isReduceMotionEnabled])
  {
    [(CSRingLayer *)self->_batteryLevelRing strokeStart];
    v3 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v4 = [(CSBatteryChargingRingView *)self _springAnimationWithKeyPath:@"strokeStart" delay:0 forPresent:v3 from:&unk_283078CA0 to:0.03];

    [(CSRingLayer *)self->_batteryLevelRing addAnimation:v4 forKey:@"strokeStart"];
    [(CSRingLayer *)self->_trackFillRingLayer addAnimation:v4 forKey:@"strokeStart"];
    [(CSRingLayer *)self->_ringBlurLayer addAnimation:v4 forKey:@"strokeStart"];
    [(CSRingLayer *)self->_batteryLevelRing strokeEnd];
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v6 = [(CSBatteryChargingRingView *)self _springAnimationWithKeyPath:@"strokeEnd" forPresent:0 from:v5 to:&unk_283078CA0];

    [(CSRingLayer *)self->_batteryLevelRing addAnimation:v6 forKey:@"strokeEnd"];
    v7 = [(CSMagSafeAccessoryConfiguration *)self->_configuration ring];
    [v7 lineWidth];
    v9 = v8;

    v10 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    v12 = [(CSBatteryChargingRingView *)self _springAnimationWithKeyPath:@"lineWidth" forPresent:0 from:v10 to:v11];

    [(CSRingLayer *)self->_batteryLevelRing addAnimation:v12 forKey:@"lineWidth"];
    [(CSRingLayer *)self->_trackFillRingLayer addAnimation:v12 forKey:@"lineWidth"];
    [(CSRingLayer *)self->_ringBlurLayer addAnimation:v12 forKey:@"lineWidth"];
  }

  v20 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v20 setRemovedOnCompletion:0];
  [v20 setFillMode:*MEMORY[0x277CDA238]];
  [v20 setKeyTimes:&unk_283079E60];
  [v20 setValues:&unk_283079E78];
  LODWORD(v13) = 1051260355;
  LODWORD(v14) = 1059648963;
  LODWORD(v15) = 1.0;
  v16 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v13 :0.0 :v14 :v15];
  [v20 setTimingFunction:v16];

  if ([(CSBatteryChargingRingView *)self _isReduceMotionEnabled])
  {
    v17 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
    [v20 setTimingFunction:v17];

    [v20 setDuration:0.2];
    v18 = [(SBUILegibilityLabel *)self->_chargePercentLabel layer];
    [v18 addAnimation:v20 forKey:@"fadeOut"];

    [(CSRingLayer *)self->_batteryLevelRing addAnimation:v20 forKey:@"fadeOut"];
    [(CABackdropLayer *)self->_ringBlurBackdropLayer addAnimation:v20 forKey:@"fadeOut"];
    [v20 setValues:&unk_283079E90];
    [(CSRingLayer *)self->_trackFillRingLayer addAnimation:v20 forKey:@"fadeOut"];
  }

  else
  {
    [v20 setBeginTime:CACurrentMediaTime() + 0.16];
    [v20 setDuration:0.18];
    v19 = [(SBUILegibilityLabel *)self->_chargePercentLabel layer];
    [v19 addAnimation:v20 forKey:@"fadeOut"];
  }
}

- (void)_runAuxiliaryBatteryLevelDismissAnimation
{
  if (![(CSBatteryChargingRingView *)self _isShowingAuxiliary])
  {
    return;
  }

  v3 = +[CSLockScreenDomain rootSettings];
  v4 = [v3 chargingSettings];
  v5 = [v4 useWhimsicalDesign];

  v6 = [(CSBatteryChargingRingView *)self _isReduceMotionEnabled];
  v7 = MEMORY[0x277CDA238];
  if (!v6)
  {
    if (v5)
    {
      v8 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
      [v8 setDuration:0.47];
      [v8 setKeyTimes:&unk_283079EA8];
      [v8 setValues:&unk_283079EC0];
      [v8 setRemovedOnCompletion:0];
      [v8 setFillMode:*v7];
      LODWORD(v9) = 1051260355;
      LODWORD(v10) = 1059648963;
      LODWORD(v11) = 1.0;
      v12 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v9 :0.0 :v10 :v11];
      [v8 setTimingFunction:v12];

      v13 = [(UIView *)self->_auxiliaryBatteryPillClippingView layer];
      [v13 addAnimation:v8 forKey:@"opacity"];
    }

    else
    {
      [(CSRingLayer *)self->_auxiliaryBatteryLevelRing strokeStart];
      v14 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      v8 = [(CSBatteryChargingRingView *)self _springAnimationWithKeyPath:@"strokeStart" delay:0 forPresent:v14 from:&unk_283078CA0 to:0.03];

      [(CSRingLayer *)self->_auxiliaryBatteryLevelRing addAnimation:v8 forKey:@"strokeStart"];
      [(CSRingLayer *)self->_auxiliaryBatteryTrackFillRingLayer addAnimation:v8 forKey:@"strokeStart"];
      [(CSRingLayer *)self->_auxiliaryBatteryLevelRing strokeEnd];
      v15 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      v13 = [(CSBatteryChargingRingView *)self _springAnimationWithKeyPath:@"strokeEnd" forPresent:0 from:v15 to:&unk_283078CA0];

      [(CSRingLayer *)self->_auxiliaryBatteryLevelRing addAnimation:v13 forKey:@"strokeEnd"];
      [(CSRingLayer *)self->_auxiliaryBatteryTrackFillRingLayer addAnimation:v13 forKey:@"strokeEnd"];
      v16 = [(CSMagSafeAccessoryConfiguration *)self->_configuration auxiliaryRing];
      [v16 lineWidth];
      v18 = v17;

      v19 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
      v20 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
      v21 = [(CSBatteryChargingRingView *)self _springAnimationWithKeyPath:@"lineWidth" forPresent:0 from:v19 to:v20];

      [(CSRingLayer *)self->_auxiliaryBatteryLevelRing addAnimation:v21 forKey:@"lineWidth"];
      v7 = MEMORY[0x277CDA238];
      [(CSRingLayer *)self->_auxiliaryBatteryTrackFillRingLayer addAnimation:v21 forKey:@"lineWidth"];
    }
  }

  v32 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v32 setRemovedOnCompletion:0];
  [v32 setFillMode:*v7];
  [v32 setKeyTimes:&unk_283079ED8];
  [v32 setValues:&unk_283079EF0];
  LODWORD(v22) = 1051260355;
  LODWORD(v23) = 1059648963;
  LODWORD(v24) = 1.0;
  v25 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v22 :0.0 :v23 :v24];
  [v32 setTimingFunction:v25];

  if ([(CSBatteryChargingRingView *)self _isReduceMotionEnabled])
  {
    v26 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
    [v32 setTimingFunction:v26];

    [v32 setDuration:0.2];
    v27 = [(SBUILegibilityLabel *)self->_auxiliaryBatteryLabel layer];
    [v27 addAnimation:v32 forKey:@"fadeOut"];

    if (!v5)
    {
      [(CSRingLayer *)self->_auxiliaryBatteryLevelRing addAnimation:v32 forKey:@"fadeOut"];
      [(CSRingLayer *)self->_auxiliaryBatteryTrackFillRingLayer addAnimation:v32 forKey:@"fadeOut"];
      [(CALayer *)self->_auxiliaryGlyphLayer addAnimation:v32 forKey:@"fadeout"];
      goto LABEL_14;
    }

    v28 = [(UIView *)self->_auxiliaryBatteryPillLevelView layer];
    [v28 addAnimation:v32 forKey:@"fadeOut"];

    v29 = [(UIView *)self->_auxiliaryBatteryPillTrackView layer];
    v30 = v29;
    v31 = v32;
  }

  else
  {
    [v32 setBeginTime:CACurrentMediaTime() + 0.16];
    [v32 setDuration:0.18];
    v29 = [(SBUILegibilityLabel *)self->_auxiliaryBatteryLabel layer];
    v30 = v29;
    v31 = v32;
  }

  [v29 addAnimation:v31 forKey:@"fadeOut"];

LABEL_14:
}

- (void)_performChargingBoltPresentAnimation
{
  [(CSBatteryChargingRingView *)self _runDimAnimation];
  [(CSBatteryChargingRingView *)self _runSplashRingAnimation];
  [(CSBatteryChargingRingView *)self _runRingBlurAnimation];
  [(CSBatteryChargingRingView *)self _runChargingBoltAnimationVisible:1];
  [(CSBatteryChargingRingView *)self _runChargingLabelPresentAnimation];
  [(CSBatteryChargingRingView *)self _runBatteryLevelRingAnimation];
  [(CSBatteryChargingRingView *)self _animateSilhouetteToVisible:1];
  [(CSBatteryChargingRingView *)self _runAuxiliaryChargingBoltAnimationVisible:1];
  [(CSBatteryChargingRingView *)self _runAuxiliarySplashRingAnimation];
  [(CSBatteryChargingRingView *)self _runAuxiliaryChargingLabelPresentAnimation];

  [(CSBatteryChargingRingView *)self _runAuxiliaryBatteryLevelAnimation];
}

- (void)_performChargingBoltDismissAnimation
{
  [(CSBatteryChargingRingView *)self _runChargingBoltAnimationVisible:0];
  [(CSBatteryChargingRingView *)self _runBatteryLevelDismissAnimation];
  [(CSBatteryChargingRingView *)self _animateSilhouetteToVisible:0];
  [(CSBatteryChargingRingView *)self _runAuxiliaryChargingBoltAnimationVisible:0];

  [(CSBatteryChargingRingView *)self _runAuxiliaryBatteryLevelDismissAnimation];
}

- (void)_runAnimationWithType:(unint64_t)a3
{
  if (![(CSMagSafeAccessoryConfiguration *)self->_configuration staticViewNeeded])
  {
    if (a3 == 1)
    {

      [(CSBatteryChargingRingView *)self _performChargingBoltDismissAnimation];
    }

    else if (!a3)
    {

      [(CSBatteryChargingRingView *)self _performChargingBoltPresentAnimation];
    }
  }
}

- (void)performAnimation:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  if ([(CSBatteryChargingRingView *)self _shouldUseShortcutForAnimation:a3])
  {
    if (v6)
    {
      objc_initWeak(&location, self);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __64__CSBatteryChargingRingView_performAnimation_completionHandler___block_invoke;
      v23[3] = &unk_27838C8D8;
      objc_copyWeak(&v25, &location);
      v24 = v6;
      v7 = MEMORY[0x223D698D0](v23);
      v8 = [v7 copy];
      longTailShortcutTimerHandler = self->_longTailShortcutTimerHandler;
      self->_longTailShortcutTimerHandler = v8;

      [(BSAbsoluteMachTimer *)self->_longTailShortcutTimer invalidate];
      [(CSBatteryChargingRingView *)self _estimatedDurationForAnimation:a3];
      v11 = v10;
      v12 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"CSBatteryChargingRingView.longTailShortcutTimer"];
      longTailShortcutTimer = self->_longTailShortcutTimer;
      self->_longTailShortcutTimer = v12;

      v14 = self->_longTailShortcutTimer;
      v15 = MEMORY[0x277D85CD0];
      v16 = MEMORY[0x277D85CD0];
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __64__CSBatteryChargingRingView_performAnimation_completionHandler___block_invoke_2;
      v21 = &unk_27838C900;
      v17 = v7;
      v22 = v17;
      [(BSAbsoluteMachTimer *)v14 scheduleWithFireInterval:v15 leewayInterval:&v18 queue:v11 handler:0.0];

      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
    }

    [(CSBatteryChargingRingView *)self _runAnimationWithType:a3, v18, v19, v20, v21];
  }

  else
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setCompletionBlock:v6];
    [(CSBatteryChargingRingView *)self _runAnimationWithType:a3];
    [MEMORY[0x277CD9FF0] commit];
  }
}

void __64__CSBatteryChargingRingView_performAnimation_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
  if (WeakRetained)
  {
    [WeakRetained[79] invalidate];
    v2 = WeakRetained[79];
    WeakRetained[79] = 0;

    v3 = WeakRetained[80];
    WeakRetained[80] = 0;
  }
}

- (id)_updateChargeString:(id)a3 oldLabel:(id)a4 font:(id)a5
{
  v8 = a5;
  v9 = a3;
  [a4 removeFromSuperview];
  v10 = [MEMORY[0x277D65E90] rootSettings];
  v11 = [(CSBatteryChargingView *)self legibilitySettings];
  [v10 dateStrengthForStyle:{objc_msgSend(v11, "style")}];
  v13 = v12;

  v14 = objc_alloc(MEMORY[0x277D67CF8]);
  v15 = [(CSBatteryChargingView *)self legibilitySettings];
  v16 = [v14 initWithSettings:v15 strength:v9 string:v8 font:v13];

  [v16 setAdjustsFontSizeToFitWidth:1];
  [v16 setLineBreakMode:2];
  if (([*MEMORY[0x277D76620] activeInterfaceOrientation] - 1) <= 1)
  {
    [(CSBatteryChargingRingView *)self addSubview:v16];
  }

  return v16;
}

- (id)_ringLayerForRingConfiguration:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a3;
    [v4 ringDiameter];
    v6 = v5;
    [v4 lineWidth];
    v8 = v7;

    v9 = [CSRingLayer ringWithDiameter:v6 lineWidth:v8];
    [v9 setStrokeStart:0.0];
    [v9 setStrokeEnd:0.0];
    [v9 setLineCap:*MEMORY[0x277CDA780]];
    if ([(CSBatteryChargingRingView *)self _isReduceMotionEnabled])
    {
      [v9 setOpacity:0.0];
    }

    else
    {
      LODWORD(v10) = 1.0;
      [v9 setOpacity:v10];
      Mutable = CGPathCreateMutable();
      [v9 setPath:Mutable];
      CGPathRelease(Mutable);
    }

    v12 = [MEMORY[0x277CD9EA0] brightnessFilterWithAmount:0.1];
    v15[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [v9 setFilters:v13];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CGPath)_pathForRingConfiguration:(id)a3
{
  v3 = a3;
  [v3 ringDiameter];
  v5 = v4;
  [v3 lineWidth];
  v7 = v6;

  return [CSRingLayer newPathForDiameter:v5 lineWidth:v7];
}

- (id)_trackRingForRingConfiguration:(id)a3 withBlendMode:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 ringDiameter];
  v8 = v7;
  [v6 lineWidth];
  v10 = v9;

  v11 = [CSRingLayer ringLayerWithBlendMode:v5 diameter:v8 lineWidth:v10 brightnessAmount:0.2 saturationAmount:1.25];

  return v11;
}

- (void)_createAuxiliaryPillViewsIfNeeded
{
  v35[1] = *MEMORY[0x277D85DE8];
  if ([(CSBatteryChargingRingView *)self _isShowingAuxiliary])
  {
    v3 = +[CSLockScreenDomain rootSettings];
    v4 = [v3 chargingSettings];
    v5 = [v4 useWhimsicalDesign];

    if ((v5 & 1) == 0)
    {
      if (!self->_auxiliaryBatteryPillLevelView)
      {
        v6 = objc_alloc(MEMORY[0x277D75D18]);
        v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        auxiliaryBatteryPillLevelView = self->_auxiliaryBatteryPillLevelView;
        self->_auxiliaryBatteryPillLevelView = v7;

        [(UIView *)self->_auxiliaryBatteryPillLevelView setBounds:0.0, 0.0, 28.0, 87.0];
        v9 = [(UIView *)self->_auxiliaryBatteryPillLevelView layer];
        v10 = [MEMORY[0x277CD9EA0] brightnessFilterWithAmount:0.1];
        v35[0] = v10;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
        [v9 setFilters:v11];

        v12 = [(UIView *)self->_auxiliaryBatteryPillLevelView layer];
        [v12 setOpacity:0.0];
      }

      if (!self->_auxiliaryBatteryPillTrackView)
      {
        v13 = objc_alloc(MEMORY[0x277D75D18]);
        v14 = [v13 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        auxiliaryBatteryPillTrackView = self->_auxiliaryBatteryPillTrackView;
        self->_auxiliaryBatteryPillTrackView = v14;

        [(UIView *)self->_auxiliaryBatteryPillTrackView setBounds:0.0, 0.0, 28.0, 87.0];
        v16 = [MEMORY[0x277CD9EA0] brightnessFilterWithAmount:0.2];
        v17 = [MEMORY[0x277CD9EA0] saturationFilterWithAmount:1.25];
        v18 = [(UIView *)self->_auxiliaryBatteryPillTrackView layer];
        v19 = [(CSBatteryChargingRingView *)self _isDarkerSystemColorsEnabled];
        v20 = MEMORY[0x277CDA5C0];
        if (!v19)
        {
          v20 = MEMORY[0x277CDA5E8];
        }

        [v18 setCompositingFilter:*v20];

        v21 = [(UIView *)self->_auxiliaryBatteryPillTrackView layer];
        v34[0] = v16;
        v34[1] = v17;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
        [v21 setFilters:v22];

        v23 = [(UIView *)self->_auxiliaryBatteryPillTrackView layer];
        [v23 setOpacity:0.0];
      }

      if (!self->_auxiliaryBatteryPillClippingView)
      {
        v24 = objc_alloc(MEMORY[0x277D75D18]);
        v25 = [v24 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        auxiliaryBatteryPillClippingView = self->_auxiliaryBatteryPillClippingView;
        self->_auxiliaryBatteryPillClippingView = v25;

        [(UIView *)self->_auxiliaryBatteryPillClippingView setFrame:0.0, 0.0, 28.0, 87.0];
        [(UIView *)self->_auxiliaryBatteryPillClippingView setClipsToBounds:1];
        v27 = [(UIView *)self->_auxiliaryBatteryPillClippingView layer];
        [v27 setMasksToBounds:1];

        v28 = [(UIView *)self->_auxiliaryBatteryPillClippingView layer];
        v29 = [(UIView *)self->_auxiliaryBatteryPillTrackView layer];
        [v28 addSublayer:v29];

        v30 = [(UIView *)self->_auxiliaryBatteryPillClippingView layer];
        v31 = [(UIView *)self->_auxiliaryBatteryPillLevelView layer];
        [v30 addSublayer:v31];

        [(UIView *)self->_auxiliaryBatteryPillClippingView _setContinuousCornerRadius:14.0];
        v32 = [(UIView *)self->_auxiliaryBatteryPillClippingView layer];
        [v32 setCornerRadius:14.0];

        v33 = [(UIView *)self->_auxiliaryBatteryPillClippingView layer];
        [v33 setAllowsGroupOpacity:1];
      }
    }
  }
}

- (void)_createBoltViewsIfNeeded
{
  v183[1] = *MEMORY[0x277D85DE8];
  v4 = +[CSLockScreenDomain rootSettings];
  v5 = [v4 chargingSettings];

  v6 = [MEMORY[0x277CD9ED0] layer];
  auxiliaryChargingBoltGlyph = self->_auxiliaryChargingBoltGlyph;
  self->_auxiliaryChargingBoltGlyph = v6;

  [v5 auxiliaryBoltHeight];
  v9 = v8;
  v10 = __sb__runningInSpringBoard();
  v181 = v5;
  if (v10)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v11 = 0;
      v12 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v151 = [MEMORY[0x277D75418] currentDevice];
    if ([v151 userInterfaceIdiom] != 1)
    {
      v11 = 0;
      v12 = 1;
      goto LABEL_10;
    }
  }

  v12 = v10 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v13 = __sb__runningInSpringBoard();
    if (v13)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v152 = [MEMORY[0x277D759A0] mainScreen];
      [v152 _referenceBounds];
    }

    v11 = v13 ^ 1;
    BSSizeRoundForScale();
    if (v30 == *(MEMORY[0x277D66E30] + 288) && v29 == *(MEMORY[0x277D66E30] + 296))
    {
      v179 = v13 ^ 1;
      v180 = v12;
      v167 = 0;
      v168 = 0;
      v166 = 0;
      v169 = 0;
      v165 = 0;
      v164 = 0;
      v170 = 0;
      v163 = 0;
      v162 = 0;
      v171 = 0;
      v161 = 0;
      v160 = 0;
      v172 = 0;
      v159 = 0;
      v158 = 0;
      v173 = 0;
      v174 = 0;
      v157 = 0;
      v156 = 0;
      v175 = 0;
      v155 = 0;
      v154 = 0;
      v153 = 0;
      v176 = 0;
      v177 = 0;
      v182 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v178 = 0;
      v26 = 0.0;
      goto LABEL_79;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_10:
  v14 = __sb__runningInSpringBoard();
  v179 = v11;
  v180 = v12;
  if (v14)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v15 = 0;
      v2 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v150 = [MEMORY[0x277D75418] currentDevice];
    if ([v150 userInterfaceIdiom] != 1)
    {
      v15 = 0;
      v2 = 1;
      goto LABEL_19;
    }
  }

  v2 = v14 ^ 1u;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v13 = __sb__runningInSpringBoard();
    if (v13)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v142 = [MEMORY[0x277D759A0] mainScreen];
      [v142 _referenceBounds];
    }

    v15 = v13 ^ 1;
    BSSizeRoundForScale();
    if (v32 >= *(MEMORY[0x277D66E30] + 440))
    {
      LODWORD(v178) = v13 ^ 1;
      HIDWORD(v178) = v2;
      v167 = 0;
      v168 = 0;
      v166 = 0;
      v169 = 0;
      v165 = 0;
      v164 = 0;
      v170 = 0;
      v163 = 0;
      v162 = 0;
      v171 = 0;
      v161 = 0;
      v160 = 0;
      v172 = 0;
      v159 = 0;
      v158 = 0;
      v173 = 0;
      v174 = 0;
      v157 = 0;
      v156 = 0;
      v175 = 0;
      v155 = 0;
      v154 = 0;
      v153 = 0;
      v176 = 0;
      v177 = 0;
      v182 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0.0;
      goto LABEL_79;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_19:
  v16 = __sb__runningInSpringBoard();
  v178 = __PAIR64__(v2, v15);
  if (v16)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v17 = 0;
      v18 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    v149 = [MEMORY[0x277D75418] currentDevice];
    if ([v149 userInterfaceIdiom] != 1)
    {
      v17 = 0;
      v18 = 1;
      goto LABEL_28;
    }
  }

  v18 = v16 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v13 = __sb__runningInSpringBoard();
    if (v13)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v141 = [MEMORY[0x277D759A0] mainScreen];
      [v141 _referenceBounds];
    }

    v17 = v13 ^ 1;
    BSSizeRoundForScale();
    if (v33 >= *(MEMORY[0x277D66E30] + 376))
    {
      LODWORD(v177) = v13 ^ 1;
      HIDWORD(v177) = v18;
      v167 = 0;
      v168 = 0;
      v166 = 0;
      v169 = 0;
      v165 = 0;
      v164 = 0;
      v170 = 0;
      v163 = 0;
      v162 = 0;
      v171 = 0;
      v161 = 0;
      v160 = 0;
      v172 = 0;
      v159 = 0;
      v158 = 0;
      v173 = 0;
      v174 = 0;
      v157 = 0;
      v156 = 0;
      v175 = 0;
      v155 = 0;
      v154 = 0;
      v153 = 0;
      v176 = 0;
      v182 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0.0;
      goto LABEL_79;
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_28:
  v19 = __sb__runningInSpringBoard();
  v177 = __PAIR64__(v18, v17);
  if (v19)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v176 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v148 = [MEMORY[0x277D75418] currentDevice];
    if ([v148 userInterfaceIdiom] != 1)
    {
      v176 = 0x100000000;
      goto LABEL_37;
    }
  }

  HIDWORD(v176) = v19 ^ 1;
  v13 = __sb__runningInSpringBoard();
  if (v13)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v145 = [MEMORY[0x277D759A0] mainScreen];
    [v145 _referenceBounds];
  }

  LODWORD(v176) = v13 ^ 1;
  BSSizeRoundForScale();
  if (v20 >= *(MEMORY[0x277D66E30] + 280))
  {
    v167 = 0;
    v168 = 0;
    v166 = 0;
    v169 = 0;
    v165 = 0;
    v164 = 0;
    v170 = 0;
    v163 = 0;
    v162 = 0;
    v171 = 0;
    v161 = 0;
    v160 = 0;
    v172 = 0;
    v159 = 0;
    v158 = 0;
    v173 = 0;
    v174 = 0;
    v157 = 0;
    v156 = 0;
    v175 = 0;
    v155 = 0;
    v154 = 0;
    v153 = 0;
    v182 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0.0;
    goto LABEL_79;
  }

LABEL_37:
  v21 = __sb__runningInSpringBoard();
  if (v21)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v175 = 0;
      goto LABEL_47;
    }
  }

  else
  {
    v147 = [MEMORY[0x277D75418] currentDevice];
    if ([v147 userInterfaceIdiom] != 1)
    {
      v175 = 0x100000000;
      goto LABEL_47;
    }
  }

  HIDWORD(v175) = v21 ^ 1;
  v13 = __sb__runningInSpringBoard();
  if (v13)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v143 = [MEMORY[0x277D759A0] mainScreen];
    [v143 _referenceBounds];
  }

  LODWORD(v175) = v13 ^ 1;
  BSSizeRoundForScale();
  if (v27 >= *(MEMORY[0x277D66E30] + 264))
  {
    v167 = 0;
    v168 = 0;
    v166 = 0;
    v169 = 0;
    v165 = 0;
    v164 = 0;
    v170 = 0;
    v163 = 0;
    v162 = 0;
    v171 = 0;
    v161 = 0;
    v160 = 0;
    v172 = 0;
    v159 = 0;
    v158 = 0;
    v173 = 0;
    v174 = 0;
    v157 = 0;
    v156 = 0;
    v154 = 0;
    v155 = 0;
    v153 = 0;
    v182 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0.0;
    goto LABEL_79;
  }

LABEL_47:
  v28 = __sb__runningInSpringBoard();
  if (v28)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v174 = 0;
      goto LABEL_70;
    }
  }

  else
  {
    v146 = [MEMORY[0x277D75418] currentDevice];
    if ([v146 userInterfaceIdiom] != 1)
    {
      v174 = 0x100000000;
      goto LABEL_70;
    }
  }

  HIDWORD(v174) = v28 ^ 1;
  v13 = __sb__runningInSpringBoard();
  if (v13)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v140 = [MEMORY[0x277D759A0] mainScreen];
    [v140 _referenceBounds];
  }

  LODWORD(v174) = v13 ^ 1;
  BSSizeRoundForScale();
  if (v34 >= *(MEMORY[0x277D66E30] + 248))
  {
    v167 = 0;
    v168 = 0;
    v166 = 0;
    v169 = 0;
    v165 = 0;
    v164 = 0;
    v170 = 0;
    v163 = 0;
    v162 = 0;
    v171 = 0;
    v161 = 0;
    v160 = 0;
    v172 = 0;
    v159 = 0;
    v158 = 0;
    v173 = 0;
    v156 = 0;
    v157 = 0;
    v154 = 0;
    v155 = 0;
    v153 = 0;
    v182 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0.0;
    goto LABEL_79;
  }

LABEL_70:
  v13 = __sb__runningInSpringBoard();
  if (v13)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_72;
    }

LABEL_78:
    v167 = 0;
    v168 = 0;
    v166 = 0;
    v169 = 0;
    v165 = 0;
    v164 = 0;
    v170 = 0;
    v163 = 0;
    v162 = 0;
    v171 = 0;
    v161 = 0;
    v160 = 0;
    v172 = 0;
    v159 = 0;
    v158 = 0;
    v156 = 0;
    v157 = 0;
    v154 = 0;
    v155 = 0;
    v153 = 0;
    v182 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0.0;
    v173 = v13 ^ 1;
    goto LABEL_79;
  }

  v144 = [MEMORY[0x277D75418] currentDevice];
  if ([v144 userInterfaceIdiom] == 1)
  {
    goto LABEL_78;
  }

LABEL_72:
  v173 = v13 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_76:
    v172 = 0;
    goto LABEL_200;
  }

  v35 = __sb__runningInSpringBoard();
  if (v35)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_76;
    }
  }

  else
  {
    v138 = [MEMORY[0x277D75418] currentDevice];
    if ([v138 userInterfaceIdiom])
    {
      v172 = 0x100000000;
      goto LABEL_200;
    }
  }

  HIDWORD(v172) = v35 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v13 = __sb__runningInSpringBoard();
    if (v13)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v131 = [MEMORY[0x277D759A0] mainScreen];
      [v131 _referenceBounds];
    }

    LODWORD(v172) = v13 ^ 1;
    BSSizeRoundForScale();
    if (v61 >= *(MEMORY[0x277D66E30] + 200))
    {
      v167 = 0;
      v168 = 0;
      v166 = 0;
      v169 = 0;
      v165 = 0;
      v164 = 0;
      v170 = 0;
      v163 = 0;
      v162 = 0;
      v171 = 0;
      v161 = 0;
      v160 = 0;
      v158 = 0;
      v159 = 0;
      v156 = 0;
      v157 = 0;
      v154 = 0;
      v155 = 0;
      v153 = 0;
      v182 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 80.0;
      goto LABEL_79;
    }
  }

  else
  {
    LODWORD(v172) = 0;
  }

LABEL_200:
  v13 = __sb__runningInSpringBoard();
  if (v13)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v171 = 0;
      goto LABEL_210;
    }
  }

  else
  {
    v139 = [MEMORY[0x277D75418] currentDevice];
    if ([v139 userInterfaceIdiom])
    {
      v171 = 0x100000000;
      goto LABEL_210;
    }
  }

  HIDWORD(v171) = v13 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v13 = __sb__runningInSpringBoard();
    if (v13)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v134 = [MEMORY[0x277D759A0] mainScreen];
      [v134 _referenceBounds];
    }

    LODWORD(v171) = v13 ^ 1;
    BSSizeRoundForScale();
    if (v59 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_214;
    }
  }

  else
  {
    LODWORD(v171) = 0;
  }

LABEL_210:
  if (_SBF_Private_IsD94Like())
  {
    v167 = 0;
    v168 = 0;
    v166 = 0;
    v169 = 0;
    v165 = 0;
    v164 = 0;
    v170 = 0;
    v163 = 0;
    v162 = 0;
    v160 = 0;
    v161 = 0;
    v158 = 0;
    v159 = 0;
    v156 = 0;
    v157 = 0;
    v154 = 0;
    v155 = 0;
    v153 = 0;
    v182 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 70.0;
    goto LABEL_79;
  }

LABEL_214:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_218:
    v170 = 0;
    goto LABEL_228;
  }

  v60 = __sb__runningInSpringBoard();
  if (v60)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_218;
    }
  }

  else
  {
    v135 = [MEMORY[0x277D75418] currentDevice];
    if ([v135 userInterfaceIdiom])
    {
      v170 = 0x100000000;
      goto LABEL_228;
    }
  }

  HIDWORD(v170) = v60 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v13 = __sb__runningInSpringBoard();
    if (v13)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v126 = [MEMORY[0x277D759A0] mainScreen];
      [v126 _referenceBounds];
    }

    LODWORD(v170) = v13 ^ 1;
    BSSizeRoundForScale();
    if (v66 >= *(MEMORY[0x277D66E30] + 136))
    {
      v167 = 0;
      v168 = 0;
      v166 = 0;
      v169 = 0;
      v165 = 0;
      v164 = 0;
      v163 = 0;
      v161 = 0;
      v162 = 0;
      v159 = 0;
      v160 = 0;
      v157 = 0;
      v158 = 0;
      v155 = 0;
      v156 = 0;
      v154 = 0;
      v153 = 0;
      v182 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 80.0;
      goto LABEL_79;
    }
  }

  else
  {
    LODWORD(v170) = 0;
  }

LABEL_228:
  v13 = __sb__runningInSpringBoard();
  if (v13)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v169 = 0;
      goto LABEL_238;
    }
  }

  else
  {
    v137 = [MEMORY[0x277D75418] currentDevice];
    if ([v137 userInterfaceIdiom])
    {
      v169 = 0x100000000;
      goto LABEL_238;
    }
  }

  HIDWORD(v169) = v13 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v13 = __sb__runningInSpringBoard();
    if (v13)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v130 = [MEMORY[0x277D759A0] mainScreen];
      [v130 _referenceBounds];
    }

    LODWORD(v169) = v13 ^ 1;
    BSSizeRoundForScale();
    if (v62 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_242;
    }
  }

  else
  {
    LODWORD(v169) = 0;
  }

LABEL_238:
  if (_SBF_Private_IsD64Like())
  {
    v167 = 0;
    v168 = 0;
    v166 = 0;
    v165 = 0;
    v164 = 0;
    v163 = 0;
    v161 = 0;
    v162 = 0;
    v159 = 0;
    v160 = 0;
    v157 = 0;
    v158 = 0;
    v155 = 0;
    v156 = 0;
    v154 = 0;
    v153 = 0;
    v182 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 70.0;
    goto LABEL_79;
  }

LABEL_242:
  v63 = __sb__runningInSpringBoard();
  if (v63)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v167) = 0;
      v168 = 0;
      goto LABEL_252;
    }
  }

  else
  {
    v136 = [MEMORY[0x277D75418] currentDevice];
    if ([v136 userInterfaceIdiom])
    {
      HIDWORD(v167) = 0;
      v168 = 1;
      goto LABEL_252;
    }
  }

  v168 = v63 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v64 = __sb__runningInSpringBoard();
    if (v64)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v127 = [MEMORY[0x277D759A0] mainScreen];
      [v127 _referenceBounds];
    }

    v13 = v64 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v167) = v13;
    if (v65 >= *(MEMORY[0x277D66E30] + 136))
    {
      LODWORD(v167) = 0;
      v166 = 0;
      v165 = 0;
      v164 = 0;
      v163 = 0;
      v161 = 0;
      v162 = 0;
      v159 = 0;
      v160 = 0;
      v157 = 0;
      v158 = 0;
      v155 = 0;
      v156 = 0;
      v154 = 0;
      v153 = 0;
      v182 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 80.0;
      goto LABEL_79;
    }
  }

  else
  {
    HIDWORD(v167) = 0;
  }

LABEL_252:
  v13 = __sb__runningInSpringBoard();
  if (v13)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v167) = 0;
      HIDWORD(v166) = 0;
      goto LABEL_262;
    }
  }

  else
  {
    v133 = [MEMORY[0x277D75418] currentDevice];
    if ([v133 userInterfaceIdiom])
    {
      HIDWORD(v166) = 0;
      LODWORD(v167) = 1;
      goto LABEL_262;
    }
  }

  LODWORD(v167) = v13 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v13 = __sb__runningInSpringBoard();
    if (v13)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v125 = [MEMORY[0x277D759A0] mainScreen];
      [v125 _referenceBounds];
    }

    HIDWORD(v166) = v13 ^ 1;
    BSSizeRoundForScale();
    if (v67 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_272;
    }
  }

  else
  {
    HIDWORD(v166) = 0;
  }

LABEL_262:
  if (_SBF_Private_IsD54())
  {
    LODWORD(v166) = 0;
    v165 = 0;
    v164 = 0;
    v163 = 0;
    v161 = 0;
    v162 = 0;
    v159 = 0;
    v160 = 0;
    v157 = 0;
    v158 = 0;
    v155 = 0;
    v156 = 0;
    v154 = 0;
    v153 = 0;
    v182 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 70.0;
    goto LABEL_79;
  }

LABEL_272:
  v68 = __sb__runningInSpringBoard();
  if (v68)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v166) = 0;
      HIDWORD(v165) = 0;
      goto LABEL_282;
    }
  }

  else
  {
    v132 = [MEMORY[0x277D75418] currentDevice];
    if ([v132 userInterfaceIdiom])
    {
      HIDWORD(v165) = 0;
      LODWORD(v166) = 1;
      goto LABEL_282;
    }
  }

  LODWORD(v166) = v68 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v69 = __sb__runningInSpringBoard();
    if (v69)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v122 = [MEMORY[0x277D759A0] mainScreen];
      [v122 _referenceBounds];
    }

    v13 = v69 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v165) = v13;
    if (v70 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      LODWORD(v165) = 0;
      v164 = 0;
      v163 = 0;
      v161 = 0;
      v162 = 0;
      v159 = 0;
      v160 = 0;
      v157 = 0;
      v158 = 0;
      v155 = 0;
      v156 = 0;
      v154 = 0;
      v153 = 0;
      v182 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0.0;
      goto LABEL_79;
    }
  }

  else
  {
    HIDWORD(v165) = 0;
  }

LABEL_282:
  v13 = __sb__runningInSpringBoard();
  if (v13)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v165) = 0;
      HIDWORD(v164) = 0;
      goto LABEL_292;
    }
  }

  else
  {
    v129 = [MEMORY[0x277D75418] currentDevice];
    if ([v129 userInterfaceIdiom])
    {
      HIDWORD(v164) = 0;
      LODWORD(v165) = 1;
      goto LABEL_292;
    }
  }

  LODWORD(v165) = v13 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v13 = __sb__runningInSpringBoard();
    if (v13)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v121 = [MEMORY[0x277D759A0] mainScreen];
      [v121 _referenceBounds];
    }

    HIDWORD(v164) = v13 ^ 1;
    BSSizeRoundForScale();
    if (v71 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_301;
    }
  }

  else
  {
    HIDWORD(v164) = 0;
  }

LABEL_292:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    LODWORD(v164) = 0;
    v163 = 0;
    v161 = 0;
    v162 = 0;
    v159 = 0;
    v160 = 0;
    v157 = 0;
    v158 = 0;
    v155 = 0;
    v156 = 0;
    v154 = 0;
    v153 = 0;
    v182 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0.0;
    goto LABEL_79;
  }

LABEL_301:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_305:
    LODWORD(v164) = 0;
    HIDWORD(v163) = 0;
    goto LABEL_312;
  }

  v72 = __sb__runningInSpringBoard();
  if (v72)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_305;
    }
  }

  else
  {
    v124 = [MEMORY[0x277D75418] currentDevice];
    if ([v124 userInterfaceIdiom])
    {
      HIDWORD(v163) = 0;
      LODWORD(v164) = 1;
      goto LABEL_312;
    }
  }

  LODWORD(v164) = v72 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v13 = __sb__runningInSpringBoard();
    if (v13)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v115 = [MEMORY[0x277D759A0] mainScreen];
      [v115 _referenceBounds];
    }

    HIDWORD(v163) = v13 ^ 1;
    BSSizeRoundForScale();
    if (v75 >= *(MEMORY[0x277D66E30] + 184))
    {
      LODWORD(v163) = 0;
      v161 = 0;
      v162 = 0;
      v159 = 0;
      v160 = 0;
      v157 = 0;
      v158 = 0;
      v155 = 0;
      v156 = 0;
      v154 = 0;
      v153 = 0;
      v182 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 80.0;
      goto LABEL_79;
    }
  }

  else
  {
    HIDWORD(v163) = 0;
  }

LABEL_312:
  v13 = __sb__runningInSpringBoard();
  if (v13)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v163) = 0;
      HIDWORD(v162) = 0;
      goto LABEL_322;
    }
  }

  else
  {
    v128 = [MEMORY[0x277D75418] currentDevice];
    if ([v128 userInterfaceIdiom])
    {
      HIDWORD(v162) = 0;
      LODWORD(v163) = 1;
      goto LABEL_322;
    }
  }

  LODWORD(v163) = v13 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v13 = __sb__runningInSpringBoard();
    if (v13)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v118 = [MEMORY[0x277D759A0] mainScreen];
      [v118 _referenceBounds];
    }

    HIDWORD(v162) = v13 ^ 1;
    BSSizeRoundForScale();
    if (v73 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_326;
    }
  }

  else
  {
    HIDWORD(v162) = 0;
  }

LABEL_322:
  if (_SBF_Private_IsD93Like())
  {
    LODWORD(v162) = 0;
    v160 = 0;
    v161 = 0;
    v158 = 0;
    v159 = 0;
    v156 = 0;
    v157 = 0;
    v154 = 0;
    v155 = 0;
    v153 = 0;
    v182 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 65.66666;
    goto LABEL_79;
  }

LABEL_326:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_330:
    LODWORD(v162) = 0;
    HIDWORD(v161) = 0;
    goto LABEL_340;
  }

  v74 = __sb__runningInSpringBoard();
  if (v74)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_330;
    }
  }

  else
  {
    v120 = [MEMORY[0x277D75418] currentDevice];
    if ([v120 userInterfaceIdiom])
    {
      HIDWORD(v161) = 0;
      LODWORD(v162) = 1;
      goto LABEL_340;
    }
  }

  LODWORD(v162) = v74 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v13 = __sb__runningInSpringBoard();
    if (v13)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v111 = [MEMORY[0x277D759A0] mainScreen];
      [v111 _referenceBounds];
    }

    HIDWORD(v161) = v13 ^ 1;
    BSSizeRoundForScale();
    if (v80 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v161) = 0;
      v159 = 0;
      v160 = 0;
      v157 = 0;
      v158 = 0;
      v155 = 0;
      v156 = 0;
      v154 = 0;
      v153 = 0;
      v182 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 80.0;
      goto LABEL_79;
    }
  }

  else
  {
    HIDWORD(v161) = 0;
  }

LABEL_340:
  v76 = __sb__runningInSpringBoard();
  if (v76)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v161) = 0;
      v13 = 0;
      goto LABEL_350;
    }
  }

  else
  {
    v123 = [MEMORY[0x277D75418] currentDevice];
    if ([v123 userInterfaceIdiom])
    {
      v13 = 0;
      LODWORD(v161) = 1;
      goto LABEL_350;
    }
  }

  LODWORD(v161) = v76 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v77 = __sb__runningInSpringBoard();
    if (v77)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v114 = [MEMORY[0x277D759A0] mainScreen];
      [v114 _referenceBounds];
    }

    v13 = v77 ^ 1u;
    BSSizeRoundForScale();
    if (v78 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_354;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_350:
  if (_SBF_Private_IsD63Like())
  {
    HIDWORD(v160) = v13;
    LODWORD(v160) = 0;
    v158 = 0;
    v159 = 0;
    v156 = 0;
    v157 = 0;
    v154 = 0;
    v155 = 0;
    v153 = 0;
    v182 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 65.66666;
    goto LABEL_79;
  }

LABEL_354:
  HIDWORD(v160) = v13;
  if (!_SBF_Private_IsD23Like())
  {
LABEL_358:
    LODWORD(v160) = 0;
    HIDWORD(v159) = 0;
    goto LABEL_368;
  }

  v79 = __sb__runningInSpringBoard();
  if (v79)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v116 = [MEMORY[0x277D75418] currentDevice];
    if ([v116 userInterfaceIdiom])
    {
      HIDWORD(v159) = 0;
      LODWORD(v160) = 1;
      goto LABEL_368;
    }
  }

  LODWORD(v160) = v79 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v13 = __sb__runningInSpringBoard();
    if (v13)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v107 = [MEMORY[0x277D759A0] mainScreen];
      [v107 _referenceBounds];
    }

    HIDWORD(v159) = v13 ^ 1;
    BSSizeRoundForScale();
    if (v84 >= *(MEMORY[0x277D66E30] + 216))
    {
      LODWORD(v159) = 0;
      v157 = 0;
      v158 = 0;
      v155 = 0;
      v156 = 0;
      v154 = 0;
      v153 = 0;
      v182 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 80.0;
      goto LABEL_79;
    }
  }

  else
  {
    HIDWORD(v159) = 0;
  }

LABEL_368:
  v13 = __sb__runningInSpringBoard();
  if (v13)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v159) = 0;
      HIDWORD(v158) = 0;
      goto LABEL_378;
    }
  }

  else
  {
    v119 = [MEMORY[0x277D75418] currentDevice];
    if ([v119 userInterfaceIdiom])
    {
      HIDWORD(v158) = 0;
      LODWORD(v159) = 1;
      goto LABEL_378;
    }
  }

  LODWORD(v159) = v13 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v13 = __sb__runningInSpringBoard();
    if (v13)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v110 = [MEMORY[0x277D759A0] mainScreen];
      [v110 _referenceBounds];
    }

    HIDWORD(v158) = v13 ^ 1;
    BSSizeRoundForScale();
    if (v81 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_382;
    }
  }

  else
  {
    HIDWORD(v158) = 0;
  }

LABEL_378:
  if (_SBF_Private_IsD23Like())
  {
    LODWORD(v158) = 0;
    v156 = 0;
    v157 = 0;
    v154 = 0;
    v155 = 0;
    v153 = 0;
    v182 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 70.0;
    goto LABEL_79;
  }

LABEL_382:
  v82 = __sb__runningInSpringBoard();
  if (v82)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v158) = 0;
      HIDWORD(v157) = 0;
      goto LABEL_392;
    }
  }

  else
  {
    v117 = [MEMORY[0x277D75418] currentDevice];
    if ([v117 userInterfaceIdiom])
    {
      HIDWORD(v157) = 0;
      LODWORD(v158) = 1;
      goto LABEL_392;
    }
  }

  LODWORD(v158) = v82 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v13 = __sb__runningInSpringBoard();
    if (v13)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v108 = [MEMORY[0x277D759A0] mainScreen];
      [v108 _referenceBounds];
    }

    HIDWORD(v157) = v13 ^ 1;
    BSSizeRoundForScale();
    if (v83 >= *(MEMORY[0x277D66E30] + 120))
    {
      LODWORD(v157) = 0;
      v155 = 0;
      v156 = 0;
      v154 = 0;
      v153 = 0;
      v182 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0.0;
      goto LABEL_79;
    }
  }

  else
  {
    HIDWORD(v157) = 0;
  }

LABEL_392:
  v13 = __sb__runningInSpringBoard();
  if (v13)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v157) = 0;
      HIDWORD(v156) = 0;
      goto LABEL_402;
    }
  }

  else
  {
    v113 = [MEMORY[0x277D75418] currentDevice];
    if ([v113 userInterfaceIdiom])
    {
      HIDWORD(v156) = 0;
      LODWORD(v157) = 1;
      goto LABEL_402;
    }
  }

  LODWORD(v157) = v13 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v13 = __sb__runningInSpringBoard();
    if (v13)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v106 = [MEMORY[0x277D759A0] mainScreen];
      [v106 _referenceBounds];
    }

    HIDWORD(v156) = v13 ^ 1;
    BSSizeRoundForScale();
    if (v85 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_412;
    }
  }

  else
  {
    HIDWORD(v156) = 0;
  }

LABEL_402:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    LODWORD(v156) = 0;
    v154 = 0;
    v155 = 0;
    v153 = 0;
    v182 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0.0;
    goto LABEL_79;
  }

LABEL_412:
  v86 = __sb__runningInSpringBoard();
  if (v86)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v156) = 0;
      HIDWORD(v155) = 0;
      goto LABEL_422;
    }
  }

  else
  {
    v112 = [MEMORY[0x277D75418] currentDevice];
    if ([v112 userInterfaceIdiom])
    {
      HIDWORD(v155) = 0;
      LODWORD(v156) = 1;
      goto LABEL_422;
    }
  }

  LODWORD(v156) = v86 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v13 = __sb__runningInSpringBoard();
    if (v13)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v105 = [MEMORY[0x277D759A0] mainScreen];
      [v105 _referenceBounds];
    }

    HIDWORD(v155) = v13 ^ 1;
    BSSizeRoundForScale();
    if (v89 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v155) = 0;
      v154 = 0;
      v153 = 0;
      v182 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
LABEL_445:
      v26 = 80.0;
      goto LABEL_79;
    }
  }

  else
  {
    HIDWORD(v155) = 0;
  }

LABEL_422:
  v87 = __sb__runningInSpringBoard();
  if (v87)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v155) = 0;
      v13 = 0;
      goto LABEL_432;
    }
  }

  else
  {
    v109 = [MEMORY[0x277D75418] currentDevice];
    if ([v109 userInterfaceIdiom])
    {
      v13 = 0;
      LODWORD(v155) = 1;
      goto LABEL_432;
    }
  }

  LODWORD(v155) = v87 ^ 1;
  if (SBFEffectiveHomeButtonType() != 2)
  {
    v13 = 0;
    goto LABEL_432;
  }

  v88 = __sb__runningInSpringBoard();
  if (v88)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v104 = [MEMORY[0x277D759A0] mainScreen];
    [v104 _referenceBounds];
  }

  v13 = v88 ^ 1u;
  BSSizeRoundForScale();
  if (v90 < *(MEMORY[0x277D66E30] + 104))
  {
LABEL_432:
    if (_SBF_Private_IsD53())
    {
      HIDWORD(v154) = v13;
      LODWORD(v154) = 0;
      v153 = 0;
      v182 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 65.66666;
      goto LABEL_79;
    }
  }

  HIDWORD(v154) = v13;
  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
  {
    goto LABEL_444;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    goto LABEL_447;
  }

  if (_SBF_Private_IsD52OrSimilarDevice())
  {
LABEL_444:
    LODWORD(v154) = 0;
    v153 = 0;
    v182 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_445;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
LABEL_447:
    LODWORD(v154) = 0;
    v153 = 0;
    v182 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 68.33333;
    goto LABEL_79;
  }

  v91 = __sb__runningInSpringBoard();
  if (v91)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v154) = 0;
      v153 = 0;
      goto LABEL_458;
    }
  }

  else
  {
    v103 = [MEMORY[0x277D75418] currentDevice];
    if ([v103 userInterfaceIdiom])
    {
      v153 = 0;
      LODWORD(v154) = 1;
      goto LABEL_458;
    }
  }

  LODWORD(v154) = v91 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v13 = __sb__runningInSpringBoard();
    if (v13)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v100 = [MEMORY[0x277D759A0] mainScreen];
      [v100 _referenceBounds];
    }

    v153 = v13 ^ 1;
    BSSizeRoundForScale();
    if (v96 >= *(MEMORY[0x277D66E30] + 88))
    {
      v182 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0.0;
      goto LABEL_79;
    }
  }

  else
  {
    v153 = 0;
  }

LABEL_458:
  v92 = __sb__runningInSpringBoard();
  if (v92)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v182 = 0;
      v22 = 0;
      goto LABEL_468;
    }
  }

  else
  {
    v102 = [MEMORY[0x277D75418] currentDevice];
    if ([v102 userInterfaceIdiom])
    {
      v22 = 0;
      v182 = 1;
      goto LABEL_468;
    }
  }

  v182 = v92 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v13 = __sb__runningInSpringBoard();
    if (v13)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v99 = [MEMORY[0x277D759A0] mainScreen];
      [v99 _referenceBounds];
    }

    v22 = v13 ^ 1;
    BSSizeRoundForScale();
    if (v97 >= *(MEMORY[0x277D66E30] + 72))
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0.0;
      goto LABEL_79;
    }
  }

  else
  {
    v22 = 0;
  }

LABEL_468:
  v13 = __sb__runningInSpringBoard();
  if (!v13)
  {
    v101 = [MEMORY[0x277D75418] currentDevice];
    if ([v101 userInterfaceIdiom])
    {
      v24 = 0;
      v23 = 1;
      goto LABEL_478;
    }

LABEL_474:
    v23 = v13 ^ 1;
    v93 = __sb__runningInSpringBoard();
    if (v93)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v13 = [MEMORY[0x277D759A0] mainScreen];
      [v13 _referenceBounds];
    }

    v24 = v93 ^ 1;
    BSSizeRoundForScale();
    if (v94 >= *(MEMORY[0x277D66E30] + 56))
    {
      goto LABEL_481;
    }

    goto LABEL_478;
  }

  if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
  {
    goto LABEL_474;
  }

  v23 = 0;
  v24 = 0;
LABEL_478:
  v95 = __sb__runningInSpringBoard();
  if (v95)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
LABEL_481:
      v25 = 0;
      v26 = 0.0;
      goto LABEL_79;
    }
  }

  else
  {
    v2 = [MEMORY[0x277D75418] currentDevice];
    if ([v2 userInterfaceIdiom])
    {
      v26 = 0.0;
      v25 = 1;
      goto LABEL_79;
    }
  }

  v25 = v95 ^ 1;
  v98 = __sb__runningInSpringBoard();
  if (v98)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v95 = [MEMORY[0x277D759A0] mainScreen];
    [v95 _referenceBounds];
  }

  BSSizeRoundForScale();
  v26 = 0.0;
  if (v98 != 1)
  {
  }

LABEL_79:
  if (v25)
  {
  }

  if (v24)
  {
  }

  if (v23)
  {
  }

  if (v22)
  {
  }

  if (v182)
  {
  }

  if (v153)
  {
  }

  if (v154)
  {
  }

  if (HIDWORD(v154))
  {
  }

  if (v155)
  {
  }

  if (HIDWORD(v155))
  {
  }

  if (v156)
  {
  }

  if (HIDWORD(v156))
  {
  }

  if (v157)
  {
  }

  if (HIDWORD(v157))
  {
  }

  if (v158)
  {
  }

  if (HIDWORD(v158))
  {
  }

  if (v159)
  {
  }

  if (HIDWORD(v159))
  {
  }

  if (v160)
  {
  }

  if (HIDWORD(v160))
  {
  }

  if (v161)
  {
  }

  if (HIDWORD(v161))
  {
  }

  if (v162)
  {
  }

  if (HIDWORD(v162))
  {
  }

  if (v163)
  {
  }

  if (HIDWORD(v163))
  {
  }

  if (v164)
  {
  }

  if (HIDWORD(v164))
  {
  }

  if (v165)
  {
  }

  if (HIDWORD(v165))
  {
  }

  if (v166)
  {
  }

  if (HIDWORD(v166))
  {
  }

  if (v167)
  {
  }

  if (HIDWORD(v167))
  {
  }

  if (v168)
  {
  }

  if (v169)
  {
  }

  if (HIDWORD(v169))
  {
  }

  if (v170)
  {
  }

  if (HIDWORD(v170))
  {
  }

  if (v171)
  {
  }

  if (HIDWORD(v171))
  {
  }

  if (v172)
  {
  }

  if (HIDWORD(v172))
  {
  }

  if (v173)
  {
  }

  if (v174)
  {
  }

  if (HIDWORD(v174))
  {
  }

  if (v175)
  {
  }

  if (HIDWORD(v175))
  {
  }

  if (v176)
  {
  }

  if (HIDWORD(v176))
  {

    if (!v177)
    {
      goto LABEL_179;
    }
  }

  else if (!v177)
  {
LABEL_179:
    if (HIDWORD(v177))
    {
      goto LABEL_180;
    }

    goto LABEL_188;
  }

  if (HIDWORD(v177))
  {
LABEL_180:

    if (!v178)
    {
      goto LABEL_181;
    }

    goto LABEL_189;
  }

LABEL_188:
  if (!v178)
  {
LABEL_181:
    if (HIDWORD(v178))
    {
      goto LABEL_182;
    }

    goto LABEL_190;
  }

LABEL_189:

  if (HIDWORD(v178))
  {
LABEL_182:

    if (!v179)
    {
      goto LABEL_183;
    }

LABEL_191:

    if (!v180)
    {
      goto LABEL_185;
    }

    goto LABEL_184;
  }

LABEL_190:
  if (v179)
  {
    goto LABEL_191;
  }

LABEL_183:
  if (v180)
  {
LABEL_184:
  }

LABEL_185:
  [(CALayer *)self->_auxiliaryChargingBoltGlyph setBounds:0.0, 0.0, v9 / 120.0 * v26, v9];
  v36 = self->_auxiliaryChargingBoltGlyph;
  v37 = [(CALayer *)self->_chargingBoltGlyph contents];
  [(CALayer *)v36 setContents:v37];

  [(CALayer *)self->_auxiliaryChargingBoltGlyph setOpacity:0.0];
  v38 = self->_auxiliaryChargingBoltGlyph;
  v39 = [MEMORY[0x277CD9EA0] brightnessFilterWithAmount:0.1];
  v183[0] = v39;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v183 count:1];
  [(CALayer *)v38 setFilters:v40];

  v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v42 = objc_alloc(MEMORY[0x277D755E8]);
  v43 = MEMORY[0x277D755B8];
  v44 = [(CSBatteryChargingRingView *)self traitCollection];
  v45 = [v43 imageNamed:@"bolt-outline-fill" inBundle:v41 compatibleWithTraitCollection:v44];
  v46 = [v42 initWithImage:v45];
  boltMaskImageView = self->_boltMaskImageView;
  self->_boltMaskImageView = v46;

  [(UIImageView *)self->_boltMaskImageView setContentMode:1];
  v48 = [(UIImageView *)self->_boltMaskImageView layer];
  auxiliaryChargingBoltGlyphMask = self->_auxiliaryChargingBoltGlyphMask;
  self->_auxiliaryChargingBoltGlyphMask = v48;

  BSRectWithSize();
  [(CSRingLayer *)self->_trackFillRingLayer bounds];
  CGRectGetMidX(v184);
  v50 = [(CSMagSafeAccessoryConfiguration *)self->_configuration auxiliaryRing];
  [v50 lineWidth];
  UIRectCenteredAboutPoint();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;

  [(UIImageView *)self->_boltMaskImageView setFrame:v52, v54, v56, v58];
  [(CALayer *)self->_auxiliaryChargingBoltGlyphMask setOpacity:0.0];
  [(CALayer *)self->_auxiliaryChargingBoltGlyphMask setCompositingFilter:*MEMORY[0x277CDA310]];
}

- (id)_trackAnimationForConfiguration:(id)a3 withCurrentTime:(double)a4
{
  v15[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CD9EC8];
  v6 = a3;
  v7 = [v5 animationWithKeyPath:@"lineWidth"];
  [v7 setBeginTime:a4 + 0.67];
  [v7 setKeyTimes:&unk_283079F08];
  v15[0] = &unk_283078C90;
  v8 = MEMORY[0x277CCABB0];
  [v6 lineWidth];
  v10 = v9;

  v11 = [v8 numberWithDouble:v10];
  v15[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  [v7 setValues:v12];

  [v7 setDuration:0.07];
  [v7 setRemovedOnCompletion:0];
  [v7 setFillMode:*MEMORY[0x277CDA238]];
  v13 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
  [v7 setTimingFunction:v13];

  return v7;
}

- (id)_springAnimationWithKeyPath:(id)a3 forPresent:(BOOL)a4 from:(id)a5 to:(id)a6
{
  v6 = 0.9;
  if (!a4)
  {
    v6 = 0.0;
  }

  return [CSBatteryChargingRingView _springAnimationWithKeyPath:"_springAnimationWithKeyPath:delay:forPresent:from:to:" delay:a3 forPresent:v6 from:? to:?];
}

- (id)_springAnimationWithKeyPath:(id)a3 delay:(double)a4 forPresent:(BOOL)a5 from:(id)a6 to:(id)a7
{
  v8 = a5;
  v12 = a7;
  v13 = a6;
  if (v8)
  {
    v14 = 85.25592;
    v15 = 18.46683;
    v16 = 1.0;
  }

  else
  {
    v14 = 173.99168;
    v15 = 26.38118;
    v16 = 0.7;
  }

  v17 = [(CSBatteryChargingRingView *)self _springAnimationWithKeyPath:a3 stiffness:v14 damping:v15 duration:v16 delay:a4];
  [v17 setFromValue:v13];

  [v17 setToValue:v12];

  return v17;
}

- (id)_springAnimationWithKeyPath:(id)a3 stiffness:(double)a4 damping:(double)a5 duration:(double)a6 delay:(double)a7
{
  v11 = [MEMORY[0x277CD9FA0] animationWithKeyPath:a3];
  if (a7 != 0.0)
  {
    [v11 setBeginTime:CACurrentMediaTime() + a7];
  }

  [v11 setRemovedOnCompletion:0];
  [v11 setFillMode:*MEMORY[0x277CDA238]];
  [v11 setStiffness:a4];
  [v11 setDamping:a5];
  [v11 setDuration:a6];

  return v11;
}

- (BOOL)_isShowingAuxiliary
{
  v2 = [(CSMagSafeAccessoryConfiguration *)self->_configuration auxiliaryRing];
  v3 = v2 != 0;

  return v3;
}

- (double)_estimatedDurationForAnimation:(unint64_t)a3
{
  if (a3)
  {
    return 0.5;
  }

  v6 = [(CSBatteryChargingRingView *)self _isShowingAuxiliary:v3];
  result = 1.9;
  if (v6)
  {
    return 2.25;
  }

  return result;
}

- (CGPoint)_positionForPill:(id)a3 forBatteryCharge:(double)a4
{
  v4 = fmin(fmax(a4, 0.0), 1.0);
  v5 = a3;
  [v5 bounds];
  MidX = CGRectGetMidX(v19);
  [v5 bounds];
  MidY = CGRectGetMidY(v20);
  [v5 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v21.origin.x = v9;
  v21.origin.y = v11;
  v21.size.width = v13;
  v21.size.height = v15;
  v16 = MidY + (1.0 - v4) * CGRectGetHeight(v21);
  v17 = MidX;
  result.y = v16;
  result.x = v17;
  return result;
}

- (CGRect)_pillFrameForBatteryCharge:(double)a3
{
  v3 = fmin(fmax(a3, 0.0), 1.0);
  v4 = (1.0 - v3) * 87.0;
  v5 = v3 * 87.0;
  v6 = 0.0;
  v7 = 28.0;
  result.size.height = v5;
  result.size.width = v7;
  result.origin.y = v4;
  result.origin.x = v6;
  return result;
}

- (id)_auxillaryGlyphImageForConfig:(id)a3
{
  externalBattery = self->_externalBattery;
  v4 = a3;
  v5 = [(BCBatteryDevice *)externalBattery productIdentifier];
  if (v5 == *MEMORY[0x277CF0DC0])
  {
    v6 = @"0828E54B965E418AB42353CA91BFBBEE.fill";
  }

  else
  {
    v6 = @"magsafe.batterypack.fill";
  }

  v7 = [MEMORY[0x277D755B8] _systemImageNamed:v6 withConfiguration:v4];

  return v7;
}

- (CGSize)_silhouettePhysicalSizeInMillimeters
{
  v3 = [(BCBatteryDevice *)self->_externalBattery productIdentifier];
  if (v3 == *MEMORY[0x277CF0DB8])
  {
    [(CSBatteryChargingRingView *)self _defaultSilhouettePhysicalSize];
  }

  else if (v3 == *MEMORY[0x277CF0DC0])
  {
    v5 = 122.1;
    v4 = 70.7;
  }

  else
  {
    v4 = *MEMORY[0x277CBF3A8];
    v5 = *(MEMORY[0x277CBF3A8] + 8);
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)_defaultSilhouettePhysicalSize
{
  v2 = 64.0;
  v3 = 95.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)_silhouetteBottomOffset
{
  v4 = [(BCBatteryDevice *)self->_externalBattery productIdentifier];
  v5 = 0.0;
  if (v4 != *MEMORY[0x277CF0DB8])
  {
    return v5;
  }

  v6 = __sb__runningInSpringBoard();
  if (v6)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v131 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v116 = [MEMORY[0x277D75418] currentDevice];
    if ([v116 userInterfaceIdiom] != 1)
    {
      v131 = 0x100000000;
      goto LABEL_11;
    }
  }

  HIDWORD(v131) = v6 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v117 = [MEMORY[0x277D759A0] mainScreen];
      [v117 _referenceBounds];
    }

    LODWORD(v131) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v21 == *(MEMORY[0x277D66E30] + 288) && v20 == *(MEMORY[0x277D66E30] + 296))
    {
      v126 = 0;
      memset(v125, 0, sizeof(v125));
      v127 = 0;
      v124 = 0;
      v128 = 0;
      v123 = 0;
      v122 = 0;
      v129 = 0;
      v121 = 0;
      v120 = 0;
      v130 = 0;
      v119 = 0;
      v118 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      goto LABEL_492;
    }
  }

  else
  {
    LODWORD(v131) = 0;
  }

LABEL_11:
  v8 = __sb__runningInSpringBoard();
  if (v8)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v130 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v115 = [MEMORY[0x277D75418] currentDevice];
    if ([v115 userInterfaceIdiom] != 1)
    {
      v130 = 0x100000000;
      goto LABEL_20;
    }
  }

  HIDWORD(v130) = v8 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v107 = [MEMORY[0x277D759A0] mainScreen];
      [v107 _referenceBounds];
    }

    LODWORD(v130) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v23 >= *(MEMORY[0x277D66E30] + 440))
    {
      v126 = 0;
      memset(v125, 0, sizeof(v125));
      v127 = 0;
      v124 = 0;
      v128 = 0;
      v123 = 0;
      v122 = 0;
      v129 = 0;
      v121 = 0;
      v120 = 0;
      v119 = 0;
      v118 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      goto LABEL_492;
    }
  }

  else
  {
    LODWORD(v130) = 0;
  }

LABEL_20:
  v9 = __sb__runningInSpringBoard();
  if (v9)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v129 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v114 = [MEMORY[0x277D75418] currentDevice];
    if ([v114 userInterfaceIdiom] != 1)
    {
      v129 = 0x100000000;
      goto LABEL_29;
    }
  }

  HIDWORD(v129) = v9 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v106 = [MEMORY[0x277D759A0] mainScreen];
      [v106 _referenceBounds];
    }

    LODWORD(v129) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v24 >= *(MEMORY[0x277D66E30] + 376))
    {
      v126 = 0;
      memset(v125, 0, sizeof(v125));
      v127 = 0;
      v124 = 0;
      v128 = 0;
      v123 = 0;
      v122 = 0;
      v120 = 0;
      v121 = 0;
      v119 = 0;
      v118 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      goto LABEL_492;
    }
  }

  else
  {
    LODWORD(v129) = 0;
  }

LABEL_29:
  v10 = __sb__runningInSpringBoard();
  if (v10)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v128 = 0;
      goto LABEL_38;
    }
  }

  else
  {
    v113 = [MEMORY[0x277D75418] currentDevice];
    if ([v113 userInterfaceIdiom] != 1)
    {
      v128 = 0x100000000;
      goto LABEL_38;
    }
  }

  HIDWORD(v128) = v10 ^ 1;
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v110 = [MEMORY[0x277D759A0] mainScreen];
    [v110 _referenceBounds];
  }

  LODWORD(v128) = v7 ^ 1;
  BSSizeRoundForScale();
  if (v11 >= *(MEMORY[0x277D66E30] + 280))
  {
    v126 = 0;
    memset(v125, 0, sizeof(v125));
    v127 = 0;
    v124 = 0;
    v122 = 0;
    v123 = 0;
    v120 = 0;
    v121 = 0;
    v119 = 0;
    v118 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_492;
  }

LABEL_38:
  v12 = __sb__runningInSpringBoard();
  if (v12)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v127 = 0;
      goto LABEL_48;
    }
  }

  else
  {
    v112 = [MEMORY[0x277D75418] currentDevice];
    if ([v112 userInterfaceIdiom] != 1)
    {
      v127 = 0x100000000;
      goto LABEL_48;
    }
  }

  HIDWORD(v127) = v12 ^ 1;
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v108 = [MEMORY[0x277D759A0] mainScreen];
    [v108 _referenceBounds];
  }

  LODWORD(v127) = v7 ^ 1;
  BSSizeRoundForScale();
  if (v18 >= *(MEMORY[0x277D66E30] + 264))
  {
    v126 = 0;
    memset(v125, 0, sizeof(v125));
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_492;
  }

LABEL_48:
  v19 = __sb__runningInSpringBoard();
  if (v19)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v126 = 0;
      goto LABEL_184;
    }
  }

  else
  {
    v111 = [MEMORY[0x277D75418] currentDevice];
    if ([v111 userInterfaceIdiom] != 1)
    {
      v126 = 0x100000000;
      goto LABEL_184;
    }
  }

  HIDWORD(v126) = v19 ^ 1;
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v105 = [MEMORY[0x277D759A0] mainScreen];
    [v105 _referenceBounds];
  }

  LODWORD(v126) = v7 ^ 1;
  BSSizeRoundForScale();
  if (v26 >= *(MEMORY[0x277D66E30] + 248))
  {
    memset(v125, 0, sizeof(v125));
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_492;
  }

LABEL_184:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_186;
    }

LABEL_192:
    memset(v125, 0, 100);
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    HIDWORD(v125[12]) = v7 ^ 1;
    goto LABEL_492;
  }

  v109 = [MEMORY[0x277D75418] currentDevice];
  if ([v109 userInterfaceIdiom] == 1)
  {
    goto LABEL_192;
  }

LABEL_186:
  HIDWORD(v125[12]) = v7 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_190:
    *(&v125[11] + 4) = 0;
    goto LABEL_200;
  }

  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_190;
    }
  }

  else
  {
    v103 = [MEMORY[0x277D75418] currentDevice];
    if ([v103 userInterfaceIdiom])
    {
      HIDWORD(v125[11]) = 0;
      LODWORD(v125[12]) = 1;
      goto LABEL_200;
    }
  }

  LODWORD(v125[12]) = v27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v96 = [MEMORY[0x277D759A0] mainScreen];
      [v96 _referenceBounds];
    }

    HIDWORD(v125[11]) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v30 >= *(MEMORY[0x277D66E30] + 200))
    {
      memset(v125, 0, 92);
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v118 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v5 = 83.0;
      goto LABEL_492;
    }
  }

  else
  {
    HIDWORD(v125[11]) = 0;
  }

LABEL_200:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v125[10] + 4) = 0;
      goto LABEL_210;
    }
  }

  else
  {
    v104 = [MEMORY[0x277D75418] currentDevice];
    if ([v104 userInterfaceIdiom])
    {
      HIDWORD(v125[10]) = 0;
      LODWORD(v125[11]) = 1;
      goto LABEL_210;
    }
  }

  LODWORD(v125[11]) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v99 = [MEMORY[0x277D759A0] mainScreen];
      [v99 _referenceBounds];
    }

    HIDWORD(v125[10]) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v28 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_214;
    }
  }

  else
  {
    HIDWORD(v125[10]) = 0;
  }

LABEL_210:
  if (_SBF_Private_IsD94Like())
  {
    memset(v125, 0, 84);
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v5 = 73.0;
    goto LABEL_492;
  }

LABEL_214:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_218:
    *(&v125[9] + 4) = 0;
    goto LABEL_228;
  }

  v29 = __sb__runningInSpringBoard();
  if (v29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_218;
    }
  }

  else
  {
    v100 = [MEMORY[0x277D75418] currentDevice];
    if ([v100 userInterfaceIdiom])
    {
      HIDWORD(v125[9]) = 0;
      LODWORD(v125[10]) = 1;
      goto LABEL_228;
    }
  }

  LODWORD(v125[10]) = v29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v91 = [MEMORY[0x277D759A0] mainScreen];
      [v91 _referenceBounds];
    }

    HIDWORD(v125[9]) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v34 >= *(MEMORY[0x277D66E30] + 136))
    {
      memset(v125, 0, 76);
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v118 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v5 = 72.0;
      goto LABEL_492;
    }
  }

  else
  {
    HIDWORD(v125[9]) = 0;
  }

LABEL_228:
  v7 = __sb__runningInSpringBoard();
  v2 = &unk_21EC95000;
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v125[8] + 4) = 0;
      goto LABEL_238;
    }
  }

  else
  {
    v102 = [MEMORY[0x277D75418] currentDevice];
    if ([v102 userInterfaceIdiom])
    {
      HIDWORD(v125[8]) = 0;
      LODWORD(v125[9]) = 1;
      goto LABEL_238;
    }
  }

  LODWORD(v125[9]) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v95 = [MEMORY[0x277D759A0] mainScreen];
      [v95 _referenceBounds];
    }

    HIDWORD(v125[8]) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v31 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_242;
    }
  }

  else
  {
    HIDWORD(v125[8]) = 0;
  }

LABEL_238:
  if (_SBF_Private_IsD64Like())
  {
    memset(v125, 0, 68);
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v5 = 57.0;
    goto LABEL_492;
  }

LABEL_242:
  v32 = __sb__runningInSpringBoard();
  if (v32)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v125[7] + 4) = 0;
      goto LABEL_252;
    }
  }

  else
  {
    v101 = [MEMORY[0x277D75418] currentDevice];
    if ([v101 userInterfaceIdiom])
    {
      HIDWORD(v125[7]) = 0;
      LODWORD(v125[8]) = 1;
      goto LABEL_252;
    }
  }

  LODWORD(v125[8]) = v32 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v92 = [MEMORY[0x277D759A0] mainScreen];
      [v92 _referenceBounds];
    }

    HIDWORD(v125[7]) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v33 >= *(MEMORY[0x277D66E30] + 136))
    {
      memset(v125, 0, 60);
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v118 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v5 = 72.0;
      goto LABEL_492;
    }
  }

  else
  {
    HIDWORD(v125[7]) = 0;
  }

LABEL_252:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v125[6] + 4) = 0;
      goto LABEL_262;
    }
  }

  else
  {
    v98 = [MEMORY[0x277D75418] currentDevice];
    if ([v98 userInterfaceIdiom])
    {
      HIDWORD(v125[6]) = 0;
      LODWORD(v125[7]) = 1;
      goto LABEL_262;
    }
  }

  LODWORD(v125[7]) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v90 = [MEMORY[0x277D759A0] mainScreen];
      [v90 _referenceBounds];
    }

    HIDWORD(v125[6]) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v35 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_272;
    }
  }

  else
  {
    HIDWORD(v125[6]) = 0;
  }

LABEL_262:
  if (_SBF_Private_IsD54())
  {
    memset(v125, 0, 52);
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v5 = 57.0;
    goto LABEL_492;
  }

LABEL_272:
  v36 = __sb__runningInSpringBoard();
  if (v36)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v125[5] + 4) = 0;
      goto LABEL_282;
    }
  }

  else
  {
    v97 = [MEMORY[0x277D75418] currentDevice];
    if ([v97 userInterfaceIdiom])
    {
      HIDWORD(v125[5]) = 0;
      LODWORD(v125[6]) = 1;
      goto LABEL_282;
    }
  }

  LODWORD(v125[6]) = v36 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v37 = __sb__runningInSpringBoard();
    if (v37)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v87 = [MEMORY[0x277D759A0] mainScreen];
      [v87 _referenceBounds];
    }

    v7 = v37 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v125[5]) = v7;
    if (v38 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      memset(v125, 0, 44);
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v118 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      goto LABEL_492;
    }
  }

  else
  {
    HIDWORD(v125[5]) = 0;
  }

LABEL_282:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v125[4] + 4) = 0;
      goto LABEL_292;
    }
  }

  else
  {
    v94 = [MEMORY[0x277D75418] currentDevice];
    if ([v94 userInterfaceIdiom])
    {
      HIDWORD(v125[4]) = 0;
      LODWORD(v125[5]) = 1;
      goto LABEL_292;
    }
  }

  LODWORD(v125[5]) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v86 = [MEMORY[0x277D759A0] mainScreen];
      [v86 _referenceBounds];
    }

    HIDWORD(v125[4]) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v39 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_301;
    }
  }

  else
  {
    HIDWORD(v125[4]) = 0;
  }

LABEL_292:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    memset(v125, 0, 36);
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_492;
  }

LABEL_301:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_305:
    *(&v125[3] + 4) = 0;
    goto LABEL_312;
  }

  v40 = __sb__runningInSpringBoard();
  if (v40)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_305;
    }
  }

  else
  {
    v89 = [MEMORY[0x277D75418] currentDevice];
    if ([v89 userInterfaceIdiom])
    {
      HIDWORD(v125[3]) = 0;
      LODWORD(v125[4]) = 1;
      goto LABEL_312;
    }
  }

  LODWORD(v125[4]) = v40 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v41 = __sb__runningInSpringBoard();
    if (v41)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v80 = [MEMORY[0x277D759A0] mainScreen];
      [v80 _referenceBounds];
    }

    v7 = v41 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v125[3]) = v7;
    if (v44 >= *(MEMORY[0x277D66E30] + 184))
    {
      memset(v125, 0, 28);
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v118 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v5 = 37.0;
      goto LABEL_492;
    }
  }

  else
  {
    HIDWORD(v125[3]) = 0;
  }

LABEL_312:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v125[2] + 4) = 0;
      goto LABEL_322;
    }
  }

  else
  {
    v93 = [MEMORY[0x277D75418] currentDevice];
    if ([v93 userInterfaceIdiom])
    {
      HIDWORD(v125[2]) = 0;
      LODWORD(v125[3]) = 1;
      goto LABEL_322;
    }
  }

  LODWORD(v125[3]) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v83 = [MEMORY[0x277D759A0] mainScreen];
      [v83 _referenceBounds];
    }

    HIDWORD(v125[2]) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v42 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_326;
    }
  }

  else
  {
    HIDWORD(v125[2]) = 0;
  }

LABEL_322:
  if (_SBF_Private_IsD93Like())
  {
    memset(v125, 0, 20);
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v5 = 30.333333;
    goto LABEL_492;
  }

LABEL_326:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_330:
    *(&v125[1] + 4) = 0;
    goto LABEL_340;
  }

  v43 = __sb__runningInSpringBoard();
  if (v43)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_330;
    }
  }

  else
  {
    v85 = [MEMORY[0x277D75418] currentDevice];
    if ([v85 userInterfaceIdiom])
    {
      HIDWORD(v125[1]) = 0;
      LODWORD(v125[2]) = 1;
      goto LABEL_340;
    }
  }

  LODWORD(v125[2]) = v43 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v45 = __sb__runningInSpringBoard();
    if (v45)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v76 = [MEMORY[0x277D759A0] mainScreen];
      [v76 _referenceBounds];
    }

    v7 = v45 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v125[1]) = v7;
    if (v48 >= *(MEMORY[0x277D66E30] + 104))
    {
      *(v125 + 4) = 0;
      LODWORD(v125[0]) = 0;
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v118 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v5 = 31.66666;
      goto LABEL_492;
    }
  }

  else
  {
    HIDWORD(v125[1]) = 0;
  }

LABEL_340:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(v125 + 4) = 0;
      goto LABEL_350;
    }
  }

  else
  {
    v88 = [MEMORY[0x277D75418] currentDevice];
    if ([v88 userInterfaceIdiom])
    {
      HIDWORD(v125[0]) = 0;
      LODWORD(v125[1]) = 1;
      goto LABEL_350;
    }
  }

  LODWORD(v125[1]) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v79 = [MEMORY[0x277D759A0] mainScreen];
      [v79 _referenceBounds];
    }

    HIDWORD(v125[0]) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v46 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_354;
    }
  }

  else
  {
    HIDWORD(v125[0]) = 0;
  }

LABEL_350:
  if (_SBF_Private_IsD63Like())
  {
    LODWORD(v125[0]) = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v5 = 20.33333;
    goto LABEL_492;
  }

LABEL_354:
  if (!_SBF_Private_IsD23Like())
  {
LABEL_358:
    LODWORD(v125[0]) = 0;
    HIDWORD(v124) = 0;
    goto LABEL_368;
  }

  v47 = __sb__runningInSpringBoard();
  if (v47)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v81 = [MEMORY[0x277D75418] currentDevice];
    if ([v81 userInterfaceIdiom])
    {
      HIDWORD(v124) = 0;
      LODWORD(v125[0]) = 1;
      goto LABEL_368;
    }
  }

  LODWORD(v125[0]) = v47 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v72 = [MEMORY[0x277D759A0] mainScreen];
      [v72 _referenceBounds];
    }

    HIDWORD(v124) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v53 >= *(MEMORY[0x277D66E30] + 216))
    {
      LODWORD(v124) = 0;
      v122 = 0;
      v123 = 0;
      v120 = 0;
      v121 = 0;
      v119 = 0;
      v118 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v5 = 61.66666;
      goto LABEL_492;
    }
  }

  else
  {
    HIDWORD(v124) = 0;
  }

LABEL_368:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v124) = 0;
      HIDWORD(v123) = 0;
      goto LABEL_378;
    }
  }

  else
  {
    v84 = [MEMORY[0x277D75418] currentDevice];
    if ([v84 userInterfaceIdiom])
    {
      HIDWORD(v123) = 0;
      LODWORD(v124) = 1;
      goto LABEL_378;
    }
  }

  LODWORD(v124) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v75 = [MEMORY[0x277D759A0] mainScreen];
      [v75 _referenceBounds];
    }

    HIDWORD(v123) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v49 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_382;
    }
  }

  else
  {
    HIDWORD(v123) = 0;
  }

LABEL_378:
  if (_SBF_Private_IsD23Like())
  {
    LODWORD(v123) = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v5 = 48.0;
    goto LABEL_492;
  }

LABEL_382:
  v50 = __sb__runningInSpringBoard();
  if (v50)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v123) = 0;
      HIDWORD(v122) = 0;
      goto LABEL_392;
    }
  }

  else
  {
    v82 = [MEMORY[0x277D75418] currentDevice];
    if ([v82 userInterfaceIdiom])
    {
      HIDWORD(v122) = 0;
      LODWORD(v123) = 1;
      goto LABEL_392;
    }
  }

  LODWORD(v123) = v50 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v51 = __sb__runningInSpringBoard();
    if (v51)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v73 = [MEMORY[0x277D759A0] mainScreen];
      [v73 _referenceBounds];
    }

    v7 = v51 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v122) = v7;
    if (v52 >= *(MEMORY[0x277D66E30] + 120))
    {
      LODWORD(v122) = 0;
      v120 = 0;
      v121 = 0;
      v119 = 0;
      v118 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      goto LABEL_492;
    }
  }

  else
  {
    HIDWORD(v122) = 0;
  }

LABEL_392:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v122) = 0;
      HIDWORD(v121) = 0;
      goto LABEL_402;
    }
  }

  else
  {
    v78 = [MEMORY[0x277D75418] currentDevice];
    if ([v78 userInterfaceIdiom])
    {
      HIDWORD(v121) = 0;
      LODWORD(v122) = 1;
      goto LABEL_402;
    }
  }

  LODWORD(v122) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v71 = [MEMORY[0x277D759A0] mainScreen];
      [v71 _referenceBounds];
    }

    HIDWORD(v121) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v54 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_412;
    }
  }

  else
  {
    HIDWORD(v121) = 0;
  }

LABEL_402:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    LODWORD(v121) = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_492;
  }

LABEL_412:
  v55 = __sb__runningInSpringBoard();
  if (v55)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v121) = 0;
      HIDWORD(v120) = 0;
      goto LABEL_422;
    }
  }

  else
  {
    v77 = [MEMORY[0x277D75418] currentDevice];
    if ([v77 userInterfaceIdiom])
    {
      HIDWORD(v120) = 0;
      LODWORD(v121) = 1;
      goto LABEL_422;
    }
  }

  LODWORD(v121) = v55 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v70 = [MEMORY[0x277D759A0] mainScreen];
      [v70 _referenceBounds];
    }

    HIDWORD(v120) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v56 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v120) = 0;
      v119 = 0;
      v118 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v5 = 31.66666;
      goto LABEL_492;
    }
  }

  else
  {
    HIDWORD(v120) = 0;
  }

LABEL_422:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v120) = 0;
      HIDWORD(v119) = 0;
      goto LABEL_432;
    }
  }

  else
  {
    v74 = [MEMORY[0x277D75418] currentDevice];
    if ([v74 userInterfaceIdiom])
    {
      HIDWORD(v119) = 0;
      LODWORD(v120) = 1;
      goto LABEL_432;
    }
  }

  LODWORD(v120) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v69 = [MEMORY[0x277D759A0] mainScreen];
      [v69 _referenceBounds];
    }

    HIDWORD(v119) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v57 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_439;
    }
  }

  else
  {
    HIDWORD(v119) = 0;
  }

LABEL_432:
  if (_SBF_Private_IsD53())
  {
    LODWORD(v119) = 0;
    v118 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v5 = 20.33333;
    goto LABEL_492;
  }

LABEL_439:
  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0 || _SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0 || (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0 || (_SBF_Private_IsD52ZoomedOrSimilarDevice() & 1) != 0)
  {
    LODWORD(v119) = 0;
    v118 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_492;
  }

  v58 = __sb__runningInSpringBoard();
  if (v58)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v119) = 0;
      v118 = 0;
      goto LABEL_456;
    }
  }

  else
  {
    v68 = [MEMORY[0x277D75418] currentDevice];
    if ([v68 userInterfaceIdiom])
    {
      v118 = 0;
      LODWORD(v119) = 1;
      goto LABEL_456;
    }
  }

  LODWORD(v119) = v58 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v66 = [MEMORY[0x277D759A0] mainScreen];
      [v66 _referenceBounds];
    }

    v118 = v7 ^ 1;
    BSSizeRoundForScale();
    if (v62 >= *(MEMORY[0x277D66E30] + 88))
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      goto LABEL_492;
    }
  }

  else
  {
    v118 = 0;
  }

LABEL_456:
  v59 = __sb__runningInSpringBoard();
  if (v59)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_466;
    }
  }

  else
  {
    v67 = [MEMORY[0x277D75418] currentDevice];
    if ([v67 userInterfaceIdiom])
    {
      v14 = 0;
      v13 = 1;
      goto LABEL_466;
    }
  }

  v13 = v59 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v65 = [MEMORY[0x277D759A0] mainScreen];
      [v65 _referenceBounds];
    }

    v14 = v7 ^ 1;
    BSSizeRoundForScale();
    if (v63 >= *(MEMORY[0x277D66E30] + 72))
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      goto LABEL_492;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_466:
  v7 = __sb__runningInSpringBoard();
  if (!v7)
  {
    v2 = [MEMORY[0x277D75418] currentDevice];
    if ([v2 userInterfaceIdiom])
    {
      v16 = 0;
      v15 = 1;
      goto LABEL_476;
    }

LABEL_472:
    v15 = v7 ^ 1;
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v3 = [MEMORY[0x277D759A0] mainScreen];
      [v3 _referenceBounds];
    }

    v16 = v7 ^ 1;
    BSSizeRoundForScale();
    if (v60 >= *(MEMORY[0x277D66E30] + 56))
    {
      goto LABEL_479;
    }

    goto LABEL_476;
  }

  if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
  {
    goto LABEL_472;
  }

  v15 = 0;
  v16 = 0;
LABEL_476:
  v61 = __sb__runningInSpringBoard();
  if (v61)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
LABEL_479:
      v17 = 0;
      goto LABEL_492;
    }
  }

  else
  {
    v7 = [MEMORY[0x277D75418] currentDevice];
    if ([v7 userInterfaceIdiom])
    {
      v17 = 1;
      goto LABEL_492;
    }
  }

  v17 = v61 ^ 1;
  v64 = __sb__runningInSpringBoard();
  if (v64)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v61 = [MEMORY[0x277D759A0] mainScreen];
    [v61 _referenceBounds];
  }

  BSSizeRoundForScale();
  if (v64 != 1)
  {

    if (v17)
    {
      goto LABEL_493;
    }

LABEL_69:
    if (!v16)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

LABEL_492:
  if (!v17)
  {
    goto LABEL_69;
  }

LABEL_493:

  if (v16)
  {
LABEL_70:
  }

LABEL_71:
  if (v15)
  {

    if (!v14)
    {
      goto LABEL_73;
    }

LABEL_179:

    if (!v13)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  if (v14)
  {
    goto LABEL_179;
  }

LABEL_73:
  if (v13)
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

  if (LODWORD(v125[0]))
  {
  }

  if (HIDWORD(v125[0]))
  {
  }

  if (LODWORD(v125[1]))
  {
  }

  if (HIDWORD(v125[1]))
  {
  }

  if (LODWORD(v125[2]))
  {
  }

  if (HIDWORD(v125[2]))
  {
  }

  if (LODWORD(v125[3]))
  {
  }

  if (HIDWORD(v125[3]))
  {
  }

  if (LODWORD(v125[4]))
  {
  }

  if (HIDWORD(v125[4]))
  {
  }

  if (LODWORD(v125[5]))
  {
  }

  if (HIDWORD(v125[5]))
  {
  }

  if (LODWORD(v125[6]))
  {
  }

  if (HIDWORD(v125[6]))
  {
  }

  if (LODWORD(v125[7]))
  {
  }

  if (HIDWORD(v125[7]))
  {
  }

  if (LODWORD(v125[8]))
  {
  }

  if (HIDWORD(v125[8]))
  {
  }

  if (LODWORD(v125[9]))
  {
  }

  if (HIDWORD(v125[9]))
  {
  }

  if (LODWORD(v125[10]))
  {
  }

  if (HIDWORD(v125[10]))
  {
  }

  if (LODWORD(v125[11]))
  {
  }

  if (HIDWORD(v125[11]))
  {
  }

  if (LODWORD(v125[12]))
  {
  }

  if (HIDWORD(v125[12]))
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

  return v5;
}

- (double)_silhouetteCornerRadius
{
  v4 = [(BCBatteryDevice *)self->_externalBattery productIdentifier];
  if (v4 != *MEMORY[0x277CF0DB8])
  {
    if (v4 == *MEMORY[0x277CF0DC0])
    {
      return 54.0;
    }

    else
    {
      return 0.0;
    }
  }

  v5 = __sb__runningInSpringBoard();
  if (v5)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v132 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v117 = [MEMORY[0x277D75418] currentDevice];
    if ([v117 userInterfaceIdiom] != 1)
    {
      v132 = 0x100000000;
      goto LABEL_14;
    }
  }

  HIDWORD(v132) = v5 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v118 = [MEMORY[0x277D759A0] mainScreen];
      [v118 _referenceBounds];
    }

    LODWORD(v132) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v21 == *(MEMORY[0x277D66E30] + 288) && v20 == *(MEMORY[0x277D66E30] + 296))
    {
      v127 = 0;
      memset(v126, 0, sizeof(v126));
      v128 = 0;
      v125 = 0;
      v129 = 0;
      v124 = 0;
      v123 = 0;
      v130 = 0;
      v122 = 0;
      v121 = 0;
      v131 = 0;
      v120 = 0;
      v119 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v6 = 0.0;
      goto LABEL_496;
    }
  }

  else
  {
    LODWORD(v132) = 0;
  }

LABEL_14:
  v8 = __sb__runningInSpringBoard();
  if (v8)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v131 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    v116 = [MEMORY[0x277D75418] currentDevice];
    if ([v116 userInterfaceIdiom] != 1)
    {
      v131 = 0x100000000;
      goto LABEL_23;
    }
  }

  HIDWORD(v131) = v8 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v108 = [MEMORY[0x277D759A0] mainScreen];
      [v108 _referenceBounds];
    }

    LODWORD(v131) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v23 >= *(MEMORY[0x277D66E30] + 440))
    {
      v127 = 0;
      memset(v126, 0, sizeof(v126));
      v128 = 0;
      v125 = 0;
      v129 = 0;
      v124 = 0;
      v123 = 0;
      v130 = 0;
      v122 = 0;
      v121 = 0;
      v120 = 0;
      v119 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v6 = 0.0;
      goto LABEL_496;
    }
  }

  else
  {
    LODWORD(v131) = 0;
  }

LABEL_23:
  v9 = __sb__runningInSpringBoard();
  if (v9)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v130 = 0;
      goto LABEL_32;
    }
  }

  else
  {
    v115 = [MEMORY[0x277D75418] currentDevice];
    if ([v115 userInterfaceIdiom] != 1)
    {
      v130 = 0x100000000;
      goto LABEL_32;
    }
  }

  HIDWORD(v130) = v9 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v107 = [MEMORY[0x277D759A0] mainScreen];
      [v107 _referenceBounds];
    }

    LODWORD(v130) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v24 >= *(MEMORY[0x277D66E30] + 376))
    {
      v127 = 0;
      memset(v126, 0, sizeof(v126));
      v128 = 0;
      v125 = 0;
      v129 = 0;
      v124 = 0;
      v123 = 0;
      v121 = 0;
      v122 = 0;
      v120 = 0;
      v119 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v6 = 0.0;
      goto LABEL_496;
    }
  }

  else
  {
    LODWORD(v130) = 0;
  }

LABEL_32:
  v10 = __sb__runningInSpringBoard();
  if (v10)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v129 = 0;
      goto LABEL_41;
    }
  }

  else
  {
    v114 = [MEMORY[0x277D75418] currentDevice];
    if ([v114 userInterfaceIdiom] != 1)
    {
      v129 = 0x100000000;
      goto LABEL_41;
    }
  }

  HIDWORD(v129) = v10 ^ 1;
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v111 = [MEMORY[0x277D759A0] mainScreen];
    [v111 _referenceBounds];
  }

  LODWORD(v129) = v7 ^ 1;
  BSSizeRoundForScale();
  if (v11 >= *(MEMORY[0x277D66E30] + 280))
  {
    v127 = 0;
    memset(v126, 0, sizeof(v126));
    v128 = 0;
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v120 = 0;
    v119 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v6 = 0.0;
    goto LABEL_496;
  }

LABEL_41:
  v12 = __sb__runningInSpringBoard();
  if (v12)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v128 = 0;
      goto LABEL_51;
    }
  }

  else
  {
    v113 = [MEMORY[0x277D75418] currentDevice];
    if ([v113 userInterfaceIdiom] != 1)
    {
      v128 = 0x100000000;
      goto LABEL_51;
    }
  }

  HIDWORD(v128) = v12 ^ 1;
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v109 = [MEMORY[0x277D759A0] mainScreen];
    [v109 _referenceBounds];
  }

  LODWORD(v128) = v7 ^ 1;
  BSSizeRoundForScale();
  if (v18 >= *(MEMORY[0x277D66E30] + 264))
  {
    v127 = 0;
    memset(v126, 0, sizeof(v126));
    v124 = 0;
    v125 = 0;
    v122 = 0;
    v123 = 0;
    v120 = 0;
    v121 = 0;
    v119 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v6 = 0.0;
    goto LABEL_496;
  }

LABEL_51:
  v19 = __sb__runningInSpringBoard();
  if (v19)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v127 = 0;
      goto LABEL_187;
    }
  }

  else
  {
    v112 = [MEMORY[0x277D75418] currentDevice];
    if ([v112 userInterfaceIdiom] != 1)
    {
      v127 = 0x100000000;
      goto LABEL_187;
    }
  }

  HIDWORD(v127) = v19 ^ 1;
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v106 = [MEMORY[0x277D759A0] mainScreen];
    [v106 _referenceBounds];
  }

  LODWORD(v127) = v7 ^ 1;
  BSSizeRoundForScale();
  if (v26 >= *(MEMORY[0x277D66E30] + 248))
  {
    memset(v126, 0, sizeof(v126));
    v124 = 0;
    v125 = 0;
    v122 = 0;
    v123 = 0;
    v120 = 0;
    v121 = 0;
    v119 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v6 = 0.0;
    goto LABEL_496;
  }

LABEL_187:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_189;
    }

LABEL_195:
    memset(v126, 0, 100);
    v124 = 0;
    v125 = 0;
    v122 = 0;
    v123 = 0;
    v120 = 0;
    v121 = 0;
    v119 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v6 = 0.0;
    HIDWORD(v126[12]) = v7 ^ 1;
    goto LABEL_496;
  }

  v110 = [MEMORY[0x277D75418] currentDevice];
  if ([v110 userInterfaceIdiom] == 1)
  {
    goto LABEL_195;
  }

LABEL_189:
  HIDWORD(v126[12]) = v7 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_193:
    *(&v126[11] + 4) = 0;
    goto LABEL_203;
  }

  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_193;
    }
  }

  else
  {
    v104 = [MEMORY[0x277D75418] currentDevice];
    if ([v104 userInterfaceIdiom])
    {
      HIDWORD(v126[11]) = 0;
      LODWORD(v126[12]) = 1;
      goto LABEL_203;
    }
  }

  LODWORD(v126[12]) = v27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v97 = [MEMORY[0x277D759A0] mainScreen];
      [v97 _referenceBounds];
    }

    HIDWORD(v126[11]) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v30 >= *(MEMORY[0x277D66E30] + 200))
    {
      memset(v126, 0, 92);
      v124 = 0;
      v125 = 0;
      v122 = 0;
      v123 = 0;
      v120 = 0;
      v121 = 0;
      v119 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v6 = 50.0;
      goto LABEL_496;
    }
  }

  else
  {
    HIDWORD(v126[11]) = 0;
  }

LABEL_203:
  v7 = __sb__runningInSpringBoard();
  v2 = &off_21EC94000;
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v126[10] + 4) = 0;
      goto LABEL_213;
    }
  }

  else
  {
    v105 = [MEMORY[0x277D75418] currentDevice];
    if ([v105 userInterfaceIdiom])
    {
      HIDWORD(v126[10]) = 0;
      LODWORD(v126[11]) = 1;
      goto LABEL_213;
    }
  }

  LODWORD(v126[11]) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v100 = [MEMORY[0x277D759A0] mainScreen];
      [v100 _referenceBounds];
    }

    HIDWORD(v126[10]) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v28 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_217;
    }
  }

  else
  {
    HIDWORD(v126[10]) = 0;
  }

LABEL_213:
  if (_SBF_Private_IsD94Like())
  {
    memset(v126, 0, 84);
    v124 = 0;
    v125 = 0;
    v122 = 0;
    v123 = 0;
    v120 = 0;
    v121 = 0;
    v119 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v6 = 43.66666;
    goto LABEL_496;
  }

LABEL_217:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_221:
    *(&v126[9] + 4) = 0;
    goto LABEL_231;
  }

  v29 = __sb__runningInSpringBoard();
  if (v29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_221;
    }
  }

  else
  {
    v101 = [MEMORY[0x277D75418] currentDevice];
    if ([v101 userInterfaceIdiom])
    {
      HIDWORD(v126[9]) = 0;
      LODWORD(v126[10]) = 1;
      goto LABEL_231;
    }
  }

  LODWORD(v126[10]) = v29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v91 = [MEMORY[0x277D759A0] mainScreen];
      [v91 _referenceBounds];
    }

    HIDWORD(v126[9]) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v34 >= *(MEMORY[0x277D66E30] + 136))
    {
      memset(v126, 0, 76);
      v124 = 0;
      v125 = 0;
      v122 = 0;
      v123 = 0;
      v120 = 0;
      v121 = 0;
      v119 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v6 = 50.0;
      goto LABEL_496;
    }
  }

  else
  {
    HIDWORD(v126[9]) = 0;
  }

LABEL_231:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v126[8] + 4) = 0;
      goto LABEL_241;
    }
  }

  else
  {
    v103 = [MEMORY[0x277D75418] currentDevice];
    if ([v103 userInterfaceIdiom])
    {
      HIDWORD(v126[8]) = 0;
      LODWORD(v126[9]) = 1;
      goto LABEL_241;
    }
  }

  LODWORD(v126[9]) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v96 = [MEMORY[0x277D759A0] mainScreen];
      [v96 _referenceBounds];
    }

    HIDWORD(v126[8]) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v31 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_245;
    }
  }

  else
  {
    HIDWORD(v126[8]) = 0;
  }

LABEL_241:
  if (_SBF_Private_IsD64Like())
  {
    memset(v126, 0, 68);
    v124 = 0;
    v125 = 0;
    v122 = 0;
    v123 = 0;
    v120 = 0;
    v121 = 0;
    v119 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v6 = 43.66666;
    goto LABEL_496;
  }

LABEL_245:
  v32 = __sb__runningInSpringBoard();
  if (v32)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v126[7] + 4) = 0;
      goto LABEL_255;
    }
  }

  else
  {
    v102 = [MEMORY[0x277D75418] currentDevice];
    if ([v102 userInterfaceIdiom])
    {
      HIDWORD(v126[7]) = 0;
      LODWORD(v126[8]) = 1;
      goto LABEL_255;
    }
  }

  LODWORD(v126[8]) = v32 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v92 = [MEMORY[0x277D759A0] mainScreen];
      [v92 _referenceBounds];
    }

    HIDWORD(v126[7]) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v33 >= *(MEMORY[0x277D66E30] + 136))
    {
      memset(v126, 0, 60);
      v124 = 0;
      v125 = 0;
      v122 = 0;
      v123 = 0;
      v120 = 0;
      v121 = 0;
      v119 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v6 = 50.0;
      goto LABEL_496;
    }
  }

  else
  {
    HIDWORD(v126[7]) = 0;
  }

LABEL_255:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v126[6] + 4) = 0;
      goto LABEL_265;
    }
  }

  else
  {
    v99 = [MEMORY[0x277D75418] currentDevice];
    if ([v99 userInterfaceIdiom])
    {
      HIDWORD(v126[6]) = 0;
      LODWORD(v126[7]) = 1;
      goto LABEL_265;
    }
  }

  LODWORD(v126[7]) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v90 = [MEMORY[0x277D759A0] mainScreen];
      [v90 _referenceBounds];
    }

    HIDWORD(v126[6]) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v35 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_275;
    }
  }

  else
  {
    HIDWORD(v126[6]) = 0;
  }

LABEL_265:
  if (_SBF_Private_IsD54())
  {
    memset(v126, 0, 52);
    v124 = 0;
    v125 = 0;
    v122 = 0;
    v123 = 0;
    v120 = 0;
    v121 = 0;
    v119 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v6 = 43.66666;
    goto LABEL_496;
  }

LABEL_275:
  v36 = __sb__runningInSpringBoard();
  if (v36)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v126[5] + 4) = 0;
      goto LABEL_285;
    }
  }

  else
  {
    v98 = [MEMORY[0x277D75418] currentDevice];
    if ([v98 userInterfaceIdiom])
    {
      HIDWORD(v126[5]) = 0;
      LODWORD(v126[6]) = 1;
      goto LABEL_285;
    }
  }

  LODWORD(v126[6]) = v36 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v37 = __sb__runningInSpringBoard();
    if (v37)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v88 = [MEMORY[0x277D759A0] mainScreen];
      [v88 _referenceBounds];
    }

    v7 = v37 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v126[5]) = v7;
    if (v39 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      memset(v126, 0, 44);
      v124 = 0;
      v125 = 0;
      v122 = 0;
      v123 = 0;
      v120 = 0;
      v121 = 0;
      v119 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v6 = 0.0;
      goto LABEL_496;
    }
  }

  else
  {
    HIDWORD(v126[5]) = 0;
  }

LABEL_285:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v38 = 0;
      v2 = 0;
      goto LABEL_295;
    }
  }

  else
  {
    v95 = [MEMORY[0x277D75418] currentDevice];
    if ([v95 userInterfaceIdiom])
    {
      v2 = 0;
      v38 = 1;
      goto LABEL_295;
    }
  }

  v38 = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v87 = [MEMORY[0x277D759A0] mainScreen];
      [v87 _referenceBounds];
    }

    v2 = v7 ^ 1;
    BSSizeRoundForScale();
    if (v40 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_304;
    }
  }

  else
  {
    v2 = 0;
  }

LABEL_295:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    HIDWORD(v126[4]) = v2;
    LODWORD(v126[5]) = v38;
    memset(v126, 0, 36);
    v124 = 0;
    v125 = 0;
    v122 = 0;
    v123 = 0;
    v120 = 0;
    v121 = 0;
    v119 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v6 = 0.0;
    goto LABEL_496;
  }

LABEL_304:
  HIDWORD(v126[4]) = v2;
  LODWORD(v126[5]) = v38;
  if (!_SBF_Private_IsD93Like())
  {
LABEL_308:
    *(&v126[3] + 4) = 0;
    goto LABEL_315;
  }

  v41 = __sb__runningInSpringBoard();
  if (v41)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_308;
    }
  }

  else
  {
    v2 = [MEMORY[0x277D75418] currentDevice];
    if ([v2 userInterfaceIdiom])
    {
      v93 = v2;
      HIDWORD(v126[3]) = 0;
      LODWORD(v126[4]) = 1;
      goto LABEL_315;
    }
  }

  LODWORD(v126[4]) = v41 ^ 1;
  v93 = v2;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v42 = __sb__runningInSpringBoard();
    if (v42)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v2 = [MEMORY[0x277D759A0] mainScreen];
      [v2 _referenceBounds];
    }

    v86 = v2;
    v7 = v42 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v126[3]) = v7;
    if (v45 >= *(MEMORY[0x277D66E30] + 184))
    {
      memset(v126, 0, 28);
      v124 = 0;
      v125 = 0;
      v122 = 0;
      v123 = 0;
      v120 = 0;
      v121 = 0;
      v119 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v6 = 43.0;
      goto LABEL_496;
    }
  }

  else
  {
    HIDWORD(v126[3]) = 0;
  }

LABEL_315:
  v7 = __sb__runningInSpringBoard();
  v2 = &off_21EC94000;
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v126[2] + 4) = 0;
      goto LABEL_325;
    }
  }

  else
  {
    v94 = [MEMORY[0x277D75418] currentDevice];
    if ([v94 userInterfaceIdiom])
    {
      HIDWORD(v126[2]) = 0;
      LODWORD(v126[3]) = 1;
      goto LABEL_325;
    }
  }

  LODWORD(v126[3]) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v83 = [MEMORY[0x277D759A0] mainScreen];
      [v83 _referenceBounds];
    }

    HIDWORD(v126[2]) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v43 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_329;
    }
  }

  else
  {
    HIDWORD(v126[2]) = 0;
  }

LABEL_325:
  if (_SBF_Private_IsD93Like())
  {
    memset(v126, 0, 20);
    v124 = 0;
    v125 = 0;
    v122 = 0;
    v123 = 0;
    v120 = 0;
    v121 = 0;
    v119 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v6 = 35.33333;
    goto LABEL_496;
  }

LABEL_329:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_333:
    *(&v126[1] + 4) = 0;
    goto LABEL_343;
  }

  v44 = __sb__runningInSpringBoard();
  if (v44)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_333;
    }
  }

  else
  {
    v85 = [MEMORY[0x277D75418] currentDevice];
    if ([v85 userInterfaceIdiom])
    {
      HIDWORD(v126[1]) = 0;
      LODWORD(v126[2]) = 1;
      goto LABEL_343;
    }
  }

  LODWORD(v126[2]) = v44 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v46 = __sb__runningInSpringBoard();
    if (v46)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v77 = [MEMORY[0x277D759A0] mainScreen];
      [v77 _referenceBounds];
    }

    v7 = v46 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v126[1]) = v7;
    if (v49 >= *(MEMORY[0x277D66E30] + 104))
    {
      *(v126 + 4) = 0;
      LODWORD(v126[0]) = 0;
      v124 = 0;
      v125 = 0;
      v122 = 0;
      v123 = 0;
      v120 = 0;
      v121 = 0;
      v119 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v6 = 43.0;
      goto LABEL_496;
    }
  }

  else
  {
    HIDWORD(v126[1]) = 0;
  }

LABEL_343:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(v126 + 4) = 0;
      goto LABEL_353;
    }
  }

  else
  {
    v89 = [MEMORY[0x277D75418] currentDevice];
    if ([v89 userInterfaceIdiom])
    {
      HIDWORD(v126[0]) = 0;
      LODWORD(v126[1]) = 1;
      goto LABEL_353;
    }
  }

  LODWORD(v126[1]) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v80 = [MEMORY[0x277D759A0] mainScreen];
      [v80 _referenceBounds];
    }

    HIDWORD(v126[0]) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v47 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_357;
    }
  }

  else
  {
    HIDWORD(v126[0]) = 0;
  }

LABEL_353:
  if (_SBF_Private_IsD63Like())
  {
    LODWORD(v126[0]) = 0;
    v124 = 0;
    v125 = 0;
    v122 = 0;
    v123 = 0;
    v120 = 0;
    v121 = 0;
    v119 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v6 = 35.33333;
    goto LABEL_496;
  }

LABEL_357:
  if (!_SBF_Private_IsD23Like())
  {
LABEL_361:
    LODWORD(v126[0]) = 0;
    HIDWORD(v125) = 0;
    goto LABEL_371;
  }

  v48 = __sb__runningInSpringBoard();
  if (v48)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_361;
    }
  }

  else
  {
    v81 = [MEMORY[0x277D75418] currentDevice];
    if ([v81 userInterfaceIdiom])
    {
      HIDWORD(v125) = 0;
      LODWORD(v126[0]) = 1;
      goto LABEL_371;
    }
  }

  LODWORD(v126[0]) = v48 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v73 = [MEMORY[0x277D759A0] mainScreen];
      [v73 _referenceBounds];
    }

    HIDWORD(v125) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v54 >= *(MEMORY[0x277D66E30] + 216))
    {
      LODWORD(v125) = 0;
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v120 = 0;
      v119 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v6 = 43.0;
      goto LABEL_496;
    }
  }

  else
  {
    HIDWORD(v125) = 0;
  }

LABEL_371:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v125) = 0;
      HIDWORD(v124) = 0;
      goto LABEL_381;
    }
  }

  else
  {
    v84 = [MEMORY[0x277D75418] currentDevice];
    if ([v84 userInterfaceIdiom])
    {
      HIDWORD(v124) = 0;
      LODWORD(v125) = 1;
      goto LABEL_381;
    }
  }

  LODWORD(v125) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v76 = [MEMORY[0x277D759A0] mainScreen];
      [v76 _referenceBounds];
    }

    HIDWORD(v124) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v50 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_385;
    }
  }

  else
  {
    HIDWORD(v124) = 0;
  }

LABEL_381:
  if (_SBF_Private_IsD23Like())
  {
    LODWORD(v124) = 0;
    v122 = 0;
    v123 = 0;
    v120 = 0;
    v121 = 0;
    v119 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v6 = 35.33333;
    goto LABEL_496;
  }

LABEL_385:
  v51 = __sb__runningInSpringBoard();
  if (v51)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v124) = 0;
      HIDWORD(v123) = 0;
      goto LABEL_395;
    }
  }

  else
  {
    v82 = [MEMORY[0x277D75418] currentDevice];
    if ([v82 userInterfaceIdiom])
    {
      HIDWORD(v123) = 0;
      LODWORD(v124) = 1;
      goto LABEL_395;
    }
  }

  LODWORD(v124) = v51 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v52 = __sb__runningInSpringBoard();
    if (v52)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v74 = [MEMORY[0x277D759A0] mainScreen];
      [v74 _referenceBounds];
    }

    v7 = v52 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v123) = v7;
    if (v53 >= *(MEMORY[0x277D66E30] + 120))
    {
      LODWORD(v123) = 0;
      v121 = 0;
      v122 = 0;
      v120 = 0;
      v119 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v6 = 0.0;
      goto LABEL_496;
    }
  }

  else
  {
    HIDWORD(v123) = 0;
  }

LABEL_395:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v123) = 0;
      HIDWORD(v122) = 0;
      goto LABEL_405;
    }
  }

  else
  {
    v79 = [MEMORY[0x277D75418] currentDevice];
    if ([v79 userInterfaceIdiom])
    {
      HIDWORD(v122) = 0;
      LODWORD(v123) = 1;
      goto LABEL_405;
    }
  }

  LODWORD(v123) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v72 = [MEMORY[0x277D759A0] mainScreen];
      [v72 _referenceBounds];
    }

    HIDWORD(v122) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v55 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_415;
    }
  }

  else
  {
    HIDWORD(v122) = 0;
  }

LABEL_405:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    LODWORD(v122) = 0;
    v120 = 0;
    v121 = 0;
    v119 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v6 = 0.0;
    goto LABEL_496;
  }

LABEL_415:
  v56 = __sb__runningInSpringBoard();
  if (v56)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v122) = 0;
      HIDWORD(v121) = 0;
      goto LABEL_425;
    }
  }

  else
  {
    v78 = [MEMORY[0x277D75418] currentDevice];
    if ([v78 userInterfaceIdiom])
    {
      HIDWORD(v121) = 0;
      LODWORD(v122) = 1;
      goto LABEL_425;
    }
  }

  LODWORD(v122) = v56 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v71 = [MEMORY[0x277D759A0] mainScreen];
      [v71 _referenceBounds];
    }

    HIDWORD(v121) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v57 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v121) = 0;
      v120 = 0;
      v119 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v6 = 43.0;
      goto LABEL_496;
    }
  }

  else
  {
    HIDWORD(v121) = 0;
  }

LABEL_425:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v121) = 0;
      HIDWORD(v120) = 0;
      goto LABEL_435;
    }
  }

  else
  {
    v75 = [MEMORY[0x277D75418] currentDevice];
    if ([v75 userInterfaceIdiom])
    {
      HIDWORD(v120) = 0;
      LODWORD(v121) = 1;
      goto LABEL_435;
    }
  }

  LODWORD(v121) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() != 2)
  {
    HIDWORD(v120) = 0;
    goto LABEL_435;
  }

  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v70 = [MEMORY[0x277D759A0] mainScreen];
    [v70 _referenceBounds];
  }

  HIDWORD(v120) = v7 ^ 1;
  BSSizeRoundForScale();
  if (v58 < *(MEMORY[0x277D66E30] + 104))
  {
LABEL_435:
    if (_SBF_Private_IsD53())
    {
      LODWORD(v120) = 0;
      v119 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v6 = 35.33333;
      goto LABEL_496;
    }
  }

  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
  {
    goto LABEL_447;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    goto LABEL_449;
  }

  if (_SBF_Private_IsD52OrSimilarDevice())
  {
LABEL_447:
    LODWORD(v120) = 0;
    v119 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v6 = 60.0;
    goto LABEL_496;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
LABEL_449:
    LODWORD(v120) = 0;
    v119 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v6 = 51.33333;
    goto LABEL_496;
  }

  v59 = __sb__runningInSpringBoard();
  if (v59)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v120) = 0;
      v119 = 0;
      goto LABEL_460;
    }
  }

  else
  {
    v69 = [MEMORY[0x277D75418] currentDevice];
    if ([v69 userInterfaceIdiom])
    {
      v119 = 0;
      LODWORD(v120) = 1;
      goto LABEL_460;
    }
  }

  LODWORD(v120) = v59 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v67 = [MEMORY[0x277D759A0] mainScreen];
      [v67 _referenceBounds];
    }

    v119 = v7 ^ 1;
    BSSizeRoundForScale();
    if (v63 >= *(MEMORY[0x277D66E30] + 88))
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v6 = 0.0;
      goto LABEL_496;
    }
  }

  else
  {
    v119 = 0;
  }

LABEL_460:
  v60 = __sb__runningInSpringBoard();
  if (v60)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_470;
    }
  }

  else
  {
    v68 = [MEMORY[0x277D75418] currentDevice];
    if ([v68 userInterfaceIdiom])
    {
      v14 = 0;
      v13 = 1;
      goto LABEL_470;
    }
  }

  v13 = v60 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v66 = [MEMORY[0x277D759A0] mainScreen];
      [v66 _referenceBounds];
    }

    v14 = v7 ^ 1;
    BSSizeRoundForScale();
    if (v64 >= *(MEMORY[0x277D66E30] + 72))
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v6 = 0.0;
      goto LABEL_496;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_470:
  v7 = __sb__runningInSpringBoard();
  if (!v7)
  {
    v2 = [MEMORY[0x277D75418] currentDevice];
    if ([v2 userInterfaceIdiom])
    {
      v16 = 0;
      v15 = 1;
      goto LABEL_480;
    }

LABEL_476:
    v15 = v7 ^ 1;
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v3 = [MEMORY[0x277D759A0] mainScreen];
      [v3 _referenceBounds];
    }

    v16 = v7 ^ 1;
    BSSizeRoundForScale();
    if (v61 >= *(MEMORY[0x277D66E30] + 56))
    {
      goto LABEL_483;
    }

    goto LABEL_480;
  }

  if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
  {
    goto LABEL_476;
  }

  v15 = 0;
  v16 = 0;
LABEL_480:
  v62 = __sb__runningInSpringBoard();
  if (v62)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
LABEL_483:
      v17 = 0;
      v6 = 0.0;
      goto LABEL_496;
    }
  }

  else
  {
    v7 = [MEMORY[0x277D75418] currentDevice];
    if ([v7 userInterfaceIdiom])
    {
      v6 = 0.0;
      v17 = 1;
      goto LABEL_496;
    }
  }

  v17 = v62 ^ 1;
  v65 = __sb__runningInSpringBoard();
  if (v65)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v62 = [MEMORY[0x277D759A0] mainScreen];
    [v62 _referenceBounds];
  }

  BSSizeRoundForScale();
  v6 = 0.0;
  if (v65 != 1)
  {

    if (v17)
    {
      goto LABEL_497;
    }

LABEL_72:
    if (!v16)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

LABEL_496:
  if (!v17)
  {
    goto LABEL_72;
  }

LABEL_497:

  if (v16)
  {
LABEL_73:
  }

LABEL_74:
  if (v15)
  {
  }

  if (v14)
  {
  }

  if (v13)
  {
  }

  if (v119)
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

  if (LODWORD(v126[0]))
  {
  }

  if (HIDWORD(v126[0]))
  {
  }

  if (LODWORD(v126[1]))
  {
  }

  if (HIDWORD(v126[1]))
  {
  }

  if (LODWORD(v126[2]))
  {
  }

  if (HIDWORD(v126[2]))
  {
  }

  if (LODWORD(v126[3]))
  {
  }

  if (HIDWORD(v126[3]))
  {
  }

  if (LODWORD(v126[4]))
  {

    if (!HIDWORD(v126[4]))
    {
      goto LABEL_124;
    }

LABEL_182:

    if (!LODWORD(v126[5]))
    {
      goto LABEL_126;
    }

    goto LABEL_125;
  }

  if (HIDWORD(v126[4]))
  {
    goto LABEL_182;
  }

LABEL_124:
  if (LODWORD(v126[5]))
  {
LABEL_125:
  }

LABEL_126:
  if (HIDWORD(v126[5]))
  {
  }

  if (LODWORD(v126[6]))
  {
  }

  if (HIDWORD(v126[6]))
  {
  }

  if (LODWORD(v126[7]))
  {
  }

  if (HIDWORD(v126[7]))
  {
  }

  if (LODWORD(v126[8]))
  {
  }

  if (HIDWORD(v126[8]))
  {
  }

  if (LODWORD(v126[9]))
  {
  }

  if (HIDWORD(v126[9]))
  {
  }

  if (LODWORD(v126[10]))
  {
  }

  if (HIDWORD(v126[10]))
  {
  }

  if (LODWORD(v126[11]))
  {
  }

  if (HIDWORD(v126[11]))
  {
  }

  if (LODWORD(v126[12]))
  {
  }

  if (HIDWORD(v126[12]))
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

  return v6;
}

- (double)_silhouetteBottomToAuxillaryRingInset
{
  v3 = [(BCBatteryDevice *)self->_externalBattery productIdentifier];
  if (v3 != *MEMORY[0x277CF0DB8])
  {
    if (v3 == *MEMORY[0x277CF0DC0])
    {
      return 82.0;
    }

    else
    {
      return 0.0;
    }
  }

  v4 = __sb__runningInSpringBoard();
  if (v4)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v142 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v117 = [MEMORY[0x277D75418] currentDevice];
    if ([v117 userInterfaceIdiom] != 1)
    {
      v142 = 0x100000000;
      goto LABEL_14;
    }
  }

  HIDWORD(v142) = v4 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v118 = [MEMORY[0x277D759A0] mainScreen];
      [v118 _referenceBounds];
    }

    LODWORD(v142) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v21 == *(MEMORY[0x277D66E30] + 288) && v20 == *(MEMORY[0x277D66E30] + 296))
    {
      v134 = 0;
      v135 = 0;
      v133 = 0;
      v132 = 0;
      v136 = 0;
      v131 = 0;
      v130 = 0;
      v137 = 0;
      v129 = 0;
      v128 = 0;
      memset(v138, 0, sizeof(v138));
      v127 = 0;
      v126 = 0;
      v125 = 0;
      v124 = 0;
      v123 = 0;
      v139 = 0;
      v122 = 0;
      v121 = 0;
      v140 = 0;
      v120 = 0;
      v119 = 0;
      v141 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v5 = 0.0;
      goto LABEL_496;
    }
  }

  else
  {
    LODWORD(v142) = 0;
  }

LABEL_14:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v141 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    v116 = [MEMORY[0x277D75418] currentDevice];
    if ([v116 userInterfaceIdiom] != 1)
    {
      v141 = 0x100000000;
      goto LABEL_23;
    }
  }

  HIDWORD(v141) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v108 = [MEMORY[0x277D759A0] mainScreen];
      [v108 _referenceBounds];
    }

    LODWORD(v141) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v23 >= *(MEMORY[0x277D66E30] + 440))
    {
      v134 = 0;
      v135 = 0;
      v133 = 0;
      v132 = 0;
      v136 = 0;
      v131 = 0;
      v130 = 0;
      v137 = 0;
      v129 = 0;
      v128 = 0;
      memset(v138, 0, sizeof(v138));
      v127 = 0;
      v126 = 0;
      v125 = 0;
      v124 = 0;
      v123 = 0;
      v139 = 0;
      v122 = 0;
      v121 = 0;
      v140 = 0;
      v120 = 0;
      v119 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v5 = 0.0;
      goto LABEL_496;
    }
  }

  else
  {
    LODWORD(v141) = 0;
  }

LABEL_23:
  v8 = __sb__runningInSpringBoard();
  if (v8)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v140 = 0;
      goto LABEL_32;
    }
  }

  else
  {
    v115 = [MEMORY[0x277D75418] currentDevice];
    if ([v115 userInterfaceIdiom] != 1)
    {
      v140 = 0x100000000;
      goto LABEL_32;
    }
  }

  HIDWORD(v140) = v8 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v107 = [MEMORY[0x277D759A0] mainScreen];
      [v107 _referenceBounds];
    }

    LODWORD(v140) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v24 >= *(MEMORY[0x277D66E30] + 376))
    {
      v134 = 0;
      v135 = 0;
      v133 = 0;
      v132 = 0;
      v136 = 0;
      v131 = 0;
      v130 = 0;
      v137 = 0;
      v129 = 0;
      v128 = 0;
      memset(v138, 0, sizeof(v138));
      v127 = 0;
      v126 = 0;
      v125 = 0;
      v124 = 0;
      v123 = 0;
      v139 = 0;
      v122 = 0;
      v121 = 0;
      v119 = 0;
      v120 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v5 = 0.0;
      goto LABEL_496;
    }
  }

  else
  {
    LODWORD(v140) = 0;
  }

LABEL_32:
  v9 = __sb__runningInSpringBoard();
  if (v9)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v139 = 0;
      goto LABEL_41;
    }
  }

  else
  {
    v114 = [MEMORY[0x277D75418] currentDevice];
    if ([v114 userInterfaceIdiom] != 1)
    {
      v139 = 0x100000000;
      goto LABEL_41;
    }
  }

  HIDWORD(v139) = v9 ^ 1;
  v6 = __sb__runningInSpringBoard();
  if (v6)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v111 = [MEMORY[0x277D759A0] mainScreen];
    [v111 _referenceBounds];
  }

  LODWORD(v139) = v6 ^ 1;
  BSSizeRoundForScale();
  if (v10 >= *(MEMORY[0x277D66E30] + 280))
  {
    v134 = 0;
    v135 = 0;
    v133 = 0;
    v132 = 0;
    v136 = 0;
    v131 = 0;
    v130 = 0;
    v137 = 0;
    v129 = 0;
    v128 = 0;
    memset(v138, 0, sizeof(v138));
    v127 = 0;
    v126 = 0;
    v125 = 0;
    v124 = 0;
    v123 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v5 = 0.0;
    goto LABEL_496;
  }

LABEL_41:
  v11 = __sb__runningInSpringBoard();
  if (v11)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v138[12] = 0;
      goto LABEL_51;
    }
  }

  else
  {
    v113 = [MEMORY[0x277D75418] currentDevice];
    if ([v113 userInterfaceIdiom] != 1)
    {
      *&v138[12] = 0;
      *&v138[16] = 1;
      goto LABEL_51;
    }
  }

  *&v138[16] = v11 ^ 1;
  v6 = __sb__runningInSpringBoard();
  if (v6)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v109 = [MEMORY[0x277D759A0] mainScreen];
    [v109 _referenceBounds];
  }

  *&v138[12] = v6 ^ 1;
  BSSizeRoundForScale();
  if (v18 >= *(MEMORY[0x277D66E30] + 264))
  {
    v134 = 0;
    v135 = 0;
    v133 = 0;
    v132 = 0;
    v136 = 0;
    v131 = 0;
    v130 = 0;
    v137 = 0;
    v129 = 0;
    v128 = 0;
    *v138 = 0;
    v127 = 0;
    v126 = 0;
    *&v138[8] = 0;
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v5 = 0.0;
    goto LABEL_496;
  }

LABEL_51:
  v19 = __sb__runningInSpringBoard();
  if (v19)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v138[4] = 0;
      goto LABEL_187;
    }
  }

  else
  {
    v112 = [MEMORY[0x277D75418] currentDevice];
    if ([v112 userInterfaceIdiom] != 1)
    {
      *&v138[4] = 0;
      *&v138[8] = 1;
      goto LABEL_187;
    }
  }

  *&v138[8] = v19 ^ 1;
  v6 = __sb__runningInSpringBoard();
  if (v6)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v106 = [MEMORY[0x277D759A0] mainScreen];
    [v106 _referenceBounds];
  }

  *&v138[4] = v6 ^ 1;
  BSSizeRoundForScale();
  if (v26 >= *(MEMORY[0x277D66E30] + 248))
  {
    v134 = 0;
    v135 = 0;
    v133 = 0;
    v132 = 0;
    v136 = 0;
    v131 = 0;
    v130 = 0;
    v137 = 0;
    v129 = 0;
    v128 = 0;
    *v138 = 0;
    v127 = 0;
    v126 = 0;
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v5 = 0.0;
    goto LABEL_496;
  }

LABEL_187:
  v6 = __sb__runningInSpringBoard();
  if (v6)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_189;
    }

LABEL_195:
    v134 = 0;
    v135 = 0;
    v133 = 0;
    v132 = 0;
    v136 = 0;
    v131 = 0;
    v130 = 0;
    v137 = 0;
    v129 = 0;
    v128 = 0;
    v127 = 0;
    v126 = 0;
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v5 = 0.0;
    *v138 = v6 ^ 1;
    goto LABEL_496;
  }

  v110 = [MEMORY[0x277D75418] currentDevice];
  if ([v110 userInterfaceIdiom] == 1)
  {
    goto LABEL_195;
  }

LABEL_189:
  *v138 = v6 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_193:
    v137 = 0;
    goto LABEL_203;
  }

  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_193;
    }
  }

  else
  {
    v104 = [MEMORY[0x277D75418] currentDevice];
    if ([v104 userInterfaceIdiom])
    {
      v137 = 0x100000000;
      goto LABEL_203;
    }
  }

  HIDWORD(v137) = v27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v97 = [MEMORY[0x277D759A0] mainScreen];
      [v97 _referenceBounds];
    }

    LODWORD(v137) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v30 >= *(MEMORY[0x277D66E30] + 200))
    {
      v134 = 0;
      v135 = 0;
      v133 = 0;
      v132 = 0;
      v136 = 0;
      v131 = 0;
      v130 = 0;
      v129 = 0;
      v128 = 0;
      v127 = 0;
      v126 = 0;
      v125 = 0;
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v5 = 32.0;
      goto LABEL_496;
    }
  }

  else
  {
    LODWORD(v137) = 0;
  }

LABEL_203:
  v6 = __sb__runningInSpringBoard();
  if (v6)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v136 = 0;
      goto LABEL_213;
    }
  }

  else
  {
    v105 = [MEMORY[0x277D75418] currentDevice];
    if ([v105 userInterfaceIdiom])
    {
      v136 = 0x100000000;
      goto LABEL_213;
    }
  }

  HIDWORD(v136) = v6 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v100 = [MEMORY[0x277D759A0] mainScreen];
      [v100 _referenceBounds];
    }

    LODWORD(v136) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v28 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_217;
    }
  }

  else
  {
    LODWORD(v136) = 0;
  }

LABEL_213:
  if (_SBF_Private_IsD94Like())
  {
    v134 = 0;
    v135 = 0;
    v133 = 0;
    v132 = 0;
    v131 = 0;
    v130 = 0;
    v129 = 0;
    v128 = 0;
    v127 = 0;
    v126 = 0;
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v5 = 27.33333;
    goto LABEL_496;
  }

LABEL_217:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_221:
    v135 = 0;
    goto LABEL_231;
  }

  v29 = __sb__runningInSpringBoard();
  if (v29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_221;
    }
  }

  else
  {
    v101 = [MEMORY[0x277D75418] currentDevice];
    if ([v101 userInterfaceIdiom])
    {
      v135 = 0x100000000;
      goto LABEL_231;
    }
  }

  HIDWORD(v135) = v29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v92 = [MEMORY[0x277D759A0] mainScreen];
      [v92 _referenceBounds];
    }

    LODWORD(v135) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v34 >= *(MEMORY[0x277D66E30] + 136))
    {
      v134 = 0;
      v133 = 0;
      v132 = 0;
      v131 = 0;
      v130 = 0;
      v129 = 0;
      v128 = 0;
      v127 = 0;
      v126 = 0;
      v125 = 0;
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v5 = 32.0;
      goto LABEL_496;
    }
  }

  else
  {
    LODWORD(v135) = 0;
  }

LABEL_231:
  v6 = __sb__runningInSpringBoard();
  if (v6)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v134 = 0;
      goto LABEL_241;
    }
  }

  else
  {
    v103 = [MEMORY[0x277D75418] currentDevice];
    if ([v103 userInterfaceIdiom])
    {
      v134 = 0x100000000;
      goto LABEL_241;
    }
  }

  HIDWORD(v134) = v6 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v96 = [MEMORY[0x277D759A0] mainScreen];
      [v96 _referenceBounds];
    }

    LODWORD(v134) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v31 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_245;
    }
  }

  else
  {
    LODWORD(v134) = 0;
  }

LABEL_241:
  if (_SBF_Private_IsD64Like())
  {
    v133 = 0;
    v132 = 0;
    v131 = 0;
    v130 = 0;
    v129 = 0;
    v128 = 0;
    v127 = 0;
    v126 = 0;
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v5 = 27.33333;
    goto LABEL_496;
  }

LABEL_245:
  v32 = __sb__runningInSpringBoard();
  if (v32)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v133 = 0;
      goto LABEL_255;
    }
  }

  else
  {
    v102 = [MEMORY[0x277D75418] currentDevice];
    if ([v102 userInterfaceIdiom])
    {
      v133 = 0x100000000;
      goto LABEL_255;
    }
  }

  HIDWORD(v133) = v32 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v93 = [MEMORY[0x277D759A0] mainScreen];
      [v93 _referenceBounds];
    }

    LODWORD(v133) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v33 >= *(MEMORY[0x277D66E30] + 136))
    {
      v132 = 0;
      v131 = 0;
      v130 = 0;
      v129 = 0;
      v128 = 0;
      v127 = 0;
      v126 = 0;
      v125 = 0;
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v5 = 32.0;
      goto LABEL_496;
    }
  }

  else
  {
    LODWORD(v133) = 0;
  }

LABEL_255:
  v6 = __sb__runningInSpringBoard();
  if (v6)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v132 = 0;
      goto LABEL_265;
    }
  }

  else
  {
    v99 = [MEMORY[0x277D75418] currentDevice];
    if ([v99 userInterfaceIdiom])
    {
      v132 = 0x100000000;
      goto LABEL_265;
    }
  }

  HIDWORD(v132) = v6 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v91 = [MEMORY[0x277D759A0] mainScreen];
      [v91 _referenceBounds];
    }

    LODWORD(v132) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v35 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_275;
    }
  }

  else
  {
    LODWORD(v132) = 0;
  }

LABEL_265:
  if (_SBF_Private_IsD54())
  {
    v131 = 0;
    v130 = 0;
    v129 = 0;
    v128 = 0;
    v127 = 0;
    v126 = 0;
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v5 = 27.33333;
    goto LABEL_496;
  }

LABEL_275:
  v36 = __sb__runningInSpringBoard();
  if (v36)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v131 = 0;
      goto LABEL_285;
    }
  }

  else
  {
    v98 = [MEMORY[0x277D75418] currentDevice];
    if ([v98 userInterfaceIdiom])
    {
      v131 = 0x100000000;
      goto LABEL_285;
    }
  }

  HIDWORD(v131) = v36 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v37 = __sb__runningInSpringBoard();
    if (v37)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v88 = [MEMORY[0x277D759A0] mainScreen];
      [v88 _referenceBounds];
    }

    v6 = v37 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v131) = v6;
    if (v38 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      v130 = 0;
      v129 = 0;
      v128 = 0;
      v127 = 0;
      v126 = 0;
      v125 = 0;
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v5 = 0.0;
      goto LABEL_496;
    }
  }

  else
  {
    LODWORD(v131) = 0;
  }

LABEL_285:
  v6 = __sb__runningInSpringBoard();
  if (v6)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v130 = 0;
      goto LABEL_295;
    }
  }

  else
  {
    v95 = [MEMORY[0x277D75418] currentDevice];
    if ([v95 userInterfaceIdiom])
    {
      v130 = 0x100000000;
      goto LABEL_295;
    }
  }

  HIDWORD(v130) = v6 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v87 = [MEMORY[0x277D759A0] mainScreen];
      [v87 _referenceBounds];
    }

    LODWORD(v130) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v39 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_304;
    }
  }

  else
  {
    LODWORD(v130) = 0;
  }

LABEL_295:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    v129 = 0;
    v128 = 0;
    v127 = 0;
    v126 = 0;
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v5 = 0.0;
    goto LABEL_496;
  }

LABEL_304:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_308:
    v129 = 0;
    goto LABEL_315;
  }

  v40 = __sb__runningInSpringBoard();
  if (v40)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_308;
    }
  }

  else
  {
    v90 = [MEMORY[0x277D75418] currentDevice];
    if ([v90 userInterfaceIdiom])
    {
      v129 = 0x100000000;
      goto LABEL_315;
    }
  }

  HIDWORD(v129) = v40 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v41 = __sb__runningInSpringBoard();
    if (v41)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v81 = [MEMORY[0x277D759A0] mainScreen];
      [v81 _referenceBounds];
    }

    v6 = v41 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v129) = v6;
    if (v44 >= *(MEMORY[0x277D66E30] + 184))
    {
      v128 = 0;
      v127 = 0;
      v126 = 0;
      v125 = 0;
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v5 = 32.0;
      goto LABEL_496;
    }
  }

  else
  {
    LODWORD(v129) = 0;
  }

LABEL_315:
  v6 = __sb__runningInSpringBoard();
  if (v6)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v128 = 0;
      goto LABEL_325;
    }
  }

  else
  {
    v94 = [MEMORY[0x277D75418] currentDevice];
    if ([v94 userInterfaceIdiom])
    {
      v128 = 0x100000000;
      goto LABEL_325;
    }
  }

  HIDWORD(v128) = v6 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v84 = [MEMORY[0x277D759A0] mainScreen];
      [v84 _referenceBounds];
    }

    LODWORD(v128) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v42 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_329;
    }
  }

  else
  {
    LODWORD(v128) = 0;
  }

LABEL_325:
  if (_SBF_Private_IsD93Like())
  {
    v127 = 0;
    v126 = 0;
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v5 = 27.33333;
    goto LABEL_496;
  }

LABEL_329:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_333:
    v127 = 0;
    goto LABEL_343;
  }

  v43 = __sb__runningInSpringBoard();
  if (v43)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_333;
    }
  }

  else
  {
    v86 = [MEMORY[0x277D75418] currentDevice];
    if ([v86 userInterfaceIdiom])
    {
      v127 = 0x100000000;
      goto LABEL_343;
    }
  }

  HIDWORD(v127) = v43 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v45 = __sb__runningInSpringBoard();
    if (v45)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v77 = [MEMORY[0x277D759A0] mainScreen];
      [v77 _referenceBounds];
    }

    v6 = v45 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v127) = v6;
    if (v48 >= *(MEMORY[0x277D66E30] + 104))
    {
      v126 = 0;
      v125 = 0;
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v5 = 32.0;
      goto LABEL_496;
    }
  }

  else
  {
    LODWORD(v127) = 0;
  }

LABEL_343:
  v6 = __sb__runningInSpringBoard();
  if (v6)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v126 = 0;
      goto LABEL_353;
    }
  }

  else
  {
    v89 = [MEMORY[0x277D75418] currentDevice];
    if ([v89 userInterfaceIdiom])
    {
      v126 = 0x100000000;
      goto LABEL_353;
    }
  }

  HIDWORD(v126) = v6 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v80 = [MEMORY[0x277D759A0] mainScreen];
      [v80 _referenceBounds];
    }

    LODWORD(v126) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v46 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_357;
    }
  }

  else
  {
    LODWORD(v126) = 0;
  }

LABEL_353:
  if (_SBF_Private_IsD63Like())
  {
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v5 = 27.33333;
    goto LABEL_496;
  }

LABEL_357:
  if (!_SBF_Private_IsD23Like())
  {
LABEL_361:
    v125 = 0;
    HIDWORD(v124) = 0;
    goto LABEL_371;
  }

  v47 = __sb__runningInSpringBoard();
  if (v47)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_361;
    }
  }

  else
  {
    v82 = [MEMORY[0x277D75418] currentDevice];
    if ([v82 userInterfaceIdiom])
    {
      HIDWORD(v124) = 0;
      v125 = 1;
      goto LABEL_371;
    }
  }

  v125 = v47 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v73 = [MEMORY[0x277D759A0] mainScreen];
      [v73 _referenceBounds];
    }

    HIDWORD(v124) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v53 >= *(MEMORY[0x277D66E30] + 216))
    {
      LODWORD(v124) = 0;
      v122 = 0;
      v123 = 0;
      v120 = 0;
      v121 = 0;
      v119 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v5 = 32.0;
      goto LABEL_496;
    }
  }

  else
  {
    HIDWORD(v124) = 0;
  }

LABEL_371:
  v6 = __sb__runningInSpringBoard();
  if (v6)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v124) = 0;
      HIDWORD(v123) = 0;
      goto LABEL_381;
    }
  }

  else
  {
    v85 = [MEMORY[0x277D75418] currentDevice];
    if ([v85 userInterfaceIdiom])
    {
      HIDWORD(v123) = 0;
      LODWORD(v124) = 1;
      goto LABEL_381;
    }
  }

  LODWORD(v124) = v6 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v76 = [MEMORY[0x277D759A0] mainScreen];
      [v76 _referenceBounds];
    }

    HIDWORD(v123) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v49 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_385;
    }
  }

  else
  {
    HIDWORD(v123) = 0;
  }

LABEL_381:
  if (_SBF_Private_IsD23Like())
  {
    LODWORD(v123) = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v5 = 27.33333;
    goto LABEL_496;
  }

LABEL_385:
  v50 = __sb__runningInSpringBoard();
  if (v50)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v123) = 0;
      HIDWORD(v122) = 0;
      goto LABEL_395;
    }
  }

  else
  {
    v83 = [MEMORY[0x277D75418] currentDevice];
    if ([v83 userInterfaceIdiom])
    {
      HIDWORD(v122) = 0;
      LODWORD(v123) = 1;
      goto LABEL_395;
    }
  }

  LODWORD(v123) = v50 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v51 = __sb__runningInSpringBoard();
    if (v51)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v74 = [MEMORY[0x277D759A0] mainScreen];
      [v74 _referenceBounds];
    }

    v6 = v51 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v122) = v6;
    if (v52 >= *(MEMORY[0x277D66E30] + 120))
    {
      LODWORD(v122) = 0;
      v120 = 0;
      v121 = 0;
      v119 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v5 = 0.0;
      goto LABEL_496;
    }
  }

  else
  {
    HIDWORD(v122) = 0;
  }

LABEL_395:
  v6 = __sb__runningInSpringBoard();
  if (v6)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v122) = 0;
      HIDWORD(v121) = 0;
      goto LABEL_405;
    }
  }

  else
  {
    v79 = [MEMORY[0x277D75418] currentDevice];
    if ([v79 userInterfaceIdiom])
    {
      HIDWORD(v121) = 0;
      LODWORD(v122) = 1;
      goto LABEL_405;
    }
  }

  LODWORD(v122) = v6 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v72 = [MEMORY[0x277D759A0] mainScreen];
      [v72 _referenceBounds];
    }

    HIDWORD(v121) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v54 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_415;
    }
  }

  else
  {
    HIDWORD(v121) = 0;
  }

LABEL_405:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    LODWORD(v121) = 0;
    v119 = 0;
    v120 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v5 = 0.0;
    goto LABEL_496;
  }

LABEL_415:
  v55 = __sb__runningInSpringBoard();
  if (v55)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v121) = 0;
      HIDWORD(v120) = 0;
      goto LABEL_425;
    }
  }

  else
  {
    v78 = [MEMORY[0x277D75418] currentDevice];
    if ([v78 userInterfaceIdiom])
    {
      HIDWORD(v120) = 0;
      LODWORD(v121) = 1;
      goto LABEL_425;
    }
  }

  LODWORD(v121) = v55 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v71 = [MEMORY[0x277D759A0] mainScreen];
      [v71 _referenceBounds];
    }

    HIDWORD(v120) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v56 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v120) = 0;
      v119 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
LABEL_448:
      v5 = 32.0;
      goto LABEL_496;
    }
  }

  else
  {
    HIDWORD(v120) = 0;
  }

LABEL_425:
  v6 = __sb__runningInSpringBoard();
  if (v6)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v120) = 0;
      HIDWORD(v119) = 0;
      goto LABEL_435;
    }
  }

  else
  {
    v75 = [MEMORY[0x277D75418] currentDevice];
    if ([v75 userInterfaceIdiom])
    {
      HIDWORD(v119) = 0;
      LODWORD(v120) = 1;
      goto LABEL_435;
    }
  }

  LODWORD(v120) = v6 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v70 = [MEMORY[0x277D759A0] mainScreen];
      [v70 _referenceBounds];
    }

    HIDWORD(v119) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v57 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_442;
    }
  }

  else
  {
    HIDWORD(v119) = 0;
  }

LABEL_435:
  if (_SBF_Private_IsD53())
  {
LABEL_436:
    LODWORD(v119) = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v5 = 27.33333;
    goto LABEL_496;
  }

LABEL_442:
  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
  {
    goto LABEL_447;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    goto LABEL_436;
  }

  if (_SBF_Private_IsD52OrSimilarDevice())
  {
LABEL_447:
    LODWORD(v119) = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_448;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
    goto LABEL_436;
  }

  v58 = __sb__runningInSpringBoard();
  if (v58)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v119) = 0;
      v12 = 0;
      goto LABEL_460;
    }
  }

  else
  {
    v69 = [MEMORY[0x277D75418] currentDevice];
    if ([v69 userInterfaceIdiom])
    {
      v12 = 0;
      LODWORD(v119) = 1;
      goto LABEL_460;
    }
  }

  LODWORD(v119) = v58 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v66 = [MEMORY[0x277D759A0] mainScreen];
      [v66 _referenceBounds];
    }

    v12 = v6 ^ 1;
    BSSizeRoundForScale();
    if (v62 >= *(MEMORY[0x277D66E30] + 88))
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v5 = 0.0;
      goto LABEL_496;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_460:
  v59 = __sb__runningInSpringBoard();
  if (v59)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_470;
    }
  }

  else
  {
    v68 = [MEMORY[0x277D75418] currentDevice];
    if ([v68 userInterfaceIdiom])
    {
      v14 = 0;
      v13 = 1;
      goto LABEL_470;
    }
  }

  v13 = v59 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v65 = [MEMORY[0x277D759A0] mainScreen];
      [v65 _referenceBounds];
    }

    v14 = v6 ^ 1;
    BSSizeRoundForScale();
    if (v63 >= *(MEMORY[0x277D66E30] + 72))
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v5 = 0.0;
      goto LABEL_496;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_470:
  v6 = __sb__runningInSpringBoard();
  if (!v6)
  {
    v67 = [MEMORY[0x277D75418] currentDevice];
    if ([v67 userInterfaceIdiom])
    {
      v16 = 0;
      v15 = 1;
      goto LABEL_480;
    }

LABEL_476:
    v15 = v6 ^ 1;
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v2 = [MEMORY[0x277D759A0] mainScreen];
      [v2 _referenceBounds];
    }

    v16 = v6 ^ 1;
    BSSizeRoundForScale();
    if (v60 >= *(MEMORY[0x277D66E30] + 56))
    {
      goto LABEL_483;
    }

    goto LABEL_480;
  }

  if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
  {
    goto LABEL_476;
  }

  v15 = 0;
  v16 = 0;
LABEL_480:
  v61 = __sb__runningInSpringBoard();
  if (v61)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
LABEL_483:
      v17 = 0;
      v5 = 0.0;
      goto LABEL_496;
    }
  }

  else
  {
    v6 = [MEMORY[0x277D75418] currentDevice];
    if ([v6 userInterfaceIdiom])
    {
      v5 = 0.0;
      v17 = 1;
      goto LABEL_496;
    }
  }

  v17 = v61 ^ 1;
  v64 = __sb__runningInSpringBoard();
  if (v64)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v61 = [MEMORY[0x277D759A0] mainScreen];
    [v61 _referenceBounds];
  }

  BSSizeRoundForScale();
  v5 = 0.0;
  if (v64 != 1)
  {

    if (v17)
    {
      goto LABEL_497;
    }

LABEL_72:
    if (!v16)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

LABEL_496:
  if (!v17)
  {
    goto LABEL_72;
  }

LABEL_497:

  if (v16)
  {
LABEL_73:
  }

LABEL_74:
  if (v15)
  {

    if (!v14)
    {
      goto LABEL_76;
    }
  }

  else if (!v14)
  {
LABEL_76:
    if (v13)
    {
      goto LABEL_77;
    }

    goto LABEL_81;
  }

  if (v13)
  {
LABEL_77:

    if (!v12)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

LABEL_81:
  if (v12)
  {
LABEL_82:
  }

LABEL_83:
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

  if (v136)
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

  if (*v138)
  {
  }

  if (*&v138[4])
  {
  }

  if (*&v138[8])
  {
  }

  if (*&v138[12])
  {
  }

  if (*&v138[16])
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

  if (HIDWORD(v141))
  {
  }

  if (v142)
  {
  }

  if (HIDWORD(v142))
  {
  }

  return v5;
}

+ (double)_pointsPerMillimeter
{
  if (_pointsPerMillimeter_onceToken != -1)
  {
    +[CSBatteryChargingRingView _pointsPerMillimeter];
  }

  return *&_pointsPerMillimeter_pointsPerMM;
}

void __49__CSBatteryChargingRingView__pointsPerMillimeter__block_invoke()
{
  v4 = MGCopyAnswer();
  v0 = [v4 unsignedIntValue] / 25.4;
  v1 = [MEMORY[0x277D759A0] mainScreen];
  [v1 nativeScale];
  v3 = v2;

  *&_pointsPerMillimeter_pointsPerMM = v0 / v3;
}

@end