@interface CKMMSMultipleCTSubscriptionsController
- (id)isEnabledForSubscription:(id)subscription;
- (void)setEnabledForSubscription:(id)subscription specifier:(id)specifier;
@end

@implementation CKMMSMultipleCTSubscriptionsController

- (id)isEnabledForSubscription:(id)subscription
{
  v17 = *MEMORY[0x277D85DE8];
  subscriptionCopy = subscription;
  identifier = [subscriptionCopy identifier];
  properties = [subscriptionCopy properties];
  v6 = [properties objectForKey:@"phoneNumber"];
  properties2 = [subscriptionCopy properties];
  v8 = [properties2 objectForKey:@"simID"];
  [CKSettingsMMSHelper mmsDefaultEnabledForPhoneNumber:v6 simID:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:IMGetDomainBoolForKeyWithDefaultValue()];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = identifier;
      _os_log_impl(&dword_243BE5000, v10, OS_LOG_TYPE_INFO, "Getting value %@ for key %@", &v13, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)setEnabledForSubscription:(id)subscription specifier:(id)specifier
{
  v21 = *MEMORY[0x277D85DE8];
  subscriptionCopy = subscription;
  specifierCopy = specifier;
  identifier = [specifierCopy identifier];
  CFPreferencesSetAppValue(identifier, subscriptionCopy, @"com.apple.MobileSMS");
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [MEMORY[0x277CCABB0] numberWithBool:IMGetDomainBoolForKeyWithDefaultValue()];
      v15 = 138412802;
      v16 = subscriptionCopy;
      v17 = 2112;
      v18 = identifier;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_INFO, "Setting value %@ for key %@, now is %@", &v15, 0x20u);
    }
  }

  defaultsKey = [(CKMultipleCTSubscriptionsController *)self defaultsKey];
  v12 = [defaultsKey isEqualToString:@"MMSEnabled-"];

  if (v12)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.MMSEnabled.changed", 0, 0, 1u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end