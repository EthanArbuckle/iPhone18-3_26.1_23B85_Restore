@interface CNKCNMeCardSharingSettingsViewControllerObserver
- (void)sharingSettingsViewController:(id)a3 didSelectSharingAudience:(unint64_t)a4;
- (void)sharingSettingsViewController:(id)a3 didUpdateSharingState:(BOOL)a4;
- (void)sharingSettingsViewController:(id)a3 didUpdateWithSharingResult:(id)a4;
@end

@implementation CNKCNMeCardSharingSettingsViewControllerObserver

- (void)sharingSettingsViewController:(id)a3 didUpdateSharingState:(BOOL)a4
{
  v4 = a4;
  v5 = [MEMORY[0x1E69A8108] sharedInstance];
  [v5 setSharingEnabled:v4];
}

- (void)sharingSettingsViewController:(id)a3 didSelectSharingAudience:(unint64_t)a4
{
  v5 = [MEMORY[0x1E69A8108] sharedInstance];
  [v5 setSharingAudience:a4];
}

- (void)sharingSettingsViewController:(id)a3 didUpdateWithSharingResult:(id)a4
{
  v4 = MEMORY[0x1E69A5C10];
  v5 = a4;
  v6 = [v4 sharedInstance];
  [v6 updatePersonalNicknameIfNecessaryWithMeCardSharingResult:v5];
}

@end