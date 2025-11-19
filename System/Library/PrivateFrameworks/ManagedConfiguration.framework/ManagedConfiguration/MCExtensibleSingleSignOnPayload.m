@interface MCExtensibleSingleSignOnPayload
+ (id)typeStrings;
- (BOOL)_validateHost:(id)a3 outError:(id *)a4;
- (MCExtensibleSingleSignOnPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (id)_validateURLString:(id)a3 outError:(id *)a4;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)title;
- (id)verboseDescription;
@end

@implementation MCExtensibleSingleSignOnPayload

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.extensiblesso";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (MCExtensibleSingleSignOnPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v137[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v129.receiver = self;
  v129.super_class = MCExtensibleSingleSignOnPayload;
  v9 = [(MCPayload *)&v129 initWithDictionary:v8 profile:a4 outError:a5];
  if (!v9)
  {
    goto LABEL_13;
  }

  v128 = 0;
  v10 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"Type" isRequired:1 outError:&v128];
  v11 = v128;
  esso_type = v9->_esso_type;
  v9->_esso_type = v10;

  if (v11)
  {
    goto LABEL_4;
  }

  v137[0] = @"Credential";
  v137[1] = @"Redirect";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v137 count:2];
  v14 = v9->_esso_type;
  v127 = 0;
  [MCProfile checkString:v14 isOneOfStrings:v13 key:@"Type" errorDomain:@"MCPayloadErrorDomain" errorCode:2004 errorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v127];
  v11 = v127;

  if (v11)
  {
    goto LABEL_4;
  }

  if ([(NSString *)v9->_esso_type isEqualToString:@"Credential"])
  {
    v126 = 0;
    v28 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"Realm" isRequired:0 outError:&v126];
    v11 = v126;
    esso_realm = v9->_esso_realm;
    v9->_esso_realm = v28;

    if (v11)
    {
      goto LABEL_4;
    }
  }

  v125 = 0;
  v30 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"ExtensionIdentifier" isRequired:1 outError:&v125];
  v11 = v125;
  esso_extensionIdentifier = v9->_esso_extensionIdentifier;
  v9->_esso_extensionIdentifier = v30;

  if (v11)
  {
    goto LABEL_4;
  }

  v124 = 0;
  v32 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"TeamIdentifier" isRequired:0 outError:&v124];
  v11 = v124;
  esso_teamIdentifier = v9->_esso_teamIdentifier;
  v9->_esso_teamIdentifier = v32;

  if (v11)
  {
    goto LABEL_4;
  }

  v123 = 0;
  v34 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"ExtensionData" isRequired:0 outError:&v123];
  v11 = v123;
  esso_extensionData = v9->_esso_extensionData;
  v9->_esso_extensionData = v34;

  if (v11)
  {
    goto LABEL_4;
  }

  v122 = 0;
  v104 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"ScreenLockedBehavior" isRequired:0 outError:&v122];
  v11 = v122;
  esso_screenLockedBehavior = v9->_esso_screenLockedBehavior;
  v9->_esso_screenLockedBehavior = v104;

  if (v11)
  {
    goto LABEL_4;
  }

  if (v9->_esso_screenLockedBehavior)
  {
    v136[0] = @"Cancel";
    v136[1] = @"DoNotHandle";
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v136 count:2];
    v38 = v9->_esso_screenLockedBehavior;
    v121 = 0;
    [MCProfile checkString:v38 isOneOfStrings:v37 key:@"ScreenLockedBehavior" errorDomain:@"MCPayloadErrorDomain" errorCode:2004 errorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v121];
    v11 = v121;

    if (v11)
    {
      goto LABEL_4;
    }
  }

  v120 = 0;
  v39 = [v8 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"DeniedBundleIdentifiers" isRequired:0 allowZeroLengthString:0 outError:&v120];
  v11 = v120;
  esso_deniedBundleIdentifiers = v9->_esso_deniedBundleIdentifiers;
  v9->_esso_deniedBundleIdentifiers = v39;

  if (v11)
  {
    goto LABEL_4;
  }

  if ([(NSString *)v9->_esso_type isEqualToString:@"Credential"])
  {
    v119 = 0;
    v41 = [v8 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"Hosts" isRequired:1 allowZeroLengthString:0 outError:&v119];
    v42 = v119;
    if (v42)
    {
LABEL_42:
      v11 = v42;
LABEL_43:

      goto LABEL_4;
    }

    if (![v41 count])
    {
      v55 = MEMORY[0x1E696ABC0];
      v56 = MCErrorArray(@"ERROR_PAYLOAD_FIELD_BAD_VALUE_P_FIELD", v43, v44, v45, v46, v47, v48, v49, @"Hosts");
      v11 = [v55 MCErrorWithDomain:@"MCPayloadErrorDomain" code:2004 descriptionArray:v56 underlyingError:0 errorType:@"MCFatalError"];

      if (v11)
      {
        goto LABEL_43;
      }
    }

    v105 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v41, "count")}];
    v103 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v41, "count")}];
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    obj = v41;
    v102 = [obj countByEnumeratingWithState:&v115 objects:v135 count:16];
    v11 = 0;
    if (v102)
    {
      v101 = *v116;
LABEL_28:
      v50 = 0;
      v51 = v11;
      while (1)
      {
        if (*v116 != v101)
        {
          objc_enumerationMutation(obj);
        }

        v52 = *(*(&v115 + 1) + 8 * v50);
        v114 = v51;
        v53 = [(MCExtensibleSingleSignOnPayload *)v9 _validateHost:v52 outError:&v114];
        v11 = v114;

        if (!v53)
        {
          break;
        }

        v54 = [v52 lowercaseString];
        if ([v105 containsObject:v54])
        {
          v57 = MEMORY[0x1E696ABC0];
          v58 = [(MCExtensibleSingleSignOnPayload *)v9 esso_extensionIdentifier];
          v66 = MCErrorArray(@"EXTENSIBLE_SSO_INTRA_HOST_CONFLICT_P_EXTENSION_ID_P_HOST", v59, v60, v61, v62, v63, v64, v65, v58);
          v67 = [v57 MCErrorWithDomain:@"MCExtensibleSingleSignOnErrorDomain" code:54006 descriptionArray:v66 errorType:@"MCFatalError"];

          v11 = v67;
          break;
        }

        [v105 addObject:v54];
        [(NSArray *)v103 addObject:v52];

        ++v50;
        v51 = v11;
        if (v102 == v50)
        {
          v102 = [obj countByEnumeratingWithState:&v115 objects:v135 count:16];
          if (v102)
          {
            goto LABEL_28;
          }

          break;
        }
      }
    }

    esso_hosts = v9->_esso_hosts;
    v9->_esso_hosts = v103;

    if (v11)
    {
LABEL_4:
      v15 = [(MCPayload *)v9 malformedPayloadErrorWithError:v11];
      v16 = v15;
      if (a5)
      {
        v17 = v15;
        *a5 = v16;
      }

      v18 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v19 = v18;
        v20 = objc_opt_class();
        v21 = v20;
        v22 = [v16 MCVerboseDescription];
        *buf = 138543618;
        v131 = v20;
        v132 = 2114;
        v133 = v22;
        _os_log_impl(&dword_1A795B000, v19, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      v9 = 0;
      goto LABEL_9;
    }
  }

  if (![(NSString *)v9->_esso_type isEqualToString:@"Redirect"])
  {
    v11 = 0;
    goto LABEL_9;
  }

  v113 = 0;
  v41 = [v8 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"URLs" isRequired:1 allowZeroLengthString:0 outError:&v113];
  v42 = v113;
  if (v42)
  {
    goto LABEL_42;
  }

  if (![v41 count])
  {
    v85 = MEMORY[0x1E696ABC0];
    v86 = MCErrorArray(@"ERROR_PAYLOAD_FIELD_BAD_VALUE_P_FIELD", v69, v70, v71, v72, v73, v74, v75, @"URLs");
    v11 = [v85 MCErrorWithDomain:@"MCPayloadErrorDomain" code:2004 descriptionArray:v86 underlyingError:0 errorType:@"MCFatalError"];

    if (v11)
    {
      goto LABEL_43;
    }
  }

  v76 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v41, "count")}];
  v107 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v41, "count")}];
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v106 = v41;
  v77 = [v106 countByEnumeratingWithState:&v109 objects:v134 count:16];
  if (!v77)
  {
    v11 = 0;
    goto LABEL_62;
  }

  v78 = v77;
  v79 = *v110;
  while (2)
  {
    for (i = 0; i != v78; ++i)
    {
      if (*v110 != v79)
      {
        objc_enumerationMutation(v106);
      }

      v81 = *(*(&v109 + 1) + 8 * i);
      v108 = 0;
      v82 = [(MCExtensibleSingleSignOnPayload *)v9 _validateURLString:v81 outError:&v108];
      v83 = v108;
      if (v83)
      {
        v11 = v83;
LABEL_61:

        goto LABEL_62;
      }

      v84 = [v82 normalizedURL];
      if ([v76 containsObject:v84])
      {
        v87 = MEMORY[0x1E696ABC0];
        v88 = [(MCExtensibleSingleSignOnPayload *)v9 esso_extensionIdentifier];
        v99 = [v82 absoluteString];
        v96 = MCErrorArray(@"EXTENSIBLE_SSO_INTRA_URL_CONFLICT_P_EXTENSION_ID_P_URL", v89, v90, v91, v92, v93, v94, v95, v88);
        [v87 MCErrorWithDomain:@"MCExtensibleSingleSignOnErrorDomain" code:54004 descriptionArray:v96 errorType:@"MCFatalError"];
        v11 = v97 = v84;

        goto LABEL_61;
      }

      [v76 addObject:v84];
      [(NSArray *)v107 addObject:v82];
    }

    v78 = [v106 countByEnumeratingWithState:&v109 objects:v134 count:16];
    v11 = 0;
    if (v78)
    {
      continue;
    }

    break;
  }

LABEL_62:

  esso_URLs = v9->_esso_URLs;
  v9->_esso_URLs = v107;

  if (v11)
  {
    goto LABEL_4;
  }

LABEL_9:
  if ([v8 count])
  {
    v23 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v24 = v23;
      v25 = [(MCPayload *)v9 friendlyName];
      *buf = 138543618;
      v131 = v25;
      v132 = 2114;
      v133 = v8;
      _os_log_impl(&dword_1A795B000, v24, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_13:
  v26 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)verboseDescription
{
  v54 = *MEMORY[0x1E69E9840];
  v50.receiver = self;
  v50.super_class = MCExtensibleSingleSignOnPayload;
  v3 = [(MCPayload *)&v50 verboseDescription];
  v4 = [v3 mutableCopy];

  v5 = [(MCExtensibleSingleSignOnPayload *)self esso_type];

  if (v5)
  {
    v6 = [(MCExtensibleSingleSignOnPayload *)self esso_type];
    [v4 appendFormat:@"Type        : %@\n", v6];
  }

  v7 = [(MCExtensibleSingleSignOnPayload *)self esso_realm];

  if (v7)
  {
    v8 = [(MCExtensibleSingleSignOnPayload *)self esso_realm];
    [v4 appendFormat:@"Realm       : %@\n", v8];
  }

  v9 = [(MCExtensibleSingleSignOnPayload *)self esso_extensionIdentifier];

  if (v9)
  {
    v10 = [(MCExtensibleSingleSignOnPayload *)self esso_extensionIdentifier];
    [v4 appendFormat:@"Extension ID: %@\n", v10];
  }

  v11 = [(MCExtensibleSingleSignOnPayload *)self esso_teamIdentifier];

  if (v11)
  {
    v12 = [(MCExtensibleSingleSignOnPayload *)self esso_teamIdentifier];
    [v4 appendFormat:@"Team ID     : %@\n", v12];
  }

  v13 = [(MCExtensibleSingleSignOnPayload *)self esso_extensionData];

  if (v13)
  {
    v14 = [(MCExtensibleSingleSignOnPayload *)self esso_extensionData];
    [v4 appendFormat:@"Ext. Data   : [%ld entries]\n", objc_msgSend(v14, "count")];
  }

  v15 = [(MCExtensibleSingleSignOnPayload *)self esso_URLs];

  if (v15)
  {
    [v4 appendString:@"URLs        :\n"];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v16 = [(MCExtensibleSingleSignOnPayload *)self esso_URLs];
    v17 = [v16 countByEnumeratingWithState:&v46 objects:v53 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v47;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v47 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v46 + 1) + 8 * i) absoluteString];
          [v4 appendFormat:@"    %@\n", v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v46 objects:v53 count:16];
      }

      while (v18);
    }
  }

  v22 = [(MCExtensibleSingleSignOnPayload *)self esso_hosts];

  if (v22)
  {
    [v4 appendString:@"Hosts       :\n"];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v23 = [(MCExtensibleSingleSignOnPayload *)self esso_hosts];
    v24 = [v23 countByEnumeratingWithState:&v42 objects:v52 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v43;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v43 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [v4 appendFormat:@"    %@\n", *(*(&v42 + 1) + 8 * j)];
        }

        v25 = [v23 countByEnumeratingWithState:&v42 objects:v52 count:16];
      }

      while (v25);
    }
  }

  v28 = [(MCExtensibleSingleSignOnPayload *)self esso_screenLockedBehavior];

  if (v28)
  {
    v29 = [(MCExtensibleSingleSignOnPayload *)self esso_screenLockedBehavior];
    [v4 appendFormat:@"ScreenLocked: %@\n", v29];
  }

  v30 = [(MCExtensibleSingleSignOnPayload *)self esso_deniedBundleIdentifiers];

  if (v30)
  {
    [v4 appendString:@"DenyBndlIds :\n"];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v31 = [(MCExtensibleSingleSignOnPayload *)self esso_deniedBundleIdentifiers];
    v32 = [v31 countByEnumeratingWithState:&v38 objects:v51 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v39;
      do
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v39 != v34)
          {
            objc_enumerationMutation(v31);
          }

          [v4 appendFormat:@"    %@\n", *(*(&v38 + 1) + 8 * k)];
        }

        v33 = [v31 countByEnumeratingWithState:&v38 objects:v51 count:16];
      }

      while (v33);
    }
  }

  v36 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)stubDictionary
{
  v36 = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = MCExtensibleSingleSignOnPayload;
  v3 = [(MCPayload *)&v34 stubDictionary];
  v4 = [(MCExtensibleSingleSignOnPayload *)self esso_type];

  if (v4)
  {
    v5 = [(MCExtensibleSingleSignOnPayload *)self esso_type];
    [v3 setObject:v5 forKeyedSubscript:@"Type"];
  }

  v6 = [(MCExtensibleSingleSignOnPayload *)self esso_realm];

  if (v6)
  {
    v7 = [(MCExtensibleSingleSignOnPayload *)self esso_realm];
    [v3 setObject:v7 forKeyedSubscript:@"Realm"];
  }

  v8 = [(MCExtensibleSingleSignOnPayload *)self esso_extensionIdentifier];

  if (v8)
  {
    v9 = [(MCExtensibleSingleSignOnPayload *)self esso_extensionIdentifier];
    [v3 setObject:v9 forKeyedSubscript:@"ExtensionIdentifier"];
  }

  v10 = [(MCExtensibleSingleSignOnPayload *)self esso_teamIdentifier];

  if (v10)
  {
    v11 = [(MCExtensibleSingleSignOnPayload *)self esso_teamIdentifier];
    [v3 setObject:v11 forKeyedSubscript:@"TeamIdentifier"];
  }

  v12 = [(MCExtensibleSingleSignOnPayload *)self esso_extensionData];

  if (v12)
  {
    v13 = [(MCExtensibleSingleSignOnPayload *)self esso_extensionData];
    [v3 setObject:v13 forKeyedSubscript:@"ExtensionData"];
  }

  v14 = [(MCExtensibleSingleSignOnPayload *)self esso_URLs];

  if (v14)
  {
    v15 = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v16 = [(MCExtensibleSingleSignOnPayload *)self esso_URLs];
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v30 + 1) + 8 * i) absoluteString];
          [v15 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v18);
    }

    [v3 setObject:v15 forKeyedSubscript:@"URLs"];
  }

  v22 = [(MCExtensibleSingleSignOnPayload *)self esso_hosts];

  if (v22)
  {
    v23 = [(MCExtensibleSingleSignOnPayload *)self esso_hosts];
    [v3 setObject:v23 forKeyedSubscript:@"Hosts"];
  }

  v24 = [(MCExtensibleSingleSignOnPayload *)self esso_screenLockedBehavior];

  if (v24)
  {
    v25 = [(MCExtensibleSingleSignOnPayload *)self esso_screenLockedBehavior];
    [v3 setObject:v25 forKeyedSubscript:@"ScreenLockedBehavior"];
  }

  v26 = [(MCExtensibleSingleSignOnPayload *)self esso_deniedBundleIdentifiers];

  if (v26)
  {
    v27 = [(MCExtensibleSingleSignOnPayload *)self esso_deniedBundleIdentifiers];
    [v3 setObject:v27 forKeyedSubscript:@"DeniedBundleIdentifiers"];
  }

  v28 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)title
{
  v3 = [(MCExtensibleSingleSignOnPayload *)self esso_extensionIdentifier];
  v4 = MCContainingBundleIDForBundleID(v3);

  v5 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v4 allowPlaceholder:1 error:0];
  v6 = [v5 localizedName];
  v7 = [v6 length];

  if (!v7 || ([v5 localizedName], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = [(MCExtensibleSingleSignOnPayload *)self esso_extensionIdentifier];
    v10 = [v9 isEqualToString:@"com.apple.AppSSOKerberos.KerberosExtension"];

    if (v10)
    {
      v8 = @"Kerberos";
    }

    else
    {
      v8 = [(MCExtensibleSingleSignOnPayload *)self esso_extensionIdentifier];
    }
  }

  return v8;
}

- (id)payloadDescriptionKeyValueSections
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(MCExtensibleSingleSignOnPayload *)self esso_type];

  if (v5)
  {
    v6 = [(MCExtensibleSingleSignOnPayload *)self esso_type];

    if (v6 == @"Redirect")
    {
      v9 = @"ESSO_TYPE_REDIRECT";
    }

    else
    {
      v7 = [(MCExtensibleSingleSignOnPayload *)self esso_type];

      if (v7 != @"Credential")
      {
        v8 = [(MCExtensibleSingleSignOnPayload *)self esso_type];
LABEL_8:
        v10 = v8;
        v11 = [MCKeyValue alloc];
        v12 = MCLocalizedString(@"TYPE");
        v13 = [(MCKeyValue *)v11 initWithLocalizedString:v10 localizedKey:v12];

        [v4 addObject:v13];
        goto LABEL_9;
      }

      v9 = @"ESSO_TYPE_CREDENTIAL";
    }

    v8 = MCLocalizedString(v9);
    goto LABEL_8;
  }

LABEL_9:
  v14 = [(MCExtensibleSingleSignOnPayload *)self esso_realm];

  if (v14)
  {
    v15 = [MCKeyValue alloc];
    v16 = [(MCExtensibleSingleSignOnPayload *)self esso_realm];
    v17 = MCLocalizedString(@"REALM");
    v18 = [(MCKeyValue *)v15 initWithLocalizedString:v16 localizedKey:v17];

    [v4 addObject:v18];
  }

  v19 = [(MCExtensibleSingleSignOnPayload *)self esso_extensionIdentifier];

  if (v19)
  {
    v20 = [MCKeyValue alloc];
    v21 = [(MCExtensibleSingleSignOnPayload *)self esso_extensionIdentifier];
    v22 = MCLocalizedString(@"EXTENSION_ID");
    v23 = [(MCKeyValue *)v20 initWithLocalizedString:v21 localizedKey:v22];

    [v4 addObject:v23];
  }

  v24 = [(MCExtensibleSingleSignOnPayload *)self esso_teamIdentifier];

  if (v24)
  {
    v25 = [MCKeyValue alloc];
    v26 = [(MCExtensibleSingleSignOnPayload *)self esso_teamIdentifier];
    v27 = MCLocalizedString(@"TEAM_ID");
    v28 = [(MCKeyValue *)v25 initWithLocalizedString:v26 localizedKey:v27];

    [v4 addObject:v28];
  }

  v29 = [(MCExtensibleSingleSignOnPayload *)self esso_screenLockedBehavior];

  if (v29)
  {
    v30 = [MCKeyValue alloc];
    v31 = [(MCExtensibleSingleSignOnPayload *)self esso_screenLockedBehavior];
    v32 = MCLocalizedString(@"SCREEN_LOCKED_BEHAVIOR");
    v33 = [(MCKeyValue *)v30 initWithLocalizedString:v31 localizedKey:v32];

    [v4 addObject:v33];
  }

  if ([v4 count])
  {
    v34 = [MCKeyValueSection sectionWithKeyValues:v4];
    [v3 addObject:v34];
  }

  v35 = [(MCExtensibleSingleSignOnPayload *)self esso_URLs];
  v36 = [v35 count];

  if (v36)
  {
    v37 = [MEMORY[0x1E695DF70] array];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v38 = [(MCExtensibleSingleSignOnPayload *)self esso_URLs];
    v39 = [v38 countByEnumeratingWithState:&v58 objects:v62 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v59;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v59 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = [*(*(&v58 + 1) + 8 * i) absoluteString];
          [v37 addObject:v43];
        }

        v40 = [v38 countByEnumeratingWithState:&v58 objects:v62 count:16];
      }

      while (v40);
    }

    v44 = MCLocalizedString(@"URLS");
    v45 = [MCKeyValueSection sectionWithLocalizedArray:v37 title:v44 footer:0];

    [v3 addObject:v45];
  }

  v46 = [(MCExtensibleSingleSignOnPayload *)self esso_hosts];
  v47 = [v46 count];

  if (v47)
  {
    v48 = [(MCExtensibleSingleSignOnPayload *)self esso_hosts];
    v49 = MCLocalizedString(@"HOSTS");
    v50 = [MCKeyValueSection sectionWithLocalizedArray:v48 title:v49 footer:0];

    [v3 addObject:v50];
  }

  v51 = [(MCExtensibleSingleSignOnPayload *)self esso_deniedBundleIdentifiers];
  v52 = [v51 count];

  if (v52)
  {
    v53 = [(MCExtensibleSingleSignOnPayload *)self esso_deniedBundleIdentifiers];
    v54 = MCLocalizedString(@"DENIED_BUNDLE_IDENTIFIERS");
    v55 = [MCKeyValueSection sectionWithLocalizedArray:v53 title:v54 footer:0];

    [v3 addObject:v55];
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  v56 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)_validateHost:(id)a3 outError:(id *)a4
{
  v5 = a3;
  v13 = [v5 length];
  if (!v13)
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = MCErrorArray(@"EXTENSIBLE_SSO_INVALID_HOST_P_HOST", v6, v7, v8, v9, v10, v11, v12, v5);
    v16 = [v14 MCErrorWithDomain:@"MCExtensibleSingleSignOnErrorDomain" code:54001 descriptionArray:v15 errorType:@"MCFatalError"];

    if (a4)
    {
      v17 = v16;
      *a4 = v16;
    }
  }

  return v13 != 0;
}

- (id)_validateURLString:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:v6];
  v8 = [v7 scheme];
  v9 = [v8 caseInsensitiveCompare:@"http"];
  if (v9)
  {
    v4 = [v7 scheme];
    if ([v4 caseInsensitiveCompare:@"https"])
    {
      goto LABEL_7;
    }
  }

  v10 = [v7 host];
  if (![v10 length])
  {
LABEL_6:

    if (!v9)
    {
LABEL_8:

LABEL_9:
      v19 = MEMORY[0x1E696ABC0];
      v20 = MCErrorArray(@"EXTENSIBLE_SSO_INVALID_URL_P_URL", v12, v13, v14, v15, v16, v17, v18, v6);
      v21 = [v19 MCErrorWithDomain:@"MCExtensibleSingleSignOnErrorDomain" code:54000 descriptionArray:v20 errorType:@"MCFatalError"];

      if (a4)
      {
        v22 = v21;
        *a4 = v21;
      }

      v23 = 0;
      goto LABEL_12;
    }

LABEL_7:

    goto LABEL_8;
  }

  v11 = [v7 query];
  if ([v11 length])
  {

    goto LABEL_6;
  }

  v25 = [v7 fragment];
  v26 = [v25 length];

  if (v9)
  {
  }

  if (v26)
  {
    goto LABEL_9;
  }

  v23 = [v7 URL];
  if (!v23)
  {
    goto LABEL_9;
  }

LABEL_12:

  return v23;
}

@end