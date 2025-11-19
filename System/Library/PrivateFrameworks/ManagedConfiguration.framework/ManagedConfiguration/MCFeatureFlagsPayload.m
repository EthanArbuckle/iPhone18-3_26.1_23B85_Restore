@interface MCFeatureFlagsPayload
+ (id)typeStrings;
- (BOOL)isAllowedToWriteFeatureFlags;
- (MCFeatureFlagsPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (id)invalidConfigurationErrorWithUnderlyingError:(id)a3;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)title;
- (id)verboseDescription;
@end

@implementation MCFeatureFlagsPayload

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.system.featureflags";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (BOOL)isAllowedToWriteFeatureFlags
{
  v8 = 0;
  v3 = [(MCPayload *)self profile];
  v4 = [v3 signatureVersion];

  v5 = [(MCPayload *)self profile];
  v6 = [v5 signerCertificates];
  [MCProfile evaluateTrustOfCertificateChain:v6 signatureVersion:v4 outIsAllowedToWriteDefaults:&v8];

  LOBYTE(v5) = v8;
  return v5;
}

- (id)invalidConfigurationErrorWithUnderlyingError:(id)a3
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = a3;
  v6 = [(MCPayload *)self identifier];
  v14 = MCErrorArray(@"ERROR_FEATURE_FLAGS_INVALID_CONFIGURATION_P_ID", v7, v8, v9, v10, v11, v12, v13, v6);
  v15 = [v4 MCErrorWithDomain:@"MCFeatureFlagsErrorDomain" code:58001 descriptionArray:v14 underlyingError:v5 errorType:@"MCFatalError"];

  return v15;
}

- (MCFeatureFlagsPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v182 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v163.receiver = self;
  v163.super_class = MCFeatureFlagsPayload;
  v10 = [(MCPayload *)&v163 initWithDictionary:v8 profile:v9 outError:a5];
  if (!v10)
  {
    goto LABEL_73;
  }

  v118 = a5;
  v11 = [MEMORY[0x1E695DF90] dictionary];
  v12 = 0x1E695D000uLL;
  v162 = 0;
  v13 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"Features" isRequired:0 outError:&v162];
  v14 = v162;
  if (v14)
  {
    v15 = v14;

    goto LABEL_64;
  }

  v117 = v11;
  v16 = [MEMORY[0x1E695DF70] array];
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v17 = v13;
  obj = v17;
  v122 = [v17 countByEnumeratingWithState:&v158 objects:v181 count:16];
  if (!v122)
  {

    goto LABEL_32;
  }

  v114 = v9;
  v15 = 0;
  v124 = *v159;
  v119 = v16;
LABEL_6:
  v18 = 0;
LABEL_7:
  if (*v159 != v124)
  {
    objc_enumerationMutation(obj);
  }

  v19 = *(*(&v158 + 1) + 8 * v18);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v129 = v18;
    v20 = objc_opt_class();
    v157 = v15;
    v21 = [v19 MCValidateAndRemoveObjectOfClass:v20 withKey:@"Domain" isRequired:1 outError:&v157];
    v22 = v157;

    if (v22)
    {
      v127 = v21;
      v42 = obj;
      v15 = v22;
      v9 = v114;

      goto LABEL_62;
    }

    v23 = *(v12 + 3784);
    v24 = objc_opt_class();
    v156 = 0;
    v25 = [v19 MCValidateAndRemoveObjectOfClass:v24 withKey:@"Features" isRequired:1 outError:&v156];
    v26 = v156;
    if (v26)
    {
      v15 = v26;
      v128 = v21;
      v42 = obj;
      v9 = v114;
      goto LABEL_61;
    }

    v27 = [MEMORY[0x1E695DF70] array];
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v131 = v25;
    v28 = [v131 countByEnumeratingWithState:&v152 objects:v180 count:16];
    if (!v28)
    {
      v15 = 0;
      goto LABEL_28;
    }

    v29 = v28;
    v30 = *v153;
    v126 = v21;
LABEL_14:
    v31 = 0;
    while (1)
    {
      if (*v153 != v30)
      {
        objc_enumerationMutation(v131);
      }

      v32 = *(*(&v152 + 1) + 8 * v31);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v33 = objc_opt_class();
      v151 = 0;
      v34 = [v32 MCValidateAndRemoveObjectOfClass:v33 withKey:@"FeatureName" isRequired:1 outError:&v151];
      v35 = v151;
      if (v35)
      {
        v15 = v35;

        goto LABEL_26;
      }

      v36 = objc_opt_class();
      v150 = 0;
      v37 = [v32 MCValidateAndRemoveObjectOfClass:v36 withKey:@"Enabled" isRequired:1 outError:&v150];
      v38 = v150;
      if (v38)
      {
        v15 = v38;

        v16 = v119;
        v21 = v126;
        goto LABEL_28;
      }

      v178[0] = @"FeatureName";
      v178[1] = @"Enabled";
      v179[0] = v34;
      v179[1] = v37;
      v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v179 forKeys:v178 count:2];
      [v27 addObject:v39];

      ++v10->_featureFlagCount;
      if (v29 == ++v31)
      {
        v29 = [v131 countByEnumeratingWithState:&v152 objects:v180 count:16];
        v15 = 0;
        v16 = v119;
        v21 = v126;
        if (v29)
        {
          goto LABEL_14;
        }

LABEL_28:

        v176[0] = @"Domain";
        v176[1] = @"Features";
        v177[0] = v21;
        v177[1] = v27;
        v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v177 forKeys:v176 count:2];
        [v16 addObject:v40];

        v18 = v129 + 1;
        v12 = 0x1E695D000;
        if (v129 + 1 == v122)
        {
          v122 = [obj countByEnumeratingWithState:&v158 objects:v181 count:16];
          if (!v122)
          {
            goto LABEL_37;
          }

          goto LABEL_6;
        }

        goto LABEL_7;
      }
    }

    v15 = [(MCFeatureFlagsPayload *)v10 invalidConfigurationErrorWithUnderlyingError:0];
LABEL_26:
    v16 = v119;
    v21 = v126;
    goto LABEL_28;
  }

  v44 = [(MCFeatureFlagsPayload *)v10 invalidConfigurationErrorWithUnderlyingError:0];

  v15 = v44;
LABEL_37:

  v9 = v114;
  if (v15)
  {
    goto LABEL_63;
  }

LABEL_32:
  if ([v16 count])
  {
    [v117 setObject:v16 forKey:@"Features"];
  }

  v41 = *(v12 + 3784);
  v149 = 0;
  v42 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"Disclosures" isRequired:0 outError:&v149];
  v43 = v149;
  if (v43)
  {
    v15 = v43;
    goto LABEL_62;
  }

  v120 = v16;
  v115 = v9;
  v116 = v8;
  v45 = [MEMORY[0x1E695DF70] array];
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v132 = v42;
  v46 = [v132 countByEnumeratingWithState:&v145 objects:v175 count:16];
  v128 = v45;
  if (!v46)
  {
    v58 = 0;
    goto LABEL_58;
  }

  v47 = v46;
  v48 = *v146;
  while (2)
  {
    for (i = 0; i != v47; ++i)
    {
      if (*v146 != v48)
      {
        objc_enumerationMutation(v132);
      }

      v50 = *(*(&v145 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v58 = [(MCFeatureFlagsPayload *)v10 invalidConfigurationErrorWithUnderlyingError:0];
LABEL_57:
        v45 = v128;
        goto LABEL_58;
      }

      v51 = objc_opt_class();
      v144 = 0;
      v52 = [v50 MCValidateAndRemoveObjectOfClass:v51 withKey:@"DisclosureName" isRequired:1 outError:&v144];
      v53 = v144;
      if (v53)
      {
        v58 = v53;
LABEL_56:

        goto LABEL_57;
      }

      v54 = objc_opt_class();
      v143 = 0;
      v55 = [v50 MCValidateAndRemoveObjectOfClass:v54 withKey:@"Disclosed" isRequired:1 outError:&v143];
      v56 = v143;
      if (v56)
      {
        v58 = v56;

        goto LABEL_56;
      }

      v173[0] = @"DisclosureName";
      v173[1] = @"Disclosed";
      v174[0] = v52;
      v174[1] = v55;
      v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v174 forKeys:v173 count:2];
      [v128 addObject:v57];

      ++v10->_disclosureCount;
    }

    v47 = [v132 countByEnumeratingWithState:&v145 objects:v175 count:16];
    v58 = 0;
    v45 = v128;
    if (v47)
    {
      continue;
    }

    break;
  }

LABEL_58:
  v42 = v132;

  if ([v45 count])
  {
    [v117 setObject:v45 forKey:@"Disclosures"];
  }

  v142 = v58;
  v8 = v116;
  v25 = [v116 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"Subscriptions" isRequired:0 outError:&v142];
  v15 = v142;

  v9 = v115;
  v16 = v120;
  if (v15)
  {
    goto LABEL_61;
  }

  v72 = [MEMORY[0x1E695DF70] array];
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v25 = v25;
  v123 = [v25 countByEnumeratingWithState:&v138 objects:v172 count:16];
  v130 = v72;
  if (!v123)
  {
    v15 = 0;
    goto LABEL_97;
  }

  v125 = *v139;
  while (2)
  {
    v73 = 0;
    while (2)
    {
      if (*v139 != v125)
      {
        objc_enumerationMutation(v25);
      }

      v74 = *(*(&v138 + 1) + 8 * v73);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = [(MCFeatureFlagsPayload *)v10 invalidConfigurationErrorWithUnderlyingError:0];
LABEL_96:
        v72 = v130;
        v42 = v132;
        goto LABEL_97;
      }

      v75 = objc_opt_class();
      v137 = 0;
      v76 = [v74 MCValidateAndRemoveObjectOfClass:v75 withKey:@"SubscriptionClass" isRequired:1 outError:&v137];
      v77 = v137;
      if (v77)
      {
        v15 = v77;
LABEL_95:

        goto LABEL_96;
      }

      v78 = objc_opt_class();
      v136 = 0;
      v79 = [v74 MCValidateAndRemoveObjectOfClass:v78 withKey:@"SubscriptionContents" isRequired:1 outError:&v136];
      v80 = v136;
      if (v80)
      {
        v15 = v80;
LABEL_94:

        goto LABEL_95;
      }

      v81 = objc_opt_class();
      v135 = 0;
      v82 = [v79 MCValidateAndRemoveObjectOfClass:v81 withKey:@"TargetRelease" isRequired:1 outError:&v135];
      v83 = v135;
      if (v83)
      {
        v15 = v83;
LABEL_93:

        goto LABEL_94;
      }

      v84 = objc_opt_class();
      v134 = 0;
      v85 = [v79 MCValidateAndRemoveObjectOfClass:v84 withKey:@"MinimumPhase" isRequired:1 outError:&v134];
      v86 = v134;
      if (v86)
      {
        v15 = v86;

        goto LABEL_93;
      }

      v171[0] = v76;
      v170[0] = @"SubscriptionClass";
      v170[1] = @"SubscriptionContents";
      v168[0] = @"TargetRelease";
      v168[1] = @"MinimumPhase";
      v169[0] = v82;
      v169[1] = v85;
      v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v169 forKeys:v168 count:2];
      v171[1] = v87;
      v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v171 forKeys:v170 count:2];
      [v130 addObject:v88];

      ++v10->_subscriptionCount;
      if (v123 != ++v73)
      {
        continue;
      }

      break;
    }

    v15 = 0;
    v72 = v130;
    v42 = v132;
    v123 = [v25 countByEnumeratingWithState:&v138 objects:v172 count:16];
    if (v123)
    {
      continue;
    }

    break;
  }

LABEL_97:

  if ([v72 count])
  {
    [v117 setObject:v72 forKey:@"Subscriptions"];
  }

  v89 = [(MCPayload *)v10 profile];
  v90 = [v89 isStub];

  v9 = v115;
  v8 = v116;
  if (v90)
  {
LABEL_100:
    v16 = v120;
    if (!v15)
    {
      v91 = [v117 copy];
      v92 = 0;
      featureFlagsConfiguration = v10->_featureFlagsConfiguration;
      v10->_featureFlagsConfiguration = v91;
      goto LABEL_108;
    }
  }

  else
  {
    v133 = 0;
    v94 = [objc_opt_class() isConfigurationValid:v117 error:&v133];
    featureFlagsConfiguration = v133;
    if (v94)
    {
      if ([(MCFeatureFlagsPayload *)v10 isAllowedToWriteFeatureFlags])
      {

        goto LABEL_100;
      }

      v105 = MEMORY[0x1E696ABC0];
      v96 = [v115 friendlyName];
      v104 = MCErrorArray(@"ERROR_PROFILE_DEFAULTS_BAD_SIGNATURE_P_ID", v106, v107, v108, v109, v110, v111, v112, v96);
      v113 = [v105 MCErrorWithDomain:@"MCFeatureFlagsErrorDomain" code:58000 descriptionArray:v104 errorType:@"MCFatalError"];
      v92 = [v113 MCCopyAsPrimaryError];

      v15 = v113;
    }

    else
    {
      v95 = MEMORY[0x1E696ABC0];
      v96 = [(MCPayload *)v10 identifier];
      v104 = MCErrorArray(@"ERROR_FEATURE_FLAGS_INVALID_CONFIGURATION_P_ID", v97, v98, v99, v100, v101, v102, v103, v96);
      v92 = [v95 MCErrorWithDomain:@"MCFeatureFlagsErrorDomain" code:58001 descriptionArray:v104 underlyingError:featureFlagsConfiguration errorType:@"MCFatalError"];
    }

    v16 = v120;
    v42 = v132;
LABEL_108:

    v15 = v92;
    v72 = v130;
  }

LABEL_61:
LABEL_62:

LABEL_63:
  if (v15)
  {
LABEL_64:
    v59 = [(MCPayload *)v10 malformedPayloadErrorWithError:v15];
    v60 = v59;
    if (v118)
    {
      v61 = v59;
      *v118 = v60;
    }

    v62 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v63 = v62;
      v64 = objc_opt_class();
      v65 = v64;
      v66 = [v60 MCVerboseDescription];
      *buf = 138543618;
      v165 = v64;
      v166 = 2114;
      v167 = v66;
      _os_log_impl(&dword_1A795B000, v63, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v10 = 0;
  }

  if ([v8 count])
  {
    v67 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v68 = v67;
      v69 = [(MCPayload *)v10 friendlyName];
      *buf = 138543618;
      v165 = v69;
      v166 = 2114;
      v167 = v8;
      _os_log_impl(&dword_1A795B000, v68, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_73:
  v70 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)stubDictionary
{
  v6.receiver = self;
  v6.super_class = MCFeatureFlagsPayload;
  v3 = [(MCPayload *)&v6 stubDictionary];
  v4 = [(MCFeatureFlagsPayload *)self featureFlagsConfiguration];
  [v3 addEntriesFromDictionary:v4];

  return v3;
}

- (id)verboseDescription
{
  v8.receiver = self;
  v8.super_class = MCFeatureFlagsPayload;
  v3 = [(MCPayload *)&v8 verboseDescription];
  v4 = [v3 mutableCopy];

  v5 = [(MCFeatureFlagsPayload *)self featureFlagsConfiguration];
  v6 = v5;
  if (v5)
  {
    [v4 appendFormat:@"\nconfiguration: %@", v5];
  }

  return v4;
}

- (id)title
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = MCLocalizedString(@"FEATURE_FLAGS_DESCRIPTION_PLURAL_FORMAT");
  v4 = [v2 stringWithFormat:v3, 0];

  return v4;
}

- (id)payloadDescriptionKeyValueSections
{
  v27[1] = *MEMORY[0x1E69E9840];
  v2 = [(MCFeatureFlagsPayload *)self featureFlagsConfiguration];
  v3 = [v2 objectForKeyedSubscript:@"Disclosures"];
  v4 = [v2 objectForKeyedSubscript:@"Features"];
  v5 = [v2 objectForKeyedSubscript:@"Subscriptions"];
  v6 = objc_opt_new();
  v26 = v3;
  if (v4)
  {
    v7 = [MCKeyValue alloc];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
    v9 = MCFormattedStringForNumber(v8);
    v10 = MCLocalizedString(@"FEATURE_FLAG_DOMAINS");
    v11 = [(MCKeyValue *)v7 initWithLocalizedString:v9 localizedKey:v10];

    v3 = v26;
    [v6 addObject:v11];
  }

  if (v3)
  {
    v12 = [MCKeyValue alloc];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
    v14 = MCFormattedStringForNumber(v13);
    v15 = MCLocalizedString(@"FEATURE_FLAG_DISCLOSURES");
    v16 = [(MCKeyValue *)v12 initWithLocalizedString:v14 localizedKey:v15];

    v3 = v26;
    [v6 addObject:v16];
  }

  if (v5)
  {
    v17 = [MCKeyValue alloc];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
    v19 = MCFormattedStringForNumber(v18);
    v20 = MCLocalizedString(@"FEATURE_FLAG_SUBSCRIPTIONS");
    v21 = [(MCKeyValue *)v17 initWithLocalizedString:v19 localizedKey:v20];

    v3 = v26;
    [v6 addObject:v21];
  }

  if ([v6 count])
  {
    v22 = [MCKeyValueSection sectionWithKeyValues:v6];
    v27[0] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

@end