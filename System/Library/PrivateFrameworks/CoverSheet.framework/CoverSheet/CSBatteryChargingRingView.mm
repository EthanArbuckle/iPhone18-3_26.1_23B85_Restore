@interface CSBatteryChargingRingView
+ (double)_pointsPerMillimeter;
- (BOOL)_isShowingAuxiliary;
- (BOOL)_supportsPowerOut;
- (CGPath)_pathForRingConfiguration:(id)configuration;
- (CGPoint)_positionForPill:(id)pill forBatteryCharge:(double)charge;
- (CGRect)_pillFrameForBatteryCharge:(double)charge;
- (CGSize)_defaultSilhouettePhysicalSize;
- (CGSize)_silhouettePhysicalSizeInMillimeters;
- (CSBatteryChargingRingView)initWithFrame:(CGRect)frame;
- (CSBatteryChargingRingView)initWithFrame:(CGRect)frame configuration:(id)configuration externalBattery:(id)battery;
- (double)_estimatedDurationForAnimation:(unint64_t)animation;
- (double)_silhouetteBottomOffset;
- (double)_silhouetteBottomToAuxillaryRingInset;
- (double)_silhouetteCornerRadius;
- (double)batteryChargingLevel;
- (double)desiredVisibilityDuration;
- (id)_auxillaryGlyphImageForConfig:(id)config;
- (id)_powerStatusForBattery:(id)battery;
- (id)_ringLayerForRingConfiguration:(id)configuration;
- (id)_silhouetteConfiguration;
- (id)_springAnimationWithKeyPath:(id)path delay:(double)delay forPresent:(BOOL)present from:(id)from to:(id)to;
- (id)_springAnimationWithKeyPath:(id)path forPresent:(BOOL)present from:(id)from to:(id)to;
- (id)_springAnimationWithKeyPath:(id)path stiffness:(double)stiffness damping:(double)damping duration:(double)duration delay:(double)delay;
- (id)_trackAnimationForConfiguration:(id)configuration withCurrentTime:(double)time;
- (id)_trackRingForRingConfiguration:(id)configuration withBlendMode:(id)mode;
- (id)_updateChargeString:(id)string oldLabel:(id)label font:(id)font;
- (int64_t)batteryCount;
- (void)_animateSilhouetteToVisible:(BOOL)visible;
- (void)_createAuxiliaryPillViewsIfNeeded;
- (void)_createBoltViewsIfNeeded;
- (void)_handleExternalStatusUpdate;
- (void)_layoutAuxiliaryChargePercentLabel;
- (void)_layoutChargePercentLabel;
- (void)_performChargingBoltDismissAnimation;
- (void)_performChargingBoltPresentAnimation;
- (void)_runAnimationWithType:(unint64_t)type;
- (void)_runAuxiliaryBatteryLevelAnimation;
- (void)_runAuxiliaryBatteryLevelDismissAnimation;
- (void)_runAuxiliaryChargingBoltAnimationVisible:(BOOL)visible;
- (void)_runAuxiliaryChargingLabelPresentAnimation;
- (void)_runAuxiliarySplashRingAnimation;
- (void)_runBatteryLevelDismissAnimation;
- (void)_runBatteryLevelRingAnimation;
- (void)_runChargingBoltAnimationVisible:(BOOL)visible;
- (void)_runChargingLabelPresentAnimation;
- (void)_runDimAnimation;
- (void)_runRingBlurAnimation;
- (void)_runSplashRingAnimation;
- (void)dealloc;
- (void)layoutSubviews;
- (void)performAnimation:(unint64_t)animation completionHandler:(id)handler;
- (void)setBatteryVisible:(BOOL)visible;
- (void)setLegibilitySettings:(id)settings;
- (void)setPrimaryBatteryText:(id)text forBattery:(id)battery;
- (void)setSecondaryBatteryText:(id)text forBattery:(id)battery;
- (void)setSilhouette:(id)silhouette;
- (void)setSilhouetteLayer:(id)layer;
- (void)updateForInternalBatteryDevice:(id)device;
- (void)updateForInternalPowerStatus:(id)status;
@end

@implementation CSBatteryChargingRingView

- (CSBatteryChargingRingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = +[CSMagSafeAccessoryConfiguration defaultConfiguration];
  height = [(CSBatteryChargingRingView *)self initWithFrame:v8 configuration:x, y, width, height];

  return height;
}

- (CSBatteryChargingRingView)initWithFrame:(CGRect)frame configuration:(id)configuration externalBattery:(id)battery
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v487[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  batteryCopy = battery;
  v485.receiver = self;
  v485.super_class = CSBatteryChargingRingView;
  height = [(CSBatteryChargingView *)&v485 initWithFrame:x, y, width, height];

  if (height)
  {
    v481 = batteryCopy;
    objc_storeStrong(&height->_configuration, configuration);
    objc_storeStrong(&height->_externalBattery, battery);
    v15 = objc_alloc(MEMORY[0x277D75D18]);
    v16 = [v15 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    chargingContainerView = height->_chargingContainerView;
    height->_chargingContainerView = v16;

    v18 = height->_chargingContainerView;
    [(CSBatteryChargingRingView *)height center];
    [(UIView *)v18 setCenter:?];
    p_chargingContainerView = &height->_chargingContainerView;
    layer = [(UIView *)height->_chargingContainerView layer];
    [layer setAllowsGroupBlending:0];

    staticViewNeeded = [configurationCopy staticViewNeeded];
    mainScreen30 = 0x277CD9000uLL;
    v22 = MEMORY[0x277CDA5C0];
    v23 = MEMORY[0x277CDA5E8];
    if (staticViewNeeded)
    {
      v24 = *MEMORY[0x277CDA5C0];
      v25 = *MEMORY[0x277CDA5E8];
    }

    else
    {
      v26 = [MEMORY[0x277CD9E08] backdropLayerWithGaussianBlurRadius:0.0 brightnessAmount:0.0 saturationAmount:1.0];
      backgroundBackdropLayer = height->_backgroundBackdropLayer;
      height->_backgroundBackdropLayer = v26;

      v28 = height->_backgroundBackdropLayer;
      v24 = *v22;
      v29 = [MEMORY[0x277CD9EA0] filterWithType:v24];
      [(CABackdropLayer *)v28 setCompositingFilter:v29];

      LODWORD(v30) = 1.0;
      [(CABackdropLayer *)height->_backgroundBackdropLayer setOpacity:v30];
      [(CABackdropLayer *)height->_backgroundBackdropLayer setBounds:x, y, width, height];
      if ([(CSBatteryChargingRingView *)height _isReduceMotionEnabled])
      {
        v31 = [MEMORY[0x277CD9E08] backdropLayerWithGaussianBlurRadius:60.0 brightnessAmount:0.0 saturationAmount:1.0];
        backgroundRadiusBackdropLayer = height->_backgroundRadiusBackdropLayer;
        height->_backgroundRadiusBackdropLayer = v31;

        v33 = height->_backgroundRadiusBackdropLayer;
        v34 = [MEMORY[0x277CD9EA0] filterWithType:v24];
        [(CABackdropLayer *)v33 setCompositingFilter:v34];

        [(CABackdropLayer *)height->_backgroundRadiusBackdropLayer setOpacity:0.0];
      }

      if ([(CSBatteryChargingRingView *)height _isReduceTransparencyEnabled])
      {
        layer2 = [MEMORY[0x277CD9E08] layer];
        averageColorBackdropLayer = height->_averageColorBackdropLayer;
        height->_averageColorBackdropLayer = layer2;

        [(CABackdropLayer *)height->_averageColorBackdropLayer setOpacity:0.0];
        v37 = height->_averageColorBackdropLayer;
        v38 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA268]];
        v487[0] = v38;
        v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v487 count:1];
        [(CABackdropLayer *)v37 setFilters:v39];

        [(CABackdropLayer *)height->_averageColorBackdropLayer setScale:100.0];
        [(CABackdropLayer *)height->_averageColorBackdropLayer setAllowsGroupOpacity:1];
        [(CABackdropLayer *)height->_averageColorBackdropLayer setAllowsGroupBlending:1];
        [(CABackdropLayer *)height->_averageColorBackdropLayer setAllowsEdgeAntialiasing:1];
      }

      v40 = [MEMORY[0x277CD9E08] backdropLayerWithGaussianBlurRadius:45.0 brightnessAmount:0.15 saturationAmount:1.3];
      ringBlurBackdropLayer = height->_ringBlurBackdropLayer;
      height->_ringBlurBackdropLayer = v40;

      v42 = height->_ringBlurBackdropLayer;
      v43 = [MEMORY[0x277CD9EA0] filterWithType:v24];
      [(CABackdropLayer *)v42 setCompositingFilter:v43];

      [(CABackdropLayer *)height->_ringBlurBackdropLayer setBounds:x, y, width, height];
      ring = [configurationCopy ring];
      [ring ringDiameter];
      v46 = v45;
      ring2 = [configurationCopy ring];
      [ring2 lineWidth];
      v49 = [CSRingLayer ringLayerWithBlendMode:v24 diameter:v46 lineWidth:v48 brightnessAmount:-0.15 saturationAmount:0.0];
      ringBlurLayer = height->_ringBlurLayer;
      height->_ringBlurLayer = v49;

      [(CABackdropLayer *)height->_ringBlurBackdropLayer setMask:height->_ringBlurLayer];
      v51 = MEMORY[0x277CD9ED0];
      v52 = *MEMORY[0x277CDA5D0];
      ring3 = [configurationCopy ring];
      [ring3 ringDiameter];
      v55 = v54 * 0.5;
      ring4 = [configurationCopy ring];
      [ring4 lineWidth];
      v58 = [v51 ringLayerWithBlendMode:v52 cornerRadius:v55 borderWidth:v57];
      ringTempOverlayLayer = height->_ringTempOverlayLayer;
      height->_ringTempOverlayLayer = v58;

      ring5 = [configurationCopy ring];
      [ring5 splashRingDiameter];
      v62 = v61;

      v25 = *v23;
      v63 = [MEMORY[0x277CD9ED0] ringLayerWithBlendMode:*v23 cornerRadius:v62 * 1.66 * 0.5 borderWidth:0.0];
      splashRing = height->_splashRing;
      height->_splashRing = v63;

      v65 = [MEMORY[0x277CD9ED0] ringLayerWithBlendMode:v25 cornerRadius:v62 * 1.2 * 0.5 borderWidth:0.0];
      splashRing1 = height->_splashRing1;
      height->_splashRing1 = v65;

      v67 = [MEMORY[0x277CD9ED0] ringLayerWithBlendMode:v52 cornerRadius:v62 * 2.1 * 0.5 borderWidth:0.0];
      splashRing3 = height->_splashRing3;
      height->_splashRing3 = v67;
    }

    if ([(CSBatteryChargingRingView *)height _isDarkerSystemColorsEnabled])
    {
      v69 = v24;
    }

    else
    {
      v69 = v25;
    }

    v70 = v69;
    ring6 = [configurationCopy ring];
    v72 = [(CSBatteryChargingRingView *)height _trackRingForRingConfiguration:ring6 withBlendMode:v70];
    trackFillRingLayer = height->_trackFillRingLayer;
    height->_trackFillRingLayer = v72;

    auxiliaryRing = [configurationCopy auxiliaryRing];
    v480 = v70;
    v75 = [(CSBatteryChargingRingView *)height _trackRingForRingConfiguration:auxiliaryRing withBlendMode:v70];
    auxiliaryBatteryTrackFillRingLayer = height->_auxiliaryBatteryTrackFillRingLayer;
    height->_auxiliaryBatteryTrackFillRingLayer = v75;

    v479 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v77 = [MEMORY[0x277D755B8] imageNamed:@"ChargingAlert" inBundle:?];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v79 = [v77 _flatImageWithColor:whiteColor];

    v484 = configurationCopy;
    if (![(CSMagSafeAccessoryConfiguration *)height->_configuration staticViewNeeded])
    {
LABEL_191:
      v483 = [v79 imageWithRenderingMode:2];

      layer3 = [MEMORY[0x277CD9ED0] layer];
      chargingBoltGlyph = height->_chargingBoltGlyph;
      height->_chargingBoltGlyph = layer3;

      v106 = 1.0;
      if ([configurationCopy staticViewNeeded])
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
          mainScreen26 = 0;
          goto LABEL_202;
        }
      }

      else
      {
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice userInterfaceIdiom] != 1)
        {
          v109 = 0;
          mainScreen26 = 1;
          goto LABEL_202;
        }
      }

      mainScreen26 = v108 ^ 1u;
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

        v109 = currentDevice29 ^ 1;
        BSSizeRoundForScale();
        if (v126 == *(MEMORY[0x277D66E30] + 288) && v125 == *(MEMORY[0x277D66E30] + 296))
        {
          v474 = currentDevice29 ^ 1;
          v408 = mainScreen26;
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
      v408 = mainScreen26;
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
        currentDevice2 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice2 userInterfaceIdiom] != 1)
        {
          v113 = 0;
          v114 = 1;
          goto LABEL_211;
        }
      }

      v114 = v112 ^ 1;
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

        v113 = currentDevice29 ^ 1;
        BSSizeRoundForScale();
        if (v127 >= *(MEMORY[0x277D66E30] + 440))
        {
          v468 = currentDevice29 ^ 1;
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
          configurationCopy = 0;
          mainScreen30 = 0;
          goto LABEL_220;
        }
      }

      else
      {
        currentDevice3 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice3 userInterfaceIdiom] != 1)
        {
          mainScreen30 = 0;
          configurationCopy = 1;
          goto LABEL_220;
        }
      }

      configurationCopy = v115 ^ 1u;
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

        mainScreen30 = currentDevice29 ^ 1;
        BSSizeRoundForScale();
        if (v128 >= *(MEMORY[0x277D66E30] + 376))
        {
          v465 = __PAIR64__(configurationCopy, mainScreen30);
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
        mainScreen30 = 0;
      }

LABEL_220:
      v116 = __sb__runningInSpringBoard();
      v465 = __PAIR64__(configurationCopy, mainScreen30);
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
        currentDevice4 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice4 userInterfaceIdiom] != 1)
        {
          v462 = 0x100000000;
          goto LABEL_229;
        }
      }

      HIDWORD(v462) = v116 ^ 1;
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

      LODWORD(v462) = currentDevice29 ^ 1;
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
        currentDevice5 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice5 userInterfaceIdiom] != 1)
        {
          v459 = 0x100000000;
          goto LABEL_239;
        }
      }

      HIDWORD(v459) = v118 ^ 1;
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

      LODWORD(v459) = currentDevice29 ^ 1;
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
        currentDevice6 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice6 userInterfaceIdiom] != 1)
        {
          v456 = 0x100000000;
          goto LABEL_573;
        }
      }

      HIDWORD(v456) = v124 ^ 1;
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

      LODWORD(v456) = currentDevice29 ^ 1;
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
      currentDevice29 = __sb__runningInSpringBoard();
      if (currentDevice29)
      {
        if (SBFEffectiveDeviceClass() != 2)
        {
          goto LABEL_575;
        }
      }

      else
      {
        currentDevice7 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice7 userInterfaceIdiom] != 1)
        {
LABEL_575:
          HIDWORD(v453) = currentDevice29 ^ 1;
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
            currentDevice8 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice8 userInterfaceIdiom])
            {
              HIDWORD(v450) = 0;
              LODWORD(v453) = 1;
              goto LABEL_619;
            }
          }

          LODWORD(v453) = v219 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            currentDevice29 = __sb__runningInSpringBoard();
            if (currentDevice29)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
              [mainScreen7 _referenceBounds];
            }

            HIDWORD(v450) = currentDevice29 ^ 1;
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
          currentDevice29 = __sb__runningInSpringBoard();
          if (currentDevice29)
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
            currentDevice9 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice9 userInterfaceIdiom])
            {
              HIDWORD(v447) = 0;
              LODWORD(v450) = 1;
              goto LABEL_629;
            }
          }

          LODWORD(v450) = currentDevice29 ^ 1;
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

            HIDWORD(v447) = currentDevice29 ^ 1;
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
            currentDevice10 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice10 userInterfaceIdiom])
            {
              HIDWORD(v444) = 0;
              LODWORD(v447) = 1;
              goto LABEL_675;
            }
          }

          LODWORD(v447) = v225 ^ 1;
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

            HIDWORD(v444) = currentDevice29 ^ 1;
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
          currentDevice29 = __sb__runningInSpringBoard();
          if (currentDevice29)
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
            currentDevice11 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice11 userInterfaceIdiom])
            {
              HIDWORD(v441) = 0;
              LODWORD(v444) = 1;
              goto LABEL_685;
            }
          }

          LODWORD(v444) = currentDevice29 ^ 1;
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

            HIDWORD(v441) = currentDevice29 ^ 1;
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
            currentDevice12 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice12 userInterfaceIdiom])
            {
              HIDWORD(v438) = 0;
              LODWORD(v441) = 1;
              goto LABEL_699;
            }
          }

          LODWORD(v441) = v231 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            currentDevice29 = __sb__runningInSpringBoard();
            if (currentDevice29)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
              [mainScreen11 _referenceBounds];
            }

            HIDWORD(v438) = currentDevice29 ^ 1;
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
          currentDevice29 = __sb__runningInSpringBoard();
          if (currentDevice29)
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
            currentDevice13 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice13 userInterfaceIdiom])
            {
              HIDWORD(v435) = 0;
              LODWORD(v438) = 1;
              goto LABEL_768;
            }
          }

          LODWORD(v438) = currentDevice29 ^ 1;
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

            HIDWORD(v435) = currentDevice29 ^ 1;
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
            currentDevice14 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice14 userInterfaceIdiom])
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
              mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
              [mainScreen13 _referenceBounds];
            }

            currentDevice29 = v245 ^ 1u;
            BSSizeRoundForScale();
            HIDWORD(v432) = currentDevice29;
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
          currentDevice29 = __sb__runningInSpringBoard();
          if (currentDevice29)
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
            currentDevice15 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice15 userInterfaceIdiom])
            {
              HIDWORD(v403) = 0;
              v406 = 1;
              goto LABEL_865;
            }
          }

          v406 = currentDevice29 ^ 1;
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

            HIDWORD(v403) = currentDevice29 ^ 1;
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
            currentDevice16 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice16 userInterfaceIdiom])
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
              mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
              [mainScreen15 _referenceBounds];
            }

            currentDevice29 = v259 ^ 1u;
            BSSizeRoundForScale();
            LODWORD(v403) = currentDevice29;
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
          currentDevice29 = __sb__runningInSpringBoard();
          if (currentDevice29)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              v429 = 0;
              goto LABEL_952;
            }
          }

          else
          {
            currentDevice17 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice17 userInterfaceIdiom])
            {
              v429 = 0x100000000;
              goto LABEL_952;
            }
          }

          HIDWORD(v429) = currentDevice29 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            currentDevice29 = __sb__runningInSpringBoard();
            if (currentDevice29)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
              [mainScreen16 _referenceBounds];
            }

            LODWORD(v429) = currentDevice29 ^ 1;
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
            currentDevice18 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice18 userInterfaceIdiom])
            {
              v426 = 0x100000000;
              goto LABEL_1011;
            }
          }

          HIDWORD(v426) = v261 ^ 1;
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

            LODWORD(v426) = currentDevice29 ^ 1;
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
          currentDevice29 = __sb__runningInSpringBoard();
          if (currentDevice29)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              v423 = 0;
              goto LABEL_1021;
            }
          }

          else
          {
            currentDevice19 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice19 userInterfaceIdiom])
            {
              v423 = 0x100000000;
              goto LABEL_1021;
            }
          }

          HIDWORD(v423) = currentDevice29 ^ 1;
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

            LODWORD(v423) = currentDevice29 ^ 1;
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
            currentDevice20 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice20 userInterfaceIdiom])
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
              mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
              [mainScreen19 _referenceBounds];
            }

            currentDevice29 = v279 ^ 1u;
            BSSizeRoundForScale();
            LODWORD(v420) = currentDevice29;
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
          currentDevice29 = __sb__runningInSpringBoard();
          if (currentDevice29)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              v417 = 0;
              goto LABEL_1105;
            }
          }

          else
          {
            currentDevice21 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice21 userInterfaceIdiom])
            {
              v417 = 0x100000000;
              goto LABEL_1105;
            }
          }

          HIDWORD(v417) = currentDevice29 ^ 1;
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

            LODWORD(v417) = currentDevice29 ^ 1;
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
            currentDevice22 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice22 userInterfaceIdiom])
            {
              v414 = 0x100000000;
              goto LABEL_1119;
            }
          }

          HIDWORD(v414) = v281 ^ 1;
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

            LODWORD(v414) = currentDevice29 ^ 1;
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
          currentDevice29 = __sb__runningInSpringBoard();
          if (currentDevice29)
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
            currentDevice23 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice23 userInterfaceIdiom])
            {
              HIDWORD(v400) = 0;
              HIDWORD(v411) = 1;
              goto LABEL_1188;
            }
          }

          HIDWORD(v411) = currentDevice29 ^ 1;
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

            HIDWORD(v400) = currentDevice29 ^ 1;
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
            currentDevice24 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice24 userInterfaceIdiom])
            {
              LODWORD(v411) = 0;
              LODWORD(v400) = 1;
              goto LABEL_1231;
            }
          }

          LODWORD(v400) = v293 ^ 1;
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

            LODWORD(v411) = currentDevice29 ^ 1;
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
          currentDevice29 = __sb__runningInSpringBoard();
          if (currentDevice29)
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
            currentDevice25 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice25 userInterfaceIdiom])
            {
              v394 = 0;
              HIDWORD(v397) = 1;
              goto LABEL_1291;
            }
          }

          HIDWORD(v397) = currentDevice29 ^ 1;
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

            v394 = currentDevice29 ^ 1;
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
                currentDevice26 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice26 userInterfaceIdiom])
                {
                  v391 = 0;
                  LODWORD(v397) = 1;
                  goto LABEL_1392;
                }
              }

              LODWORD(v397) = v306 ^ 1;
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

                v391 = currentDevice29 ^ 1;
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
              currentDevice29 = __sb__runningInSpringBoard();
              if (currentDevice29)
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
                currentDevice27 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice27 userInterfaceIdiom])
                {
                  v385 = 0;
                  v388 = 1;
                  goto LABEL_1412;
                }
              }

              v388 = currentDevice29 ^ 1;
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

                v385 = currentDevice29 ^ 1;
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
                  mainScreen27 = __sb__runningInSpringBoard();
                  if (mainScreen27)
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
                    configurationCopy = [MEMORY[0x277D75418] currentDevice];
                    if ([configurationCopy userInterfaceIdiom])
                    {
                      v122 = 0.0;
                      v121 = 1;
                      goto LABEL_256;
                    }
                  }

                  v121 = mainScreen27 ^ 1;
                  v323 = __sb__runningInSpringBoard();
                  if (v323)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    mainScreen27 = [MEMORY[0x277D759A0] mainScreen];
                    [mainScreen27 _referenceBounds];
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
                        mainScreen28 = 0;
                        v131 = 0;
                        goto LABEL_378;
                      }
                    }

                    else
                    {
                      currentDevice = [MEMORY[0x277D75418] currentDevice];
                      if ([currentDevice userInterfaceIdiom] != 1)
                      {
                        v131 = 0;
                        mainScreen28 = 1;
                        goto LABEL_378;
                      }
                    }

                    mainScreen28 = v129 ^ 1u;
                    if (SBFEffectiveHomeButtonType() == 2)
                    {
                      currentDevice28 = __sb__runningInSpringBoard();
                      if (currentDevice28)
                      {
                        __sb__mainScreenReferenceBounds();
                      }

                      else
                      {
                        mainScreen = [MEMORY[0x277D759A0] mainScreen];
                        [mainScreen _referenceBounds];
                      }

                      v131 = currentDevice28 ^ 1;
                      BSSizeRoundForScale();
                      if (v148 == *(MEMORY[0x277D66E30] + 288) && v147 == *(MEMORY[0x277D66E30] + 296))
                      {
                        v475 = currentDevice28 ^ 1;
                        v409 = mainScreen28;
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
                    v409 = mainScreen28;
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
                      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
                      if ([currentDevice2 userInterfaceIdiom] != 1)
                      {
                        v135 = 0;
                        v134 = 1;
                        goto LABEL_387;
                      }
                    }

                    v134 = v133 ^ 1;
                    if (SBFEffectiveHomeButtonType() == 2)
                    {
                      currentDevice28 = __sb__runningInSpringBoard();
                      if (currentDevice28)
                      {
                        __sb__mainScreenReferenceBounds();
                      }

                      else
                      {
                        mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
                        [mainScreen2 _referenceBounds];
                      }

                      v135 = currentDevice28 ^ 1;
                      BSSizeRoundForScale();
                      if (v149 >= *(MEMORY[0x277D66E30] + 440))
                      {
                        v469 = currentDevice28 ^ 1;
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
                        configurationCopy = 0;
                        goto LABEL_396;
                      }
                    }

                    else
                    {
                      currentDevice3 = [MEMORY[0x277D75418] currentDevice];
                      if ([currentDevice3 userInterfaceIdiom] != 1)
                      {
                        configurationCopy = 0;
                        v137 = 1;
                        goto LABEL_396;
                      }
                    }

                    v137 = v136 ^ 1;
                    if (SBFEffectiveHomeButtonType() == 2)
                    {
                      currentDevice28 = __sb__runningInSpringBoard();
                      if (currentDevice28)
                      {
                        __sb__mainScreenReferenceBounds();
                      }

                      else
                      {
                        mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
                        [mainScreen3 _referenceBounds];
                      }

                      configurationCopy = currentDevice28 ^ 1;
                      BSSizeRoundForScale();
                      if (v150 >= *(MEMORY[0x277D66E30] + 376))
                      {
                        v466 = __PAIR64__(v137, configurationCopy);
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
                      configurationCopy = 0;
                    }

LABEL_396:
                    v138 = __sb__runningInSpringBoard();
                    v466 = __PAIR64__(v137, configurationCopy);
                    if (v138)
                    {
                      if (SBFEffectiveDeviceClass() != 2)
                      {
                        mainScreen30 = 0;
                        LODWORD(v463) = 0;
                        goto LABEL_405;
                      }
                    }

                    else
                    {
                      currentDevice4 = [MEMORY[0x277D75418] currentDevice];
                      if ([currentDevice4 userInterfaceIdiom] != 1)
                      {
                        LODWORD(v463) = 0;
                        mainScreen30 = 1;
                        goto LABEL_405;
                      }
                    }

                    mainScreen30 = v138 ^ 1u;
                    currentDevice28 = __sb__runningInSpringBoard();
                    if (currentDevice28)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
                      [mainScreen4 _referenceBounds];
                    }

                    LODWORD(v463) = currentDevice28 ^ 1;
                    BSSizeRoundForScale();
                    if (v139 >= *(MEMORY[0x277D66E30] + 280))
                    {
                      HIDWORD(v463) = mainScreen30;
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
                    HIDWORD(v463) = mainScreen30;
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
                      currentDevice5 = [MEMORY[0x277D75418] currentDevice];
                      if ([currentDevice5 userInterfaceIdiom] != 1)
                      {
                        v460 = 0x100000000;
                        goto LABEL_415;
                      }
                    }

                    HIDWORD(v460) = v140 ^ 1;
                    currentDevice28 = __sb__runningInSpringBoard();
                    if (currentDevice28)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
                      [mainScreen5 _referenceBounds];
                    }

                    LODWORD(v460) = currentDevice28 ^ 1;
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
                      currentDevice6 = [MEMORY[0x277D75418] currentDevice];
                      if ([currentDevice6 userInterfaceIdiom] != 1)
                      {
                        v457 = 0x100000000;
                        goto LABEL_585;
                      }
                    }

                    HIDWORD(v457) = v146 ^ 1;
                    currentDevice28 = __sb__runningInSpringBoard();
                    if (currentDevice28)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
                      [mainScreen6 _referenceBounds];
                    }

                    LODWORD(v457) = currentDevice28 ^ 1;
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
                    currentDevice28 = __sb__runningInSpringBoard();
                    if (currentDevice28)
                    {
                      if (SBFEffectiveDeviceClass() != 2)
                      {
                        goto LABEL_587;
                      }
                    }

                    else
                    {
                      currentDevice7 = [MEMORY[0x277D75418] currentDevice];
                      if ([currentDevice7 userInterfaceIdiom] != 1)
                      {
LABEL_587:
                        HIDWORD(v454) = currentDevice28 ^ 1;
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
                          currentDevice8 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice8 userInterfaceIdiom])
                          {
                            HIDWORD(v451) = 0;
                            LODWORD(v454) = 1;
                            goto LABEL_644;
                          }
                        }

                        LODWORD(v454) = v221 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice28 = __sb__runningInSpringBoard();
                          if (currentDevice28)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen7 _referenceBounds];
                          }

                          HIDWORD(v451) = currentDevice28 ^ 1;
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
                        currentDevice28 = __sb__runningInSpringBoard();
                        if (currentDevice28)
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
                          currentDevice9 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice9 userInterfaceIdiom])
                          {
                            HIDWORD(v448) = 0;
                            LODWORD(v451) = 1;
                            goto LABEL_654;
                          }
                        }

                        LODWORD(v451) = currentDevice28 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice28 = __sb__runningInSpringBoard();
                          if (currentDevice28)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen8 _referenceBounds];
                          }

                          HIDWORD(v448) = currentDevice28 ^ 1;
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
                          currentDevice10 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice10 userInterfaceIdiom])
                          {
                            HIDWORD(v445) = 0;
                            LODWORD(v448) = 1;
                            goto LABEL_709;
                          }
                        }

                        LODWORD(v448) = v227 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice28 = __sb__runningInSpringBoard();
                          if (currentDevice28)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen9 _referenceBounds];
                          }

                          HIDWORD(v445) = currentDevice28 ^ 1;
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
                        currentDevice28 = __sb__runningInSpringBoard();
                        if (currentDevice28)
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
                          currentDevice11 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice11 userInterfaceIdiom])
                          {
                            HIDWORD(v442) = 0;
                            LODWORD(v445) = 1;
                            goto LABEL_719;
                          }
                        }

                        LODWORD(v445) = currentDevice28 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice28 = __sb__runningInSpringBoard();
                          if (currentDevice28)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen10 _referenceBounds];
                          }

                          HIDWORD(v442) = currentDevice28 ^ 1;
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
                          currentDevice12 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice12 userInterfaceIdiom])
                          {
                            HIDWORD(v439) = 0;
                            LODWORD(v442) = 1;
                            goto LABEL_733;
                          }
                        }

                        LODWORD(v442) = v233 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice28 = __sb__runningInSpringBoard();
                          if (currentDevice28)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen11 _referenceBounds];
                          }

                          HIDWORD(v439) = currentDevice28 ^ 1;
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
                        currentDevice28 = __sb__runningInSpringBoard();
                        if (currentDevice28)
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
                          currentDevice13 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice13 userInterfaceIdiom])
                          {
                            HIDWORD(v436) = 0;
                            LODWORD(v439) = 1;
                            goto LABEL_774;
                          }
                        }

                        LODWORD(v439) = currentDevice28 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice28 = __sb__runningInSpringBoard();
                          if (currentDevice28)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen12 _referenceBounds];
                          }

                          HIDWORD(v436) = currentDevice28 ^ 1;
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
                          currentDevice14 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice14 userInterfaceIdiom])
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
                            mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen13 _referenceBounds];
                          }

                          currentDevice28 = v246 ^ 1u;
                          BSSizeRoundForScale();
                          HIDWORD(v433) = currentDevice28;
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
                        currentDevice28 = __sb__runningInSpringBoard();
                        if (currentDevice28)
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
                          currentDevice15 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice15 userInterfaceIdiom])
                          {
                            HIDWORD(v404) = 0;
                            v407 = 1;
                            goto LABEL_872;
                          }
                        }

                        v407 = currentDevice28 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice28 = __sb__runningInSpringBoard();
                          if (currentDevice28)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen14 _referenceBounds];
                          }

                          HIDWORD(v404) = currentDevice28 ^ 1;
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
                          currentDevice16 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice16 userInterfaceIdiom])
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
                            mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen15 _referenceBounds];
                          }

                          currentDevice28 = v262 ^ 1u;
                          BSSizeRoundForScale();
                          LODWORD(v404) = currentDevice28;
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
                        currentDevice28 = __sb__runningInSpringBoard();
                        if (currentDevice28)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            v430 = 0;
                            goto LABEL_977;
                          }
                        }

                        else
                        {
                          currentDevice17 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice17 userInterfaceIdiom])
                          {
                            v430 = 0x100000000;
                            goto LABEL_977;
                          }
                        }

                        HIDWORD(v430) = currentDevice28 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice28 = __sb__runningInSpringBoard();
                          if (currentDevice28)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen16 _referenceBounds];
                          }

                          LODWORD(v430) = currentDevice28 ^ 1;
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
                          currentDevice18 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice18 userInterfaceIdiom])
                          {
                            v427 = 0x100000000;
                            goto LABEL_1036;
                          }
                        }

                        HIDWORD(v427) = v264 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice28 = __sb__runningInSpringBoard();
                          if (currentDevice28)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen17 _referenceBounds];
                          }

                          LODWORD(v427) = currentDevice28 ^ 1;
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
                        currentDevice28 = __sb__runningInSpringBoard();
                        if (currentDevice28)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            v424 = 0;
                            goto LABEL_1046;
                          }
                        }

                        else
                        {
                          currentDevice19 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice19 userInterfaceIdiom])
                          {
                            v424 = 0x100000000;
                            goto LABEL_1046;
                          }
                        }

                        HIDWORD(v424) = currentDevice28 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice28 = __sb__runningInSpringBoard();
                          if (currentDevice28)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            mainScreen18 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen18 _referenceBounds];
                          }

                          LODWORD(v424) = currentDevice28 ^ 1;
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
                          currentDevice20 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice20 userInterfaceIdiom])
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
                            mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen19 _referenceBounds];
                          }

                          currentDevice28 = v282 ^ 1u;
                          BSSizeRoundForScale();
                          LODWORD(v421) = currentDevice28;
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
                        currentDevice28 = __sb__runningInSpringBoard();
                        if (currentDevice28)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            v418 = 0;
                            goto LABEL_1139;
                          }
                        }

                        else
                        {
                          currentDevice21 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice21 userInterfaceIdiom])
                          {
                            v418 = 0x100000000;
                            goto LABEL_1139;
                          }
                        }

                        HIDWORD(v418) = currentDevice28 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice28 = __sb__runningInSpringBoard();
                          if (currentDevice28)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            mainScreen20 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen20 _referenceBounds];
                          }

                          LODWORD(v418) = currentDevice28 ^ 1;
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
                          currentDevice22 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice22 userInterfaceIdiom])
                          {
                            v415 = 0x100000000;
                            goto LABEL_1153;
                          }
                        }

                        HIDWORD(v415) = v284 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice28 = __sb__runningInSpringBoard();
                          if (currentDevice28)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen21 _referenceBounds];
                          }

                          LODWORD(v415) = currentDevice28 ^ 1;
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
                        currentDevice28 = __sb__runningInSpringBoard();
                        if (currentDevice28)
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
                          currentDevice23 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice23 userInterfaceIdiom])
                          {
                            HIDWORD(v401) = 0;
                            HIDWORD(v412) = 1;
                            goto LABEL_1194;
                          }
                        }

                        HIDWORD(v412) = currentDevice28 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice28 = __sb__runningInSpringBoard();
                          if (currentDevice28)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen22 _referenceBounds];
                          }

                          HIDWORD(v401) = currentDevice28 ^ 1;
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
                          currentDevice24 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice24 userInterfaceIdiom])
                          {
                            LODWORD(v412) = 0;
                            LODWORD(v401) = 1;
                            goto LABEL_1241;
                          }
                        }

                        LODWORD(v401) = v295 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice28 = __sb__runningInSpringBoard();
                          if (currentDevice28)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen23 _referenceBounds];
                          }

                          LODWORD(v412) = currentDevice28 ^ 1;
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
                        currentDevice28 = __sb__runningInSpringBoard();
                        if (currentDevice28)
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
                          currentDevice25 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice25 userInterfaceIdiom])
                          {
                            v395 = 0;
                            HIDWORD(v398) = 1;
                            goto LABEL_1297;
                          }
                        }

                        HIDWORD(v398) = currentDevice28 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice28 = __sb__runningInSpringBoard();
                          if (currentDevice28)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen24 _referenceBounds];
                          }

                          v395 = currentDevice28 ^ 1;
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
                              currentDevice26 = [MEMORY[0x277D75418] currentDevice];
                              if ([currentDevice26 userInterfaceIdiom])
                              {
                                v392 = 0;
                                LODWORD(v398) = 1;
                                goto LABEL_1402;
                              }
                            }

                            LODWORD(v398) = v307 ^ 1;
                            if (SBFEffectiveHomeButtonType() == 2)
                            {
                              currentDevice28 = __sb__runningInSpringBoard();
                              if (currentDevice28)
                              {
                                __sb__mainScreenReferenceBounds();
                              }

                              else
                              {
                                mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
                                [mainScreen25 _referenceBounds];
                              }

                              v392 = currentDevice28 ^ 1;
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
                            currentDevice28 = __sb__runningInSpringBoard();
                            if (currentDevice28)
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
                              currentDevice27 = [MEMORY[0x277D75418] currentDevice];
                              if ([currentDevice27 userInterfaceIdiom])
                              {
                                v386 = 0;
                                v389 = 1;
                                goto LABEL_1422;
                              }
                            }

                            v389 = currentDevice28 ^ 1;
                            if (SBFEffectiveHomeButtonType() == 2)
                            {
                              currentDevice28 = __sb__runningInSpringBoard();
                              if (currentDevice28)
                              {
                                __sb__mainScreenReferenceBounds();
                              }

                              else
                              {
                                mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
                                [mainScreen28 _referenceBounds];
                              }

                              v386 = currentDevice28 ^ 1;
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
                                mainScreen29 = __sb__runningInSpringBoard();
                                if (mainScreen29)
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
                                  configurationCopy = [MEMORY[0x277D75418] currentDevice];
                                  if ([configurationCopy userInterfaceIdiom])
                                  {
                                    v144 = 0.0;
                                    v143 = 1;
                                    goto LABEL_432;
                                  }
                                }

                                v143 = mainScreen29 ^ 1;
                                v324 = __sb__runningInSpringBoard();
                                if (v324)
                                {
                                  __sb__mainScreenReferenceBounds();
                                }

                                else
                                {
                                  mainScreen29 = [MEMORY[0x277D759A0] mainScreen];
                                  [mainScreen29 _referenceBounds];
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

                                  [(CALayer *)height->_chargingBoltGlyph setBounds:0.0, 0.0, v151, v152];
                                  -[CALayer setContents:](height->_chargingBoltGlyph, "setContents:", [v483 CGImage]);
                                  [(CALayer *)height->_chargingBoltGlyph setOpacity:0.0];
                                  v153 = height->_chargingBoltGlyph;
                                  v154 = [MEMORY[0x277CD9EA0] brightnessFilterWithAmount:0.1];
                                  v486 = v154;
                                  v155 = [MEMORY[0x277CBEA60] arrayWithObjects:&v486 count:1];
                                  [(CALayer *)v153 setFilters:v155];

                                  ring7 = [v484 ring];
                                  v157 = [(CSBatteryChargingRingView *)height _ringLayerForRingConfiguration:ring7];
                                  batteryLevelRing = height->_batteryLevelRing;
                                  height->_batteryLevelRing = v157;

                                  auxiliaryRing2 = [v484 auxiliaryRing];
                                  v160 = [(CSBatteryChargingRingView *)height _ringLayerForRingConfiguration:auxiliaryRing2];
                                  auxiliaryBatteryLevelRing = height->_auxiliaryBatteryLevelRing;
                                  height->_auxiliaryBatteryLevelRing = v160;

                                  [(CSBatteryChargingRingView *)height _createAuxiliaryPillViewsIfNeeded];
                                  v162 = +[CSLockScreenDomain rootSettings];
                                  chargingSettings = [v162 chargingSettings];

                                  layer4 = [MEMORY[0x277CD9ED0] layer];
                                  auxiliaryBatteryContainerLayer = height->_auxiliaryBatteryContainerLayer;
                                  height->_auxiliaryBatteryContainerLayer = layer4;

                                  v166 = height->_auxiliaryBatteryContainerLayer;
                                  [(CSBatteryChargingRingView *)height bounds];
                                  [(CALayer *)v166 setBounds:?];
                                  v476 = chargingSettings;
                                  if (([chargingSettings useWhimsicalDesign] & 1) == 0)
                                  {
                                    v167 = MEMORY[0x277D755D0];
                                    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
                                    v169 = [v167 configurationWithHierarchicalColor:whiteColor2];

                                    v170 = [(CSBatteryChargingRingView *)height _auxillaryGlyphImageForConfig:v169];
                                    v171 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v170];
                                    auxiliaryGlyphImageView = height->_auxiliaryGlyphImageView;
                                    height->_auxiliaryGlyphImageView = v171;

                                    [(UIImageView *)height->_auxiliaryGlyphImageView setPreferredSymbolConfiguration:v169];
                                    [(UIImageView *)height->_auxiliaryGlyphImageView setContentMode:1];
                                    [(UIImageView *)height->_auxiliaryGlyphImageView setSize:44.0, 44.0];
                                    layer5 = [(UIImageView *)height->_auxiliaryGlyphImageView layer];
                                    auxiliaryGlyphLayer = height->_auxiliaryGlyphLayer;
                                    height->_auxiliaryGlyphLayer = layer5;

                                    [(CALayer *)height->_auxiliaryGlyphLayer setOpacity:0.0];
                                  }

                                  [(CSBatteryChargingRingView *)height _createBoltViewsIfNeeded];
                                  v175 = objc_alloc_init(MEMORY[0x277CD9E08]);
                                  auxiliaryCaptureBackdrop = height->_auxiliaryCaptureBackdrop;
                                  height->_auxiliaryCaptureBackdrop = v175;

                                  [(CABackdropLayer *)height->_auxiliaryCaptureBackdrop setAllowsInPlaceFiltering:1];
                                  v177 = height->_auxiliaryCaptureBackdrop;
                                  [(CSBatteryChargingRingView *)height bounds];
                                  [(CABackdropLayer *)v177 setBounds:?];
                                  _silhouetteConfiguration = [(CSBatteryChargingRingView *)height _silhouetteConfiguration];
                                  [(CSBatteryChargingRingView *)height setSilhouette:_silhouetteConfiguration];

                                  p_auxiliaryBatteryPillClippingView = &height->_chargingContainerView;
                                  [(CSBatteryChargingRingView *)height addSubview:*p_chargingContainerView];
                                  if ([v484 staticViewNeeded])
                                  {
                                    LODWORD(v180) = 1036831949;
                                    [(CSRingLayer *)height->_trackFillRingLayer setOpacity:v180];
                                    LODWORD(v181) = 1.0;
                                    [(CALayer *)height->_chargingBoltGlyph setOpacity:v181];
                                    LODWORD(v182) = 1.0;
                                    [(CSRingLayer *)height->_batteryLevelRing setOpacity:v182];
                                    ring8 = [(CSMagSafeAccessoryConfiguration *)height->_configuration ring];
                                    v184 = [(CSBatteryChargingRingView *)height _pathForRingConfiguration:ring8];

                                    [(CSRingLayer *)height->_batteryLevelRing setPath:v184];
                                    CGPathRelease(v184);
                                    LODWORD(v185) = 1.0;
                                    [(CSRingLayer *)height->_auxiliaryBatteryLevelRing setOpacity:v185];
                                    auxiliaryRing3 = [(CSMagSafeAccessoryConfiguration *)height->_configuration auxiliaryRing];
                                    v187 = [(CSBatteryChargingRingView *)height _pathForRingConfiguration:auxiliaryRing3];

                                    [(CSRingLayer *)height->_auxiliaryBatteryLevelRing setPath:v187];
                                    CGPathRelease(v187);
                                    layer6 = [(UIView *)height->_auxiliaryBatteryPillTrackView layer];
                                    LODWORD(v189) = 1036831949;
                                    [layer6 setOpacity:v189];

                                    layer7 = [(UIView *)height->_auxiliaryBatteryPillLevelView layer];
                                    LODWORD(v191) = 1.0;
                                    [layer7 setOpacity:v191];

                                    LODWORD(v192) = 1041865114;
                                    [(CALayer *)height->_silhouetteLayer setOpacity:v192];
                                  }

                                  else
                                  {
                                    layer8 = [*p_chargingContainerView layer];
                                    [layer8 addSublayer:height->_backgroundBackdropLayer];

                                    if ([(CSBatteryChargingRingView *)height _isReduceTransparencyEnabled])
                                    {
                                      layer9 = [*p_chargingContainerView layer];
                                      [layer9 addSublayer:height->_averageColorBackdropLayer];
                                    }

                                    if ([(CSBatteryChargingRingView *)height _isShowingAuxiliary])
                                    {
                                      layer10 = [*p_chargingContainerView layer];
                                      [layer10 addSublayer:height->_silhouetteLayer];

                                      layer11 = [*p_chargingContainerView layer];
                                      [layer11 addSublayer:height->_auxiliaryBatteryContainerLayer];
                                    }

                                    if ([(CSBatteryChargingRingView *)height _isReduceMotionEnabled])
                                    {
                                      layer12 = [*p_chargingContainerView layer];
                                      [layer12 insertSublayer:height->_backgroundRadiusBackdropLayer below:height->_backgroundBackdropLayer];
                                    }

                                    else
                                    {
                                      if ([(CSBatteryChargingRingView *)height _isShowingAuxiliary])
                                      {
                                        [(CALayer *)height->_silhouetteLayer addSublayer:height->_splashRing];
                                        [(CALayer *)height->_silhouetteLayer addSublayer:height->_splashRing1];
                                        [(CALayer *)height->_silhouetteLayer addSublayer:height->_splashRing3];
                                      }

                                      else
                                      {
                                        layer13 = [*p_chargingContainerView layer];
                                        [layer13 addSublayer:height->_splashRing];

                                        layer14 = [*p_chargingContainerView layer];
                                        [layer14 addSublayer:height->_splashRing1];

                                        layer15 = [*p_chargingContainerView layer];
                                        [layer15 addSublayer:height->_splashRing3];
                                      }

                                      layer12 = [*p_chargingContainerView layer];
                                      [layer12 addSublayer:height->_ringTempOverlayLayer];
                                    }

                                    layer16 = [*p_chargingContainerView layer];
                                    [layer16 addSublayer:height->_ringBlurBackdropLayer];
                                  }

                                  layer17 = [*p_chargingContainerView layer];
                                  [layer17 addSublayer:height->_trackFillRingLayer];

                                  layer18 = [*p_chargingContainerView layer];
                                  [layer18 addSublayer:height->_batteryLevelRing];

                                  layer19 = [*p_chargingContainerView layer];
                                  [layer19 addSublayer:height->_chargingBoltGlyph];

                                  if ([v476 useWhimsicalDesign])
                                  {
                                    if ([(CSBatteryChargingRingView *)height _isShowingAuxiliary])
                                    {
                                      p_auxiliaryBatteryPillClippingView = &height->_auxiliaryBatteryPillClippingView;
                                      layer20 = [(UIView *)height->_auxiliaryBatteryPillClippingView layer];
                                      v206 = height->_auxiliaryCaptureBackdrop;
                                      layer21 = [(UIView *)height->_auxiliaryBatteryPillTrackView layer];
                                      [layer20 insertSublayer:v206 above:layer21];

                                      v208 = &OBJC_IVAR___CSBatteryChargingRingView__auxiliaryChargingBoltGlyph;
                                      v209 = &OBJC_IVAR___CSBatteryChargingRingView__auxiliaryChargingBoltGlyphMask;
LABEL_567:
                                      layer22 = [*p_auxiliaryBatteryPillClippingView layer];
                                      [layer22 addSublayer:*(&height->super.super.super.super.super.super.isa + *v209)];

                                      layer23 = [*p_auxiliaryBatteryPillClippingView layer];
                                      [layer23 addSublayer:*(&height->super.super.super.super.super.super.isa + *v208)];
                                    }
                                  }

                                  else if (height->_auxiliaryBatteryLevelRing)
                                  {
                                    layer24 = [*p_chargingContainerView layer];
                                    [layer24 addSublayer:height->_auxiliaryBatteryTrackFillRingLayer];

                                    [(CALayer *)height->_auxiliaryBatteryContainerLayer addSublayer:height->_auxiliaryBatteryLevelRing];
                                    v211 = +[CSLockScreenDomain rootSettings];
                                    chargingSettings2 = [v211 chargingSettings];
                                    shouldShowMaskForAuxiliaryBattery = [chargingSettings2 shouldShowMaskForAuxiliaryBattery];

                                    if (shouldShowMaskForAuxiliaryBattery)
                                    {
                                      [(CALayer *)height->_auxiliaryBatteryContainerLayer insertSublayer:height->_auxiliaryCaptureBackdrop above:height->_auxiliaryBatteryTrackFillRingLayer];
                                      [(CALayer *)height->_auxiliaryBatteryContainerLayer addSublayer:height->_auxiliaryChargingBoltGlyphMask];
                                    }

                                    v208 = &OBJC_IVAR___CSBatteryChargingRingView__auxiliaryGlyphLayer;
                                    v209 = &OBJC_IVAR___CSBatteryChargingRingView__auxiliaryChargingBoltGlyph;
                                    goto LABEL_567;
                                  }

                                  configurationCopy = v484;
                                  batteryCopy = v481;
                                  goto LABEL_569;
                                }

LABEL_537:

                                goto LABEL_538;
                              }
                            }

                            else
                            {
                              currentDevice28 = [MEMORY[0x277D75418] currentDevice];
                              if ([currentDevice28 userInterfaceIdiom])
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
                              mainScreen30 = [MEMORY[0x277D759A0] mainScreen];
                              [mainScreen30 _referenceBounds];
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
                    HIDWORD(v454) = currentDevice28 ^ 1;
                    goto LABEL_432;
                  }

LABEL_359:

                  goto LABEL_360;
                }
              }

              else
              {
                currentDevice29 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice29 userInterfaceIdiom])
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
                mainScreen30 = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen30 _referenceBounds];
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
      HIDWORD(v453) = currentDevice29 ^ 1;
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
      currentDevice30 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice30 userInterfaceIdiom] != 1)
      {
        v478 = 0;
        v482 = 1;
        goto LABEL_22;
      }
    }

    v482 = v81 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      currentDevice32 = __sb__runningInSpringBoard();
      if (currentDevice32)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen31 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen31 _referenceBounds];
      }

      v478 = currentDevice32 ^ 1;
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
      currentDevice31 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice31 userInterfaceIdiom] != 1)
      {
        v470 = 0;
        v473 = 1;
        goto LABEL_31;
      }
    }

    v473 = v83 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      currentDevice32 = __sb__runningInSpringBoard();
      if (currentDevice32)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen4 _referenceBounds];
      }

      v470 = currentDevice32 ^ 1;
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
      mainScreen = [MEMORY[0x277D75418] currentDevice];
      if ([mainScreen userInterfaceIdiom] != 1)
      {
        HIDWORD(v464) = 0;
        v467 = 1;
        goto LABEL_40;
      }
    }

    v467 = v84 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      currentDevice32 = __sb__runningInSpringBoard();
      if (currentDevice32)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        currentDevice7 = [MEMORY[0x277D759A0] mainScreen];
        [currentDevice7 _referenceBounds];
      }

      HIDWORD(v464) = currentDevice32 ^ 1;
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
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice userInterfaceIdiom] != 1)
      {
        HIDWORD(v461) = 0;
        LODWORD(v464) = 1;
        goto LABEL_49;
      }
    }

    LODWORD(v464) = v85 ^ 1;
    currentDevice32 = __sb__runningInSpringBoard();
    if (currentDevice32)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice4 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice4 _referenceBounds];
    }

    HIDWORD(v461) = currentDevice32 ^ 1;
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
      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice2 userInterfaceIdiom] != 1)
      {
        HIDWORD(v458) = 0;
        LODWORD(v461) = 1;
        goto LABEL_59;
      }
    }

    LODWORD(v461) = v87 ^ 1;
    currentDevice32 = __sb__runningInSpringBoard();
    if (currentDevice32)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice6 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice6 _referenceBounds];
    }

    HIDWORD(v458) = currentDevice32 ^ 1;
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
        currentDevice32 = __sb__runningInSpringBoard();
        if (currentDevice32)
        {
          if (SBFEffectiveDeviceClass() != 2)
          {
            goto LABEL_601;
          }
        }

        else
        {
          currentDevice5 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice5 userInterfaceIdiom] != 1)
          {
LABEL_601:
            LODWORD(v455) = currentDevice32 ^ 1;
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
              mainScreen3 = [MEMORY[0x277D75418] currentDevice];
              if ([mainScreen3 userInterfaceIdiom])
              {
                v452 = 0x100000000;
                goto LABEL_743;
              }
            }

            HIDWORD(v452) = v223 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              currentDevice32 = __sb__runningInSpringBoard();
              if (currentDevice32)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen8 _referenceBounds];
              }

              LODWORD(v452) = currentDevice32 ^ 1;
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
            currentDevice32 = __sb__runningInSpringBoard();
            if (currentDevice32)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v449 = 0;
                goto LABEL_753;
              }
            }

            else
            {
              mainScreen2 = [MEMORY[0x277D75418] currentDevice];
              if ([mainScreen2 userInterfaceIdiom])
              {
                v449 = 0x100000000;
                goto LABEL_753;
              }
            }

            HIDWORD(v449) = currentDevice32 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              currentDevice32 = __sb__runningInSpringBoard();
              if (currentDevice32)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                currentDevice11 = [MEMORY[0x277D759A0] mainScreen];
                [currentDevice11 _referenceBounds];
              }

              LODWORD(v449) = currentDevice32 ^ 1;
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
              currentDevice8 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice8 userInterfaceIdiom])
              {
                v446 = 0x100000000;
                goto LABEL_831;
              }
            }

            HIDWORD(v446) = v235 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              currentDevice32 = __sb__runningInSpringBoard();
              if (currentDevice32)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                currentDevice15 = [MEMORY[0x277D759A0] mainScreen];
                [currentDevice15 _referenceBounds];
              }

              LODWORD(v446) = currentDevice32 ^ 1;
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
            currentDevice32 = __sb__runningInSpringBoard();
            if (currentDevice32)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v443 = 0;
                goto LABEL_841;
              }
            }

            else
            {
              mainScreen6 = [MEMORY[0x277D75418] currentDevice];
              if ([mainScreen6 userInterfaceIdiom])
              {
                v443 = 0x100000000;
                goto LABEL_841;
              }
            }

            HIDWORD(v443) = currentDevice32 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              currentDevice32 = __sb__runningInSpringBoard();
              if (currentDevice32)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                currentDevice13 = [MEMORY[0x277D759A0] mainScreen];
                [currentDevice13 _referenceBounds];
              }

              LODWORD(v443) = currentDevice32 ^ 1;
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
              currentDevice9 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice9 userInterfaceIdiom])
              {
                v440 = 0x100000000;
                goto LABEL_855;
              }
            }

            HIDWORD(v440) = v248 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              currentDevice32 = __sb__runningInSpringBoard();
              if (currentDevice32)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen10 _referenceBounds];
              }

              LODWORD(v440) = currentDevice32 ^ 1;
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
            currentDevice32 = __sb__runningInSpringBoard();
            if (currentDevice32)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v437 = 0;
                goto LABEL_879;
              }
            }

            else
            {
              currentDevice12 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice12 userInterfaceIdiom])
              {
                v437 = 0x100000000;
                goto LABEL_879;
              }
            }

            HIDWORD(v437) = currentDevice32 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              currentDevice32 = __sb__runningInSpringBoard();
              if (currentDevice32)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                currentDevice17 = [MEMORY[0x277D759A0] mainScreen];
                [currentDevice17 _referenceBounds];
              }

              LODWORD(v437) = currentDevice32 ^ 1;
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
              currentDevice10 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice10 userInterfaceIdiom])
              {
                v434 = 0x100000000;
                goto LABEL_925;
              }
            }

            HIDWORD(v434) = v258 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              currentDevice32 = __sb__runningInSpringBoard();
              if (currentDevice32)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen12 _referenceBounds];
              }

              BSSizeRoundForScale();
              LODWORD(v434) = currentDevice32 ^ 1;
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
            currentDevice32 = __sb__runningInSpringBoard();
            if (currentDevice32)
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
              currentDevice14 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice14 userInterfaceIdiom])
              {
                HIDWORD(v405) = 0;
                LODWORD(v410) = 1;
                goto LABEL_935;
              }
            }

            LODWORD(v410) = currentDevice32 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              currentDevice32 = __sb__runningInSpringBoard();
              if (currentDevice32)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                currentDevice16 = [MEMORY[0x277D759A0] mainScreen];
                [currentDevice16 _referenceBounds];
              }

              HIDWORD(v405) = currentDevice32 ^ 1;
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
              mainScreen11 = [MEMORY[0x277D75418] currentDevice];
              if ([mainScreen11 userInterfaceIdiom])
              {
                LODWORD(v405) = 0;
                HIDWORD(v431) = 1;
                goto LABEL_1061;
              }
            }

            HIDWORD(v431) = v267 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              currentDevice32 = __sb__runningInSpringBoard();
              if (currentDevice32)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen16 _referenceBounds];
              }

              BSSizeRoundForScale();
              LODWORD(v405) = currentDevice32 ^ 1;
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
            currentDevice32 = __sb__runningInSpringBoard();
            if (currentDevice32)
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
              mainScreen7 = [MEMORY[0x277D75418] currentDevice];
              if ([mainScreen7 userInterfaceIdiom])
              {
                HIDWORD(v428) = 0;
                LODWORD(v431) = 1;
                goto LABEL_1071;
              }
            }

            LODWORD(v431) = currentDevice32 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              currentDevice32 = __sb__runningInSpringBoard();
              if (currentDevice32)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen14 _referenceBounds];
              }

              HIDWORD(v428) = currentDevice32 ^ 1;
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
              currentDevice19 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice19 userInterfaceIdiom])
              {
                HIDWORD(v422) = 0;
                LODWORD(v428) = 1;
                goto LABEL_1163;
              }
            }

            LODWORD(v428) = v275 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              currentDevice32 = __sb__runningInSpringBoard();
              if (currentDevice32)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                mainScreen18 = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen18 _referenceBounds];
              }

              BSSizeRoundForScale();
              HIDWORD(v422) = currentDevice32 ^ 1;
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
            currentDevice32 = __sb__runningInSpringBoard();
            if (currentDevice32)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v425 = 0;
                goto LABEL_1173;
              }
            }

            else
            {
              mainScreen9 = [MEMORY[0x277D75418] currentDevice];
              if ([mainScreen9 userInterfaceIdiom])
              {
                v425 = 0x100000000;
                goto LABEL_1173;
              }
            }

            HIDWORD(v425) = currentDevice32 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              currentDevice32 = __sb__runningInSpringBoard();
              if (currentDevice32)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                currentDevice22 = [MEMORY[0x277D759A0] mainScreen];
                [currentDevice22 _referenceBounds];
              }

              LODWORD(v425) = currentDevice32 ^ 1;
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
              currentDevice21 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice21 userInterfaceIdiom])
              {
                LODWORD(v422) = 0;
                HIDWORD(v410) = 1;
                goto LABEL_1251;
              }
            }

            HIDWORD(v410) = v286 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              currentDevice32 = __sb__runningInSpringBoard();
              if (currentDevice32)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                mainScreen20 = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen20 _referenceBounds];
              }

              LODWORD(v422) = currentDevice32 ^ 1;
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
            currentDevice32 = __sb__runningInSpringBoard();
            if (currentDevice32)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v419 = 0;
                goto LABEL_1261;
              }
            }

            else
            {
              mainScreen13 = [MEMORY[0x277D75418] currentDevice];
              if ([mainScreen13 userInterfaceIdiom])
              {
                v419 = 0x100000000;
                goto LABEL_1261;
              }
            }

            HIDWORD(v419) = currentDevice32 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              currentDevice32 = __sb__runningInSpringBoard();
              if (currentDevice32)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                currentDevice23 = [MEMORY[0x277D759A0] mainScreen];
                [currentDevice23 _referenceBounds];
              }

              LODWORD(v419) = currentDevice32 ^ 1;
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
              currentDevice18 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice18 userInterfaceIdiom])
              {
                v416 = 0x100000000;
                goto LABEL_1275;
              }
            }

            HIDWORD(v416) = v297 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              currentDevice32 = __sb__runningInSpringBoard();
              if (currentDevice32)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen17 _referenceBounds];
              }

              LODWORD(v416) = currentDevice32 ^ 1;
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
            currentDevice32 = __sb__runningInSpringBoard();
            if (currentDevice32)
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
              currentDevice20 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice20 userInterfaceIdiom])
              {
                HIDWORD(v402) = 0;
                HIDWORD(v413) = 1;
                goto LABEL_1285;
              }
            }

            HIDWORD(v413) = currentDevice32 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              currentDevice32 = __sb__runningInSpringBoard();
              if (currentDevice32)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                currentDevice25 = [MEMORY[0x277D759A0] mainScreen];
                [currentDevice25 _referenceBounds];
              }

              HIDWORD(v402) = currentDevice32 ^ 1;
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
              mainScreen15 = [MEMORY[0x277D75418] currentDevice];
              if ([mainScreen15 userInterfaceIdiom])
              {
                LODWORD(v413) = 0;
                LODWORD(v402) = 1;
                goto LABEL_1345;
              }
            }

            LODWORD(v402) = v303 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              currentDevice32 = __sb__runningInSpringBoard();
              if (currentDevice32)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen21 _referenceBounds];
              }

              LODWORD(v413) = currentDevice32 ^ 1;
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
            currentDevice32 = __sb__runningInSpringBoard();
            if (currentDevice32)
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
              currentDevice24 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice24 userInterfaceIdiom])
              {
                v92 = 0;
                HIDWORD(v399) = 1;
                goto LABEL_1355;
              }
            }

            HIDWORD(v399) = currentDevice32 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              currentDevice32 = __sb__runningInSpringBoard();
              if (currentDevice32)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen19 _referenceBounds];
              }

              v92 = currentDevice32 ^ 1;
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
                  mainScreen22 = [MEMORY[0x277D75418] currentDevice];
                  if ([mainScreen22 userInterfaceIdiom])
                  {
                    HIDWORD(v396) = 0;
                    LODWORD(v399) = 1;
                    goto LABEL_1474;
                  }
                }

                LODWORD(v399) = v310 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  currentDevice32 = __sb__runningInSpringBoard();
                  if (currentDevice32)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
                    [mainScreen25 _referenceBounds];
                  }

                  HIDWORD(v396) = currentDevice32 ^ 1;
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
                  mainScreen23 = [MEMORY[0x277D75418] currentDevice];
                  if ([mainScreen23 userInterfaceIdiom])
                  {
                    v393 = 0;
                    LODWORD(v396) = 1;
                    goto LABEL_1484;
                  }
                }

                LODWORD(v396) = v325 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  currentDevice32 = __sb__runningInSpringBoard();
                  if (currentDevice32)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    mainScreen32 = [MEMORY[0x277D759A0] mainScreen];
                    [mainScreen32 _referenceBounds];
                  }

                  v393 = currentDevice32 ^ 1;
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
                currentDevice32 = __sb__runningInSpringBoard();
                if (currentDevice32)
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
                  mainScreen24 = [MEMORY[0x277D75418] currentDevice];
                  if ([mainScreen24 userInterfaceIdiom])
                  {
                    v90 = 0;
                    v91 = 1;
                    goto LABEL_1494;
                  }
                }

                v91 = currentDevice32 ^ 1;
                currentDevice32 = __sb__runningInSpringBoard();
                if (currentDevice32)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  currentDevice26 = [MEMORY[0x277D759A0] mainScreen];
                  [currentDevice26 _referenceBounds];
                }

                v90 = currentDevice32 ^ 1;
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
                  currentDevice32 = [MEMORY[0x277D75418] currentDevice];
                  if ([currentDevice32 userInterfaceIdiom])
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
                  currentDevice27 = [MEMORY[0x277D759A0] mainScreen];
                  [currentDevice27 _referenceBounds];
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
        LODWORD(v455) = currentDevice32 ^ 1;
LABEL_76:
        v100 = [v80 configurationWithPointSize:7 weight:v93];
        if (v88)
        {
        }

        if (v89)
        {
        }

        configurationCopy = v484;
        mainScreen30 = 0x277CD9000uLL;
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
        whiteColor3 = [MEMORY[0x277D75348] whiteColor];
        v103 = [v101 _flatImageWithColor:whiteColor3];

        v79 = v103;
        goto LABEL_191;
      }
    }

    else
    {
      currentDevice3 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice3 userInterfaceIdiom] != 1)
      {
        HIDWORD(v455) = 0;
        LODWORD(v458) = 1;
        goto LABEL_599;
      }
    }

    LODWORD(v458) = v95 ^ 1;
    currentDevice32 = __sb__runningInSpringBoard();
    if (currentDevice32)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen5 _referenceBounds];
    }

    HIDWORD(v455) = currentDevice32 ^ 1;
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
  v216 = height;

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
  superview = [(CSBatteryChargingRingView *)self superview];
  [superview bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIView *)self->_chargingContainerView setFrame:v5, v7, v9, v11];
  ring = [(CSMagSafeAccessoryConfiguration *)self->_configuration ring];
  [ring ringDiameter];
  v14 = v13;
  ring2 = [(CSMagSafeAccessoryConfiguration *)self->_configuration ring];
  [ring2 ringDiameter];
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
  activeInterfaceOrientation = [*MEMORY[0x277D76620] activeInterfaceOrientation];
  v45 = activeInterfaceOrientation - 1;
  if ([(CSBatteryChargingRingView *)self _isShowingAuxiliary])
  {
    [(CSMagSafeSilhouetteConfiguration *)self->_silhouette size];
    v47 = v46;
    v49 = v48;
    [(CSMagSafeSilhouetteConfiguration *)self->_silhouette size];
    if (v45 > 1)
    {
      v57 = v50;
      if (activeInterfaceOrientation == 3)
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
    ring3 = [(CSMagSafeAccessoryConfiguration *)self->_configuration ring];
    [ring3 splashRingDiameter];
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
        if (activeInterfaceOrientation == 3)
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
  chargingSettings = [v79 chargingSettings];
  useWhimsicalDesign = [chargingSettings useWhimsicalDesign];

  if (useWhimsicalDesign)
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
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice userInterfaceIdiom] != 1)
      {
        LODWORD(v240) = 0;
        LODWORD(v241) = 1;
        goto LABEL_36;
      }
    }

    LODWORD(v241) = v84 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      mainScreen27 = __sb__runningInSpringBoard();
      if (mainScreen27)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen _referenceBounds];
      }

      LODWORD(v240) = mainScreen27 ^ 1;
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
      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice2 userInterfaceIdiom] != 1)
      {
        HIDWORD(v238[4]) = 0;
        LODWORD(v239) = 1;
        goto LABEL_47;
      }
    }

    LODWORD(v239) = v99 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      mainScreen27 = __sb__runningInSpringBoard();
      if (mainScreen27)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen2 _referenceBounds];
      }

      HIDWORD(v238[4]) = mainScreen27 ^ 1;
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
      currentDevice3 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice3 userInterfaceIdiom] != 1)
      {
        *(&v238[3] + 4) = 0x100000000;
        goto LABEL_56;
      }
    }

    LODWORD(v238[4]) = v104 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      mainScreen27 = __sb__runningInSpringBoard();
      if (mainScreen27)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen3 _referenceBounds];
      }

      HIDWORD(v238[3]) = mainScreen27 ^ 1;
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
      currentDevice4 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice4 userInterfaceIdiom] != 1)
      {
        HIDWORD(v238[2]) = 0;
        LODWORD(v238[3]) = 1;
        goto LABEL_65;
      }
    }

    LODWORD(v238[3]) = v105 ^ 1;
    mainScreen27 = __sb__runningInSpringBoard();
    if (mainScreen27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen4 _referenceBounds];
    }

    HIDWORD(v238[2]) = mainScreen27 ^ 1;
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
      currentDevice5 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice5 userInterfaceIdiom] != 1)
      {
        HIDWORD(v238[1]) = 0;
        LODWORD(v238[2]) = 1;
        goto LABEL_75;
      }
    }

    LODWORD(v238[2]) = v107 ^ 1;
    mainScreen27 = __sb__runningInSpringBoard();
    if (mainScreen27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen5 _referenceBounds];
    }

    HIDWORD(v238[1]) = mainScreen27 ^ 1;
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
      currentDevice6 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice6 userInterfaceIdiom] != 1)
      {
        HIDWORD(v238[0]) = 0;
        LODWORD(v238[1]) = 1;
        goto LABEL_215;
      }
    }

    LODWORD(v238[1]) = v117 ^ 1;
    mainScreen27 = __sb__runningInSpringBoard();
    if (mainScreen27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen6 _referenceBounds];
    }

    HIDWORD(v238[0]) = mainScreen27 ^ 1;
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
    mainScreen27 = __sb__runningInSpringBoard();
    if (mainScreen27)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_217;
      }
    }

    else
    {
      currentDevice7 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice7 userInterfaceIdiom] != 1)
      {
LABEL_217:
        LODWORD(v238[0]) = mainScreen27 ^ 1;
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
          currentDevice8 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice8 userInterfaceIdiom])
          {
            v237 = 0x100000000;
            goto LABEL_231;
          }
        }

        HIDWORD(v237) = v127 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen27 = __sb__runningInSpringBoard();
          if (mainScreen27)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen7 _referenceBounds];
          }

          BSSizeRoundForScale();
          LODWORD(v237) = mainScreen27 ^ 1;
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
        mainScreen27 = __sb__runningInSpringBoard();
        if (mainScreen27)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v236 = 0;
            goto LABEL_241;
          }
        }

        else
        {
          currentDevice9 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice9 userInterfaceIdiom])
          {
            v236 = 0x100000000;
            goto LABEL_241;
          }
        }

        HIDWORD(v236) = mainScreen27 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen27 = __sb__runningInSpringBoard();
          if (mainScreen27)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen8 _referenceBounds];
          }

          LODWORD(v236) = mainScreen27 ^ 1;
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
          currentDevice10 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice10 userInterfaceIdiom])
          {
            HIDWORD(v234) = 0;
            v235 = 1;
            goto LABEL_259;
          }
        }

        v235 = v129 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen27 = __sb__runningInSpringBoard();
          if (mainScreen27)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen9 _referenceBounds];
          }

          HIDWORD(v234) = mainScreen27 ^ 1;
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
        mainScreen27 = __sb__runningInSpringBoard();
        if (mainScreen27)
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
          currentDevice11 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice11 userInterfaceIdiom])
          {
            HIDWORD(v233) = 0;
            LODWORD(v234) = 1;
            goto LABEL_269;
          }
        }

        LODWORD(v234) = mainScreen27 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen27 = __sb__runningInSpringBoard();
          if (mainScreen27)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen10 _referenceBounds];
          }

          HIDWORD(v233) = mainScreen27 ^ 1;
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
          currentDevice12 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice12 userInterfaceIdiom])
          {
            HIDWORD(v232) = 0;
            LODWORD(v233) = 1;
            goto LABEL_283;
          }
        }

        LODWORD(v233) = v132 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen27 = __sb__runningInSpringBoard();
          if (mainScreen27)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen11 _referenceBounds];
          }

          BSSizeRoundForScale();
          HIDWORD(v232) = mainScreen27 ^ 1;
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
        mainScreen27 = __sb__runningInSpringBoard();
        if (mainScreen27)
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
          currentDevice13 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice13 userInterfaceIdiom])
          {
            HIDWORD(v231) = 0;
            LODWORD(v232) = 1;
            goto LABEL_293;
          }
        }

        LODWORD(v232) = mainScreen27 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen27 = __sb__runningInSpringBoard();
          if (mainScreen27)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen12 _referenceBounds];
          }

          HIDWORD(v231) = mainScreen27 ^ 1;
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
          currentDevice14 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice14 userInterfaceIdiom])
          {
            HIDWORD(v230) = 0;
            LODWORD(v231) = 1;
            goto LABEL_313;
          }
        }

        LODWORD(v231) = v136 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen27 = __sb__runningInSpringBoard();
          if (mainScreen27)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen13 _referenceBounds];
          }

          BSSizeRoundForScale();
          HIDWORD(v230) = mainScreen27 ^ 1;
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
        mainScreen27 = __sb__runningInSpringBoard();
        if (mainScreen27)
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
          currentDevice15 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice15 userInterfaceIdiom])
          {
            HIDWORD(v229) = 0;
            LODWORD(v230) = 1;
            goto LABEL_323;
          }
        }

        LODWORD(v230) = mainScreen27 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen27 = __sb__runningInSpringBoard();
          if (mainScreen27)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen14 _referenceBounds];
          }

          HIDWORD(v229) = mainScreen27 ^ 1;
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
          currentDevice16 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice16 userInterfaceIdiom])
          {
            HIDWORD(v228) = 0;
            LODWORD(v229) = 1;
            goto LABEL_343;
          }
        }

        LODWORD(v229) = v139 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen27 = __sb__runningInSpringBoard();
          if (mainScreen27)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen15 _referenceBounds];
          }

          BSSizeRoundForScale();
          HIDWORD(v228) = mainScreen27 ^ 1;
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
        mainScreen27 = __sb__runningInSpringBoard();
        if (mainScreen27)
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
          currentDevice17 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice17 userInterfaceIdiom])
          {
            HIDWORD(v227) = 0;
            LODWORD(v228) = 1;
            goto LABEL_353;
          }
        }

        LODWORD(v228) = mainScreen27 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen27 = __sb__runningInSpringBoard();
          if (mainScreen27)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen16 _referenceBounds];
          }

          HIDWORD(v227) = mainScreen27 ^ 1;
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
          currentDevice18 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice18 userInterfaceIdiom])
          {
            HIDWORD(v226) = 0;
            LODWORD(v227) = 1;
            goto LABEL_371;
          }
        }

        LODWORD(v227) = v141 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen27 = __sb__runningInSpringBoard();
          if (mainScreen27)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen17 _referenceBounds];
          }

          BSSizeRoundForScale();
          HIDWORD(v226) = mainScreen27 ^ 1;
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
        mainScreen27 = __sb__runningInSpringBoard();
        if (mainScreen27)
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
          currentDevice19 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice19 userInterfaceIdiom])
          {
            HIDWORD(v225) = 0;
            LODWORD(v226) = 1;
            goto LABEL_381;
          }
        }

        LODWORD(v226) = mainScreen27 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen27 = __sb__runningInSpringBoard();
          if (mainScreen27)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen18 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen18 _referenceBounds];
          }

          HIDWORD(v225) = mainScreen27 ^ 1;
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
          currentDevice20 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice20 userInterfaceIdiom])
          {
            HIDWORD(v224) = 0;
            LODWORD(v225) = 1;
            goto LABEL_399;
          }
        }

        LODWORD(v225) = v144 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen27 = __sb__runningInSpringBoard();
          if (mainScreen27)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen19 _referenceBounds];
          }

          HIDWORD(v224) = mainScreen27 ^ 1;
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
        mainScreen27 = __sb__runningInSpringBoard();
        if (mainScreen27)
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
          currentDevice21 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice21 userInterfaceIdiom])
          {
            HIDWORD(v223) = 0;
            LODWORD(v224) = 1;
            goto LABEL_409;
          }
        }

        LODWORD(v224) = mainScreen27 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen27 = __sb__runningInSpringBoard();
          if (mainScreen27)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen20 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen20 _referenceBounds];
          }

          HIDWORD(v223) = mainScreen27 ^ 1;
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
          currentDevice22 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice22 userInterfaceIdiom])
          {
            HIDWORD(v222) = 0;
            LODWORD(v223) = 1;
            goto LABEL_423;
          }
        }

        LODWORD(v223) = v147 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen27 = __sb__runningInSpringBoard();
          if (mainScreen27)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen21 _referenceBounds];
          }

          HIDWORD(v222) = mainScreen27 ^ 1;
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
        mainScreen27 = __sb__runningInSpringBoard();
        if (mainScreen27)
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
          currentDevice23 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice23 userInterfaceIdiom])
          {
            HIDWORD(v221) = 0;
            LODWORD(v222) = 1;
            goto LABEL_433;
          }
        }

        LODWORD(v222) = mainScreen27 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen27 = __sb__runningInSpringBoard();
          if (mainScreen27)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen22 _referenceBounds];
          }

          HIDWORD(v221) = mainScreen27 ^ 1;
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
          currentDevice24 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice24 userInterfaceIdiom])
          {
            HIDWORD(v220) = 0;
            LODWORD(v221) = 1;
            goto LABEL_453;
          }
        }

        LODWORD(v221) = v151 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen27 = __sb__runningInSpringBoard();
          if (mainScreen27)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen23 _referenceBounds];
          }

          HIDWORD(v220) = mainScreen27 ^ 1;
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
        mainScreen27 = __sb__runningInSpringBoard();
        if (mainScreen27)
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
          currentDevice25 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice25 userInterfaceIdiom])
          {
            HIDWORD(v219) = 0;
            LODWORD(v220) = 1;
            goto LABEL_463;
          }
        }

        LODWORD(v220) = mainScreen27 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen27 = __sb__runningInSpringBoard();
          if (mainScreen27)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen24 _referenceBounds];
          }

          HIDWORD(v219) = mainScreen27 ^ 1;
          BSSizeRoundForScale();
          if (v153 >= *(MEMORY[0x277D66E30] + 104))
          {
LABEL_470:
            mainScreen27 = &unk_21EC95000;
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

            mainScreen27 = __sb__runningInSpringBoard();
            if (mainScreen27)
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
              currentDevice26 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice26 userInterfaceIdiom])
              {
                v108 = 0;
                LODWORD(v219) = 1;
                goto LABEL_488;
              }
            }

            LODWORD(v219) = mainScreen27 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v154 = __sb__runningInSpringBoard();
              if (v154)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen25 _referenceBounds];
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
              currentDevice27 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice27 userInterfaceIdiom])
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
                mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen26 _referenceBounds];
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
                mainScreen27 = __sb__runningInSpringBoard();
                if (mainScreen27)
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
                  currentDevice28 = [MEMORY[0x277D75418] currentDevice];
                  if ([currentDevice28 userInterfaceIdiom])
                  {
                    v114 = 0;
                    v115 = 0.0;
                    v113 = 1;
                    goto LABEL_92;
                  }
                }

                v113 = mainScreen27 ^ 1;
                v162 = __sb__runningInSpringBoard();
                if (v162)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen27 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen27 _referenceBounds];
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

                    layer = [(UIView *)self->_auxiliaryBatteryPillClippingView layer];
                    [layer setPosition:{MidX, MaxY - v115 + -43.5}];

                    [(UIView *)self->_auxiliaryBatteryPillClippingView bounds];
                    UIRectGetCenter();
                    v86 = v123;
                    v103 = v124;
                    layer2 = [(UIView *)self->_auxiliaryBatteryPillTrackView layer];
                    [layer2 setPosition:{v86, v103}];

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
              currentDevice29 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice29 userInterfaceIdiom])
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
              mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
              [mainScreen28 _referenceBounds];
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
    LODWORD(v238[0]) = mainScreen27 ^ 1;
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
  auxiliaryRing = [(CSMagSafeAccessoryConfiguration *)self->_configuration auxiliaryRing];
  [auxiliaryRing ringDiameter];
  v93 = v90 + v92 * 0.5;

  [(CALayer *)self->_silhouetteLayer frame];
  if (v45 > 1)
  {
    if (activeInterfaceOrientation == 3)
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
  auxiliaryRing2 = [(CSMagSafeAccessoryConfiguration *)self->_configuration auxiliaryRing];
  [auxiliaryRing2 lineWidth];
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
    ring = [(CSMagSafeAccessoryConfiguration *)self->_configuration ring];
    [ring ringDiameter];

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
  chargingSettings = [v3 chargingSettings];
  useWhimsicalDesign = [chargingSettings useWhimsicalDesign];

  if (useWhimsicalDesign)
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
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice userInterfaceIdiom] != 1)
      {
        v160 = 0x100000000;
        goto LABEL_15;
      }
    }

    HIDWORD(v160) = v6 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      currentDevice28 = __sb__runningInSpringBoard();
      if (currentDevice28)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen _referenceBounds];
      }

      LODWORD(v160) = currentDevice28 ^ 1;
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
      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice2 userInterfaceIdiom] != 1)
      {
        v159[2] = 0x100000000;
        goto LABEL_24;
      }
    }

    HIDWORD(v159[2]) = v14 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      currentDevice28 = __sb__runningInSpringBoard();
      if (currentDevice28)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen2 _referenceBounds];
      }

      LODWORD(v159[2]) = currentDevice28 ^ 1;
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
      currentDevice3 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice3 userInterfaceIdiom] != 1)
      {
        v159[1] = 0x100000000;
        goto LABEL_33;
      }
    }

    HIDWORD(v159[1]) = v15 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      currentDevice28 = __sb__runningInSpringBoard();
      if (currentDevice28)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen3 _referenceBounds];
      }

      LODWORD(v159[1]) = currentDevice28 ^ 1;
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
      currentDevice4 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice4 userInterfaceIdiom] != 1)
      {
        v159[0] = 0x100000000;
        goto LABEL_42;
      }
    }

    HIDWORD(v159[0]) = v16 ^ 1;
    currentDevice28 = __sb__runningInSpringBoard();
    if (currentDevice28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen4 _referenceBounds];
    }

    LODWORD(v159[0]) = currentDevice28 ^ 1;
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
      currentDevice5 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice5 userInterfaceIdiom] != 1)
      {
        v158 = 0x100000000;
        goto LABEL_52;
      }
    }

    HIDWORD(v158) = v18 ^ 1;
    currentDevice28 = __sb__runningInSpringBoard();
    if (currentDevice28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen5 _referenceBounds];
    }

    LODWORD(v158) = currentDevice28 ^ 1;
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
      currentDevice6 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice6 userInterfaceIdiom] != 1)
      {
        v157 = 0x100000000;
        goto LABEL_72;
      }
    }

    HIDWORD(v157) = v26 ^ 1;
    currentDevice28 = __sb__runningInSpringBoard();
    if (currentDevice28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen6 _referenceBounds];
    }

    LODWORD(v157) = currentDevice28 ^ 1;
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
    currentDevice28 = __sb__runningInSpringBoard();
    if (currentDevice28)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_74;
      }
    }

    else
    {
      currentDevice7 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice7 userInterfaceIdiom] != 1)
      {
LABEL_74:
        v156 = currentDevice28 ^ 1;
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
          currentDevice8 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice8 userInterfaceIdiom])
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
            mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen7 _referenceBounds];
          }

          currentDevice28 = v44 ^ 1u;
          BSSizeRoundForScale();
          LODWORD(v155) = currentDevice28;
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
        currentDevice28 = __sb__runningInSpringBoard();
        if (currentDevice28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v154 + 1) = 0;
            goto LABEL_214;
          }
        }

        else
        {
          currentDevice9 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice9 userInterfaceIdiom])
          {
            *(&v154 + 1) = 0x100000000;
            goto LABEL_214;
          }
        }

        HIDWORD(v154) = currentDevice28 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen8 _referenceBounds];
          }

          DWORD2(v154) = currentDevice28 ^ 1;
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
          currentDevice10 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice10 userInterfaceIdiom])
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
            mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen9 _referenceBounds];
          }

          currentDevice28 = v48 ^ 1u;
          BSSizeRoundForScale();
          LODWORD(v154) = currentDevice28;
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
        currentDevice28 = __sb__runningInSpringBoard();
        if (currentDevice28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v153 = 0;
            goto LABEL_242;
          }
        }

        else
        {
          currentDevice11 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice11 userInterfaceIdiom])
          {
            v153 = 0x100000000;
            goto LABEL_242;
          }
        }

        HIDWORD(v153) = currentDevice28 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen10 _referenceBounds];
          }

          LODWORD(v153) = currentDevice28 ^ 1;
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
          currentDevice12 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice12 userInterfaceIdiom])
          {
            v152 = 0x100000000;
            goto LABEL_256;
          }
        }

        HIDWORD(v152) = v50 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen11 _referenceBounds];
          }

          LODWORD(v152) = currentDevice28 ^ 1;
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
        currentDevice28 = __sb__runningInSpringBoard();
        if (currentDevice28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v151 = 0;
            goto LABEL_266;
          }
        }

        else
        {
          currentDevice13 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice13 userInterfaceIdiom])
          {
            v151 = 0x100000000;
            goto LABEL_266;
          }
        }

        HIDWORD(v151) = currentDevice28 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen12 _referenceBounds];
          }

          LODWORD(v151) = currentDevice28 ^ 1;
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
          currentDevice14 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice14 userInterfaceIdiom])
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
            mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen13 _referenceBounds];
          }

          currentDevice28 = v55 ^ 1u;
          BSSizeRoundForScale();
          LODWORD(v150) = currentDevice28;
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
        currentDevice28 = __sb__runningInSpringBoard();
        if (currentDevice28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v141 = 0;
            goto LABEL_296;
          }
        }

        else
        {
          currentDevice15 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice15 userInterfaceIdiom])
          {
            v141 = 0x100000000;
            goto LABEL_296;
          }
        }

        HIDWORD(v141) = currentDevice28 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen14 _referenceBounds];
          }

          LODWORD(v141) = currentDevice28 ^ 1;
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
          currentDevice16 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice16 userInterfaceIdiom])
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
            mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen15 _referenceBounds];
          }

          currentDevice28 = v59 ^ 1u;
          BSSizeRoundForScale();
          v140 = currentDevice28;
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
        currentDevice28 = __sb__runningInSpringBoard();
        if (currentDevice28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v148 = 0;
            goto LABEL_326;
          }
        }

        else
        {
          currentDevice17 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice17 userInterfaceIdiom])
          {
            v148 = 0x100000000;
            goto LABEL_326;
          }
        }

        HIDWORD(v148) = currentDevice28 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen16 _referenceBounds];
          }

          LODWORD(v148) = currentDevice28 ^ 1;
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
          currentDevice18 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice18 userInterfaceIdiom])
          {
            v147 = 0x100000000;
            goto LABEL_344;
          }
        }

        HIDWORD(v147) = v61 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen17 _referenceBounds];
          }

          LODWORD(v147) = currentDevice28 ^ 1;
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
        currentDevice28 = __sb__runningInSpringBoard();
        if (currentDevice28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v146 = 0;
            goto LABEL_354;
          }
        }

        else
        {
          currentDevice19 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice19 userInterfaceIdiom])
          {
            v146 = 0x100000000;
            goto LABEL_354;
          }
        }

        HIDWORD(v146) = currentDevice28 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen18 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen18 _referenceBounds];
          }

          LODWORD(v146) = currentDevice28 ^ 1;
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
          currentDevice20 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice20 userInterfaceIdiom])
          {
            v145 = 0x100000000;
            goto LABEL_372;
          }
        }

        HIDWORD(v145) = v64 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen19 _referenceBounds];
          }

          LODWORD(v145) = currentDevice28 ^ 1;
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
        currentDevice28 = __sb__runningInSpringBoard();
        if (currentDevice28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v144 = 0;
            goto LABEL_382;
          }
        }

        else
        {
          currentDevice21 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice21 userInterfaceIdiom])
          {
            v144 = 0x100000000;
            goto LABEL_382;
          }
        }

        HIDWORD(v144) = currentDevice28 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen20 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen20 _referenceBounds];
          }

          LODWORD(v144) = currentDevice28 ^ 1;
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
          currentDevice22 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice22 userInterfaceIdiom])
          {
            v143 = 0x100000000;
            goto LABEL_396;
          }
        }

        HIDWORD(v143) = v67 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen21 _referenceBounds];
          }

          LODWORD(v143) = currentDevice28 ^ 1;
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
        currentDevice28 = __sb__runningInSpringBoard();
        if (currentDevice28)
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
          currentDevice23 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice23 userInterfaceIdiom])
          {
            v139 = 0;
            HIDWORD(v142) = 1;
            goto LABEL_406;
          }
        }

        HIDWORD(v142) = currentDevice28 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen22 _referenceBounds];
          }

          v139 = currentDevice28 ^ 1;
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
          currentDevice24 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice24 userInterfaceIdiom])
          {
            LODWORD(v142) = 0;
            HIDWORD(v138) = 1;
            goto LABEL_426;
          }
        }

        HIDWORD(v138) = v71 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen23 _referenceBounds];
          }

          LODWORD(v142) = currentDevice28 ^ 1;
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
        currentDevice28 = __sb__runningInSpringBoard();
        if (currentDevice28)
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
          currentDevice25 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice25 userInterfaceIdiom])
          {
            LODWORD(v137) = 0;
            LODWORD(v138) = 1;
            goto LABEL_436;
          }
        }

        LODWORD(v138) = currentDevice28 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen24 _referenceBounds];
          }

          LODWORD(v137) = currentDevice28 ^ 1;
          BSSizeRoundForScale();
          if (v73 >= *(MEMORY[0x277D66E30] + 104))
          {
LABEL_443:
            currentDevice28 = &unk_21EC95000;
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
              currentDevice26 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice26 userInterfaceIdiom])
              {
                v136 = 0;
                HIDWORD(v137) = 1;
                goto LABEL_461;
              }
            }

            HIDWORD(v137) = v74 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              currentDevice28 = __sb__runningInSpringBoard();
              if (currentDevice28)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen25 _referenceBounds];
              }

              v136 = currentDevice28 ^ 1;
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
              currentDevice27 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice27 userInterfaceIdiom])
              {
                v20 = 0;
                v19 = 1;
                goto LABEL_471;
              }
            }

            v19 = v75 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              currentDevice28 = __sb__runningInSpringBoard();
              if (currentDevice28)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen26 _referenceBounds];
              }

              v20 = currentDevice28 ^ 1;
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
            currentDevice28 = __sb__runningInSpringBoard();
            if (currentDevice28)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v21 = 0;
                v22 = 0;
LABEL_481:
                mainScreen27 = __sb__runningInSpringBoard();
                if (mainScreen27)
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
                  currentDevice28 = [MEMORY[0x277D75418] currentDevice];
                  if ([currentDevice28 userInterfaceIdiom])
                  {
                    v24 = 0.0;
                    v23 = 1;
                    goto LABEL_497;
                  }
                }

                v23 = mainScreen27 ^ 1;
                v80 = __sb__runningInSpringBoard();
                if (v80)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen27 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen27 _referenceBounds];
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
                        layer = [(UIView *)self->_auxiliaryBatteryPillClippingView layer];
                        [layer frame];
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
              currentDevice29 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice29 userInterfaceIdiom])
              {
                v22 = 0;
                v21 = 1;
                goto LABEL_481;
              }
            }

            v21 = currentDevice28 ^ 1;
            currentDevice28 = __sb__runningInSpringBoard();
            if (currentDevice28)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
              [mainScreen28 _referenceBounds];
            }

            v22 = currentDevice28 ^ 1;
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
    v156 = currentDevice28 ^ 1;
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

- (void)updateForInternalBatteryDevice:(id)device
{
  objc_storeStrong(&self->_internalBattery, device);
  deviceCopy = device;
  v5 = [(CSBatteryChargingRingView *)self _powerStatusForBattery:deviceCopy];
  internalStatus = self->_internalStatus;
  self->_internalStatus = v5;

  [(CSBatteryChargingRingView *)self updateForInternalPowerStatus:self->_internalStatus];
}

- (void)updateForInternalPowerStatus:(id)status
{
  statusCopy = status;
  v14 = CSRingColorForPowerStatus(statusCopy);
  -[CALayer setHidden:](self->_chargingBoltGlyph, "setHidden:", [statusCopy chargeState] == 0);
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
  [statusCopy powerPercent];
  v13 = v12;

  [(CSRingLayer *)v11 setStrokeEnd:v13 / 100.0];
}

- (double)batteryChargingLevel
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  [currentDevice batteryLevel];
  v4 = v3;

  return fmax(v4, 0.0);
}

- (id)_powerStatusForBattery:(id)battery
{
  batteryCopy = battery;
  v5 = objc_alloc_init(CSMagSafePowerStatus);
  -[CSMagSafePowerStatus setPowerPercent:](v5, "setPowerPercent:", [batteryCopy percentCharge]);
  if ([batteryCopy isLowPowerModeActive])
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  [batteryCopy percentCharge];
  [MEMORY[0x277D75A78] lowBatteryLevel];
  if (BSFloatLessThanOrEqualToFloat())
  {
    v6 |= 2uLL;
  }

  -[CSMagSafePowerStatus setPowerStatus:](v5, "setPowerStatus:", v6 | [batteryCopy isCharging]);
  if ([batteryCopy isCharging])
  {
    if ([batteryCopy powerSourceState] == 2)
    {
      v7 = 4;
    }

    else
    {
      v7 = 3;
    }
  }

  else if ([batteryCopy isInternal] & 1) != 0 || (objc_msgSend(batteryCopy, "isCharging"))
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

    productIdentifier = [batteryCopy productIdentifier];
    if (productIdentifier == *MEMORY[0x277CF0DB8] || productIdentifier == *MEMORY[0x277CF0DC0])
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
    productIdentifier = [(BCBatteryDevice *)externalBattery productIdentifier];
    if (productIdentifier == *MEMORY[0x277CF0DB8])
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

- (void)setPrimaryBatteryText:(id)text forBattery:(id)battery
{
  v24[1] = *MEMORY[0x277D85DE8];
  batteryCopy = battery;
  objc_storeStrong(&self->_internalBattery, battery);
  textCopy = text;
  chargePercentLabel = self->_chargePercentLabel;
  _chargePercentFont = [(CSBatteryChargingRingView *)self _chargePercentFont];
  v11 = [(CSBatteryChargingRingView *)self _updateChargeString:textCopy oldLabel:chargePercentLabel font:_chargePercentFont];

  v12 = self->_chargePercentLabel;
  self->_chargePercentLabel = v11;

  v13 = [(CSBatteryChargingRingView *)self _powerStatusForBattery:batteryCopy];
  internalStatus = self->_internalStatus;
  self->_internalStatus = v13;

  if (!chargePercentLabel)
  {
    if (![(CSMagSafeAccessoryConfiguration *)self->_configuration staticViewNeeded])
    {
      layer = [(SBUILegibilityLabel *)self->_chargePercentLabel layer];
      [layer setOpacity:0.0];
    }

    layer2 = [(SBUILegibilityLabel *)self->_chargePercentLabel layer];
    staticViewNeeded = [(CSMagSafeAccessoryConfiguration *)self->_configuration staticViewNeeded];
    v18 = 0.0;
    if (staticViewNeeded)
    {
      *&v18 = 1.0;
    }

    [layer2 setOpacity:v18];

    layer3 = [(SBUILegibilityLabel *)self->_chargePercentLabel layer];
    v20 = [MEMORY[0x277CD9EA0] brightnessFilterWithAmount:0.2];
    v24[0] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    [layer3 setFilters:v21];

    layer4 = [(SBUILegibilityLabel *)self->_chargePercentLabel layer];
    v23 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5C0]];
    [layer4 setCompositingFilter:v23];
  }

  [(CSBatteryChargingRingView *)self updateForInternalPowerStatus:self->_internalStatus];
  [(CSBatteryChargingRingView *)self setNeedsLayout];
}

- (void)setSecondaryBatteryText:(id)text forBattery:(id)battery
{
  textCopy = text;
  batteryCopy = battery;
  objc_storeStrong(&self->_externalBattery, battery);
  v7 = +[CSLockScreenDomain rootSettings];
  chargingSettings = [v7 chargingSettings];
  useWhimsicalDesign = [chargingSettings useWhimsicalDesign];

  if (useWhimsicalDesign)
  {
    auxiliaryBatteryLabel = self->_auxiliaryBatteryLabel;
    _auxiliaryChargePercentFont = [(CSBatteryChargingRingView *)self _auxiliaryChargePercentFont];
    v12 = [(CSBatteryChargingRingView *)self _updateChargeString:textCopy oldLabel:auxiliaryBatteryLabel font:_auxiliaryChargePercentFont];
    v13 = self->_auxiliaryBatteryLabel;
    self->_auxiliaryBatteryLabel = v12;

    layer = [(SBUILegibilityLabel *)self->_auxiliaryBatteryLabel layer];
    [layer setOpacity:0.0];
  }

  v15 = [(CSBatteryChargingRingView *)self _powerStatusForBattery:batteryCopy];
  externalStatus = self->_externalStatus;
  self->_externalStatus = v15;

  [(CSBatteryChargingRingView *)self _handleExternalStatusUpdate];
}

- (void)_handleExternalStatusUpdate
{
  v3 = +[CSLockScreenDomain rootSettings];
  chargingSettings = [v3 chargingSettings];
  useWhimsicalDesign = [chargingSettings useWhimsicalDesign];

  v6 = CSRingColorForPowerStatus(self->_externalStatus);
  auxiliaryBatteryLevelRing = self->_auxiliaryBatteryLevelRing;
  v30 = v6;
  -[CSRingLayer setContentsMultiplyColor:](auxiliaryBatteryLevelRing, "setContentsMultiplyColor:", [v30 CGColor]);
  auxiliaryGlyphLayer = self->_auxiliaryGlyphLayer;
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  -[CALayer setContentsMultiplyColor:](auxiliaryGlyphLayer, "setContentsMultiplyColor:", [whiteColor CGColor]);

  [(CSMagSafePowerStatus *)self->_externalStatus powerPercent];
  v11 = v10 / 100.0;
  if (useWhimsicalDesign)
  {
    layer = [(UIView *)self->_auxiliaryBatteryPillLevelView layer];
    [layer setBackgroundColor:{objc_msgSend(v30, "CGColor")}];

    [(CSBatteryChargingRingView *)self _pillFrameForBatteryCharge:v11];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    layer2 = [(UIView *)self->_auxiliaryBatteryPillLevelView layer];
    [layer2 setFrame:{v14, v16, v18, v20}];
  }

  else
  {
    -[CSRingLayer setStrokeColor:](self->_auxiliaryBatteryLevelRing, "setStrokeColor:", [v30 CGColor]);
    [(CSRingLayer *)self->_auxiliaryBatteryLevelRing setStrokeEnd:v11];
  }

  auxiliaryChargingBoltGlyph = self->_auxiliaryChargingBoltGlyph;
  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  -[CALayer setContentsMultiplyColor:](auxiliaryChargingBoltGlyph, "setContentsMultiplyColor:", [whiteColor2 CGColor]);

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

  superlayer = [(CALayer *)self->_auxiliaryChargingBoltGlyph superlayer];

  if (superlayer)
  {
    goto LABEL_13;
  }

  v25 = +[CSLockScreenDomain rootSettings];
  chargingSettings2 = [v25 chargingSettings];

  if ([chargingSettings2 useWhimsicalDesign])
  {
    auxiliaryBatteryContainerLayer = self->_auxiliaryBatteryContainerLayer;
    auxiliaryCaptureBackdrop = self->_auxiliaryCaptureBackdrop;
    layer3 = [(UIView *)self->_auxiliaryBatteryPillTrackView layer];
    [(CALayer *)auxiliaryBatteryContainerLayer insertSublayer:auxiliaryCaptureBackdrop above:layer3];

LABEL_11:
    [(CALayer *)self->_auxiliaryBatteryContainerLayer addSublayer:self->_auxiliaryChargingBoltGlyphMask];
    goto LABEL_12;
  }

  if ([chargingSettings2 shouldShowMaskForAuxiliaryBattery])
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
  selfCopy = self;
  currentDevice10 = 704;
  externalBattery = self->_externalBattery;
  if (externalBattery)
  {
    productIdentifier = [(BCBatteryDevice *)externalBattery productIdentifier];
    if (productIdentifier == *MEMORY[0x277CF0DC0])
    {
      if (selfCopy->_externalBattery)
      {
        [(CSBatteryChargingRingView *)selfCopy _silhouettePhysicalSizeInMillimeters];
      }

      else
      {
        [(CSBatteryChargingRingView *)selfCopy _defaultSilhouettePhysicalSize];
      }

      v19 = v8;
      v20 = v9;
      [objc_opt_class() _pointsPerMillimeter];
      v22 = v21;
      traitCollection = [(CSBatteryChargingRingView *)selfCopy traitCollection];
      [traitCollection displayScale];
      v25 = v24;

      v26 = round(v19 * v22 * v25) / v25;
      v27 = round(v20 * v22 * v25) / v25;
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen bounds];
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

  v348 = selfCopy;
  v10 = __sb__runningInSpringBoard();
  currentDevice58 = 0x277D75000;
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
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
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 _referenceBounds];
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
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice2 userInterfaceIdiom] != 1)
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
      mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen3 _referenceBounds];
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
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice3 userInterfaceIdiom] != 1)
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
      mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen4 _referenceBounds];
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
    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice4 userInterfaceIdiom] != 1)
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
    mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen5 _referenceBounds];
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
    currentDevice5 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice5 userInterfaceIdiom] != 1)
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
    mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen6 _referenceBounds];
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
    currentDevice6 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice6 userInterfaceIdiom] != 1)
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
    mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen7 _referenceBounds];
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

  currentDevice7 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice7 userInterfaceIdiom] == 1)
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
    currentDevice8 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice8 userInterfaceIdiom])
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
      mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen8 _referenceBounds];
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
    currentDevice9 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice9 userInterfaceIdiom])
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
      mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen9 _referenceBounds];
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
    currentDevice10 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice10 userInterfaceIdiom])
    {
      v254 = currentDevice10;
      HIDWORD(v341[2]) = 0;
      LODWORD(v341[3]) = 1;
      goto LABEL_496;
    }
  }

  LODWORD(v341[3]) = v85 ^ 1;
  v254 = currentDevice10;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v91 = __sb__runningInSpringBoard();
    if (v91)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen10 _referenceBounds];
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
  currentDevice18 = &off_21EC94000;
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
    currentDevice11 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice11 userInterfaceIdiom])
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
      mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen11 _referenceBounds];
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
    currentDevice12 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice12 userInterfaceIdiom])
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
      mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen12 _referenceBounds];
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
    currentDevice13 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice13 userInterfaceIdiom])
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
      mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen13 _referenceBounds];
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
    currentDevice14 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice14 userInterfaceIdiom])
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
      mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen14 _referenceBounds];
    }

    currentDevice18 = v110 ^ 1u;
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
    currentDevice15 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice15 userInterfaceIdiom])
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
      mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen15 _referenceBounds];
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
    currentDevice16 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice16 userInterfaceIdiom])
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
      mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen16 _referenceBounds];
    }

    currentDevice18 = v122 ^ 1u;
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
    currentDevice17 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice17 userInterfaceIdiom])
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
      mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen17 _referenceBounds];
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
    currentDevice18 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice18 userInterfaceIdiom])
    {
      v226 = currentDevice18;
      v337 = 1;
      goto LABEL_711;
    }
  }

  LODWORD(v337) = v126 ^ 1;
  v226 = currentDevice18;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v131 = __sb__runningInSpringBoard();
    if (v131)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen18 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen18 _referenceBounds];
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
    currentDevice19 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice19 userInterfaceIdiom])
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
      mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen19 _referenceBounds];
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
    currentDevice20 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice20 userInterfaceIdiom])
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
      mainScreen20 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen20 _referenceBounds];
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
    currentDevice21 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice21 userInterfaceIdiom])
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
      mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen21 _referenceBounds];
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
    currentDevice22 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice22 userInterfaceIdiom])
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
      mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen22 _referenceBounds];
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
    currentDevice23 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice23 userInterfaceIdiom])
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
      mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen23 _referenceBounds];
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
    currentDevice24 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice24 userInterfaceIdiom])
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
      mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen24 _referenceBounds];
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
    currentDevice25 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice25 userInterfaceIdiom])
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
    mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen25 _referenceBounds];
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
    currentDevice26 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice26 userInterfaceIdiom])
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
      mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen26 _referenceBounds];
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
    currentDevice27 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice27 userInterfaceIdiom])
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
      mainScreen27 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen27 _referenceBounds];
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
    currentDevice28 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice28 userInterfaceIdiom])
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
      mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen28 _referenceBounds];
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
    currentDevice29 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice29 userInterfaceIdiom])
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
    mainScreen29 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen29 _referenceBounds];
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
    currentDevice30 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice30 userInterfaceIdiom] != 1)
    {
      v46 = 0;
      v45 = 1;
      goto LABEL_86;
    }
  }

  v45 = v44 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen55 = __sb__runningInSpringBoard();
    if (mainScreen55)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen30 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen30 _referenceBounds];
    }

    v46 = mainScreen55 ^ 1;
    BSSizeRoundForScale();
    if (v64 == *(MEMORY[0x277D66E30] + 288) && v63 == *(MEMORY[0x277D66E30] + 296))
    {
      v329 = mainScreen55 ^ 1;
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
      mainScreen56 = 0;
      currentDevice57 = 0;
      goto LABEL_95;
    }
  }

  else
  {
    currentDevice31 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice31 userInterfaceIdiom] != 1)
    {
      currentDevice57 = 0;
      mainScreen56 = 1;
      goto LABEL_95;
    }
  }

  mainScreen56 = v48 ^ 1u;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen55 = __sb__runningInSpringBoard();
    if (mainScreen55)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen31 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen31 _referenceBounds];
    }

    currentDevice57 = mainScreen55 ^ 1;
    BSSizeRoundForScale();
    if (v65 >= *(MEMORY[0x277D66E30] + 440))
    {
      v328 = __PAIR64__(mainScreen56, currentDevice57);
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
    currentDevice57 = 0;
  }

LABEL_95:
  v49 = __sb__runningInSpringBoard();
  v328 = __PAIR64__(mainScreen56, currentDevice57);
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
    currentDevice32 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice32 userInterfaceIdiom] != 1)
    {
      v51 = 0;
      v50 = 1;
      goto LABEL_104;
    }
  }

  v50 = v49 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen55 = __sb__runningInSpringBoard();
    if (mainScreen55)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen32 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen32 _referenceBounds];
    }

    v51 = mainScreen55 ^ 1;
    BSSizeRoundForScale();
    if (v66 >= *(MEMORY[0x277D66E30] + 376))
    {
      LODWORD(v327) = mainScreen55 ^ 1;
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
      mainScreen38 = 0;
      goto LABEL_113;
    }
  }

  else
  {
    currentDevice33 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice33 userInterfaceIdiom] != 1)
    {
      mainScreen38 = 0;
      v53 = 1;
      goto LABEL_113;
    }
  }

  v53 = v52 ^ 1;
  mainScreen55 = __sb__runningInSpringBoard();
  if (mainScreen55)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen33 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen33 _referenceBounds];
  }

  mainScreen38 = mainScreen55 ^ 1;
  BSSizeRoundForScale();
  if (v55 >= *(MEMORY[0x277D66E30] + 280))
  {
    v326 = __PAIR64__(v53, mainScreen38);
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
  v326 = __PAIR64__(v53, mainScreen38);
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
    currentDevice34 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice34 userInterfaceIdiom] != 1)
    {
      v325 = 0x100000000;
      goto LABEL_123;
    }
  }

  HIDWORD(v325) = v56 ^ 1;
  mainScreen55 = __sb__runningInSpringBoard();
  if (mainScreen55)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen34 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen34 _referenceBounds];
  }

  LODWORD(v325) = mainScreen55 ^ 1;
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
    currentDevice35 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice35 userInterfaceIdiom] != 1)
    {
      v324 = 0x100000000;
      goto LABEL_375;
    }

LABEL_127:
    HIDWORD(v324) = v62 ^ 1;
    mainScreen55 = __sb__runningInSpringBoard();
    if (mainScreen55)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen35 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen35 _referenceBounds];
    }

    LODWORD(v324) = mainScreen55 ^ 1;
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
  mainScreen55 = __sb__runningInSpringBoard();
  if (mainScreen55)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_377;
    }
  }

  else
  {
    currentDevice36 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice36 userInterfaceIdiom] != 1)
    {
LABEL_377:
      HIDWORD(v323) = mainScreen55 ^ 1;
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
        currentDevice37 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice37 userInterfaceIdiom])
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
          mainScreen36 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen36 _referenceBounds];
        }

        mainScreen55 = v78 ^ 1u;
        BSSizeRoundForScale();
        HIDWORD(v322) = mainScreen55;
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
      mainScreen55 = __sb__runningInSpringBoard();
      if (mainScreen55)
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
        currentDevice38 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice38 userInterfaceIdiom])
        {
          HIDWORD(v321) = 0;
          LODWORD(v322) = 1;
          goto LABEL_416;
        }
      }

      LODWORD(v322) = mainScreen55 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        mainScreen55 = __sb__runningInSpringBoard();
        if (mainScreen55)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen37 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen37 _referenceBounds];
        }

        HIDWORD(v321) = mainScreen55 ^ 1;
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
        currentDevice39 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice39 userInterfaceIdiom])
        {
          HIDWORD(v320) = 0;
          LODWORD(v321) = 1;
          goto LABEL_462;
        }
      }

      LODWORD(v321) = v80 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        mainScreen55 = __sb__runningInSpringBoard();
        if (mainScreen55)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen38 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen38 _referenceBounds];
        }

        v246 = mainScreen38;
        HIDWORD(v320) = mainScreen55 ^ 1;
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
      mainScreen55 = __sb__runningInSpringBoard();
      if (mainScreen55)
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
        currentDevice40 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice40 userInterfaceIdiom])
        {
          HIDWORD(v319) = 0;
          LODWORD(v320) = 1;
          goto LABEL_472;
        }
      }

      LODWORD(v320) = mainScreen55 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        mainScreen55 = __sb__runningInSpringBoard();
        if (mainScreen55)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen39 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen39 _referenceBounds];
        }

        HIDWORD(v319) = mainScreen55 ^ 1;
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
        currentDevice41 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice41 userInterfaceIdiom])
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
          mainScreen40 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen40 _referenceBounds];
        }

        mainScreen55 = v90 ^ 1u;
        BSSizeRoundForScale();
        HIDWORD(v318) = mainScreen55;
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
      mainScreen55 = __sb__runningInSpringBoard();
      if (mainScreen55)
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
        currentDevice42 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice42 userInterfaceIdiom])
        {
          v301 = 0;
          LODWORD(v318) = 1;
          goto LABEL_530;
        }
      }

      LODWORD(v318) = mainScreen55 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        mainScreen55 = __sb__runningInSpringBoard();
        if (mainScreen55)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen41 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen41 _referenceBounds];
        }

        v301 = mainScreen55 ^ 1;
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
        currentDevice43 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice43 userInterfaceIdiom])
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
          mainScreen42 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen42 _referenceBounds];
        }

        mainScreen55 = v109 ^ 1u;
        BSSizeRoundForScale();
        LODWORD(v317) = mainScreen55;
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
      mainScreen55 = __sb__runningInSpringBoard();
      HIDWORD(v317) = v106;
      if (mainScreen55)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          v316 = 0;
          goto LABEL_590;
        }
      }

      else
      {
        currentDevice44 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice44 userInterfaceIdiom])
        {
          v316 = 0x100000000;
          goto LABEL_590;
        }
      }

      HIDWORD(v316) = mainScreen55 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        mainScreen55 = __sb__runningInSpringBoard();
        if (mainScreen55)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen43 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen43 _referenceBounds];
        }

        LODWORD(v316) = mainScreen55 ^ 1;
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
        currentDevice45 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice45 userInterfaceIdiom])
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
          mainScreen44 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen44 _referenceBounds];
        }

        mainScreen55 = v119 ^ 1u;
        BSSizeRoundForScale();
        LODWORD(v315) = mainScreen55;
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
      mainScreen55 = __sb__runningInSpringBoard();
      if (mainScreen55)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          v314 = 0;
          goto LABEL_640;
        }
      }

      else
      {
        currentDevice46 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice46 userInterfaceIdiom])
        {
          v314 = 0x100000000;
          goto LABEL_640;
        }
      }

      HIDWORD(v314) = mainScreen55 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        mainScreen55 = __sb__runningInSpringBoard();
        if (mainScreen55)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen45 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen45 _referenceBounds];
        }

        LODWORD(v314) = mainScreen55 ^ 1;
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
        currentDevice47 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice47 userInterfaceIdiom])
        {
          v313 = 0x100000000;
          goto LABEL_686;
        }
      }

      HIDWORD(v313) = v121 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        mainScreen55 = __sb__runningInSpringBoard();
        if (mainScreen55)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen46 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen46 _referenceBounds];
        }

        LODWORD(v313) = mainScreen55 ^ 1;
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
      mainScreen55 = __sb__runningInSpringBoard();
      if (mainScreen55)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          v312 = 0;
          goto LABEL_696;
        }
      }

      else
      {
        currentDevice48 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice48 userInterfaceIdiom])
        {
          v312 = 0x100000000;
          goto LABEL_696;
        }
      }

      HIDWORD(v312) = mainScreen55 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        mainScreen55 = __sb__runningInSpringBoard();
        if (mainScreen55)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen47 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen47 _referenceBounds];
        }

        LODWORD(v312) = mainScreen55 ^ 1;
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
        currentDevice49 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice49 userInterfaceIdiom])
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
          mainScreen48 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen48 _referenceBounds];
        }

        mainScreen55 = v138 ^ 1u;
        BSSizeRoundForScale();
        LODWORD(v311) = mainScreen55;
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
      mainScreen55 = __sb__runningInSpringBoard();
      if (mainScreen55)
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
        currentDevice50 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice50 userInterfaceIdiom])
        {
          HIDWORD(v300) = 0;
          HIDWORD(v310) = 1;
          goto LABEL_752;
        }
      }

      HIDWORD(v310) = mainScreen55 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        mainScreen55 = __sb__runningInSpringBoard();
        if (mainScreen55)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen49 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen49 _referenceBounds];
        }

        HIDWORD(v300) = mainScreen55 ^ 1;
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
        currentDevice51 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice51 userInterfaceIdiom])
        {
          HIDWORD(v309) = 0;
          LODWORD(v310) = 1;
          goto LABEL_766;
        }
      }

      LODWORD(v310) = v140 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        mainScreen55 = __sb__runningInSpringBoard();
        if (mainScreen55)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen50 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen50 _referenceBounds];
        }

        HIDWORD(v309) = mainScreen55 ^ 1;
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
      mainScreen55 = __sb__runningInSpringBoard();
      if (mainScreen55)
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
        currentDevice52 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice52 userInterfaceIdiom])
        {
          v294 = 0;
          v295 = 1;
          goto LABEL_810;
        }
      }

      v295 = mainScreen55 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        mainScreen55 = __sb__runningInSpringBoard();
        if (mainScreen55)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen51 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen51 _referenceBounds];
        }

        v294 = mainScreen55 ^ 1;
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
        currentDevice53 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice53 userInterfaceIdiom])
        {
          HIDWORD(v308) = 0;
          LODWORD(v309) = 1;
          goto LABEL_850;
        }
      }

      LODWORD(v309) = v154 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        mainScreen55 = __sb__runningInSpringBoard();
        if (mainScreen55)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen52 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen52 _referenceBounds];
        }

        HIDWORD(v308) = mainScreen55 ^ 1;
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
      mainScreen55 = __sb__runningInSpringBoard();
      if (mainScreen55)
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
        currentDevice54 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice54 userInterfaceIdiom])
        {
          LODWORD(v300) = 0;
          LODWORD(v308) = 1;
          goto LABEL_870;
        }
      }

      LODWORD(v308) = mainScreen55 ^ 1;
      if (SBFEffectiveHomeButtonType() == 2)
      {
        mainScreen55 = __sb__runningInSpringBoard();
        if (mainScreen55)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen53 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen53 _referenceBounds];
        }

        LODWORD(v300) = mainScreen55 ^ 1;
        BSSizeRoundForScale();
        if (v163 >= *(MEMORY[0x277D66E30] + 104))
        {
LABEL_886:
          mainScreen55 = &off_21EC94000;
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
            currentDevice55 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice55 userInterfaceIdiom])
            {
              v299 = 0x100000000;
              goto LABEL_920;
            }
          }

          HIDWORD(v299) = v165 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            mainScreen55 = __sb__runningInSpringBoard();
            if (mainScreen55)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              mainScreen54 = [MEMORY[0x277D759A0] mainScreen];
              [mainScreen54 _referenceBounds];
            }

            LODWORD(v299) = mainScreen55 ^ 1;
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
          mainScreen55 = __sb__runningInSpringBoard();
          if (mainScreen55)
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
            currentDevice56 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice56 userInterfaceIdiom])
            {
              v57 = 0;
              v298 = 1;
              goto LABEL_940;
            }
          }

          v298 = mainScreen55 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            v169 = __sb__runningInSpringBoard();
            if (v169)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              mainScreen55 = [MEMORY[0x277D759A0] mainScreen];
              [mainScreen55 _referenceBounds];
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
            currentDevice57 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice57 userInterfaceIdiom])
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
            mainScreen56 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen56 _referenceBounds];
          }

          v59 = v173 ^ 1;
          BSSizeRoundForScale();
          if (v174 >= *(MEMORY[0x277D66E30] + 56))
          {
            goto LABEL_963;
          }

LABEL_960:
          mainScreen57 = __sb__runningInSpringBoard();
          if (mainScreen57)
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
            currentDevice58 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice58 userInterfaceIdiom])
            {
              v32 = 0.0;
              v60 = 1;
              goto LABEL_140;
            }
          }

          v60 = mainScreen57 ^ 1;
          v183 = __sb__runningInSpringBoard();
          if (v183)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen57 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen57 _referenceBounds];
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
  HIDWORD(v323) = mainScreen55 ^ 1;
LABEL_140:
  if (v60)
  {
  }

  if (v59)
  {
  }

  selfCopy = v348;
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
  [(CSBatteryChargingRingView *)selfCopy _silhouetteBottomOffset];
  v68 = v67;
  [(CSBatteryChargingRingView *)selfCopy _silhouetteCornerRadius];
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

- (void)setBatteryVisible:(BOOL)visible
{
  chargingContainerView = self->_chargingContainerView;
  v5 = 0.0;
  if (visible)
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
  _isShowingAuxiliary = [(CSBatteryChargingRingView *)self _isShowingAuxiliary];
  result = 3.65;
  if (_isShowingAuxiliary)
  {
    return 4.75;
  }

  return result;
}

- (void)setLegibilitySettings:(id)settings
{
  v15.receiver = self;
  v15.super_class = CSBatteryChargingRingView;
  settingsCopy = settings;
  [(CSBatteryChargingView *)&v15 setLegibilitySettings:settingsCopy];
  chargePercentLabel = self->_chargePercentLabel;
  v6 = [(CSBatteryChargingView *)self legibilitySettings:v15.receiver];
  [(SBUILegibilityLabel *)chargePercentLabel setLegibilitySettings:v6];

  auxiliaryBatteryLabel = self->_auxiliaryBatteryLabel;
  legibilitySettings = [(CSBatteryChargingView *)self legibilitySettings];
  [(SBUILegibilityLabel *)auxiliaryBatteryLabel setLegibilitySettings:legibilitySettings];

  primaryColor = [settingsCopy primaryColor];

  cGColor = [primaryColor CGColor];
  if (![(CSBatteryChargingRingView *)self _isReduceMotionEnabled])
  {
    [(CALayer *)self->_splashRing setBackgroundColor:cGColor];
    [(CALayer *)self->_splashRing1 setBackgroundColor:cGColor];
    [(CALayer *)self->_splashRing3 setBackgroundColor:cGColor];
    [(CALayer *)self->_ringTempOverlayLayer setBorderColor:cGColor];
  }

  [(CSRingLayer *)self->_ringBlurLayer setStrokeColor:cGColor];
  [(CSRingLayer *)self->_trackFillRingLayer setStrokeColor:cGColor];
  v11 = +[CSLockScreenDomain rootSettings];
  chargingSettings = [v11 chargingSettings];
  useWhimsicalDesign = [chargingSettings useWhimsicalDesign];

  if (useWhimsicalDesign)
  {
    layer = [(UIView *)self->_auxiliaryBatteryPillTrackView layer];
    [layer setBackgroundColor:cGColor];
  }

  else
  {
    [(CSRingLayer *)self->_auxiliaryBatteryTrackFillRingLayer setStrokeColor:cGColor];
  }
}

- (void)setSilhouette:(id)silhouette
{
  objc_storeStrong(&self->_silhouette, silhouette);
  silhouetteCopy = silhouette;
  [(CSMagSafeSilhouetteConfiguration *)self->_silhouette cornerRadius];
  v6 = [MEMORY[0x277CD9ED0] ringLayerWithBlendMode:*MEMORY[0x277CDA5C0] cornerRadius:? borderWidth:?];

  [(CSBatteryChargingRingView *)self setSilhouetteLayer:v6];
}

- (void)setSilhouetteLayer:(id)layer
{
  layerCopy = layer;
  silhouetteLayer = self->_silhouetteLayer;
  [(CALayer *)silhouetteLayer removeFromSuperlayer];
  objc_storeStrong(&self->_silhouetteLayer, layer);
  [(CALayer *)self->_silhouetteLayer setCornerCurve:*MEMORY[0x277CDA138]];
  [(CSMagSafeSilhouetteConfiguration *)self->_silhouette bottomOffset];
  if (v6 == 0.0)
  {
    -[CALayer setMaskedCorners:](self->_silhouetteLayer, "setMaskedCorners:", -[CSMagSafeSilhouetteConfiguration roundedCornersMaskForOrientation:](self->_silhouette, "roundedCornersMaskForOrientation:", [*MEMORY[0x277D76620] activeInterfaceOrientation]));
  }

  [(CALayer *)self->_silhouetteLayer setOpacity:0.0];
  v7 = self->_silhouetteLayer;
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  -[CALayer setBackgroundColor:](v7, "setBackgroundColor:", [whiteColor CGColor]);

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
        layer = [(UIView *)self->_chargingContainerView layer];
        [layer insertSublayer:self->_silhouetteLayer below:self->_auxiliaryBatteryContainerLayer];
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
    _isShowingAuxiliary = [(CSBatteryChargingRingView *)self _isShowingAuxiliary];
    v21 = 0.3;
    if (_isShowingAuxiliary)
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

- (void)_animateSilhouetteToVisible:(BOOL)visible
{
  visibleCopy = visible;
  v20[2] = *MEMORY[0x277D85DE8];
  v5 = CACurrentMediaTime();
  v6 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  v7 = v6;
  if (visibleCopy)
  {
    v8 = v5 + 0.5;
  }

  else
  {
    v8 = v5;
  }

  if (visibleCopy)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 0.15;
  }

  if (visibleCopy)
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
    ring = [(CSMagSafeAccessoryConfiguration *)self->_configuration ring];
    v14 = [(CSBatteryChargingRingView *)self _trackAnimationForConfiguration:ring withCurrentTime:v3];

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
  chargingSettings = [v20 chargingSettings];
  useWhimsicalDesign = [chargingSettings useWhimsicalDesign];

  if (useWhimsicalDesign)
  {
    layer = [(UIView *)self->_auxiliaryBatteryPillTrackView layer];
    [layer addAnimation:v15 forKey:@"opacity"];
  }

  else
  {
    [(CSRingLayer *)self->_auxiliaryBatteryTrackFillRingLayer addAnimation:v15 forKey:@"opacity"];
  }

  if (![(CSBatteryChargingRingView *)self _isReduceMotionEnabled])
  {
    trackFillRingLayer = self->_trackFillRingLayer;
    ring2 = [(CSMagSafeAccessoryConfiguration *)self->_configuration ring];
    v26 = [(CSBatteryChargingRingView *)self _trackAnimationForConfiguration:ring2 withCurrentTime:v3];
    [(CSRingLayer *)trackFillRingLayer addAnimation:v26 forKey:@"lineWidth"];

    auxiliaryBatteryTrackFillRingLayer = self->_auxiliaryBatteryTrackFillRingLayer;
    auxiliaryRing = [(CSMagSafeAccessoryConfiguration *)self->_configuration auxiliaryRing];
    v29 = [(CSBatteryChargingRingView *)self _trackAnimationForConfiguration:auxiliaryRing withCurrentTime:v3];
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

- (void)_runChargingBoltAnimationVisible:(BOOL)visible
{
  if (visible)
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
    _isReduceMotionEnabled = [(CSBatteryChargingRingView *)self _isReduceMotionEnabled];
    v7 = MEMORY[0x277CDA238];
    v8 = MEMORY[0x277CDA7C8];
    if (_isReduceMotionEnabled)
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

- (void)_runAuxiliaryChargingBoltAnimationVisible:(BOOL)visible
{
  if (visible)
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
    path = [(CSRingLayer *)self->_batteryLevelRing path];
    ring = [(CSMagSafeAccessoryConfiguration *)self->_configuration ring];
    v9 = [(CSBatteryChargingRingView *)self _pathForRingConfiguration:ring];

    v10 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"path"];
    [v10 setBeginTime:v4 + 0.9];
    [v10 setDuration:1.0];
    [v10 setRemovedOnCompletion:0];
    [v10 setFillMode:*MEMORY[0x277CDA238]];
    [v10 setKeyTimes:&unk_283079D28];
    v17[0] = path;
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
    chargingSettings = [v3 chargingSettings];
    useWhimsicalDesign = [chargingSettings useWhimsicalDesign];

    if (useWhimsicalDesign)
    {
      layer = [(UIView *)self->_chargingContainerView layer];
      layer2 = [(UIView *)self->_auxiliaryBatteryPillClippingView layer];
      [layer addSublayer:layer2];
    }

    if ([(CSBatteryChargingRingView *)self _isReduceMotionEnabled])
    {
      v58 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
      _isReduceMotionEnabled = [(CSBatteryChargingRingView *)self _isReduceMotionEnabled];
      v9 = CACurrentMediaTime();
      v10 = 0.67;
      if (_isReduceMotionEnabled)
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

      if (useWhimsicalDesign)
      {
        layer3 = [(UIView *)self->_auxiliaryBatteryPillTrackView layer];
        [layer3 addAnimation:v58 forKey:@"opacity"];
      }

      else
      {
        [(CSRingLayer *)self->_auxiliaryBatteryLevelRing addAnimation:v58 forKey:@"opacity"];
      }
    }

    else
    {
      v14 = CACurrentMediaTime();
      if (useWhimsicalDesign)
      {
        layer4 = [(UIView *)self->_auxiliaryBatteryPillLevelView layer];
        [layer4 position];
        v17 = v16;

        layer5 = [(UIView *)self->_auxiliaryBatteryPillLevelView layer];
        [layer5 frame];
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

        height = [MEMORY[0x277CCABB0] numberWithDouble:v17 + Height];
        v63[0] = height;
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

        layer6 = [(UIView *)self->_auxiliaryBatteryPillLevelView layer];
        [layer6 addAnimation:v20 forKey:@"position.y"];

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

        layer7 = [(UIView *)self->_auxiliaryBatteryPillLevelView layer];
        [layer7 addAnimation:v38 forKey:@"opacity"];
      }

      else
      {
        [(CSRingLayer *)self->_auxiliaryBatteryLevelRing strokeEnd];
        v48 = [MEMORY[0x277CCABB0] numberWithDouble:?];
        v20 = [(CSBatteryChargingRingView *)self _springAnimationWithKeyPath:@"strokeEnd" delay:1 forPresent:&unk_283078C90 from:v48 to:1.25];

        [(CSRingLayer *)self->_auxiliaryBatteryLevelRing addAnimation:v20 forKey:@"strokeEnd"];
        path = [(CSRingLayer *)self->_auxiliaryBatteryLevelRing path];
        auxiliaryRing = [(CSMagSafeAccessoryConfiguration *)self->_configuration auxiliaryRing];
        v51 = [(CSBatteryChargingRingView *)self _pathForRingConfiguration:auxiliaryRing];

        v52 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"path"];
        [v52 setBeginTime:v14 + 1.25];
        [v52 setDuration:1.0];
        [v52 setRemovedOnCompletion:0];
        [v52 setFillMode:*MEMORY[0x277CDA238]];
        [v52 setKeyTimes:&unk_283079D88];
        v59[0] = path;
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
  _isReduceMotionEnabled = [(CSBatteryChargingRingView *)self _isReduceMotionEnabled];
  v4 = CACurrentMediaTime();
  v5 = v4 + 0.67;
  v6 = v4 + 0.9 + 0.25;
  if (_isReduceMotionEnabled)
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

  layer = [(SBUILegibilityLabel *)self->_chargePercentLabel layer];
  [layer addAnimation:v10 forKey:@"opacityLabel"];
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

    layer = [(SBUILegibilityLabel *)self->_auxiliaryBatteryLabel layer];
    [layer addAnimation:v30 forKey:@"opacityLabel"];
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

    layer2 = [(SBUILegibilityLabel *)self->_auxiliaryBatteryLabel layer];
    [layer2 addAnimation:v6 forKey:@"opacityLabel"];

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
    layer3 = [(SBUILegibilityLabel *)self->_auxiliaryBatteryLabel layer];
    [layer3 addAnimation:v21 forKey:@"position.y"];
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
    ring = [(CSMagSafeAccessoryConfiguration *)self->_configuration ring];
    [ring lineWidth];
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
    layer = [(SBUILegibilityLabel *)self->_chargePercentLabel layer];
    [layer addAnimation:v20 forKey:@"fadeOut"];

    [(CSRingLayer *)self->_batteryLevelRing addAnimation:v20 forKey:@"fadeOut"];
    [(CABackdropLayer *)self->_ringBlurBackdropLayer addAnimation:v20 forKey:@"fadeOut"];
    [v20 setValues:&unk_283079E90];
    [(CSRingLayer *)self->_trackFillRingLayer addAnimation:v20 forKey:@"fadeOut"];
  }

  else
  {
    [v20 setBeginTime:CACurrentMediaTime() + 0.16];
    [v20 setDuration:0.18];
    layer2 = [(SBUILegibilityLabel *)self->_chargePercentLabel layer];
    [layer2 addAnimation:v20 forKey:@"fadeOut"];
  }
}

- (void)_runAuxiliaryBatteryLevelDismissAnimation
{
  if (![(CSBatteryChargingRingView *)self _isShowingAuxiliary])
  {
    return;
  }

  v3 = +[CSLockScreenDomain rootSettings];
  chargingSettings = [v3 chargingSettings];
  useWhimsicalDesign = [chargingSettings useWhimsicalDesign];

  _isReduceMotionEnabled = [(CSBatteryChargingRingView *)self _isReduceMotionEnabled];
  v7 = MEMORY[0x277CDA238];
  if (!_isReduceMotionEnabled)
  {
    if (useWhimsicalDesign)
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

      layer = [(UIView *)self->_auxiliaryBatteryPillClippingView layer];
      [layer addAnimation:v8 forKey:@"opacity"];
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
      layer = [(CSBatteryChargingRingView *)self _springAnimationWithKeyPath:@"strokeEnd" forPresent:0 from:v15 to:&unk_283078CA0];

      [(CSRingLayer *)self->_auxiliaryBatteryLevelRing addAnimation:layer forKey:@"strokeEnd"];
      [(CSRingLayer *)self->_auxiliaryBatteryTrackFillRingLayer addAnimation:layer forKey:@"strokeEnd"];
      auxiliaryRing = [(CSMagSafeAccessoryConfiguration *)self->_configuration auxiliaryRing];
      [auxiliaryRing lineWidth];
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
    layer2 = [(SBUILegibilityLabel *)self->_auxiliaryBatteryLabel layer];
    [layer2 addAnimation:v32 forKey:@"fadeOut"];

    if (!useWhimsicalDesign)
    {
      [(CSRingLayer *)self->_auxiliaryBatteryLevelRing addAnimation:v32 forKey:@"fadeOut"];
      [(CSRingLayer *)self->_auxiliaryBatteryTrackFillRingLayer addAnimation:v32 forKey:@"fadeOut"];
      [(CALayer *)self->_auxiliaryGlyphLayer addAnimation:v32 forKey:@"fadeout"];
      goto LABEL_14;
    }

    layer3 = [(UIView *)self->_auxiliaryBatteryPillLevelView layer];
    [layer3 addAnimation:v32 forKey:@"fadeOut"];

    layer4 = [(UIView *)self->_auxiliaryBatteryPillTrackView layer];
    v30 = layer4;
    v31 = v32;
  }

  else
  {
    [v32 setBeginTime:CACurrentMediaTime() + 0.16];
    [v32 setDuration:0.18];
    layer4 = [(SBUILegibilityLabel *)self->_auxiliaryBatteryLabel layer];
    v30 = layer4;
    v31 = v32;
  }

  [layer4 addAnimation:v31 forKey:@"fadeOut"];

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

- (void)_runAnimationWithType:(unint64_t)type
{
  if (![(CSMagSafeAccessoryConfiguration *)self->_configuration staticViewNeeded])
  {
    if (type == 1)
    {

      [(CSBatteryChargingRingView *)self _performChargingBoltDismissAnimation];
    }

    else if (!type)
    {

      [(CSBatteryChargingRingView *)self _performChargingBoltPresentAnimation];
    }
  }
}

- (void)performAnimation:(unint64_t)animation completionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(CSBatteryChargingRingView *)self _shouldUseShortcutForAnimation:animation])
  {
    if (handlerCopy)
    {
      objc_initWeak(&location, self);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __64__CSBatteryChargingRingView_performAnimation_completionHandler___block_invoke;
      v23[3] = &unk_27838C8D8;
      objc_copyWeak(&v25, &location);
      v24 = handlerCopy;
      v7 = MEMORY[0x223D698D0](v23);
      v8 = [v7 copy];
      longTailShortcutTimerHandler = self->_longTailShortcutTimerHandler;
      self->_longTailShortcutTimerHandler = v8;

      [(BSAbsoluteMachTimer *)self->_longTailShortcutTimer invalidate];
      [(CSBatteryChargingRingView *)self _estimatedDurationForAnimation:animation];
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

    [(CSBatteryChargingRingView *)self _runAnimationWithType:animation, v18, v19, v20, v21];
  }

  else
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setCompletionBlock:handlerCopy];
    [(CSBatteryChargingRingView *)self _runAnimationWithType:animation];
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

- (id)_updateChargeString:(id)string oldLabel:(id)label font:(id)font
{
  fontCopy = font;
  stringCopy = string;
  [label removeFromSuperview];
  rootSettings = [MEMORY[0x277D65E90] rootSettings];
  legibilitySettings = [(CSBatteryChargingView *)self legibilitySettings];
  [rootSettings dateStrengthForStyle:{objc_msgSend(legibilitySettings, "style")}];
  v13 = v12;

  v14 = objc_alloc(MEMORY[0x277D67CF8]);
  legibilitySettings2 = [(CSBatteryChargingView *)self legibilitySettings];
  v16 = [v14 initWithSettings:legibilitySettings2 strength:stringCopy string:fontCopy font:v13];

  [v16 setAdjustsFontSizeToFitWidth:1];
  [v16 setLineBreakMode:2];
  if (([*MEMORY[0x277D76620] activeInterfaceOrientation] - 1) <= 1)
  {
    [(CSBatteryChargingRingView *)self addSubview:v16];
  }

  return v16;
}

- (id)_ringLayerForRingConfiguration:(id)configuration
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (configuration)
  {
    configurationCopy = configuration;
    [configurationCopy ringDiameter];
    v6 = v5;
    [configurationCopy lineWidth];
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

- (CGPath)_pathForRingConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [configurationCopy ringDiameter];
  v5 = v4;
  [configurationCopy lineWidth];
  v7 = v6;

  return [CSRingLayer newPathForDiameter:v5 lineWidth:v7];
}

- (id)_trackRingForRingConfiguration:(id)configuration withBlendMode:(id)mode
{
  modeCopy = mode;
  configurationCopy = configuration;
  [configurationCopy ringDiameter];
  v8 = v7;
  [configurationCopy lineWidth];
  v10 = v9;

  v11 = [CSRingLayer ringLayerWithBlendMode:modeCopy diameter:v8 lineWidth:v10 brightnessAmount:0.2 saturationAmount:1.25];

  return v11;
}

- (void)_createAuxiliaryPillViewsIfNeeded
{
  v35[1] = *MEMORY[0x277D85DE8];
  if ([(CSBatteryChargingRingView *)self _isShowingAuxiliary])
  {
    v3 = +[CSLockScreenDomain rootSettings];
    chargingSettings = [v3 chargingSettings];
    useWhimsicalDesign = [chargingSettings useWhimsicalDesign];

    if ((useWhimsicalDesign & 1) == 0)
    {
      if (!self->_auxiliaryBatteryPillLevelView)
      {
        v6 = objc_alloc(MEMORY[0x277D75D18]);
        v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        auxiliaryBatteryPillLevelView = self->_auxiliaryBatteryPillLevelView;
        self->_auxiliaryBatteryPillLevelView = v7;

        [(UIView *)self->_auxiliaryBatteryPillLevelView setBounds:0.0, 0.0, 28.0, 87.0];
        layer = [(UIView *)self->_auxiliaryBatteryPillLevelView layer];
        v10 = [MEMORY[0x277CD9EA0] brightnessFilterWithAmount:0.1];
        v35[0] = v10;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
        [layer setFilters:v11];

        layer2 = [(UIView *)self->_auxiliaryBatteryPillLevelView layer];
        [layer2 setOpacity:0.0];
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
        layer3 = [(UIView *)self->_auxiliaryBatteryPillTrackView layer];
        _isDarkerSystemColorsEnabled = [(CSBatteryChargingRingView *)self _isDarkerSystemColorsEnabled];
        v20 = MEMORY[0x277CDA5C0];
        if (!_isDarkerSystemColorsEnabled)
        {
          v20 = MEMORY[0x277CDA5E8];
        }

        [layer3 setCompositingFilter:*v20];

        layer4 = [(UIView *)self->_auxiliaryBatteryPillTrackView layer];
        v34[0] = v16;
        v34[1] = v17;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
        [layer4 setFilters:v22];

        layer5 = [(UIView *)self->_auxiliaryBatteryPillTrackView layer];
        [layer5 setOpacity:0.0];
      }

      if (!self->_auxiliaryBatteryPillClippingView)
      {
        v24 = objc_alloc(MEMORY[0x277D75D18]);
        v25 = [v24 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        auxiliaryBatteryPillClippingView = self->_auxiliaryBatteryPillClippingView;
        self->_auxiliaryBatteryPillClippingView = v25;

        [(UIView *)self->_auxiliaryBatteryPillClippingView setFrame:0.0, 0.0, 28.0, 87.0];
        [(UIView *)self->_auxiliaryBatteryPillClippingView setClipsToBounds:1];
        layer6 = [(UIView *)self->_auxiliaryBatteryPillClippingView layer];
        [layer6 setMasksToBounds:1];

        layer7 = [(UIView *)self->_auxiliaryBatteryPillClippingView layer];
        layer8 = [(UIView *)self->_auxiliaryBatteryPillTrackView layer];
        [layer7 addSublayer:layer8];

        layer9 = [(UIView *)self->_auxiliaryBatteryPillClippingView layer];
        layer10 = [(UIView *)self->_auxiliaryBatteryPillLevelView layer];
        [layer9 addSublayer:layer10];

        [(UIView *)self->_auxiliaryBatteryPillClippingView _setContinuousCornerRadius:14.0];
        layer11 = [(UIView *)self->_auxiliaryBatteryPillClippingView layer];
        [layer11 setCornerRadius:14.0];

        layer12 = [(UIView *)self->_auxiliaryBatteryPillClippingView layer];
        [layer12 setAllowsGroupOpacity:1];
      }
    }
  }
}

- (void)_createBoltViewsIfNeeded
{
  v183[1] = *MEMORY[0x277D85DE8];
  v4 = +[CSLockScreenDomain rootSettings];
  chargingSettings = [v4 chargingSettings];

  layer = [MEMORY[0x277CD9ED0] layer];
  auxiliaryChargingBoltGlyph = self->_auxiliaryChargingBoltGlyph;
  self->_auxiliaryChargingBoltGlyph = layer;

  [chargingSettings auxiliaryBoltHeight];
  v9 = v8;
  v10 = __sb__runningInSpringBoard();
  v181 = chargingSettings;
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
    {
      v11 = 0;
      v12 = 1;
      goto LABEL_10;
    }
  }

  v12 = v10 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen27 = __sb__runningInSpringBoard();
    if (mainScreen27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen _referenceBounds];
    }

    v11 = mainScreen27 ^ 1;
    BSSizeRoundForScale();
    if (v30 == *(MEMORY[0x277D66E30] + 288) && v29 == *(MEMORY[0x277D66E30] + 296))
    {
      v179 = mainScreen27 ^ 1;
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
      currentDevice29 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice2 userInterfaceIdiom] != 1)
    {
      v15 = 0;
      currentDevice29 = 1;
      goto LABEL_19;
    }
  }

  currentDevice29 = v14 ^ 1u;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen27 = __sb__runningInSpringBoard();
    if (mainScreen27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 _referenceBounds];
    }

    v15 = mainScreen27 ^ 1;
    BSSizeRoundForScale();
    if (v32 >= *(MEMORY[0x277D66E30] + 440))
    {
      LODWORD(v178) = mainScreen27 ^ 1;
      HIDWORD(v178) = currentDevice29;
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
  v178 = __PAIR64__(currentDevice29, v15);
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
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice3 userInterfaceIdiom] != 1)
    {
      v17 = 0;
      v18 = 1;
      goto LABEL_28;
    }
  }

  v18 = v16 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen27 = __sb__runningInSpringBoard();
    if (mainScreen27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen3 _referenceBounds];
    }

    v17 = mainScreen27 ^ 1;
    BSSizeRoundForScale();
    if (v33 >= *(MEMORY[0x277D66E30] + 376))
    {
      LODWORD(v177) = mainScreen27 ^ 1;
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
    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice4 userInterfaceIdiom] != 1)
    {
      v176 = 0x100000000;
      goto LABEL_37;
    }
  }

  HIDWORD(v176) = v19 ^ 1;
  mainScreen27 = __sb__runningInSpringBoard();
  if (mainScreen27)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen4 _referenceBounds];
  }

  LODWORD(v176) = mainScreen27 ^ 1;
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
    currentDevice5 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice5 userInterfaceIdiom] != 1)
    {
      v175 = 0x100000000;
      goto LABEL_47;
    }
  }

  HIDWORD(v175) = v21 ^ 1;
  mainScreen27 = __sb__runningInSpringBoard();
  if (mainScreen27)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen5 _referenceBounds];
  }

  LODWORD(v175) = mainScreen27 ^ 1;
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
    currentDevice6 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice6 userInterfaceIdiom] != 1)
    {
      v174 = 0x100000000;
      goto LABEL_70;
    }
  }

  HIDWORD(v174) = v28 ^ 1;
  mainScreen27 = __sb__runningInSpringBoard();
  if (mainScreen27)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen6 _referenceBounds];
  }

  LODWORD(v174) = mainScreen27 ^ 1;
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
  mainScreen27 = __sb__runningInSpringBoard();
  if (mainScreen27)
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
    v173 = mainScreen27 ^ 1;
    goto LABEL_79;
  }

  currentDevice7 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice7 userInterfaceIdiom] == 1)
  {
    goto LABEL_78;
  }

LABEL_72:
  v173 = mainScreen27 ^ 1;
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
    currentDevice8 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice8 userInterfaceIdiom])
    {
      v172 = 0x100000000;
      goto LABEL_200;
    }
  }

  HIDWORD(v172) = v35 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen27 = __sb__runningInSpringBoard();
    if (mainScreen27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen7 _referenceBounds];
    }

    LODWORD(v172) = mainScreen27 ^ 1;
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
  mainScreen27 = __sb__runningInSpringBoard();
  if (mainScreen27)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v171 = 0;
      goto LABEL_210;
    }
  }

  else
  {
    currentDevice9 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice9 userInterfaceIdiom])
    {
      v171 = 0x100000000;
      goto LABEL_210;
    }
  }

  HIDWORD(v171) = mainScreen27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen27 = __sb__runningInSpringBoard();
    if (mainScreen27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen8 _referenceBounds];
    }

    LODWORD(v171) = mainScreen27 ^ 1;
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
    currentDevice10 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice10 userInterfaceIdiom])
    {
      v170 = 0x100000000;
      goto LABEL_228;
    }
  }

  HIDWORD(v170) = v60 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen27 = __sb__runningInSpringBoard();
    if (mainScreen27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen9 _referenceBounds];
    }

    LODWORD(v170) = mainScreen27 ^ 1;
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
  mainScreen27 = __sb__runningInSpringBoard();
  if (mainScreen27)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v169 = 0;
      goto LABEL_238;
    }
  }

  else
  {
    currentDevice11 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice11 userInterfaceIdiom])
    {
      v169 = 0x100000000;
      goto LABEL_238;
    }
  }

  HIDWORD(v169) = mainScreen27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen27 = __sb__runningInSpringBoard();
    if (mainScreen27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen10 _referenceBounds];
    }

    LODWORD(v169) = mainScreen27 ^ 1;
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
    currentDevice12 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice12 userInterfaceIdiom])
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
      mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen11 _referenceBounds];
    }

    mainScreen27 = v64 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v167) = mainScreen27;
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
  mainScreen27 = __sb__runningInSpringBoard();
  if (mainScreen27)
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
    currentDevice13 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice13 userInterfaceIdiom])
    {
      HIDWORD(v166) = 0;
      LODWORD(v167) = 1;
      goto LABEL_262;
    }
  }

  LODWORD(v167) = mainScreen27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen27 = __sb__runningInSpringBoard();
    if (mainScreen27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen12 _referenceBounds];
    }

    HIDWORD(v166) = mainScreen27 ^ 1;
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
    currentDevice14 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice14 userInterfaceIdiom])
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
      mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen13 _referenceBounds];
    }

    mainScreen27 = v69 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v165) = mainScreen27;
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
  mainScreen27 = __sb__runningInSpringBoard();
  if (mainScreen27)
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
    currentDevice15 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice15 userInterfaceIdiom])
    {
      HIDWORD(v164) = 0;
      LODWORD(v165) = 1;
      goto LABEL_292;
    }
  }

  LODWORD(v165) = mainScreen27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen27 = __sb__runningInSpringBoard();
    if (mainScreen27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen14 _referenceBounds];
    }

    HIDWORD(v164) = mainScreen27 ^ 1;
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
    currentDevice16 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice16 userInterfaceIdiom])
    {
      HIDWORD(v163) = 0;
      LODWORD(v164) = 1;
      goto LABEL_312;
    }
  }

  LODWORD(v164) = v72 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen27 = __sb__runningInSpringBoard();
    if (mainScreen27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen15 _referenceBounds];
    }

    HIDWORD(v163) = mainScreen27 ^ 1;
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
  mainScreen27 = __sb__runningInSpringBoard();
  if (mainScreen27)
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
    currentDevice17 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice17 userInterfaceIdiom])
    {
      HIDWORD(v162) = 0;
      LODWORD(v163) = 1;
      goto LABEL_322;
    }
  }

  LODWORD(v163) = mainScreen27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen27 = __sb__runningInSpringBoard();
    if (mainScreen27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen16 _referenceBounds];
    }

    HIDWORD(v162) = mainScreen27 ^ 1;
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
    currentDevice18 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice18 userInterfaceIdiom])
    {
      HIDWORD(v161) = 0;
      LODWORD(v162) = 1;
      goto LABEL_340;
    }
  }

  LODWORD(v162) = v74 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen27 = __sb__runningInSpringBoard();
    if (mainScreen27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen17 _referenceBounds];
    }

    HIDWORD(v161) = mainScreen27 ^ 1;
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
      mainScreen27 = 0;
      goto LABEL_350;
    }
  }

  else
  {
    currentDevice19 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice19 userInterfaceIdiom])
    {
      mainScreen27 = 0;
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
      mainScreen18 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen18 _referenceBounds];
    }

    mainScreen27 = v77 ^ 1u;
    BSSizeRoundForScale();
    if (v78 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_354;
    }
  }

  else
  {
    mainScreen27 = 0;
  }

LABEL_350:
  if (_SBF_Private_IsD63Like())
  {
    HIDWORD(v160) = mainScreen27;
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
  HIDWORD(v160) = mainScreen27;
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
    currentDevice20 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice20 userInterfaceIdiom])
    {
      HIDWORD(v159) = 0;
      LODWORD(v160) = 1;
      goto LABEL_368;
    }
  }

  LODWORD(v160) = v79 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen27 = __sb__runningInSpringBoard();
    if (mainScreen27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen19 _referenceBounds];
    }

    HIDWORD(v159) = mainScreen27 ^ 1;
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
  mainScreen27 = __sb__runningInSpringBoard();
  if (mainScreen27)
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
    currentDevice21 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice21 userInterfaceIdiom])
    {
      HIDWORD(v158) = 0;
      LODWORD(v159) = 1;
      goto LABEL_378;
    }
  }

  LODWORD(v159) = mainScreen27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen27 = __sb__runningInSpringBoard();
    if (mainScreen27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen20 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen20 _referenceBounds];
    }

    HIDWORD(v158) = mainScreen27 ^ 1;
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
    currentDevice22 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice22 userInterfaceIdiom])
    {
      HIDWORD(v157) = 0;
      LODWORD(v158) = 1;
      goto LABEL_392;
    }
  }

  LODWORD(v158) = v82 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen27 = __sb__runningInSpringBoard();
    if (mainScreen27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen21 _referenceBounds];
    }

    HIDWORD(v157) = mainScreen27 ^ 1;
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
  mainScreen27 = __sb__runningInSpringBoard();
  if (mainScreen27)
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
    currentDevice23 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice23 userInterfaceIdiom])
    {
      HIDWORD(v156) = 0;
      LODWORD(v157) = 1;
      goto LABEL_402;
    }
  }

  LODWORD(v157) = mainScreen27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen27 = __sb__runningInSpringBoard();
    if (mainScreen27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen22 _referenceBounds];
    }

    HIDWORD(v156) = mainScreen27 ^ 1;
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
    currentDevice24 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice24 userInterfaceIdiom])
    {
      HIDWORD(v155) = 0;
      LODWORD(v156) = 1;
      goto LABEL_422;
    }
  }

  LODWORD(v156) = v86 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen27 = __sb__runningInSpringBoard();
    if (mainScreen27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen23 _referenceBounds];
    }

    HIDWORD(v155) = mainScreen27 ^ 1;
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
      mainScreen27 = 0;
      goto LABEL_432;
    }
  }

  else
  {
    currentDevice25 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice25 userInterfaceIdiom])
    {
      mainScreen27 = 0;
      LODWORD(v155) = 1;
      goto LABEL_432;
    }
  }

  LODWORD(v155) = v87 ^ 1;
  if (SBFEffectiveHomeButtonType() != 2)
  {
    mainScreen27 = 0;
    goto LABEL_432;
  }

  v88 = __sb__runningInSpringBoard();
  if (v88)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen24 _referenceBounds];
  }

  mainScreen27 = v88 ^ 1u;
  BSSizeRoundForScale();
  if (v90 < *(MEMORY[0x277D66E30] + 104))
  {
LABEL_432:
    if (_SBF_Private_IsD53())
    {
      HIDWORD(v154) = mainScreen27;
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

  HIDWORD(v154) = mainScreen27;
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
    currentDevice26 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice26 userInterfaceIdiom])
    {
      v153 = 0;
      LODWORD(v154) = 1;
      goto LABEL_458;
    }
  }

  LODWORD(v154) = v91 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen27 = __sb__runningInSpringBoard();
    if (mainScreen27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen25 _referenceBounds];
    }

    v153 = mainScreen27 ^ 1;
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
    currentDevice27 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice27 userInterfaceIdiom])
    {
      v22 = 0;
      v182 = 1;
      goto LABEL_468;
    }
  }

  v182 = v92 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen27 = __sb__runningInSpringBoard();
    if (mainScreen27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen26 _referenceBounds];
    }

    v22 = mainScreen27 ^ 1;
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
  mainScreen27 = __sb__runningInSpringBoard();
  if (!mainScreen27)
  {
    currentDevice28 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice28 userInterfaceIdiom])
    {
      v24 = 0;
      v23 = 1;
      goto LABEL_478;
    }

LABEL_474:
    v23 = mainScreen27 ^ 1;
    v93 = __sb__runningInSpringBoard();
    if (v93)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen27 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen27 _referenceBounds];
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
  mainScreen28 = __sb__runningInSpringBoard();
  if (mainScreen28)
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
    currentDevice29 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice29 userInterfaceIdiom])
    {
      v26 = 0.0;
      v25 = 1;
      goto LABEL_79;
    }
  }

  v25 = mainScreen28 ^ 1;
  v98 = __sb__runningInSpringBoard();
  if (v98)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen28 _referenceBounds];
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
  contents = [(CALayer *)self->_chargingBoltGlyph contents];
  [(CALayer *)v36 setContents:contents];

  [(CALayer *)self->_auxiliaryChargingBoltGlyph setOpacity:0.0];
  v38 = self->_auxiliaryChargingBoltGlyph;
  v39 = [MEMORY[0x277CD9EA0] brightnessFilterWithAmount:0.1];
  v183[0] = v39;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v183 count:1];
  [(CALayer *)v38 setFilters:v40];

  v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v42 = objc_alloc(MEMORY[0x277D755E8]);
  v43 = MEMORY[0x277D755B8];
  traitCollection = [(CSBatteryChargingRingView *)self traitCollection];
  v45 = [v43 imageNamed:@"bolt-outline-fill" inBundle:v41 compatibleWithTraitCollection:traitCollection];
  v46 = [v42 initWithImage:v45];
  boltMaskImageView = self->_boltMaskImageView;
  self->_boltMaskImageView = v46;

  [(UIImageView *)self->_boltMaskImageView setContentMode:1];
  layer2 = [(UIImageView *)self->_boltMaskImageView layer];
  auxiliaryChargingBoltGlyphMask = self->_auxiliaryChargingBoltGlyphMask;
  self->_auxiliaryChargingBoltGlyphMask = layer2;

  BSRectWithSize();
  [(CSRingLayer *)self->_trackFillRingLayer bounds];
  CGRectGetMidX(v184);
  auxiliaryRing = [(CSMagSafeAccessoryConfiguration *)self->_configuration auxiliaryRing];
  [auxiliaryRing lineWidth];
  UIRectCenteredAboutPoint();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;

  [(UIImageView *)self->_boltMaskImageView setFrame:v52, v54, v56, v58];
  [(CALayer *)self->_auxiliaryChargingBoltGlyphMask setOpacity:0.0];
  [(CALayer *)self->_auxiliaryChargingBoltGlyphMask setCompositingFilter:*MEMORY[0x277CDA310]];
}

- (id)_trackAnimationForConfiguration:(id)configuration withCurrentTime:(double)time
{
  v15[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CD9EC8];
  configurationCopy = configuration;
  v7 = [v5 animationWithKeyPath:@"lineWidth"];
  [v7 setBeginTime:time + 0.67];
  [v7 setKeyTimes:&unk_283079F08];
  v15[0] = &unk_283078C90;
  v8 = MEMORY[0x277CCABB0];
  [configurationCopy lineWidth];
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

- (id)_springAnimationWithKeyPath:(id)path forPresent:(BOOL)present from:(id)from to:(id)to
{
  v6 = 0.9;
  if (!present)
  {
    v6 = 0.0;
  }

  return [CSBatteryChargingRingView _springAnimationWithKeyPath:"_springAnimationWithKeyPath:delay:forPresent:from:to:" delay:path forPresent:v6 from:? to:?];
}

- (id)_springAnimationWithKeyPath:(id)path delay:(double)delay forPresent:(BOOL)present from:(id)from to:(id)to
{
  presentCopy = present;
  toCopy = to;
  fromCopy = from;
  if (presentCopy)
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

  v17 = [(CSBatteryChargingRingView *)self _springAnimationWithKeyPath:path stiffness:v14 damping:v15 duration:v16 delay:delay];
  [v17 setFromValue:fromCopy];

  [v17 setToValue:toCopy];

  return v17;
}

- (id)_springAnimationWithKeyPath:(id)path stiffness:(double)stiffness damping:(double)damping duration:(double)duration delay:(double)delay
{
  v11 = [MEMORY[0x277CD9FA0] animationWithKeyPath:path];
  if (delay != 0.0)
  {
    [v11 setBeginTime:CACurrentMediaTime() + delay];
  }

  [v11 setRemovedOnCompletion:0];
  [v11 setFillMode:*MEMORY[0x277CDA238]];
  [v11 setStiffness:stiffness];
  [v11 setDamping:damping];
  [v11 setDuration:duration];

  return v11;
}

- (BOOL)_isShowingAuxiliary
{
  auxiliaryRing = [(CSMagSafeAccessoryConfiguration *)self->_configuration auxiliaryRing];
  v3 = auxiliaryRing != 0;

  return v3;
}

- (double)_estimatedDurationForAnimation:(unint64_t)animation
{
  if (animation)
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

- (CGPoint)_positionForPill:(id)pill forBatteryCharge:(double)charge
{
  v4 = fmin(fmax(charge, 0.0), 1.0);
  pillCopy = pill;
  [pillCopy bounds];
  MidX = CGRectGetMidX(v19);
  [pillCopy bounds];
  MidY = CGRectGetMidY(v20);
  [pillCopy bounds];
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

- (CGRect)_pillFrameForBatteryCharge:(double)charge
{
  v3 = fmin(fmax(charge, 0.0), 1.0);
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

- (id)_auxillaryGlyphImageForConfig:(id)config
{
  externalBattery = self->_externalBattery;
  configCopy = config;
  productIdentifier = [(BCBatteryDevice *)externalBattery productIdentifier];
  if (productIdentifier == *MEMORY[0x277CF0DC0])
  {
    v6 = @"0828E54B965E418AB42353CA91BFBBEE.fill";
  }

  else
  {
    v6 = @"magsafe.batterypack.fill";
  }

  v7 = [MEMORY[0x277D755B8] _systemImageNamed:v6 withConfiguration:configCopy];

  return v7;
}

- (CGSize)_silhouettePhysicalSizeInMillimeters
{
  productIdentifier = [(BCBatteryDevice *)self->_externalBattery productIdentifier];
  if (productIdentifier == *MEMORY[0x277CF0DB8])
  {
    [(CSBatteryChargingRingView *)self _defaultSilhouettePhysicalSize];
  }

  else if (productIdentifier == *MEMORY[0x277CF0DC0])
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
  productIdentifier = [(BCBatteryDevice *)self->_externalBattery productIdentifier];
  v5 = 0.0;
  if (productIdentifier != *MEMORY[0x277CF0DB8])
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
    {
      v131 = 0x100000000;
      goto LABEL_11;
    }
  }

  HIDWORD(v131) = v6 ^ 1;
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

    LODWORD(v131) = currentDevice29 ^ 1;
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
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice2 userInterfaceIdiom] != 1)
    {
      v130 = 0x100000000;
      goto LABEL_20;
    }
  }

  HIDWORD(v130) = v8 ^ 1;
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

    LODWORD(v130) = currentDevice29 ^ 1;
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
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice3 userInterfaceIdiom] != 1)
    {
      v129 = 0x100000000;
      goto LABEL_29;
    }
  }

  HIDWORD(v129) = v9 ^ 1;
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

    LODWORD(v129) = currentDevice29 ^ 1;
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
    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice4 userInterfaceIdiom] != 1)
    {
      v128 = 0x100000000;
      goto LABEL_38;
    }
  }

  HIDWORD(v128) = v10 ^ 1;
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

  LODWORD(v128) = currentDevice29 ^ 1;
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
    currentDevice5 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice5 userInterfaceIdiom] != 1)
    {
      v127 = 0x100000000;
      goto LABEL_48;
    }
  }

  HIDWORD(v127) = v12 ^ 1;
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

  LODWORD(v127) = currentDevice29 ^ 1;
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
    currentDevice6 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice6 userInterfaceIdiom] != 1)
    {
      v126 = 0x100000000;
      goto LABEL_184;
    }
  }

  HIDWORD(v126) = v19 ^ 1;
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

  LODWORD(v126) = currentDevice29 ^ 1;
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
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
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
    HIDWORD(v125[12]) = currentDevice29 ^ 1;
    goto LABEL_492;
  }

  currentDevice7 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice7 userInterfaceIdiom] == 1)
  {
    goto LABEL_192;
  }

LABEL_186:
  HIDWORD(v125[12]) = currentDevice29 ^ 1;
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
    currentDevice8 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice8 userInterfaceIdiom])
    {
      HIDWORD(v125[11]) = 0;
      LODWORD(v125[12]) = 1;
      goto LABEL_200;
    }
  }

  LODWORD(v125[12]) = v27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen7 _referenceBounds];
    }

    HIDWORD(v125[11]) = currentDevice29 ^ 1;
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
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v125[10] + 4) = 0;
      goto LABEL_210;
    }
  }

  else
  {
    currentDevice9 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice9 userInterfaceIdiom])
    {
      HIDWORD(v125[10]) = 0;
      LODWORD(v125[11]) = 1;
      goto LABEL_210;
    }
  }

  LODWORD(v125[11]) = currentDevice29 ^ 1;
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

    HIDWORD(v125[10]) = currentDevice29 ^ 1;
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
    currentDevice10 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice10 userInterfaceIdiom])
    {
      HIDWORD(v125[9]) = 0;
      LODWORD(v125[10]) = 1;
      goto LABEL_228;
    }
  }

  LODWORD(v125[10]) = v29 ^ 1;
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

    HIDWORD(v125[9]) = currentDevice29 ^ 1;
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
  currentDevice29 = __sb__runningInSpringBoard();
  currentDevice28 = &unk_21EC95000;
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v125[8] + 4) = 0;
      goto LABEL_238;
    }
  }

  else
  {
    currentDevice11 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice11 userInterfaceIdiom])
    {
      HIDWORD(v125[8]) = 0;
      LODWORD(v125[9]) = 1;
      goto LABEL_238;
    }
  }

  LODWORD(v125[9]) = currentDevice29 ^ 1;
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

    HIDWORD(v125[8]) = currentDevice29 ^ 1;
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
    currentDevice12 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice12 userInterfaceIdiom])
    {
      HIDWORD(v125[7]) = 0;
      LODWORD(v125[8]) = 1;
      goto LABEL_252;
    }
  }

  LODWORD(v125[8]) = v32 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen11 _referenceBounds];
    }

    HIDWORD(v125[7]) = currentDevice29 ^ 1;
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
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v125[6] + 4) = 0;
      goto LABEL_262;
    }
  }

  else
  {
    currentDevice13 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice13 userInterfaceIdiom])
    {
      HIDWORD(v125[6]) = 0;
      LODWORD(v125[7]) = 1;
      goto LABEL_262;
    }
  }

  LODWORD(v125[7]) = currentDevice29 ^ 1;
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

    HIDWORD(v125[6]) = currentDevice29 ^ 1;
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
    currentDevice14 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice14 userInterfaceIdiom])
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
      mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen13 _referenceBounds];
    }

    currentDevice29 = v37 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v125[5]) = currentDevice29;
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
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v125[4] + 4) = 0;
      goto LABEL_292;
    }
  }

  else
  {
    currentDevice15 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice15 userInterfaceIdiom])
    {
      HIDWORD(v125[4]) = 0;
      LODWORD(v125[5]) = 1;
      goto LABEL_292;
    }
  }

  LODWORD(v125[5]) = currentDevice29 ^ 1;
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

    HIDWORD(v125[4]) = currentDevice29 ^ 1;
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
    currentDevice16 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice16 userInterfaceIdiom])
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
      mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen15 _referenceBounds];
    }

    currentDevice29 = v41 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v125[3]) = currentDevice29;
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
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v125[2] + 4) = 0;
      goto LABEL_322;
    }
  }

  else
  {
    currentDevice17 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice17 userInterfaceIdiom])
    {
      HIDWORD(v125[2]) = 0;
      LODWORD(v125[3]) = 1;
      goto LABEL_322;
    }
  }

  LODWORD(v125[3]) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen16 _referenceBounds];
    }

    HIDWORD(v125[2]) = currentDevice29 ^ 1;
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
    currentDevice18 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice18 userInterfaceIdiom])
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
      mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen17 _referenceBounds];
    }

    currentDevice29 = v45 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v125[1]) = currentDevice29;
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
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(v125 + 4) = 0;
      goto LABEL_350;
    }
  }

  else
  {
    currentDevice19 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice19 userInterfaceIdiom])
    {
      HIDWORD(v125[0]) = 0;
      LODWORD(v125[1]) = 1;
      goto LABEL_350;
    }
  }

  LODWORD(v125[1]) = currentDevice29 ^ 1;
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

    HIDWORD(v125[0]) = currentDevice29 ^ 1;
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
    currentDevice20 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice20 userInterfaceIdiom])
    {
      HIDWORD(v124) = 0;
      LODWORD(v125[0]) = 1;
      goto LABEL_368;
    }
  }

  LODWORD(v125[0]) = v47 ^ 1;
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

    HIDWORD(v124) = currentDevice29 ^ 1;
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
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
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
    currentDevice21 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice21 userInterfaceIdiom])
    {
      HIDWORD(v123) = 0;
      LODWORD(v124) = 1;
      goto LABEL_378;
    }
  }

  LODWORD(v124) = currentDevice29 ^ 1;
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

    HIDWORD(v123) = currentDevice29 ^ 1;
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
    currentDevice22 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice22 userInterfaceIdiom])
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
      mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen21 _referenceBounds];
    }

    currentDevice29 = v51 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v122) = currentDevice29;
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
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
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
    currentDevice23 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice23 userInterfaceIdiom])
    {
      HIDWORD(v121) = 0;
      LODWORD(v122) = 1;
      goto LABEL_402;
    }
  }

  LODWORD(v122) = currentDevice29 ^ 1;
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

    HIDWORD(v121) = currentDevice29 ^ 1;
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
    currentDevice24 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice24 userInterfaceIdiom])
    {
      HIDWORD(v120) = 0;
      LODWORD(v121) = 1;
      goto LABEL_422;
    }
  }

  LODWORD(v121) = v55 ^ 1;
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

    HIDWORD(v120) = currentDevice29 ^ 1;
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
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
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
    currentDevice25 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice25 userInterfaceIdiom])
    {
      HIDWORD(v119) = 0;
      LODWORD(v120) = 1;
      goto LABEL_432;
    }
  }

  LODWORD(v120) = currentDevice29 ^ 1;
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

    HIDWORD(v119) = currentDevice29 ^ 1;
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
    currentDevice26 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice26 userInterfaceIdiom])
    {
      v118 = 0;
      LODWORD(v119) = 1;
      goto LABEL_456;
    }
  }

  LODWORD(v119) = v58 ^ 1;
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

    v118 = currentDevice29 ^ 1;
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
    currentDevice27 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice27 userInterfaceIdiom])
    {
      v14 = 0;
      v13 = 1;
      goto LABEL_466;
    }
  }

  v13 = v59 ^ 1;
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

    v14 = currentDevice29 ^ 1;
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
  currentDevice29 = __sb__runningInSpringBoard();
  if (!currentDevice29)
  {
    currentDevice28 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice28 userInterfaceIdiom])
    {
      v16 = 0;
      v15 = 1;
      goto LABEL_476;
    }

LABEL_472:
    v15 = currentDevice29 ^ 1;
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

    v16 = currentDevice29 ^ 1;
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
  mainScreen28 = __sb__runningInSpringBoard();
  if (mainScreen28)
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
    currentDevice29 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice29 userInterfaceIdiom])
    {
      v17 = 1;
      goto LABEL_492;
    }
  }

  v17 = mainScreen28 ^ 1;
  v64 = __sb__runningInSpringBoard();
  if (v64)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen28 _referenceBounds];
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
  productIdentifier = [(BCBatteryDevice *)self->_externalBattery productIdentifier];
  if (productIdentifier != *MEMORY[0x277CF0DB8])
  {
    if (productIdentifier == *MEMORY[0x277CF0DC0])
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
    {
      v132 = 0x100000000;
      goto LABEL_14;
    }
  }

  HIDWORD(v132) = v5 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice28 = __sb__runningInSpringBoard();
    if (currentDevice28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen _referenceBounds];
    }

    LODWORD(v132) = currentDevice28 ^ 1;
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
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice2 userInterfaceIdiom] != 1)
    {
      v131 = 0x100000000;
      goto LABEL_23;
    }
  }

  HIDWORD(v131) = v8 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice28 = __sb__runningInSpringBoard();
    if (currentDevice28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 _referenceBounds];
    }

    LODWORD(v131) = currentDevice28 ^ 1;
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
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice3 userInterfaceIdiom] != 1)
    {
      v130 = 0x100000000;
      goto LABEL_32;
    }
  }

  HIDWORD(v130) = v9 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice28 = __sb__runningInSpringBoard();
    if (currentDevice28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen3 _referenceBounds];
    }

    LODWORD(v130) = currentDevice28 ^ 1;
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
    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice4 userInterfaceIdiom] != 1)
    {
      v129 = 0x100000000;
      goto LABEL_41;
    }
  }

  HIDWORD(v129) = v10 ^ 1;
  currentDevice28 = __sb__runningInSpringBoard();
  if (currentDevice28)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen4 _referenceBounds];
  }

  LODWORD(v129) = currentDevice28 ^ 1;
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
    currentDevice5 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice5 userInterfaceIdiom] != 1)
    {
      v128 = 0x100000000;
      goto LABEL_51;
    }
  }

  HIDWORD(v128) = v12 ^ 1;
  currentDevice28 = __sb__runningInSpringBoard();
  if (currentDevice28)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen5 _referenceBounds];
  }

  LODWORD(v128) = currentDevice28 ^ 1;
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
    currentDevice6 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice6 userInterfaceIdiom] != 1)
    {
      v127 = 0x100000000;
      goto LABEL_187;
    }
  }

  HIDWORD(v127) = v19 ^ 1;
  currentDevice28 = __sb__runningInSpringBoard();
  if (currentDevice28)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen6 _referenceBounds];
  }

  LODWORD(v127) = currentDevice28 ^ 1;
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
  currentDevice28 = __sb__runningInSpringBoard();
  if (currentDevice28)
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
    HIDWORD(v126[12]) = currentDevice28 ^ 1;
    goto LABEL_496;
  }

  currentDevice7 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice7 userInterfaceIdiom] == 1)
  {
    goto LABEL_195;
  }

LABEL_189:
  HIDWORD(v126[12]) = currentDevice28 ^ 1;
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
    currentDevice8 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice8 userInterfaceIdiom])
    {
      HIDWORD(v126[11]) = 0;
      LODWORD(v126[12]) = 1;
      goto LABEL_203;
    }
  }

  LODWORD(v126[12]) = v27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice28 = __sb__runningInSpringBoard();
    if (currentDevice28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen7 _referenceBounds];
    }

    HIDWORD(v126[11]) = currentDevice28 ^ 1;
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
  currentDevice28 = __sb__runningInSpringBoard();
  currentDevice16 = &off_21EC94000;
  if (currentDevice28)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v126[10] + 4) = 0;
      goto LABEL_213;
    }
  }

  else
  {
    currentDevice9 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice9 userInterfaceIdiom])
    {
      HIDWORD(v126[10]) = 0;
      LODWORD(v126[11]) = 1;
      goto LABEL_213;
    }
  }

  LODWORD(v126[11]) = currentDevice28 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice28 = __sb__runningInSpringBoard();
    if (currentDevice28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen8 _referenceBounds];
    }

    HIDWORD(v126[10]) = currentDevice28 ^ 1;
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
    currentDevice10 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice10 userInterfaceIdiom])
    {
      HIDWORD(v126[9]) = 0;
      LODWORD(v126[10]) = 1;
      goto LABEL_231;
    }
  }

  LODWORD(v126[10]) = v29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice28 = __sb__runningInSpringBoard();
    if (currentDevice28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen9 _referenceBounds];
    }

    HIDWORD(v126[9]) = currentDevice28 ^ 1;
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
  currentDevice28 = __sb__runningInSpringBoard();
  if (currentDevice28)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v126[8] + 4) = 0;
      goto LABEL_241;
    }
  }

  else
  {
    currentDevice11 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice11 userInterfaceIdiom])
    {
      HIDWORD(v126[8]) = 0;
      LODWORD(v126[9]) = 1;
      goto LABEL_241;
    }
  }

  LODWORD(v126[9]) = currentDevice28 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice28 = __sb__runningInSpringBoard();
    if (currentDevice28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen10 _referenceBounds];
    }

    HIDWORD(v126[8]) = currentDevice28 ^ 1;
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
    currentDevice12 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice12 userInterfaceIdiom])
    {
      HIDWORD(v126[7]) = 0;
      LODWORD(v126[8]) = 1;
      goto LABEL_255;
    }
  }

  LODWORD(v126[8]) = v32 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice28 = __sb__runningInSpringBoard();
    if (currentDevice28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen11 _referenceBounds];
    }

    HIDWORD(v126[7]) = currentDevice28 ^ 1;
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
  currentDevice28 = __sb__runningInSpringBoard();
  if (currentDevice28)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v126[6] + 4) = 0;
      goto LABEL_265;
    }
  }

  else
  {
    currentDevice13 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice13 userInterfaceIdiom])
    {
      HIDWORD(v126[6]) = 0;
      LODWORD(v126[7]) = 1;
      goto LABEL_265;
    }
  }

  LODWORD(v126[7]) = currentDevice28 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice28 = __sb__runningInSpringBoard();
    if (currentDevice28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen12 _referenceBounds];
    }

    HIDWORD(v126[6]) = currentDevice28 ^ 1;
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
    currentDevice14 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice14 userInterfaceIdiom])
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
      mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen13 _referenceBounds];
    }

    currentDevice28 = v37 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v126[5]) = currentDevice28;
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
  currentDevice28 = __sb__runningInSpringBoard();
  if (currentDevice28)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v38 = 0;
      currentDevice16 = 0;
      goto LABEL_295;
    }
  }

  else
  {
    currentDevice15 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice15 userInterfaceIdiom])
    {
      currentDevice16 = 0;
      v38 = 1;
      goto LABEL_295;
    }
  }

  v38 = currentDevice28 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice28 = __sb__runningInSpringBoard();
    if (currentDevice28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen14 _referenceBounds];
    }

    currentDevice16 = currentDevice28 ^ 1;
    BSSizeRoundForScale();
    if (v40 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_304;
    }
  }

  else
  {
    currentDevice16 = 0;
  }

LABEL_295:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    HIDWORD(v126[4]) = currentDevice16;
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
  HIDWORD(v126[4]) = currentDevice16;
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
    currentDevice16 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice16 userInterfaceIdiom])
    {
      v93 = currentDevice16;
      HIDWORD(v126[3]) = 0;
      LODWORD(v126[4]) = 1;
      goto LABEL_315;
    }
  }

  LODWORD(v126[4]) = v41 ^ 1;
  v93 = currentDevice16;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v42 = __sb__runningInSpringBoard();
    if (v42)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice16 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice16 _referenceBounds];
    }

    v86 = currentDevice16;
    currentDevice28 = v42 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v126[3]) = currentDevice28;
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
  currentDevice28 = __sb__runningInSpringBoard();
  currentDevice16 = &off_21EC94000;
  if (currentDevice28)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v126[2] + 4) = 0;
      goto LABEL_325;
    }
  }

  else
  {
    currentDevice17 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice17 userInterfaceIdiom])
    {
      HIDWORD(v126[2]) = 0;
      LODWORD(v126[3]) = 1;
      goto LABEL_325;
    }
  }

  LODWORD(v126[3]) = currentDevice28 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice28 = __sb__runningInSpringBoard();
    if (currentDevice28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen15 _referenceBounds];
    }

    HIDWORD(v126[2]) = currentDevice28 ^ 1;
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
    currentDevice18 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice18 userInterfaceIdiom])
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
      mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen16 _referenceBounds];
    }

    currentDevice28 = v46 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v126[1]) = currentDevice28;
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
  currentDevice28 = __sb__runningInSpringBoard();
  if (currentDevice28)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(v126 + 4) = 0;
      goto LABEL_353;
    }
  }

  else
  {
    currentDevice19 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice19 userInterfaceIdiom])
    {
      HIDWORD(v126[0]) = 0;
      LODWORD(v126[1]) = 1;
      goto LABEL_353;
    }
  }

  LODWORD(v126[1]) = currentDevice28 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice28 = __sb__runningInSpringBoard();
    if (currentDevice28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen17 _referenceBounds];
    }

    HIDWORD(v126[0]) = currentDevice28 ^ 1;
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
    currentDevice20 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice20 userInterfaceIdiom])
    {
      HIDWORD(v125) = 0;
      LODWORD(v126[0]) = 1;
      goto LABEL_371;
    }
  }

  LODWORD(v126[0]) = v48 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice28 = __sb__runningInSpringBoard();
    if (currentDevice28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen18 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen18 _referenceBounds];
    }

    HIDWORD(v125) = currentDevice28 ^ 1;
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
  currentDevice28 = __sb__runningInSpringBoard();
  if (currentDevice28)
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
    currentDevice21 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice21 userInterfaceIdiom])
    {
      HIDWORD(v124) = 0;
      LODWORD(v125) = 1;
      goto LABEL_381;
    }
  }

  LODWORD(v125) = currentDevice28 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice28 = __sb__runningInSpringBoard();
    if (currentDevice28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen19 _referenceBounds];
    }

    HIDWORD(v124) = currentDevice28 ^ 1;
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
    currentDevice22 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice22 userInterfaceIdiom])
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
      mainScreen20 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen20 _referenceBounds];
    }

    currentDevice28 = v52 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v123) = currentDevice28;
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
  currentDevice28 = __sb__runningInSpringBoard();
  if (currentDevice28)
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
    currentDevice23 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice23 userInterfaceIdiom])
    {
      HIDWORD(v122) = 0;
      LODWORD(v123) = 1;
      goto LABEL_405;
    }
  }

  LODWORD(v123) = currentDevice28 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice28 = __sb__runningInSpringBoard();
    if (currentDevice28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen21 _referenceBounds];
    }

    HIDWORD(v122) = currentDevice28 ^ 1;
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
    currentDevice24 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice24 userInterfaceIdiom])
    {
      HIDWORD(v121) = 0;
      LODWORD(v122) = 1;
      goto LABEL_425;
    }
  }

  LODWORD(v122) = v56 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice28 = __sb__runningInSpringBoard();
    if (currentDevice28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen22 _referenceBounds];
    }

    HIDWORD(v121) = currentDevice28 ^ 1;
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
  currentDevice28 = __sb__runningInSpringBoard();
  if (currentDevice28)
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
    currentDevice25 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice25 userInterfaceIdiom])
    {
      HIDWORD(v120) = 0;
      LODWORD(v121) = 1;
      goto LABEL_435;
    }
  }

  LODWORD(v121) = currentDevice28 ^ 1;
  if (SBFEffectiveHomeButtonType() != 2)
  {
    HIDWORD(v120) = 0;
    goto LABEL_435;
  }

  currentDevice28 = __sb__runningInSpringBoard();
  if (currentDevice28)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen23 _referenceBounds];
  }

  HIDWORD(v120) = currentDevice28 ^ 1;
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
    currentDevice26 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice26 userInterfaceIdiom])
    {
      v119 = 0;
      LODWORD(v120) = 1;
      goto LABEL_460;
    }
  }

  LODWORD(v120) = v59 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice28 = __sb__runningInSpringBoard();
    if (currentDevice28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen24 _referenceBounds];
    }

    v119 = currentDevice28 ^ 1;
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
    currentDevice27 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice27 userInterfaceIdiom])
    {
      v14 = 0;
      v13 = 1;
      goto LABEL_470;
    }
  }

  v13 = v60 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice28 = __sb__runningInSpringBoard();
    if (currentDevice28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen25 _referenceBounds];
    }

    v14 = currentDevice28 ^ 1;
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
  currentDevice28 = __sb__runningInSpringBoard();
  if (!currentDevice28)
  {
    currentDevice16 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice16 userInterfaceIdiom])
    {
      v16 = 0;
      v15 = 1;
      goto LABEL_480;
    }

LABEL_476:
    v15 = currentDevice28 ^ 1;
    currentDevice28 = __sb__runningInSpringBoard();
    if (currentDevice28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen26 _referenceBounds];
    }

    v16 = currentDevice28 ^ 1;
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
  mainScreen27 = __sb__runningInSpringBoard();
  if (mainScreen27)
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
    currentDevice28 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice28 userInterfaceIdiom])
    {
      v6 = 0.0;
      v17 = 1;
      goto LABEL_496;
    }
  }

  v17 = mainScreen27 ^ 1;
  v65 = __sb__runningInSpringBoard();
  if (v65)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen27 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen27 _referenceBounds];
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
  productIdentifier = [(BCBatteryDevice *)self->_externalBattery productIdentifier];
  if (productIdentifier != *MEMORY[0x277CF0DB8])
  {
    if (productIdentifier == *MEMORY[0x277CF0DC0])
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
    {
      v142 = 0x100000000;
      goto LABEL_14;
    }
  }

  HIDWORD(v142) = v4 ^ 1;
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

    LODWORD(v142) = currentDevice29 ^ 1;
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
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice2 userInterfaceIdiom] != 1)
    {
      v141 = 0x100000000;
      goto LABEL_23;
    }
  }

  HIDWORD(v141) = v7 ^ 1;
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

    LODWORD(v141) = currentDevice29 ^ 1;
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
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice3 userInterfaceIdiom] != 1)
    {
      v140 = 0x100000000;
      goto LABEL_32;
    }
  }

  HIDWORD(v140) = v8 ^ 1;
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

    LODWORD(v140) = currentDevice29 ^ 1;
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
    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice4 userInterfaceIdiom] != 1)
    {
      v139 = 0x100000000;
      goto LABEL_41;
    }
  }

  HIDWORD(v139) = v9 ^ 1;
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

  LODWORD(v139) = currentDevice29 ^ 1;
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
    currentDevice5 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice5 userInterfaceIdiom] != 1)
    {
      *&v138[12] = 0;
      *&v138[16] = 1;
      goto LABEL_51;
    }
  }

  *&v138[16] = v11 ^ 1;
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

  *&v138[12] = currentDevice29 ^ 1;
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
    currentDevice6 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice6 userInterfaceIdiom] != 1)
    {
      *&v138[4] = 0;
      *&v138[8] = 1;
      goto LABEL_187;
    }
  }

  *&v138[8] = v19 ^ 1;
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

  *&v138[4] = currentDevice29 ^ 1;
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
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
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
    *v138 = currentDevice29 ^ 1;
    goto LABEL_496;
  }

  currentDevice7 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice7 userInterfaceIdiom] == 1)
  {
    goto LABEL_195;
  }

LABEL_189:
  *v138 = currentDevice29 ^ 1;
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
    currentDevice8 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice8 userInterfaceIdiom])
    {
      v137 = 0x100000000;
      goto LABEL_203;
    }
  }

  HIDWORD(v137) = v27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen7 _referenceBounds];
    }

    LODWORD(v137) = currentDevice29 ^ 1;
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
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v136 = 0;
      goto LABEL_213;
    }
  }

  else
  {
    currentDevice9 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice9 userInterfaceIdiom])
    {
      v136 = 0x100000000;
      goto LABEL_213;
    }
  }

  HIDWORD(v136) = currentDevice29 ^ 1;
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

    LODWORD(v136) = currentDevice29 ^ 1;
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
    currentDevice10 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice10 userInterfaceIdiom])
    {
      v135 = 0x100000000;
      goto LABEL_231;
    }
  }

  HIDWORD(v135) = v29 ^ 1;
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

    LODWORD(v135) = currentDevice29 ^ 1;
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
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v134 = 0;
      goto LABEL_241;
    }
  }

  else
  {
    currentDevice11 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice11 userInterfaceIdiom])
    {
      v134 = 0x100000000;
      goto LABEL_241;
    }
  }

  HIDWORD(v134) = currentDevice29 ^ 1;
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

    LODWORD(v134) = currentDevice29 ^ 1;
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
    currentDevice12 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice12 userInterfaceIdiom])
    {
      v133 = 0x100000000;
      goto LABEL_255;
    }
  }

  HIDWORD(v133) = v32 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen11 _referenceBounds];
    }

    LODWORD(v133) = currentDevice29 ^ 1;
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
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v132 = 0;
      goto LABEL_265;
    }
  }

  else
  {
    currentDevice13 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice13 userInterfaceIdiom])
    {
      v132 = 0x100000000;
      goto LABEL_265;
    }
  }

  HIDWORD(v132) = currentDevice29 ^ 1;
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

    LODWORD(v132) = currentDevice29 ^ 1;
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
    currentDevice14 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice14 userInterfaceIdiom])
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
      mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen13 _referenceBounds];
    }

    currentDevice29 = v37 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v131) = currentDevice29;
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
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v130 = 0;
      goto LABEL_295;
    }
  }

  else
  {
    currentDevice15 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice15 userInterfaceIdiom])
    {
      v130 = 0x100000000;
      goto LABEL_295;
    }
  }

  HIDWORD(v130) = currentDevice29 ^ 1;
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

    LODWORD(v130) = currentDevice29 ^ 1;
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
    currentDevice16 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice16 userInterfaceIdiom])
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
      mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen15 _referenceBounds];
    }

    currentDevice29 = v41 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v129) = currentDevice29;
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
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v128 = 0;
      goto LABEL_325;
    }
  }

  else
  {
    currentDevice17 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice17 userInterfaceIdiom])
    {
      v128 = 0x100000000;
      goto LABEL_325;
    }
  }

  HIDWORD(v128) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen16 _referenceBounds];
    }

    LODWORD(v128) = currentDevice29 ^ 1;
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
    currentDevice18 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice18 userInterfaceIdiom])
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
      mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen17 _referenceBounds];
    }

    currentDevice29 = v45 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v127) = currentDevice29;
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
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v126 = 0;
      goto LABEL_353;
    }
  }

  else
  {
    currentDevice19 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice19 userInterfaceIdiom])
    {
      v126 = 0x100000000;
      goto LABEL_353;
    }
  }

  HIDWORD(v126) = currentDevice29 ^ 1;
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

    LODWORD(v126) = currentDevice29 ^ 1;
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
    currentDevice20 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice20 userInterfaceIdiom])
    {
      HIDWORD(v124) = 0;
      v125 = 1;
      goto LABEL_371;
    }
  }

  v125 = v47 ^ 1;
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

    HIDWORD(v124) = currentDevice29 ^ 1;
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
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
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
    currentDevice21 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice21 userInterfaceIdiom])
    {
      HIDWORD(v123) = 0;
      LODWORD(v124) = 1;
      goto LABEL_381;
    }
  }

  LODWORD(v124) = currentDevice29 ^ 1;
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

    HIDWORD(v123) = currentDevice29 ^ 1;
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
    currentDevice22 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice22 userInterfaceIdiom])
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
      mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen21 _referenceBounds];
    }

    currentDevice29 = v51 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v122) = currentDevice29;
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
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
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
    currentDevice23 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice23 userInterfaceIdiom])
    {
      HIDWORD(v121) = 0;
      LODWORD(v122) = 1;
      goto LABEL_405;
    }
  }

  LODWORD(v122) = currentDevice29 ^ 1;
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

    HIDWORD(v121) = currentDevice29 ^ 1;
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
    currentDevice24 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice24 userInterfaceIdiom])
    {
      HIDWORD(v120) = 0;
      LODWORD(v121) = 1;
      goto LABEL_425;
    }
  }

  LODWORD(v121) = v55 ^ 1;
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

    HIDWORD(v120) = currentDevice29 ^ 1;
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
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
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
    currentDevice25 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice25 userInterfaceIdiom])
    {
      HIDWORD(v119) = 0;
      LODWORD(v120) = 1;
      goto LABEL_435;
    }
  }

  LODWORD(v120) = currentDevice29 ^ 1;
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

    HIDWORD(v119) = currentDevice29 ^ 1;
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
    currentDevice26 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice26 userInterfaceIdiom])
    {
      v12 = 0;
      LODWORD(v119) = 1;
      goto LABEL_460;
    }
  }

  LODWORD(v119) = v58 ^ 1;
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

    v12 = currentDevice29 ^ 1;
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
    currentDevice27 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice27 userInterfaceIdiom])
    {
      v14 = 0;
      v13 = 1;
      goto LABEL_470;
    }
  }

  v13 = v59 ^ 1;
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

    v14 = currentDevice29 ^ 1;
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
  currentDevice29 = __sb__runningInSpringBoard();
  if (!currentDevice29)
  {
    currentDevice28 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice28 userInterfaceIdiom])
    {
      v16 = 0;
      v15 = 1;
      goto LABEL_480;
    }

LABEL_476:
    v15 = currentDevice29 ^ 1;
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

    v16 = currentDevice29 ^ 1;
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
  mainScreen28 = __sb__runningInSpringBoard();
  if (mainScreen28)
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
    currentDevice29 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice29 userInterfaceIdiom])
    {
      v5 = 0.0;
      v17 = 1;
      goto LABEL_496;
    }
  }

  v17 = mainScreen28 ^ 1;
  v64 = __sb__runningInSpringBoard();
  if (v64)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen28 _referenceBounds];
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