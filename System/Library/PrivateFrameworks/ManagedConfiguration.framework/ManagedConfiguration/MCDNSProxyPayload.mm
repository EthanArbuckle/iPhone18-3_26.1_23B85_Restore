@interface MCDNSProxyPayload
+ (id)typeStrings;
- (MCDNSProxyPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (NSDictionary)configurationDictionary;
- (id)installationWarnings;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)subtitle2Label;
- (id)verboseDescription;
@end

@implementation MCDNSProxyPayload

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.dnsProxy.managed";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (MCDNSProxyPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v39.receiver = self;
  v39.super_class = MCDNSProxyPayload;
  v9 = [(MCPayload *)&v39 initWithDictionary:v8 profile:a4 outError:a5];
  if (v9)
  {
    v38 = 0;
    v10 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"AppBundleIdentifier" isRequired:1 outError:&v38];
    v11 = v38;
    appBundleIdentifier = v9->_appBundleIdentifier;
    v9->_appBundleIdentifier = v10;

    if (v9->_appBundleIdentifier)
    {
      v37 = v11;
      v13 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"ProviderBundleIdentifier" isRequired:0 outError:&v37];
      v14 = v37;

      providerBundleIdentifier = v9->_providerBundleIdentifier;
      v9->_providerBundleIdentifier = v13;

      if (v9->_providerBundleIdentifier)
      {
        v16 = 1;
      }

      else
      {
        v16 = v14 == 0;
      }

      if (v16)
      {
        v36 = v14;
        v17 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"ProviderConfiguration" isRequired:0 outError:&v36];
        v11 = v36;

        providerConfiguration = v9->_providerConfiguration;
        v9->_providerConfiguration = v17;

        if (v9->_providerBundleIdentifier || !v11)
        {
          v35 = v11;
          v19 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"DNSProxyUUID" isRequired:0 outError:&v35];
          v20 = v35;

          dnsProxyUUID = v9->_dnsProxyUUID;
          v9->_dnsProxyUUID = v19;

          v11 = v20;
        }
      }

      else
      {
        v11 = v14;
      }
    }

    if ([v8 count])
    {
      v22 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v23 = v22;
        v24 = [(MCPayload *)v9 friendlyName];
        *buf = 138543618;
        v41 = v24;
        v42 = 2114;
        v43 = v8;
        _os_log_impl(&dword_1A795B000, v23, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
      }
    }

    if (v11)
    {
      v25 = [(MCPayload *)v9 malformedPayloadErrorWithError:v11];
      v26 = v25;
      if (a5)
      {
        v27 = v25;
        *a5 = v26;
      }

      v28 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v29 = v28;
        v30 = objc_opt_class();
        v31 = v30;
        v32 = [v26 MCVerboseDescription];
        *buf = 138543618;
        v41 = v30;
        v42 = 2114;
        v43 = v32;
        _os_log_impl(&dword_1A795B000, v29, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      v9 = 0;
    }
  }

  v33 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)stubDictionary
{
  v8.receiver = self;
  v8.super_class = MCDNSProxyPayload;
  v3 = [(MCPayload *)&v8 stubDictionary];
  v4 = [(MCDNSProxyPayload *)self appBundleIdentifier];
  [v3 setObject:v4 forKeyedSubscript:@"AppBundleIdentifier"];

  v5 = [(MCDNSProxyPayload *)self providerBundleIdentifier];
  [v3 setObject:v5 forKeyedSubscript:@"ProviderBundleIdentifier"];

  v6 = [(MCDNSProxyPayload *)self dnsProxyUUID];
  [v3 setObject:v6 forKeyedSubscript:@"DNSProxyUUID"];

  return v3;
}

- (NSDictionary)configurationDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  v4 = [(MCPayload *)self displayName];
  [v3 setObject:v4 forKeyedSubscript:@"PayloadDisplayName"];

  v5 = [(MCDNSProxyPayload *)self appBundleIdentifier];
  [v3 setObject:v5 forKeyedSubscript:@"AppBundleIdentifier"];

  v6 = [(MCDNSProxyPayload *)self providerBundleIdentifier];
  [v3 setObject:v6 forKeyedSubscript:@"ProviderBundleIdentifier"];

  v7 = [(MCDNSProxyPayload *)self providerConfiguration];
  [v3 setObject:v7 forKeyedSubscript:@"ProviderConfiguration"];

  return v3;
}

- (id)verboseDescription
{
  v13.receiver = self;
  v13.super_class = MCDNSProxyPayload;
  v3 = [(MCPayload *)&v13 verboseDescription];
  v4 = [v3 mutableCopy];

  v5 = [(MCDNSProxyPayload *)self appBundleIdentifier];
  [v4 appendFormat:@"App: %@\n", v5];

  v6 = [(MCDNSProxyPayload *)self providerBundleIdentifier];

  if (v6)
  {
    v7 = [(MCDNSProxyPayload *)self providerBundleIdentifier];
    [v4 appendFormat:@"App's provider: %@\n", v7];
  }

  v8 = [(MCDNSProxyPayload *)self providerConfiguration];

  if (v8)
  {
    v9 = [(MCDNSProxyPayload *)self providerConfiguration];
    [v4 appendFormat:@"Provider's configuration: %@\n", v9];
  }

  v10 = [(MCDNSProxyPayload *)self dnsProxyUUID];

  if (v10)
  {
    v11 = [(MCDNSProxyPayload *)self dnsProxyUUID];
    [v4 appendFormat:@"DNSProxyUUID            : %@\n", v11];
  }

  return v4;
}

- (id)subtitle2Label
{
  v9 = [(MCDNSProxyPayload *)self subtitle2Description];
  if (v9)
  {
    v10 = MCLocalizedFormat(@"DNS_PROXY_PROVIDER_BUNDLE_COLON", v2, v3, v4, v5, v6, v7, v8, v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)payloadDescriptionKeyValueSections
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v4 = [MCKeyValue alloc];
  v5 = [(MCDNSProxyPayload *)self appBundleIdentifier];
  v6 = MCLocalizedString(@"DNS_PROXY_APP");
  v7 = [(MCKeyValue *)v4 initWithLocalizedString:v5 localizedKey:v6];
  [v3 addObject:v7];

  v8 = [(MCDNSProxyPayload *)self providerBundleIdentifier];

  if (v8)
  {
    v9 = [MCKeyValue alloc];
    v10 = [(MCDNSProxyPayload *)self providerBundleIdentifier];
    v11 = MCLocalizedString(@"DNS_PROXY_PROVIDER_BUNDLE");
    v12 = [(MCKeyValue *)v9 initWithLocalizedString:v10 localizedKey:v11];
    [v3 addObject:v12];
  }

  v13 = [(MCDNSProxyPayload *)self dnsProxyUUID];

  if (v13)
  {
    v14 = [MCKeyValue alloc];
    v15 = [(MCDNSProxyPayload *)self dnsProxyUUID];
    v16 = MCLocalizedString(@"DNS_PROXY_UUID");
    v17 = [(MCKeyValue *)v14 initWithLocalizedString:v15 localizedKey:v16];
    [v3 addObject:v17];
  }

  v18 = [MCKeyValueSection sectionWithKeyValues:v3];
  v22[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)installationWarnings
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MCLocalizedString(@"INSTALL_WARNING_DNS_PROXY_TITLE");
  v3 = MCLocalizedStringByDevice(@"INSTALL_WARNING_DNS_PROXY");
  v4 = [MCProfileWarning warningWithLocalizedTitle:v2 localizedBody:v3 isLongForm:1];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end