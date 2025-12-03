@interface CKSettingsMMSHelper
+ (BOOL)mmsDefaultEnabledForPhoneNumber:(id)number simID:(id)d;
@end

@implementation CKSettingsMMSHelper

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
      v13 = [mEMORY[0x277D1A908]3 copyCarrierBundleValueForSubscriptionContext:firstObject keyHierarchy:&unk_2856EB970 defaultValue:0 valueIfError:0];

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

@end