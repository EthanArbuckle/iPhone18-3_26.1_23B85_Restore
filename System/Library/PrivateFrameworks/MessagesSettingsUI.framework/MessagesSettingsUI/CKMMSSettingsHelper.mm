@interface CKMMSSettingsHelper
+ (BOOL)mmsDefaultEnabledForPhoneNumber:(id)a3 simID:(id)a4;
- (id)_syncManager;
- (id)getMMSDictionary;
- (id)isMMSEnabled;
- (id)willSendGroupMMS;
- (void)willSendGroupMMS;
@end

@implementation CKMMSSettingsHelper

+ (BOOL)mmsDefaultEnabledForPhoneNumber:(id)a3 simID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v8 = [v7 isReadMMSDefaultFromCBEnabled];

  if (v8)
  {
    v9 = [MEMORY[0x277D1A908] sharedInstance];
    v10 = [v9 ctSubscriptionInfo];
    v11 = [v10 __im_subscriptionContextForForSimID:v6 phoneNumber:v5];

    if (v11)
    {
      goto LABEL_3;
    }

    if (IMSharedHelperDeviceHasMultipleActiveSubscriptions())
    {
      goto LABEL_9;
    }

    v17 = [MEMORY[0x277D1A908] sharedInstance];
    v18 = [v17 ctSubscriptionInfo];
    v19 = [v18 subscriptions];
    v11 = [v19 firstObject];

    if (v11)
    {
LABEL_3:
      v12 = [MEMORY[0x277D1A908] sharedInstance];
      v13 = [v12 copyCarrierBundleValueForSubscriptionContext:v11 keyHierarchy:&unk_286A18248 defaultValue:0 valueIfError:0];

      if (v13)
      {
        v14 = [v13 valueForKey:@"MMSDefaultEnabled"];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 BOOLValue];
        }

        else
        {
          v16 = 1;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
LABEL_9:
      v16 = 0;
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (id)getMMSDictionary
{
  v2 = [MEMORY[0x277D1A908] sharedInstance];
  v3 = [v2 ctSubscriptionInfo];
  v4 = [v3 subscriptions];
  v5 = [v4 firstObject];

  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"MMS", 0}];
  v7 = [MEMORY[0x277D1A908] sharedInstance];
  v8 = [v7 copyCarrierBundleValueForSubscriptionContext:v5 keyHierarchy:v6 defaultValue:0 valueIfError:0];

  return v8;
}

- (id)isMMSEnabled
{
  v33 = *MEMORY[0x277D85DE8];
  CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (IMSharedHelperDeviceHasMultipleActiveSubscriptions())
  {
    v2 = [MEMORY[0x277D1A908] sharedInstance];
    v3 = [v2 ctSubscriptionInfo];
    v4 = [v3 subscriptions];
    v5 = [v4 firstObject];

    v6 = MEMORY[0x277D1A8F8];
    v7 = [v5 phoneNumber];
    v8 = [v5 labelID];
    v9 = [v6 IMUniqueIdentifierForPhoneNumber:v7 simID:v8];

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"MMSEnabled-", v9];
  }

  else
  {
    v9 = 0;
    v10 = @"MMSEnabled";
  }

  keyExistsAndHasValidFormat = 0;
  v11 = [MEMORY[0x277D07DB0] sharedInstance];
  v12 = [v11 supportsMMS];

  v13 = CFPreferencesGetAppBooleanValue(v10, @"com.apple.MobileSMS", &keyExistsAndHasValidFormat) != 0;
  if (!keyExistsAndHasValidFormat)
  {
    v14 = [MEMORY[0x277D1A908] sharedInstance];
    v15 = [v14 ctSubscriptionInfo];
    v16 = [v15 subscriptions];
    v17 = [v16 firstObject];

    v18 = objc_opt_class();
    v19 = [v17 phoneNumber];
    v20 = [v17 labelID];
    v13 = [v18 mmsDefaultEnabledForPhoneNumber:v19 simID:v20];
  }

  v21 = IMLogHandleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v25 = @"NO";
    *buf = 138412802;
    v28 = v9;
    v29 = 2112;
    if ((v12 & v13) != 0)
    {
      v25 = @"YES";
    }

    v30 = v10;
    v31 = 2112;
    v32 = v25;
    _os_log_debug_impl(&dword_258D24000, v21, OS_LOG_TYPE_DEBUG, "isMMSEnabled for uniqueID %@ key %@: %@", buf, 0x20u);
  }

  v22 = [MEMORY[0x277CCABB0] numberWithBool:v12 & v13];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)willSendGroupMMS
{
  CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (IMSharedHelperDeviceHasMultipleSubscriptions())
  {
    v3 = [MEMORY[0x277D1A908] sharedInstance];
    v4 = [v3 ctSubscriptionInfo];
    v5 = [v4 subscriptions];
    v6 = [v5 firstObject];

    v7 = MEMORY[0x277D1A8F8];
    v8 = [v6 phoneNumber];
    v9 = [v6 labelID];
    v10 = [v7 IMUniqueIdentifierForPhoneNumber:v8 simID:v9];

    v11 = 0;
  }

  else
  {
    v11 = [(CKMMSSettingsHelper *)self getMMSDictionary];
    v6 = 0;
    v10 = 0;
  }

  if (IMSharedHelperDeviceHasMultipleSubscriptions())
  {
    v12 = [MEMORY[0x277D1A908] sharedInstance];
    v13 = [v12 copyCarrierBundleValueForSubscriptionContext:v6 keyHierarchy:&unk_286A18260 defaultValue:MEMORY[0x277CBEC28] valueIfError:MEMORY[0x277CBEC28]];
    v14 = [v13 BOOLValue];
  }

  else
  {
    v14 = [v11 objectForKey:@"GroupModeEnabled"];

    if (!v14)
    {
      goto LABEL_9;
    }

    v12 = [v11 objectForKey:@"GroupModeEnabled"];
    v14 = [v12 BOOLValue];
  }

LABEL_9:
  v15 = IMLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [(CKMMSSettingsHelper *)v10 willSendGroupMMS];
  }

  v16 = [MEMORY[0x277CCABB0] numberWithBool:v14];

  return v16;
}

- (id)_syncManager
{
  v2 = MEMORY[0x259C9B3E0](@"NPSManager", @"NanoPreferencesSync");
  if (v2)
  {
    v2 = objc_alloc_init(v2);
  }

  return v2;
}

- (void)willSendGroupMMS
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = @"YES";
  if ((a2 & 1) == 0)
  {
    v3 = @"NO";
  }

  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_258D24000, log, OS_LOG_TYPE_DEBUG, "willSendGroupMMS for uniqueID %@ : %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end