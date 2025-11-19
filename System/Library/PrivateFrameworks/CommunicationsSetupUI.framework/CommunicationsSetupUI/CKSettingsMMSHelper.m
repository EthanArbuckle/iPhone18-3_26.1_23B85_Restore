@interface CKSettingsMMSHelper
+ (BOOL)mmsDefaultEnabledForPhoneNumber:(id)a3 simID:(id)a4;
@end

@implementation CKSettingsMMSHelper

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
      v13 = [v12 copyCarrierBundleValueForSubscriptionContext:v11 keyHierarchy:&unk_2856EB970 defaultValue:0 valueIfError:0];

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

@end