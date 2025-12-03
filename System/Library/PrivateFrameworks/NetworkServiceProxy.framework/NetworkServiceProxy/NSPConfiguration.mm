@interface NSPConfiguration
+ (BOOL)fetchDate:(id)date isWithinStart:(id)start end:(id)end etag:(id)etag;
+ (BOOL)validatePrivacyProxyConfiguration:(id)configuration;
+ (id)defaultConfiguration;
+ (id)proxyAccountTypeToString:(id)string;
+ (id)proxyTrafficStateToString:(id)string;
+ (void)verifyConfigurationSignature:(id)signature configuration:(id)configuration host:(id)host validateCert:(BOOL)cert completionHandler:(id)handler;
- (BOOL)fetchDateIsWithinStart:(id)start end:(id)end;
- (BOOL)isDead;
- (BOOL)saveToPreferences;
- (NSPConfiguration)initWithCoder:(id)coder;
- (NSPConfiguration)initWithTimestamp:(id)timestamp fromDictionary:(id)dictionary;
- (NSString)configServerHost;
- (id)copyTLVData;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createConfigFetchURLWithPath;
- (id)description;
- (id)diagnostics;
- (id)initFromPreferences;
- (id)initFromTLVs:(id)vs;
- (id)tierToString;
- (void)encodeWithCoder:(id)coder;
- (void)incrementSessionCountersOnFirstLaunch;
- (void)merge:(id)merge;
- (void)saveInternalOptions:(id)options;
- (void)saveToKeychain;
- (void)setupNSURLSession;
@end

@implementation NSPConfiguration

+ (id)proxyTrafficStateToString:(id)string
{
  unsignedLongLongValue = [string unsignedLongLongValue];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = v4;
  if (unsignedLongLongValue)
  {
    [v4 addObject:@"Safari Unencrypted"];
    if ((unsignedLongLongValue & 2) == 0)
    {
LABEL_3:
      if ((unsignedLongLongValue & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((unsignedLongLongValue & 2) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:@"Safari DNS"];
  if ((unsignedLongLongValue & 4) == 0)
  {
LABEL_4:
    if ((unsignedLongLongValue & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v5 addObject:@"Safari Trackers"];
  if ((unsignedLongLongValue & 8) == 0)
  {
LABEL_5:
    if ((unsignedLongLongValue & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v5 addObject:@"Safari All"];
  if ((unsignedLongLongValue & 0x10) == 0)
  {
LABEL_6:
    if ((unsignedLongLongValue & 0x40000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v5 addObject:@"Safari HTTP"];
  if ((unsignedLongLongValue & 0x40000) == 0)
  {
LABEL_7:
    if ((unsignedLongLongValue & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v5 addObject:@"Safari Unencrypted (Private)"];
  if ((unsignedLongLongValue & 0x80000) == 0)
  {
LABEL_8:
    if ((unsignedLongLongValue & 0x100000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v5 addObject:@"Safari DNS (Private)"];
  if ((unsignedLongLongValue & 0x100000) == 0)
  {
LABEL_9:
    if ((unsignedLongLongValue & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v5 addObject:@"Safari All (Private)"];
  if ((unsignedLongLongValue & 0x200000) == 0)
  {
LABEL_10:
    if ((unsignedLongLongValue & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  [v5 addObject:@"Safari Metrics"];
  if ((unsignedLongLongValue & 0x20) == 0)
  {
LABEL_11:
    if ((unsignedLongLongValue & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  [v5 addObject:@"Mail Trackers"];
  if ((unsignedLongLongValue & 0x40) == 0)
  {
LABEL_12:
    if ((unsignedLongLongValue & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  [v5 addObject:@"Any Unencrypted"];
  if ((unsignedLongLongValue & 0x80) == 0)
  {
LABEL_13:
    if ((unsignedLongLongValue & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  [v5 addObject:@"Any DNS"];
  if ((unsignedLongLongValue & 0x100) == 0)
  {
LABEL_14:
    if ((unsignedLongLongValue & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  [v5 addObject:@"Known Trackers"];
  if ((unsignedLongLongValue & 0x200) == 0)
  {
LABEL_15:
    if ((unsignedLongLongValue & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v5 addObject:@"Any App Trackers"];
  if ((unsignedLongLongValue & 0x400) == 0)
  {
LABEL_16:
    if ((unsignedLongLongValue & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v5 addObject:@"News URL Resolution"];
  if ((unsignedLongLongValue & 0x800) == 0)
  {
LABEL_17:
    if ((unsignedLongLongValue & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  [v5 addObject:@"Exposure Notifications"];
  if ((unsignedLongLongValue & 0x1000) == 0)
  {
LABEL_18:
    if ((unsignedLongLongValue & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v5 addObject:@"Apple Certificates"];
  if ((unsignedLongLongValue & 0x2000) == 0)
  {
LABEL_19:
    if ((unsignedLongLongValue & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v5 addObject:@"Network Tools"];
  if ((unsignedLongLongValue & 0x4000) == 0)
  {
LABEL_20:
    if ((unsignedLongLongValue & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  [v5 addObject:@"Metrics Upload"];
  if ((unsignedLongLongValue & 0x8000) == 0)
  {
LABEL_21:
    if ((unsignedLongLongValue & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  [v5 addObject:@"Branded Calling"];
  if ((unsignedLongLongValue & 0x10000) == 0)
  {
LABEL_22:
    if ((unsignedLongLongValue & 0x20000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  [v5 addObject:@"News Embedded Content"];
  if ((unsignedLongLongValue & 0x20000) == 0)
  {
LABEL_23:
    if ((unsignedLongLongValue & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  [v5 addObject:@"App Metrics"];
  if ((unsignedLongLongValue & 0x400000) == 0)
  {
LABEL_24:
    if ((unsignedLongLongValue & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  [v5 addObject:@"Promoted Content"];
  if ((unsignedLongLongValue & 0x800000) == 0)
  {
LABEL_25:
    if ((unsignedLongLongValue & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  [v5 addObject:@"Postback Fetch"];
  if ((unsignedLongLongValue & 0x1000000) == 0)
  {
LABEL_26:
    if ((unsignedLongLongValue & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  [v5 addObject:@"Password Manager Icon Fetching"];
  if ((unsignedLongLongValue & 0x2000000) == 0)
  {
LABEL_27:
    if ((unsignedLongLongValue & 0x4000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_57:
  [v5 addObject:@"Launch Warning Details"];
  if ((unsignedLongLongValue & 0x4000000) != 0)
  {
LABEL_28:
    [v5 addObject:@"Podcasts Link Presentation"];
  }

LABEL_29:

  return v5;
}

+ (id)proxyAccountTypeToString:(id)string
{
  stringCopy = string;
  if ([stringCopy unsignedIntegerValue] == 1)
  {
    v4 = @"Free";
  }

  else if ([stringCopy unsignedIntegerValue] == 2)
  {
    v4 = @"Subscriber";
  }

  else
  {
    v4 = @"Unknown";
  }

  return v4;
}

- (id)diagnostics
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = MEMORY[0x1E696AB78];
  resurrectionDate = [(NSPConfiguration *)self resurrectionDate];
  v6 = [v4 localizedStringFromDate:resurrectionDate dateStyle:1 timeStyle:2];
  [v3 setObject:v6 forKeyedSubscript:@"resurrectionDate"];

  etag = [(NSPConfiguration *)self etag];
  [v3 setObject:etag forKeyedSubscript:@"Etag"];

  epoch = [(NSPConfiguration *)self epoch];
  [v3 setObject:epoch forKeyedSubscript:@"Epoch"];

  proxyTrafficState = [(NSPConfiguration *)self proxyTrafficState];
  v10 = [NSPConfiguration proxyTrafficStateToString:proxyTrafficState];
  [v3 setObject:v10 forKeyedSubscript:@"ProxyTrafficState"];

  v11 = MEMORY[0x1E696AB78];
  anyAppEnabledDate = [(NSPConfiguration *)self anyAppEnabledDate];
  v13 = [v11 localizedStringFromDate:anyAppEnabledDate dateStyle:1 timeStyle:2];
  [v3 setObject:v13 forKeyedSubscript:@"AnyAppEnabledDate"];

  v14 = MEMORY[0x1E696AB78];
  configurationFetchDate = [(NSPConfiguration *)self configurationFetchDate];
  v16 = [v14 localizedStringFromDate:configurationFetchDate dateStyle:1 timeStyle:2];
  [v3 setObject:v16 forKeyedSubscript:@"PrivacyProxyConfigurationFetchDate"];

  willResetSubscriberTierTomorrow = [(NSPConfiguration *)self willResetSubscriberTierTomorrow];
  [v3 setObject:willResetSubscriberTierTomorrow forKeyedSubscript:@"WillResetSubscriberTierTomorrow"];

  v18 = MEMORY[0x1E696AB78];
  resetTomorrowDate = [(NSPConfiguration *)self resetTomorrowDate];
  v20 = [v18 localizedStringFromDate:resetTomorrowDate dateStyle:1 timeStyle:2];
  [v3 setObject:v20 forKeyedSubscript:@"ResetTomorrowDate"];

  geohashSharingEnabledStatus = [(NSPConfiguration *)self geohashSharingEnabledStatus];
  [v3 setObject:geohashSharingEnabledStatus forKeyedSubscript:@"GeohashSharingEnabled"];

  preferredPathRoutingEnabledStatus = [(NSPConfiguration *)self preferredPathRoutingEnabledStatus];
  [v3 setObject:preferredPathRoutingEnabledStatus forKeyedSubscript:@"PreferredPathRoutingEnabled"];

  privateAccessTokensEnabledStatus = [(NSPConfiguration *)self privateAccessTokensEnabledStatus];
  [v3 setObject:privateAccessTokensEnabledStatus forKeyedSubscript:@"PrivateAccessTokensEnabled"];

  privateAccessTokensAllowTools = [(NSPConfiguration *)self privateAccessTokensAllowTools];
  [v3 setObject:privateAccessTokensAllowTools forKeyedSubscript:@"PrivateAccessTokensAllowTools"];

  inProcessFlowDivert = [(NSPConfiguration *)self inProcessFlowDivert];
  [v3 setObject:inProcessFlowDivert forKeyedSubscript:@"InProcessFlowDivert"];

  configServerEnabled = [(NSPConfiguration *)self configServerEnabled];
  [v3 setObject:configServerEnabled forKeyedSubscript:@"PrivacyProxyConfigurationServerEnabled"];

  configServerHost = [(NSPConfiguration *)self configServerHost];
  [v3 setObject:configServerHost forKeyedSubscript:@"PrivacyProxyConfigurationServerHost"];

  userTier = [(NSPConfiguration *)self userTier];
  intValue = [userTier intValue];
  if (intValue >= 3)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", intValue];
  }

  else
  {
    v30 = off_1E7A31240[intValue];
  }

  [v3 setObject:v30 forKeyedSubscript:@"UserTier"];

  proxyAccountType = [(NSPConfiguration *)self proxyAccountType];
  v32 = [NSPConfiguration proxyAccountTypeToString:proxyAccountType];
  [v3 setObject:v32 forKeyedSubscript:@"ProxyAccountType"];

  proxyAccountUnlimited = [(NSPConfiguration *)self proxyAccountUnlimited];
  [v3 setObject:proxyAccountUnlimited forKeyedSubscript:@"ProxyAccountUnlimited"];

  v34 = MEMORY[0x1E696AD98];
  proxyConfiguration = [(NSPConfiguration *)self proxyConfiguration];
  v36 = [v34 numberWithBool:{objc_msgSend(proxyConfiguration, "enabled")}];
  [v3 setObject:v36 forKeyedSubscript:@"TokenFetchEnabled"];

  enabled = [(NSPConfiguration *)self enabled];
  [v3 setObject:enabled forKeyedSubscript:@"enabled"];

  version = [(NSPConfiguration *)self version];
  [v3 setObject:version forKeyedSubscript:@"version"];

  userPreferredTier = [(NSPConfiguration *)self userPreferredTier];
  intValue2 = [userPreferredTier intValue];
  if (intValue2 >= 3)
  {
    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", intValue2];
  }

  else
  {
    v41 = off_1E7A31240[intValue2];
  }

  [v3 setObject:v41 forKeyedSubscript:@"UserPreferredTier"];

  subscriberEnabledFromNonSettingsApp = [(NSPConfiguration *)self subscriberEnabledFromNonSettingsApp];
  [v3 setObject:subscriberEnabledFromNonSettingsApp forKeyedSubscript:@"SubscriberEnabledFromNonSettingsApp"];

  trialConfigVersion = [(NSPConfiguration *)self trialConfigVersion];
  [v3 setObject:trialConfigVersion forKeyedSubscript:@"TrialConfigVersion"];

  return v3;
}

- (id)description
{
  if (self)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
    version = [(NSPConfiguration *)self version];
    [(NSMutableString *)v3 appendPrettyObject:version withName:@"Configuration Version" andIndent:0 options:14];

    enabled = [(NSPConfiguration *)self enabled];
    [(NSMutableString *)v3 appendPrettyObject:enabled withName:@"Enabled" andIndent:0 options:14];

    userTier = [(NSPConfiguration *)self userTier];
    intValue = [userTier intValue];
    if (intValue >= 3)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", intValue];
    }

    else
    {
      v8 = off_1E7A31240[intValue];
    }

    [(NSMutableString *)v3 appendPrettyObject:v8 withName:@"User Tier" andIndent:0 options:14];

    v9 = +[NSPConfiguration defaultConfiguration];
    v10 = [v9 copy];

    configServerPath = [(NSPConfiguration *)self configServerPath];
    if (configServerPath)
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = v10;
    }

    configServerPath2 = [(NSPConfiguration *)selfCopy configServerPath];

    if (os_variant_allows_internal_security_policies())
    {
      configServerHost = [(NSPConfiguration *)self configServerHost];
      v15 = @"Configuration Server";
      if (configServerHost)
      {
        v16 = configServerHost;
        configServerHost2 = [(NSPConfiguration *)self configServerHost];
        v18 = v10;
        configServerHost3 = [(NSPConfiguration *)v10 configServerHost];
        v20 = [configServerHost2 isEqualToString:configServerHost3];

        if (!v20)
        {
          v15 = @"Configuration Server (user-overridden)";
        }
      }

      else
      {
        v18 = v10;
      }

      overrideConfigServerPath = [(NSPConfiguration *)self overrideConfigServerPath];

      if (overrideConfigServerPath)
      {
        overrideConfigServerPath2 = [(NSPConfiguration *)self overrideConfigServerPath];

        v21 = @"Configuration Server Path (user-overridden)";
        configServerPath2 = overrideConfigServerPath2;
      }

      else
      {
        v21 = @"Configuration Server Path";
      }

      v10 = v18;
    }

    else
    {
      v21 = @"Configuration Server Path";
      v15 = @"Configuration Server";
    }

    configServerHost4 = [(NSPConfiguration *)self configServerHost];
    [(NSMutableString *)v3 appendPrettyObject:configServerHost4 withName:v15 andIndent:0 options:14];

    [(NSMutableString *)v3 appendPrettyObject:configServerPath2 withName:v21 andIndent:0 options:14];
    configServerHeaders = [(NSPConfiguration *)self configServerHeaders];

    if (configServerHeaders)
    {
      configServerHeaders2 = [(NSPConfiguration *)self configServerHeaders];
      [(NSMutableString *)v3 appendPrettyObject:configServerHeaders2 withName:@"Configuration Server Headers (user-overriden)" andIndent:0 options:14];
    }

    resurrectionDate = [(NSPConfiguration *)self resurrectionDate];
    [(NSMutableString *)v3 appendPrettyObject:resurrectionDate withName:@"Resurrection Date" andIndent:0 options:14];

    configServerEnabled = [(NSPConfiguration *)self configServerEnabled];
    [(NSMutableString *)v3 appendPrettyObject:configServerEnabled withName:@"Config Server Enabled" andIndent:0 options:14];

    [(NSMutableString *)v3 appendPrettyBOOL:@"Ignore Invalid Certs" withName:0 andIndent:14 options:?];
    [(NSMutableString *)v3 appendPrettyBOOL:@"Ignore Config Signature" withName:0 andIndent:14 options:?];
    [(NSMutableString *)v3 appendPrettyBOOL:@"Ignore Platform Binary" withName:0 andIndent:14 options:?];
    proxyConfigurationData = [(NSPConfiguration *)self proxyConfigurationData];
    [(NSMutableString *)v3 appendPrettyObject:proxyConfigurationData withName:@"Proxy configuration received data" andIndent:0 options:14];

    proxyConfiguration = [(NSPConfiguration *)self proxyConfiguration];
    data = [proxyConfiguration data];
    [(NSMutableString *)v3 appendPrettyObject:data withName:@"Proxy configuration stored data" andIndent:0 options:14];

    proxyConfiguration2 = [(NSPConfiguration *)self proxyConfiguration];
    [(NSMutableString *)v3 appendPrettyObject:proxyConfiguration2 withName:@"Proxy configuration" andIndent:0 options:14];

    etag = [(NSPConfiguration *)self etag];
    [(NSMutableString *)v3 appendPrettyObject:etag withName:@"ETag" andIndent:0 options:14];

    epoch = [(NSPConfiguration *)self epoch];
    [(NSMutableString *)v3 appendPrettyObject:epoch withName:@"Epoch" andIndent:0 options:14];

    proxyTrafficState = [(NSPConfiguration *)self proxyTrafficState];
    v36 = [NSPConfiguration proxyTrafficStateToString:proxyTrafficState];

    [(NSMutableString *)v3 appendPrettyObject:v36 withName:@"Proxy Traffic" andIndent:0 options:14];
    v37 = MEMORY[0x1E696AB78];
    anyAppEnabledDate = [(NSPConfiguration *)self anyAppEnabledDate];
    v39 = [v37 localizedStringFromDate:anyAppEnabledDate dateStyle:1 timeStyle:2];
    [(NSMutableString *)v3 appendPrettyObject:v39 withName:@"Any App Enabled Date" andIndent:0 options:14];

    v40 = MEMORY[0x1E696AB78];
    configurationFetchDate = [(NSPConfiguration *)self configurationFetchDate];
    v42 = [v40 localizedStringFromDate:configurationFetchDate dateStyle:1 timeStyle:2];
    [(NSMutableString *)v3 appendPrettyObject:v42 withName:@"Configuration Fetch Date" andIndent:0 options:14];

    willResetSubscriberTierTomorrow = [(NSPConfiguration *)self willResetSubscriberTierTomorrow];
    [(NSMutableString *)v3 appendPrettyObject:willResetSubscriberTierTomorrow withName:@"Will Reset Subscriber Tier Tomorrow" andIndent:0 options:14];

    v44 = MEMORY[0x1E696AB78];
    resetTomorrowDate = [(NSPConfiguration *)self resetTomorrowDate];
    v46 = [v44 localizedStringFromDate:resetTomorrowDate dateStyle:1 timeStyle:2];
    [(NSMutableString *)v3 appendPrettyObject:v46 withName:@"Tomorrow Reset Date" andIndent:0 options:14];

    cloudSubscriptionCheckEnabled = [(NSPConfiguration *)self cloudSubscriptionCheckEnabled];
    [(NSMutableString *)v3 appendPrettyObject:cloudSubscriptionCheckEnabled withName:@"Cloud Subscription Check Enabled" andIndent:0 options:14];

    geohashSharingEnabledStatus = [(NSPConfiguration *)self geohashSharingEnabledStatus];
    [(NSMutableString *)v3 appendPrettyObject:geohashSharingEnabledStatus withName:@"Geohash Sharing Enabled" andIndent:0 options:14];

    geohashOverride = [(NSPConfiguration *)self geohashOverride];
    [(NSMutableString *)v3 appendPrettyObject:geohashOverride withName:@"Geohash Override" andIndent:0 options:14];

    preferredPathRoutingEnabledStatus = [(NSPConfiguration *)self preferredPathRoutingEnabledStatus];
    [(NSMutableString *)v3 appendPrettyObject:preferredPathRoutingEnabledStatus withName:@"Preferred Path Routing Enabled" andIndent:0 options:14];

    privateAccessTokensEnabledStatus = [(NSPConfiguration *)self privateAccessTokensEnabledStatus];
    [(NSMutableString *)v3 appendPrettyObject:privateAccessTokensEnabledStatus withName:@"Private Access Tokens Enabled" andIndent:0 options:14];

    privateAccessTokensAllowTools = [(NSPConfiguration *)self privateAccessTokensAllowTools];
    [(NSMutableString *)v3 appendPrettyObject:privateAccessTokensAllowTools withName:@"Private Access Tokens Allow Tools" andIndent:0 options:14];

    inProcessFlowDivert = [(NSPConfiguration *)self inProcessFlowDivert];
    [(NSMutableString *)v3 appendPrettyObject:inProcessFlowDivert withName:@"In-Process Flow Divert" andIndent:0 options:14];

    proxyAccountType = [(NSPConfiguration *)self proxyAccountType];
    v55 = [NSPConfiguration proxyAccountTypeToString:proxyAccountType];
    [(NSMutableString *)v3 appendPrettyObject:v55 withName:@"Proxy Account Type" andIndent:0 options:14];

    proxyAccountUnlimited = [(NSPConfiguration *)self proxyAccountUnlimited];
    [(NSMutableString *)v3 appendPrettyObject:proxyAccountUnlimited withName:@"Proxy Account Unlimited" andIndent:0 options:14];

    userPreferredTier = [(NSPConfiguration *)self userPreferredTier];
    intValue2 = [userPreferredTier intValue];
    if (intValue2 >= 3)
    {
      v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", intValue2];
    }

    else
    {
      v59 = off_1E7A31240[intValue2];
    }

    [(NSMutableString *)v3 appendPrettyObject:v59 withName:@"User preferred Tier" andIndent:0 options:14];

    subscriberEnabledFromNonSettingsApp = [(NSPConfiguration *)self subscriberEnabledFromNonSettingsApp];
    -[NSMutableString appendPrettyBOOL:withName:andIndent:options:](v3, [subscriberEnabledFromNonSettingsApp BOOLValue], @"Subscriber Enabled from Non-Settings App", 0, 14);

    trialConfigVersion = [(NSPConfiguration *)self trialConfigVersion];
    [(NSMutableString *)v3 appendPrettyObject:trialConfigVersion withName:@"Trial Config Version" andIndent:0 options:14];

    lastPrivateCloudComputeEnvironment = [(NSPConfiguration *)self lastPrivateCloudComputeEnvironment];
    [(NSMutableString *)v3 appendPrettyObject:lastPrivateCloudComputeEnvironment withName:@"Last PrivateCloudCompute environment" andIndent:0 options:14];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)defaultConfiguration
{
  if (qword_1ED4BF630 != -1)
  {
    dispatch_once(&qword_1ED4BF630, &__block_literal_global_6);
  }

  v3 = _MergedGlobals_29;

  return v3;
}

void __40__NSPConfiguration_defaultConfiguration__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithPath:@"/System/Library/PrivateFrameworks/NetworkServiceProxy.framework"];
  v0 = [v2 objectForInfoDictionaryKey:@"NSPDefaults"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v1 = [[NSPConfiguration alloc] initWithTimestamp:0 fromDictionary:v0];
    if (v1)
    {
      objc_storeStrong(&_MergedGlobals_29, v1);
    }
  }
}

- (NSPConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v77.receiver = self;
  v77.super_class = NSPConfiguration;
  v5 = [(NSPConfiguration *)&v77 init];
  if (v5)
  {
    v5->_diskVersion = [coderCopy decodeIntegerForKey:@"diskVersion"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enabled"];
    enabled = v5->_enabled;
    v5->_enabled = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resurrectionDate"];
    resurrectionDate = v5->_resurrectionDate;
    v5->_resurrectionDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyConfigurationServerEnabled"];
    configServerEnabled = v5->_configServerEnabled;
    v5->_configServerEnabled = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyConfigurationServerHost"];
    configServerHost = v5->_configServerHost;
    v5->_configServerHost = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyConfigurationServerPort"];
    configServerPort = v5->_configServerPort;
    v5->_configServerPort = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyConfigurationServerPath"];
    configServerPath = v5->_configServerPath;
    v5->_configServerPath = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyConfigurationOverrideServerPath"];
    overrideConfigServerPath = v5->_overrideConfigServerPath;
    v5->_overrideConfigServerPath = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyConfigurationServerHeaders"];
    configServerHeaders = v5->_configServerHeaders;
    v5->_configServerHeaders = v24;

    v5->_ignoreSignature = [coderCopy decodeBoolForKey:@"ProxyConfigurationIgnoreSignature"];
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"urlRequestTimeout"];
    urlRequestTimeout = v5->_urlRequestTimeout;
    v5->_urlRequestTimeout = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"persist-metrics"];
    persistMetrics = v5->_persistMetrics;
    v5->_persistMetrics = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProxyConfiguration"];
    proxyConfiguration = v5->_proxyConfiguration;
    v5->_proxyConfiguration = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProxyConfigurationData"];
    proxyConfigurationData = v5->_proxyConfigurationData;
    v5->_proxyConfigurationData = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserTier"];
    userTier = v5->_userTier;
    v5->_userTier = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Etag"];
    etag = v5->_etag;
    v5->_etag = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Epoch"];
    epoch = v5->_epoch;
    v5->_epoch = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProxyTrafficState"];
    proxyTrafficState = v5->_proxyTrafficState;
    v5->_proxyTrafficState = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AnyAppEnabledDate"];
    anyAppEnabledDate = v5->_anyAppEnabledDate;
    v5->_anyAppEnabledDate = v42;

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyConfigurationFetchDate"];
    configurationFetchDate = v5->_configurationFetchDate;
    v5->_configurationFetchDate = v44;

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ResetTomorrowDate"];
    resetTomorrowDate = v5->_resetTomorrowDate;
    v5->_resetTomorrowDate = v46;

    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WillResetSubscriberTierTomorrow"];
    willResetSubscriberTierTomorrow = v5->_willResetSubscriberTierTomorrow;
    v5->_willResetSubscriberTierTomorrow = v48;

    if (os_variant_allows_internal_security_policies())
    {
      v5->_ignoreInvalidCerts = [coderCopy decodeBoolForKey:@"IgnoreInvalidCerts"];
      v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CloudSubscriptionCheckEnabled"];
      cloudSubscriptionCheckEnabled = v5->_cloudSubscriptionCheckEnabled;
      v5->_cloudSubscriptionCheckEnabled = v50;

      v5->_ignoreSignature = [coderCopy decodeBoolForKey:@"ProxyConfigurationIgnoreSignature"];
      v5->_ignorePlatformBinary = [coderCopy decodeBoolForKey:@"IgnorePlatformBinary"];
    }

    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"GeohashSharingEnabled"];
    geohashSharingEnabledStatus = v5->_geohashSharingEnabledStatus;
    v5->_geohashSharingEnabledStatus = v52;

    v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"GeohashOverride"];
    geohashOverride = v5->_geohashOverride;
    v5->_geohashOverride = v54;

    v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PreferredPathRoutingEnabled"];
    preferredPathRoutingEnabledStatus = v5->_preferredPathRoutingEnabledStatus;
    v5->_preferredPathRoutingEnabledStatus = v56;

    v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrivateAccessTokensEnabled"];
    privateAccessTokensEnabledStatus = v5->_privateAccessTokensEnabledStatus;
    v5->_privateAccessTokensEnabledStatus = v58;

    v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrivateAccessTokensAllowTools"];
    privateAccessTokensAllowTools = v5->_privateAccessTokensAllowTools;
    v5->_privateAccessTokensAllowTools = v60;

    v62 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"InProcessFlowDivert"];
    inProcessFlowDivert = v5->_inProcessFlowDivert;
    v5->_inProcessFlowDivert = v62;

    v64 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProxyAccountType"];
    proxyAccountType = v5->_proxyAccountType;
    v5->_proxyAccountType = v64;

    v66 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProxyAccountUnlimited"];
    proxyAccountUnlimited = v5->_proxyAccountUnlimited;
    v5->_proxyAccountUnlimited = v66;

    v68 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserPreferredTier"];
    userPreferredTier = v5->_userPreferredTier;
    v5->_userPreferredTier = v68;

    v70 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SubscriberEnabledFromNonSettingsApp"];
    subscriberEnabledFromNonSettingsApp = v5->_subscriberEnabledFromNonSettingsApp;
    v5->_subscriberEnabledFromNonSettingsApp = v70;

    v72 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TrialConfigVersion"];
    trialConfigVersion = v5->_trialConfigVersion;
    v5->_trialConfigVersion = v72;

    if (os_variant_has_internal_content())
    {
      v74 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastPrivateCloudComputeEnvironment"];
      lastPrivateCloudComputeEnvironment = v5->_lastPrivateCloudComputeEnvironment;
      v5->_lastPrivateCloudComputeEnvironment = v74;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:23 forKey:@"diskVersion"];
  version = [(NSPConfiguration *)self version];
  [coderCopy encodeObject:version forKey:@"version"];

  timestamp = [(NSPConfiguration *)self timestamp];
  [coderCopy encodeObject:timestamp forKey:@"timestamp"];

  enabled = [(NSPConfiguration *)self enabled];
  if (self)
  {
    Property = objc_getProperty(self, v6, 328, 1);
  }

  else
  {
    Property = 0;
  }

  enabled2 = [Property enabled];
  IsEqual = myIsEqual(enabled, enabled2);

  if ((IsEqual & 1) == 0)
  {
    enabled3 = [(NSPConfiguration *)self enabled];
    [coderCopy encodeObject:enabled3 forKey:@"enabled"];
  }

  resurrectionDate = [(NSPConfiguration *)self resurrectionDate];
  [coderCopy encodeObject:resurrectionDate forKey:@"resurrectionDate"];

  configServerEnabled = [(NSPConfiguration *)self configServerEnabled];
  [coderCopy encodeObject:configServerEnabled forKey:@"PrivacyProxyConfigurationServerEnabled"];

  if (!self || (v15 = objc_getProperty(self, v14, 328, 1)) == 0 || (v17 = v15, configServerHost = self->_configServerHost, v19 = objc_getProperty(self, v16, 328, 1), LOBYTE(configServerHost) = myIsEqual(configServerHost, v19[1]), v17, (configServerHost & 1) == 0))
  {
    [coderCopy encodeObject:self->_configServerHost forKey:@"PrivacyProxyConfigurationServerHost"];
  }

  v21 = objc_getProperty(self, v20, 328, 1);
  if (!v21 || (v23 = v21, configServerPort = self->_configServerPort, v25 = objc_getProperty(self, v22, 328, 1), LOBYTE(configServerPort) = myIsEqual(configServerPort, v25[10]), v23, (configServerPort & 1) == 0))
  {
    [coderCopy encodeObject:self->_configServerPort forKey:@"PrivacyProxyConfigurationServerPort"];
  }

  overrideConfigServerPath = [(NSPConfiguration *)self overrideConfigServerPath];
  [coderCopy encodeObject:overrideConfigServerPath forKey:@"PrivacyProxyConfigurationOverrideServerPath"];

  configServerHeaders = [(NSPConfiguration *)self configServerHeaders];

  if (configServerHeaders)
  {
    configServerHeaders2 = [(NSPConfiguration *)self configServerHeaders];
    [coderCopy encodeObject:configServerHeaders2 forKey:@"PrivacyProxyConfigurationServerHeaders"];
  }

  urlRequestTimeout = [(NSPConfiguration *)self urlRequestTimeout];
  v31 = [objc_getProperty(self v30];
  v32 = myIsEqual(urlRequestTimeout, v31);

  if ((v32 & 1) == 0)
  {
    urlRequestTimeout2 = [(NSPConfiguration *)self urlRequestTimeout];
    [coderCopy encodeObject:urlRequestTimeout2 forKey:@"urlRequestTimeout"];
  }

  persistMetrics = [(NSPConfiguration *)self persistMetrics];
  [coderCopy encodeObject:persistMetrics forKey:@"persist-metrics"];

  proxyConfiguration = [(NSPConfiguration *)self proxyConfiguration];
  [coderCopy encodeObject:proxyConfiguration forKey:@"ProxyConfiguration"];

  proxyConfigurationData = [(NSPConfiguration *)self proxyConfigurationData];
  [coderCopy encodeObject:proxyConfigurationData forKey:@"ProxyConfigurationData"];

  userTier = [(NSPConfiguration *)self userTier];
  [coderCopy encodeObject:userTier forKey:@"UserTier"];

  proxyTrafficState = [(NSPConfiguration *)self proxyTrafficState];
  [coderCopy encodeObject:proxyTrafficState forKey:@"ProxyTrafficState"];

  anyAppEnabledDate = [(NSPConfiguration *)self anyAppEnabledDate];
  [coderCopy encodeObject:anyAppEnabledDate forKey:@"AnyAppEnabledDate"];

  etag = [(NSPConfiguration *)self etag];
  [coderCopy encodeObject:etag forKey:@"Etag"];

  epoch = [(NSPConfiguration *)self epoch];
  [coderCopy encodeObject:epoch forKey:@"Epoch"];

  configurationFetchDate = [(NSPConfiguration *)self configurationFetchDate];
  [coderCopy encodeObject:configurationFetchDate forKey:@"PrivacyProxyConfigurationFetchDate"];

  resetTomorrowDate = [(NSPConfiguration *)self resetTomorrowDate];
  [coderCopy encodeObject:resetTomorrowDate forKey:@"ResetTomorrowDate"];

  willResetSubscriberTierTomorrow = [(NSPConfiguration *)self willResetSubscriberTierTomorrow];
  [coderCopy encodeObject:willResetSubscriberTierTomorrow forKey:@"WillResetSubscriberTierTomorrow"];

  if (os_variant_allows_internal_security_policies())
  {
    [coderCopy encodeBool:-[NSPConfiguration ignoreInvalidCerts](self forKey:{"ignoreInvalidCerts"), @"IgnoreInvalidCerts"}];
    cloudSubscriptionCheckEnabled = [(NSPConfiguration *)self cloudSubscriptionCheckEnabled];
    [coderCopy encodeObject:cloudSubscriptionCheckEnabled forKey:@"CloudSubscriptionCheckEnabled"];

    [coderCopy encodeBool:-[NSPConfiguration ignoreSignature](self forKey:{"ignoreSignature"), @"ProxyConfigurationIgnoreSignature"}];
    [coderCopy encodeBool:-[NSPConfiguration ignorePlatformBinary](self forKey:{"ignorePlatformBinary"), @"IgnorePlatformBinary"}];
  }

  geohashSharingEnabledStatus = [(NSPConfiguration *)self geohashSharingEnabledStatus];
  [coderCopy encodeObject:geohashSharingEnabledStatus forKey:@"GeohashSharingEnabled"];

  geohashOverride = [(NSPConfiguration *)self geohashOverride];
  [coderCopy encodeObject:geohashOverride forKey:@"GeohashOverride"];

  preferredPathRoutingEnabledStatus = [(NSPConfiguration *)self preferredPathRoutingEnabledStatus];
  [coderCopy encodeObject:preferredPathRoutingEnabledStatus forKey:@"PreferredPathRoutingEnabled"];

  privateAccessTokensEnabledStatus = [(NSPConfiguration *)self privateAccessTokensEnabledStatus];
  [coderCopy encodeObject:privateAccessTokensEnabledStatus forKey:@"PrivateAccessTokensEnabled"];

  privateAccessTokensAllowTools = [(NSPConfiguration *)self privateAccessTokensAllowTools];
  [coderCopy encodeObject:privateAccessTokensAllowTools forKey:@"PrivateAccessTokensAllowTools"];

  inProcessFlowDivert = [(NSPConfiguration *)self inProcessFlowDivert];
  [coderCopy encodeObject:inProcessFlowDivert forKey:@"InProcessFlowDivert"];

  proxyAccountType = [(NSPConfiguration *)self proxyAccountType];
  [coderCopy encodeObject:proxyAccountType forKey:@"ProxyAccountType"];

  proxyAccountUnlimited = [(NSPConfiguration *)self proxyAccountUnlimited];
  [coderCopy encodeObject:proxyAccountUnlimited forKey:@"ProxyAccountUnlimited"];

  userPreferredTier = [(NSPConfiguration *)self userPreferredTier];
  [coderCopy encodeObject:userPreferredTier forKey:@"UserPreferredTier"];

  subscriberEnabledFromNonSettingsApp = [(NSPConfiguration *)self subscriberEnabledFromNonSettingsApp];
  [coderCopy encodeObject:subscriberEnabledFromNonSettingsApp forKey:@"SubscriberEnabledFromNonSettingsApp"];

  trialConfigVersion = [(NSPConfiguration *)self trialConfigVersion];
  [coderCopy encodeObject:trialConfigVersion forKey:@"TrialConfigVersion"];

  if (os_variant_has_internal_content())
  {
    lastPrivateCloudComputeEnvironment = [(NSPConfiguration *)self lastPrivateCloudComputeEnvironment];
    [coderCopy encodeObject:lastPrivateCloudComputeEnvironment forKey:@"LastPrivateCloudComputeEnvironment"];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NSPConfiguration allocWithZone:?]];
  v5 = v4;
  if (self)
  {
    diskVersion = self->_diskVersion;
  }

  else
  {
    diskVersion = 0;
  }

  v4->_diskVersion = diskVersion;
  version = [(NSPConfiguration *)self version];
  objc_setProperty_atomic(v5, v8, version, 24);

  timestamp = [(NSPConfiguration *)self timestamp];
  timestamp = v5->_timestamp;
  v5->_timestamp = timestamp;

  enabled = [(NSPConfiguration *)self enabled];
  [(NSPConfiguration *)v5 setEnabled:enabled];

  resurrectionDate = [(NSPConfiguration *)self resurrectionDate];
  [(NSPConfiguration *)v5 setResurrectionDate:resurrectionDate];

  objc_storeStrong(&v5->_configServerHost, self->_configServerHost);
  objc_storeStrong(&v5->_configServerPort, self->_configServerPort);
  configServerPath = [(NSPConfiguration *)self configServerPath];
  [(NSPConfiguration *)v5 setConfigServerPath:configServerPath];

  overrideConfigServerPath = [(NSPConfiguration *)self overrideConfigServerPath];
  [(NSPConfiguration *)v5 setOverrideConfigServerPath:overrideConfigServerPath];

  configServerHeaders = [(NSPConfiguration *)self configServerHeaders];
  [(NSPConfiguration *)v5 setConfigServerHeaders:configServerHeaders];

  urlRequestTimeout = [(NSPConfiguration *)self urlRequestTimeout];
  [(NSPConfiguration *)v5 setUrlRequestTimeout:urlRequestTimeout];

  configServerEnabled = [(NSPConfiguration *)self configServerEnabled];
  [(NSPConfiguration *)v5 setConfigServerEnabled:configServerEnabled];

  [(NSPConfiguration *)v5 setIgnoreInvalidCerts:[(NSPConfiguration *)self ignoreInvalidCerts]];
  [(NSPConfiguration *)v5 setIgnoreSignature:[(NSPConfiguration *)self ignoreSignature]];
  [(NSPConfiguration *)v5 setIgnorePlatformBinary:[(NSPConfiguration *)self ignorePlatformBinary]];
  persistMetrics = [(NSPConfiguration *)self persistMetrics];
  [(NSPConfiguration *)v5 setPersistMetrics:persistMetrics];

  proxyConfiguration = [(NSPConfiguration *)self proxyConfiguration];
  [(NSPConfiguration *)v5 setProxyConfiguration:proxyConfiguration];

  userTier = [(NSPConfiguration *)self userTier];
  [(NSPConfiguration *)v5 setUserTier:userTier];

  proxyTrafficState = [(NSPConfiguration *)self proxyTrafficState];
  [(NSPConfiguration *)v5 setProxyTrafficState:proxyTrafficState];

  anyAppEnabledDate = [(NSPConfiguration *)self anyAppEnabledDate];
  [(NSPConfiguration *)v5 setAnyAppEnabledDate:anyAppEnabledDate];

  etag = [(NSPConfiguration *)self etag];
  [(NSPConfiguration *)v5 setEtag:etag];

  epoch = [(NSPConfiguration *)self epoch];
  [(NSPConfiguration *)v5 setEpoch:epoch];

  configurationFetchDate = [(NSPConfiguration *)self configurationFetchDate];
  [(NSPConfiguration *)v5 setConfigurationFetchDate:configurationFetchDate];

  resetTomorrowDate = [(NSPConfiguration *)self resetTomorrowDate];
  [(NSPConfiguration *)v5 setResetTomorrowDate:resetTomorrowDate];

  willResetSubscriberTierTomorrow = [(NSPConfiguration *)self willResetSubscriberTierTomorrow];
  [(NSPConfiguration *)v5 setWillResetSubscriberTierTomorrow:willResetSubscriberTierTomorrow];

  cloudSubscriptionCheckEnabled = [(NSPConfiguration *)self cloudSubscriptionCheckEnabled];
  [(NSPConfiguration *)v5 setCloudSubscriptionCheckEnabled:cloudSubscriptionCheckEnabled];

  geohashSharingEnabledStatus = [(NSPConfiguration *)self geohashSharingEnabledStatus];
  [(NSPConfiguration *)v5 setGeohashSharingEnabledStatus:geohashSharingEnabledStatus];

  geohashOverride = [(NSPConfiguration *)self geohashOverride];
  [(NSPConfiguration *)v5 setGeohashOverride:geohashOverride];

  preferredPathRoutingEnabledStatus = [(NSPConfiguration *)self preferredPathRoutingEnabledStatus];
  [(NSPConfiguration *)v5 setPreferredPathRoutingEnabledStatus:preferredPathRoutingEnabledStatus];

  privateAccessTokensEnabledStatus = [(NSPConfiguration *)self privateAccessTokensEnabledStatus];
  [(NSPConfiguration *)v5 setPrivateAccessTokensEnabledStatus:privateAccessTokensEnabledStatus];

  privateAccessTokensAllowTools = [(NSPConfiguration *)self privateAccessTokensAllowTools];
  [(NSPConfiguration *)v5 setPrivateAccessTokensAllowTools:privateAccessTokensAllowTools];

  inProcessFlowDivert = [(NSPConfiguration *)self inProcessFlowDivert];
  [(NSPConfiguration *)v5 setInProcessFlowDivert:inProcessFlowDivert];

  proxyAccountType = [(NSPConfiguration *)self proxyAccountType];
  [(NSPConfiguration *)v5 setProxyAccountType:proxyAccountType];

  proxyAccountUnlimited = [(NSPConfiguration *)self proxyAccountUnlimited];
  [(NSPConfiguration *)v5 setProxyAccountUnlimited:proxyAccountUnlimited];

  userPreferredTier = [(NSPConfiguration *)self userPreferredTier];
  [(NSPConfiguration *)v5 setUserPreferredTier:userPreferredTier];

  subscriberEnabledFromNonSettingsApp = [(NSPConfiguration *)self subscriberEnabledFromNonSettingsApp];
  [(NSPConfiguration *)v5 setSubscriberEnabledFromNonSettingsApp:subscriberEnabledFromNonSettingsApp];

  trialConfigVersion = [(NSPConfiguration *)self trialConfigVersion];
  [(NSPConfiguration *)v5 setTrialConfigVersion:trialConfigVersion];

  lastPrivateCloudComputeEnvironment = [(NSPConfiguration *)self lastPrivateCloudComputeEnvironment];
  [(NSPConfiguration *)v5 setLastPrivateCloudComputeEnvironment:lastPrivateCloudComputeEnvironment];

  return v5;
}

- (void)merge:(id)merge
{
  v90 = *MEMORY[0x1E69E9840];
  mergeCopy = merge;
  version = [mergeCopy version];

  if (version)
  {
    version2 = [mergeCopy version];
    version = self->_version;
    self->_version = version2;
  }

  timestamp = [mergeCopy timestamp];

  if (timestamp)
  {
    timestamp2 = [mergeCopy timestamp];
    timestamp = self->_timestamp;
    self->_timestamp = timestamp2;
  }

  self->_ignoreInvalidCerts = [mergeCopy ignoreInvalidCerts];
  self->_ignoreSignature = [mergeCopy ignoreSignature];
  self->_ignorePlatformBinary = [mergeCopy ignorePlatformBinary];
  enabled = [mergeCopy enabled];

  if (enabled)
  {
    enabled2 = [mergeCopy enabled];
    enabled = self->_enabled;
    self->_enabled = enabled2;
  }

  resurrectionDate = [mergeCopy resurrectionDate];

  if (resurrectionDate)
  {
    resurrectionDate2 = [mergeCopy resurrectionDate];
    [(NSPConfiguration *)self setResurrectionDate:resurrectionDate2];
  }

  v16 = +[NSPConfiguration defaultConfiguration];
  configServerHost = [mergeCopy configServerHost];

  if (configServerHost)
  {
    configServerHost2 = [mergeCopy configServerHost];
    v19 = [configServerHost2 isEqualToString:@"none"];

    if (v19)
    {
      v20 = v16;
    }

    else
    {
      v20 = mergeCopy;
    }

    configServerHost3 = [v20 configServerHost];
    [(NSPConfiguration *)self setConfigServerHost:configServerHost3];

    v22 = nplog_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      configServerHost4 = [mergeCopy configServerHost];
      v88 = 138412290;
      v89 = configServerHost4;
      _os_log_impl(&dword_1AE7E2000, v22, OS_LOG_TYPE_INFO, "Set configServerHost to %@", &v88, 0xCu);
    }
  }

  configServerPort = [mergeCopy configServerPort];

  if (configServerPort)
  {
    configServerPort2 = [mergeCopy configServerPort];
    [(NSPConfiguration *)self setConfigServerPort:configServerPort2];
  }

  overrideConfigServerPath = [mergeCopy overrideConfigServerPath];

  if (overrideConfigServerPath)
  {
    overrideConfigServerPath2 = [mergeCopy overrideConfigServerPath];
    v28 = [overrideConfigServerPath2 isEqualToString:@"none"];

    if (v28)
    {
      [(NSPConfiguration *)self setOverrideConfigServerPath:0];
    }

    else
    {
      overrideConfigServerPath3 = [mergeCopy overrideConfigServerPath];
      [(NSPConfiguration *)self setOverrideConfigServerPath:overrideConfigServerPath3];
    }

    v30 = nplog_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      overrideConfigServerPath4 = [mergeCopy overrideConfigServerPath];
      v88 = 138412290;
      v89 = overrideConfigServerPath4;
      _os_log_impl(&dword_1AE7E2000, v30, OS_LOG_TYPE_INFO, "Set overrideConfigServerPath to %@", &v88, 0xCu);
    }
  }

  else
  {
    [(NSPConfiguration *)self setOverrideConfigServerPath:0];
  }

  configServerHeaders = [mergeCopy configServerHeaders];

  if (configServerHeaders)
  {
    configServerHeaders2 = [mergeCopy configServerHeaders];
    v34 = [configServerHeaders2 isEqualToString:@"none"];

    if (v34)
    {
      [(NSPConfiguration *)self setConfigServerHeaders:0];
    }

    else
    {
      configServerHeaders3 = [mergeCopy configServerHeaders];
      [(NSPConfiguration *)self setConfigServerHeaders:configServerHeaders3];
    }

    v36 = nplog_obj();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      configServerHeaders4 = [mergeCopy configServerHeaders];
      v88 = 138412290;
      v89 = configServerHeaders4;
      _os_log_impl(&dword_1AE7E2000, v36, OS_LOG_TYPE_INFO, "Set configServerPath to %@", &v88, 0xCu);
    }
  }

  urlRequestTimeout = [mergeCopy urlRequestTimeout];

  if (urlRequestTimeout)
  {
    urlRequestTimeout2 = [mergeCopy urlRequestTimeout];
    [(NSPConfiguration *)self setUrlRequestTimeout:urlRequestTimeout2];
  }

  configServerEnabled = [mergeCopy configServerEnabled];

  if (configServerEnabled)
  {
    configServerEnabled2 = [mergeCopy configServerEnabled];
    [(NSPConfiguration *)self setConfigServerEnabled:configServerEnabled2];
  }

  persistMetrics = [mergeCopy persistMetrics];

  if (persistMetrics)
  {
    persistMetrics2 = [mergeCopy persistMetrics];
    [(NSPConfiguration *)self setPersistMetrics:persistMetrics2];
  }

  proxyConfiguration = [mergeCopy proxyConfiguration];

  if (proxyConfiguration)
  {
    proxyConfiguration2 = [mergeCopy proxyConfiguration];
    [(NSPConfiguration *)self setProxyConfiguration:proxyConfiguration2];
  }

  proxyConfigurationData = [mergeCopy proxyConfigurationData];

  if (proxyConfigurationData)
  {
    proxyConfigurationData2 = [mergeCopy proxyConfigurationData];
    [(NSPConfiguration *)self setProxyConfigurationData:proxyConfigurationData2];
  }

  userTier = [mergeCopy userTier];

  if (userTier)
  {
    userTier2 = [mergeCopy userTier];
    [(NSPConfiguration *)self setUserTier:userTier2];
  }

  proxyTrafficState = [mergeCopy proxyTrafficState];

  if (proxyTrafficState)
  {
    proxyTrafficState2 = [mergeCopy proxyTrafficState];
    [(NSPConfiguration *)self setProxyTrafficState:proxyTrafficState2];
  }

  anyAppEnabledDate = [mergeCopy anyAppEnabledDate];

  if (anyAppEnabledDate)
  {
    anyAppEnabledDate2 = [mergeCopy anyAppEnabledDate];
    [(NSPConfiguration *)self setAnyAppEnabledDate:anyAppEnabledDate2];
  }

  etag = [mergeCopy etag];

  if (etag)
  {
    etag2 = [mergeCopy etag];
    [(NSPConfiguration *)self setEtag:etag2];
  }

  epoch = [mergeCopy epoch];

  if (epoch)
  {
    epoch2 = [mergeCopy epoch];
    [(NSPConfiguration *)self setEpoch:epoch2];
  }

  configurationFetchDate = [mergeCopy configurationFetchDate];

  if (configurationFetchDate)
  {
    configurationFetchDate2 = [mergeCopy configurationFetchDate];
    [(NSPConfiguration *)self setConfigurationFetchDate:configurationFetchDate2];
  }

  willResetSubscriberTierTomorrow = [mergeCopy willResetSubscriberTierTomorrow];

  if (willResetSubscriberTierTomorrow)
  {
    willResetSubscriberTierTomorrow2 = [mergeCopy willResetSubscriberTierTomorrow];
    [(NSPConfiguration *)self setWillResetSubscriberTierTomorrow:willResetSubscriberTierTomorrow2];

    resetTomorrowDate = [mergeCopy resetTomorrowDate];
    [(NSPConfiguration *)self setResetTomorrowDate:resetTomorrowDate];
  }

  cloudSubscriptionCheckEnabled = [mergeCopy cloudSubscriptionCheckEnabled];

  if (cloudSubscriptionCheckEnabled)
  {
    cloudSubscriptionCheckEnabled2 = [mergeCopy cloudSubscriptionCheckEnabled];
    [(NSPConfiguration *)self setCloudSubscriptionCheckEnabled:cloudSubscriptionCheckEnabled2];
  }

  geohashSharingEnabledStatus = [mergeCopy geohashSharingEnabledStatus];

  if (geohashSharingEnabledStatus)
  {
    geohashSharingEnabledStatus2 = [mergeCopy geohashSharingEnabledStatus];
    [(NSPConfiguration *)self setGeohashSharingEnabledStatus:geohashSharingEnabledStatus2];
  }

  geohashOverride = [mergeCopy geohashOverride];
  [(NSPConfiguration *)self setGeohashOverride:geohashOverride];

  preferredPathRoutingEnabledStatus = [mergeCopy preferredPathRoutingEnabledStatus];

  if (preferredPathRoutingEnabledStatus)
  {
    preferredPathRoutingEnabledStatus2 = [mergeCopy preferredPathRoutingEnabledStatus];
    [(NSPConfiguration *)self setPreferredPathRoutingEnabledStatus:preferredPathRoutingEnabledStatus2];
  }

  privateAccessTokensEnabledStatus = [mergeCopy privateAccessTokensEnabledStatus];

  if (privateAccessTokensEnabledStatus)
  {
    privateAccessTokensEnabledStatus2 = [mergeCopy privateAccessTokensEnabledStatus];
    [(NSPConfiguration *)self setPrivateAccessTokensEnabledStatus:privateAccessTokensEnabledStatus2];
  }

  privateAccessTokensAllowTools = [mergeCopy privateAccessTokensAllowTools];

  if (privateAccessTokensAllowTools)
  {
    privateAccessTokensAllowTools2 = [mergeCopy privateAccessTokensAllowTools];
    [(NSPConfiguration *)self setPrivateAccessTokensAllowTools:privateAccessTokensAllowTools2];
  }

  inProcessFlowDivert = [mergeCopy inProcessFlowDivert];

  if (inProcessFlowDivert)
  {
    inProcessFlowDivert2 = [mergeCopy inProcessFlowDivert];
    [(NSPConfiguration *)self setInProcessFlowDivert:inProcessFlowDivert2];
  }

  proxyAccountType = [mergeCopy proxyAccountType];

  if (proxyAccountType)
  {
    proxyAccountType2 = [mergeCopy proxyAccountType];
    [(NSPConfiguration *)self setProxyAccountType:proxyAccountType2];
  }

  proxyAccountUnlimited = [mergeCopy proxyAccountUnlimited];

  if (proxyAccountUnlimited)
  {
    proxyAccountUnlimited2 = [mergeCopy proxyAccountUnlimited];
    [(NSPConfiguration *)self setProxyAccountUnlimited:proxyAccountUnlimited2];
  }

  userPreferredTier = [mergeCopy userPreferredTier];

  if (userPreferredTier)
  {
    userPreferredTier2 = [mergeCopy userPreferredTier];
    [(NSPConfiguration *)self setUserPreferredTier:userPreferredTier2];
  }

  subscriberEnabledFromNonSettingsApp = [mergeCopy subscriberEnabledFromNonSettingsApp];

  if (subscriberEnabledFromNonSettingsApp)
  {
    subscriberEnabledFromNonSettingsApp2 = [mergeCopy subscriberEnabledFromNonSettingsApp];
    [(NSPConfiguration *)self setSubscriberEnabledFromNonSettingsApp:subscriberEnabledFromNonSettingsApp2];
  }

  trialConfigVersion = [mergeCopy trialConfigVersion];

  if (trialConfigVersion)
  {
    trialConfigVersion2 = [mergeCopy trialConfigVersion];
    [(NSPConfiguration *)self setTrialConfigVersion:trialConfigVersion2];
  }

  lastPrivateCloudComputeEnvironment = [mergeCopy lastPrivateCloudComputeEnvironment];
  [(NSPConfiguration *)self setLastPrivateCloudComputeEnvironment:lastPrivateCloudComputeEnvironment];

  v87 = *MEMORY[0x1E69E9840];
}

- (void)saveInternalOptions:(id)options
{
  optionsCopy = options;
  overrideConfigServerPath = [optionsCopy overrideConfigServerPath];
  [(NSPConfiguration *)self setOverrideConfigServerPath:overrideConfigServerPath];

  configServerHeaders = [optionsCopy configServerHeaders];
  [(NSPConfiguration *)self setConfigServerHeaders:configServerHeaders];

  geohashOverride = [optionsCopy geohashOverride];
  [(NSPConfiguration *)self setGeohashOverride:geohashOverride];

  -[NSPConfiguration setIgnoreInvalidCerts:](self, "setIgnoreInvalidCerts:", [optionsCopy ignoreInvalidCerts]);
  -[NSPConfiguration setIgnoreSignature:](self, "setIgnoreSignature:", [optionsCopy ignoreSignature]);
  ignorePlatformBinary = [optionsCopy ignorePlatformBinary];

  [(NSPConfiguration *)self setIgnorePlatformBinary:ignorePlatformBinary];
}

- (NSPConfiguration)initWithTimestamp:(id)timestamp fromDictionary:(id)dictionary
{
  timestampCopy = timestamp;
  dictionaryCopy = dictionary;
  v74.receiver = self;
  v74.super_class = NSPConfiguration;
  v9 = [(NSPConfiguration *)&v74 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_timestamp, timestamp);
    v11 = [dictionaryCopy objectForKeyedSubscript:@"version"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v13 = [dictionaryCopy objectForKeyedSubscript:@"version"];
      version = v10->_version;
      v10->_version = v13;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"global"];
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();

    if ((v16 & 1) == 0)
    {
      goto LABEL_60;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"global"];
    v18 = [(NSDictionary *)v17 objectForPlatformSpecificKey:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v18 doubleValue];
      if (v19 > 0.0)
      {
        v20 = objc_alloc(MEMORY[0x1E695DF00]);
        [v18 doubleValue];
        v21 = [v20 initWithTimeIntervalSince1970:?];
        [v21 timeIntervalSinceNow];
        if (v22 > 0.0)
        {
          objc_storeStrong(&v10->_resurrectionDate, v21);
        }
      }
    }

    v23 = [(NSDictionary *)v17 objectForPlatformSpecificKey:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v10->_enabled, v23);
    }

    v24 = [(NSDictionary *)v17 objectForPlatformSpecificKey:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v10->_configServerEnabled, v24);
    }

    v64 = v24;
    v25 = [(NSDictionary *)v17 objectForPlatformSpecificKey:?];
    objc_opt_class();
    obj = v25;
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v10->_configServerHost, v25);
    }

    v26 = [(NSDictionary *)v17 objectForPlatformSpecificKey:?];
    objc_opt_class();
    v71 = v26;
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v10->_configServerPort, v26);
    }

    v27 = [(NSDictionary *)v17 objectForPlatformSpecificKey:?];
    objc_opt_class();
    v70 = v27;
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v10->_configServerPath, v27);
    }

    v28 = [(NSDictionary *)v17 objectForPlatformSpecificKey:?];
    objc_opt_class();
    v69 = v28;
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v10->_overrideConfigServerPath, v28);
    }

    v29 = [(NSDictionary *)v17 objectForPlatformSpecificKey:?];
    objc_opt_class();
    v68 = v29;
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v10->_urlRequestTimeout, v29);
    }

    v30 = [(NSDictionary *)v17 objectForPlatformSpecificKey:?];
    objc_opt_class();
    v67 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = v23;
      v32 = v30;
      if ([v32 isEqualToString:@"UNKNOWN"])
      {
        v33 = 0;
      }

      else if ([v32 isEqualToString:@"FREE"])
      {
        v33 = 1;
      }

      else if ([v32 isEqualToString:@"SUBSCRIBER"])
      {
        v33 = 2;
      }

      else
      {
        v33 = 0;
      }

      v34 = [MEMORY[0x1E696AD98] numberWithInt:v33];
      userTier = v10->_userTier;
      v10->_userTier = v34;

      v36 = [MEMORY[0x1E696AD98] numberWithInt:v33];
      userPreferredTier = v10->_userPreferredTier;
      v10->_userPreferredTier = v36;

      v23 = v31;
    }

    v38 = [(NSDictionary *)v17 objectForPlatformSpecificKey:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v10->_subscriberEnabledFromNonSettingsApp, v38);
    }

    v73 = v23;
    v39 = [(NSDictionary *)v17 objectForPlatformSpecificKey:?];
    objc_opt_class();
    v66 = v39;
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v10->_geohashSharingEnabledStatus, v39);
    }

    v40 = v18;
    v41 = [(NSDictionary *)v17 objectForPlatformSpecificKey:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v10->_geohashOverride, v41);
    }

    v42 = timestampCopy;
    v43 = [(NSDictionary *)v17 objectForPlatformSpecificKey:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v10->_preferredPathRoutingEnabledStatus, v43);
    }

    v44 = [(NSDictionary *)v17 objectForPlatformSpecificKey:?];
    objc_opt_class();
    v65 = v44;
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v10->_privateAccessTokensEnabledStatus, v44);
    }

    v63 = v38;
    v45 = [(NSDictionary *)v17 objectForPlatformSpecificKey:?];
    objc_opt_class();
    timestampCopy = v42;
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v10->_privateAccessTokensAllowTools, v45);
    }

    v60 = v45;
    v61 = v43;
    v46 = [(NSDictionary *)v17 objectForPlatformSpecificKey:?];
    objc_opt_class();
    v47 = v40;
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v10->_inProcessFlowDivert, v46);
    }

    v48 = [(NSDictionary *)v17 objectForPlatformSpecificKey:?];
    objc_opt_class();
    v49 = v73;
    if (objc_opt_isKindOfClass())
    {
      if ([v48 isEqualToString:{@"Free", v60, v61}])
      {
        v50 = 1;
LABEL_52:
        v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v50];
        proxyAccountType = v10->_proxyAccountType;
        v10->_proxyAccountType = v51;

        goto LABEL_53;
      }

      if ([v48 isEqualToString:@"Subscriber"])
      {
        v50 = 2;
        goto LABEL_52;
      }
    }

LABEL_53:
    v62 = v41;
    v53 = [(NSDictionary *)v17 objectForPlatformSpecificKey:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v10->_proxyAccountUnlimited, v53);
    }

    if (os_variant_has_internal_content())
    {
      v54 = timestampCopy;
      v55 = [(NSDictionary *)v17 objectForPlatformSpecificKey:?];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v10->_lastPrivateCloudComputeEnvironment, v55);
      }

      timestampCopy = v54;
      v49 = v73;
    }

LABEL_60:
    v56 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{134085868, v60}];
    proxyTrafficState = v10->_proxyTrafficState;
    v10->_proxyTrafficState = v56;

    v58 = v10;
  }

  return v10;
}

- (void)saveToKeychain
{
  v4 = +[NSPConfiguration defaultConfiguration];
  if (self)
  {
    objc_setProperty_atomic(self, v3, v4, 328);
  }

  v7 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [(NSPConfiguration *)self encodeWithCoder:v7];
  encodedData = [v7 encodedData];
  [NPUtilities saveDataToKeychain:encodedData withIdentifier:@"com.apple.NetworkServiceProxy.Configuration" accountName:@"configuration"];

  if (self)
  {
    objc_setProperty_atomic(self, v6, 0, 328);
  }
}

- (id)copyTLVData
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v7 = 0;
  persistMetrics = [(NSPConfiguration *)self persistMetrics];
  bOOLValue = [persistMetrics BOOLValue];

  if (bOOLValue)
  {
    v7 = 4;
  }

  [(NSMutableData *)v3 appendType:4u length:&v7 value:?];
  return v3;
}

- (id)initFromTLVs:(id)vs
{
  vsCopy = vs;
  v10.receiver = self;
  v10.super_class = NSPConfiguration;
  v5 = [(NSPConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [vsCopy mutableCopy];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __33__NSPConfiguration_initFromTLVs___block_invoke;
    v8[3] = &unk_1E7A31188;
    v9 = v5;
    [(NSMutableData *)v6 enumerateTLVsUsingBlock:v8];
  }

  return v5;
}

uint64_t __33__NSPConfiguration_initFromTLVs___block_invoke(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  v4 = a2 == 2 && a3 == 4;
  v5 = !v4;
  if (v4)
  {
    if ((*a4 & 4) != 0)
    {
      v6 = MEMORY[0x1E695E118];
    }

    else
    {
      v6 = MEMORY[0x1E695E110];
    }

    [*(a1 + 32) setPersistMetrics:v6];
  }

  return v5;
}

- (void)setupNSURLSession
{
  v19 = objc_alloc_init(NSURLSessionDelegate);
  ephemeralSessionConfiguration = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
  _socketStreamProperties = [ephemeralSessionConfiguration _socketStreamProperties];
  v5 = MEMORY[0x1E695DF90];
  if (_socketStreamProperties)
  {
    _socketStreamProperties2 = [ephemeralSessionConfiguration _socketStreamProperties];
    dictionary = [v5 dictionaryWithDictionary:_socketStreamProperties2];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E695AD38]];
  [ephemeralSessionConfiguration set_socketStreamProperties:dictionary];
  urlRequestTimeout = [(NSPConfiguration *)self urlRequestTimeout];
  [urlRequestTimeout doubleValue];
  v10 = v9;

  if (v10 <= 0.0)
  {
    [ephemeralSessionConfiguration setTimeoutIntervalForResource:30.0];
  }

  else
  {
    urlRequestTimeout2 = [(NSPConfiguration *)self urlRequestTimeout];
    [urlRequestTimeout2 doubleValue];
    [ephemeralSessionConfiguration setTimeoutIntervalForResource:?];
  }

  configServerHost = [(NSPConfiguration *)self configServerHost];
  [(NSURLSessionDelegate *)v19 setValidationHostname:configServerHost];

  [(NSURLSessionDelegate *)v19 setIgnoreInvalidCerts:[(NSPConfiguration *)self ignoreInvalidCerts]];
  privacyProxyURLSession = [(NSPConfiguration *)self privacyProxyURLSession];

  if (privacyProxyURLSession)
  {
    privacyProxyURLSession2 = [(NSPConfiguration *)self privacyProxyURLSession];
    [privacyProxyURLSession2 invalidateAndCancel];
  }

  v15 = MEMORY[0x1E696AF78];
  mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
  v17 = [v15 sessionWithConfiguration:ephemeralSessionConfiguration delegate:v19 delegateQueue:mainQueue];
  [(NSPConfiguration *)self setPrivacyProxyURLSession:v17];

  privacyProxyURLSession3 = [(NSPConfiguration *)self privacyProxyURLSession];
  [privacyProxyURLSession3 setSessionDescription:@"PrivacyProxy"];
}

- (id)createConfigFetchURLWithPath
{
  configServerHost = [(NSPConfiguration *)self configServerHost];
  configServerPort = [(NSPConfiguration *)self configServerPort];
  configServerPath = [(NSPConfiguration *)self configServerPath];
  if (os_variant_allows_internal_security_policies())
  {
    overrideConfigServerPath = [(NSPConfiguration *)self overrideConfigServerPath];

    if (overrideConfigServerPath)
    {
      overrideConfigServerPath2 = [(NSPConfiguration *)self overrideConfigServerPath];

      configServerPath = overrideConfigServerPath2;
    }
  }

  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (configServerPort)
  {
    v9 = [v8 initWithFormat:@"https://%@:%@/%@", configServerHost, configServerPort, configServerPath];
  }

  else
  {
    v9 = [v8 initWithFormat:@"https://%@/%@", configServerHost, configServerPath, v13];
  }

  v10 = v9;
  v11 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v9];

  return v11;
}

- (BOOL)isDead
{
  resurrectionDate = [(NSPConfiguration *)self resurrectionDate];
  if (resurrectionDate)
  {
    resurrectionDate2 = [(NSPConfiguration *)self resurrectionDate];
    [resurrectionDate2 timeIntervalSinceNow];
    v6 = v5 > 0.0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)configServerHost
{
  v2 = self->_configServerHost;
  if ([(__CFString *)v2 isEqualToString:@"mask-api.icloud.com"]&& os_variant_has_internal_content())
  {

    v2 = @"mask-api.icloud.com";
  }

  return v2;
}

- (void)incrementSessionCountersOnFirstLaunch
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2020000000;
  v5 = 0;
  mEMORY[0x1E6977F98] = [MEMORY[0x1E6977F98] sharedMaintainer];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__NSPConfiguration_incrementSessionCountersOnFirstLaunch__block_invoke;
  v3[3] = &unk_1E7A311B0;
  v3[4] = v4;
  [mEMORY[0x1E6977F98] iterateFileHandlesWithBlock:v3];

  _Block_object_dispose(v4, 8);
}

+ (BOOL)validatePrivacyProxyConfiguration:(id)configuration
{
  v113 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v4 = configurationCopy;
  if (!configurationCopy)
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *v111 = "+[NSPConfiguration validatePrivacyProxyConfiguration:]";
      _os_log_fault_impl(&dword_1AE7E2000, v11, OS_LOG_TYPE_FAULT, "%s called with null configuration", buf, 0xCu);
    }

    goto LABEL_34;
  }

  if ([configurationCopy version] != 1)
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *v111 = [v4 version];
      _os_log_error_impl(&dword_1AE7E2000, v11, OS_LOG_TYPE_ERROR, "Configuration version %u not supported", buf, 8u);
    }

    goto LABEL_34;
  }

  if (![v4 enabled])
  {
    v15 = 1;
    goto LABEL_36;
  }

  authInfo = [v4 authInfo];
  if (![authInfo authType])
  {

LABEL_14:
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      authInfo2 = [v4 authInfo];
      authType = [authInfo2 authType];
      if (authType >= 5)
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", authType];
      }

      else
      {
        v18 = off_1E7A311F8[authType];
      }

      *buf = 138412290;
      *v111 = v18;
      _os_log_error_impl(&dword_1AE7E2000, v11, OS_LOG_TYPE_ERROR, "Configuration has bad authentication type: %@", buf, 0xCu);
    }

    goto LABEL_34;
  }

  authInfo3 = [v4 authInfo];
  authType2 = [authInfo3 authType];

  if (authType2 >= 4)
  {
    goto LABEL_14;
  }

  v8 = MEMORY[0x1E695DFF8];
  authInfo4 = [v4 authInfo];
  authURL = [authInfo4 authURL];
  v11 = [v8 URLWithString:authURL];

  if (!v11)
  {
    goto LABEL_32;
  }

  host = [v11 host];
  if (!host)
  {
    goto LABEL_32;
  }

  v13 = host;
  scheme = [v11 scheme];
  if ([scheme isEqualToString:@"https"])
  {

    goto LABEL_18;
  }

  scheme2 = [v11 scheme];
  v20 = [scheme2 isEqualToString:@"http"];

  if ((v20 & 1) == 0)
  {
LABEL_32:
    policyTierMaps3 = nplog_obj();
    if (!os_log_type_enabled(policyTierMaps3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *buf = 138412290;
    *v111 = v11;
    v34 = "Bad authentication url format %@";
    v38 = policyTierMaps3;
    v39 = 12;
    goto LABEL_48;
  }

LABEL_18:
  policyTierMaps = [v4 policyTierMaps];
  v22 = [policyTierMaps count];

  if (v22 != 2)
  {
    policyTierMaps3 = nplog_obj();
    if (!os_log_type_enabled(policyTierMaps3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    policyTierMaps2 = [v4 policyTierMaps];
    *buf = 134217984;
    *v111 = [policyTierMaps2 count];
    _os_log_error_impl(&dword_1AE7E2000, policyTierMaps3, OS_LOG_TYPE_ERROR, "Invalid policy tier count %lu", buf, 0xCu);
    goto LABEL_40;
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  policyTierMaps3 = [v4 policyTierMaps];
  v24 = [policyTierMaps3 countByEnumeratingWithState:&v106 objects:v112 count:16];
  if (!v24)
  {

LABEL_44:
    policyTierMaps3 = nplog_obj();
    if (!os_log_type_enabled(policyTierMaps3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v34 = "configuration should contain policies for both tiers";
LABEL_46:
    v38 = policyTierMaps3;
    v39 = 2;
LABEL_48:
    _os_log_error_impl(&dword_1AE7E2000, v38, OS_LOG_TYPE_ERROR, v34, buf, v39);
    goto LABEL_33;
  }

  v25 = v24;
  v26 = 0;
  v27 = 0;
  v28 = *v107;
  do
  {
    for (i = 0; i != v25; ++i)
    {
      if (*v107 != v28)
      {
        objc_enumerationMutation(policyTierMaps3);
      }

      v30 = *(*(&v106 + 1) + 8 * i);
      if (![v30 tier] || objc_msgSend(v30, "tier") >= 3)
      {
        policyTierMaps2 = nplog_obj();
        if (!os_log_type_enabled(policyTierMaps2, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_40;
        }

        tier = [v30 tier];
        if (tier >= 3)
        {
          v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", tier];
        }

        else
        {
          v41 = off_1E7A31240[tier];
        }

        *buf = 138412290;
        *v111 = v41;
        v42 = "bad policy tier type %@";
        v43 = policyTierMaps2;
LABEL_55:
        v44 = 12;
        goto LABEL_56;
      }

      tier2 = [v30 tier];
      v26 |= tier2 != 1;
      v27 |= tier2 == 1;
    }

    v25 = [policyTierMaps3 countByEnumeratingWithState:&v106 objects:v112 count:16];
  }

  while (v25);

  if ((v27 & v26 & 1) == 0)
  {
    goto LABEL_44;
  }

  proxies = [v4 proxies];
  v33 = [proxies count];

  if (v33 < 2)
  {
    policyTierMaps3 = nplog_obj();
    if (!os_log_type_enabled(policyTierMaps3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v34 = "bad configuration need atleast two proxies";
    goto LABEL_46;
  }

  if (![v4 proxiesCount])
  {
LABEL_105:
    policyTierMaps3 = nplog_obj();
    if (!os_log_type_enabled(policyTierMaps3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v34 = "configuratio should contain both ingress and egress proxy";
    goto LABEL_46;
  }

  v104 = 0;
  v105 = 0;
  while (2)
  {
    policyTierMaps3 = [v4 proxiesAtIndex:v105];
    if (![policyTierMaps3 proxyHop]&& [policyTierMaps3 proxyHop]>= 3)
    {
      policyTierMaps2 = nplog_obj();
      if (os_log_type_enabled(policyTierMaps2, OS_LOG_TYPE_ERROR))
      {
        proxyHop = [policyTierMaps3 proxyHop];
        if (proxyHop >= 4)
        {
          v90 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", proxyHop];
        }

        else
        {
          v90 = off_1E7A31220[proxyHop];
        }

        *buf = 134218242;
        *v111 = v105;
        *&v111[8] = 2112;
        *&v111[10] = v90;
        _os_log_error_impl(&dword_1AE7E2000, policyTierMaps2, OS_LOG_TYPE_ERROR, "proxy hop at %lu has invalid hop type %@", buf, 0x16u);
      }

      goto LABEL_40;
    }

    proxyHop2 = [policyTierMaps3 proxyHop];
    v46 = proxyHop2 == 1;
    v47 = proxyHop2 != 1;
    v48 = MEMORY[0x1E695DFF8];
    proxyURL = [policyTierMaps3 proxyURL];
    policyTierMaps2 = [v48 URLWithString:proxyURL];

    if (!policyTierMaps2)
    {
      goto LABEL_107;
    }

    host2 = [policyTierMaps2 host];
    if (!host2 || (v51 = host2, -[NSObject scheme](policyTierMaps2, "scheme"), v52 = objc_claimAutoreleasedReturnValue(), v53 = [v52 isEqualToString:@"https"], v52, v51, (v53 & 1) == 0))
    {
LABEL_107:
      v41 = nplog_obj();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v111 = policyTierMaps2;
        v42 = "Bad proxy url format %@";
        goto LABEL_113;
      }

LABEL_57:

LABEL_40:
      goto LABEL_33;
    }

    proxyKeyInfos = [policyTierMaps3 proxyKeyInfos];
    v55 = [proxyKeyInfos count];

    if (!v55)
    {
      v41 = nplog_obj();
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      *buf = 138412290;
      *v111 = policyTierMaps2;
      v42 = "Proxy %@ needs proxy keys";
LABEL_113:
      v43 = v41;
      goto LABEL_55;
    }

    proxyKeyInfos2 = [policyTierMaps3 proxyKeyInfos];
    v57 = [proxyKeyInfos2 count];

    if (v57)
    {
      v58 = 0;
      while (1)
      {
        v59 = [policyTierMaps3 proxyKeyInfoAtIndex:v58];

        if (!v59)
        {
          break;
        }

        ++v58;
        proxyKeyInfos3 = [policyTierMaps3 proxyKeyInfos];
        v61 = [proxyKeyInfos3 count];

        if (v58 >= v61)
        {
          goto LABEL_70;
        }
      }

      v41 = nplog_obj();
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      *buf = 134218242;
      *v111 = v58;
      *&v111[8] = 2112;
      *&v111[10] = policyTierMaps2;
      v42 = "proxy key info for index %lu is nil for proxy %@";
      v43 = v41;
      v44 = 22;
LABEL_56:
      _os_log_error_impl(&dword_1AE7E2000, v43, OS_LOG_TYPE_ERROR, v42, buf, v44);
      goto LABEL_57;
    }

LABEL_70:
    tokenKeyInfo = [policyTierMaps3 tokenKeyInfo];

    if (!tokenKeyInfo)
    {
      v41 = nplog_obj();
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      *buf = 138412290;
      *v111 = policyTierMaps2;
      v42 = "token issuance key is nil for proxy %@";
      goto LABEL_113;
    }

    LODWORD(v104) = v47 | v104;
    HIDWORD(v104) |= v46;

    if (++v105 < [v4 proxiesCount])
    {
      continue;
    }

    break;
  }

  if ((HIDWORD(v104) & v104 & 1) == 0)
  {
    goto LABEL_105;
  }

  pathWeights = [v4 pathWeights];
  v64 = [pathWeights count];

  if (!v64)
  {
    policyTierMaps3 = nplog_obj();
    if (!os_log_type_enabled(policyTierMaps3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v34 = "configuration should contain atleast one proxy path weight";
    goto LABEL_46;
  }

  pathWeights2 = [v4 pathWeights];
  v66 = [pathWeights2 count];

  if (v66)
  {
    v67 = 0;
    while (1)
    {
      policyTierMaps3 = [v4 pathWeightsAtIndex:v67];
      if ([policyTierMaps3 weight]>= 0x65)
      {
        break;
      }

      if ([policyTierMaps3 proxiesCount]!= 2)
      {
        v70 = nplog_obj();
        if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_158;
        }

        *buf = 134217984;
        *v111 = v67;
        v91 = "Bad proxy count for path weight at index %lu";
        goto LABEL_142;
      }

      v68 = [policyTierMaps3 proxiesAtIndex:0];
      v69 = [policyTierMaps3 proxiesAtIndex:1];
      if ([v4 proxiesCount] < v68)
      {
        v70 = nplog_obj();
        if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_158;
        }

        *buf = 67109376;
        *v111 = v68;
        *&v111[4] = 2048;
        *&v111[6] = v67;
        v91 = "Bad proxy index %u at path weight index %lu";
        goto LABEL_147;
      }

      if ([v4 proxiesCount] < v69)
      {
        v70 = nplog_obj();
        if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_158;
        }

        *buf = 67109376;
        *v111 = v69;
        *&v111[4] = 2048;
        *&v111[6] = v67;
        v91 = "Bad proxy index %u at path weight index %lu";
LABEL_147:
        v94 = v70;
        v95 = 18;
LABEL_148:
        _os_log_error_impl(&dword_1AE7E2000, v94, OS_LOG_TYPE_ERROR, v91, buf, v95);
        goto LABEL_158;
      }

      v70 = [v4 proxiesAtIndex:v68];
      if ([v70 proxyHop]!= 1)
      {
        v92 = nplog_obj();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1AE7E2000, v92, OS_LOG_TYPE_ERROR, "first proxy index in path weight should be ingress only", buf, 2u);
        }

        goto LABEL_158;
      }

      v71 = [v4 proxiesAtIndex:v69];
      if ([v71 proxyHop] != 2)
      {
        v93 = nplog_obj();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1AE7E2000, v93, OS_LOG_TYPE_ERROR, "second proxy index in path weight should be egress only", buf, 2u);
        }

        goto LABEL_157;
      }

      ++v67;
      pathWeights3 = [v4 pathWeights];
      v73 = [pathWeights3 count];

      if (v67 >= v73)
      {
        goto LABEL_83;
      }
    }

    v70 = nplog_obj();
    if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_158;
    }

    *buf = 134217984;
    *v111 = v67;
    v91 = "Bad path weight at index %lu";
LABEL_142:
    v94 = v70;
    v95 = 12;
    goto LABEL_148;
  }

LABEL_83:
  fallbackPathWeights = [v4 fallbackPathWeights];
  v75 = [fallbackPathWeights count];

  if (!v75)
  {
LABEL_94:
    if (![v4 resolversCount])
    {
      v15 = 1;
      goto LABEL_35;
    }

    v81 = 0;
    while (1)
    {
      policyTierMaps3 = [v4 resolversAtIndex:v81];
      v82 = MEMORY[0x1E695DFF8];
      dohURL = [policyTierMaps3 dohURL];
      policyTierMaps2 = [v82 URLWithString:dohURL];

      if (!policyTierMaps2)
      {
        break;
      }

      host3 = [policyTierMaps2 host];
      if (!host3)
      {
        break;
      }

      v85 = host3;
      scheme3 = [policyTierMaps2 scheme];
      if ([scheme3 isEqualToString:@"https"])
      {
      }

      else
      {
        scheme4 = [policyTierMaps2 scheme];
        v88 = [scheme4 isEqualToString:@"http"];

        if ((v88 & 1) == 0)
        {
          break;
        }
      }

      ++v81;
      v15 = 1;
      if (v81 >= [v4 resolversCount])
      {
        goto LABEL_35;
      }
    }

    v41 = nplog_obj();
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    *buf = 138412290;
    *v111 = policyTierMaps2;
    v42 = "Bad resolver url format %@";
    goto LABEL_113;
  }

  v76 = 0;
  while (1)
  {
    policyTierMaps3 = [v4 fallbackPathWeightsAtIndex:v76];
    if ([policyTierMaps3 weight]>= 0x65)
    {
      v70 = nplog_obj();
      if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_158;
      }

      *buf = 134217984;
      *v111 = v76;
      v91 = "Bad path weight at index %lu";
      goto LABEL_142;
    }

    if ([policyTierMaps3 proxiesCount]!= 2)
    {
      v70 = nplog_obj();
      if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_158;
      }

      *buf = 134217984;
      *v111 = v76;
      v91 = "Bad fallback proxy count for path weight at index %lu";
      goto LABEL_142;
    }

    v77 = [policyTierMaps3 proxiesAtIndex:0];
    v78 = [policyTierMaps3 proxiesAtIndex:1];
    if ([v4 proxiesCount] < v77)
    {
      v70 = nplog_obj();
      if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_158;
      }

      *buf = 67109376;
      *v111 = v77;
      *&v111[4] = 2048;
      *&v111[6] = v76;
      v91 = "Bad fallback proxy index %u at path weight index %lu";
      goto LABEL_147;
    }

    if ([v4 proxiesCount] < v78)
    {
      v70 = nplog_obj();
      if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_158;
      }

      *buf = 67109376;
      *v111 = v78;
      *&v111[4] = 2048;
      *&v111[6] = v76;
      v91 = "Bad fallback proxy index %u at path weight index %lu";
      goto LABEL_147;
    }

    v70 = [v4 proxiesAtIndex:v77];
    if ([v70 proxyHop]!= 1)
    {
      v96 = nplog_obj();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v97 = "first fallback proxy index in path weight should be ingress only";
        v98 = v96;
        v99 = 2;
        goto LABEL_160;
      }

LABEL_152:

      goto LABEL_158;
    }

    if (([v70 supportsFallback]& 1) == 0)
    {
      v96 = nplog_obj();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *v111 = v77;
        *&v111[4] = 2048;
        *&v111[6] = v76;
        v97 = "ingress fallback proxy does not have fallback capability for index %u at path weight index %lu";
        v98 = v96;
        v99 = 18;
LABEL_160:
        _os_log_error_impl(&dword_1AE7E2000, v98, OS_LOG_TYPE_ERROR, v97, buf, v99);
      }

      goto LABEL_152;
    }

    v71 = [v4 proxiesAtIndex:v78];
    if ([v71 proxyHop] != 2)
    {
      v100 = nplog_obj();
      if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_156;
      }

      *buf = 0;
      v101 = "second fallback proxy index in path weight should be egress only";
      v102 = v100;
      v103 = 2;
      goto LABEL_162;
    }

    if (([v71 supportsFallback] & 1) == 0)
    {
      break;
    }

    ++v76;
    fallbackPathWeights2 = [v4 fallbackPathWeights];
    v80 = [fallbackPathWeights2 count];

    if (v76 >= v80)
    {
      goto LABEL_94;
    }
  }

  v100 = nplog_obj();
  if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_156;
  }

  *buf = 67109376;
  *v111 = v78;
  *&v111[4] = 2048;
  *&v111[6] = v76;
  v101 = "egress fallback proxy does not have fallback capability for index %u at path weight index %lu";
  v102 = v100;
  v103 = 18;
LABEL_162:
  _os_log_error_impl(&dword_1AE7E2000, v102, OS_LOG_TYPE_ERROR, v101, buf, v103);
LABEL_156:

LABEL_157:
LABEL_158:

LABEL_33:
LABEL_34:
  v15 = 0;
LABEL_35:

LABEL_36:
  v35 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (void)verifyConfigurationSignature:(id)signature configuration:(id)configuration host:(id)host validateCert:(BOOL)cert completionHandler:(id)handler
{
  certCopy = cert;
  v65 = *MEMORY[0x1E69E9840];
  signatureCopy = signature;
  configurationCopy = configuration;
  hostCopy = host;
  handlerCopy = handler;
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  certificates = [signatureCopy certificates];
  v15 = [certificates countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (v15)
  {
    v17 = v15;
    v18 = *v58;
    v19 = *MEMORY[0x1E695E480];
    *&v16 = 138412290;
    v45 = v16;
    v48 = hostCopy;
    v49 = configurationCopy;
    while (2)
    {
      v20 = 0;
      do
      {
        if (*v58 != v18)
        {
          objc_enumerationMutation(certificates);
        }

        v21 = SecCertificateCreateWithData(v19, *(*(&v57 + 1) + 8 * v20));
        v22 = nplog_obj();
        v23 = v22;
        if (!v21)
        {
          hostCopy = v48;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1AE7E2000, v23, OS_LOG_TYPE_ERROR, "SecCertificateCreateWithData failed", buf, 2u);
          }

          configurationCopy = v49;
          goto LABEL_32;
        }

        v24 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);

        if (v24)
        {
          CFAbsoluteTimeGetCurrent();
          v25 = SecCertificateCopySummaryProperties();
          v26 = nplog_obj();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = v45;
            *&buf[4] = v25;
            _os_log_debug_impl(&dword_1AE7E2000, v26, OS_LOG_TYPE_DEBUG, "Certificate Properties:\n%@", buf, 0xCu);
          }

          if (v25)
          {
            CFRelease(v25);
          }
        }

        if ([NPUtilities certificateDateIsValid:v21, v45]!= 1)
        {
          v37 = nplog_obj();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1AE7E2000, v37, OS_LOG_TYPE_ERROR, "Certificate did not fall within valid dates", buf, 2u);
          }

          CFRelease(v21);
          hostCopy = v48;
          configurationCopy = v49;
LABEL_32:
          v28 = handlerCopy;
          (*(handlerCopy + 2))(handlerCopy, 0);

          goto LABEL_48;
        }

        [v13 addObject:v21];
        CFRelease(v21);
        ++v20;
      }

      while (v17 != v20);
      v17 = [certificates countByEnumeratingWithState:&v57 objects:v64 count:16];
      hostCopy = v48;
      configurationCopy = v49;
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  if (![v13 count])
  {
    v38 = nplog_obj();
    v28 = handlerCopy;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v38, OS_LOG_TYPE_ERROR, "No valid certificates to verify signed configuration", buf, 2u);
    }

    goto LABEL_35;
  }

  ApplePinned = SecPolicyCreateApplePinned();
  v28 = handlerCopy;
  if (!ApplePinned)
  {
    v38 = nplog_obj();
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 138412290;
    *&buf[4] = hostCopy;
    v39 = "SecPolicyCreateApplePinned failed for %@ host";
    v40 = buf;
    v41 = v38;
    v42 = 12;
LABEL_50:
    _os_log_error_impl(&dword_1AE7E2000, v41, OS_LOG_TYPE_ERROR, v39, v40, v42);
LABEL_35:

    (*(handlerCopy + 2))(handlerCopy, 0);
    goto LABEL_48;
  }

  v29 = ApplePinned;
  *buf = 0;
  v30 = SecTrustCreateWithCertificates(v13, ApplePinned, buf);
  v31 = *buf;
  if (v30 || !*buf)
  {
    if (*buf)
    {
      CFRelease(*buf);
      *buf = 0;
    }

    CFRelease(v29);
    v38 = nplog_obj();
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *v61 = 0;
    v39 = "SecTrustCreateWithCertificates failed";
    v40 = v61;
    v41 = v38;
    v42 = 2;
    goto LABEL_50;
  }

  if (!certCopy)
  {
    v43 = nplog_obj();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      *v61 = 0;
      _os_log_impl(&dword_1AE7E2000, v43, OS_LOG_TYPE_INFO, "Ignoring validation for Signed configuration", v61, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, 1);
    if (*buf)
    {
      CFRelease(*buf);
      *buf = 0;
    }

    goto LABEL_47;
  }

  v32 = hostCopy;
  v33 = NPGetInternalQueue();
  result[0] = MEMORY[0x1E69E9820];
  result[1] = 3221225472;
  result[2] = __99__NSPConfiguration_verifyConfigurationSignature_configuration_host_validateCert_completionHandler___block_invoke;
  result[3] = &unk_1E7A311D8;
  v55 = *buf;
  selfCopy = self;
  v52 = signatureCopy;
  v53 = configurationCopy;
  v34 = handlerCopy;
  v54 = v34;
  v35 = SecTrustEvaluateAsyncWithError(v31, v33, result);

  if (!v35)
  {

    hostCopy = v32;
LABEL_47:
    CFRelease(v29);
    goto LABEL_48;
  }

  v36 = nplog_obj();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *v61 = 67109120;
    v62 = v35;
    _os_log_error_impl(&dword_1AE7E2000, v36, OS_LOG_TYPE_ERROR, "SecTrustEvaluateAsync returned an error: %d", v61, 8u);
  }

  if (*buf)
  {
    CFRelease(*buf);
    *buf = 0;
  }

  (*(v34 + 2))(v34, 0);

  hostCopy = v32;
LABEL_48:

  v44 = *MEMORY[0x1E69E9840];
}

void __99__NSPConfiguration_verifyConfigurationSignature_configuration_host_validateCert_completionHandler___block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = nplog_obj();
  v8 = v7;
  if (!a3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *cf = 138412290;
      *&cf[4] = a4;
      _os_log_error_impl(&dword_1AE7E2000, v8, OS_LOG_TYPE_ERROR, "SecTrustEvaluateAsyncWithError failed with %@", cf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
    goto LABEL_26;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *cf = 0;
    _os_log_impl(&dword_1AE7E2000, v8, OS_LOG_TYPE_INFO, "SecTrustEvaluateAsyncWithError success", cf, 2u);
  }

  v9 = SecTrustCopyKey(*(a1 + 56));
  if (v9)
  {
    v10 = *(a1 + 64);
    v11 = *(a1 + 40);
    v12 = *(a1 + 32);
    v13 = v11;
    objc_opt_self();
    if (v12)
    {
      if (v13)
      {
        if ([v12 signatureAlgorithm] == 1)
        {
          *cf = 0;
          v14 = *MEMORY[0x1E697B128];
          v15 = [v12 signature];
          v16 = SecKeyVerifySignature(v9, v14, v13, v15, cf);

          if (*cf)
          {
            CFRelease(*cf);
          }

          if (v16 == 1)
          {
            v17 = nplog_obj();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *cf = 0;
              _os_log_impl(&dword_1AE7E2000, v17, OS_LOG_TYPE_INFO, "Configuration Signature validated", cf, 2u);
            }

            v18 = nplog_large_obj();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = *(a1 + 40);
              *cf = 138412290;
              *&cf[4] = v19;
              _os_log_impl(&dword_1AE7E2000, v18, OS_LOG_TYPE_INFO, "Validated configuration %@", cf, 0xCu);
            }

            (*(*(a1 + 48) + 16))();
LABEL_25:
            CFRelease(v9);
            goto LABEL_26;
          }

          goto LABEL_22;
        }

        v20 = nplog_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v24 = [v12 signatureAlgorithm];
          *cf = 134217984;
          *&cf[4] = v24;
          _os_log_error_impl(&dword_1AE7E2000, v20, OS_LOG_TYPE_ERROR, "validate signature, bad signature algorithm: %lu", cf, 0xCu);
        }

        goto LABEL_21;
      }

      v20 = nplog_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *cf = 136315138;
        *&cf[4] = "+[NSPConfiguration validateSignature:publicKey:signedData:]";
        v25 = "%s called with null signedData";
        goto LABEL_33;
      }
    }

    else
    {
      v20 = nplog_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *cf = 136315138;
        *&cf[4] = "+[NSPConfiguration validateSignature:publicKey:signedData:]";
        v25 = "%s called with null signatureInfo";
LABEL_33:
        _os_log_fault_impl(&dword_1AE7E2000, v20, OS_LOG_TYPE_FAULT, v25, cf, 0xCu);
      }
    }

LABEL_21:
  }

LABEL_22:
  v21 = nplog_obj();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *cf = 0;
    _os_log_error_impl(&dword_1AE7E2000, v21, OS_LOG_TYPE_ERROR, "Configuration Signature failed validation", cf, 2u);
  }

  (*(*(a1 + 48) + 16))();
  if (v9)
  {
    goto LABEL_25;
  }

LABEL_26:
  v22 = *(a1 + 56);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 56) = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (BOOL)saveToPreferences
{
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  if (!v3)
  {
    v12 = nplog_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      v13 = 0;
      goto LABEL_9;
    }

    v19 = 0;
    v14 = "NSKeyedArchiver initialize failed";
    v15 = &v19;
LABEL_11:
    _os_log_error_impl(&dword_1AE7E2000, v12, OS_LOG_TYPE_ERROR, v14, v15, 2u);
    goto LABEL_8;
  }

  v4 = self->_proxyConfiguration;
  proxyConfiguration = self->_proxyConfiguration;
  self->_proxyConfiguration = 0;

  [(NSPConfiguration *)self encodeWithCoder:v3];
  v6 = self->_proxyConfiguration;
  self->_proxyConfiguration = v4;

  v7 = *MEMORY[0x1E695E8A8];
  v8 = *MEMORY[0x1E695E8B8];
  v9 = *MEMORY[0x1E695E8B0];
  _CFPreferencesSetFileProtectionClass();
  encodedData = [v3 encodedData];
  CFPreferencesSetAppValue(@"NSPConfiguration", encodedData, v7);

  LODWORD(encodedData) = CFPreferencesAppSynchronize(v7);
  v11 = nplog_obj();
  v12 = v11;
  if (!encodedData)
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 0;
    v14 = "Failed to write nsp configuration to preference file";
    v15 = buf;
    goto LABEL_11;
  }

  v13 = 1;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *v17 = 0;
    _os_log_impl(&dword_1AE7E2000, v12, OS_LOG_TYPE_INFO, "Saved configuration to preference file", v17, 2u);
  }

LABEL_9:

  return v13;
}

- (id)initFromPreferences
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = CFPreferencesCopyAppValue(@"NSPConfiguration", *MEMORY[0x1E695E8A8]);
  if (v3)
  {
    v4 = v3;
    v35 = 0;
    v5 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v3 error:&v35];
    v6 = v35;
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      v9 = nplog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v7;
        _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to create a decoder for the NSP configuration: %@", buf, 0xCu);
      }

      CFRelease(v4);
LABEL_9:
      selfCopy = 0;
LABEL_48:

      goto LABEL_49;
    }

    CFRelease(v4);
    v34.receiver = self;
    v34.super_class = NSPConfiguration;
    v11 = [(NSPConfiguration *)&v34 init];
    if (v11)
    {
      v12 = [(NSPConfiguration *)v11 initWithCoder:v5];
      if (!v12)
      {
        v15 = nplog_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1AE7E2000, v15, OS_LOG_TYPE_ERROR, "Failed to decode the NSP configuration", buf, 2u);
        }

        self = 0;
        goto LABEL_9;
      }

      self = v12;
      diskVersion = v12->_diskVersion;
      if ((diskVersion - 24) <= 0xFFFFFFFFFFFFFFF0)
      {
        v14 = nplog_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v33 = self->_diskVersion;
          *buf = 134218240;
          v37 = v33;
          v38 = 2048;
          v39 = 23;
          _os_log_error_impl(&dword_1AE7E2000, v14, OS_LOG_TYPE_ERROR, "Saved disk version of configuration (%ld) does not match latest supported version (%ld)", buf, 0x16u);
        }

        goto LABEL_9;
      }

      if (diskVersion == 9)
      {
        objc_storeStrong(&v12->_userPreferredTier, v12->_userTier);
      }

      unsignedLongLongValue = [(NSNumber *)self->_proxyTrafficState unsignedLongLongValue];
      v17 = self->_diskVersion;
      v18 = unsignedLongLongValue | 0x7000;
      if (v17 >= 11)
      {
        v18 = unsignedLongLongValue;
      }

      v19 = v18 | 0x8000;
      if (v17 >= 12)
      {
        v19 = unsignedLongLongValue;
      }

      v20 = v19 | 0x10000;
      if (v17 >= 13)
      {
        v20 = unsignedLongLongValue;
      }

      v21 = v20 | 0x1C0000;
      if (v17 >= 14)
      {
        v21 = unsignedLongLongValue;
      }

      v22 = v21 | 0x200000;
      if (v17 >= 15)
      {
        v22 = unsignedLongLongValue;
      }

      v23 = v22 | 0x400000;
      if (v17 >= 16)
      {
        v23 = unsignedLongLongValue;
      }

      v24 = v23 | 0x800000;
      if (v17 >= 17)
      {
        v24 = unsignedLongLongValue;
      }

      v25 = v24 | 0x1000000;
      if (v17 >= 18)
      {
        v25 = unsignedLongLongValue;
      }

      v26 = v25 | 0x2000000;
      if (v17 >= 19)
      {
        v26 = unsignedLongLongValue;
      }

      v27 = v26 | 0x4000000;
      if (v17 >= 22)
      {
        v28 = unsignedLongLongValue;
      }

      else
      {
        v28 = v27;
      }

      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v28];
      proxyTrafficState = self->_proxyTrafficState;
      self->_proxyTrafficState = v29;
    }

    else
    {
      self = 0;
    }

    self = self;
    selfCopy = self;
    goto LABEL_48;
  }

  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_INFO, "no saved configuration", buf, 2u);
  }

  selfCopy = 0;
LABEL_49:

  v31 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)tierToString
{
  userTier = [(NSPConfiguration *)self userTier];
  intValue = [userTier intValue];
  if (intValue >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", intValue];
  }

  else
  {
    v4 = off_1E7A31240[intValue];
  }

  return v4;
}

+ (BOOL)fetchDate:(id)date isWithinStart:(id)start end:(id)end etag:(id)etag
{
  v34 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  startCopy = start;
  endCopy = end;
  etagCopy = etag;
  if (!dateCopy)
  {
    v18 = nplog_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v26 = 138412290;
      v27 = etagCopy;
      v23 = "Configuration (etag %@) has no fetch time, so cannot check validity";
      v24 = v18;
      v25 = 12;
      goto LABEL_22;
    }

LABEL_6:
    v17 = 0;
LABEL_17:

    goto LABEL_18;
  }

  [dateCopy timeIntervalSinceDate:startCopy];
  v14 = v13;
  [endCopy timeIntervalSinceDate:dateCopy];
  v16 = v15;
  if (v14 < 0.0 || v15 < 0.0)
  {
    if (v14 < 0.0 && v14 > -600.0)
    {
      v18 = nplog_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        v19 = "Configuration fetch date before start, but within 10 minute grace period";
LABEL_15:
        _os_log_impl(&dword_1AE7E2000, v18, OS_LOG_TYPE_DEFAULT, v19, &v26, 2u);
        goto LABEL_16;
      }

      goto LABEL_16;
    }

    v20 = nplog_obj();
    v18 = v20;
    if (v16 < 0.0 && v16 > -600.0)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        v19 = "Configuration fetch date after end, but within 10 minute grace period";
        goto LABEL_15;
      }

LABEL_16:
      v17 = 1;
      goto LABEL_17;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v26 = 138413058;
      v27 = dateCopy;
      v28 = 2112;
      v29 = etagCopy;
      v30 = 2112;
      v31 = startCopy;
      v32 = 2112;
      v33 = endCopy;
      v23 = "Configuration fetch time %@ (etag %@) is not within start time (%@) and end time (%@)";
      v24 = v18;
      v25 = 42;
LABEL_22:
      _os_log_error_impl(&dword_1AE7E2000, v24, OS_LOG_TYPE_ERROR, v23, &v26, v25);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  v17 = 1;
LABEL_18:

  v21 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)fetchDateIsWithinStart:(id)start end:(id)end
{
  endCopy = end;
  startCopy = start;
  configurationFetchDate = [(NSPConfiguration *)self configurationFetchDate];
  etag = [(NSPConfiguration *)self etag];
  v10 = [NSPConfiguration fetchDate:configurationFetchDate isWithinStart:startCopy end:endCopy etag:etag];

  return v10;
}

@end