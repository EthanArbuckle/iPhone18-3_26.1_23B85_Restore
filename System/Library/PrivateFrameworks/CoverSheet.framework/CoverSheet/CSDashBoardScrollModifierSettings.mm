@interface CSDashBoardScrollModifierSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation CSDashBoardScrollModifierSettings

- (void)setDefaultValues
{
  [(CSDashBoardScrollModifierSettings *)self setStrategy:4];
  [(CSDashBoardScrollModifierSettings *)self setMaxScrollDistance:320.0];
  [(CSDashBoardScrollModifierSettings *)self setCancelScrollingIfTooMuchDrag:1];
  [(CSDashBoardScrollModifierSettings *)self setAccumulatedDragThresholdPercentage:15.5555556];
  [(CSDashBoardScrollModifierSettings *)self setMaxDragFromVerticalPerFrame:8.0];
  [(CSDashBoardScrollModifierSettings *)self setPowerOfVerticalDirectionSine2:1.5];
  [(CSDashBoardScrollModifierSettings *)self setInertialMultiplierSigmoidBase:0.0];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = 48.0;
  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v5 = 12.0;
  }

  [(CSDashBoardScrollModifierSettings *)self setInertialMultiplierSigmoidRange:v5];
  [(CSDashBoardScrollModifierSettings *)self setInertialMultiplierSigmoidPivot:75.0];
  [(CSDashBoardScrollModifierSettings *)self setInertialMultiplierSigmoidAlpha:-0.04];
  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  v8 = 45.0;
  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v8 = 36.0;
  }

  [(CSDashBoardScrollModifierSettings *)self setMinPercentageSigmoidBase:v8];
  v9 = [MEMORY[0x277D75418] currentDevice];
  v10 = [v9 userInterfaceIdiom];

  v11 = 14.0;
  if ((v10 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v11 = 8.0;
  }

  [(CSDashBoardScrollModifierSettings *)self setMinPercentageSigmoidRange:v11];
  [(CSDashBoardScrollModifierSettings *)self setMinPercentageSigmoidPivot:75.0];

  [(CSDashBoardScrollModifierSettings *)self setMinPercentageSigmoidAlpha:0.04];
}

+ (id)settingsControllerModule
{
  v54[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D431B8] rowWithTitle:@"Strategy" valueKeyPath:@"strategy"];
  v3 = [v2 possibleValues:&unk_28307A1C0 titles:&unk_28307A1A8];
  v43 = [v3 valueValidator:0];

  v4 = [MEMORY[0x277D43298] rowWithTitle:@"Max Scroll Distance" valueKeyPath:@"maxScrollDistance"];
  v42 = [v4 minValue:0.0 maxValue:1000.0];

  v48 = [MEMORY[0x277D432A0] rowWithTitle:@"Cancel Scrolling If Too Much Drag" valueKeyPath:@"cancelScrollingIfTooMuchDrag"];
  v5 = [MEMORY[0x277D43298] rowWithTitle:@"Accumulated Drag Threshold Percentage" valueKeyPath:@"accumulatedDragThresholdPercentage"];
  v47 = [v5 minValue:0.0 maxValue:100.0];

  v6 = [MEMORY[0x277D43298] rowWithTitle:@"Max Drag From Veritical" valueKeyPath:@"maxDragFromVerticalPerFrame"];
  v46 = [v6 minValue:0.0 maxValue:20.0];

  v7 = [MEMORY[0x277D43298] rowWithTitle:@"Power of Vertical Direction Squared" valueKeyPath:@"powerOfVerticalDirectionSine2"];
  v41 = [v7 minValue:0.0 maxValue:10.0];

  v8 = [MEMORY[0x277D43298] rowWithTitle:@"Inertial Multiplier Sigmoid Base" valueKeyPath:@"inertialMultiplierSigmoidBase"];
  v45 = [v8 minValue:0.0 maxValue:100.0];

  v9 = [MEMORY[0x277D43298] rowWithTitle:@"Inertial Multiplier Sigmoid Range" valueKeyPath:@"inertialMultiplierSigmoidRange"];
  v44 = [v9 minValue:0.0 maxValue:100.0];

  v10 = [MEMORY[0x277D43298] rowWithTitle:@"Inertial Multiplier Sigmoid Pivot" valueKeyPath:@"inertialMultiplierSigmoidPivot"];
  v38 = [v10 minValue:0.0 maxValue:320.0];

  v11 = [MEMORY[0x277D43298] rowWithTitle:@"Inertial Multiplier Sigmoid Alpha" valueKeyPath:@"inertialMultiplierSigmoidAlpha"];
  v37 = [v11 minValue:-0.1 maxValue:0.1];

  v12 = [MEMORY[0x277D43298] rowWithTitle:@"Min Percentage Sigmoid Base" valueKeyPath:@"minPercentageSigmoidBase"];
  v34 = [v12 minValue:0.0 maxValue:100.0];

  v13 = [MEMORY[0x277D43298] rowWithTitle:@"Min Percentage Sigmoid Range" valueKeyPath:@"minPercentageSigmoidRange"];
  v40 = [v13 minValue:0.0 maxValue:100.0];

  v14 = [MEMORY[0x277D43298] rowWithTitle:@"Min Percentage Sigmoid Pivot" valueKeyPath:@"minPercentageSigmoidPivot"];
  v39 = [v14 minValue:0.0 maxValue:320.0];

  v15 = [MEMORY[0x277D43298] rowWithTitle:@"Min Percentage Sigmoid Alpha" valueKeyPath:@"minPercentageSigmoidAlpha"];
  v36 = [v15 minValue:-0.1 maxValue:0.1];

  v16 = MEMORY[0x277D43218];
  v54[0] = v43;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:1];
  v35 = [v16 sectionWithRows:v17];

  v18 = MEMORY[0x277D43218];
  v53 = v42;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
  v33 = [v18 sectionWithRows:v19];

  v20 = MEMORY[0x277D43218];
  v52[0] = v48;
  v52[1] = v47;
  v52[2] = v46;
  v52[3] = v41;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:4];
  v22 = [v20 sectionWithRows:v21];

  v23 = MEMORY[0x277D43218];
  v51[0] = v45;
  v51[1] = v44;
  v51[2] = v38;
  v51[3] = v37;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:4];
  v25 = [v23 sectionWithRows:v24];

  v26 = MEMORY[0x277D43218];
  v50[0] = v34;
  v50[1] = v40;
  v50[2] = v39;
  v50[3] = v36;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:4];
  v28 = [v26 sectionWithRows:v27];

  v29 = MEMORY[0x277D43218];
  v49[0] = v35;
  v49[1] = v33;
  v49[2] = v22;
  v49[3] = v25;
  v49[4] = v28;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:5];
  v31 = [v29 moduleWithTitle:@"DashBoard Scroll Modifier Settings" contents:v30];

  return v31;
}

@end