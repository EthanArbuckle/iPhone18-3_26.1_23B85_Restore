@interface NSPConfiguration
+ (BOOL)fetchDate:(id)a3 isWithinStart:(id)a4 end:(id)a5 etag:(id)a6;
+ (BOOL)validatePrivacyProxyConfiguration:(id)a3;
+ (id)defaultConfiguration;
+ (id)proxyAccountTypeToString:(id)a3;
+ (id)proxyTrafficStateToString:(id)a3;
+ (void)verifyConfigurationSignature:(id)a3 configuration:(id)a4 host:(id)a5 validateCert:(BOOL)a6 completionHandler:(id)a7;
- (BOOL)fetchDateIsWithinStart:(id)a3 end:(id)a4;
- (BOOL)isDead;
- (BOOL)saveToPreferences;
- (NSPConfiguration)initWithCoder:(id)a3;
- (NSPConfiguration)initWithTimestamp:(id)a3 fromDictionary:(id)a4;
- (NSString)configServerHost;
- (id)copyTLVData;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createConfigFetchURLWithPath;
- (id)description;
- (id)diagnostics;
- (id)initFromPreferences;
- (id)initFromTLVs:(id)a3;
- (id)tierToString;
- (void)encodeWithCoder:(id)a3;
- (void)incrementSessionCountersOnFirstLaunch;
- (void)merge:(id)a3;
- (void)saveInternalOptions:(id)a3;
- (void)saveToKeychain;
- (void)setupNSURLSession;
@end

@implementation NSPConfiguration

+ (id)proxyTrafficStateToString:(id)a3
{
  v3 = [a3 unsignedLongLongValue];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = v4;
  if (v3)
  {
    [v4 addObject:@"Safari Unencrypted"];
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:@"Safari DNS"];
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v5 addObject:@"Safari Trackers"];
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v5 addObject:@"Safari All"];
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x40000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v5 addObject:@"Safari HTTP"];
  if ((v3 & 0x40000) == 0)
  {
LABEL_7:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v5 addObject:@"Safari Unencrypted (Private)"];
  if ((v3 & 0x80000) == 0)
  {
LABEL_8:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v5 addObject:@"Safari DNS (Private)"];
  if ((v3 & 0x100000) == 0)
  {
LABEL_9:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v5 addObject:@"Safari All (Private)"];
  if ((v3 & 0x200000) == 0)
  {
LABEL_10:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  [v5 addObject:@"Safari Metrics"];
  if ((v3 & 0x20) == 0)
  {
LABEL_11:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  [v5 addObject:@"Mail Trackers"];
  if ((v3 & 0x40) == 0)
  {
LABEL_12:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  [v5 addObject:@"Any Unencrypted"];
  if ((v3 & 0x80) == 0)
  {
LABEL_13:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  [v5 addObject:@"Any DNS"];
  if ((v3 & 0x100) == 0)
  {
LABEL_14:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  [v5 addObject:@"Known Trackers"];
  if ((v3 & 0x200) == 0)
  {
LABEL_15:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v5 addObject:@"Any App Trackers"];
  if ((v3 & 0x400) == 0)
  {
LABEL_16:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v5 addObject:@"News URL Resolution"];
  if ((v3 & 0x800) == 0)
  {
LABEL_17:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  [v5 addObject:@"Exposure Notifications"];
  if ((v3 & 0x1000) == 0)
  {
LABEL_18:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v5 addObject:@"Apple Certificates"];
  if ((v3 & 0x2000) == 0)
  {
LABEL_19:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v5 addObject:@"Network Tools"];
  if ((v3 & 0x4000) == 0)
  {
LABEL_20:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  [v5 addObject:@"Metrics Upload"];
  if ((v3 & 0x8000) == 0)
  {
LABEL_21:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  [v5 addObject:@"Branded Calling"];
  if ((v3 & 0x10000) == 0)
  {
LABEL_22:
    if ((v3 & 0x20000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  [v5 addObject:@"News Embedded Content"];
  if ((v3 & 0x20000) == 0)
  {
LABEL_23:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  [v5 addObject:@"App Metrics"];
  if ((v3 & 0x400000) == 0)
  {
LABEL_24:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  [v5 addObject:@"Promoted Content"];
  if ((v3 & 0x800000) == 0)
  {
LABEL_25:
    if ((v3 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  [v5 addObject:@"Postback Fetch"];
  if ((v3 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v3 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  [v5 addObject:@"Password Manager Icon Fetching"];
  if ((v3 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v3 & 0x4000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_57:
  [v5 addObject:@"Launch Warning Details"];
  if ((v3 & 0x4000000) != 0)
  {
LABEL_28:
    [v5 addObject:@"Podcasts Link Presentation"];
  }

LABEL_29:

  return v5;
}

+ (id)proxyAccountTypeToString:(id)a3
{
  v3 = a3;
  if ([v3 unsignedIntegerValue] == 1)
  {
    v4 = @"Free";
  }

  else if ([v3 unsignedIntegerValue] == 2)
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
  v5 = [(NSPConfiguration *)self resurrectionDate];
  v6 = [v4 localizedStringFromDate:v5 dateStyle:1 timeStyle:2];
  [v3 setObject:v6 forKeyedSubscript:@"resurrectionDate"];

  v7 = [(NSPConfiguration *)self etag];
  [v3 setObject:v7 forKeyedSubscript:@"Etag"];

  v8 = [(NSPConfiguration *)self epoch];
  [v3 setObject:v8 forKeyedSubscript:@"Epoch"];

  v9 = [(NSPConfiguration *)self proxyTrafficState];
  v10 = [NSPConfiguration proxyTrafficStateToString:v9];
  [v3 setObject:v10 forKeyedSubscript:@"ProxyTrafficState"];

  v11 = MEMORY[0x1E696AB78];
  v12 = [(NSPConfiguration *)self anyAppEnabledDate];
  v13 = [v11 localizedStringFromDate:v12 dateStyle:1 timeStyle:2];
  [v3 setObject:v13 forKeyedSubscript:@"AnyAppEnabledDate"];

  v14 = MEMORY[0x1E696AB78];
  v15 = [(NSPConfiguration *)self configurationFetchDate];
  v16 = [v14 localizedStringFromDate:v15 dateStyle:1 timeStyle:2];
  [v3 setObject:v16 forKeyedSubscript:@"PrivacyProxyConfigurationFetchDate"];

  v17 = [(NSPConfiguration *)self willResetSubscriberTierTomorrow];
  [v3 setObject:v17 forKeyedSubscript:@"WillResetSubscriberTierTomorrow"];

  v18 = MEMORY[0x1E696AB78];
  v19 = [(NSPConfiguration *)self resetTomorrowDate];
  v20 = [v18 localizedStringFromDate:v19 dateStyle:1 timeStyle:2];
  [v3 setObject:v20 forKeyedSubscript:@"ResetTomorrowDate"];

  v21 = [(NSPConfiguration *)self geohashSharingEnabledStatus];
  [v3 setObject:v21 forKeyedSubscript:@"GeohashSharingEnabled"];

  v22 = [(NSPConfiguration *)self preferredPathRoutingEnabledStatus];
  [v3 setObject:v22 forKeyedSubscript:@"PreferredPathRoutingEnabled"];

  v23 = [(NSPConfiguration *)self privateAccessTokensEnabledStatus];
  [v3 setObject:v23 forKeyedSubscript:@"PrivateAccessTokensEnabled"];

  v24 = [(NSPConfiguration *)self privateAccessTokensAllowTools];
  [v3 setObject:v24 forKeyedSubscript:@"PrivateAccessTokensAllowTools"];

  v25 = [(NSPConfiguration *)self inProcessFlowDivert];
  [v3 setObject:v25 forKeyedSubscript:@"InProcessFlowDivert"];

  v26 = [(NSPConfiguration *)self configServerEnabled];
  [v3 setObject:v26 forKeyedSubscript:@"PrivacyProxyConfigurationServerEnabled"];

  v27 = [(NSPConfiguration *)self configServerHost];
  [v3 setObject:v27 forKeyedSubscript:@"PrivacyProxyConfigurationServerHost"];

  v28 = [(NSPConfiguration *)self userTier];
  v29 = [v28 intValue];
  if (v29 >= 3)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v29];
  }

  else
  {
    v30 = off_1E7A31240[v29];
  }

  [v3 setObject:v30 forKeyedSubscript:@"UserTier"];

  v31 = [(NSPConfiguration *)self proxyAccountType];
  v32 = [NSPConfiguration proxyAccountTypeToString:v31];
  [v3 setObject:v32 forKeyedSubscript:@"ProxyAccountType"];

  v33 = [(NSPConfiguration *)self proxyAccountUnlimited];
  [v3 setObject:v33 forKeyedSubscript:@"ProxyAccountUnlimited"];

  v34 = MEMORY[0x1E696AD98];
  v35 = [(NSPConfiguration *)self proxyConfiguration];
  v36 = [v34 numberWithBool:{objc_msgSend(v35, "enabled")}];
  [v3 setObject:v36 forKeyedSubscript:@"TokenFetchEnabled"];

  v37 = [(NSPConfiguration *)self enabled];
  [v3 setObject:v37 forKeyedSubscript:@"enabled"];

  v38 = [(NSPConfiguration *)self version];
  [v3 setObject:v38 forKeyedSubscript:@"version"];

  v39 = [(NSPConfiguration *)self userPreferredTier];
  v40 = [v39 intValue];
  if (v40 >= 3)
  {
    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v40];
  }

  else
  {
    v41 = off_1E7A31240[v40];
  }

  [v3 setObject:v41 forKeyedSubscript:@"UserPreferredTier"];

  v42 = [(NSPConfiguration *)self subscriberEnabledFromNonSettingsApp];
  [v3 setObject:v42 forKeyedSubscript:@"SubscriberEnabledFromNonSettingsApp"];

  v43 = [(NSPConfiguration *)self trialConfigVersion];
  [v3 setObject:v43 forKeyedSubscript:@"TrialConfigVersion"];

  return v3;
}

- (id)description
{
  if (self)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
    v4 = [(NSPConfiguration *)self version];
    [(NSMutableString *)v3 appendPrettyObject:v4 withName:@"Configuration Version" andIndent:0 options:14];

    v5 = [(NSPConfiguration *)self enabled];
    [(NSMutableString *)v3 appendPrettyObject:v5 withName:@"Enabled" andIndent:0 options:14];

    v6 = [(NSPConfiguration *)self userTier];
    v7 = [v6 intValue];
    if (v7 >= 3)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v7];
    }

    else
    {
      v8 = off_1E7A31240[v7];
    }

    [(NSMutableString *)v3 appendPrettyObject:v8 withName:@"User Tier" andIndent:0 options:14];

    v9 = +[NSPConfiguration defaultConfiguration];
    v10 = [v9 copy];

    v11 = [(NSPConfiguration *)self configServerPath];
    if (v11)
    {
      v12 = self;
    }

    else
    {
      v12 = v10;
    }

    v13 = [(NSPConfiguration *)v12 configServerPath];

    if (os_variant_allows_internal_security_policies())
    {
      v14 = [(NSPConfiguration *)self configServerHost];
      v15 = @"Configuration Server";
      if (v14)
      {
        v16 = v14;
        v17 = [(NSPConfiguration *)self configServerHost];
        v18 = v10;
        v19 = [(NSPConfiguration *)v10 configServerHost];
        v20 = [v17 isEqualToString:v19];

        if (!v20)
        {
          v15 = @"Configuration Server (user-overridden)";
        }
      }

      else
      {
        v18 = v10;
      }

      v22 = [(NSPConfiguration *)self overrideConfigServerPath];

      if (v22)
      {
        v23 = [(NSPConfiguration *)self overrideConfigServerPath];

        v21 = @"Configuration Server Path (user-overridden)";
        v13 = v23;
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

    v24 = [(NSPConfiguration *)self configServerHost];
    [(NSMutableString *)v3 appendPrettyObject:v24 withName:v15 andIndent:0 options:14];

    [(NSMutableString *)v3 appendPrettyObject:v13 withName:v21 andIndent:0 options:14];
    v25 = [(NSPConfiguration *)self configServerHeaders];

    if (v25)
    {
      v26 = [(NSPConfiguration *)self configServerHeaders];
      [(NSMutableString *)v3 appendPrettyObject:v26 withName:@"Configuration Server Headers (user-overriden)" andIndent:0 options:14];
    }

    v27 = [(NSPConfiguration *)self resurrectionDate];
    [(NSMutableString *)v3 appendPrettyObject:v27 withName:@"Resurrection Date" andIndent:0 options:14];

    v28 = [(NSPConfiguration *)self configServerEnabled];
    [(NSMutableString *)v3 appendPrettyObject:v28 withName:@"Config Server Enabled" andIndent:0 options:14];

    [(NSMutableString *)v3 appendPrettyBOOL:@"Ignore Invalid Certs" withName:0 andIndent:14 options:?];
    [(NSMutableString *)v3 appendPrettyBOOL:@"Ignore Config Signature" withName:0 andIndent:14 options:?];
    [(NSMutableString *)v3 appendPrettyBOOL:@"Ignore Platform Binary" withName:0 andIndent:14 options:?];
    v29 = [(NSPConfiguration *)self proxyConfigurationData];
    [(NSMutableString *)v3 appendPrettyObject:v29 withName:@"Proxy configuration received data" andIndent:0 options:14];

    v30 = [(NSPConfiguration *)self proxyConfiguration];
    v31 = [v30 data];
    [(NSMutableString *)v3 appendPrettyObject:v31 withName:@"Proxy configuration stored data" andIndent:0 options:14];

    v32 = [(NSPConfiguration *)self proxyConfiguration];
    [(NSMutableString *)v3 appendPrettyObject:v32 withName:@"Proxy configuration" andIndent:0 options:14];

    v33 = [(NSPConfiguration *)self etag];
    [(NSMutableString *)v3 appendPrettyObject:v33 withName:@"ETag" andIndent:0 options:14];

    v34 = [(NSPConfiguration *)self epoch];
    [(NSMutableString *)v3 appendPrettyObject:v34 withName:@"Epoch" andIndent:0 options:14];

    v35 = [(NSPConfiguration *)self proxyTrafficState];
    v36 = [NSPConfiguration proxyTrafficStateToString:v35];

    [(NSMutableString *)v3 appendPrettyObject:v36 withName:@"Proxy Traffic" andIndent:0 options:14];
    v37 = MEMORY[0x1E696AB78];
    v38 = [(NSPConfiguration *)self anyAppEnabledDate];
    v39 = [v37 localizedStringFromDate:v38 dateStyle:1 timeStyle:2];
    [(NSMutableString *)v3 appendPrettyObject:v39 withName:@"Any App Enabled Date" andIndent:0 options:14];

    v40 = MEMORY[0x1E696AB78];
    v41 = [(NSPConfiguration *)self configurationFetchDate];
    v42 = [v40 localizedStringFromDate:v41 dateStyle:1 timeStyle:2];
    [(NSMutableString *)v3 appendPrettyObject:v42 withName:@"Configuration Fetch Date" andIndent:0 options:14];

    v43 = [(NSPConfiguration *)self willResetSubscriberTierTomorrow];
    [(NSMutableString *)v3 appendPrettyObject:v43 withName:@"Will Reset Subscriber Tier Tomorrow" andIndent:0 options:14];

    v44 = MEMORY[0x1E696AB78];
    v45 = [(NSPConfiguration *)self resetTomorrowDate];
    v46 = [v44 localizedStringFromDate:v45 dateStyle:1 timeStyle:2];
    [(NSMutableString *)v3 appendPrettyObject:v46 withName:@"Tomorrow Reset Date" andIndent:0 options:14];

    v47 = [(NSPConfiguration *)self cloudSubscriptionCheckEnabled];
    [(NSMutableString *)v3 appendPrettyObject:v47 withName:@"Cloud Subscription Check Enabled" andIndent:0 options:14];

    v48 = [(NSPConfiguration *)self geohashSharingEnabledStatus];
    [(NSMutableString *)v3 appendPrettyObject:v48 withName:@"Geohash Sharing Enabled" andIndent:0 options:14];

    v49 = [(NSPConfiguration *)self geohashOverride];
    [(NSMutableString *)v3 appendPrettyObject:v49 withName:@"Geohash Override" andIndent:0 options:14];

    v50 = [(NSPConfiguration *)self preferredPathRoutingEnabledStatus];
    [(NSMutableString *)v3 appendPrettyObject:v50 withName:@"Preferred Path Routing Enabled" andIndent:0 options:14];

    v51 = [(NSPConfiguration *)self privateAccessTokensEnabledStatus];
    [(NSMutableString *)v3 appendPrettyObject:v51 withName:@"Private Access Tokens Enabled" andIndent:0 options:14];

    v52 = [(NSPConfiguration *)self privateAccessTokensAllowTools];
    [(NSMutableString *)v3 appendPrettyObject:v52 withName:@"Private Access Tokens Allow Tools" andIndent:0 options:14];

    v53 = [(NSPConfiguration *)self inProcessFlowDivert];
    [(NSMutableString *)v3 appendPrettyObject:v53 withName:@"In-Process Flow Divert" andIndent:0 options:14];

    v54 = [(NSPConfiguration *)self proxyAccountType];
    v55 = [NSPConfiguration proxyAccountTypeToString:v54];
    [(NSMutableString *)v3 appendPrettyObject:v55 withName:@"Proxy Account Type" andIndent:0 options:14];

    v56 = [(NSPConfiguration *)self proxyAccountUnlimited];
    [(NSMutableString *)v3 appendPrettyObject:v56 withName:@"Proxy Account Unlimited" andIndent:0 options:14];

    v57 = [(NSPConfiguration *)self userPreferredTier];
    v58 = [v57 intValue];
    if (v58 >= 3)
    {
      v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v58];
    }

    else
    {
      v59 = off_1E7A31240[v58];
    }

    [(NSMutableString *)v3 appendPrettyObject:v59 withName:@"User preferred Tier" andIndent:0 options:14];

    v60 = [(NSPConfiguration *)self subscriberEnabledFromNonSettingsApp];
    -[NSMutableString appendPrettyBOOL:withName:andIndent:options:](v3, [v60 BOOLValue], @"Subscriber Enabled from Non-Settings App", 0, 14);

    v61 = [(NSPConfiguration *)self trialConfigVersion];
    [(NSMutableString *)v3 appendPrettyObject:v61 withName:@"Trial Config Version" andIndent:0 options:14];

    v62 = [(NSPConfiguration *)self lastPrivateCloudComputeEnvironment];
    [(NSMutableString *)v3 appendPrettyObject:v62 withName:@"Last PrivateCloudCompute environment" andIndent:0 options:14];
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

- (NSPConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v77.receiver = self;
  v77.super_class = NSPConfiguration;
  v5 = [(NSPConfiguration *)&v77 init];
  if (v5)
  {
    v5->_diskVersion = [v4 decodeIntegerForKey:@"diskVersion"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"enabled"];
    enabled = v5->_enabled;
    v5->_enabled = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resurrectionDate"];
    resurrectionDate = v5->_resurrectionDate;
    v5->_resurrectionDate = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyConfigurationServerEnabled"];
    configServerEnabled = v5->_configServerEnabled;
    v5->_configServerEnabled = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyConfigurationServerHost"];
    configServerHost = v5->_configServerHost;
    v5->_configServerHost = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyConfigurationServerPort"];
    configServerPort = v5->_configServerPort;
    v5->_configServerPort = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyConfigurationServerPath"];
    configServerPath = v5->_configServerPath;
    v5->_configServerPath = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyConfigurationOverrideServerPath"];
    overrideConfigServerPath = v5->_overrideConfigServerPath;
    v5->_overrideConfigServerPath = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyConfigurationServerHeaders"];
    configServerHeaders = v5->_configServerHeaders;
    v5->_configServerHeaders = v24;

    v5->_ignoreSignature = [v4 decodeBoolForKey:@"ProxyConfigurationIgnoreSignature"];
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"urlRequestTimeout"];
    urlRequestTimeout = v5->_urlRequestTimeout;
    v5->_urlRequestTimeout = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"persist-metrics"];
    persistMetrics = v5->_persistMetrics;
    v5->_persistMetrics = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProxyConfiguration"];
    proxyConfiguration = v5->_proxyConfiguration;
    v5->_proxyConfiguration = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProxyConfigurationData"];
    proxyConfigurationData = v5->_proxyConfigurationData;
    v5->_proxyConfigurationData = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UserTier"];
    userTier = v5->_userTier;
    v5->_userTier = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Etag"];
    etag = v5->_etag;
    v5->_etag = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Epoch"];
    epoch = v5->_epoch;
    v5->_epoch = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProxyTrafficState"];
    proxyTrafficState = v5->_proxyTrafficState;
    v5->_proxyTrafficState = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AnyAppEnabledDate"];
    anyAppEnabledDate = v5->_anyAppEnabledDate;
    v5->_anyAppEnabledDate = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyConfigurationFetchDate"];
    configurationFetchDate = v5->_configurationFetchDate;
    v5->_configurationFetchDate = v44;

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ResetTomorrowDate"];
    resetTomorrowDate = v5->_resetTomorrowDate;
    v5->_resetTomorrowDate = v46;

    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WillResetSubscriberTierTomorrow"];
    willResetSubscriberTierTomorrow = v5->_willResetSubscriberTierTomorrow;
    v5->_willResetSubscriberTierTomorrow = v48;

    if (os_variant_allows_internal_security_policies())
    {
      v5->_ignoreInvalidCerts = [v4 decodeBoolForKey:@"IgnoreInvalidCerts"];
      v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CloudSubscriptionCheckEnabled"];
      cloudSubscriptionCheckEnabled = v5->_cloudSubscriptionCheckEnabled;
      v5->_cloudSubscriptionCheckEnabled = v50;

      v5->_ignoreSignature = [v4 decodeBoolForKey:@"ProxyConfigurationIgnoreSignature"];
      v5->_ignorePlatformBinary = [v4 decodeBoolForKey:@"IgnorePlatformBinary"];
    }

    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"GeohashSharingEnabled"];
    geohashSharingEnabledStatus = v5->_geohashSharingEnabledStatus;
    v5->_geohashSharingEnabledStatus = v52;

    v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"GeohashOverride"];
    geohashOverride = v5->_geohashOverride;
    v5->_geohashOverride = v54;

    v56 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PreferredPathRoutingEnabled"];
    preferredPathRoutingEnabledStatus = v5->_preferredPathRoutingEnabledStatus;
    v5->_preferredPathRoutingEnabledStatus = v56;

    v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrivateAccessTokensEnabled"];
    privateAccessTokensEnabledStatus = v5->_privateAccessTokensEnabledStatus;
    v5->_privateAccessTokensEnabledStatus = v58;

    v60 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrivateAccessTokensAllowTools"];
    privateAccessTokensAllowTools = v5->_privateAccessTokensAllowTools;
    v5->_privateAccessTokensAllowTools = v60;

    v62 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"InProcessFlowDivert"];
    inProcessFlowDivert = v5->_inProcessFlowDivert;
    v5->_inProcessFlowDivert = v62;

    v64 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProxyAccountType"];
    proxyAccountType = v5->_proxyAccountType;
    v5->_proxyAccountType = v64;

    v66 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProxyAccountUnlimited"];
    proxyAccountUnlimited = v5->_proxyAccountUnlimited;
    v5->_proxyAccountUnlimited = v66;

    v68 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UserPreferredTier"];
    userPreferredTier = v5->_userPreferredTier;
    v5->_userPreferredTier = v68;

    v70 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SubscriberEnabledFromNonSettingsApp"];
    subscriberEnabledFromNonSettingsApp = v5->_subscriberEnabledFromNonSettingsApp;
    v5->_subscriberEnabledFromNonSettingsApp = v70;

    v72 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TrialConfigVersion"];
    trialConfigVersion = v5->_trialConfigVersion;
    v5->_trialConfigVersion = v72;

    if (os_variant_has_internal_content())
    {
      v74 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LastPrivateCloudComputeEnvironment"];
      lastPrivateCloudComputeEnvironment = v5->_lastPrivateCloudComputeEnvironment;
      v5->_lastPrivateCloudComputeEnvironment = v74;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v58 = a3;
  [v58 encodeInteger:23 forKey:@"diskVersion"];
  v4 = [(NSPConfiguration *)self version];
  [v58 encodeObject:v4 forKey:@"version"];

  v5 = [(NSPConfiguration *)self timestamp];
  [v58 encodeObject:v5 forKey:@"timestamp"];

  v7 = [(NSPConfiguration *)self enabled];
  if (self)
  {
    Property = objc_getProperty(self, v6, 328, 1);
  }

  else
  {
    Property = 0;
  }

  v9 = [Property enabled];
  IsEqual = myIsEqual(v7, v9);

  if ((IsEqual & 1) == 0)
  {
    v11 = [(NSPConfiguration *)self enabled];
    [v58 encodeObject:v11 forKey:@"enabled"];
  }

  v12 = [(NSPConfiguration *)self resurrectionDate];
  [v58 encodeObject:v12 forKey:@"resurrectionDate"];

  v13 = [(NSPConfiguration *)self configServerEnabled];
  [v58 encodeObject:v13 forKey:@"PrivacyProxyConfigurationServerEnabled"];

  if (!self || (v15 = objc_getProperty(self, v14, 328, 1)) == 0 || (v17 = v15, configServerHost = self->_configServerHost, v19 = objc_getProperty(self, v16, 328, 1), LOBYTE(configServerHost) = myIsEqual(configServerHost, v19[1]), v17, (configServerHost & 1) == 0))
  {
    [v58 encodeObject:self->_configServerHost forKey:@"PrivacyProxyConfigurationServerHost"];
  }

  v21 = objc_getProperty(self, v20, 328, 1);
  if (!v21 || (v23 = v21, configServerPort = self->_configServerPort, v25 = objc_getProperty(self, v22, 328, 1), LOBYTE(configServerPort) = myIsEqual(configServerPort, v25[10]), v23, (configServerPort & 1) == 0))
  {
    [v58 encodeObject:self->_configServerPort forKey:@"PrivacyProxyConfigurationServerPort"];
  }

  v26 = [(NSPConfiguration *)self overrideConfigServerPath];
  [v58 encodeObject:v26 forKey:@"PrivacyProxyConfigurationOverrideServerPath"];

  v27 = [(NSPConfiguration *)self configServerHeaders];

  if (v27)
  {
    v28 = [(NSPConfiguration *)self configServerHeaders];
    [v58 encodeObject:v28 forKey:@"PrivacyProxyConfigurationServerHeaders"];
  }

  v29 = [(NSPConfiguration *)self urlRequestTimeout];
  v31 = [objc_getProperty(self v30];
  v32 = myIsEqual(v29, v31);

  if ((v32 & 1) == 0)
  {
    v33 = [(NSPConfiguration *)self urlRequestTimeout];
    [v58 encodeObject:v33 forKey:@"urlRequestTimeout"];
  }

  v34 = [(NSPConfiguration *)self persistMetrics];
  [v58 encodeObject:v34 forKey:@"persist-metrics"];

  v35 = [(NSPConfiguration *)self proxyConfiguration];
  [v58 encodeObject:v35 forKey:@"ProxyConfiguration"];

  v36 = [(NSPConfiguration *)self proxyConfigurationData];
  [v58 encodeObject:v36 forKey:@"ProxyConfigurationData"];

  v37 = [(NSPConfiguration *)self userTier];
  [v58 encodeObject:v37 forKey:@"UserTier"];

  v38 = [(NSPConfiguration *)self proxyTrafficState];
  [v58 encodeObject:v38 forKey:@"ProxyTrafficState"];

  v39 = [(NSPConfiguration *)self anyAppEnabledDate];
  [v58 encodeObject:v39 forKey:@"AnyAppEnabledDate"];

  v40 = [(NSPConfiguration *)self etag];
  [v58 encodeObject:v40 forKey:@"Etag"];

  v41 = [(NSPConfiguration *)self epoch];
  [v58 encodeObject:v41 forKey:@"Epoch"];

  v42 = [(NSPConfiguration *)self configurationFetchDate];
  [v58 encodeObject:v42 forKey:@"PrivacyProxyConfigurationFetchDate"];

  v43 = [(NSPConfiguration *)self resetTomorrowDate];
  [v58 encodeObject:v43 forKey:@"ResetTomorrowDate"];

  v44 = [(NSPConfiguration *)self willResetSubscriberTierTomorrow];
  [v58 encodeObject:v44 forKey:@"WillResetSubscriberTierTomorrow"];

  if (os_variant_allows_internal_security_policies())
  {
    [v58 encodeBool:-[NSPConfiguration ignoreInvalidCerts](self forKey:{"ignoreInvalidCerts"), @"IgnoreInvalidCerts"}];
    v45 = [(NSPConfiguration *)self cloudSubscriptionCheckEnabled];
    [v58 encodeObject:v45 forKey:@"CloudSubscriptionCheckEnabled"];

    [v58 encodeBool:-[NSPConfiguration ignoreSignature](self forKey:{"ignoreSignature"), @"ProxyConfigurationIgnoreSignature"}];
    [v58 encodeBool:-[NSPConfiguration ignorePlatformBinary](self forKey:{"ignorePlatformBinary"), @"IgnorePlatformBinary"}];
  }

  v46 = [(NSPConfiguration *)self geohashSharingEnabledStatus];
  [v58 encodeObject:v46 forKey:@"GeohashSharingEnabled"];

  v47 = [(NSPConfiguration *)self geohashOverride];
  [v58 encodeObject:v47 forKey:@"GeohashOverride"];

  v48 = [(NSPConfiguration *)self preferredPathRoutingEnabledStatus];
  [v58 encodeObject:v48 forKey:@"PreferredPathRoutingEnabled"];

  v49 = [(NSPConfiguration *)self privateAccessTokensEnabledStatus];
  [v58 encodeObject:v49 forKey:@"PrivateAccessTokensEnabled"];

  v50 = [(NSPConfiguration *)self privateAccessTokensAllowTools];
  [v58 encodeObject:v50 forKey:@"PrivateAccessTokensAllowTools"];

  v51 = [(NSPConfiguration *)self inProcessFlowDivert];
  [v58 encodeObject:v51 forKey:@"InProcessFlowDivert"];

  v52 = [(NSPConfiguration *)self proxyAccountType];
  [v58 encodeObject:v52 forKey:@"ProxyAccountType"];

  v53 = [(NSPConfiguration *)self proxyAccountUnlimited];
  [v58 encodeObject:v53 forKey:@"ProxyAccountUnlimited"];

  v54 = [(NSPConfiguration *)self userPreferredTier];
  [v58 encodeObject:v54 forKey:@"UserPreferredTier"];

  v55 = [(NSPConfiguration *)self subscriberEnabledFromNonSettingsApp];
  [v58 encodeObject:v55 forKey:@"SubscriberEnabledFromNonSettingsApp"];

  v56 = [(NSPConfiguration *)self trialConfigVersion];
  [v58 encodeObject:v56 forKey:@"TrialConfigVersion"];

  if (os_variant_has_internal_content())
  {
    v57 = [(NSPConfiguration *)self lastPrivateCloudComputeEnvironment];
    [v58 encodeObject:v57 forKey:@"LastPrivateCloudComputeEnvironment"];
  }
}

- (id)copyWithZone:(_NSZone *)a3
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
  v7 = [(NSPConfiguration *)self version];
  objc_setProperty_atomic(v5, v8, v7, 24);

  v9 = [(NSPConfiguration *)self timestamp];
  timestamp = v5->_timestamp;
  v5->_timestamp = v9;

  v11 = [(NSPConfiguration *)self enabled];
  [(NSPConfiguration *)v5 setEnabled:v11];

  v12 = [(NSPConfiguration *)self resurrectionDate];
  [(NSPConfiguration *)v5 setResurrectionDate:v12];

  objc_storeStrong(&v5->_configServerHost, self->_configServerHost);
  objc_storeStrong(&v5->_configServerPort, self->_configServerPort);
  v13 = [(NSPConfiguration *)self configServerPath];
  [(NSPConfiguration *)v5 setConfigServerPath:v13];

  v14 = [(NSPConfiguration *)self overrideConfigServerPath];
  [(NSPConfiguration *)v5 setOverrideConfigServerPath:v14];

  v15 = [(NSPConfiguration *)self configServerHeaders];
  [(NSPConfiguration *)v5 setConfigServerHeaders:v15];

  v16 = [(NSPConfiguration *)self urlRequestTimeout];
  [(NSPConfiguration *)v5 setUrlRequestTimeout:v16];

  v17 = [(NSPConfiguration *)self configServerEnabled];
  [(NSPConfiguration *)v5 setConfigServerEnabled:v17];

  [(NSPConfiguration *)v5 setIgnoreInvalidCerts:[(NSPConfiguration *)self ignoreInvalidCerts]];
  [(NSPConfiguration *)v5 setIgnoreSignature:[(NSPConfiguration *)self ignoreSignature]];
  [(NSPConfiguration *)v5 setIgnorePlatformBinary:[(NSPConfiguration *)self ignorePlatformBinary]];
  v18 = [(NSPConfiguration *)self persistMetrics];
  [(NSPConfiguration *)v5 setPersistMetrics:v18];

  v19 = [(NSPConfiguration *)self proxyConfiguration];
  [(NSPConfiguration *)v5 setProxyConfiguration:v19];

  v20 = [(NSPConfiguration *)self userTier];
  [(NSPConfiguration *)v5 setUserTier:v20];

  v21 = [(NSPConfiguration *)self proxyTrafficState];
  [(NSPConfiguration *)v5 setProxyTrafficState:v21];

  v22 = [(NSPConfiguration *)self anyAppEnabledDate];
  [(NSPConfiguration *)v5 setAnyAppEnabledDate:v22];

  v23 = [(NSPConfiguration *)self etag];
  [(NSPConfiguration *)v5 setEtag:v23];

  v24 = [(NSPConfiguration *)self epoch];
  [(NSPConfiguration *)v5 setEpoch:v24];

  v25 = [(NSPConfiguration *)self configurationFetchDate];
  [(NSPConfiguration *)v5 setConfigurationFetchDate:v25];

  v26 = [(NSPConfiguration *)self resetTomorrowDate];
  [(NSPConfiguration *)v5 setResetTomorrowDate:v26];

  v27 = [(NSPConfiguration *)self willResetSubscriberTierTomorrow];
  [(NSPConfiguration *)v5 setWillResetSubscriberTierTomorrow:v27];

  v28 = [(NSPConfiguration *)self cloudSubscriptionCheckEnabled];
  [(NSPConfiguration *)v5 setCloudSubscriptionCheckEnabled:v28];

  v29 = [(NSPConfiguration *)self geohashSharingEnabledStatus];
  [(NSPConfiguration *)v5 setGeohashSharingEnabledStatus:v29];

  v30 = [(NSPConfiguration *)self geohashOverride];
  [(NSPConfiguration *)v5 setGeohashOverride:v30];

  v31 = [(NSPConfiguration *)self preferredPathRoutingEnabledStatus];
  [(NSPConfiguration *)v5 setPreferredPathRoutingEnabledStatus:v31];

  v32 = [(NSPConfiguration *)self privateAccessTokensEnabledStatus];
  [(NSPConfiguration *)v5 setPrivateAccessTokensEnabledStatus:v32];

  v33 = [(NSPConfiguration *)self privateAccessTokensAllowTools];
  [(NSPConfiguration *)v5 setPrivateAccessTokensAllowTools:v33];

  v34 = [(NSPConfiguration *)self inProcessFlowDivert];
  [(NSPConfiguration *)v5 setInProcessFlowDivert:v34];

  v35 = [(NSPConfiguration *)self proxyAccountType];
  [(NSPConfiguration *)v5 setProxyAccountType:v35];

  v36 = [(NSPConfiguration *)self proxyAccountUnlimited];
  [(NSPConfiguration *)v5 setProxyAccountUnlimited:v36];

  v37 = [(NSPConfiguration *)self userPreferredTier];
  [(NSPConfiguration *)v5 setUserPreferredTier:v37];

  v38 = [(NSPConfiguration *)self subscriberEnabledFromNonSettingsApp];
  [(NSPConfiguration *)v5 setSubscriberEnabledFromNonSettingsApp:v38];

  v39 = [(NSPConfiguration *)self trialConfigVersion];
  [(NSPConfiguration *)v5 setTrialConfigVersion:v39];

  v40 = [(NSPConfiguration *)self lastPrivateCloudComputeEnvironment];
  [(NSPConfiguration *)v5 setLastPrivateCloudComputeEnvironment:v40];

  return v5;
}

- (void)merge:(id)a3
{
  v90 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 version];

  if (v5)
  {
    v6 = [v4 version];
    version = self->_version;
    self->_version = v6;
  }

  v8 = [v4 timestamp];

  if (v8)
  {
    v9 = [v4 timestamp];
    timestamp = self->_timestamp;
    self->_timestamp = v9;
  }

  self->_ignoreInvalidCerts = [v4 ignoreInvalidCerts];
  self->_ignoreSignature = [v4 ignoreSignature];
  self->_ignorePlatformBinary = [v4 ignorePlatformBinary];
  v11 = [v4 enabled];

  if (v11)
  {
    v12 = [v4 enabled];
    enabled = self->_enabled;
    self->_enabled = v12;
  }

  v14 = [v4 resurrectionDate];

  if (v14)
  {
    v15 = [v4 resurrectionDate];
    [(NSPConfiguration *)self setResurrectionDate:v15];
  }

  v16 = +[NSPConfiguration defaultConfiguration];
  v17 = [v4 configServerHost];

  if (v17)
  {
    v18 = [v4 configServerHost];
    v19 = [v18 isEqualToString:@"none"];

    if (v19)
    {
      v20 = v16;
    }

    else
    {
      v20 = v4;
    }

    v21 = [v20 configServerHost];
    [(NSPConfiguration *)self setConfigServerHost:v21];

    v22 = nplog_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [v4 configServerHost];
      v88 = 138412290;
      v89 = v23;
      _os_log_impl(&dword_1AE7E2000, v22, OS_LOG_TYPE_INFO, "Set configServerHost to %@", &v88, 0xCu);
    }
  }

  v24 = [v4 configServerPort];

  if (v24)
  {
    v25 = [v4 configServerPort];
    [(NSPConfiguration *)self setConfigServerPort:v25];
  }

  v26 = [v4 overrideConfigServerPath];

  if (v26)
  {
    v27 = [v4 overrideConfigServerPath];
    v28 = [v27 isEqualToString:@"none"];

    if (v28)
    {
      [(NSPConfiguration *)self setOverrideConfigServerPath:0];
    }

    else
    {
      v29 = [v4 overrideConfigServerPath];
      [(NSPConfiguration *)self setOverrideConfigServerPath:v29];
    }

    v30 = nplog_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = [v4 overrideConfigServerPath];
      v88 = 138412290;
      v89 = v31;
      _os_log_impl(&dword_1AE7E2000, v30, OS_LOG_TYPE_INFO, "Set overrideConfigServerPath to %@", &v88, 0xCu);
    }
  }

  else
  {
    [(NSPConfiguration *)self setOverrideConfigServerPath:0];
  }

  v32 = [v4 configServerHeaders];

  if (v32)
  {
    v33 = [v4 configServerHeaders];
    v34 = [v33 isEqualToString:@"none"];

    if (v34)
    {
      [(NSPConfiguration *)self setConfigServerHeaders:0];
    }

    else
    {
      v35 = [v4 configServerHeaders];
      [(NSPConfiguration *)self setConfigServerHeaders:v35];
    }

    v36 = nplog_obj();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = [v4 configServerHeaders];
      v88 = 138412290;
      v89 = v37;
      _os_log_impl(&dword_1AE7E2000, v36, OS_LOG_TYPE_INFO, "Set configServerPath to %@", &v88, 0xCu);
    }
  }

  v38 = [v4 urlRequestTimeout];

  if (v38)
  {
    v39 = [v4 urlRequestTimeout];
    [(NSPConfiguration *)self setUrlRequestTimeout:v39];
  }

  v40 = [v4 configServerEnabled];

  if (v40)
  {
    v41 = [v4 configServerEnabled];
    [(NSPConfiguration *)self setConfigServerEnabled:v41];
  }

  v42 = [v4 persistMetrics];

  if (v42)
  {
    v43 = [v4 persistMetrics];
    [(NSPConfiguration *)self setPersistMetrics:v43];
  }

  v44 = [v4 proxyConfiguration];

  if (v44)
  {
    v45 = [v4 proxyConfiguration];
    [(NSPConfiguration *)self setProxyConfiguration:v45];
  }

  v46 = [v4 proxyConfigurationData];

  if (v46)
  {
    v47 = [v4 proxyConfigurationData];
    [(NSPConfiguration *)self setProxyConfigurationData:v47];
  }

  v48 = [v4 userTier];

  if (v48)
  {
    v49 = [v4 userTier];
    [(NSPConfiguration *)self setUserTier:v49];
  }

  v50 = [v4 proxyTrafficState];

  if (v50)
  {
    v51 = [v4 proxyTrafficState];
    [(NSPConfiguration *)self setProxyTrafficState:v51];
  }

  v52 = [v4 anyAppEnabledDate];

  if (v52)
  {
    v53 = [v4 anyAppEnabledDate];
    [(NSPConfiguration *)self setAnyAppEnabledDate:v53];
  }

  v54 = [v4 etag];

  if (v54)
  {
    v55 = [v4 etag];
    [(NSPConfiguration *)self setEtag:v55];
  }

  v56 = [v4 epoch];

  if (v56)
  {
    v57 = [v4 epoch];
    [(NSPConfiguration *)self setEpoch:v57];
  }

  v58 = [v4 configurationFetchDate];

  if (v58)
  {
    v59 = [v4 configurationFetchDate];
    [(NSPConfiguration *)self setConfigurationFetchDate:v59];
  }

  v60 = [v4 willResetSubscriberTierTomorrow];

  if (v60)
  {
    v61 = [v4 willResetSubscriberTierTomorrow];
    [(NSPConfiguration *)self setWillResetSubscriberTierTomorrow:v61];

    v62 = [v4 resetTomorrowDate];
    [(NSPConfiguration *)self setResetTomorrowDate:v62];
  }

  v63 = [v4 cloudSubscriptionCheckEnabled];

  if (v63)
  {
    v64 = [v4 cloudSubscriptionCheckEnabled];
    [(NSPConfiguration *)self setCloudSubscriptionCheckEnabled:v64];
  }

  v65 = [v4 geohashSharingEnabledStatus];

  if (v65)
  {
    v66 = [v4 geohashSharingEnabledStatus];
    [(NSPConfiguration *)self setGeohashSharingEnabledStatus:v66];
  }

  v67 = [v4 geohashOverride];
  [(NSPConfiguration *)self setGeohashOverride:v67];

  v68 = [v4 preferredPathRoutingEnabledStatus];

  if (v68)
  {
    v69 = [v4 preferredPathRoutingEnabledStatus];
    [(NSPConfiguration *)self setPreferredPathRoutingEnabledStatus:v69];
  }

  v70 = [v4 privateAccessTokensEnabledStatus];

  if (v70)
  {
    v71 = [v4 privateAccessTokensEnabledStatus];
    [(NSPConfiguration *)self setPrivateAccessTokensEnabledStatus:v71];
  }

  v72 = [v4 privateAccessTokensAllowTools];

  if (v72)
  {
    v73 = [v4 privateAccessTokensAllowTools];
    [(NSPConfiguration *)self setPrivateAccessTokensAllowTools:v73];
  }

  v74 = [v4 inProcessFlowDivert];

  if (v74)
  {
    v75 = [v4 inProcessFlowDivert];
    [(NSPConfiguration *)self setInProcessFlowDivert:v75];
  }

  v76 = [v4 proxyAccountType];

  if (v76)
  {
    v77 = [v4 proxyAccountType];
    [(NSPConfiguration *)self setProxyAccountType:v77];
  }

  v78 = [v4 proxyAccountUnlimited];

  if (v78)
  {
    v79 = [v4 proxyAccountUnlimited];
    [(NSPConfiguration *)self setProxyAccountUnlimited:v79];
  }

  v80 = [v4 userPreferredTier];

  if (v80)
  {
    v81 = [v4 userPreferredTier];
    [(NSPConfiguration *)self setUserPreferredTier:v81];
  }

  v82 = [v4 subscriberEnabledFromNonSettingsApp];

  if (v82)
  {
    v83 = [v4 subscriberEnabledFromNonSettingsApp];
    [(NSPConfiguration *)self setSubscriberEnabledFromNonSettingsApp:v83];
  }

  v84 = [v4 trialConfigVersion];

  if (v84)
  {
    v85 = [v4 trialConfigVersion];
    [(NSPConfiguration *)self setTrialConfigVersion:v85];
  }

  v86 = [v4 lastPrivateCloudComputeEnvironment];
  [(NSPConfiguration *)self setLastPrivateCloudComputeEnvironment:v86];

  v87 = *MEMORY[0x1E69E9840];
}

- (void)saveInternalOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 overrideConfigServerPath];
  [(NSPConfiguration *)self setOverrideConfigServerPath:v5];

  v6 = [v4 configServerHeaders];
  [(NSPConfiguration *)self setConfigServerHeaders:v6];

  v7 = [v4 geohashOverride];
  [(NSPConfiguration *)self setGeohashOverride:v7];

  -[NSPConfiguration setIgnoreInvalidCerts:](self, "setIgnoreInvalidCerts:", [v4 ignoreInvalidCerts]);
  -[NSPConfiguration setIgnoreSignature:](self, "setIgnoreSignature:", [v4 ignoreSignature]);
  v8 = [v4 ignorePlatformBinary];

  [(NSPConfiguration *)self setIgnorePlatformBinary:v8];
}

- (NSPConfiguration)initWithTimestamp:(id)a3 fromDictionary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v74.receiver = self;
  v74.super_class = NSPConfiguration;
  v9 = [(NSPConfiguration *)&v74 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_timestamp, a3);
    v11 = [v8 objectForKeyedSubscript:@"version"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v13 = [v8 objectForKeyedSubscript:@"version"];
      version = v10->_version;
      v10->_version = v13;
    }

    v15 = [v8 objectForKeyedSubscript:@"global"];
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();

    if ((v16 & 1) == 0)
    {
      goto LABEL_60;
    }

    v17 = [v8 objectForKeyedSubscript:@"global"];
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

    v42 = v7;
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
    v7 = v42;
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
      v54 = v7;
      v55 = [(NSDictionary *)v17 objectForPlatformSpecificKey:?];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v10->_lastPrivateCloudComputeEnvironment, v55);
      }

      v7 = v54;
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
  v5 = [v7 encodedData];
  [NPUtilities saveDataToKeychain:v5 withIdentifier:@"com.apple.NetworkServiceProxy.Configuration" accountName:@"configuration"];

  if (self)
  {
    objc_setProperty_atomic(self, v6, 0, 328);
  }
}

- (id)copyTLVData
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v7 = 0;
  v4 = [(NSPConfiguration *)self persistMetrics];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v7 = 4;
  }

  [(NSMutableData *)v3 appendType:4u length:&v7 value:?];
  return v3;
}

- (id)initFromTLVs:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NSPConfiguration;
  v5 = [(NSPConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
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
  v3 = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
  v4 = [v3 _socketStreamProperties];
  v5 = MEMORY[0x1E695DF90];
  if (v4)
  {
    v6 = [v3 _socketStreamProperties];
    v7 = [v5 dictionaryWithDictionary:v6];
  }

  else
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
  }

  [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E695AD38]];
  [v3 set_socketStreamProperties:v7];
  v8 = [(NSPConfiguration *)self urlRequestTimeout];
  [v8 doubleValue];
  v10 = v9;

  if (v10 <= 0.0)
  {
    [v3 setTimeoutIntervalForResource:30.0];
  }

  else
  {
    v11 = [(NSPConfiguration *)self urlRequestTimeout];
    [v11 doubleValue];
    [v3 setTimeoutIntervalForResource:?];
  }

  v12 = [(NSPConfiguration *)self configServerHost];
  [(NSURLSessionDelegate *)v19 setValidationHostname:v12];

  [(NSURLSessionDelegate *)v19 setIgnoreInvalidCerts:[(NSPConfiguration *)self ignoreInvalidCerts]];
  v13 = [(NSPConfiguration *)self privacyProxyURLSession];

  if (v13)
  {
    v14 = [(NSPConfiguration *)self privacyProxyURLSession];
    [v14 invalidateAndCancel];
  }

  v15 = MEMORY[0x1E696AF78];
  v16 = [MEMORY[0x1E696ADC8] mainQueue];
  v17 = [v15 sessionWithConfiguration:v3 delegate:v19 delegateQueue:v16];
  [(NSPConfiguration *)self setPrivacyProxyURLSession:v17];

  v18 = [(NSPConfiguration *)self privacyProxyURLSession];
  [v18 setSessionDescription:@"PrivacyProxy"];
}

- (id)createConfigFetchURLWithPath
{
  v3 = [(NSPConfiguration *)self configServerHost];
  v4 = [(NSPConfiguration *)self configServerPort];
  v5 = [(NSPConfiguration *)self configServerPath];
  if (os_variant_allows_internal_security_policies())
  {
    v6 = [(NSPConfiguration *)self overrideConfigServerPath];

    if (v6)
    {
      v7 = [(NSPConfiguration *)self overrideConfigServerPath];

      v5 = v7;
    }
  }

  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (v4)
  {
    v9 = [v8 initWithFormat:@"https://%@:%@/%@", v3, v4, v5];
  }

  else
  {
    v9 = [v8 initWithFormat:@"https://%@/%@", v3, v5, v13];
  }

  v10 = v9;
  v11 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v9];

  return v11;
}

- (BOOL)isDead
{
  v3 = [(NSPConfiguration *)self resurrectionDate];
  if (v3)
  {
    v4 = [(NSPConfiguration *)self resurrectionDate];
    [v4 timeIntervalSinceNow];
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
  v2 = [MEMORY[0x1E6977F98] sharedMaintainer];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__NSPConfiguration_incrementSessionCountersOnFirstLaunch__block_invoke;
  v3[3] = &unk_1E7A311B0;
  v3[4] = v4;
  [v2 iterateFileHandlesWithBlock:v3];

  _Block_object_dispose(v4, 8);
}

+ (BOOL)validatePrivacyProxyConfiguration:(id)a3
{
  v113 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3)
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

  if ([v3 version] != 1)
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

  v5 = [v4 authInfo];
  if (![v5 authType])
  {

LABEL_14:
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = [v4 authInfo];
      v17 = [v16 authType];
      if (v17 >= 5)
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v17];
      }

      else
      {
        v18 = off_1E7A311F8[v17];
      }

      *buf = 138412290;
      *v111 = v18;
      _os_log_error_impl(&dword_1AE7E2000, v11, OS_LOG_TYPE_ERROR, "Configuration has bad authentication type: %@", buf, 0xCu);
    }

    goto LABEL_34;
  }

  v6 = [v4 authInfo];
  v7 = [v6 authType];

  if (v7 >= 4)
  {
    goto LABEL_14;
  }

  v8 = MEMORY[0x1E695DFF8];
  v9 = [v4 authInfo];
  v10 = [v9 authURL];
  v11 = [v8 URLWithString:v10];

  if (!v11)
  {
    goto LABEL_32;
  }

  v12 = [v11 host];
  if (!v12)
  {
    goto LABEL_32;
  }

  v13 = v12;
  v14 = [v11 scheme];
  if ([v14 isEqualToString:@"https"])
  {

    goto LABEL_18;
  }

  v19 = [v11 scheme];
  v20 = [v19 isEqualToString:@"http"];

  if ((v20 & 1) == 0)
  {
LABEL_32:
    v23 = nplog_obj();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *buf = 138412290;
    *v111 = v11;
    v34 = "Bad authentication url format %@";
    v38 = v23;
    v39 = 12;
    goto LABEL_48;
  }

LABEL_18:
  v21 = [v4 policyTierMaps];
  v22 = [v21 count];

  if (v22 != 2)
  {
    v23 = nplog_obj();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    v37 = [v4 policyTierMaps];
    *buf = 134217984;
    *v111 = [v37 count];
    _os_log_error_impl(&dword_1AE7E2000, v23, OS_LOG_TYPE_ERROR, "Invalid policy tier count %lu", buf, 0xCu);
    goto LABEL_40;
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v23 = [v4 policyTierMaps];
  v24 = [v23 countByEnumeratingWithState:&v106 objects:v112 count:16];
  if (!v24)
  {

LABEL_44:
    v23 = nplog_obj();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v34 = "configuration should contain policies for both tiers";
LABEL_46:
    v38 = v23;
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
        objc_enumerationMutation(v23);
      }

      v30 = *(*(&v106 + 1) + 8 * i);
      if (![v30 tier] || objc_msgSend(v30, "tier") >= 3)
      {
        v37 = nplog_obj();
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_40;
        }

        v40 = [v30 tier];
        if (v40 >= 3)
        {
          v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v40];
        }

        else
        {
          v41 = off_1E7A31240[v40];
        }

        *buf = 138412290;
        *v111 = v41;
        v42 = "bad policy tier type %@";
        v43 = v37;
LABEL_55:
        v44 = 12;
        goto LABEL_56;
      }

      v31 = [v30 tier];
      v26 |= v31 != 1;
      v27 |= v31 == 1;
    }

    v25 = [v23 countByEnumeratingWithState:&v106 objects:v112 count:16];
  }

  while (v25);

  if ((v27 & v26 & 1) == 0)
  {
    goto LABEL_44;
  }

  v32 = [v4 proxies];
  v33 = [v32 count];

  if (v33 < 2)
  {
    v23 = nplog_obj();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
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
    v23 = nplog_obj();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
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
    v23 = [v4 proxiesAtIndex:v105];
    if (![v23 proxyHop]&& [v23 proxyHop]>= 3)
    {
      v37 = nplog_obj();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v89 = [v23 proxyHop];
        if (v89 >= 4)
        {
          v90 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v89];
        }

        else
        {
          v90 = off_1E7A31220[v89];
        }

        *buf = 134218242;
        *v111 = v105;
        *&v111[8] = 2112;
        *&v111[10] = v90;
        _os_log_error_impl(&dword_1AE7E2000, v37, OS_LOG_TYPE_ERROR, "proxy hop at %lu has invalid hop type %@", buf, 0x16u);
      }

      goto LABEL_40;
    }

    v45 = [v23 proxyHop];
    v46 = v45 == 1;
    v47 = v45 != 1;
    v48 = MEMORY[0x1E695DFF8];
    v49 = [v23 proxyURL];
    v37 = [v48 URLWithString:v49];

    if (!v37)
    {
      goto LABEL_107;
    }

    v50 = [v37 host];
    if (!v50 || (v51 = v50, -[NSObject scheme](v37, "scheme"), v52 = objc_claimAutoreleasedReturnValue(), v53 = [v52 isEqualToString:@"https"], v52, v51, (v53 & 1) == 0))
    {
LABEL_107:
      v41 = nplog_obj();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v111 = v37;
        v42 = "Bad proxy url format %@";
        goto LABEL_113;
      }

LABEL_57:

LABEL_40:
      goto LABEL_33;
    }

    v54 = [v23 proxyKeyInfos];
    v55 = [v54 count];

    if (!v55)
    {
      v41 = nplog_obj();
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      *buf = 138412290;
      *v111 = v37;
      v42 = "Proxy %@ needs proxy keys";
LABEL_113:
      v43 = v41;
      goto LABEL_55;
    }

    v56 = [v23 proxyKeyInfos];
    v57 = [v56 count];

    if (v57)
    {
      v58 = 0;
      while (1)
      {
        v59 = [v23 proxyKeyInfoAtIndex:v58];

        if (!v59)
        {
          break;
        }

        ++v58;
        v60 = [v23 proxyKeyInfos];
        v61 = [v60 count];

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
      *&v111[10] = v37;
      v42 = "proxy key info for index %lu is nil for proxy %@";
      v43 = v41;
      v44 = 22;
LABEL_56:
      _os_log_error_impl(&dword_1AE7E2000, v43, OS_LOG_TYPE_ERROR, v42, buf, v44);
      goto LABEL_57;
    }

LABEL_70:
    v62 = [v23 tokenKeyInfo];

    if (!v62)
    {
      v41 = nplog_obj();
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      *buf = 138412290;
      *v111 = v37;
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

  v63 = [v4 pathWeights];
  v64 = [v63 count];

  if (!v64)
  {
    v23 = nplog_obj();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v34 = "configuration should contain atleast one proxy path weight";
    goto LABEL_46;
  }

  v65 = [v4 pathWeights];
  v66 = [v65 count];

  if (v66)
  {
    v67 = 0;
    while (1)
    {
      v23 = [v4 pathWeightsAtIndex:v67];
      if ([v23 weight]>= 0x65)
      {
        break;
      }

      if ([v23 proxiesCount]!= 2)
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

      v68 = [v23 proxiesAtIndex:0];
      v69 = [v23 proxiesAtIndex:1];
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
      v72 = [v4 pathWeights];
      v73 = [v72 count];

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
  v74 = [v4 fallbackPathWeights];
  v75 = [v74 count];

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
      v23 = [v4 resolversAtIndex:v81];
      v82 = MEMORY[0x1E695DFF8];
      v83 = [v23 dohURL];
      v37 = [v82 URLWithString:v83];

      if (!v37)
      {
        break;
      }

      v84 = [v37 host];
      if (!v84)
      {
        break;
      }

      v85 = v84;
      v86 = [v37 scheme];
      if ([v86 isEqualToString:@"https"])
      {
      }

      else
      {
        v87 = [v37 scheme];
        v88 = [v87 isEqualToString:@"http"];

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
    *v111 = v37;
    v42 = "Bad resolver url format %@";
    goto LABEL_113;
  }

  v76 = 0;
  while (1)
  {
    v23 = [v4 fallbackPathWeightsAtIndex:v76];
    if ([v23 weight]>= 0x65)
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

    if ([v23 proxiesCount]!= 2)
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

    v77 = [v23 proxiesAtIndex:0];
    v78 = [v23 proxiesAtIndex:1];
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
    v79 = [v4 fallbackPathWeights];
    v80 = [v79 count];

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

+ (void)verifyConfigurationSignature:(id)a3 configuration:(id)a4 host:(id)a5 validateCert:(BOOL)a6 completionHandler:(id)a7
{
  v47 = a6;
  v65 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v50 = a7;
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v14 = [v10 certificates];
  v15 = [v14 countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (v15)
  {
    v17 = v15;
    v18 = *v58;
    v19 = *MEMORY[0x1E695E480];
    *&v16 = 138412290;
    v45 = v16;
    v48 = v12;
    v49 = v11;
    while (2)
    {
      v20 = 0;
      do
      {
        if (*v58 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v21 = SecCertificateCreateWithData(v19, *(*(&v57 + 1) + 8 * v20));
        v22 = nplog_obj();
        v23 = v22;
        if (!v21)
        {
          v12 = v48;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1AE7E2000, v23, OS_LOG_TYPE_ERROR, "SecCertificateCreateWithData failed", buf, 2u);
          }

          v11 = v49;
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
          v12 = v48;
          v11 = v49;
LABEL_32:
          v28 = v50;
          (*(v50 + 2))(v50, 0);

          goto LABEL_48;
        }

        [v13 addObject:v21];
        CFRelease(v21);
        ++v20;
      }

      while (v17 != v20);
      v17 = [v14 countByEnumeratingWithState:&v57 objects:v64 count:16];
      v12 = v48;
      v11 = v49;
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
    v28 = v50;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v38, OS_LOG_TYPE_ERROR, "No valid certificates to verify signed configuration", buf, 2u);
    }

    goto LABEL_35;
  }

  ApplePinned = SecPolicyCreateApplePinned();
  v28 = v50;
  if (!ApplePinned)
  {
    v38 = nplog_obj();
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 138412290;
    *&buf[4] = v12;
    v39 = "SecPolicyCreateApplePinned failed for %@ host";
    v40 = buf;
    v41 = v38;
    v42 = 12;
LABEL_50:
    _os_log_error_impl(&dword_1AE7E2000, v41, OS_LOG_TYPE_ERROR, v39, v40, v42);
LABEL_35:

    (*(v50 + 2))(v50, 0);
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

  if (!v47)
  {
    v43 = nplog_obj();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      *v61 = 0;
      _os_log_impl(&dword_1AE7E2000, v43, OS_LOG_TYPE_INFO, "Ignoring validation for Signed configuration", v61, 2u);
    }

    (*(v50 + 2))(v50, 1);
    if (*buf)
    {
      CFRelease(*buf);
      *buf = 0;
    }

    goto LABEL_47;
  }

  v32 = v12;
  v33 = NPGetInternalQueue();
  result[0] = MEMORY[0x1E69E9820];
  result[1] = 3221225472;
  result[2] = __99__NSPConfiguration_verifyConfigurationSignature_configuration_host_validateCert_completionHandler___block_invoke;
  result[3] = &unk_1E7A311D8;
  v55 = *buf;
  v56 = a1;
  v52 = v10;
  v53 = v11;
  v34 = v50;
  v54 = v34;
  v35 = SecTrustEvaluateAsyncWithError(v31, v33, result);

  if (!v35)
  {

    v12 = v32;
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

  v12 = v32;
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
  v10 = [v3 encodedData];
  CFPreferencesSetAppValue(@"NSPConfiguration", v10, v7);

  LODWORD(v10) = CFPreferencesAppSynchronize(v7);
  v11 = nplog_obj();
  v12 = v11;
  if (!v10)
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
      v10 = 0;
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

      v16 = [(NSNumber *)self->_proxyTrafficState unsignedLongLongValue];
      v17 = self->_diskVersion;
      v18 = v16 | 0x7000;
      if (v17 >= 11)
      {
        v18 = v16;
      }

      v19 = v18 | 0x8000;
      if (v17 >= 12)
      {
        v19 = v16;
      }

      v20 = v19 | 0x10000;
      if (v17 >= 13)
      {
        v20 = v16;
      }

      v21 = v20 | 0x1C0000;
      if (v17 >= 14)
      {
        v21 = v16;
      }

      v22 = v21 | 0x200000;
      if (v17 >= 15)
      {
        v22 = v16;
      }

      v23 = v22 | 0x400000;
      if (v17 >= 16)
      {
        v23 = v16;
      }

      v24 = v23 | 0x800000;
      if (v17 >= 17)
      {
        v24 = v16;
      }

      v25 = v24 | 0x1000000;
      if (v17 >= 18)
      {
        v25 = v16;
      }

      v26 = v25 | 0x2000000;
      if (v17 >= 19)
      {
        v26 = v16;
      }

      v27 = v26 | 0x4000000;
      if (v17 >= 22)
      {
        v28 = v16;
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
    v10 = self;
    goto LABEL_48;
  }

  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_INFO, "no saved configuration", buf, 2u);
  }

  v10 = 0;
LABEL_49:

  v31 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)tierToString
{
  v2 = [(NSPConfiguration *)self userTier];
  v3 = [v2 intValue];
  if (v3 >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v3];
  }

  else
  {
    v4 = off_1E7A31240[v3];
  }

  return v4;
}

+ (BOOL)fetchDate:(id)a3 isWithinStart:(id)a4 end:(id)a5 etag:(id)a6
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v9)
  {
    v18 = nplog_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v26 = 138412290;
      v27 = v12;
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

  [v9 timeIntervalSinceDate:v10];
  v14 = v13;
  [v11 timeIntervalSinceDate:v9];
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
      v27 = v9;
      v28 = 2112;
      v29 = v12;
      v30 = 2112;
      v31 = v10;
      v32 = 2112;
      v33 = v11;
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

- (BOOL)fetchDateIsWithinStart:(id)a3 end:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NSPConfiguration *)self configurationFetchDate];
  v9 = [(NSPConfiguration *)self etag];
  v10 = [NSPConfiguration fetchDate:v8 isWithinStart:v7 end:v6 etag:v9];

  return v10;
}

@end