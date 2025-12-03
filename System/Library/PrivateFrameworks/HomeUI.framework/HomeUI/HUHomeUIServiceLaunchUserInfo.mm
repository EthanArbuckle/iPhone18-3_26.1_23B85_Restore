@interface HUHomeUIServiceLaunchUserInfo
+ (id)launchReasonDescription:(int64_t)description;
+ (id)userInfoForLockAccessFirmwareUpgradeSetupInHome:(id)home;
+ (id)userInfoForLockAccessPinCodeSetupInHome:(id)home;
+ (id)userInfoForLockAccessWalletKeySetupInHome:(id)home;
+ (id)userInfoForResumeAccessorySetupInHome:(id)home accessoryUUIDs:(id)ds;
+ (id)userInfoForSafetyAndSecurityInHome:(id)home;
+ (id)userInfoForSiriEndpointInHome:(id)home;
+ (id)userInfoForThermostatAutoClimateControlSetupInHome:(id)home;
+ (id)userInfoForUpgradeOfferResults:(id)results;
+ (int64_t)launchReasonFromUserInfo:(id)info;
@end

@implementation HUHomeUIServiceLaunchUserInfo

+ (id)userInfoForResumeAccessorySetupInHome:(id)home accessoryUUIDs:(id)ds
{
  v11[3] = *MEMORY[0x277D85DE8];
  v11[0] = HUHomeUIServiceLaunchReasonValueResumeSetup;
  v10[0] = HUHomeUIServiceLaunchReasonKey;
  v10[1] = HUHomeUIServiceLaunchHomeUUIDString;
  dsCopy = ds;
  uniqueIdentifier = [home uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v10[2] = HUHomeUIServiceLaunchAccessoryUUIDsArray;
  v11[1] = uUIDString;
  v11[2] = dsCopy;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

+ (id)userInfoForSafetyAndSecurityInHome:(id)home
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = HUHomeUIServiceLaunchReasonKey;
  v7[1] = HUHomeUIServiceLaunchHomeUUIDString;
  v8[0] = HUHomeUIServiceLaunchReasonValueSafetyAndSecurity;
  uniqueIdentifier = [home uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v8[1] = uUIDString;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)userInfoForSiriEndpointInHome:(id)home
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = HUHomeUIServiceLaunchReasonKey;
  v7[1] = HUHomeUIServiceLaunchHomeUUIDString;
  v8[0] = HUHomeUIServiceLaunchReasonValueSiriEndpoint;
  uniqueIdentifier = [home uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v8[1] = uUIDString;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)userInfoForLockAccessFirmwareUpgradeSetupInHome:(id)home
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = HUHomeUIServiceLaunchReasonKey;
  v7[1] = HUHomeUIServiceLaunchHomeUUIDString;
  v8[0] = HUHomeUIServiceLaunchReasonValueLockAccessFirmwareUpdate;
  uniqueIdentifier = [home uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v8[1] = uUIDString;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)userInfoForLockAccessWalletKeySetupInHome:(id)home
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = HUHomeUIServiceLaunchReasonKey;
  v7[1] = HUHomeUIServiceLaunchHomeUUIDString;
  v8[0] = HUHomeUIServiceLaunchReasonValueLockAccessUserOnboardingAll;
  uniqueIdentifier = [home uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v8[1] = uUIDString;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)userInfoForLockAccessPinCodeSetupInHome:(id)home
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = HUHomeUIServiceLaunchReasonKey;
  v7[1] = HUHomeUIServiceLaunchHomeUUIDString;
  v8[0] = HUHomeUIServiceLaunchReasonValueLockAccessUserOnboardingPinCodeOnly;
  uniqueIdentifier = [home uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v8[1] = uUIDString;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)userInfoForUpgradeOfferResults:(id)results
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = HUHomeUIServiceLaunchReasonKey;
  v6[0] = HUHomeUIServiceLaunchReasonValueCameraUpgradeOffer;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)userInfoForThermostatAutoClimateControlSetupInHome:(id)home
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = HUHomeUIServiceLaunchReasonKey;
  v7[1] = HUHomeUIServiceLaunchHomeUUIDString;
  v8[0] = HUHomeUIServiceLaunchReasonValueThermostatAutoClimateControlOnboarding;
  uniqueIdentifier = [home uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v8[1] = uUIDString;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (int64_t)launchReasonFromUserInfo:(id)info
{
  v3 = [info objectForKeyedSubscript:HUHomeUIServiceLaunchReasonKey];
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

+ (id)launchReasonDescription:(int64_t)description
{
  v3 = 0;
  if (description <= 4)
  {
    if (description <= 1)
    {
      if (description)
      {
        if (description != 1)
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

    else if (description == 2)
    {
      v4 = HUHomeUIServiceLaunchReasonValueSafetyAndSecurity;
    }

    else if (description == 3)
    {
      v4 = HUHomeUIServiceLaunchReasonValueSiriEndpoint;
    }

    else
    {
      v4 = HUHomeUIServiceLaunchReasonValueLockAccessFirmwareUpdate;
    }

    goto LABEL_23;
  }

  if (description <= 6)
  {
    if (description == 5)
    {
      v4 = HUHomeUIServiceLaunchReasonValueLockAccessUserOnboardingAll;
    }

    else
    {
      v4 = HUHomeUIServiceLaunchReasonValueLockAccessUserOnboardingPinCodeOnly;
    }

    goto LABEL_23;
  }

  switch(description)
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