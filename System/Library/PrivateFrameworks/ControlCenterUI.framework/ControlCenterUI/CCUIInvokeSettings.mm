@interface CCUIInvokeSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation CCUIInvokeSettings

- (void)setDefaultValues
{
  v21.receiver = self;
  v21.super_class = CCUIInvokeSettings;
  [(PTSettings *)&v21 setDefaultValues];
  scrollAnimationSettings = [(CCUIInvokeSettings *)self scrollAnimationSettings];
  [scrollAnimationSettings setDefaultValues];

  scrollAnimationSettings2 = [(CCUIInvokeSettings *)self scrollAnimationSettings];
  [scrollAnimationSettings2 setDampingRatio:0.7];

  scrollAnimationSettings3 = [(CCUIInvokeSettings *)self scrollAnimationSettings];
  [scrollAnimationSettings3 setResponse:0.4];

  scrollAnimationSettings4 = [(CCUIInvokeSettings *)self scrollAnimationSettings];
  [scrollAnimationSettings4 setTrackingDampingRatio:1.0];

  scrollAnimationSettings5 = [(CCUIInvokeSettings *)self scrollAnimationSettings];
  [scrollAnimationSettings5 setTrackingResponse:0.1];

  scrollAnimationSettings6 = [(CCUIInvokeSettings *)self scrollAnimationSettings];
  v22 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [scrollAnimationSettings6 setFrameRateRange:2031617 highFrameRateReason:{*&v22.minimum, *&v22.maximum, *&v22.preferred}];

  baseOverscrollSettlingAnimationSettings = [(CCUIInvokeSettings *)self baseOverscrollSettlingAnimationSettings];
  [baseOverscrollSettlingAnimationSettings setDefaultValues];

  baseOverscrollSettlingAnimationSettings2 = [(CCUIInvokeSettings *)self baseOverscrollSettlingAnimationSettings];
  [baseOverscrollSettlingAnimationSettings2 setDampingRatio:0.8];

  baseOverscrollSettlingAnimationSettings3 = [(CCUIInvokeSettings *)self baseOverscrollSettlingAnimationSettings];
  [baseOverscrollSettlingAnimationSettings3 setResponse:0.55];

  baseOverscrollSettlingAnimationSettings4 = [(CCUIInvokeSettings *)self baseOverscrollSettlingAnimationSettings];
  v23 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [baseOverscrollSettlingAnimationSettings4 setFrameRateRange:2031617 highFrameRateReason:{*&v23.minimum, *&v23.maximum, *&v23.preferred}];

  [(CCUIInvokeSettings *)self setMaxOverscrollDampingRatioAdjustment:0.3];
  [(CCUIInvokeSettings *)self setMaxOverscrollResponseAdjustment:0.2];
  overscrollRubberbandAnimationSettings = [(CCUIInvokeSettings *)self overscrollRubberbandAnimationSettings];
  [overscrollRubberbandAnimationSettings setDefaultValues];

  overscrollRubberbandAnimationSettings2 = [(CCUIInvokeSettings *)self overscrollRubberbandAnimationSettings];
  [overscrollRubberbandAnimationSettings2 setDampingRatio:0.5];

  overscrollRubberbandAnimationSettings3 = [(CCUIInvokeSettings *)self overscrollRubberbandAnimationSettings];
  [overscrollRubberbandAnimationSettings3 setResponse:0.44];

  overscrollRubberbandAnimationSettings4 = [(CCUIInvokeSettings *)self overscrollRubberbandAnimationSettings];
  v24 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [overscrollRubberbandAnimationSettings4 setFrameRateRange:2031617 highFrameRateReason:{*&v24.minimum, *&v24.maximum, *&v24.preferred}];

  [(CCUIInvokeSettings *)self setOverscrollRubberbandDistance:184.0];
  [(CCUIInvokeSettings *)self setLandscapeOverscrollRubberbandDistance:24.0];
  [(CCUIInvokeSettings *)self setMaxOverscrollRubberbandModuleSpreadDistance:15.0];
  stretchAnimationSettings = [(CCUIInvokeSettings *)self stretchAnimationSettings];
  [stretchAnimationSettings setDefaultValues];

  stretchAnimationSettings2 = [(CCUIInvokeSettings *)self stretchAnimationSettings];
  [stretchAnimationSettings2 setDampingRatio:0.75];

  stretchAnimationSettings3 = [(CCUIInvokeSettings *)self stretchAnimationSettings];
  [stretchAnimationSettings3 setResponse:0.35];

  stretchAnimationSettings4 = [(CCUIInvokeSettings *)self stretchAnimationSettings];
  v25 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [stretchAnimationSettings4 setFrameRateRange:2031617 highFrameRateReason:{*&v25.minimum, *&v25.maximum, *&v25.preferred}];

  [(CCUIInvokeSettings *)self setMaxOverscrollStretchScaleMagnitudeForPages:0.03];
  [(CCUIInvokeSettings *)self setMaxOverscrollStretchScaleMagnitudeForModules:0.05];
  [(CCUIInvokeSettings *)self setVelocityForMaxStretch:1000.0];
  [(CCUIInvokeSettings *)self setMaxVelocityStretchScaleMagnitudeForPages:0.0];
  [(CCUIInvokeSettings *)self setMaxVelocityStretchScaleMagnitudeForModules:0.0];
  [(CCUIInvokeSettings *)self setMaxVelocityStretchScaleScalarMagnitudeForPages:0.03];
  [(CCUIInvokeSettings *)self setMaxVelocityStretchScaleScalarMagnitudeForModules:0.05];
  [(CCUIInvokeSettings *)self setVelocityStretchPercentageQuantum:0.01];
  [(CCUIInvokeSettings *)self setVelocityInjectionMaxPercentageOfExpectedVelocityThreshold:0.15];
}

+ (id)settingsControllerModule
{
  v74[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D431E0] rowWithTitle:@"Scroll Translation" childSettingsKeyPath:@"scrollAnimationSettings"];
  v74[0] = v2;
  v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:1];

  v66 = [MEMORY[0x277D43218] sectionWithRows:v67 title:@"Scrolling"];
  v3 = [MEMORY[0x277D431E0] rowWithTitle:@"Base Settling Animation" childSettingsKeyPath:@"baseOverscrollSettlingAnimationSettings"];
  v73[0] = v3;
  v4 = [MEMORY[0x277D431F0] rowWithTitle:@"Max Damping Ratio Adjustment" valueKeyPath:@"maxOverscrollDampingRatioAdjustment"];
  v5 = [v4 between:0.0 and:1.0];
  v6 = [v5 precision:2];
  v73[1] = v6;
  v7 = [MEMORY[0x277D431F0] rowWithTitle:@"Max Response Adjustment" valueKeyPath:@"maxOverscrollResponseAdjustment"];
  v8 = [v7 between:0.0 and:1.0];
  v9 = [v8 precision:2];
  v73[2] = v9;
  v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:3];

  v64 = [MEMORY[0x277D43218] sectionWithRows:v65 title:@"Overscroll Settling"];
  v61 = [MEMORY[0x277D431E0] rowWithTitle:@"Rubber Band Animation" childSettingsKeyPath:@"overscrollRubberbandAnimationSettings"];
  v72[0] = v61;
  v10 = [MEMORY[0x277D431F0] rowWithTitle:@"Rubber Band Distance" valueKeyPath:@"overscrollRubberbandDistance"];
  v11 = [v10 between:0.0 and:200.0];
  v12 = [v11 precision:0];
  v72[1] = v12;
  v13 = [MEMORY[0x277D431F0] rowWithTitle:@"Landscape Rubber Band Distance" valueKeyPath:@"landscapeOverscrollRubberbandDistance"];
  v14 = [v13 between:0.0 and:200.0];
  v15 = [v14 precision:0];
  v72[2] = v15;
  v16 = [MEMORY[0x277D431F0] rowWithTitle:@"Max Module Spread Distance" valueKeyPath:@"maxOverscrollRubberbandModuleSpreadDistance"];
  v17 = [v16 between:0.0 and:200.0];
  v18 = [v17 precision:0];
  v72[3] = v18;
  v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:4];

  v62 = [MEMORY[0x277D43218] sectionWithRows:v63 title:@"Overscroll Rubber Band"];
  v60 = [MEMORY[0x277D431E0] rowWithTitle:@"Stretch Animation" childSettingsKeyPath:@"stretchAnimationSettings"];
  v71[0] = v60;
  v59 = [MEMORY[0x277D431F0] rowWithTitle:@"Page Max Overscroll Stretch" valueKeyPath:@"maxOverscrollStretchScaleMagnitudeForPages"];
  v58 = [v59 between:0.0 and:1.0];
  v57 = [v58 precision:3];
  v71[1] = v57;
  v56 = [MEMORY[0x277D431F0] rowWithTitle:@"Module Max Overscroll Stretch" valueKeyPath:@"maxOverscrollStretchScaleMagnitudeForModules"];
  v55 = [v56 between:0.0 and:1.0];
  v54 = [v55 precision:3];
  v71[2] = v54;
  v53 = [MEMORY[0x277D431F0] rowWithTitle:@"Velocity For Max Stretch" valueKeyPath:@"velocityForMaxStretch"];
  v52 = [v53 between:1.0 and:5000.0];
  v51 = [v52 precision:0];
  v71[3] = v51;
  v50 = [MEMORY[0x277D431F0] rowWithTitle:@"Page Max Velocity Stretch" valueKeyPath:@"maxVelocityStretchScaleMagnitudeForPages"];
  v49 = [v50 between:0.0 and:1.0];
  v48 = [v49 precision:3];
  v71[4] = v48;
  v46 = [MEMORY[0x277D431F0] rowWithTitle:@"Module Max Velocity Stretch" valueKeyPath:@"maxVelocityStretchScaleMagnitudeForModules"];
  v45 = [v46 between:0.0 and:1.0];
  v44 = [v45 precision:3];
  v71[5] = v44;
  v19 = [MEMORY[0x277D431F0] rowWithTitle:@"Page Max Velocity Stretch Scalar" valueKeyPath:@"maxVelocityStretchScaleScalarMagnitudeForPages"];
  v20 = [v19 between:0.0 and:1.0];
  v21 = [v20 precision:3];
  v71[6] = v21;
  v22 = [MEMORY[0x277D431F0] rowWithTitle:@"Module Max Velocity Stretch Scalar" valueKeyPath:@"maxVelocityStretchScaleScalarMagnitudeForModules"];
  v23 = [v22 between:0.0 and:1.0];
  v24 = [v23 precision:3];
  v71[7] = v24;
  v25 = [MEMORY[0x277D431F0] rowWithTitle:@"Velocity Stretch % Minimum Increment" valueKeyPath:@"velocityStretchPercentageQuantum"];
  v26 = [v25 between:0.0 and:1.0];
  v27 = [v26 precision:3];
  v71[8] = v27;
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:9];

  v28 = [MEMORY[0x277D43218] sectionWithRows:v47 title:@"Stretching"];
  v29 = [MEMORY[0x277D431F0] rowWithTitle:@"Max % Expected Velocity Threshold" valueKeyPath:@"velocityInjectionMaxPercentageOfExpectedVelocityThreshold"];
  v30 = [v29 between:0.0 and:1.0];
  v31 = [v30 precision:2];
  v70 = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];

  v33 = [MEMORY[0x277D43218] sectionWithRows:v32 title:@"Velocity Injection"];
  v34 = MEMORY[0x277D431A8];
  action = [MEMORY[0x277D43238] action];
  v36 = [v34 rowWithTitle:@"Restore Defaults" action:action];

  v37 = MEMORY[0x277D43218];
  v69 = v36;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
  v39 = [v37 sectionWithRows:v38];

  v40 = MEMORY[0x277D43218];
  v68[0] = v66;
  v68[1] = v64;
  v68[2] = v62;
  v68[3] = v28;
  v68[4] = v33;
  v68[5] = v39;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:6];
  v42 = [v40 moduleWithTitle:@"Invoke" contents:v41];

  return v42;
}

@end