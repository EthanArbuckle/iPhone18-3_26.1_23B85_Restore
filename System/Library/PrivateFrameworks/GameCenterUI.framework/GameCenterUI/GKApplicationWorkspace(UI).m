@interface GKApplicationWorkspace(UI)
- (uint64_t)applicationIsInstalled:()UI;
- (void)openGameCenterSettings;
- (void)openGameCenterSettingsInviteFriends;
- (void)openURL:()UI;
@end

@implementation GKApplicationWorkspace(UI)

- (uint64_t)applicationIsInstalled:()UI
{
  v3 = MEMORY[0x277CC1E80];
  v4 = a3;
  v5 = [v3 defaultWorkspace];
  v6 = [v5 applicationIsInstalled:v4];

  return v6;
}

- (void)openGameCenterSettings
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24DE53000, a2, OS_LOG_TYPE_ERROR, "cannot openGameCenterSettings because of error: %@", &v2, 0xCu);
}

- (void)openGameCenterSettingsInviteFriends
{
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.GameCenter/INVITE_FRIENDS"];
  [a1 openURL:v2];
}

- (void)openURL:()UI
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v10 = *MEMORY[0x277D0AC58];
  v11[0] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v5 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v9 = 0;
  [v5 openSensitiveURL:v3 withOptions:v4 error:&v9];
  v6 = v9;

  if (v6)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v7 = GKOSLoggers();
    }

    v8 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      [(GKApplicationWorkspace(UI) *)v3 openURL:v6, v8];
    }
  }
}

- (void)openURL:()UI .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_24DE53000, log, OS_LOG_TYPE_ERROR, "cannot openURL: %@, because of error: %@", &v3, 0x16u);
}

@end