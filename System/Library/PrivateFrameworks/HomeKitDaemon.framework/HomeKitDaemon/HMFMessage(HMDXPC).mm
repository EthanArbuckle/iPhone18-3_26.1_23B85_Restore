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

- (uint64_t)requiresSPIEntitlement
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"requiresSPIEntitlement"];

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

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

- (uint64_t)requiresNoSPIEntitlement
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"requiresNoSPIEntitlement"];

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

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

- (uint64_t)requiresCameraClipsEntitlement
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"requiresCameraClipsEntitlement"];

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

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

- (uint64_t)requiresMultiUserSetupEntitlement
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"requiresMultiUserSetupEntitlement"];

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

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

- (uint64_t)requiresSetupPayloadEntitlement
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"requiresSetupPayloadEntitlement"];

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

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

- (uint64_t)requiresMatterSetupPayloadEntitlement
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"requiresMatterSetupPayloadEntitlement"];

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

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

- (uint64_t)requiresPersonManagerEntitlement
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"requiresPersonManagerEntitlement"];

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

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

- (uint64_t)requiresWalletKeyEntitlement
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"requiresWalletKeyEntitlement"];

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

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

- (void)sendPolicy
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"sendPolicy"];

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

- (void)proxyConnection
{
  transport = [self transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = transport;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (uint64_t)homeManagerOptions
{
  proxyConnection = [self proxyConnection];
  v2 = proxyConnection;
  if (proxyConnection)
  {
    homeManagerOptions = [proxyConnection homeManagerOptions];
  }

  else
  {
    homeManagerOptions = -1;
  }

  return homeManagerOptions;
}

- (uint64_t)source
{
  selfCopy = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = selfCopy;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  if (v3 && ![v3 type])
  {
    intValue = 8;
  }

  else
  {
    v4 = [selfCopy numberForKey:@"sourceType"];
    v5 = v4;
    if (v4)
    {
      intValue = [v4 intValue];
    }

    else if ([selfCopy isEntitledForSPIAccess])
    {
      proxyConnection = [selfCopy proxyConnection];
      clientIdentifier = [proxyConnection clientIdentifier];

      if (HMDIsSiriClientIdentifier(clientIdentifier))
      {
        intValue = 1;
      }

      else if ([clientIdentifier isEqualToString:@"BackgroundShortcutRunner"])
      {
        intValue = 10;
      }

      else
      {
        intValue = 5;
      }
    }

    else
    {
      intValue = 6;
    }
  }

  return intValue;
}

- (id)companionAppBundleIdentifier
{
  proxyConnection = [self proxyConnection];
  companionAppBundleIdentifier = [proxyConnection companionAppBundleIdentifier];

  return companionAppBundleIdentifier;
}

- (id)clientIdentifier
{
  proxyConnection = [self proxyConnection];
  clientIdentifier = [proxyConnection clientIdentifier];

  return clientIdentifier;
}

- (uint64_t)sourcePid
{
  proxyConnection = [self proxyConnection];
  v2 = proxyConnection;
  if (proxyConnection)
  {
    clientPid = [proxyConnection clientPid];
  }

  else
  {
    clientPid = 0xFFFFFFFFLL;
  }

  return clientPid;
}

- (uint64_t)isBackground
{
  proxyConnection = [self proxyConnection];
  processInfo = [proxyConnection processInfo];
  isBackgrounded = [processInfo isBackgrounded];

  return isBackgrounded;
}

- (uint64_t)isEntitledForVendorAccessForAccessoryWithVendorInfo:()HMDXPC
{
  appBundleID = [a3 appBundleID];
  if ([appBundleID length])
  {
    proxyConnection = [self proxyConnection];
    applicationBundleIdentifier = [proxyConnection applicationBundleIdentifier];
    v7 = [appBundleID isEqual:applicationBundleIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)isEntitledForHomeLocationFeedbackAccess
{
  proxyConnection = [self proxyConnection];
  isEntitledForHomeLocationFeedbackAccess = [proxyConnection isEntitledForHomeLocationFeedbackAccess];

  return isEntitledForHomeLocationFeedbackAccess;
}

- (uint64_t)isEntitledForAssistantIdentifiers
{
  proxyConnection = [self proxyConnection];
  isEntitledForAssistantIdentifiers = [proxyConnection isEntitledForAssistantIdentifiers];

  return isEntitledForAssistantIdentifiers;
}

- (uint64_t)isEntitledForStateDump
{
  proxyConnection = [self proxyConnection];
  isEntitledForStateDump = [proxyConnection isEntitledForStateDump];

  return isEntitledForStateDump;
}

- (uint64_t)isEntitledForSecureAccess
{
  proxyConnection = [self proxyConnection];
  isEntitledForSecureAccess = [proxyConnection isEntitledForSecureAccess];

  return isEntitledForSecureAccess;
}

- (uint64_t)isEntitledForShortcutsAutomationAccess
{
  proxyConnection = [self proxyConnection];
  v3 = proxyConnection;
  if (proxyConnection)
  {
    isEntitledForShortcutsAutomationAccess = [proxyConnection isEntitledForShortcutsAutomationAccess];
  }

  else if ([self isSecureRemote])
  {
    headers = [self headers];
    isEntitledForShortcutsAutomationAccess = [headers hmf_BOOLForKey:@"cl.shortcutent"];
  }

  else
  {
    isEntitledForShortcutsAutomationAccess = 0;
  }

  return isEntitledForShortcutsAutomationAccess;
}

- (uint64_t)isEntitledToProvideMatterSetupPayload
{
  proxyConnection = [self proxyConnection];
  isEntitledToProvideMatterSetupPayload = [proxyConnection isEntitledToProvideMatterSetupPayload];

  return isEntitledToProvideMatterSetupPayload;
}

- (uint64_t)isEntitledToProvideAccessorySetupPayload
{
  proxyConnection = [self proxyConnection];
  isEntitledToProvideAccessorySetupPayload = [proxyConnection isEntitledToProvideAccessorySetupPayload];

  return isEntitledToProvideAccessorySetupPayload;
}

- (uint64_t)isEntitledForHomeLocationAccess
{
  proxyConnection = [self proxyConnection];
  isEntitledForHomeLocationAccess = [proxyConnection isEntitledForHomeLocationAccess];

  return isEntitledForHomeLocationAccess;
}

- (uint64_t)isAuthorizedForLocationAccess
{
  proxyConnection = [self proxyConnection];
  v3 = proxyConnection;
  if (proxyConnection)
  {
    isAuthorizedForLocationAccess = [proxyConnection isAuthorizedForLocationAccess];
  }

  else if ([self isSecureRemote])
  {
    headers = [self headers];
    isAuthorizedForLocationAccess = [headers hmf_BOOLForKey:@"cl.locauthz"];
  }

  else
  {
    isAuthorizedForLocationAccess = 0;
  }

  return isAuthorizedForLocationAccess;
}

- (uint64_t)isEntitledForBackgroundMode
{
  proxyConnection = [self proxyConnection];
  isEntitledForBackgroundMode = [proxyConnection isEntitledForBackgroundMode];

  return isEntitledForBackgroundMode;
}

- (uint64_t)isAuthorizedForMicrophoneAccess
{
  proxyConnection = [self proxyConnection];
  isAuthorizedForMicrophoneAccess = [proxyConnection isAuthorizedForMicrophoneAccess];

  return isAuthorizedForMicrophoneAccess;
}

- (uint64_t)isAuthorizedForHomeDataAccess
{
  if ([self isInternal] & 1) != 0 || (objc_msgSend(self, "isRemote"))
  {
    return 1;
  }

  proxyConnection = [self proxyConnection];
  isAuthorizedForHomeDataAccess = [proxyConnection isAuthorizedForHomeDataAccess];

  return isAuthorizedForHomeDataAccess;
}

- (uint64_t)isEntitledForSPIAccess
{
  if ([self isInternal])
  {
    return 1;
  }

  proxyConnection = [self proxyConnection];
  isEntitledForSPIAccess = [proxyConnection isEntitledForSPIAccess];

  return isEntitledForSPIAccess;
}

- (uint64_t)isEntitledForAPIAccess
{
  if ([self isInternal] & 1) != 0 || (objc_msgSend(self, "isRemote"))
  {
    return 1;
  }

  proxyConnection = [self proxyConnection];
  isEntitledForAPIAccess = [proxyConnection isEntitledForAPIAccess];

  return isEntitledForAPIAccess;
}

- (uint64_t)entitlements
{
  proxyConnection = [self proxyConnection];
  entitlements = [proxyConnection entitlements];

  return entitlements;
}

- (id)clientName
{
  proxyConnection = [self proxyConnection];
  name = [proxyConnection name];

  return name;
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
  v10 = [self alloc];
  allMessageDestinations = [MEMORY[0x277D0F820] allMessageDestinations];
  v12 = [v10 initWithName:v8 qualityOfService:-1 destination:allMessageDestinations userInfo:v9 headers:0 payload:v7];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entitledMessageWithName:()HMDXPC identifier:messagePayload:
{
  v8 = a4;
  v9 = [self entitledMessageWithName:a3 messagePayload:a5];
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
  v10 = [self alloc];
  allMessageDestinations = [MEMORY[0x277D0F820] allMessageDestinations];
  v12 = [v10 initWithName:v8 qualityOfService:-1 destination:allMessageDestinations userInfo:v9 headers:0 payload:v7];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end