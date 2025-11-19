@interface CKMessagesSettingsContainerViewController
- (id)settingsClassName;
- (id)specifierTitle;
@end

@implementation CKMessagesSettingsContainerViewController

- (id)specifierTitle
{
  v2 = CommunicationsSetupUIBundle();
  v3 = CNFRegStringTableName();
  v4 = [v2 localizedStringForKey:@"MESSAGES" value:&stru_2856D3978 table:v3];

  return v4;
}

- (id)settingsClassName
{
  if (_os_feature_enabled_impl())
  {
    return @"CKModernSettingsViewController";
  }

  else
  {
    return @"CKSettingsMessagesController";
  }
}

@end