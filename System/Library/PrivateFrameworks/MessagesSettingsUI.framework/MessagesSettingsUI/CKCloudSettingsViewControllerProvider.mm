@interface CKCloudSettingsViewControllerProvider
+ (id)messagesCloudSettingsViewControllerWithAccountManager:(id)manager;
@end

@implementation CKCloudSettingsViewControllerProvider

+ (id)messagesCloudSettingsViewControllerWithAccountManager:(id)manager
{
  managerCopy = manager;
  v4 = objc_alloc_init(CKCloudSettingsViewController);
  [(CKCloudSettingsViewController *)v4 setAccountManager:managerCopy];

  return v4;
}

@end