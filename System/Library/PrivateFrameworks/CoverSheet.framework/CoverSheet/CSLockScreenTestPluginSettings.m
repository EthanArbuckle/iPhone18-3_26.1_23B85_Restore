@interface CSLockScreenTestPluginSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation CSLockScreenTestPluginSettings

- (void)setDefaultValues
{
  [(CSLockScreenTestPluginSettings *)self setPresentationStyle:2];
  [(CSLockScreenTestPluginSettings *)self setBackgroundStyle:1];
  [(CSLockScreenTestPluginSettings *)self setNotificationBehavior:0];
  [(CSLockScreenTestPluginSettings *)self setEnablePlugin:0];
  [(CSLockScreenTestPluginSettings *)self setEnableLostModePlugin:0];
  [(CSLockScreenTestPluginSettings *)self setRestrictSiri:0];
  [(CSLockScreenTestPluginSettings *)self setRestrictCamera:0];
  [(CSLockScreenTestPluginSettings *)self setRestrictUnlock:0];
  [(CSLockScreenTestPluginSettings *)self setRestrictLogout:0];
  [(CSLockScreenTestPluginSettings *)self setRestrictTouchID:0];
  [(CSLockScreenTestPluginSettings *)self setRestrictMediaControls:0];
  [(CSLockScreenTestPluginSettings *)self setRestrictTodayCenter:0];
  [(CSLockScreenTestPluginSettings *)self setRestrictControlCenter:0];
  [(CSLockScreenTestPluginSettings *)self setHideStatusBar:0];
  [(CSLockScreenTestPluginSettings *)self setHideTimeAndDate:0];
  [(CSLockScreenTestPluginSettings *)self setHideSubtitle:0];
  [(CSLockScreenTestPluginSettings *)self setSubtitleValue:0];

  [(CSLockScreenTestPluginSettings *)self setDisableOnUnlock:1];
}

+ (id)settingsControllerModule
{
  v43[2] = *MEMORY[0x277D85DE8];
  v38 = [MEMORY[0x277D432A0] rowWithTitle:@"Enable Test Plugin" valueKeyPath:@"enablePlugin"];
  v37 = [MEMORY[0x277D432A0] rowWithTitle:@"Enable Lost Mode Plugin" valueKeyPath:@"enableLostModePlugin"];
  v2 = MEMORY[0x277D43218];
  v43[0] = v38;
  v43[1] = v37;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
  v36 = [v2 sectionWithRows:v3];

  v4 = [MEMORY[0x277D431B8] rowWithTitle:@"Background Style" valueKeyPath:@"backgroundStyle"];
  v35 = [v4 possibleValues:&unk_28307A280 titles:&unk_28307A268];

  v5 = [MEMORY[0x277D431B8] rowWithTitle:@"Notification Behavior" valueKeyPath:@"notificationBehavior"];
  v34 = [v5 possibleValues:&unk_28307A2B0 titles:&unk_28307A298];

  v6 = [MEMORY[0x277D431B8] rowWithTitle:@"Presentation Style" valueKeyPath:@"presentationStyle"];
  v33 = [v6 possibleValues:&unk_28307A2E0 titles:&unk_28307A2C8];

  v31 = MEMORY[0x277D43218];
  v7 = [MEMORY[0x277D432A0] rowWithTitle:@"Restrict Siri" valueKeyPath:@"restrictSiri"];
  v42[0] = v7;
  v8 = [MEMORY[0x277D432A0] rowWithTitle:@"Restrict Camera" valueKeyPath:@"restrictCamera"];
  v42[1] = v8;
  v9 = [MEMORY[0x277D432A0] rowWithTitle:@"Restrict Unlock" valueKeyPath:@"restrictUnlock"];
  v42[2] = v9;
  v10 = [MEMORY[0x277D432A0] rowWithTitle:@"Restrict Logout" valueKeyPath:@"restrictLogout"];
  v42[3] = v10;
  v11 = [MEMORY[0x277D432A0] rowWithTitle:@"Restrict TouchID" valueKeyPath:@"restrictTouchID"];
  v42[4] = v11;
  v12 = [MEMORY[0x277D432A0] rowWithTitle:@"Restrict Media Controls" valueKeyPath:@"restrictMediaControls"];
  v42[5] = v12;
  v13 = [MEMORY[0x277D432A0] rowWithTitle:@"Restrict Today Center" valueKeyPath:@"restrictTodayCenter"];
  v42[6] = v13;
  v14 = [MEMORY[0x277D432A0] rowWithTitle:@"Restrict Control Center" valueKeyPath:@"restrictControlCenter"];
  v42[7] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:8];
  v32 = [v31 sectionWithRows:v15];

  v16 = MEMORY[0x277D43218];
  v17 = [MEMORY[0x277D432A0] rowWithTitle:@"Hide Status Bar" valueKeyPath:@"hideStatusBar"];
  v41[0] = v17;
  v18 = [MEMORY[0x277D432A0] rowWithTitle:@"Hide Time & Date" valueKeyPath:@"hideTimeAndDate"];
  v41[1] = v18;
  v19 = [MEMORY[0x277D432A0] rowWithTitle:@"Hide Subtitle" valueKeyPath:@"hideSubtitle"];
  v41[2] = v19;
  v20 = [MEMORY[0x277D431F8] rowWithTitle:@"Subtitle Value" valueKeyPath:@"subtitleValue"];
  v41[3] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
  v22 = [v16 sectionWithRows:v21];

  v23 = [MEMORY[0x277D432A0] rowWithTitle:@"Disable on Unlock" valueKeyPath:@"disableOnUnlock"];
  v24 = MEMORY[0x277D43218];
  v40[0] = v33;
  v40[1] = v35;
  v40[2] = v34;
  v40[3] = v23;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
  v26 = [v24 sectionWithRows:v25];

  v27 = MEMORY[0x277D43218];
  v39[0] = v36;
  v39[1] = v26;
  v39[2] = v32;
  v39[3] = v22;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
  v29 = [v27 moduleWithTitle:@"Lock Screen Test Plugin" contents:v28];

  return v29;
}

@end