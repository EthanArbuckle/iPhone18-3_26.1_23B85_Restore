@interface HMFMessage(HMDXPC)
+ (id)entitledMessageWithName:()HMDXPC identifier:messagePayload:;
+ (id)entitledMessageWithName:()HMDXPC messagePayload:;
+ (id)nonSPIEntitledMessageWithName:()HMDXPC messagePayload:;
- (id)clientIdentifier;
- (id)clientName;
- (id)companionAppBundleIdentifier;
- (uint64_t)entitlements;
- (uint64_t)homeManagerOptions;
- (uint64_t)isAuthorizedForHomeDataAccess;
- (uint64_t)isAuthorizedForLocationAccess;
- (uint64_t)isAuthorizedForMicrophoneAccess;
- (uint64_t)isBackground;
- (uint64_t)isEntitledForAPIAccess;
- (uint64_t)isEntitledForAssistantIdentifiers;
- (uint64_t)isEntitledForBackgroundMode;
- (uint64_t)isEntitledForHomeLocationAccess;
- (uint64_t)isEntitledForHomeLocationFeedbackAccess;
- (uint64_t)isEntitledForSPIAccess;
- (uint64_t)isEntitledForSecureAccess;
- (uint64_t)isEntitledForShortcutsAutomationAccess;
- (uint64_t)isEntitledForStateDump;
- (uint64_t)isEntitledForVendorAccessForAccessoryWithVendorInfo:()HMDXPC;
- (uint64_t)isEntitledToProvideAccessorySetupPayload;
- (uint64_t)isEntitledToProvideMatterSetupPayload;
- (uint64_t)requiresCameraClipsEntitlement;
- (uint64_t)requiresMatterSetupPayloadEntitlement;
- (uint64_t)requiresMultiUserSetupEntitlement;
- (uint64_t)requiresNoSPIEntitlement;
- (uint64_t)requiresPersonManagerEntitlement;
- (uint64_t)requiresSPIEntitlement;
- (uint64_t)requiresSetupPayloadEntitlement;
- (uint64_t)requiresWalletKeyEntitlement;
- (uint64_t)source;
- (uint64_t)sourcePid;
- (void)proxyConnection;
- (void)sendPolicy;
@end

@implementation HMFMessage(HMDXPC)

- (uint64_t)homeManagerOptions
{
  v1 = [a1 proxyConnection];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 homeManagerOptions];
  }

  else
  {
    v3 = -1;
  }

  return v3;
}

- (void)sendPolicy
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"sendPolicy"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (uint64_t)source
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  if (v3 && ![v3 type])
  {
    v6 = 8;
  }

  else
  {
    v4 = [v1 numberForKey:@"sourceType"];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 intValue];
    }

    else if ([v1 isEntitledForSPIAccess])
    {
      v7 = [v1 proxyConnection];
      v8 = [v7 clientIdentifier];

      if (HMDIsSiriClientIdentifier(v8))
      {
        v6 = 1;
      }

      else if ([v8 isEqualToString:@"BackgroundShortcutRunner"])
      {
        v6 = 10;
      }

      else
      {
        v6 = 5;
      }
    }

    else
    {
      v6 = 6;
    }
  }

  return v6;
}

- (id)companionAppBundleIdentifier
{
  v1 = [a1 proxyConnection];
  v2 = [v1 companionAppBundleIdentifier];

  return v2;
}

- (id)clientIdentifier
{
  v1 = [a1 proxyConnection];
  v2 = [v1 clientIdentifier];

  return v2;
}

- (uint64_t)sourcePid
{
  v1 = [a1 proxyConnection];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 clientPid];
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  return v3;
}

- (uint64_t)isBackground
{
  v1 = [a1 proxyConnection];
  v2 = [v1 processInfo];
  v3 = [v2 isBackgrounded];

  return v3;
}

- (uint64_t)isEntitledForVendorAccessForAccessoryWithVendorInfo:()HMDXPC
{
  v4 = [a3 appBundleID];
  if ([v4 length])
  {
    v5 = [a1 proxyConnection];
    v6 = [v5 applicationBundleIdentifier];
    v7 = [v4 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)isEntitledForHomeLocationFeedbackAccess
{
  v1 = [a1 proxyConnection];
  v2 = [v1 isEntitledForHomeLocationFeedbackAccess];

  return v2;
}

- (uint64_t)isEntitledForAssistantIdentifiers
{
  v1 = [a1 proxyConnection];
  v2 = [v1 isEntitledForAssistantIdentifiers];

  return v2;
}

- (uint64_t)isEntitledForStateDump
{
  v1 = [a1 proxyConnection];
  v2 = [v1 isEntitledForStateDump];

  return v2;
}

- (uint64_t)isEntitledForSecureAccess
{
  v1 = [a1 proxyConnection];
  v2 = [v1 isEntitledForSecureAccess];

  return v2;
}

- (uint64_t)isEntitledForShortcutsAutomationAccess
{
  v1 = [a1 proxyConnection];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 isEntitledForShortcutsAutomationAccess];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)isEntitledToProvideMatterSetupPayload
{
  v1 = [a1 proxyConnection];
  v2 = [v1 isEntitledToProvideMatterSetupPayload];

  return v2;
}

- (uint64_t)isEntitledToProvideAccessorySetupPayload
{
  v1 = [a1 proxyConnection];
  v2 = [v1 isEntitledToProvideAccessorySetupPayload];

  return v2;
}

- (uint64_t)isEntitledForHomeLocationAccess
{
  v1 = [a1 proxyConnection];
  v2 = [v1 isEntitledForHomeLocationAccess];

  return v2;
}

- (uint64_t)isAuthorizedForLocationAccess
{
  v1 = [a1 proxyConnection];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 isAuthorizedForLocationAccess];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)isEntitledForBackgroundMode
{
  v1 = [a1 proxyConnection];
  v2 = [v1 isEntitledForBackgroundMode];

  return v2;
}

- (uint64_t)isAuthorizedForMicrophoneAccess
{
  v1 = [a1 proxyConnection];
  v2 = [v1 isAuthorizedForMicrophoneAccess];

  return v2;
}

- (uint64_t)isAuthorizedForHomeDataAccess
{
  if ([a1 isInternal] & 1) != 0 || (objc_msgSend(a1, "isRemote"))
  {
    return 1;
  }

  v3 = [a1 proxyConnection];
  v4 = [v3 isAuthorizedForHomeDataAccess];

  return v4;
}

- (uint64_t)isEntitledForSPIAccess
{
  if ([a1 isInternal])
  {
    return 1;
  }

  v3 = [a1 proxyConnection];
  v4 = [v3 isEntitledForSPIAccess];

  return v4;
}

- (uint64_t)isEntitledForAPIAccess
{
  if ([a1 isInternal] & 1) != 0 || (objc_msgSend(a1, "isRemote"))
  {
    return 1;
  }

  v3 = [a1 proxyConnection];
  v4 = [v3 isEntitledForAPIAccess];

  return v4;
}

- (uint64_t)entitlements
{
  v1 = [a1 proxyConnection];
  v2 = [v1 entitlements];

  return v2;
}

- (void)proxyConnection
{
  v1 = [a1 transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (uint64_t)requiresWalletKeyEntitlement
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"requiresWalletKeyEntitlement"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 BOOLValue];
  return v5;
}

- (uint64_t)requiresPersonManagerEntitlement
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"requiresPersonManagerEntitlement"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 BOOLValue];
  return v5;
}

- (uint64_t)requiresMultiUserSetupEntitlement
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"requiresMultiUserSetupEntitlement"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 BOOLValue];
  return v5;
}

- (uint64_t)requiresCameraClipsEntitlement
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"requiresCameraClipsEntitlement"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 BOOLValue];
  return v5;
}

- (uint64_t)requiresMatterSetupPayloadEntitlement
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"requiresMatterSetupPayloadEntitlement"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 BOOLValue];
  return v5;
}

- (uint64_t)requiresSetupPayloadEntitlement
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"requiresSetupPayloadEntitlement"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 BOOLValue];
  return v5;
}

- (uint64_t)requiresNoSPIEntitlement
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"requiresNoSPIEntitlement"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 BOOLValue];
  return v5;
}

- (uint64_t)requiresSPIEntitlement
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"requiresSPIEntitlement"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 BOOLValue];
  return v5;
}

- (id)clientName
{
  v1 = [a1 proxyConnection];
  v2 = [v1 name];

  return v2;
}

+ (id)nonSPIEntitledMessageWithName:()HMDXPC messagePayload:
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15 = @"requiresNoSPIEntitlement";
  v16[0] = MEMORY[0x277CBEC38];
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = [a1 alloc];
  v11 = [MEMORY[0x277D0F820] allMessageDestinations];
  v12 = [v10 initWithName:v8 qualityOfService:-1 destination:v11 userInfo:v9 headers:0 payload:v7];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entitledMessageWithName:()HMDXPC identifier:messagePayload:
{
  v8 = a4;
  v9 = [a1 entitledMessageWithName:a3 messagePayload:a5];
  [v9 setIdentifier:v8];

  return v9;
}

+ (id)entitledMessageWithName:()HMDXPC messagePayload:
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15 = @"requiresSPIEntitlement";
  v16[0] = MEMORY[0x277CBEC38];
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = [a1 alloc];
  v11 = [MEMORY[0x277D0F820] allMessageDestinations];
  v12 = [v10 initWithName:v8 qualityOfService:-1 destination:v11 userInfo:v9 headers:0 payload:v7];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end