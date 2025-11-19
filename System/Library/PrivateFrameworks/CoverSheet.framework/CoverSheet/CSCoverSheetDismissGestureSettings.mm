@interface CSCoverSheetDismissGestureSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation CSCoverSheetDismissGestureSettings

- (void)setDefaultValues
{
  if (SBFEffectiveHomeButtonType() == 2 && !MGGetBoolAnswer())
  {
    v7 = 16.0;
    v4 = 1.0;
    v3 = 1;
    v5 = 64.0;
    v6 = 33.75;
  }

  else
  {
    v3 = 0;
    v4 = 0.0;
    v5 = 33.75;
    v6 = 72.0;
    v7 = 0.0;
  }

  [(CSCoverSheetDismissGestureSettings *)self setEdgeRegionSize:v6];
  [(CSCoverSheetDismissGestureSettings *)self setUsesGrapeFlags:v3];
  [(CSCoverSheetDismissGestureSettings *)self setRecognizeAlongEdge:v4];
  [(CSCoverSheetDismissGestureSettings *)self setExtendSwipeUpRegion:v3];
  [(CSCoverSheetDismissGestureSettings *)self setExtendedEdgeRegionSize:v5];

  [(CSCoverSheetDismissGestureSettings *)self setExtendedRegionInsetX:v7];
}

+ (id)settingsControllerModule
{
  v23[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D431F0] rowWithTitle:@"Edge Region Size" valueKeyPath:@"edgeRegionSize"];
  v20 = [v2 between:10.0 and:512.0];

  v19 = [MEMORY[0x277D432A0] rowWithTitle:@"Use Grape Flags" valueKeyPath:@"usesGrapeFlags"];
  v3 = [MEMORY[0x277D432A0] rowWithTitle:@"Recognizes Along Edge" valueKeyPath:@"recognizeAlongEdge"];
  v4 = MEMORY[0x277D43218];
  v23[0] = v20;
  v23[1] = v19;
  v23[2] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  v6 = [v4 sectionWithRows:v5];

  v7 = [MEMORY[0x277D432A0] rowWithTitle:@"Extend Edge Region" valueKeyPath:@"extendSwipeUpRegion"];
  v8 = [MEMORY[0x277D431F0] rowWithTitle:@"Extended Region Size" valueKeyPath:@"extendedEdgeRegionSize"];
  v9 = [v8 between:30.0 and:800.0];

  v10 = [MEMORY[0x277D431F0] rowWithTitle:@"Extended Region Inset X" valueKeyPath:@"extendedRegionInsetX"];
  v11 = [v10 between:0.0 and:150.0];

  v12 = MEMORY[0x277D43218];
  v22[0] = v7;
  v22[1] = v9;
  v22[2] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v14 = [v12 sectionWithRows:v13];

  v15 = MEMORY[0x277D43218];
  v21[0] = v6;
  v21[1] = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v17 = [v15 moduleWithTitle:@"Dismiss Gesture Settings" contents:v16];

  return v17;
}

@end