@interface CSHorizontalScrollFailureRecognizerSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation CSHorizontalScrollFailureRecognizerSettings

- (void)setDefaultValues
{
  [(CSHorizontalScrollFailureRecognizerSettings *)self setEnabled:1];
  [(CSHorizontalScrollFailureRecognizerSettings *)self setViewDebugArea:0];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = 130;
  }

  else
  {
    v5 = 15;
  }

  [(CSHorizontalScrollFailureRecognizerSettings *)self setMaxAllowableVerticalOffset:v5];
  [(CSHorizontalScrollFailureRecognizerSettings *)self setTopAngle:34.0];

  [(CSHorizontalScrollFailureRecognizerSettings *)self setBottomAngle:34.0];
}

+ (id)settingsControllerModule
{
  v22[3] = *MEMORY[0x277D85DE8];
  v19 = [MEMORY[0x277D432A0] rowWithTitle:@"Failure Recognizer Enabled?" valueKeyPath:@"enabled"];
  v2 = [MEMORY[0x277D432A0] rowWithTitle:@"View Debug Area" valueKeyPath:@"viewDebugArea"];
  v3 = [MEMORY[0x277D43298] rowWithTitle:@"Max Vertical Offset" valueKeyPath:@"maxAllowableVerticalOffset"];
  v4 = [v3 minValue:0.0 maxValue:480.0];

  v5 = [MEMORY[0x277D43298] rowWithTitle:@"Max Top Angle" valueKeyPath:@"topAngle"];
  v6 = [v5 minValue:0.0 maxValue:90.0];

  v7 = [MEMORY[0x277D43298] rowWithTitle:@"Max Bottom Angle" valueKeyPath:@"bottomAngle"];
  v8 = [v7 minValue:0.0 maxValue:90.0];

  v9 = MEMORY[0x277D43218];
  v22[0] = v19;
  v22[1] = v2;
  v22[2] = v4;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v11 = [v9 sectionWithRows:v10];

  v12 = MEMORY[0x277D43218];
  v21[0] = v6;
  v21[1] = v8;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v14 = [v12 sectionWithRows:v13];

  v15 = MEMORY[0x277D43218];
  v20[0] = v11;
  v20[1] = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v17 = [v15 moduleWithTitle:@"Slide To Unlock Failure Recognizer Settings" contents:v16];

  return v17;
}

@end