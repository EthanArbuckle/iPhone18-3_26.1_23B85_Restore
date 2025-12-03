@interface CSLockScreenMesaSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation CSLockScreenMesaSettings

- (void)setDefaultValues
{
  firstFailureSettings = [(CSLockScreenMesaSettings *)self firstFailureSettings];
  [firstFailureSettings setJiggleLock:1];

  firstFailureSettings2 = [(CSLockScreenMesaSettings *)self firstFailureSettings];
  [firstFailureSettings2 setVibrate:0];

  firstFailureSettings3 = [(CSLockScreenMesaSettings *)self firstFailureSettings];
  [firstFailureSettings3 setShowPasscode:0];

  firstFailureSettings4 = [(CSLockScreenMesaSettings *)self firstFailureSettings];
  [firstFailureSettings4 setWaitUntilButtonUp:0];

  secondFailureSettings = [(CSLockScreenMesaSettings *)self secondFailureSettings];
  [secondFailureSettings setJiggleLock:1];

  secondFailureSettings2 = [(CSLockScreenMesaSettings *)self secondFailureSettings];
  [secondFailureSettings2 setVibrate:0];

  secondFailureSettings3 = [(CSLockScreenMesaSettings *)self secondFailureSettings];
  [secondFailureSettings3 setShowPasscode:0];

  secondFailureSettings4 = [(CSLockScreenMesaSettings *)self secondFailureSettings];
  [secondFailureSettings4 setWaitUntilButtonUp:0];

  thirdFailureSettings = [(CSLockScreenMesaSettings *)self thirdFailureSettings];
  [thirdFailureSettings setJiggleLock:1];

  thirdFailureSettings2 = [(CSLockScreenMesaSettings *)self thirdFailureSettings];
  [thirdFailureSettings2 setVibrate:1];

  thirdFailureSettings3 = [(CSLockScreenMesaSettings *)self thirdFailureSettings];
  [thirdFailureSettings3 setShowPasscode:1];

  thirdFailureSettings4 = [(CSLockScreenMesaSettings *)self thirdFailureSettings];
  [thirdFailureSettings4 setWaitUntilButtonUp:0];

  fourthFailureSettings = [(CSLockScreenMesaSettings *)self fourthFailureSettings];
  [fourthFailureSettings setJiggleLock:1];

  fourthFailureSettings2 = [(CSLockScreenMesaSettings *)self fourthFailureSettings];
  [fourthFailureSettings2 setVibrate:1];

  fourthFailureSettings3 = [(CSLockScreenMesaSettings *)self fourthFailureSettings];
  [fourthFailureSettings3 setShowPasscode:1];

  fourthFailureSettings4 = [(CSLockScreenMesaSettings *)self fourthFailureSettings];
  [fourthFailureSettings4 setWaitUntilButtonUp:1];

  fifthFailureSettings = [(CSLockScreenMesaSettings *)self fifthFailureSettings];
  [fifthFailureSettings setJiggleLock:1];

  fifthFailureSettings2 = [(CSLockScreenMesaSettings *)self fifthFailureSettings];
  [fifthFailureSettings2 setVibrate:1];

  fifthFailureSettings3 = [(CSLockScreenMesaSettings *)self fifthFailureSettings];
  [fifthFailureSettings3 setShowPasscode:1];

  fifthFailureSettings4 = [(CSLockScreenMesaSettings *)self fifthFailureSettings];
  [fifthFailureSettings4 setWaitUntilButtonUp:1];

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