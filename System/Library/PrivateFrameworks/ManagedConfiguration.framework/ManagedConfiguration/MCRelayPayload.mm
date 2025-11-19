@interface MCRelayPayload
+ (id)typeStrings;
- (MCRelayPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (NSDictionary)configurationDictionary;
- (id)installationWarnings;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)verboseDescription;
@end

@implementation MCRelayPayload

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.relay.managed";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (MCRelayPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v51.receiver = self;
  v51.super_class = MCRelayPayload;
  v9 = [(MCPayload *)&v51 initWithDictionary:v8 profile:a4 outError:a5];
  v10 = v9;
  if (v9)
  {
    v9->_restrictDomains = 0;
    v50 = 0;
    v11 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"RelayUUID" isRequired:0 outError:&v50];
    v12 = v50;
    relayUUID = v10->_relayUUID;
    v10->_relayUUID = v11;

    if (!v12)
    {
      v49 = 0;
      v14 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"UIToggleEnabled" isRequired:0 outError:&v49];
      v12 = v49;
      uiToggleEnabled = v10->_uiToggleEnabled;
      v10->_uiToggleEnabled = v14;

      if (!v12)
      {
        v48 = 0;
        v16 = [v8 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"Relays" isRequired:1 outError:&v48];
        v12 = v48;
        relays = v10->_relays;
        v10->_relays = v16;

        if (!v12)
        {
          v47 = 0;
          v18 = [v8 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"MatchDomains" isRequired:0 outError:&v47];
          v12 = v47;
          matchDomains = v10->_matchDomains;
          v10->_matchDomains = v18;

          if (!v12)
          {
            v46 = 0;
            v20 = [v8 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"ExcludedDomains" isRequired:0 outError:&v46];
            v12 = v46;
            excludedDomains = v10->_excludedDomains;
            v10->_excludedDomains = v20;

            if (!v12)
            {
              v45 = 0;
              v22 = [v8 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"MatchFQDNs" isRequired:0 outError:&v45];
              v12 = v45;
              matchFQDNs = v10->_matchFQDNs;
              v10->_matchFQDNs = v22;

              if (!v12)
              {
                v44 = 0;
                v24 = [v8 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"ExcludedFQDNs" isRequired:0 outError:&v44];
                v12 = v44;
                excludedFQDNs = v10->_excludedFQDNs;
                v10->_excludedFQDNs = v24;

                if (!v12)
                {
                  v43 = 0;
                  v26 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"AllowDNSFailover" isRequired:0 outError:&v43];
                  v12 = v43;
                  v10->_allowDNSFailover = [v26 BOOLValue];

                  if (!v12)
                  {
                    v42 = 0;
                    v27 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"OnDemandRules" isRequired:0 outError:&v42];
                    v12 = v42;
                    onDemandRules = v10->_onDemandRules;
                    v10->_onDemandRules = v27;
                  }
                }
              }
            }
          }
        }
      }
    }

    if ([v8 count])
    {
      v29 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v30 = v29;
        v31 = [(MCPayload *)v10 friendlyName];
        *buf = 138543618;
        v53 = v31;
        v54 = 2114;
        v55 = v8;
        _os_log_impl(&dword_1A795B000, v30, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
      }
    }

    if (v12)
    {
      v32 = [(MCPayload *)v10 malformedPayloadErrorWithError:v12];
      v33 = v32;
      if (a5)
      {
        v34 = v32;
        *a5 = v33;
      }

      v35 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v36 = v35;
        v37 = objc_opt_class();
        v38 = v37;
        v39 = [v33 MCVerboseDescription];
        *buf = 138543618;
        v53 = v37;
        v54 = 2114;
        v55 = v39;
        _os_log_impl(&dword_1A795B000, v36, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      v10 = 0;
    }
  }

  v40 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)stubDictionary
{
  v14.receiver = self;
  v14.super_class = MCRelayPayload;
  v3 = [(MCPayload *)&v14 stubDictionary];
  v4 = [(MCRelayPayload *)self uiToggleEnabled];
  [v3 setObject:v4 forKeyedSubscript:@"UIToggleEnabled"];

  v5 = [(MCRelayPayload *)self relays];
  [v3 setObject:v5 forKeyedSubscript:@"Relays"];

  v6 = [(MCRelayPayload *)self matchDomains];
  [v3 setObject:v6 forKeyedSubscript:@"MatchDomains"];

  v7 = [(MCRelayPayload *)self excludedDomains];
  [v3 setObject:v7 forKeyedSubscript:@"ExcludedDomains"];

  v8 = [(MCRelayPayload *)self matchFQDNs];
  [v3 setObject:v8 forKeyedSubscript:@"MatchFQDNs"];

  v9 = [(MCRelayPayload *)self excludedFQDNs];
  [v3 setObject:v9 forKeyedSubscript:@"ExcludedFQDNs"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCRelayPayload allowDNSFailover](self, "allowDNSFailover")}];
  [v3 setObject:v10 forKeyedSubscript:@"AllowDNSFailover"];

  v11 = [(MCRelayPayload *)self relayUUID];
  [v3 setObject:v11 forKeyedSubscript:@"RelayUUID"];

  v12 = [(MCRelayPayload *)self onDemandRules];
  [v3 setObject:v12 forKeyedSubscript:@"OnDemandRules"];

  return v3;
}

- (NSDictionary)configurationDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:9];
  v4 = [(MCPayload *)self displayName];
  [v3 setObject:v4 forKeyedSubscript:@"PayloadDisplayName"];

  v5 = [(MCRelayPayload *)self uiToggleEnabled];
  [v3 setObject:v5 forKeyedSubscript:@"UIToggleEnabled"];

  v6 = [(MCRelayPayload *)self relays];
  [v3 setObject:v6 forKeyedSubscript:@"Relays"];

  v7 = [(MCRelayPayload *)self matchDomains];
  [v3 setObject:v7 forKeyedSubscript:@"MatchDomains"];

  v8 = [(MCRelayPayload *)self excludedDomains];
  [v3 setObject:v8 forKeyedSubscript:@"ExcludedDomains"];

  v9 = [(MCRelayPayload *)self matchFQDNs];
  [v3 setObject:v9 forKeyedSubscript:@"MatchFQDNs"];

  v10 = [(MCRelayPayload *)self excludedFQDNs];
  [v3 setObject:v10 forKeyedSubscript:@"ExcludedFQDNs"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCRelayPayload allowDNSFailover](self, "allowDNSFailover")}];
  [v3 setObject:v11 forKeyedSubscript:@"AllowDNSFailover"];

  v12 = [(MCRelayPayload *)self onDemandRules];
  [v3 setObject:v12 forKeyedSubscript:@"OnDemandRules"];

  return v3;
}

- (id)verboseDescription
{
  v23.receiver = self;
  v23.super_class = MCRelayPayload;
  v3 = [(MCPayload *)&v23 verboseDescription];
  v4 = [v3 mutableCopy];

  v5 = [(MCRelayPayload *)self relays];
  [v4 appendFormat:@"Relays: %@\n", v5];

  v6 = [(MCRelayPayload *)self uiToggleEnabled];

  if (v6)
  {
    v7 = [(MCRelayPayload *)self uiToggleEnabled];
    [v4 appendFormat:@"UIToggleEnabled: %@\n", v7];
  }

  v8 = [(MCRelayPayload *)self matchDomains];

  if (v8)
  {
    v9 = [(MCRelayPayload *)self matchDomains];
    [v4 appendFormat:@"Match Domains: %@\n", v9];
  }

  v10 = [(MCRelayPayload *)self excludedDomains];

  if (v10)
  {
    v11 = [(MCRelayPayload *)self excludedDomains];
    [v4 appendFormat:@"Excluded Domains: %@\n", v11];
  }

  v12 = [(MCRelayPayload *)self matchFQDNs];

  if (v12)
  {
    v13 = [(MCRelayPayload *)self matchFQDNs];
    [v4 appendFormat:@"Match FQDNs: %@\n", v13];
  }

  v14 = [(MCRelayPayload *)self excludedFQDNs];

  if (v14)
  {
    v15 = [(MCRelayPayload *)self excludedFQDNs];
    [v4 appendFormat:@"Excluded FQDNs: %@\n", v15];
  }

  v16 = [(MCRelayPayload *)self relayUUID];

  if (v16)
  {
    v17 = [(MCRelayPayload *)self relayUUID];
    [v4 appendFormat:@"RelayUUID: %@\n", v17];
  }

  v18 = [(MCRelayPayload *)self onDemandRules];

  if (v18)
  {
    v19 = [(MCRelayPayload *)self onDemandRules];
    [v4 appendFormat:@"On Demand Rules: %@\n", v19];
  }

  v20 = [(MCRelayPayload *)self allowDNSFailover];
  v21 = @"Not Allowed";
  if (v20)
  {
    v21 = @"Allowed";
  }

  [v4 appendFormat:@"DNS Failover: %@\n", v21];

  return v4;
}

- (id)payloadDescriptionKeyValueSections
{
  v44 = *MEMORY[0x1E69E9840];
  v37 = objc_opt_new();
  v38 = [MEMORY[0x1E695DF70] array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v3 = [(MCRelayPayload *)self relays];
  v4 = [v3 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = v4;
  v6 = *v40;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v40 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v39 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 objectForKeyedSubscript:@"HTTP3RelayURL"];
        v10 = [v8 objectForKeyedSubscript:@"HTTP2RelayURL"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v9;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            continue;
          }

          v11 = v10;
        }

        v12 = [MCKeyValue alloc];
        v13 = MCLocalizedString(@"RELAY_URL");
        v14 = [(MCKeyValue *)v12 initWithLocalizedString:v11 localizedKey:v13];
        [v38 addObject:v14];

        goto LABEL_16;
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_16:

  v15 = [(MCRelayPayload *)self relayUUID];

  if (v15)
  {
    v16 = [MCKeyValue alloc];
    v17 = [(MCRelayPayload *)self relayUUID];
    v18 = MCLocalizedString(@"RELAY_RELAYUUID");
    v19 = [(MCKeyValue *)v16 initWithLocalizedString:v17 localizedKey:v18];

    [v38 addObject:v19];
  }

  v20 = [MCKeyValue alloc];
  v21 = MCLocalizedStringForBool([(MCRelayPayload *)self allowDNSFailover]);
  v22 = MCLocalizedString(@"ALLOW_DNS_FAILOVER");
  v23 = [(MCKeyValue *)v20 initWithLocalizedString:v21 localizedKey:v22];
  [v38 addObject:v23];

  v24 = [MCKeyValueSection sectionWithKeyValues:v38];
  [v37 addObject:v24];

  v25 = [(MCRelayPayload *)self matchDomains];
  v26 = [v25 count];

  if (v26)
  {
    v27 = [(MCRelayPayload *)self matchDomains];
    v28 = MCLocalizedString(@"RELAY_MATCH_DOMAINS");
    v29 = [MCKeyValueSection sectionWithLocalizedArray:v27 title:v28 footer:0];

    [v37 addObject:v29];
  }

  v30 = [(MCRelayPayload *)self excludedDomains];
  v31 = [v30 count];

  if (v31)
  {
    v32 = [(MCRelayPayload *)self excludedDomains];
    v33 = MCLocalizedString(@"RELAY_EXCLUDED_DOMAINS");
    v34 = [MCKeyValueSection sectionWithLocalizedArray:v32 title:v33 footer:0];

    [v37 addObject:v34];
  }

  v35 = *MEMORY[0x1E69E9840];

  return v37;
}

- (id)installationWarnings
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MCLocalizedString(@"INSTALL_WARNING_RELAY_TITLE");
  v3 = MCLocalizedStringByDevice(@"INSTALL_WARNING_RELAY");
  v4 = [MCProfileWarning warningWithLocalizedTitle:v2 localizedBody:v3 isLongForm:1];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end