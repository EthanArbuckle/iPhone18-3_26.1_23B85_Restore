@interface HUHomeUIServiceLaunchUserInfo
+ (id)launchReasonDescription:(int64_t)a3;
+ (id)userInfoForLockAccessFirmwareUpgradeSetupInHome:(id)a3;
+ (id)userInfoForLockAccessPinCodeSetupInHome:(id)a3;
+ (id)userInfoForLockAccessWalletKeySetupInHome:(id)a3;
+ (id)userInfoForResumeAccessorySetupInHome:(id)a3 accessoryUUIDs:(id)a4;
+ (id)userInfoForSafetyAndSecurityInHome:(id)a3;
+ (id)userInfoForSiriEndpointInHome:(id)a3;
+ (id)userInfoForThermostatAutoClimateControlSetupInHome:(id)a3;
+ (id)userInfoForUpgradeOfferResults:(id)a3;
+ (int64_t)launchReasonFromUserInfo:(id)a3;
@end

@implementation HUHomeUIServiceLaunchUserInfo

+ (id)userInfoForResumeAccessorySetupInHome:(id)a3 accessoryUUIDs:(id)a4
{
  v11[3] = *MEMORY[0x277D85DE8];
  v11[0] = HUHomeUIServiceLaunchReasonValueResumeSetup;
  v10[0] = HUHomeUIServiceLaunchReasonKey;
  v10[1] = HUHomeUIServiceLaunchHomeUUIDString;
  v5 = a4;
  v6 = [a3 uniqueIdentifier];
  v7 = [v6 UUIDString];
  v10[2] = HUHomeUIServiceLaunchAccessoryUUIDsArray;
  v11[1] = v7;
  v11[2] = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

+ (id)userInfoForSafetyAndSecurityInHome:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = HUHomeUIServiceLaunchReasonKey;
  v7[1] = HUHomeUIServiceLaunchHomeUUIDString;
  v8[0] = HUHomeUIServiceLaunchReasonValueSafetyAndSecurity;
  v3 = [a3 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)userInfoForSiriEndpointInHome:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = HUHomeUIServiceLaunchReasonKey;
  v7[1] = HUHomeUIServiceLaunchHomeUUIDString;
  v8[0] = HUHomeUIServiceLaunchReasonValueSiriEndpoint;
  v3 = [a3 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)userInfoForLockAccessFirmwareUpgradeSetupInHome:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = HUHomeUIServiceLaunchReasonKey;
  v7[1] = HUHomeUIServiceLaunchHomeUUIDString;
  v8[0] = HUHomeUIServiceLaunchReasonValueLockAccessFirmwareUpdate;
  v3 = [a3 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)userInfoForLockAccessWalletKeySetupInHome:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = HUHomeUIServiceLaunchReasonKey;
  v7[1] = HUHomeUIServiceLaunchHomeUUIDString;
  v8[0] = HUHomeUIServiceLaunchReasonValueLockAccessUserOnboardingAll;
  v3 = [a3 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)userInfoForLockAccessPinCodeSetupInHome:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = HUHomeUIServiceLaunchReasonKey;
  v7[1] = HUHomeUIServiceLaunchHomeUUIDString;
  v8[0] = HUHomeUIServiceLaunchReasonValueLockAccessUserOnboardingPinCodeOnly;
  v3 = [a3 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)userInfoForUpgradeOfferResults:(id)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = HUHomeUIServiceLaunchReasonKey;
  v6[0] = HUHomeUIServiceLaunchReasonValueCameraUpgradeOffer;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)userInfoForThermostatAutoClimateControlSetupInHome:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = HUHomeUIServiceLaunchReasonKey;
  v7[1] = HUHomeUIServiceLaunchHomeUUIDString;
  v8[0] = HUHomeUIServiceLaunchReasonValueThermostatAutoClimateControlOnboarding;
  v3 = [a3 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (int64_t)launchReasonFromUserInfo:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:HUHomeUIServiceLaunchReasonKey];
  if ([v3 isEqualToString:HUHomeUIServiceLaunchReasonValueResumeSetup])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:HUHomeUIServiceLaunchReasonValueSafetyAndSecurity])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:HUHomeUIServiceLaunchReasonValueSiriEndpoint])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:HUHomeUIServiceLaunchReasonValueLockAccessFirmwareUpdate])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:HUHomeUIServiceLaunchReasonValueLockAccessUserOnboardingAll])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:HUHomeUIServiceLaunchReasonValueLockAccessUserOnboardingPinCodeOnly])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:HUHomeUIServiceLaunchReasonValueCameraUpgradeOffer])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:HUHomeUIServiceLaunchReasonValueThermostatAutoClimateControlOnboarding])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)launchReasonDescription:(int64_t)a3
{
  v3 = 0;
  if (a3 <= 4)
  {
    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 != 1)
        {
          goto LABEL_24;
        }

        v4 = HUHomeUIServiceLaunchReasonValueResumeSetup;
      }

      else
      {
        v4 = HUHomeUIServiceLaunchReasonValueAddAccessory;
      }
    }

    else if (a3 == 2)
    {
      v4 = HUHomeUIServiceLaunchReasonValueSafetyAndSecurity;
    }

    else if (a3 == 3)
    {
      v4 = HUHomeUIServiceLaunchReasonValueSiriEndpoint;
    }

    else
    {
      v4 = HUHomeUIServiceLaunchReasonValueLockAccessFirmwareUpdate;
    }

    goto LABEL_23;
  }

  if (a3 <= 6)
  {
    if (a3 == 5)
    {
      v4 = HUHomeUIServiceLaunchReasonValueLockAccessUserOnboardingAll;
    }

    else
    {
      v4 = HUHomeUIServiceLaunchReasonValueLockAccessUserOnboardingPinCodeOnly;
    }

    goto LABEL_23;
  }

  switch(a3)
  {
    case 7:
      v4 = HUHomeUIServiceLaunchReasonValueThermostatAutoClimateControlOnboarding;
LABEL_23:
      v3 = v4;
      break;
    case 8:
      v4 = HUHomeUIServiceLaunchReasonValueCameraUpgradeOffer;
      goto LABEL_23;
    case 9:
      v3 = @"HUHomeUIServiceLaunchReasonValueMax";
      break;
    default:
      v3 = 0;
      break;
  }

LABEL_24:

  return v3;
}

@end