@interface CKMMSMultipleCTSubscriptionsController
- (id)isEnabledForSubscription:(id)a3;
- (void)setEnabledForSubscription:(id)a3 specifier:(id)a4;
@end

@implementation CKMMSMultipleCTSubscriptionsController

- (id)isEnabledForSubscription:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [v3 properties];
  v6 = [v5 objectForKey:@"phoneNumber"];
  v7 = [v3 properties];
  v8 = [v7 objectForKey:@"simID"];
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
      v16 = v4;
      _os_log_impl(&dword_243BE5000, v10, OS_LOG_TYPE_INFO, "Getting value %@ for key %@", &v13, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)setEnabledForSubscription:(id)a3 specifier:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 identifier];
  CFPreferencesSetAppValue(v8, v6, @"com.apple.MobileSMS");
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [MEMORY[0x277CCABB0] numberWithBool:IMGetDomainBoolForKeyWithDefaultValue()];
      v15 = 138412802;
      v16 = v6;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_INFO, "Setting value %@ for key %@, now is %@", &v15, 0x20u);
    }
  }

  v11 = [(CKMultipleCTSubscriptionsController *)self defaultsKey];
  v12 = [v11 isEqualToString:@"MMSEnabled-"];

  if (v12)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.MMSEnabled.changed", 0, 0, 1u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end