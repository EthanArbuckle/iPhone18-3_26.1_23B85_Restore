@interface MCNetworkUsageRulesPayload
+ (id)typeStrings;
- (MCNetworkUsageRulesPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)installationWarnings;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)verboseDescription;
@end

@implementation MCNetworkUsageRulesPayload

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.networkusagerules";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (MCNetworkUsageRulesPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v76 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v69.receiver = self;
  v69.super_class = MCNetworkUsageRulesPayload;
  v9 = [(MCPayload *)&v69 initWithDictionary:dictionaryCopy profile:profile outError:error];
  if (!v9)
  {
    goto LABEL_47;
  }

  v68 = 0;
  v10 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"SIMRules" isRequired:0 outError:&v68];
  v11 = v68;
  SIMRules = v9->_SIMRules;
  v9->_SIMRules = v10;

  if (v11)
  {
    goto LABEL_38;
  }

  v13 = v9->_SIMRules;
  if (!v13)
  {
    goto LABEL_30;
  }

  if ([(NSArray *)v13 count])
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v21 = v9->_SIMRules;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v64 objects:v75 count:16];
    if (v22)
    {
      v23 = *v65;
      v58 = v21;
      v55 = *v65;
      while (2)
      {
        v24 = 0;
        v56 = v22;
        do
        {
          if (*v65 != v23)
          {
            v25 = v24;
            objc_enumerationMutation(v21);
            v24 = v25;
          }

          v57 = v24;
          v26 = *(*(&v64 + 1) + 8 * v24);
          v27 = [v26 objectForKeyedSubscript:@"ICCIDs"];
          if (!v27)
          {
            goto LABEL_34;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![v27 count])
          {
            goto LABEL_34;
          }

          v28 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v27, "count")}];
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v27 = v27;
          v29 = [v27 countByEnumeratingWithState:&v60 objects:v74 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v61;
            v54 = v26;
            while (2)
            {
              for (i = 0; i != v30; ++i)
              {
                if (*v61 != v31)
                {
                  objc_enumerationMutation(v27);
                }

                v33 = *(*(&v60 + 1) + 8 * i);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || ![v33 length])
                {
                  goto LABEL_32;
                }

                uppercaseString = [v33 uppercaseString];
                if ([v28 containsObject:uppercaseString])
                {

LABEL_32:
                  v35 = v27;
                  goto LABEL_33;
                }

                [v28 addObject:uppercaseString];
              }

              v30 = [v27 countByEnumeratingWithState:&v60 objects:v74 count:16];
              v26 = v54;
              if (v30)
              {
                continue;
              }

              break;
            }
          }

          v35 = [v26 objectForKeyedSubscript:@"WiFiAssistPolicy"];
          if (!v35 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v35 intValue] < 2)
          {
LABEL_33:

            v21 = v58;
LABEL_34:

LABEL_35:
            goto LABEL_36;
          }

          intValue = [v35 intValue];

          v21 = v58;
          if (intValue > 3)
          {
            goto LABEL_35;
          }

          v24 = v57 + 1;
          v23 = v55;
        }

        while (v57 + 1 != v56);
        v22 = [(NSArray *)v58 countByEnumeratingWithState:&v64 objects:v75 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

LABEL_30:
    v37 = v9->_SIMRules == 0;
    v59 = 0;
    v38 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"ApplicationRules" isRequired:v37 outError:&v59];
    v11 = v59;
    applicationRules = v9->_applicationRules;
    v9->_applicationRules = v38;
    goto LABEL_37;
  }

LABEL_36:
  v40 = MEMORY[0x1E696ABC0];
  applicationRules = MCErrorArray(@"ERROR_PAYLOAD_FIELD_BAD_VALUE_P_FIELD", v14, v15, v16, v17, v18, v19, v20, @"SIMRules");
  v11 = [v40 MCErrorWithDomain:@"MCPayloadErrorDomain" code:2004 descriptionArray:applicationRules underlyingError:0 errorType:@"MCFatalError"];
LABEL_37:

  if (v11)
  {
LABEL_38:
    v41 = [(MCPayload *)v9 malformedPayloadErrorWithError:v11];
    v42 = v41;
    if (error)
    {
      v43 = v41;
      *error = v42;
    }

    v44 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v45 = v44;
      v46 = objc_opt_class();
      v47 = v46;
      mCVerboseDescription = [v42 MCVerboseDescription];
      *buf = 138543618;
      v71 = v46;
      v72 = 2114;
      v73 = mCVerboseDescription;
      _os_log_impl(&dword_1A795B000, v45, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v9 = 0;
  }

  if ([dictionaryCopy count])
  {
    v49 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v50 = v49;
      friendlyName = [(MCPayload *)v9 friendlyName];
      *buf = 138543618;
      v71 = friendlyName;
      v72 = 2114;
      v73 = dictionaryCopy;
      _os_log_impl(&dword_1A795B000, v50, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_47:
  v52 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)stubDictionary
{
  v9.receiver = self;
  v9.super_class = MCNetworkUsageRulesPayload;
  stubDictionary = [(MCPayload *)&v9 stubDictionary];
  applicationRules = [(MCNetworkUsageRulesPayload *)self applicationRules];

  if (applicationRules)
  {
    applicationRules2 = [(MCNetworkUsageRulesPayload *)self applicationRules];
    [stubDictionary setObject:applicationRules2 forKeyedSubscript:@"ApplicationRules"];
  }

  sIMRules = [(MCNetworkUsageRulesPayload *)self SIMRules];

  if (sIMRules)
  {
    sIMRules2 = [(MCNetworkUsageRulesPayload *)self SIMRules];
    [stubDictionary setObject:sIMRules2 forKeyedSubscript:@"SIMRules"];
  }

  return stubDictionary;
}

- (id)verboseDescription
{
  v10.receiver = self;
  v10.super_class = MCNetworkUsageRulesPayload;
  verboseDescription = [(MCPayload *)&v10 verboseDescription];
  v4 = [verboseDescription mutableCopy];

  applicationRules = [(MCNetworkUsageRulesPayload *)self applicationRules];

  if (applicationRules)
  {
    applicationRules2 = [(MCNetworkUsageRulesPayload *)self applicationRules];
    [v4 appendFormat:@"Application Rules : %@\n", applicationRules2];
  }

  sIMRules = [(MCNetworkUsageRulesPayload *)self SIMRules];

  if (sIMRules)
  {
    sIMRules2 = [(MCNetworkUsageRulesPayload *)self SIMRules];
    [v4 appendFormat:@"SIM Rules         : %@\n", sIMRules2];
  }

  return v4;
}

- (id)payloadDescriptionKeyValueSections
{
  v97 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  applicationRules = [(MCNetworkUsageRulesPayload *)self applicationRules];
  v6 = [applicationRules count];

  v70 = v3;
  if (v6)
  {
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    selfCopy = self;
    obj = [(MCNetworkUsageRulesPayload *)self applicationRules];
    v68 = [obj countByEnumeratingWithState:&v89 objects:v96 count:16];
    if (v68)
    {
      v66 = *v90;
      do
      {
        v7 = 0;
        do
        {
          if (*v90 != v66)
          {
            objc_enumerationMutation(obj);
          }

          v71 = v7;
          v8 = *(*(&v89 + 1) + 8 * v7);
          v73 = [v8 objectForKeyedSubscript:@"AppIdentifierMatches"];
          v75 = v8;
          if ([v73 count])
          {
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v9 = v73;
            v10 = [v9 countByEnumeratingWithState:&v85 objects:v95 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = *v86;
              do
              {
                for (i = 0; i != v11; ++i)
                {
                  if (*v86 != v12)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v14 = *(*(&v85 + 1) + 8 * i);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 length])
                  {
                    v15 = [MCKeyValue alloc];
                    v16 = MCLocalizedString(@"NETWORK_USAGE_APP_RULE");
                    v17 = [(MCKeyValue *)v15 initWithLocalizedString:v14 localizedKey:v16];

                    [v4 addObject:v17];
                  }
                }

                v11 = [v9 countByEnumeratingWithState:&v85 objects:v95 count:16];
              }

              while (v11);
            }

            v3 = v70;
            v8 = v75;
          }

          v18 = [v8 objectForKeyedSubscript:@"AllowCellularData"];
          if (v18)
          {
            v19 = v18;
            v20 = [v8 objectForKeyedSubscript:@"AllowCellularData"];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            v8 = v75;
            if (isKindOfClass)
            {
              v22 = [MCKeyValue alloc];
              v23 = [v75 objectForKeyedSubscript:@"AllowCellularData"];
              v24 = MCLocalizedStringForBool([v23 BOOLValue]);
              v25 = MCLocalizedString(@"NETWORK_USAGE_ALLOW_CELLULAR");
              v26 = [(MCKeyValue *)v22 initWithLocalizedString:v24 localizedKey:v25];

              v8 = v75;
              [v4 addObject:v26];
            }
          }

          v27 = [v8 objectForKeyedSubscript:@"AllowRoamingCellularData"];
          if (v27)
          {
            v28 = v27;
            v29 = [v8 objectForKeyedSubscript:@"AllowRoamingCellularData"];
            objc_opt_class();
            v30 = objc_opt_isKindOfClass();

            if (v30)
            {
              v31 = [MCKeyValue alloc];
              v32 = [v75 objectForKeyedSubscript:@"AllowRoamingCellularData"];
              v33 = MCLocalizedStringForBool([v32 BOOLValue]);
              v34 = MCLocalizedString(@"NETWORK_USAGE_ALLOW_ROAMING");
              v35 = [(MCKeyValue *)v31 initWithLocalizedString:v33 localizedKey:v34];

              [v4 addObject:v35];
            }
          }

          if ([v4 count])
          {
            v36 = [MCKeyValueSection sectionWithKeyValues:v4];
            [v3 addObject:v36];

            v37 = objc_opt_new();
            v4 = v37;
          }

          v7 = v71 + 1;
        }

        while (v71 + 1 != v68);
        v68 = [obj countByEnumeratingWithState:&v89 objects:v96 count:16];
      }

      while (v68);
    }

    self = selfCopy;
  }

  sIMRules = [(MCNetworkUsageRulesPayload *)self SIMRules];
  v39 = [sIMRules count];

  if (v39)
  {
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    sIMRules2 = [(MCNetworkUsageRulesPayload *)self SIMRules];
    v72 = [sIMRules2 countByEnumeratingWithState:&v81 objects:v94 count:16];
    if (!v72)
    {
      goto LABEL_55;
    }

    v69 = *v82;
    while (1)
    {
      v40 = 0;
      do
      {
        if (*v82 != v69)
        {
          objc_enumerationMutation(sIMRules2);
        }

        v74 = *(*(&v81 + 1) + 8 * v40);
        v76 = v40;
        v41 = [v74 objectForKeyedSubscript:@"ICCIDs"];
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v42 = [v41 countByEnumeratingWithState:&v77 objects:v93 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v78;
          do
          {
            for (j = 0; j != v43; ++j)
            {
              if (*v78 != v44)
              {
                objc_enumerationMutation(v41);
              }

              v46 = *(*(&v77 + 1) + 8 * j);
              v47 = [MCKeyValue alloc];
              v48 = MCLocalizedString(@"NETWORK_USAGE_ICCID");
              v49 = [(MCKeyValue *)v47 initWithLocalizedString:v46 localizedKey:v48];

              [v4 addObject:v49];
            }

            v43 = [v41 countByEnumeratingWithState:&v77 objects:v93 count:16];
          }

          while (v43);
        }

        v50 = [v74 objectForKeyedSubscript:@"WiFiAssistPolicy"];
        v51 = v50;
        if (v50)
        {
          intValue = [v50 intValue];
          if (intValue == 3)
          {
            v53 = @"NETWORK_USAGE_UNLIMITED_CELLULAR_DATA";
LABEL_48:
            v54 = MCLocalizedString(v53);
          }

          else
          {
            if (intValue == 2)
            {
              v53 = @"NETWORK_USAGE_DEFAULT_CELLULAR_DATA";
              goto LABEL_48;
            }

            v54 = MCFormattedStringForNumber(v51);
          }

          v55 = v54;
          v56 = [MCKeyValue alloc];
          mCAppendGreenteaSuffix = [@"NETWORK_USAGE_WIFI_ASSIST_POLICY" MCAppendGreenteaSuffix];
          v58 = MCLocalizedString(mCAppendGreenteaSuffix);
          v59 = [(MCKeyValue *)v56 initWithLocalizedString:v55 localizedKey:v58];

          [v4 addObject:v59];
        }

        if ([v4 count])
        {
          v60 = [MCKeyValueSection sectionWithKeyValues:v4];
          [v70 addObject:v60];

          v61 = objc_opt_new();
          v4 = v61;
        }

        v40 = v76 + 1;
      }

      while (v76 + 1 != v72);
      v72 = [sIMRules2 countByEnumeratingWithState:&v81 objects:v94 count:16];
      if (!v72)
      {
LABEL_55:

        v3 = v70;
        break;
      }
    }
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  v62 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)installationWarnings
{
  v2 = MCLocalizedString(@"INSTALL_WARNING_NETWORK_USAGE_TITLE");
  v3 = MCLocalizedStringByDevice(@"INSTALL_WARNING_NETWORK_USAGE");
  v4 = [MCProfileWarning warningWithLocalizedTitle:v2 localizedBody:v3 isLongForm:1];

  v5 = [MEMORY[0x1E695DEC8] arrayWithObject:v4];

  return v5;
}

@end