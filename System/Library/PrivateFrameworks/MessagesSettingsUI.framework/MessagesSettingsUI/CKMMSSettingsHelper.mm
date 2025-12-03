@interface CKMMSSettingsHelper
+ (BOOL)mmsDefaultEnabledForPhoneNumber:(id)number simID:(id)d;
- (id)_syncManager;
- (id)getMMSDictionary;
- (id)isMMSEnabled;
- (id)willSendGroupMMS;
- (void)willSendGroupMMS;
@end

@implementation CKMMSSettingsHelper

+ (BOOL)mmsDefaultEnabledForPhoneNumber:(id)number simID:(id)d
{
  numberCopy = number;
  dCopy = d;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isReadMMSDefaultFromCBEnabled = [mEMORY[0x277D1A9B8] isReadMMSDefaultFromCBEnabled];

  if (isReadMMSDefaultFromCBEnabled)
  {
    mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
    ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];
    firstObject = [ctSubscriptionInfo __im_subscriptionContextForForSimID:dCopy phoneNumber:numberCopy];

    if (firstObject)
    {
      goto LABEL_3;
    }

    if (IMSharedHelperDeviceHasMultipleActiveSubscriptions())
    {
      goto LABEL_9;
    }

    mEMORY[0x277D1A908]2 = [MEMORY[0x277D1A908] sharedInstance];
    ctSubscriptionInfo2 = [mEMORY[0x277D1A908]2 ctSubscriptionInfo];
    subscriptions = [ctSubscriptionInfo2 subscriptions];
    firstObject = [subscriptions firstObject];

    if (firstObject)
    {
LABEL_3:
      mEMORY[0x277D1A908]3 = [MEMORY[0x277D1A908] sharedInstance];
      v13 = [mEMORY[0x277D1A908]3 copyCarrierBundleValueForSubscriptionContext:firstObject keyHierarchy:&unk_286A18248 defaultValue:0 valueIfError:0];

      if (v13)
      {
        v14 = [v13 valueForKey:@"MMSDefaultEnabled"];
        v15 = v14;
        if (v14)
        {
          bOOLValue = [v14 BOOLValue];
        }

        else
        {
          bOOLValue = 1;
        }
      }

      else
      {
        bOOLValue = 0;
      }
    }

    else
    {
LABEL_9:
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (id)getMMSDictionary
{
  mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
  ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];
  subscriptions = [ctSubscriptionInfo subscriptions];
  firstObject = [subscriptions firstObject];

  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"MMS", 0}];
  mEMORY[0x277D1A908]2 = [MEMORY[0x277D1A908] sharedInstance];
  v8 = [mEMORY[0x277D1A908]2 copyCarrierBundleValueForSubscriptionContext:firstObject keyHierarchy:v6 defaultValue:0 valueIfError:0];

  return v8;
}

- (id)isMMSEnabled
{
  v33 = *MEMORY[0x277D85DE8];
  CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (IMSharedHelperDeviceHasMultipleActiveSubscriptions())
  {
    mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
    ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];
    subscriptions = [ctSubscriptionInfo subscriptions];
    firstObject = [subscriptions firstObject];

    v6 = MEMORY[0x277D1A8F8];
    phoneNumber = [firstObject phoneNumber];
    labelID = [firstObject labelID];
    v9 = [v6 IMUniqueIdentifierForPhoneNumber:phoneNumber simID:labelID];

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"MMSEnabled-", v9];
  }

  else
  {
    v9 = 0;
    v10 = @"MMSEnabled";
  }

  keyExistsAndHasValidFormat = 0;
  mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
  supportsMMS = [mEMORY[0x277D07DB0] supportsMMS];

  v13 = CFPreferencesGetAppBooleanValue(v10, @"com.apple.MobileSMS", &keyExistsAndHasValidFormat) != 0;
  if (!keyExistsAndHasValidFormat)
  {
    mEMORY[0x277D1A908]2 = [MEMORY[0x277D1A908] sharedInstance];
    ctSubscriptionInfo2 = [mEMORY[0x277D1A908]2 ctSubscriptionInfo];
    subscriptions2 = [ctSubscriptionInfo2 subscriptions];
    firstObject2 = [subscriptions2 firstObject];

    v18 = objc_opt_class();
    phoneNumber2 = [firstObject2 phoneNumber];
    labelID2 = [firstObject2 labelID];
    v13 = [v18 mmsDefaultEnabledForPhoneNumber:phoneNumber2 simID:labelID2];
  }

  v21 = IMLogHandleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v25 = @"NO";
    *buf = 138412802;
    v28 = v9;
    v29 = 2112;
    if ((supportsMMS & v13) != 0)
    {
      v25 = @"YES";
    }

    v30 = v10;
    v31 = 2112;
    v32 = v25;
    _os_log_debug_impl(&dword_258D24000, v21, OS_LOG_TYPE_DEBUG, "isMMSEnabled for uniqueID %@ key %@: %@", buf, 0x20u);
  }

  v22 = [MEMORY[0x277CCABB0] numberWithBool:supportsMMS & v13];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)willSendGroupMMS
{
  CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (IMSharedHelperDeviceHasMultipleSubscriptions())
  {
    mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
    ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];
    subscriptions = [ctSubscriptionInfo subscriptions];
    firstObject = [subscriptions firstObject];

    v7 = MEMORY[0x277D1A8F8];
    phoneNumber = [firstObject phoneNumber];
    labelID = [firstObject labelID];
    v10 = [v7 IMUniqueIdentifierForPhoneNumber:phoneNumber simID:labelID];

    getMMSDictionary = 0;
  }

  else
  {
    getMMSDictionary = [(CKMMSSettingsHelper *)self getMMSDictionary];
    firstObject = 0;
    v10 = 0;
  }

  if (IMSharedHelperDeviceHasMultipleSubscriptions())
  {
    mEMORY[0x277D1A908]2 = [MEMORY[0x277D1A908] sharedInstance];
    v13 = [mEMORY[0x277D1A908]2 copyCarrierBundleValueForSubscriptionContext:firstObject keyHierarchy:&unk_286A18260 defaultValue:MEMORY[0x277CBEC28] valueIfError:MEMORY[0x277CBEC28]];
    bOOLValue = [v13 BOOLValue];
  }

  else
  {
    bOOLValue = [getMMSDictionary objectForKey:@"GroupModeEnabled"];

    if (!bOOLValue)
    {
      goto LABEL_9;
    }

    mEMORY[0x277D1A908]2 = [getMMSDictionary objectForKey:@"GroupModeEnabled"];
    bOOLValue = [mEMORY[0x277D1A908]2 BOOLValue];
  }

LABEL_9:
  v15 = IMLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [(CKMMSSettingsHelper *)v10 willSendGroupMMS];
  }

  v16 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];

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
  selfCopy = self;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_258D24000, log, OS_LOG_TYPE_DEBUG, "willSendGroupMMS for uniqueID %@ : %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end