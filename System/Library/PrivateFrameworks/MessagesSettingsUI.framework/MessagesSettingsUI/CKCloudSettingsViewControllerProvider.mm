@interface CKCloudSettingsViewControllerProvider
+ (id)messagesCloudSettingsViewControllerWithAccountManager:(id)a3;
@end

@implementation CKCloudSettingsViewControllerProvider

+ (id)messagesCloudSettingsViewControllerWithAccountManager:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CKCloudSettingsViewController);
  [(CKCloudSettingsViewController *)v4 setAccountManager:v3];

  return v4;
}

@end