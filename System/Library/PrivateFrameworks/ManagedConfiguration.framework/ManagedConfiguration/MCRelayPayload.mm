@interface MCRelayPayload
+ (id)typeStrings;
- (MCRelayPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
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

- (MCRelayPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v56 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v51.receiver = self;
  v51.super_class = MCRelayPayload;
  v9 = [(MCPayload *)&v51 initWithDictionary:dictionaryCopy profile:profile outError:error];
  v10 = v9;
  if (v9)
  {
    v9->_restrictDomains = 0;
    v50 = 0;
    v11 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"RelayUUID" isRequired:0 outError:&v50];
    v12 = v50;
    relayUUID = v10->_relayUUID;
    v10->_relayUUID = v11;

    if (!v12)
    {
      v49 = 0;
      v14 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"UIToggleEnabled" isRequired:0 outError:&v49];
      v12 = v49;
      uiToggleEnabled = v10->_uiToggleEnabled;
      v10->_uiToggleEnabled = v14;

      if (!v12)
      {
        v48 = 0;
        v16 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"Relays" isRequired:1 outError:&v48];
        v12 = v48;
        relays = v10->_relays;
        v10->_relays = v16;

        if (!v12)
        {
          v47 = 0;
          v18 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"MatchDomains" isRequired:0 outError:&v47];
          v12 = v47;
          matchDomains = v10->_matchDomains;
          v10->_matchDomains = v18;

          if (!v12)
          {
            v46 = 0;
            v20 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"ExcludedDomains" isRequired:0 outError:&v46];
            v12 = v46;
            excludedDomains = v10->_excludedDomains;
            v10->_excludedDomains = v20;

            if (!v12)
            {
              v45 = 0;
              v22 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"MatchFQDNs" isRequired:0 outError:&v45];
              v12 = v45;
              matchFQDNs = v10->_matchFQDNs;
              v10->_matchFQDNs = v22;

              if (!v12)
              {
                v44 = 0;
                v24 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"ExcludedFQDNs" isRequired:0 outError:&v44];
                v12 = v44;
                excludedFQDNs = v10->_excludedFQDNs;
                v10->_excludedFQDNs = v24;

                if (!v12)
                {
                  v43 = 0;
                  v26 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"AllowDNSFailover" isRequired:0 outError:&v43];
                  v12 = v43;
                  v10->_allowDNSFailover = [v26 BOOLValue];

                  if (!v12)
                  {
                    v42 = 0;
                    v27 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"OnDemandRules" isRequired:0 outError:&v42];
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

    if ([dictionaryCopy count])
    {
      v29 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v30 = v29;
        friendlyName = [(MCPayload *)v10 friendlyName];
        *buf = 138543618;
        v53 = friendlyName;
        v54 = 2114;
        v55 = dictionaryCopy;
        _os_log_impl(&dword_1A795B000, v30, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
      }
    }

    if (v12)
    {
      v32 = [(MCPayload *)v10 malformedPayloadErrorWithError:v12];
      v33 = v32;
      if (error)
      {
        v34 = v32;
        *error = v33;
      }

      v35 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v36 = v35;
        v37 = objc_opt_class();
        v38 = v37;
        mCVerboseDescription = [v33 MCVerboseDescription];
        *buf = 138543618;
        v53 = v37;
        v54 = 2114;
        v55 = mCVerboseDescription;
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
  stubDictionary = [(MCPayload *)&v14 stubDictionary];
  uiToggleEnabled = [(MCRelayPayload *)self uiToggleEnabled];
  [stubDictionary setObject:uiToggleEnabled forKeyedSubscript:@"UIToggleEnabled"];

  relays = [(MCRelayPayload *)self relays];
  [stubDictionary setObject:relays forKeyedSubscript:@"Relays"];

  matchDomains = [(MCRelayPayload *)self matchDomains];
  [stubDictionary setObject:matchDomains forKeyedSubscript:@"MatchDomains"];

  excludedDomains = [(MCRelayPayload *)self excludedDomains];
  [stubDictionary setObject:excludedDomains forKeyedSubscript:@"ExcludedDomains"];

  matchFQDNs = [(MCRelayPayload *)self matchFQDNs];
  [stubDictionary setObject:matchFQDNs forKeyedSubscript:@"MatchFQDNs"];

  excludedFQDNs = [(MCRelayPayload *)self excludedFQDNs];
  [stubDictionary setObject:excludedFQDNs forKeyedSubscript:@"ExcludedFQDNs"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCRelayPayload allowDNSFailover](self, "allowDNSFailover")}];
  [stubDictionary setObject:v10 forKeyedSubscript:@"AllowDNSFailover"];

  relayUUID = [(MCRelayPayload *)self relayUUID];
  [stubDictionary setObject:relayUUID forKeyedSubscript:@"RelayUUID"];

  onDemandRules = [(MCRelayPayload *)self onDemandRules];
  [stubDictionary setObject:onDemandRules forKeyedSubscript:@"OnDemandRules"];

  return stubDictionary;
}

- (NSDictionary)configurationDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:9];
  displayName = [(MCPayload *)self displayName];
  [v3 setObject:displayName forKeyedSubscript:@"PayloadDisplayName"];

  uiToggleEnabled = [(MCRelayPayload *)self uiToggleEnabled];
  [v3 setObject:uiToggleEnabled forKeyedSubscript:@"UIToggleEnabled"];

  relays = [(MCRelayPayload *)self relays];
  [v3 setObject:relays forKeyedSubscript:@"Relays"];

  matchDomains = [(MCRelayPayload *)self matchDomains];
  [v3 setObject:matchDomains forKeyedSubscript:@"MatchDomains"];

  excludedDomains = [(MCRelayPayload *)self excludedDomains];
  [v3 setObject:excludedDomains forKeyedSubscript:@"ExcludedDomains"];

  matchFQDNs = [(MCRelayPayload *)self matchFQDNs];
  [v3 setObject:matchFQDNs forKeyedSubscript:@"MatchFQDNs"];

  excludedFQDNs = [(MCRelayPayload *)self excludedFQDNs];
  [v3 setObject:excludedFQDNs forKeyedSubscript:@"ExcludedFQDNs"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCRelayPayload allowDNSFailover](self, "allowDNSFailover")}];
  [v3 setObject:v11 forKeyedSubscript:@"AllowDNSFailover"];

  onDemandRules = [(MCRelayPayload *)self onDemandRules];
  [v3 setObject:onDemandRules forKeyedSubscript:@"OnDemandRules"];

  return v3;
}

- (id)verboseDescription
{
  v23.receiver = self;
  v23.super_class = MCRelayPayload;
  verboseDescription = [(MCPayload *)&v23 verboseDescription];
  v4 = [verboseDescription mutableCopy];

  relays = [(MCRelayPayload *)self relays];
  [v4 appendFormat:@"Relays: %@\n", relays];

  uiToggleEnabled = [(MCRelayPayload *)self uiToggleEnabled];

  if (uiToggleEnabled)
  {
    uiToggleEnabled2 = [(MCRelayPayload *)self uiToggleEnabled];
    [v4 appendFormat:@"UIToggleEnabled: %@\n", uiToggleEnabled2];
  }

  matchDomains = [(MCRelayPayload *)self matchDomains];

  if (matchDomains)
  {
    matchDomains2 = [(MCRelayPayload *)self matchDomains];
    [v4 appendFormat:@"Match Domains: %@\n", matchDomains2];
  }

  excludedDomains = [(MCRelayPayload *)self excludedDomains];

  if (excludedDomains)
  {
    excludedDomains2 = [(MCRelayPayload *)self excludedDomains];
    [v4 appendFormat:@"Excluded Domains: %@\n", excludedDomains2];
  }

  matchFQDNs = [(MCRelayPayload *)self matchFQDNs];

  if (matchFQDNs)
  {
    matchFQDNs2 = [(MCRelayPayload *)self matchFQDNs];
    [v4 appendFormat:@"Match FQDNs: %@\n", matchFQDNs2];
  }

  excludedFQDNs = [(MCRelayPayload *)self excludedFQDNs];

  if (excludedFQDNs)
  {
    excludedFQDNs2 = [(MCRelayPayload *)self excludedFQDNs];
    [v4 appendFormat:@"Excluded FQDNs: %@\n", excludedFQDNs2];
  }

  relayUUID = [(MCRelayPayload *)self relayUUID];

  if (relayUUID)
  {
    relayUUID2 = [(MCRelayPayload *)self relayUUID];
    [v4 appendFormat:@"RelayUUID: %@\n", relayUUID2];
  }

  onDemandRules = [(MCRelayPayload *)self onDemandRules];

  if (onDemandRules)
  {
    onDemandRules2 = [(MCRelayPayload *)self onDemandRules];
    [v4 appendFormat:@"On Demand Rules: %@\n", onDemandRules2];
  }

  allowDNSFailover = [(MCRelayPayload *)self allowDNSFailover];
  v21 = @"Not Allowed";
  if (allowDNSFailover)
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
  array = [MEMORY[0x1E695DF70] array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  relays = [(MCRelayPayload *)self relays];
  v4 = [relays countByEnumeratingWithState:&v39 objects:v43 count:16];
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
        objc_enumerationMutation(relays);
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
        [array addObject:v14];

        goto LABEL_16;
      }
    }

    v5 = [relays countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_16:

  relayUUID = [(MCRelayPayload *)self relayUUID];

  if (relayUUID)
  {
    v16 = [MCKeyValue alloc];
    relayUUID2 = [(MCRelayPayload *)self relayUUID];
    v18 = MCLocalizedString(@"RELAY_RELAYUUID");
    v19 = [(MCKeyValue *)v16 initWithLocalizedString:relayUUID2 localizedKey:v18];

    [array addObject:v19];
  }

  v20 = [MCKeyValue alloc];
  v21 = MCLocalizedStringForBool([(MCRelayPayload *)self allowDNSFailover]);
  v22 = MCLocalizedString(@"ALLOW_DNS_FAILOVER");
  v23 = [(MCKeyValue *)v20 initWithLocalizedString:v21 localizedKey:v22];
  [array addObject:v23];

  v24 = [MCKeyValueSection sectionWithKeyValues:array];
  [v37 addObject:v24];

  matchDomains = [(MCRelayPayload *)self matchDomains];
  v26 = [matchDomains count];

  if (v26)
  {
    matchDomains2 = [(MCRelayPayload *)self matchDomains];
    v28 = MCLocalizedString(@"RELAY_MATCH_DOMAINS");
    v29 = [MCKeyValueSection sectionWithLocalizedArray:matchDomains2 title:v28 footer:0];

    [v37 addObject:v29];
  }

  excludedDomains = [(MCRelayPayload *)self excludedDomains];
  v31 = [excludedDomains count];

  if (v31)
  {
    excludedDomains2 = [(MCRelayPayload *)self excludedDomains];
    v33 = MCLocalizedString(@"RELAY_EXCLUDED_DOMAINS");
    v34 = [MCKeyValueSection sectionWithLocalizedArray:excludedDomains2 title:v33 footer:0];

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