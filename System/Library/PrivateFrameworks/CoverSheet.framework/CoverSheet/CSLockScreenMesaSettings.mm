@interface CSLockScreenMesaSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation CSLockScreenMesaSettings

- (void)setDefaultValues
{
  v3 = [(CSLockScreenMesaSettings *)self firstFailureSettings];
  [v3 setJiggleLock:1];

  v4 = [(CSLockScreenMesaSettings *)self firstFailureSettings];
  [v4 setVibrate:0];

  v5 = [(CSLockScreenMesaSettings *)self firstFailureSettings];
  [v5 setShowPasscode:0];

  v6 = [(CSLockScreenMesaSettings *)self firstFailureSettings];
  [v6 setWaitUntilButtonUp:0];

  v7 = [(CSLockScreenMesaSettings *)self secondFailureSettings];
  [v7 setJiggleLock:1];

  v8 = [(CSLockScreenMesaSettings *)self secondFailureSettings];
  [v8 setVibrate:0];

  v9 = [(CSLockScreenMesaSettings *)self secondFailureSettings];
  [v9 setShowPasscode:0];

  v10 = [(CSLockScreenMesaSettings *)self secondFailureSettings];
  [v10 setWaitUntilButtonUp:0];

  v11 = [(CSLockScreenMesaSettings *)self thirdFailureSettings];
  [v11 setJiggleLock:1];

  v12 = [(CSLockScreenMesaSettings *)self thirdFailureSettings];
  [v12 setVibrate:1];

  v13 = [(CSLockScreenMesaSettings *)self thirdFailureSettings];
  [v13 setShowPasscode:1];

  v14 = [(CSLockScreenMesaSettings *)self thirdFailureSettings];
  [v14 setWaitUntilButtonUp:0];

  v15 = [(CSLockScreenMesaSettings *)self fourthFailureSettings];
  [v15 setJiggleLock:1];

  v16 = [(CSLockScreenMesaSettings *)self fourthFailureSettings];
  [v16 setVibrate:1];

  v17 = [(CSLockScreenMesaSettings *)self fourthFailureSettings];
  [v17 setShowPasscode:1];

  v18 = [(CSLockScreenMesaSettings *)self fourthFailureSettings];
  [v18 setWaitUntilButtonUp:1];

  v19 = [(CSLockScreenMesaSettings *)self fifthFailureSettings];
  [v19 setJiggleLock:1];

  v20 = [(CSLockScreenMesaSettings *)self fifthFailureSettings];
  [v20 setVibrate:1];

  v21 = [(CSLockScreenMesaSettings *)self fifthFailureSettings];
  [v21 setShowPasscode:1];

  v22 = [(CSLockScreenMesaSettings *)self fifthFailureSettings];
  [v22 setWaitUntilButtonUp:1];

  [(CSLockScreenMesaSettings *)self setPasscodeRequiredEventsCountAsFailures:0];
  [(CSLockScreenMesaSettings *)self setFlashRedOnPasscodeRequiredEvents:0];
  [(CSLockScreenMesaSettings *)self setSuccessFeedbackWaitsUntilButtonUp:1];

  [(CSLockScreenMesaSettings *)self setSlowPressDuration:0.25];
}

+ (id)settingsControllerModule
{
  v32[5] = *MEMORY[0x277D85DE8];
  v27 = [MEMORY[0x277D431E0] rowWithTitle:@"First Failure" childSettingsKeyPath:@"firstFailureSettings"];
  v26 = [MEMORY[0x277D431E0] rowWithTitle:@"Second Failure" childSettingsKeyPath:@"secondFailureSettings"];
  v25 = [MEMORY[0x277D431E0] rowWithTitle:@"Third Failure" childSettingsKeyPath:@"thirdFailureSettings"];
  v24 = [MEMORY[0x277D431E0] rowWithTitle:@"Fourth Failure" childSettingsKeyPath:@"fourthFailureSettings"];
  v23 = [MEMORY[0x277D431E0] rowWithTitle:@"Fifth Failure" childSettingsKeyPath:@"fifthFailureSettings"];
  v2 = MEMORY[0x277D43218];
  v32[0] = v27;
  v32[1] = v26;
  v32[2] = v25;
  v32[3] = v24;
  v32[4] = v23;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:5];
  v21 = [v2 sectionWithRows:v3];

  v22 = [MEMORY[0x277D432A0] rowWithTitle:@"Count as Failure" valueKeyPath:@"passcodeRequiredEventsCountAsFailures"];
  v4 = [MEMORY[0x277D432A0] rowWithTitle:@"Flash Red" valueKeyPath:@"flashRedOnPasscodeRequiredEvents"];
  v5 = MEMORY[0x277D43218];
  v31[0] = v22;
  v31[1] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v7 = [v5 sectionWithRows:v6 title:@"Passcode Required events"];

  v8 = [MEMORY[0x277D432A0] rowWithTitle:@"Wait until button up" valueKeyPath:@"successFeedbackWaitsUntilButtonUp"];
  v9 = MEMORY[0x277D43218];
  v30 = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  v11 = [v9 sectionWithRows:v10 title:@"Match events"];

  v12 = [MEMORY[0x277D431F0] rowWithTitle:@"Slow Press Duration (seconds)" valueKeyPath:@"slowPressDuration"];
  v13 = [v12 between:0.0 and:1.0];

  v14 = MEMORY[0x277D43218];
  v29 = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v16 = [v14 sectionWithRows:v15 title:@"Press Speed"];

  v17 = MEMORY[0x277D43218];
  v28[0] = v21;
  v28[1] = v7;
  v28[2] = v11;
  v28[3] = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  v19 = [v17 moduleWithTitle:@"Mesa Failure Settings" contents:v18];

  return v19;
}

@end