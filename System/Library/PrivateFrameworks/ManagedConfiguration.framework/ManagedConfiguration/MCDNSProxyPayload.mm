@interface MCDNSProxyPayload
+ (id)typeStrings;
- (MCDNSProxyPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
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

- (MCDNSProxyPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v39.receiver = self;
  v39.super_class = MCDNSProxyPayload;
  v9 = [(MCPayload *)&v39 initWithDictionary:dictionaryCopy profile:profile outError:error];
  if (v9)
  {
    v38 = 0;
    v10 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"AppBundleIdentifier" isRequired:1 outError:&v38];
    v11 = v38;
    appBundleIdentifier = v9->_appBundleIdentifier;
    v9->_appBundleIdentifier = v10;

    if (v9->_appBundleIdentifier)
    {
      v37 = v11;
      v13 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ProviderBundleIdentifier" isRequired:0 outError:&v37];
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
        v17 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"ProviderConfiguration" isRequired:0 outError:&v36];
        v11 = v36;

        providerConfiguration = v9->_providerConfiguration;
        v9->_providerConfiguration = v17;

        if (v9->_providerBundleIdentifier || !v11)
        {
          v35 = v11;
          v19 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"DNSProxyUUID" isRequired:0 outError:&v35];
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

    if ([dictionaryCopy count])
    {
      v22 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v23 = v22;
        friendlyName = [(MCPayload *)v9 friendlyName];
        *buf = 138543618;
        v41 = friendlyName;
        v42 = 2114;
        v43 = dictionaryCopy;
        _os_log_impl(&dword_1A795B000, v23, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
      }
    }

    if (v11)
    {
      v25 = [(MCPayload *)v9 malformedPayloadErrorWithError:v11];
      v26 = v25;
      if (error)
      {
        v27 = v25;
        *error = v26;
      }

      v28 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v29 = v28;
        v30 = objc_opt_class();
        v31 = v30;
        mCVerboseDescription = [v26 MCVerboseDescription];
        *buf = 138543618;
        v41 = v30;
        v42 = 2114;
        v43 = mCVerboseDescription;
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
  stubDictionary = [(MCPayload *)&v8 stubDictionary];
  appBundleIdentifier = [(MCDNSProxyPayload *)self appBundleIdentifier];
  [stubDictionary setObject:appBundleIdentifier forKeyedSubscript:@"AppBundleIdentifier"];

  providerBundleIdentifier = [(MCDNSProxyPayload *)self providerBundleIdentifier];
  [stubDictionary setObject:providerBundleIdentifier forKeyedSubscript:@"ProviderBundleIdentifier"];

  dnsProxyUUID = [(MCDNSProxyPayload *)self dnsProxyUUID];
  [stubDictionary setObject:dnsProxyUUID forKeyedSubscript:@"DNSProxyUUID"];

  return stubDictionary;
}

- (NSDictionary)configurationDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  displayName = [(MCPayload *)self displayName];
  [v3 setObject:displayName forKeyedSubscript:@"PayloadDisplayName"];

  appBundleIdentifier = [(MCDNSProxyPayload *)self appBundleIdentifier];
  [v3 setObject:appBundleIdentifier forKeyedSubscript:@"AppBundleIdentifier"];

  providerBundleIdentifier = [(MCDNSProxyPayload *)self providerBundleIdentifier];
  [v3 setObject:providerBundleIdentifier forKeyedSubscript:@"ProviderBundleIdentifier"];

  providerConfiguration = [(MCDNSProxyPayload *)self providerConfiguration];
  [v3 setObject:providerConfiguration forKeyedSubscript:@"ProviderConfiguration"];

  return v3;
}

- (id)verboseDescription
{
  v13.receiver = self;
  v13.super_class = MCDNSProxyPayload;
  verboseDescription = [(MCPayload *)&v13 verboseDescription];
  v4 = [verboseDescription mutableCopy];

  appBundleIdentifier = [(MCDNSProxyPayload *)self appBundleIdentifier];
  [v4 appendFormat:@"App: %@\n", appBundleIdentifier];

  providerBundleIdentifier = [(MCDNSProxyPayload *)self providerBundleIdentifier];

  if (providerBundleIdentifier)
  {
    providerBundleIdentifier2 = [(MCDNSProxyPayload *)self providerBundleIdentifier];
    [v4 appendFormat:@"App's provider: %@\n", providerBundleIdentifier2];
  }

  providerConfiguration = [(MCDNSProxyPayload *)self providerConfiguration];

  if (providerConfiguration)
  {
    providerConfiguration2 = [(MCDNSProxyPayload *)self providerConfiguration];
    [v4 appendFormat:@"Provider's configuration: %@\n", providerConfiguration2];
  }

  dnsProxyUUID = [(MCDNSProxyPayload *)self dnsProxyUUID];

  if (dnsProxyUUID)
  {
    dnsProxyUUID2 = [(MCDNSProxyPayload *)self dnsProxyUUID];
    [v4 appendFormat:@"DNSProxyUUID            : %@\n", dnsProxyUUID2];
  }

  return v4;
}

- (id)subtitle2Label
{
  subtitle2Description = [(MCDNSProxyPayload *)self subtitle2Description];
  if (subtitle2Description)
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
  appBundleIdentifier = [(MCDNSProxyPayload *)self appBundleIdentifier];
  v6 = MCLocalizedString(@"DNS_PROXY_APP");
  v7 = [(MCKeyValue *)v4 initWithLocalizedString:appBundleIdentifier localizedKey:v6];
  [v3 addObject:v7];

  providerBundleIdentifier = [(MCDNSProxyPayload *)self providerBundleIdentifier];

  if (providerBundleIdentifier)
  {
    v9 = [MCKeyValue alloc];
    providerBundleIdentifier2 = [(MCDNSProxyPayload *)self providerBundleIdentifier];
    v11 = MCLocalizedString(@"DNS_PROXY_PROVIDER_BUNDLE");
    v12 = [(MCKeyValue *)v9 initWithLocalizedString:providerBundleIdentifier2 localizedKey:v11];
    [v3 addObject:v12];
  }

  dnsProxyUUID = [(MCDNSProxyPayload *)self dnsProxyUUID];

  if (dnsProxyUUID)
  {
    v14 = [MCKeyValue alloc];
    dnsProxyUUID2 = [(MCDNSProxyPayload *)self dnsProxyUUID];
    v16 = MCLocalizedString(@"DNS_PROXY_UUID");
    v17 = [(MCKeyValue *)v14 initWithLocalizedString:dnsProxyUUID2 localizedKey:v16];
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