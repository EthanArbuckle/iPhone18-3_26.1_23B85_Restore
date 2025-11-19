@interface CCUIFluidPagingSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation CCUIFluidPagingSettings

- (void)setDefaultValues
{
  v22.receiver = self;
  v22.super_class = CCUIFluidPagingSettings;
  [(PTSettings *)&v22 setDefaultValues];
  v3 = [(CCUIFluidPagingSettings *)self scrollAnimationSettings];
  [v3 setDefaultValues];

  v4 = [(CCUIFluidPagingSettings *)self scrollAnimationSettings];
  [v4 setDampingRatio:0.7];

  v5 = [(CCUIFluidPagingSettings *)self scrollAnimationSettings];
  [v5 setResponse:0.4];

  v6 = [(CCUIFluidPagingSettings *)self scrollAnimationSettings];
  [v6 setTrackingDampingRatio:1.0];

  v7 = [(CCUIFluidPagingSettings *)self scrollAnimationSettings];
  [v7 setTrackingResponse:0.1];

  v8 = [(CCUIFluidPagingSettings *)self scrollAnimationSettings];
  v23 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v8 setFrameRateRange:2031617 highFrameRateReason:{*&v23.minimum, *&v23.maximum, *&v23.preferred}];

  v9 = [(CCUIFluidPagingSettings *)self scrollSettlingAnimationSettings];
  [v9 setDefaultValues];

  v10 = [(CCUIFluidPagingSettings *)self scrollSettlingAnimationSettings];
  [v10 setDampingRatio:0.8];

  v11 = [(CCUIFluidPagingSettings *)self scrollSettlingAnimationSettings];
  [v11 setRetargetImpulse:0.04];

  v12 = [(CCUIFluidPagingSettings *)self scrollSettlingAnimationSettings];
  [v12 setResponse:0.5];

  v13 = [(CCUIFluidPagingSettings *)self scrollSettlingAnimationSettings];
  v24 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v13 setFrameRateRange:2031617 highFrameRateReason:{*&v24.minimum, *&v24.maximum, *&v24.preferred}];

  v14 = [(CCUIFluidPagingSettings *)self stretchAnimationSettings];
  [v14 setDefaultValues];

  v15 = [(CCUIFluidPagingSettings *)self stretchAnimationSettings];
  [v15 setDampingRatio:0.75];

  v16 = [(CCUIFluidPagingSettings *)self stretchAnimationSettings];
  [v16 setResponse:0.35];

  v17 = [(CCUIFluidPagingSettings *)self stretchAnimationSettings];
  v25 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v17 setFrameRateRange:2031617 highFrameRateReason:{*&v25.minimum, *&v25.maximum, *&v25.preferred}];

  [(CCUIFluidPagingSettings *)self setVelocityForMaxStretch:1000.0];
  [(CCUIFluidPagingSettings *)self setMaxVelocityStretchScaleMagnitudeForPages:0.0];
  [(CCUIFluidPagingSettings *)self setMaxVelocityStretchScaleMagnitudeForModules:0.0];
  [(CCUIFluidPagingSettings *)self setMaxVelocityStretchScaleScalarMagnitudeForPages:0.03];
  [(CCUIFluidPagingSettings *)self setMaxVelocityStretchScaleScalarMagnitudeForModules:0.05];
  [(CCUIFluidPagingSettings *)self setVelocityStretchPercentageQuantum:0.01];
  v18 = [(CCUIFluidPagingSettings *)self velocityModuleSpreadAnimationSettings];
  [v18 setDefaultValues];

  v19 = [(CCUIFluidPagingSettings *)self velocityModuleSpreadAnimationSettings];
  [v19 setDampingRatio:0.8];

  v20 = [(CCUIFluidPagingSettings *)self velocityModuleSpreadAnimationSettings];
  [v20 setResponse:0.35];

  v21 = [(CCUIFluidPagingSettings *)self velocityModuleSpreadAnimationSettings];
  v26 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v21 setFrameRateRange:2031617 highFrameRateReason:{*&v26.minimum, *&v26.maximum, *&v26.preferred}];

  [(CCUIFluidPagingSettings *)self setVelocityForMaxModuleSpread:1000.0];
  [(CCUIFluidPagingSettings *)self setMaxVelocityModuleSpreadDistance:5.0];
  [(CCUIFluidPagingSettings *)self setApplyVelocityModuleSpreadWhileInteractive:1];
  [(CCUIFluidPagingSettings *)self setApplyVelocityModuleSpreadWhileSettling:1];
  [(CCUIFluidPagingSettings *)self setVelocityModuleSpreadPercentageQuantum:0.01];
}

+ (id)settingsControllerModule
{
  v56[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D431E0] rowWithTitle:@"Interactive Scroll Translation" childSettingsKeyPath:@"scrollAnimationSettings"];
  v56[0] = v2;
  v3 = [MEMORY[0x277D431E0] rowWithTitle:@"Scroll Settling" childSettingsKeyPath:@"scrollSettlingAnimationSettings"];
  v56[1] = v3;
  v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];

  v50 = [MEMORY[0x277D43218] sectionWithRows:v51 title:@"Scrolling"];
  v47 = [MEMORY[0x277D431E0] rowWithTitle:@"Stretch Animation" childSettingsKeyPath:@"stretchAnimationSettings"];
  v55[0] = v47;
  v45 = [MEMORY[0x277D431F0] rowWithTitle:@"Velocity For Max Stretch" valueKeyPath:@"velocityForMaxStretch"];
  v43 = [v45 between:1.0 and:5000.0];
  v41 = [v43 precision:0];
  v55[1] = v41;
  v40 = [MEMORY[0x277D431F0] rowWithTitle:@"Page Max Velocity Stretch" valueKeyPath:@"maxVelocityStretchScaleMagnitudeForPages"];
  v39 = [v40 between:0.0 and:1.0];
  v38 = [v39 precision:3];
  v55[2] = v38;
  v37 = [MEMORY[0x277D431F0] rowWithTitle:@"Module Max Velocity Stretch" valueKeyPath:@"maxVelocityStretchScaleMagnitudeForModules"];
  v36 = [v37 between:0.0 and:1.0];
  v35 = [v36 precision:3];
  v55[3] = v35;
  v4 = [MEMORY[0x277D431F0] rowWithTitle:@"Page Max Velocity Stretch Scalar" valueKeyPath:@"maxVelocityStretchScaleScalarMagnitudeForPages"];
  v5 = [v4 between:0.0 and:1.0];
  v6 = [v5 precision:3];
  v55[4] = v6;
  v7 = [MEMORY[0x277D431F0] rowWithTitle:@"Module Max Velocity Stretch Scalar" valueKeyPath:@"maxVelocityStretchScaleScalarMagnitudeForModules"];
  v8 = [v7 between:0.0 and:1.0];
  v9 = [v8 precision:3];
  v55[5] = v9;
  v10 = [MEMORY[0x277D431F0] rowWithTitle:@"Velocity Stretch % Minimum Increment" valueKeyPath:@"velocityStretchPercentageQuantum"];
  v11 = [v10 between:0.0 and:1.0];
  v12 = [v11 precision:3];
  v55[6] = v12;
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:7];

  v48 = [MEMORY[0x277D43218] sectionWithRows:v49 title:@"Stretching"];
  v46 = [MEMORY[0x277D431E0] rowWithTitle:@"Module Spread Animation" childSettingsKeyPath:@"velocityModuleSpreadAnimationSettings"];
  v54[0] = v46;
  v44 = [MEMORY[0x277D431F0] rowWithTitle:@"Velocity For Max Module Spread" valueKeyPath:@"velocityForMaxModuleSpread"];
  v42 = [v44 between:0.0 and:5000.0];
  v13 = [v42 precision:0];
  v54[1] = v13;
  v14 = [MEMORY[0x277D431F0] rowWithTitle:@"Max Module Spread Distance" valueKeyPath:@"maxVelocityModuleSpreadDistance"];
  v15 = [v14 between:0.0 and:200.0];
  v16 = [v15 precision:0];
  v54[2] = v16;
  v17 = [MEMORY[0x277D431F0] rowWithTitle:@"Module Spread % Minimum Increment" valueKeyPath:@"velocityModuleSpreadPercentageQuantum"];
  v18 = [v17 between:0.0 and:1.0];
  v19 = [v18 precision:3];
  v54[3] = v19;
  v20 = [MEMORY[0x277D432A0] rowWithTitle:@"Allow While Interactive" valueKeyPath:@"applyVelocityModuleSpreadWhileInteractive"];
  v54[4] = v20;
  v21 = [MEMORY[0x277D432A0] rowWithTitle:@"Allow While Settling" valueKeyPath:@"applyVelocityModuleSpreadWhileSettling"];
  v54[5] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:6];

  v23 = v22;
  v24 = [MEMORY[0x277D43218] sectionWithRows:v22 title:@"Velocity-Based Module Spread"];
  v25 = MEMORY[0x277D431A8];
  v26 = [MEMORY[0x277D43238] action];
  v27 = [v25 rowWithTitle:@"Restore Defaults" action:v26];

  v28 = MEMORY[0x277D43218];
  v53 = v27;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
  v30 = [v28 sectionWithRows:v29];

  v31 = MEMORY[0x277D43218];
  v52[0] = v50;
  v52[1] = v48;
  v52[2] = v24;
  v52[3] = v30;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:4];
  v33 = [v31 moduleWithTitle:@"Fluid Paging" contents:v32];

  return v33;
}

@end