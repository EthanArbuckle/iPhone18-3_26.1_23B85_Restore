@interface MCDNSSettingsPayload
+ (id)typeStrings;
- (MCDNSSettingsPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (NSDictionary)configurationDictionary;
- (id)installationWarnings;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)verboseDescription;
@end

@implementation MCDNSSettingsPayload

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.dnsSettings.managed";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (MCDNSSettingsPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v36.receiver = self;
  v36.super_class = MCDNSSettingsPayload;
  v9 = [(MCPayload *)&v36 initWithDictionary:v8 profile:a4 outError:a5];
  if (!v9)
  {
    goto LABEL_21;
  }

  v35 = 0;
  v10 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"DNSSettings" isRequired:1 outError:&v35];
  v11 = v35;
  dnsSettings = v9->_dnsSettings;
  v9->_dnsSettings = v10;

  if (!v11)
  {
    v34 = 0;
    v13 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"OnDemandRules" isRequired:0 outError:&v34];
    v11 = v34;
    onDemandRules = v9->_onDemandRules;
    v9->_onDemandRules = v13;

    if (!v11)
    {
      v33 = 0;
      v15 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"ProhibitDisablement" isRequired:0 outError:&v33];
      v11 = v33;
      prohibitDisablement = v9->_prohibitDisablement;
      v9->_prohibitDisablement = v15;

      if (!v11)
      {
        v17 = [(MCPayload *)v9 profile];
        if (([v17 isStub] & 1) != 0 || !-[NSNumber BOOLValue](v9->_prohibitDisablement, "BOOLValue"))
        {
        }

        else
        {
          v18 = [MEMORY[0x1E69AD420] sharedConfiguration];
          v19 = [v18 isSupervised];

          if ((v19 & 1) == 0)
          {
            v11 = [MCPayload badFieldValueErrorWithField:@"ProhibitDisablement"];
            goto LABEL_11;
          }
        }

        v11 = 0;
      }
    }
  }

LABEL_11:
  if ([v8 count])
  {
    v20 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v21 = v20;
      v22 = [(MCPayload *)v9 friendlyName];
      *buf = 138543618;
      v38 = v22;
      v39 = 2114;
      v40 = v8;
      _os_log_impl(&dword_1A795B000, v21, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

  if (v11)
  {
    v23 = [(MCPayload *)v9 malformedPayloadErrorWithError:v11];
    v24 = v23;
    if (a5)
    {
      v25 = v23;
      *a5 = v24;
    }

    v26 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v27 = v26;
      v28 = objc_opt_class();
      v29 = v28;
      v30 = [v24 MCVerboseDescription];
      *buf = 138543618;
      v38 = v28;
      v39 = 2114;
      v40 = v30;
      _os_log_impl(&dword_1A795B000, v27, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v9 = 0;
  }

LABEL_21:
  v31 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)stubDictionary
{
  v8.receiver = self;
  v8.super_class = MCDNSSettingsPayload;
  v3 = [(MCPayload *)&v8 stubDictionary];
  v4 = [(MCDNSSettingsPayload *)self dnsSettings];
  [v3 setObject:v4 forKeyedSubscript:@"DNSSettings"];

  v5 = [(MCDNSSettingsPayload *)self onDemandRules];
  [v3 setObject:v5 forKeyedSubscript:@"OnDemandRules"];

  v6 = [(MCDNSSettingsPayload *)self prohibitDisablement];
  [v3 setObject:v6 forKeyedSubscript:@"ProhibitDisablement"];

  return v3;
}

- (NSDictionary)configurationDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:5];
  v4 = [(MCPayload *)self displayName];
  [v3 setObject:v4 forKeyedSubscript:@"PayloadDisplayName"];

  v5 = [(MCDNSSettingsPayload *)self dnsSettings];
  [v3 setObject:v5 forKeyedSubscript:@"DNSSettings"];

  v6 = [(MCDNSSettingsPayload *)self onDemandRules];
  [v3 setObject:v6 forKeyedSubscript:@"OnDemandRules"];

  v7 = [(MCDNSSettingsPayload *)self prohibitDisablement];
  [v3 setObject:v7 forKeyedSubscript:@"ProhibitDisablement"];

  return v3;
}

- (id)verboseDescription
{
  v11.receiver = self;
  v11.super_class = MCDNSSettingsPayload;
  v3 = [(MCPayload *)&v11 verboseDescription];
  v4 = [v3 mutableCopy];

  v5 = [(MCDNSSettingsPayload *)self dnsSettings];
  [v4 appendFormat:@"DNS Settings: %@\n", v5];

  v6 = [(MCDNSSettingsPayload *)self onDemandRules];

  if (v6)
  {
    v7 = [(MCDNSSettingsPayload *)self onDemandRules];
    [v4 appendFormat:@"On Demand Rules: %@\n", v7];
  }

  v8 = [(MCDNSSettingsPayload *)self prohibitDisablement];

  if (v8)
  {
    v9 = [(MCDNSSettingsPayload *)self prohibitDisablement];
    [v4 appendFormat:@"Prohibit Disablement: %@\n", v9];
  }

  return v4;
}

- (id)payloadDescriptionKeyValueSections
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(MCDNSSettingsPayload *)self dnsSettings];
  v5 = [v4 objectForKeyedSubscript:@"ServerName"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MCKeyValue alloc];
    v7 = MCLocalizedString(@"DNS_SETTINGS_SERVER_NAME");
    v8 = [(MCKeyValue *)v6 initWithLocalizedString:v5 localizedKey:v7];
    [v3 addObject:v8];
  }

  v9 = [(MCDNSSettingsPayload *)self dnsSettings];
  v10 = [v9 objectForKeyedSubscript:@"ServerURL"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [MCKeyValue alloc];
    v12 = MCLocalizedString(@"DNS_SETTINGS_SERVER_URL");
    v13 = [(MCKeyValue *)v11 initWithLocalizedString:v10 localizedKey:v12];
    [v3 addObject:v13];
  }

  v14 = [MCKeyValue alloc];
  v15 = [(MCDNSSettingsPayload *)self dnsSettings];
  v16 = [v15 objectForKeyedSubscript:@"AllowFailover"];
  v17 = MCLocalizedStringForBool(v16 != 0);
  v18 = MCLocalizedString(@"DNS_SETTINGS_ALLOW_FAILOVER");
  v19 = [(MCKeyValue *)v14 initWithLocalizedString:v17 localizedKey:v18];
  [v3 addObject:v19];

  v20 = [MCKeyValueSection sectionWithKeyValues:v3];
  v24[0] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)installationWarnings
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MCLocalizedString(@"INSTALL_WARNING_DNS_SETTINGS_TITLE");
  v3 = MCLocalizedStringByDevice(@"INSTALL_WARNING_DNS_SETTINGS");
  v4 = [MCProfileWarning warningWithLocalizedTitle:v2 localizedBody:v3 isLongForm:1];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end