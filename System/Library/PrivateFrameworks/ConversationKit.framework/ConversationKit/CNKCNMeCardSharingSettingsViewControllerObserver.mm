@interface CNKCNMeCardSharingSettingsViewControllerObserver
- (void)sharingSettingsViewController:(id)controller didSelectSharingAudience:(unint64_t)audience;
- (void)sharingSettingsViewController:(id)controller didUpdateSharingState:(BOOL)state;
- (void)sharingSettingsViewController:(id)controller didUpdateWithSharingResult:(id)result;
@end

@implementation CNKCNMeCardSharingSettingsViewControllerObserver

- (void)sharingSettingsViewController:(id)controller didUpdateSharingState:(BOOL)state
{
  stateCopy = state;
  mEMORY[0x1E69A8108] = [MEMORY[0x1E69A8108] sharedInstance];
  [mEMORY[0x1E69A8108] setSharingEnabled:stateCopy];
}

- (void)sharingSettingsViewController:(id)controller didSelectSharingAudience:(unint64_t)audience
{
  mEMORY[0x1E69A8108] = [MEMORY[0x1E69A8108] sharedInstance];
  [mEMORY[0x1E69A8108] setSharingAudience:audience];
}

- (void)sharingSettingsViewController:(id)controller didUpdateWithSharingResult:(id)result
{
  v4 = MEMORY[0x1E69A5C10];
  resultCopy = result;
  sharedInstance = [v4 sharedInstance];
  [sharedInstance updatePersonalNicknameIfNecessaryWithMeCardSharingResult:resultCopy];
}

@end