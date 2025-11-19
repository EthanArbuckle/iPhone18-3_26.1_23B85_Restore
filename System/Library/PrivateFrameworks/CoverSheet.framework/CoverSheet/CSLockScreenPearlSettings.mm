@interface CSLockScreenPearlSettings
+ (id)settingsControllerModule;
- ($20D0CF0D87A8AD096D8C820DF2D4BB3C)proudLockControllerViewControllerConfiguration;
- (void)setDefaultValues;
@end

@implementation CSLockScreenPearlSettings

- ($20D0CF0D87A8AD096D8C820DF2D4BB3C)proudLockControllerViewControllerConfiguration
{
  *&retstr->var9 = 0;
  *&retstr->var5 = 0u;
  *&retstr->var7 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var3 = 0u;
  retstr->var0 = [(CSLockScreenPearlSettings *)self showScanningStateOnLockScreen];
  retstr->var1 = [(CSLockScreenPearlSettings *)self showScanningStateDuringFaceDetect];
  [(CSLockScreenPearlSettings *)self minimumDurationBeforeShowingScanningState];
  retstr->var2 = v5;
  retstr->var3 = 1;
  [(CSLockScreenPearlSettings *)self minimumDurationBetweenLeavingCoachingAndCoaching];
  retstr->var4 = v6;
  [(CSLockScreenPearlSettings *)self minimumDurationShowingCoaching];
  retstr->var5 = v7;
  [(CSLockScreenPearlSettings *)self durationOnCameraCoveredGlyphBeforeCoaching];
  retstr->var6 = v8;
  retstr->var9 = [(CSLockScreenPearlSettings *)self coachingDelaysUnlock];
  retstr->var10 = 0;
  retstr->var11 = [(CSLockScreenPearlSettings *)self spinBeforeCoaching];
  [(CSLockScreenPearlSettings *)self durationToSuppressCameraCoveredWhenWakingWithSmartCover];
  retstr->var7 = v9;
  result = [(CSLockScreenPearlSettings *)self durationToSuppressCameraCoveredWhenWakingWithMagicKeyboard];
  retstr->var8 = v11;
  retstr->var12 = 0;
  return result;
}

- (void)setDefaultValues
{
  [(CSLockScreenPearlSettings *)self setPearlDebugUIEnabled:0];
  v3 = [(CSLockScreenPearlSettings *)self failureSettings];
  [v3 setJiggleLock:1];

  v4 = [(CSLockScreenPearlSettings *)self failureSettings];
  [v4 setVibrate:1];

  v5 = [(CSLockScreenPearlSettings *)self failureSettings];
  [v5 setShowPasscode:0];

  v6 = [(CSLockScreenPearlSettings *)self failureSettings];
  [v6 setWaitUntilButtonUp:0];

  SBUIProudLockContainerViewControllerConfigurationDefault();
  [(CSLockScreenPearlSettings *)self setShowScanningStateOnLockScreen:0];
  [(CSLockScreenPearlSettings *)self setShowScanningStateDuringFaceDetect:0];
  [(CSLockScreenPearlSettings *)self setMinimumDurationBeforeShowingScanningState:0.0];
  [(CSLockScreenPearlSettings *)self setMinimumDurationBetweenLeavingCoachingAndCoaching:0.0];
  [(CSLockScreenPearlSettings *)self setMinimumDurationShowingCoaching:0.0];
  [(CSLockScreenPearlSettings *)self setDurationOnCameraCoveredGlyphBeforeCoaching:0.0];
  [(CSLockScreenPearlSettings *)self setCoachingDelaysUnlock:0];
  [(CSLockScreenPearlSettings *)self setSpinBeforeCoaching:0];
  [(CSLockScreenPearlSettings *)self setDurationToSuppressCameraCoveredWhenWakingWithSmartCover:0.0];
  [(CSLockScreenPearlSettings *)self setDurationToSuppressCameraCoveredWhenWakingWithMagicKeyboard:0.0];
  [(CSLockScreenPearlSettings *)self setSystemApertureDismissDelayAuth:0.35];
  [(CSLockScreenPearlSettings *)self setSystemApertureDismissDelayDismissal:0.25];
  [(CSLockScreenPearlSettings *)self setFallbackIndicatorMinimumDurationLeeway:0.3];
}

+ (id)settingsControllerModule
{
  v50[1] = *MEMORY[0x277D85DE8];
  v43 = [MEMORY[0x277D432A0] rowWithTitle:@"Enable Pearl Debug UI" valueKeyPath:@"pearlDebugUIEnabled"];
  v2 = MEMORY[0x277D43218];
  v50[0] = v43;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
  v39 = [v2 sectionWithRows:v3 title:@"Debug UI"];

  v42 = [MEMORY[0x277D431E0] rowWithTitle:@"Failure Settings" childSettingsKeyPath:@"failureSettings"];
  v4 = MEMORY[0x277D43218];
  v49 = v42;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
  v36 = [v4 sectionWithRows:v5 title:@"Feedbacks"];

  v41 = [MEMORY[0x277D43268] rowWithTitle:@"Show Scanning On LockScreen" valueKeyPath:@"showScanningStateOnLockScreen"];
  v40 = [MEMORY[0x277D43268] rowWithTitle:@"Show Scanning During Face Detect" valueKeyPath:@"showScanningStateDuringFaceDetect"];
  v38 = [MEMORY[0x277D43268] rowWithTitle:@"Coaching Delays Unlock" valueKeyPath:@"coachingDelaysUnlock"];
  v37 = [MEMORY[0x277D43268] rowWithTitle:@"Spin Before Coaching" valueKeyPath:@"spinBeforeCoaching"];
  v6 = MEMORY[0x277D43258];
  v48[0] = v41;
  v48[1] = v40;
  v48[2] = v38;
  v48[3] = v37;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:4];
  v35 = [v6 sectionWithRows:v7 title:@"Feedback"];

  v8 = [MEMORY[0x277D431F0] rowWithTitle:@"Jindo Dismissal Delay" valueKeyPath:@"systemApertureDismissDelayDismissal"];
  v44 = [v8 between:0.0 and:2.0];

  v9 = [MEMORY[0x277D431F0] rowWithTitle:@"Jindo Auth Delay" valueKeyPath:@"systemApertureDismissDelayAuth"];
  v34 = [v9 between:0.0 and:2.0];

  v10 = [MEMORY[0x277D431F0] rowWithTitle:@"Before Show Scanning" valueKeyPath:@"minimumDurationBeforeShowingScanningState"];
  v33 = [v10 between:0.0 and:10.0];

  v11 = [MEMORY[0x277D431F0] rowWithTitle:@"Between Leaving and Coaching" valueKeyPath:@"minimumDurationBetweenLeavingCoachingAndCoaching"];
  v32 = [v11 between:0.0 and:10.0];

  v12 = [MEMORY[0x277D431F0] rowWithTitle:@"Showing Coaching" valueKeyPath:@"minimumDurationShowingCoaching"];
  v31 = [v12 between:0.0 and:10.0];

  v13 = [MEMORY[0x277D431F0] rowWithTitle:@"Camera Covered Glyph" valueKeyPath:@"durationOnCameraCoveredGlyphBeforeCoaching"];
  v30 = [v13 between:0.0 and:10.0];

  v14 = [MEMORY[0x277D431F0] rowWithTitle:@"Suppress Camera Covered (Smart Cover)" valueKeyPath:@"durationToSuppressCameraCoveredWhenWakingWithSmartCover"];
  v29 = [v14 between:0.0 and:10.0];

  v15 = [MEMORY[0x277D431F0] rowWithTitle:@"Suppress Camera Covered (Magic Keyboard)" valueKeyPath:@"durationToSuppressCameraCoveredWhenWakingWithMagicKeyboard"];
  v16 = [v15 between:0.0 and:10.0];

  v17 = MEMORY[0x277D43258];
  v47[0] = v44;
  v47[1] = v34;
  v47[2] = v33;
  v47[3] = v32;
  v47[4] = v31;
  v47[5] = v30;
  v47[6] = v29;
  v47[7] = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:8];
  v19 = [v17 sectionWithRows:v18 title:@"Minimum Durations"];

  v20 = [MEMORY[0x277D431F0] rowWithTitle:@"Indicator Minimum Duration Leeway" valueKeyPath:@"fallbackIndicatorMinimumDurationLeeway"];
  v21 = [v20 between:0.0 and:10.0];

  v22 = MEMORY[0x277D43258];
  v46 = v21;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
  v24 = [v22 sectionWithRows:v23 title:@"Pearl Indicator"];

  v25 = MEMORY[0x277D43218];
  v45[0] = v39;
  v45[1] = v36;
  v45[2] = v35;
  v45[3] = v19;
  v45[4] = v24;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:5];
  v27 = [v25 moduleWithTitle:@"Pearl Settings" contents:v26];

  return v27;
}

@end