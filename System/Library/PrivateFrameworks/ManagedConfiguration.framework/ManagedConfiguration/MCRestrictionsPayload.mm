@interface MCRestrictionsPayload
+ (id)_ephemeralMultiUserOnlyKeysFilter;
+ (id)_platformSpecificKeyFilter;
+ (id)_supervisedAllowedKeys;
+ (id)_unsupervisedAllowedKeys;
+ (id)allAllowedPlatformKeys;
+ (id)userEnrollmentAllowedKeysFilter;
- (BOOL)_verifyIntersectionMaxCount:(unint64_t)a3 forFeature:(id)a4 error:(id *)a5;
- (BOOL)_verifyMaxCount:(unint64_t)a3 forItems:(id)a4 forFeature:(id)a5 error:(id *)a6;
- (BOOL)_verifyUnionMaxCount:(unint64_t)a3 forFeature:(id)a4 error:(id *)a5;
- (MCRestrictionsPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (id)_defaultValueRestrictions;
- (id)_enforcedFeatureStrings;
- (id)_intersectionStrings;
- (id)_invalidFieldErrorWithFieldName:(id)a3;
- (id)_restrictedFeatureStrings;
- (id)_unionStrings;
- (id)filterForUserEnrollmentOutError:(id *)a3;
- (id)installationWarnings;
- (id)localizedRestrictionStrings;
- (id)stubDictionary;
@end

@implementation MCRestrictionsPayload

+ (id)_unsupervisedAllowedKeys
{
  if (_unsupervisedAllowedKeys_onceToken != -1)
  {
    +[MCRestrictionsPayload _unsupervisedAllowedKeys];
  }

  v3 = _unsupervisedAllowedKeys_dict;

  return v3;
}

void __49__MCRestrictionsPayload__unsupervisedAllowedKeys__block_invoke()
{
  v0 = MEMORY[0x1E695DF20];
  v1 = MCGetBaseResourcePath();
  v2 = [v1 stringByAppendingPathComponent:@"unsupervisedRestrictionPayloadKeys.plist"];
  v3 = [v0 dictionaryWithContentsOfFile:v2];
  v4 = _unsupervisedAllowedKeys_dict;
  _unsupervisedAllowedKeys_dict = v3;

  v5 = +[MCRestrictionManager allowedGrandfatheredRestrictionPayloadKeysDictionary];
  if ([v5 count])
  {
    v6 = [MEMORY[0x1E69AD420] sharedConfiguration];
    v7 = [v6 isSupervised];

    if ((v7 & 1) == 0)
    {
      v8 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_DEFAULT, "Applying deprecated restriction keys to allowed unsupervised keys...", v11, 2u);
      }

      v9 = [MCRestrictionManager addRestrictionPayloadKeysDictionary:v5 toRestrictionPayloadKeysDictionary:_unsupervisedAllowedKeys_dict];
      v10 = _unsupervisedAllowedKeys_dict;
      _unsupervisedAllowedKeys_dict = v9;
    }
  }
}

+ (id)_supervisedAllowedKeys
{
  if (_supervisedAllowedKeys_onceToken != -1)
  {
    +[MCRestrictionsPayload _supervisedAllowedKeys];
  }

  v3 = _supervisedAllowedKeys_dict;

  return v3;
}

void __47__MCRestrictionsPayload__supervisedAllowedKeys__block_invoke()
{
  v0 = MEMORY[0x1E695DF20];
  v4 = MCGetBaseResourcePath();
  v1 = [v4 stringByAppendingPathComponent:@"supervisedRestrictionPayloadKeys.plist"];
  v2 = [v0 dictionaryWithContentsOfFile:v1];
  v3 = _supervisedAllowedKeys_dict;
  _supervisedAllowedKeys_dict = v2;
}

+ (id)allAllowedPlatformKeys
{
  if (allAllowedPlatformKeys_onceToken != -1)
  {
    +[MCRestrictionsPayload allAllowedPlatformKeys];
  }

  v3 = allAllowedPlatformKeys_dict;

  return v3;
}

void __47__MCRestrictionsPayload_allAllowedPlatformKeys__block_invoke()
{
  v0 = +[MCRestrictionsPayload _supervisedAllowedKeys];
  v1 = [v0 mutableCopy];

  v3 = +[MCRestrictionsPayload _platformSpecificKeyFilter];
  [v1 MCFilterRestrictionPayloadKeys:v3];
  v2 = allAllowedPlatformKeys_dict;
  allAllowedPlatformKeys_dict = v1;
}

+ (id)userEnrollmentAllowedKeysFilter
{
  if (userEnrollmentAllowedKeysFilter_onceToken != -1)
  {
    +[MCRestrictionsPayload userEnrollmentAllowedKeysFilter];
  }

  v3 = userEnrollmentAllowedKeysFilter_dict;

  return v3;
}

void __56__MCRestrictionsPayload_userEnrollmentAllowedKeysFilter__block_invoke()
{
  v0 = MEMORY[0x1E695DF20];
  v4 = MCGetBaseResourcePath();
  v1 = [v4 stringByAppendingPathComponent:@"UserEnrollmentRestrictionPayloadKeysFilter.plist"];
  v2 = [v0 dictionaryWithContentsOfFile:v1];
  v3 = userEnrollmentAllowedKeysFilter_dict;
  userEnrollmentAllowedKeysFilter_dict = v2;
}

+ (id)_ephemeralMultiUserOnlyKeysFilter
{
  if (_ephemeralMultiUserOnlyKeysFilter_onceToken != -1)
  {
    +[MCRestrictionsPayload _ephemeralMultiUserOnlyKeysFilter];
  }

  v3 = _ephemeralMultiUserOnlyKeysFilter_dict;

  return v3;
}

void __58__MCRestrictionsPayload__ephemeralMultiUserOnlyKeysFilter__block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"restrictedBool";
  v4[0] = &unk_1F1AA5980;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = _ephemeralMultiUserOnlyKeysFilter_dict;
  _ephemeralMultiUserOnlyKeysFilter_dict = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)_platformSpecificKeyFilter
{
  if (MCGestaltIsAppleTV())
  {
    if (_AppleTVAllowedKeysFilter_onceToken != -1)
    {
      +[MCRestrictionsPayload _platformSpecificKeyFilter];
    }

    v2 = &_AppleTVAllowedKeysFilter_dict;
  }

  else if (MCGestaltIsWatch())
  {
    if (_WatchAllowedKeysFilter_onceToken != -1)
    {
      +[MCRestrictionsPayload _platformSpecificKeyFilter];
    }

    v2 = &_WatchAllowedKeysFilter_dict;
  }

  else if (MCGestaltIsVisionDevice())
  {
    if (_VisionProAllowedKeysFilter_onceToken != -1)
    {
      +[MCRestrictionsPayload _platformSpecificKeyFilter];
    }

    v2 = &_VisionProAllowedKeysFilter_dict;
  }

  else if ([MEMORY[0x1E6999800] isSharediPad])
  {
    if (_ephemeralMultiUserAllowedKeysFilter_onceToken != -1)
    {
      +[MCRestrictionsPayload _platformSpecificKeyFilter];
    }

    v2 = &_ephemeralMultiUserAllowedKeysFilter_dict;
  }

  else
  {
    if (_singleUserAllowedKeysFilter_onceToken != -1)
    {
      +[MCRestrictionsPayload _platformSpecificKeyFilter];
    }

    v2 = &_singleUserAllowedKeysFilter_dict;
  }

  v3 = *v2;

  return v3;
}

- (id)_invalidFieldErrorWithFieldName:(id)a3
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = MCErrorArray(@"ERROR_PROFILE_FIELD_INVALID_P_FIELD", a2, a3, v3, v4, v5, v6, v7, a3);
  v10 = [v8 MCErrorWithDomain:@"MCProfileErrorDomain" code:1003 descriptionArray:v9 errorType:@"MCFatalError"];

  return v10;
}

- (MCRestrictionsPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v252 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v233.receiver = self;
  v233.super_class = MCRestrictionsPayload;
  v197 = v8;
  v10 = [(MCPayload *)&v233 initWithDictionary:v8 profile:v9 outError:a5];
  if (!v10)
  {
    v15 = 0;
    goto LABEL_141;
  }

  p_isa = &v10->super.super.isa;
  v171 = a5;
  v174 = v9;
  v12 = +[MCRestrictionManager sharedManager];
  v13 = [v12 defaultRestrictions];

  v195 = [v13 objectForKeyedSubscript:@"restrictedBool"];
  v170 = v13;
  v193 = [v13 objectForKeyedSubscript:@"restrictedValue"];
  v14 = [MEMORY[0x1E69AD420] sharedConfiguration];
  if ([v14 isSupervised])
  {

LABEL_6:
    v18 = +[MCRestrictionsPayload _supervisedAllowedKeys];
    goto LABEL_7;
  }

  v16 = [p_isa profile];
  v17 = [v16 isStub];

  if (v17)
  {
    goto LABEL_6;
  }

  buf[0] = 0;
  v75 = objc_opt_class();
  v76 = [v174 signerCertificates];
  [v75 evaluateTrustOfCertificateChain:v76 signatureVersion:0 outIsAllowedToInstallUnsupportedPayloads:0 outIsAllowedToWriteDefaults:0 outIsAllowedToInstallSupervisedRestrictionsOnUnsupervisedDevices:buf];

  if (buf[0])
  {
    goto LABEL_6;
  }

  v18 = +[MCRestrictionsPayload _unsupervisedAllowedKeys];
LABEL_7:
  v19 = v18;
  v20 = [v18 mutableCopy];

  v168 = +[MCRestrictionsPayload _platformSpecificKeyFilter];
  [v20 MCFilterRestrictionPayloadKeys:?];
  v21 = [MEMORY[0x1E69AD420] sharedConfiguration];
  if ([v21 userMode] == 1)
  {
LABEL_10:

    goto LABEL_11;
  }

  v22 = [MEMORY[0x1E6999800] isSharediPad];

  if ((v22 & 1) == 0)
  {
    v21 = +[MCRestrictionsPayload _ephemeralMultiUserOnlyKeysFilter];
    [v20 MCFilterOutRestrictionPayloadKeys:v21];
    goto LABEL_10;
  }

LABEL_11:
  v169 = v20;
  v23 = [v20 copy];
  v190 = [v23 objectForKeyedSubscript:@"restrictedBool"];
  v175 = [v23 objectForKeyedSubscript:@"restrictedValue"];
  v173 = [v23 objectForKeyedSubscript:@"intersection"];
  v167 = v23;
  v172 = [v23 objectForKeyedSubscript:@"union"];
  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v25 = p_isa[11];
  p_isa[11] = v24;

  v26 = [MEMORY[0x1E695DF90] dictionary];
  v27 = [MEMORY[0x1E695DF90] dictionary];
  v28 = [MEMORY[0x1E695DF90] dictionary];
  v29 = [MEMORY[0x1E695DF90] dictionary];
  v194 = v26;
  [p_isa[11] setObject:v26 forKeyedSubscript:@"restrictedBool"];
  v192 = v27;
  [p_isa[11] setObject:v27 forKeyedSubscript:@"restrictedValue"];
  v185 = v28;
  [p_isa[11] setObject:v28 forKeyedSubscript:@"intersection"];
  v196 = p_isa;
  v176 = v29;
  [p_isa[11] setObject:v29 forKeyedSubscript:@"union"];
  v231 = 0u;
  v232 = 0u;
  v229 = 0u;
  v230 = 0u;
  v30 = v190;
  v31 = [v30 countByEnumeratingWithState:&v229 objects:v251 count:16];
  v191 = v30;
  if (v31)
  {
    v32 = v31;
    v33 = *v230;
    while (2)
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v230 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v229 + 1) + 8 * i);
        v36 = [v197 objectForKey:v35];
        if (v36)
        {
          if (objc_opt_respondsToSelector())
          {
            v37 = [v195 objectForKey:v35];
            v38 = [v37 MCMutableDeepCopy];

            if (!v38)
            {
              v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
            }

            [v38 setObject:v36 forKey:@"value"];
            [v194 setObject:v38 forKey:v35];
          }

          else
          {
            v39 = [(MCPayload *)v196 profile];
            v40 = [v39 isStub];

            if (!v40)
            {
              v41 = [(MCRestrictionsPayload *)v196 _invalidFieldErrorWithFieldName:v35];

              if (v41)
              {
                v15 = v196;
LABEL_71:
                v77 = v171;
                v78 = v185;
                goto LABEL_135;
              }

              goto LABEL_27;
            }
          }
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v229 objects:v251 count:16];
      if (v32)
      {
        continue;
      }

      break;
    }
  }

LABEL_27:
  v227 = 0u;
  v228 = 0u;
  v225 = 0u;
  v226 = 0u;
  v42 = v175;
  v43 = [v42 countByEnumeratingWithState:&v225 objects:v250 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v226;
    while (2)
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v226 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v225 + 1) + 8 * j);
        v48 = [v197 objectForKey:v47];
        if (v48)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v49 = [v193 objectForKey:v47];
            v50 = [v49 MCMutableDeepCopy];

            if (!v50)
            {
              v50 = objc_alloc_init(MEMORY[0x1E695DF90]);
            }

            [v50 setObject:v48 forKey:@"value"];
            [v192 setObject:v50 forKey:v47];
          }

          else
          {
            v51 = [(MCPayload *)v196 profile];
            v52 = [v51 isStub];

            if (!v52)
            {
              v15 = v196;
              v41 = [(MCRestrictionsPayload *)v196 _invalidFieldErrorWithFieldName:v47];

              if (v41)
              {
LABEL_96:
                v77 = v171;
                v78 = v185;
                v30 = v191;
                goto LABEL_135;
              }

              goto LABEL_42;
            }
          }
        }
      }

      v44 = [v42 countByEnumeratingWithState:&v225 objects:v250 count:16];
      if (v44)
      {
        continue;
      }

      break;
    }
  }

  v15 = v196;
LABEL_42:
  v223 = 0u;
  v224 = 0u;
  v221 = 0u;
  v222 = 0u;
  obj = v173;
  v53 = [obj countByEnumeratingWithState:&v221 objects:v249 count:16];
  v30 = v191;
  if (!v53)
  {
    goto LABEL_67;
  }

  v54 = v53;
  v55 = *v222;
  v178 = *v222;
LABEL_44:
  v56 = 0;
  v181 = v54;
  while (1)
  {
    if (*v222 != v55)
    {
      objc_enumerationMutation(obj);
    }

    v57 = *(*(&v221 + 1) + 8 * v56);
    v58 = [v197 objectForKeyedSubscript:v57];
    if (v58)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v219 = 0u;
        v220 = 0u;
        v217 = 0u;
        v218 = 0u;
        v59 = v58;
        v60 = [v59 countByEnumeratingWithState:&v217 objects:v248 count:16];
        if (!v60)
        {
          goto LABEL_57;
        }

        v61 = v60;
        v62 = *v218;
LABEL_51:
        v63 = 0;
        while (1)
        {
          if (*v218 != v62)
          {
            objc_enumerationMutation(v59);
          }

          v64 = *(*(&v217 + 1) + 8 * v63);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          if (v61 == ++v63)
          {
            v61 = [v59 countByEnumeratingWithState:&v217 objects:v248 count:16];
            if (!v61)
            {
LABEL_57:

              goto LABEL_61;
            }

            goto LABEL_51;
          }
        }

        v41 = [(MCRestrictionsPayload *)v15 _invalidFieldErrorWithFieldName:v57];

        if (v41)
        {

          goto LABEL_96;
        }

LABEL_61:
        v67 = [MCRestrictionUtilities intersectionFeatureForPayloadRestrictionKey:v57];
        v68 = [v185 objectForKeyedSubscript:v67];
        if (v68)
        {
          v69 = objc_alloc(MEMORY[0x1E695DFA8]);
          v70 = [v68 objectForKeyedSubscript:@"values"];
          v71 = [v69 initWithArray:v70];

          v72 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v59];
          [v71 intersectSet:v72];
          v246 = @"values";
          v73 = [v71 allObjects];
          v247 = v73;
          v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v247 forKeys:&v246 count:1];
          [v185 setObject:v74 forKeyedSubscript:v67];

          v15 = v196;
        }

        else
        {
          v244 = @"values";
          v245 = v59;
          v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v245 forKeys:&v244 count:1];
          [v185 setObject:v71 forKeyedSubscript:v67];
        }

        v55 = v178;

        v30 = v191;
        v54 = v181;
        goto LABEL_65;
      }

      v65 = [(MCPayload *)v15 profile];
      v66 = [v65 isStub];

      if (!v66)
      {
        break;
      }
    }

LABEL_65:

    if (++v56 == v54)
    {
      v54 = [obj countByEnumeratingWithState:&v221 objects:v249 count:16];
      if (!v54)
      {
LABEL_67:

        goto LABEL_72;
      }

      goto LABEL_44;
    }
  }

  v41 = [(MCRestrictionsPayload *)v15 _invalidFieldErrorWithFieldName:v57];

  if (v41)
  {
    goto LABEL_71;
  }

LABEL_72:
  v215 = 0u;
  v216 = 0u;
  v213 = 0u;
  v214 = 0u;
  obja = v172;
  v79 = [obja countByEnumeratingWithState:&v213 objects:v243 count:16];
  if (!v79)
  {
    v41 = 0;
    goto LABEL_101;
  }

  v80 = v79;
  v81 = *v214;
  v182 = *v214;
  v82 = 0x1E695D000uLL;
  while (2)
  {
    v83 = 0;
    while (2)
    {
      if (*v214 != v81)
      {
        objc_enumerationMutation(obja);
      }

      v84 = *(*(&v213 + 1) + 8 * v83);
      v85 = [v197 objectForKeyedSubscript:v84];
      if (v85)
      {
        v86 = *(v82 + 3784);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v211 = 0u;
          v212 = 0u;
          v209 = 0u;
          v210 = 0u;
          v87 = v85;
          v88 = [v87 countByEnumeratingWithState:&v209 objects:v242 count:16];
          if (v88)
          {
            v89 = v88;
            v90 = *v210;
LABEL_81:
            v91 = 0;
            while (1)
            {
              if (*v210 != v90)
              {
                objc_enumerationMutation(v87);
              }

              v92 = *(*(&v209 + 1) + 8 * v91);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                break;
              }

              if (v89 == ++v91)
              {
                v89 = [v87 countByEnumeratingWithState:&v209 objects:v242 count:16];
                if (v89)
                {
                  goto LABEL_81;
                }

                goto LABEL_87;
              }
            }

            v41 = [(MCRestrictionsPayload *)v196 _invalidFieldErrorWithFieldName:v84];

            if (!v41)
            {
              goto LABEL_91;
            }

            v30 = v191;
            goto LABEL_99;
          }

LABEL_87:

LABEL_91:
          v240 = @"values";
          v241 = v87;
          v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v241 forKeys:&v240 count:1];
          [v176 setObject:v95 forKeyedSubscript:v84];

          v30 = v191;
          v81 = v182;
          v82 = 0x1E695D000;
        }

        else
        {
          v93 = [(MCPayload *)v196 profile];
          v94 = [v93 isStub];

          if ((v94 & 1) == 0)
          {
            v41 = [(MCRestrictionsPayload *)v196 _invalidFieldErrorWithFieldName:v84];
LABEL_99:

            goto LABEL_100;
          }
        }
      }

      if (++v83 != v80)
      {
        continue;
      }

      break;
    }

    v80 = [obja countByEnumeratingWithState:&v213 objects:v243 count:16];
    if (v80)
    {
      continue;
    }

    break;
  }

  v41 = 0;
LABEL_100:
  v15 = v196;
LABEL_101:
  v77 = v171;
  v78 = v185;

  if ([v174 isStub])
  {
    goto LABEL_134;
  }

  restrictions = v15->_restrictions;
  [MCRestrictionManager unionValuesForFeature:"unionValuesForFeature:withRestrictionsDictionary:" withRestrictionsDictionary:?];
  v205 = 0u;
  v206 = 0u;
  v207 = 0u;
  v97 = v208 = 0u;
  v98 = [v97 countByEnumeratingWithState:&v205 objects:v239 count:16];
  if (v98)
  {
    v99 = v98;
    objb = *v206;
    v179 = v97;
    v183 = *MEMORY[0x1E6963570];
    while (2)
    {
      for (k = 0; k != v99; ++k)
      {
        if (*v206 != objb)
        {
          objc_enumerationMutation(v179);
        }

        v101 = *(*(&v205 + 1) + 8 * k);
        v102 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v101 allowPlaceholder:1 error:0];
        v103 = [v102 appTags];
        v104 = [v103 containsObject:@"hidden"];

        v105 = [v102 compatibilityObject];
        v106 = [v105 bundleType];
        v107 = [v106 isEqualToString:v183];

        v108 = [v102 applicationState];
        LODWORD(v105) = [v108 isAlwaysAvailable];

        if (v105 && (v104 & 1) == 0 && !v107 || (MCUnrestrictableApps(), v109 = objc_claimAutoreleasedReturnValue(), v110 = [v109 containsObject:v101], v109, v110))
        {
          v138 = v101;

          v97 = v179;
          v139 = MEMORY[0x1E696ABC0];
          v112 = MCErrorArray(@"ERROR_PROFILE_FIELD_INVALID_VALUE_P_FIELD_P_VALUE", v140, v141, v142, v143, v144, v145, v146, @"blacklistedAppBundleIDs");
          v135 = [v139 MCErrorWithDomain:@"MCPayloadErrorDomain" code:2004 descriptionArray:v112 errorType:@"MCFatalError"];
          v15 = v196;
          goto LABEL_133;
        }
      }

      v97 = v179;
      v99 = [v179 countByEnumeratingWithState:&v205 objects:v239 count:16];
      v15 = v196;
      if (v99)
      {
        continue;
      }

      break;
    }
  }

  v111 = v15->_restrictions;
  [MCRestrictionManager unionValuesForFeature:"unionValuesForFeature:withRestrictionsDictionary:" withRestrictionsDictionary:?];
  v201 = 0u;
  v202 = 0u;
  v203 = 0u;
  v112 = v204 = 0u;
  objc = [v112 countByEnumeratingWithState:&v201 objects:v238 count:16];
  if (objc)
  {
    v184 = *v202;
    v177 = *MEMORY[0x1E6963570];
    v180 = v97;
    while (2)
    {
      for (m = 0; m != objc; m = m + 1)
      {
        if (*v202 != v184)
        {
          objc_enumerationMutation(v112);
        }

        v114 = v112;
        v115 = *(*(&v201 + 1) + 8 * m);
        v116 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v115 allowPlaceholder:1 error:0];
        v117 = [v116 appTags];
        v118 = [v117 containsObject:@"hidden"];

        v119 = [v116 compatibilityObject];
        v120 = [v119 bundleType];
        v121 = [v120 isEqualToString:v177];

        v122 = [v116 applicationState];
        LODWORD(v119) = [v122 isAlwaysAvailable];

        if (v119 && (v118 & 1) == 0 && !v121 || (MCUnrestrictableApps(), v123 = objc_claimAutoreleasedReturnValue(), v124 = [v123 containsObject:v115], v123, v124))
        {
          v138 = v115;

          v112 = v114;
          v147 = MEMORY[0x1E696ABC0];
          v126 = MCErrorArray(@"ERROR_PROFILE_FIELD_INVALID_VALUE_P_FIELD_P_VALUE", v148, v149, v150, v151, v152, v153, v154, @"blockedAppBundleIDs");
          v135 = [v147 MCErrorWithDomain:@"MCPayloadErrorDomain" code:2004 descriptionArray:v126 errorType:@"MCFatalError"];
          v15 = v196;
          v97 = v180;
          goto LABEL_131;
        }

        v112 = v114;
      }

      v15 = v196;
      v97 = v180;
      objc = [v114 countByEnumeratingWithState:&v201 objects:v238 count:16];
      if (objc)
      {
        continue;
      }

      break;
    }
  }

  v125 = [MCRestrictionManager intersectedValuesForFeature:@"appLockBundleIDs" withRestrictionsDictionary:v15->_restrictions];
  v126 = v125;
  if (v125 && ![v125 count])
  {
    v165 = MEMORY[0x1E696ABC0];
    v166 = MCErrorArray(@"ERROR_PROFILE_FIELD_INVALID_VALUE_P_FIELD", v127, v128, v129, v130, v131, v132, v133, @"allowListedAppBundleIDs");
    v135 = [v165 MCErrorWithDomain:@"MCPayloadErrorDomain" code:2004 descriptionArray:v166 errorType:@"MCFatalError"];

    v138 = 0;
    v41 = v166;
LABEL_131:

    goto LABEL_132;
  }

  v200 = v41;
  v134 = [(MCRestrictionsPayload *)v15 _verifyIntersectionMaxCount:1 forFeature:@"allowedExternalIntelligenceWorkspaceIDs" error:&v200];
  v135 = v200;

  if (!v134)
  {
    v138 = 0;
LABEL_132:
    v41 = v126;
    goto LABEL_133;
  }

  v199 = v135;
  v136 = [(MCRestrictionsPayload *)v15 _verifyUnionMaxCount:4 forFeature:@"deniedICCIDsForRCS" error:&v199];
  v137 = v199;

  if (v136)
  {
    v198 = v137;
    [(MCRestrictionsPayload *)v15 _verifyUnionMaxCount:4 forFeature:@"deniedICCIDsForiMessageFaceTime" error:&v198];
    v135 = v198;
    v138 = 0;
    v41 = v137;
    goto LABEL_131;
  }

  v138 = 0;
  v41 = v126;
  v135 = v137;
LABEL_133:

  v41 = v135;
  v77 = v171;
  v78 = v185;
LABEL_134:
  if (v41)
  {
LABEL_135:
    v155 = [(MCPayload *)v15 malformedPayloadErrorWithError:v41];
    v156 = v155;
    if (v77)
    {
      v157 = v155;
      *v77 = v156;
    }

    v158 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v159 = v158;
      v160 = objc_opt_class();
      v161 = v160;
      v162 = [v156 MCVerboseDescription];
      *buf = 138543618;
      v235 = v160;
      v78 = v185;
      v236 = 2114;
      v237 = v162;
      v30 = v191;
      _os_log_impl(&dword_1A795B000, v159, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v15 = 0;
  }

  v9 = v174;
LABEL_141:

  v163 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)stubDictionary
{
  v63 = *MEMORY[0x1E69E9840];
  v58.receiver = self;
  v58.super_class = MCRestrictionsPayload;
  v3 = [(MCPayload *)&v58 stubDictionary];
  v40 = self;
  [(NSMutableDictionary *)self->_restrictions objectForKey:@"restrictedBool"];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v57 = 0u;
  v4 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v55;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v55 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v54 + 1) + 8 * i);
        v9 = [obj objectForKey:v8];
        v10 = [v9 objectForKey:@"value"];
        v11 = [v10 BOOLValue];

        v12 = [MEMORY[0x1E696AD98] numberWithBool:v11];
        [v3 setObject:v12 forKey:v8];
      }

      v5 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
    }

    while (v5);
  }

  v13 = [(NSMutableDictionary *)v40->_restrictions objectForKey:@"restrictedValue"];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v50 objects:v61 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v51;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v51 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v50 + 1) + 8 * j);
        v19 = [v13 objectForKey:v18];
        v20 = [v19 objectForKey:@"value"];

        [v3 setObject:v20 forKey:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v50 objects:v61 count:16];
    }

    while (v15);
  }

  v21 = [(NSMutableDictionary *)v40->_restrictions objectForKeyedSubscript:@"intersection", v13];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v22 = [v21 countByEnumeratingWithState:&v46 objects:v60 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v47;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v47 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v46 + 1) + 8 * k);
        v27 = [v21 objectForKeyedSubscript:v26];
        v28 = [v27 objectForKeyedSubscript:@"values"];

        [v3 setObject:v28 forKeyedSubscript:v26];
      }

      v23 = [v21 countByEnumeratingWithState:&v46 objects:v60 count:16];
    }

    while (v23);
  }

  v29 = [(NSMutableDictionary *)v40->_restrictions objectForKeyedSubscript:@"union"];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v30 = [v29 countByEnumeratingWithState:&v42 objects:v59 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v43;
    do
    {
      for (m = 0; m != v31; ++m)
      {
        if (*v43 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v42 + 1) + 8 * m);
        v35 = [v29 objectForKeyedSubscript:v34];
        v36 = [v35 objectForKeyedSubscript:@"values"];

        [v3 setObject:v36 forKeyedSubscript:v34];
      }

      v31 = [v29 countByEnumeratingWithState:&v42 objects:v59 count:16];
    }

    while (v31);
  }

  v37 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)_verifyIntersectionMaxCount:(unint64_t)a3 forFeature:(id)a4 error:(id *)a5
{
  restrictions = self->_restrictions;
  v9 = a4;
  v10 = [MCRestrictionManager intersectedValuesForFeature:v9 withRestrictionsDictionary:restrictions];
  LOBYTE(a5) = [(MCRestrictionsPayload *)self _verifyMaxCount:a3 forItems:v10 forFeature:v9 error:a5];

  return a5;
}

- (BOOL)_verifyUnionMaxCount:(unint64_t)a3 forFeature:(id)a4 error:(id *)a5
{
  restrictions = self->_restrictions;
  v9 = a4;
  v10 = [MCRestrictionManager unionValuesForFeature:v9 withRestrictionsDictionary:restrictions];
  LOBYTE(a5) = [(MCRestrictionsPayload *)self _verifyMaxCount:a3 forItems:v10 forFeature:v9 error:a5];

  return a5;
}

- (BOOL)_verifyMaxCount:(unint64_t)a3 forItems:(id)a4 forFeature:(id)a5 error:(id *)a6
{
  v9 = a5;
  v17 = [a4 count];
  if (v17 > a3)
  {
    v18 = MEMORY[0x1E696ABC0];
    v19 = MCErrorArray(@"ERROR_PROFILE_FIELD_TOO_MANY_VALUES_P_FIELD", v10, v11, v12, v13, v14, v15, v16, v9);
    *a6 = [v18 MCErrorWithDomain:@"MCRestrictionsErrorDomain" code:3005 descriptionArray:v19 errorType:@"MCFatalError"];
  }

  return v17 <= a3;
}

- (id)_restrictedFeatureStrings
{
  if (_restrictedFeatureStrings_once != -1)
  {
    [MCRestrictionsPayload _restrictedFeatureStrings];
  }

  v3 = _restrictedFeatureStrings_sStrings;

  return v3;
}

void __50__MCRestrictionsPayload__restrictedFeatureStrings__block_invoke()
{
  v165[152] = *MEMORY[0x1E69E9840];
  v164[0] = @"allowExplicitContent";
  v163 = MCLocalizedString(@"EXPLICIT_CONTENT");
  v165[0] = v163;
  v164[1] = @"allowSafari";
  v162 = MCLocalizedString(@"SAFARI");
  v165[1] = v162;
  v164[2] = @"allowiTunes";
  v161 = MCLocalizedString(@"ITUNES");
  v165[2] = v161;
  v164[3] = @"allowAppInstallation";
  v160 = MCLocalizedString(@"APP_INSTALL");
  v165[3] = v160;
  v164[4] = @"allowUIAppInstallation";
  v159 = MCLocalizedString(@"UI_APP_INSTALL");
  v165[4] = v159;
  v164[5] = @"allowAppClips";
  v158 = MCLocalizedString(@"FEATURE_APP_CLIP");
  v165[5] = v158;
  v164[6] = @"allowAppRemoval";
  v157 = MCLocalizedString(@"APP_REMOVAL");
  v165[6] = v157;
  v164[7] = @"allowSystemAppRemoval";
  v156 = MCLocalizedString(@"SYSTEM_APP_REMOVAL");
  v165[7] = v156;
  v164[8] = @"allowCamera";
  v155 = MCLocalizedString(@"CAMERA");
  v165[8] = v155;
  v164[9] = @"allowVideoConferencing";
  v154 = MCLocalizedString(@"FACETIME");
  v165[9] = v154;
  v164[10] = @"allowScreenShot";
  v153 = MCLocalizedString(@"SCREEN_SHOT");
  v165[10] = v153;
  v164[11] = @"allowRemoteScreenObservation";
  v152 = MCLocalizedString(@"REMOTE_SCREEN_OBSERVATION");
  v165[11] = v152;
  v164[12] = @"allowVoiceDialing";
  v151 = MCLocalizedString(@"VOICE_DIALING");
  v165[12] = v151;
  v164[13] = @"allowGlobalBackgroundFetchWhenRoaming";
  v150 = MCLocalizedString(@"ROAMING_FETCH");
  v165[13] = v150;
  v164[14] = @"allowMultiplayerGaming";
  v149 = MCLocalizedString(@"MULTIPLAYER");
  v165[14] = v149;
  v164[15] = @"allowAddingGameCenterFriends";
  v148 = MCLocalizedString(@"FEATURE_ADD_GC_FRIENDS");
  v165[15] = v148;
  v164[16] = @"allowCellularHDUploads";
  v147 = MCLocalizedString(@"FEATURE_HD_VIDEO_OVER_3G");
  v165[16] = v147;
  v164[17] = @"allowAccountModification";
  v146 = MCLocalizedString(@"FEATURE_ACCOUNT_MODIFICATION");
  v165[17] = v146;
  v164[18] = @"allowFindMyFriendsModification";
  v145 = MCLocalizedString(@"FEATURE_FMF_MODIFICATION");
  v165[18] = v145;
  v164[19] = @"allowAssistant";
  v144 = MCLocalizedString(@"FEATURE_ASSISTANT");
  v165[19] = v144;
  v164[20] = @"allowGameCenter";
  v143 = MCLocalizedString(@"FEATURE_GAME_CENTER");
  v165[20] = v143;
  v164[21] = @"allowChat";
  v142 = MCLocalizedString(@"FEATURE_CHAT");
  v165[21] = v142;
  v164[22] = @"allowRCSMessaging";
  v141 = MCLocalizedString(@"FEATURE_RCS_MESSAGING");
  v165[22] = v141;
  v164[23] = @"allowCloudBackup";
  v140 = MCLocalizedString(@"FEATURE_CLOUD_BACKUP");
  v165[23] = v140;
  v164[24] = @"allowPhotoStream";
  v139 = MCLocalizedString(@"FEATURE_PHOTO_STREAM");
  v165[24] = v139;
  v164[25] = @"allowCloudPhotoLibrary";
  v138 = MCLocalizedString(@"FEATURE_CLOUD_PHOTO_LIBRARY");
  v165[25] = v138;
  v164[26] = @"allowDiagnosticSubmission";
  v137 = MCLocalizedString(@"FEATURE_DIAGNOSTIC_SUB");
  v165[26] = v137;
  v164[27] = @"allowDiagnosticSubmissionModification";
  v136 = MCLocalizedString(@"FEATURE_DIAGNOSTIC_SUB_MODIFICATION");
  v165[27] = v136;
  v164[28] = @"allowSiriServerLogging";
  v135 = MCLocalizedString(@"FEATURE_SIRI_SERVER_LOGGING");
  v165[28] = v135;
  v164[29] = @"allowUntrustedTLSPrompt";
  v134 = MCLocalizedString(@"FEATURE_UNTRUSTED_TLS");
  v165[29] = v134;
  v164[30] = @"allowInAppPurchases";
  v133 = MCLocalizedString(@"FEATURE_IN_APP_PURCHASE");
  v165[30] = v133;
  v164[31] = @"allowCloudDocumentSync";
  v132 = MCLocalizedString(@"FEATURE_DOCUMENT_SYNC");
  v165[31] = v132;
  v164[32] = @"allowAssistantWhileLocked";
  v131 = MCLocalizedString(@"FEATURE_ASSISTANT_WHILE_LOCKED");
  v165[32] = v131;
  v164[33] = @"safariAllowAutoFill";
  v130 = MCLocalizedString(@"FEATURE_SAFARI_AUTO_FILL");
  v165[33] = v130;
  v164[34] = @"allowPasswordAutoFill";
  v129 = MCLocalizedString(@"FEATURE_PASSWORD_AUTO_FILL");
  v165[34] = v129;
  v164[35] = @"allowPasswordSharing";
  v128 = MCLocalizedString(@"FEATURE_PASSWORD_SHARING");
  v165[35] = v128;
  v164[36] = @"allowPasswordProximityRequests";
  v127 = MCLocalizedString(@"FEATURE_PASSWORD_PROXIMITY_REQUESTS");
  v165[36] = v127;
  v164[37] = @"allowDefaultBrowserModification";
  v126 = MCLocalizedString(@"FEATURE_DEFAULT_BROWSER_MODIFICATION");
  v165[37] = v126;
  v164[38] = @"allowDefaultCallingAppModification";
  v125 = MCLocalizedString(@"FEATURE_DEFAULT_CALLING_APP_MODIFICATION");
  v165[38] = v125;
  v164[39] = @"allowDefaultMessagingAppModification";
  v124 = MCLocalizedString(@"FEATURE_DEFAULT_MESSAGING_APP_MODIFICATION");
  v165[39] = v124;
  v164[40] = @"safariAllowJavaScript";
  v123 = MCLocalizedString(@"FEATURE_SAFARI_JAVASCRIPT");
  v165[40] = v123;
  v164[41] = @"safariAllowPopups";
  v122 = MCLocalizedString(@"FEATURE_SAFARI_POPUPS");
  v165[41] = v122;
  v164[42] = @"allowBookstore";
  v121 = MCLocalizedString(@"FEATURE_BOOKSTORE");
  v165[42] = v121;
  v164[43] = @"allowBookstoreErotica";
  v120 = MCLocalizedString(@"FEATURE_BOOKSTORE_EROTICA");
  v165[43] = v120;
  v164[44] = @"allowPassbookWhileLocked";
  v119 = MCLocalizedString(@"FEATURE_PASSBOOK");
  v165[44] = v119;
  v164[45] = @"allowSharedStream";
  v118 = MCLocalizedString(@"FEATURE_SHARED_STREAM");
  v165[45] = v118;
  v164[46] = @"allowUIConfigurationProfileInstallation";
  v117 = MCLocalizedString(@"FEATURE_UI_INSTALLATION");
  v165[46] = v117;
  v164[47] = @"allowHostPairing";
  v116 = MCLocalizedString(@"FEATURE_HOST_PAIRING");
  v165[47] = v116;
  v164[48] = @"allowEraseContentAndSettings";
  v115 = MCLocalizedString(@"FEATURE_ERASE_CONTENT_AND_SETTINGS");
  v165[48] = v115;
  v164[49] = @"allowHealth";
  v114 = MCLocalizedString(@"FEATURE_HEALTH");
  v165[49] = v114;
  v164[50] = @"allowInstalledAppNearMeSuggestions";
  v113 = MCLocalizedString(@"FEATURE_INSTALLED_APP_NEAR_ME_SUGGESTIONS");
  v165[50] = v113;
  v164[51] = @"allowUninstalledAppNearMeSuggestions";
  v112 = MCLocalizedString(@"FEATURE_UNINSTALLED_APP_NEAR_ME_SUGGESTIONS");
  v165[51] = v112;
  v164[52] = @"allowPodcasts";
  v111 = MCLocalizedString(@"FEATURE_PODCASTS");
  v165[52] = v111;
  v164[53] = @"allowFindMyDevice";
  v110 = MCLocalizedString(@"FEATURE_FIND_MY_DEVICE");
  v165[53] = v110;
  v164[54] = @"allowFindMyFriends";
  v109 = MCLocalizedString(@"FEATURE_FIND_MY_FRIENDS");
  v165[54] = v109;
  v164[55] = @"allowHome";
  v108 = MCLocalizedString(@"FEATURE_HOME");
  v165[55] = v108;
  v164[56] = @"allowEnablingRestrictions";
  v107 = MCLocalizedString(@"FEATURE_ENABLING_RESTRICTIONS");
  v165[56] = v107;
  v164[57] = @"allowAppCellularDataModification";
  v106 = MCLocalizedString(@"FEATURE_APP_CELLULAR_MODIFY");
  v165[57] = v106;
  v164[58] = @"allowCellularPlanModification";
  v105 = MCLocalizedString(@"FEATURE_CELLULAR_PLAN_MODIFY");
  v165[58] = v105;
  v164[59] = @"allowVoiceConferencing";
  v104 = MCLocalizedString(@"FEATURE_AUDIO_CONFERENCE");
  v165[59] = v104;
  v164[60] = @"allowOpenFromManagedToUnmanaged";
  v103 = MCLocalizedString(@"FEATURE_OPEN_IN_MANAGED_TO_UNMANAGED");
  v165[60] = v103;
  v164[61] = @"allowOpenFromUnmanagedToManaged";
  v102 = MCLocalizedString(@"FEATURE_OPEN_IN_UNMANAGED_TO_MANAGED");
  v165[61] = v102;
  v164[62] = @"allowCloudKeychainSync";
  v101 = MCLocalizedString(@"FEATURE_KEYCHAIN_SYNC");
  v165[62] = v101;
  v164[63] = @"allowCloudPrivateRelay";
  v100 = MCLocalizedString(@"FEATURE_CLOUD_PRIVATE_RELAY");
  v165[63] = v100;
  v164[64] = @"allowOTAPKIUpdates";
  v99 = MCLocalizedString(@"FEATURE_OTA_PKI_UPDATES");
  v165[64] = v99;
  v164[65] = @"allowAutomaticAppDownloads";
  v98 = MCLocalizedString(@"FEATURE_AUTOMATIC_APP_DOWNLOADS");
  v165[65] = v98;
  v164[66] = @"allowLockScreenTodayView";
  v97 = MCLocalizedString(@"FEATURE_LOCKSCREEN_TODAY_VIEW");
  v165[66] = v97;
  v164[67] = @"allowLockScreenNotificationsView";
  v96 = MCLocalizedString(@"FEATURE_LOCKSCREEN_NOTIFICATIONS");
  v165[67] = v96;
  v164[68] = @"allowLockScreenControlCenter";
  v95 = MCLocalizedString(@"FEATURE_LOCKSCREEN_CONTROL_CENTER");
  v165[68] = v95;
  v164[69] = @"allowAirDrop";
  v94 = MCLocalizedString(@"FEATURE_AIRDROP");
  v165[69] = v94;
  v164[70] = @"allowAirPrint";
  v93 = MCLocalizedString(@"FEATURE_AIRPRINT");
  v165[70] = v93;
  v164[71] = @"allowAirPrintiBeaconDiscovery";
  v92 = MCLocalizedString(@"FEATURE_AIRPRINT_IBEACON_DISCOVERY");
  v165[71] = v92;
  v164[72] = @"allowAirPrintCredentialsStorage";
  v91 = MCLocalizedString(@"FEATURE_AIRPRINT_CREDENTIALS_STORAGE");
  v165[72] = v91;
  v164[73] = @"allowAssistantUserGeneratedContent";
  v90 = MCLocalizedString(@"FEATURE_ASSISTANT_UNCURATED");
  v165[73] = v90;
  v164[74] = @"allowFingerprintModification";
  HasOysterCapability = MCGestaltHasOysterCapability();
  if (HasOysterCapability)
  {
    v0 = MCLocalizedString(@"FEATURE_OPTICDATA_MODIFICATION");
    v87 = 0;
  }

  else if (MCGestaltHasPearlIDCapability())
  {
    v0 = MCLocalizedString(@"FEATURE_FACEDATA_MODIFICATION");
    v87 = 0x100000000;
  }

  else
  {
    v0 = MCLocalizedString(@"FEATURE_FINGERPRINT_MODIFICATION");
    v87 = 1;
  }

  v165[74] = v0;
  v164[75] = @"allowFingerprintForUnlock";
  v86 = MCGestaltHasOysterCapability();
  if (v86)
  {
    v1 = MCLocalizedString(@"FEATURE_OPTICDATA_UNLOCK");
    v84 = 0;
  }

  else if (MCGestaltHasPearlIDCapability())
  {
    v1 = MCLocalizedString(@"FEATURE_FACEDATA_UNLOCK");
    v84 = 0x100000000;
  }

  else
  {
    v1 = MCLocalizedString(@"FEATURE_FINGERPRINT_UNLOCK");
    v84 = 1;
  }

  v165[75] = v1;
  v164[76] = @"allowFingerprintForContactlessPayment";
  v83 = MCGestaltHasOysterCapability();
  v88 = v0;
  v85 = v1;
  if (v83)
  {
    v2 = MCLocalizedString(@"FEATURE_OPTICDATA_INAPP_PAYMENT");
    v82 = 0;
    v81 = 0;
  }

  else if (MCGestaltHasPearlIDCapability())
  {
    v2 = MCLocalizedString(@"FEATURE_FACEDATA_INAPP_PAYMENT");
    v81 = 0;
    v82 = 1;
  }

  else
  {
    v2 = MCLocalizedString(@"FEATURE_FINGERPRINT_INAPP_PAYMENT");
    v82 = 0;
    v81 = 1;
  }

  v165[76] = v2;
  v164[77] = @"allowAutoUnlock";
  v80 = MCLocalizedString(@"FEATURE_AUTO_UNLOCK");
  v165[77] = v80;
  v164[78] = @"allowManagedAppsCloudSync";
  v79 = MCLocalizedString(@"FEATURE_MANAGED_APPS_CLOUD_SYNC");
  v165[78] = v79;
  v164[79] = @"allowGeotagSharing";
  v78 = MCLocalizedString(@"FEATURE_GEOTAG_SHARING");
  v165[79] = v78;
  v164[80] = @"allowSpotlightInternetResults";
  v77 = MCLocalizedString(@"FEATURE_SPOTLIGHT_INTERNET_RESULTS");
  v165[80] = v77;
  v164[81] = @"allowActivityContinuation";
  v76 = MCLocalizedString(@"FEATURE_ACTIVITY_CONTINUATION");
  v165[81] = v76;
  v164[82] = @"allowEnterpriseBookBackup";
  v75 = MCLocalizedString(@"FEATURE_ENTERPRISE_BOOK_BACKUP");
  v165[82] = v75;
  v164[83] = @"allowEnterpriseBookMetadataSync";
  v74 = MCLocalizedString(@"FEATURE_ENTERPRISE_BOOK_METADATA_SYNC");
  v165[83] = v74;
  v164[84] = @"allowPredictiveKeyboard";
  v73 = MCLocalizedString(@"FEATURE_PREDICTIVE_KEYBOARD");
  v165[84] = v73;
  v164[85] = @"allowContinuousPathKeyboard";
  v72 = MCLocalizedString(@"FEATURE_CONTINUOUS_PATH_KEYBOARD");
  v165[85] = v72;
  v164[86] = @"allowKeyboardShortcuts";
  v71 = MCLocalizedString(@"FEATURE_KEYBOARD_SHORTCUTS");
  v165[86] = v71;
  v164[87] = @"allowSpellCheck";
  v70 = MCLocalizedString(@"FEATURE_SPELL_CHECK");
  v165[87] = v70;
  v164[88] = @"allowAutoCorrection";
  v69 = MCLocalizedString(@"FEATURE_AUTOCORRECTION");
  v165[88] = v69;
  v164[89] = @"allowDefinitionLookup";
  v68 = MCLocalizedString(@"FEATURE_DEFINITION_LOOKUP");
  v165[89] = v68;
  v164[90] = @"allowSelectedTextSharing";
  v67 = MCLocalizedString(@"FEATURE_SELECTED_TEXT_SHARING");
  v165[90] = v67;
  v164[91] = @"allowPairedWatch";
  v66 = MCLocalizedString(@"FEATURE_PAIRED_WATCH");
  v165[91] = v66;
  v164[92] = @"allowPasscodeModification";
  v65 = MCLocalizedString(@"FEATURE_PASSCODE_MODIFICATION");
  v165[92] = v65;
  v164[93] = @"allowDeviceNameModification";
  v64 = MCLocalizedString(@"FEATURE_DEVICE_NAME_MODIFICATION");
  v165[93] = v64;
  v164[94] = @"allowWallpaperModification";
  v63 = MCLocalizedString(@"FEATURE_WALLPAPER_MODIFICATION");
  v165[94] = v63;
  v164[95] = @"allowEnterpriseAppTrust";
  v62 = MCLocalizedString(@"FEATURE_ENTERPRISE_APP_TRUST");
  v165[95] = v62;
  v164[96] = @"allowNews";
  v61 = MCLocalizedString(@"FEATURE_NEWS_APP");
  v165[96] = v61;
  v164[97] = @"allowMusicService";
  v60 = MCLocalizedString(@"FEATURE_MUSIC_SERVICE");
  v165[97] = v60;
  v164[98] = @"allowRadioService";
  v59 = MCLocalizedString(@"FEATURE_RADIO_SERVICE");
  v165[98] = v59;
  v164[99] = @"allowBluetoothModification";
  v58 = MCLocalizedString(@"FEATURE_BLUETOOTH_MODIFICATION");
  v165[99] = v58;
  v164[100] = @"allowPersonalHotspotModification";
  v57 = MCLocalizedString(@"FEATURE_PERSONALHOTSPOT_MODIFICATION");
  v165[100] = v57;
  v164[101] = @"allowNFC";
  v56 = MCLocalizedString(@"FEATURE_NFC_ALLOWED");
  v165[101] = v56;
  v164[102] = @"allowNotificationsModification";
  v55 = MCLocalizedString(@"FEATURE_NOTIFICATIONS_MODIFICATION");
  v165[102] = v55;
  v164[103] = @"allowTodayView";
  v54 = MCLocalizedString(@"FEATURE_TODAY_VIEW");
  v165[103] = v54;
  v164[104] = @"allowTodayViewModification";
  v53 = MCLocalizedString(@"FEATURE_TODAY_VIEW_MODIFICATION");
  v165[104] = v53;
  v164[105] = @"allowDictation";
  v52 = MCLocalizedString(@"FEATURE_DICTATION");
  v165[105] = v52;
  v164[106] = @"allowRemoteAppPairing";
  v51 = MCLocalizedString(@"FEATURE_REMOTE_APP_PAIRING");
  v165[106] = v51;
  v164[107] = @"allowAirPlayIncomingRequests";
  v50 = MCLocalizedString(@"FEATURE_AIRPLAY_INCOMING_REQUESTS_ALLOWED");
  v165[107] = v50;
  v164[108] = @"allowVPNCreation";
  v49 = MCLocalizedString(@"FEATURE_VPN_CREATION");
  v165[108] = v49;
  v164[109] = @"allowDriverDoNotDisturbModifications";
  v48 = MCLocalizedString(@"FEATURE_DRIVER_DO_NOT_DISTURB_MODIFICATIONS");
  v165[109] = v48;
  v164[110] = @"allowProximitySetupToNewDevice";
  v47 = MCLocalizedString(@"FEATURE_PROXIMITY_SET_UP");
  v165[110] = v47;
  v164[111] = @"allowUSBRestrictedMode";
  v46 = MCLocalizedString(@"FEATURE_USB_RESTRICTED_MODE");
  v165[111] = v46;
  v164[112] = @"allowESIMModification";
  v45 = MCLocalizedString(@"FEATURE_ESIM_MODIFICATION");
  v165[112] = v45;
  v164[113] = @"allowFilesUSBDriveAccess";
  v44 = MCLocalizedString(@"FEATURE_USB_DRIVE_ACCESS_IN_FILES");
  v165[113] = v44;
  v164[114] = @"allowUSBDriveAccess";
  v43 = MCLocalizedString(@"FEATURE_USB_DRIVE_ACCESS");
  v165[114] = v43;
  v164[115] = @"allowFilesNetworkDriveAccess";
  v42 = MCLocalizedString(@"FEATURE_NETWORK_DRIVE_ACCESS_IN_FILES");
  v165[115] = v42;
  v164[116] = @"allowDeviceSleep";
  v41 = MCLocalizedString(@"FEATURE_DEVICE_SLEEP");
  v165[116] = v41;
  v164[117] = @"allowAutomaticScreenSaver";
  v40 = MCLocalizedString(@"FEATURE_AUTOMATIC_SCREEN_SAVER");
  v165[117] = v40;
  v164[118] = @"allowSharedDeviceTemporarySession";
  v39 = MCLocalizedString(@"FEATURE_SHARED_DEVICE_TEMPORARY_SESSION");
  v165[118] = v39;
  v164[119] = @"allowApplePersonalizedAdvertising";
  v38 = MCLocalizedString(@"FEATURE_APPLE_PERSONALIZED_ADVERTISING");
  v165[119] = v38;
  v164[120] = @"allowMailPrivacyProtection";
  v37 = MCLocalizedString(@"FEATURE_MAIL_PRIVACY_PROTECTION");
  v165[120] = v37;
  v164[121] = @"allowRapidSecurityResponseInstallation";
  v36 = MCLocalizedString(@"FEATURE_RAPID_SECURITY_RESPONSE_INSTALLATION");
  v165[121] = v36;
  v164[122] = @"allowRapidSecurityResponseRemoval";
  v35 = MCLocalizedString(@"FEATURE_RAPID_SECURITY_RESPONSE_REMOVAL");
  v165[122] = v35;
  v164[123] = @"allowiPhoneWidgetsOnMac";
  v34 = MCLocalizedString(@"FEATURE_IPHONE_WIDGETS_ON_MAC");
  v165[123] = v34;
  v164[124] = @"allowAppsToBeHidden";
  v33 = MCLocalizedString(@"FEATURE_HIDDEN_APPS");
  v165[124] = v33;
  v164[125] = @"allowAppsToBeLocked";
  v32 = MCLocalizedString(@"FEATURE_LOCKED_APPS");
  v165[125] = v32;
  v164[126] = @"allowLiveVoicemail";
  v31 = MCLocalizedString(@"FEATURE_LIVE_VOICEMAIL");
  v165[126] = v31;
  v164[127] = @"allowCallRecording";
  v30 = MCLocalizedString(@"FEATURE_CALL_RECORDING");
  v165[127] = v30;
  v164[128] = @"allowMarketplaceAppInstallation";
  v29 = MCLocalizedString(@"FEATURE_MARKETPLACE_APP_INSTALLATION");
  v165[128] = v29;
  v164[129] = @"allowWebDistributionAppInstallation";
  v28 = MCLocalizedString(@"FEATURE_WEB_APP_INSTALLATION");
  v165[129] = v28;
  v164[130] = @"allowAutoDim";
  v27 = MCLocalizedString(@"FEATURE_AUTO_DIM");
  v165[130] = v27;
  v164[131] = @"allowESIMOutgoingTransfers";
  v26 = MCLocalizedString(@"FEATURE_ESIM_OUTGOING_TRANSFER");
  v165[131] = v26;
  v164[132] = @"allowExternalIntelligenceIntegrations";
  v25 = MCLocalizedString(@"FEATURE_EXTERNAL_INTELLIGENCE");
  v165[132] = v25;
  v164[133] = @"allowExternalIntelligenceIntegrationsSignIn";
  v24 = MCLocalizedString(@"FEATURE_EXTERNAL_INTELLIGENCE_SIGN_IN");
  v165[133] = v24;
  v164[134] = @"allowiPhoneMirroring";
  v23 = MCLocalizedString(@"FEATURE_IPHONE_MIRRORING");
  v165[134] = v23;
  v164[135] = @"allowPersonalizedHandwritingResults";
  v22 = MCLocalizedString(@"FEATURE_PERSONALIZED_HANDWRITING");
  v165[135] = v22;
  v164[136] = @"allowGenmoji";
  v21 = MCLocalizedString(@"FEATURE_GENMOJI");
  v165[136] = v21;
  v164[137] = @"allowImagePlayground";
  v20 = MCLocalizedString(@"FEATURE_IMAGE_PLAYGROUND");
  v165[137] = v20;
  v164[138] = @"allowImageWand";
  v19 = MCLocalizedString(@"FEATURE_IMAGE_WAND");
  v165[138] = v19;
  v164[139] = @"allowiPhoneMirroring";
  v18 = MCLocalizedString(@"FEATURE_FEATURE3");
  v165[139] = v18;
  v164[140] = @"allowVideoConferencingRemoteControl";
  v17 = MCLocalizedString(@"FEATURE_VIDEO_CONFERENCING_REMOTE_CONTROL");
  v165[140] = v17;
  v164[141] = @"allowWritingTools";
  v16 = MCLocalizedString(@"FEATURE_WRITING_TOOLS");
  v165[141] = v16;
  v164[142] = @"allowMailSummary";
  v15 = MCLocalizedString(@"FEATURE_MAIL_SUMMARY");
  v165[142] = v15;
  v164[143] = @"allowMailSmartReplies";
  v3 = MCLocalizedString(@"FEATURE_MAIL_SMART_REPLIES");
  v165[143] = v3;
  v164[144] = @"allowSafariSummary";
  v4 = MCLocalizedString(@"FEATURE_SAFARI_SUMMARY");
  v165[144] = v4;
  v164[145] = @"allowNotesTranscription";
  v5 = MCLocalizedString(@"FEATURE_NOTES_TRANSCRIPTION");
  v165[145] = v5;
  v164[146] = @"allowNotesTranscriptionSummary";
  v6 = MCLocalizedString(@"FEATURE_NOTES_TRANSCRIPTION_SUMMARY");
  v165[146] = v6;
  v164[147] = @"allowVisualIntelligenceSummary";
  v7 = MCLocalizedString(@"FEATURE_VISUAL_INTELLIGENCE_SUMMARY");
  v165[147] = v7;
  v164[148] = @"allowSatelliteConnection";
  v8 = MCLocalizedString(@"FEATURE_SATELLITE_CONNECTION");
  v165[148] = v8;
  v164[149] = @"allowAppleIntelligenceReport";
  v9 = MCLocalizedString(@"FEATURE_APPLE_INTELLIGENCE_REPORT");
  v165[149] = v9;
  v164[150] = @"allowSafariPrivateBrowsing";
  v10 = MCLocalizedString(@"FEATURE_SAFARI_PRIVATE_BROWSING");
  v165[150] = v10;
  v164[151] = @"allowSafariHistoryClearing";
  v11 = MCLocalizedString(@"FEATURE_SAFARI_HISTORY_CLEARING");
  v165[151] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v165 forKeys:v164 count:152];
  v13 = _restrictedFeatureStrings_sStrings;
  _restrictedFeatureStrings_sStrings = v12;

  if (v81)
  {
  }

  if (v82)
  {
  }

  if (v83)
  {
  }

  if (v84)
  {
  }

  if (HIDWORD(v84))
  {
  }

  if (v86)
  {
  }

  if (v87)
  {
  }

  if (HIDWORD(v87))
  {
  }

  if (HasOysterCapability)
  {
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)_enforcedFeatureStrings
{
  if (_enforcedFeatureStrings_onceToken != -1)
  {
    [MCRestrictionsPayload _enforcedFeatureStrings];
  }

  v3 = _enforcedFeatureStrings_sStrings;

  return v3;
}

void __48__MCRestrictionsPayload__enforcedFeatureStrings__block_invoke()
{
  v38[31] = *MEMORY[0x1E69E9840];
  v37[0] = @"forceITunesStorePasswordEntry";
  v36 = MCLocalizedString(@"FEATURE_ENTER_ITUNES_PASSWORD");
  v38[0] = v36;
  v37[1] = @"forceFIPSVerification";
  v35 = MCLocalizedString(@"FEATURE_FIPS");
  v38[1] = v35;
  v37[2] = @"forceAssistantProfanityFilter";
  v34 = MCLocalizedString(@"FEATURE_ASSISTANT_PROF_FILTER");
  v38[2] = v34;
  v37[3] = @"forceAuthenticationBeforeAutoFill";
  v33 = MCLocalizedString(@"FEATURE_AUTHENTICATE_BEFORE_AUTO_FILL");
  v38[3] = v33;
  v37[4] = @"forceEncryptedBackup";
  v32 = MCLocalizedString(@"FEATURE_ENCRYPTED_BACKUPS");
  v38[4] = v32;
  v37[5] = @"safariForceFraudWarning";
  v31 = MCLocalizedString(@"FEATURE_SAFARI_FRAUD_WARNING");
  v38[5] = v31;
  v37[6] = @"forceLimitAdTracking";
  v30 = MCLocalizedString(@"FEATURE_FORCE_LIMIT_AD_TRACKING");
  v38[6] = v30;
  v37[7] = @"forceAirPlayOutgoingRequestsPairingPassword";
  v29 = MCLocalizedString(@"FEATURE_AIRPLAY_OUTGOING_REQUESTS_PAIRING_PASSWORD");
  v38[7] = v29;
  v37[8] = @"forceAirPlayIncomingRequestsPairingPassword";
  v28 = MCLocalizedString(@"FEATURE_AIRPLAY_INCOMING_REQUESTS_PAIRING_PASSWORD");
  v38[8] = v28;
  v37[9] = @"forceWatchWristDetection";
  v27 = MCLocalizedString(@"FEATURE_WATCH_WRIST_DETECT");
  v38[9] = v27;
  v37[10] = @"forceConferenceRoomDisplay";
  v26 = MCLocalizedString(@"FEATURE_CONFERENCE_ROOM_MODE");
  v38[10] = v26;
  v37[11] = @"forceAirDropUnmanaged";
  v25 = MCLocalizedString(@"FEATURE_AIRDROP_UNMANAGED");
  v38[11] = v25;
  v37[12] = @"forceDelayedSoftwareUpdates";
  v24 = MCLocalizedString(@"FEATURE_DELAYED_SOFTWARE_UPDATES");
  v38[12] = v24;
  v37[13] = @"forceWiFiWhitelisting";
  v23 = [@"FEATURE_WIFI_ALLOW_LIST" MCAppendGreenteaSuffix];
  v22 = MCLocalizedString(v23);
  v38[13] = v22;
  v37[14] = @"forceWiFiToAllowedNetworksOnly";
  v21 = [@"FEATURE_WIFI_ALLOWED_NETWORKS_ONLY" MCAppendGreenteaSuffix];
  v20 = MCLocalizedString(v21);
  v38[14] = v20;
  v37[15] = @"forceWiFiPowerOn";
  v19 = [@"FEATURE_WIFI_POWER_MODIFICATION" MCAppendGreenteaSuffix];
  v18 = MCLocalizedString(v19);
  v38[15] = v18;
  v37[16] = @"forceAutomaticDateAndTime";
  v17 = MCLocalizedString(@"FEATURE_AUTOMATIC_DATE_TIME");
  v38[16] = v17;
  v37[17] = @"forceAirPrintTrustedTLSRequirement";
  v16 = MCLocalizedString(@"FEATURE_AIRPRINT_TRUSTED_TLS_REQUIREMENT");
  v38[17] = v16;
  v37[18] = @"forceClassroomUnpromptedScreenObservation";
  v15 = MCLocalizedString(@"FEATURE_CLASSROOM_UNPROMPTED_SCREEN_OBSERVATION");
  v38[18] = v15;
  v37[19] = @"forceUnpromptedManagedClassroomScreenObservation";
  v14 = MCLocalizedString(@"FEATURE_CLASSROOM_UNPROMPTED_SCREEN_OBSERVATION");
  v38[19] = v14;
  v37[20] = @"forceClassroomAutomaticallyJoinClasses";
  v13 = MCLocalizedString(@"FEATURE_CLASSROOM_AUTOMATICALLY_JOIN_CLASSES");
  v38[20] = v13;
  v37[21] = @"forceClassroomUnpromptedAppAndDeviceLock";
  v0 = MCLocalizedString(@"FEATURE_CLASSROOM_UNPROMPTED_APP_AND_DEVICE_LOCK");
  v38[21] = v0;
  v37[22] = @"forceClassroomRequestPermissionToLeaveClasses";
  v1 = MCLocalizedString(@"FEATURE_CLASSROOM_REQUEST_PERMISSION_TO_LEAVE_CLASSES");
  v38[22] = v1;
  v37[23] = @"allowManagedToWriteUnmanagedContacts";
  v2 = MCLocalizedString(@"FEATURE_MANAGED_WRITE_UNMANAGED_CONTACTS");
  v38[23] = v2;
  v37[24] = @"allowUnmanagedToReadManagedContacts";
  v3 = MCLocalizedString(@"FEATURE_UNMANAGED_READ_MANAGED_CONTACTS");
  v38[24] = v3;
  v37[25] = @"requireManagedPasteboard";
  v4 = MCLocalizedString(@"FEATURE_MANAGED_PASTEBOARD_REQUIRED");
  v38[25] = v4;
  v37[26] = @"allowDeprecatedWebKitTLS";
  v5 = MCLocalizedString(@"FEATURE_WEBKIT_DEPRECATED_TLS");
  v38[26] = v5;
  v37[27] = @"allowUnpairedExternalBootToRecovery";
  v6 = MCLocalizedString(@"FEATURE_UNPAIRED_EXTERNAL_BOOT_TO_RECOVERY");
  v38[27] = v6;
  v37[28] = @"forceOnDeviceOnlyDictation";
  v7 = MCLocalizedStringByDevice(@"FEATURE_ON_DEVICE_ONLY_DICTATION");
  v38[28] = v7;
  v37[29] = @"forceOnDeviceOnlyTranslation";
  v8 = MCLocalizedStringByDevice(@"FEATURE_ON_DEVICE_ONLY_TRANSLATION");
  v38[29] = v8;
  v37[30] = @"forcePreserveESIMOnErase";
  v9 = MCLocalizedString(@"FEATURE_PRESERVE_ESIM_ON_ERASE");
  v38[30] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:31];
  v11 = _enforcedFeatureStrings_sStrings;
  _enforcedFeatureStrings_sStrings = v10;

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_intersectionStrings
{
  if (_intersectionStrings_onceToken != -1)
  {
    [MCRestrictionsPayload _intersectionStrings];
  }

  v3 = _intersectionStrings_sStrings;

  return v3;
}

void __45__MCRestrictionsPayload__intersectionStrings__block_invoke()
{
  v10[6] = *MEMORY[0x1E69E9840];
  v9[0] = @"autonomousSingleAppModePermittedAppIDs";
  v0 = MCLocalizedString(@"FEATURE_AUTONOMOUS_SAM_ALLOW_LIST");
  v10[0] = v0;
  v9[1] = @"appLockBundleIDs";
  v1 = MCLocalizedString(@"FEATURE_APP_ALLOW_LIST");
  v10[1] = v1;
  v9[2] = @"allowedExternalIntelligenceAccountDomains";
  v2 = MCLocalizedString(@"FEATURE_EXTERNAL_INTELLIGENCE_DOMAIN_LIST");
  v10[2] = v2;
  v9[3] = @"allowedExternalIntelligenceWorkspaceIDs";
  v3 = MCLocalizedString(@"FEATURE_EXTERNAL_INTELLIGENCE_WORKSPACE_IDS");
  v10[3] = v3;
  v9[4] = @"allowedCameraRestrictionBundleIDs";
  v4 = MCLocalizedString(@"FEATURE_CAMERA_RESTRICTION_BUNDLE_IDS");
  v10[4] = v4;
  v9[5] = @"ratingAppsExemptedBundleIDs";
  v5 = MCLocalizedString(@"FEATURE_APPS_RATING_EXEMPTED");
  v10[5] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v7 = _intersectionStrings_sStrings;
  _intersectionStrings_sStrings = v6;

  v8 = *MEMORY[0x1E69E9840];
}

- (id)_unionStrings
{
  if (_unionStrings_onceToken != -1)
  {
    [MCRestrictionsPayload _unionStrings];
  }

  v3 = _unionStrings_sStrings;

  return v3;
}

void __38__MCRestrictionsPayload__unionStrings__block_invoke()
{
  v8[4] = *MEMORY[0x1E69E9840];
  v7[0] = @"blacklistedAppBundleIDs";
  v0 = MCLocalizedString(@"FEATURE_PROHIBITED_APPS");
  v8[0] = v0;
  v7[1] = @"blockedAppBundleIDs";
  v1 = MCLocalizedString(@"FEATURE_PROHIBITED_APPS");
  v8[1] = v1;
  v7[2] = @"deniedICCIDsForRCS";
  v2 = MCLocalizedString(@"FEATURE_RCS_ICCIDS");
  v8[2] = v2;
  v7[3] = @"deniedICCIDsForiMessageFaceTime";
  v3 = MCLocalizedString(@"FEATURE_IMESSAGE_ICCIDS");
  v8[3] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v5 = _unionStrings_sStrings;
  _unionStrings_sStrings = v4;

  v6 = *MEMORY[0x1E69E9840];
}

- (id)_defaultValueRestrictions
{
  v20[3] = *MEMORY[0x1E69E9840];
  if (_defaultValueRestrictions_once != -1)
  {
    [MCRestrictionsPayload _defaultValueRestrictions];
  }

  v19[0] = @"normalMax";
  v2 = [MCRestrictionManager maximumValueForSetting:@"enforcedSoftwareUpdateDelay"];
  v20[0] = v2;
  v19[1] = @"normalMin";
  v3 = [MCRestrictionManager minimumValueForSetting:@"enforcedSoftwareUpdateDelay"];
  v20[1] = v3;
  v19[2] = @"localizedString";
  v4 = +[MCRestrictionManager sharedManager];
  v5 = [v4 effectiveValueForSetting:@"enforcedSoftwareUpdateDelay"];
  v6 = [v5 unsignedIntValue];
  v14 = MCLocalizedFormat(@"FEATURE_SOFTWARE_UPDATE_DELAY", v7, v8, v9, v10, v11, v12, v13, v6);
  v20[2] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
  [_defaultValueRestrictions_dict setObject:v15 forKeyedSubscript:@"enforcedSoftwareUpdateDelay"];

  v16 = _defaultValueRestrictions_dict;
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

void __50__MCRestrictionsPayload__defaultValueRestrictions__block_invoke()
{
  v29[4] = *MEMORY[0x1E69E9840];
  v28[0] = @"ratingMovies";
  v26[0] = @"normalMax";
  v19 = [MCRestrictionManager maximumValueForSetting:@"ratingMovies"];
  v27[0] = v19;
  v26[1] = @"normalMin";
  v18 = [MCRestrictionManager minimumValueForSetting:@"ratingMovies"];
  v27[1] = v18;
  v26[2] = @"localizedString";
  v17 = MCLocalizedString(@"MOVIE_RATING");
  v27[2] = v17;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
  v29[0] = v16;
  v28[1] = @"ratingTVShows";
  v24[0] = @"normalMax";
  v15 = [MCRestrictionManager maximumValueForSetting:@"ratingTVShows"];
  v25[0] = v15;
  v24[1] = @"normalMin";
  v14 = [MCRestrictionManager minimumValueForSetting:@"ratingTVShows"];
  v25[1] = v14;
  v24[2] = @"localizedString";
  v13 = MCLocalizedString(@"TV_SHOW_RATING");
  v25[2] = v13;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v29[1] = v0;
  v28[2] = @"ratingApps";
  v22[0] = @"normalMax";
  v1 = [MCRestrictionManager maximumValueForSetting:@"ratingApps"];
  v23[0] = v1;
  v22[1] = @"normalMin";
  v2 = [MCRestrictionManager minimumValueForSetting:@"ratingApps"];
  v23[1] = v2;
  v22[2] = @"localizedString";
  v3 = MCLocalizedString(@"APP_RATING");
  v23[2] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v29[2] = v4;
  v28[3] = @"safariAcceptCookies";
  v20[0] = @"normalMax";
  v5 = [MCRestrictionManager maximumValueForSetting:@"safariAcceptCookies"];
  v21[0] = v5;
  v20[1] = @"normalMin";
  v6 = [MCRestrictionManager minimumValueForSetting:@"safariAcceptCookies"];
  v21[1] = v6;
  v20[2] = @"localizedString";
  v7 = MCLocalizedString(@"FEATURE_SAFARI_ACCEPT_COOKIES");
  v21[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v29[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:4];
  v10 = [v9 mutableCopy];
  v11 = _defaultValueRestrictions_dict;
  _defaultValueRestrictions_dict = v10;

  v12 = *MEMORY[0x1E69E9840];
}

- (id)localizedRestrictionStrings
{
  v99 = *MEMORY[0x1E69E9840];
  v76 = objc_opt_new();
  v3 = self->_restrictions;
  v4 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v5 = [v4 isSupervised];

  if ((v5 & 1) == 0)
  {
    v6 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v98 = "[MCRestrictionsPayload localizedRestrictionStrings]";
      _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_DEFAULT, "%s, Filter grandfathered restrictions", buf, 0xCu);
    }

    v7 = [MCRestrictionManager filterGrandfatheredRestrictionsIfNeededFromRestrictions:self->_restrictions];

    v3 = v7;
  }

  v8 = [(NSMutableDictionary *)v3 objectForKeyedSubscript:@"restrictedBool"];
  v9 = [v8 mutableCopy];

  v10 = [(NSMutableDictionary *)v3 objectForKeyedSubscript:@"restrictedValue"];
  v11 = [(NSMutableDictionary *)v3 objectForKeyedSubscript:@"intersection"];
  v69 = v3;
  v74 = [(NSMutableDictionary *)v3 objectForKeyedSubscript:@"union"];
  v12 = [v9 objectForKey:@"allowCamera"];
  v13 = [v12 objectForKey:@"value"];

  if (v13 && ([v13 BOOLValue] & 1) == 0)
  {
    [v9 removeObjectForKey:@"allowVideoConferencing"];
  }

  v14 = [v9 objectForKey:@"allowAppRemoval"];
  v15 = [v14 objectForKey:@"value"];

  if (v15 && ([v15 BOOLValue] & 1) == 0)
  {
    [v9 removeObjectForKey:@"allowSystemAppRemoval"];
  }

  v16 = [v9 objectForKey:@"allowAirPrint"];
  v17 = [v16 objectForKey:@"value"];

  v73 = v17;
  if (v17 && ([v17 BOOLValue] & 1) == 0)
  {
    [v9 removeObjectForKey:@"forceAirPrintTrustedTLSRequirement"];
    [v9 removeObjectForKey:@"allowAirPrintiBeaconDiscovery"];
    [v9 removeObjectForKey:@"allowAirPrintCredentialsStorage"];
  }

  v68 = v13;
  if (([MEMORY[0x1E6999800] isSharediPad] & 1) == 0)
  {
    [v9 removeObjectForKey:@"allowSharedDeviceTemporarySession"];
  }

  v71 = v10;
  v72 = v9;
  v70 = v11;
  if ([v9 count])
  {
    v18 = self;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v19 = v9;
    v20 = [v19 countByEnumeratingWithState:&v89 objects:v96 count:16];
    if (!v20)
    {
      goto LABEL_32;
    }

    v21 = v20;
    v22 = *v90;
    while (1)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v90 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v89 + 1) + 8 * i);
        v25 = [v19 objectForKey:v24];
        v26 = [v25 objectForKey:@"value"];

        if (v26)
        {
          if ([v26 BOOLValue])
          {
            if (![v26 BOOLValue])
            {
              goto LABEL_30;
            }

            v27 = [(MCRestrictionsPayload *)v18 _enforcedFeatureStrings];
          }

          else
          {
            v27 = [(MCRestrictionsPayload *)v18 _restrictedFeatureStrings];
          }

          v28 = v27;
          v29 = [v27 objectForKey:v24];

          if (v29)
          {
            [v76 addObject:v29];
          }
        }

LABEL_30:
      }

      v21 = [v19 countByEnumeratingWithState:&v89 objects:v96 count:16];
      if (!v21)
      {
LABEL_32:

        self = v18;
        v10 = v71;
        v9 = v72;
        v11 = v70;
        break;
      }
    }
  }

  if ([v10 count])
  {
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v30 = v10;
    v31 = [v30 countByEnumeratingWithState:&v85 objects:v95 count:16];
    if (v31)
    {
      v32 = v31;
      v75 = *v86;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v86 != v75)
          {
            objc_enumerationMutation(v30);
          }

          v34 = *(*(&v85 + 1) + 8 * j);
          v35 = [(MCRestrictionsPayload *)self _defaultValueRestrictions];
          v36 = [v35 objectForKey:v34];

          if (v36)
          {
            v37 = self;
            v38 = [v30 objectForKeyedSubscript:v34];
            v39 = [v38 objectForKeyedSubscript:@"value"];
            v40 = [v38 objectForKeyedSubscript:@"preferSmallerValues"];
            if ([v40 BOOLValue])
            {
              v41 = @"normalMax";
            }

            else
            {
              v41 = @"normalMin";
            }

            v42 = [v36 objectForKeyedSubscript:v41];
            if (v39)
            {
              v43 = [v39 compare:v42];
              v44 = [v40 BOOLValue];
              v45 = -1;
              if (!v44)
              {
                v45 = 1;
              }

              if (v43 == v45)
              {
                v46 = [v36 objectForKey:@"localizedString"];
                [v76 addObject:v46];
              }
            }

            self = v37;
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v85 objects:v95 count:16];
      }

      while (v32);
    }

    v10 = v71;
    v9 = v72;
    v11 = v70;
  }

  if ([v11 count])
  {
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v47 = v11;
    v48 = [v47 countByEnumeratingWithState:&v81 objects:v94 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v82;
      do
      {
        for (k = 0; k != v49; ++k)
        {
          if (*v82 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = *(*(&v81 + 1) + 8 * k);
          v53 = [(MCRestrictionsPayload *)self _intersectionStrings];
          v54 = [v53 objectForKeyedSubscript:v52];

          if (v54)
          {
            [v76 addObject:v54];
          }
        }

        v49 = [v47 countByEnumeratingWithState:&v81 objects:v94 count:16];
      }

      while (v49);
    }
  }

  v55 = v74;
  if ([v74 count])
  {
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v56 = v74;
    v57 = [v56 countByEnumeratingWithState:&v77 objects:v93 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v78;
      do
      {
        for (m = 0; m != v58; ++m)
        {
          if (*v78 != v59)
          {
            objc_enumerationMutation(v56);
          }

          v61 = *(*(&v77 + 1) + 8 * m);
          v62 = [(MCRestrictionsPayload *)self _unionStrings];
          v63 = [v62 objectForKeyedSubscript:v61];

          if (v63)
          {
            [v76 addObject:v63];
          }
        }

        v58 = [v56 countByEnumeratingWithState:&v77 objects:v93 count:16];
      }

      while (v58);
    }

    v55 = v74;
  }

  v64 = [v76 copy];

  v65 = *MEMORY[0x1E69E9840];

  return v64;
}

- (id)installationWarnings
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = +[MCRestrictionManager sharedManager];
  v5 = [v4 restrictedBoolForFeature:@"allowPhotoStream"];

  v6 = [(MCRestrictionsPayload *)self restrictions];
  v7 = [MCRestrictionManager restrictedBoolForFeature:@"allowPhotoStream" withRestrictionsDictionary:v6];

  if (v5 != 2 && v7 == 2)
  {
    v9 = MCPLPhotoLibraryClass();
    if (v9)
    {
      v10 = [v9 sharedPhotoLibrary];
      [v10 photoStreamAlbums];
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v11 = v57 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v54 objects:v64 count:16];
      v13 = v11;
      if (v12)
      {
        v14 = v12;
        v15 = *v55;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v55 != v15)
            {
              objc_enumerationMutation(v11);
            }

            if (![*(*(&v54 + 1) + 8 * i) isEmpty])
            {

              v13 = MCLocalizedString(@"INSTALL_WARNING_PHOTO_STREAM_RESTRICTION");
              v17 = MCLocalizedStringByDevice(@"INSTALL_WARNING_PHOTO_STREAM");
              v18 = [MCProfileWarning warningWithLocalizedTitle:v13 localizedBody:v17 isLongForm:0];
              [v3 addObject:v18];

              goto LABEL_17;
            }
          }

          v14 = [v11 countByEnumeratingWithState:&v54 objects:v64 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }

        v13 = v11;
      }

LABEL_17:
    }

    else
    {
      v19 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1A795B000, v19, OS_LOG_TYPE_DEBUG, "Cannot load PLPhotoLibrary class. Not creating Photo Stream warning.", buf, 2u);
      }
    }
  }

  v20 = +[MCRestrictionManager sharedManager];
  v21 = [v20 restrictedBoolForFeature:@"allowCloudPhotoLibrary"];

  v22 = [(MCRestrictionsPayload *)self restrictions];
  v23 = [MCRestrictionManager restrictedBoolForFeature:@"allowCloudPhotoLibrary" withRestrictionsDictionary:v22];

  if (v21 != 2 && v23 == 2)
  {
    v52 = 0;
    v53 = 0;
    v51 = 0;
    v25 = MCPLManagedAssetClass();
    v26 = MCPLPhotoLibraryClass();
    if (v25 && v26)
    {
      v27 = [v26 sharedPhotoLibrary];
      [v25 countOfAssetsWithRequiredResourcesNotLocallyAvailableInLibrary:v27 outCount:&v53 photoCount:&v52 videoCount:&v51];

      v28 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218496;
        v59 = v53;
        v60 = 2048;
        v61 = v52;
        v62 = 2048;
        v63 = v51;
        _os_log_impl(&dword_1A795B000, v28, OS_LOG_TYPE_DEBUG, "Photo library non-local assets: count:%lu photo:%lu video:%lu]", buf, 0x20u);
      }

      if (v53 < 2)
      {
        if (v52 == 1)
        {
          v38 = @"INSTALL_WARNING_CLOUD_PHOTO_LIBRARY_PHOTO_SINGULAR_DESTRUCTIVE";
        }

        else if (v51 == 1)
        {
          v38 = @"INSTALL_WARNING_CLOUD_PHOTO_LIBRARY_VIDEO_SINGULAR_DESTRUCTIVE";
        }

        else
        {
          v38 = @"INSTALL_WARNING_CLOUD_PHOTO_LIBRARY";
        }

        v36 = MCLocalizedStringByDevice(v38);
      }

      else
      {
        v36 = MCLocalizedFormatByDevice(@"INSTALL_WARNING_CLOUD_PHOTO_LIBRARY_PHOTOS_VIDEOS_DESTRUCTIVE", v29, v30, v31, v32, v33, v34, v35, v53);
      }

      v39 = v36;
      v40 = MCLocalizedString(@"INSTALL_WARNING_CLOUD_PHOTO_LIBRARY_RESTRICTION");
      v41 = [MCProfileWarning warningWithLocalizedTitle:v40 localizedBody:v39 isLongForm:0];
      [v3 addObject:v41];
    }

    else
    {
      v37 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1A795B000, v37, OS_LOG_TYPE_DEBUG, "Cannot load PLManagedAssetClass or PLPhotoLibraryClass. Not creating Cloud Photo Library warning.", buf, 2u);
      }
    }
  }

  v42 = +[MCRestrictionManager sharedManager];
  v43 = [v42 restrictedBoolForFeature:@"allowPairedWatch"];

  v44 = [(MCRestrictionsPayload *)self restrictions];
  v45 = [MCRestrictionManager restrictedBoolForFeature:@"allowPairedWatch" withRestrictionsDictionary:v44];

  if (v43 != 2 && v45 == 2)
  {
    v46 = MCLocalizedString(@"INSTALL_WARNING_PAIRED_WATCH_RESTRICTION");
    v47 = MCLocalizedStringByDevice(@"INSTALL_WARNING_PAIRED_WATCH");
    v48 = [MCProfileWarning warningWithLocalizedTitle:v46 localizedBody:v47 isLongForm:0];
    [v3 addObject:v48];
  }

  v49 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)filterForUserEnrollmentOutError:(id *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = +[MCRestrictionsPayload userEnrollmentAllowedKeysFilter];
  v5 = [MEMORY[0x1E695DF70] array];
  restrictions = self->_restrictions;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __57__MCRestrictionsPayload_filterForUserEnrollmentOutError___block_invoke;
  v17 = &unk_1E77D25A8;
  v7 = v4;
  v18 = v7;
  v8 = v5;
  v19 = v8;
  [(NSMutableDictionary *)restrictions enumerateKeysAndObjectsUsingBlock:&v14];
  if ([v8 count])
  {
    [v8 sortUsingComparator:&__block_literal_global_745];
    v9 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      v11 = [(MCPayload *)self friendlyName];
      *buf = 138543618;
      v21 = v11;
      v22 = 2114;
      v23 = v8;
      _os_log_impl(&dword_1A795B000, v10, OS_LOG_TYPE_INFO, "Payload “%{public}@” has restrictions that we are ignoring. They are: %{public}@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

void __57__MCRestrictionsPayload_filterForUserEnrollmentOutError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = [*(a1 + 32) objectForKeyedSubscript:v5];
    v9 = [v7 setWithArray:v8];

    v10 = [MEMORY[0x1E695DF70] array];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __57__MCRestrictionsPayload_filterForUserEnrollmentOutError___block_invoke_2;
    v16 = &unk_1E77D2580;
    v17 = v9;
    v18 = v10;
    v11 = v10;
    v12 = v9;
    [v6 enumerateKeysAndObjectsUsingBlock:&v13];
    [v6 removeObjectsForKeys:{v11, v13, v14, v15, v16}];
    [*(a1 + 40) addObjectsFromArray:v11];
  }
}

void __57__MCRestrictionsPayload_filterForUserEnrollmentOutError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

@end