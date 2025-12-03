@interface MCSingleAppPayload
- (MCSingleAppPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (NSString)applicationBundleID;
- (id)restrictions;
- (id)subtitle1Description;
@end

@implementation MCSingleAppPayload

- (MCSingleAppPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v93 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v86.receiver = self;
  v86.super_class = MCSingleAppPayload;
  v10 = [(MCAppWhitelistPayloadBase *)&v86 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (!v10)
  {
    goto LABEL_71;
  }

  if ([profileCopy isStub])
  {
    v11 = 0;
    goto LABEL_67;
  }

  array = [MEMORY[0x1E695DF70] array];
  v85 = 0;
  v13 = [MCProfile removeRequiredObjectInDictionary:dictionaryCopy key:@"App" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" missingDataCode:2002 missingDataErrorString:@"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v85];
  v14 = v85;
  if (v14)
  {
    v11 = v14;

LABEL_62:
    v44 = [(MCPayload *)v10 malformedPayloadErrorWithError:v11];
    v45 = v44;
    if (error)
    {
      v46 = v44;
      *error = v45;
    }

    v47 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v48 = v47;
      v49 = objc_opt_class();
      v50 = v49;
      mCVerboseDescription = [v45 MCVerboseDescription];
      *buf = 138543618;
      v88 = v49;
      v89 = 2114;
      v90 = mCVerboseDescription;
      _os_log_impl(&dword_1A795B000, v48, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v10 = 0;
    goto LABEL_67;
  }

  v84 = 0;
  v15 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"AllowLogout" isRequired:0 outError:&v84];
  v11 = v84;
  if (!v11)
  {
    v10->_allowLogout = [v15 BOOLValue];
    v16 = [v13 objectForKey:@"Identifier"];
    v74 = v16;
    if (!v16 || (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v11 = [MCPayload badFieldTypeErrorWithField:@"Identifier"];
LABEL_60:

      goto LABEL_61;
    }

    v64 = v15;
    v65 = array;
    v83 = 0;
    v18 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v17 allowPlaceholder:1 error:&v83];
    v62 = v83;
    v63 = v18;
    if (v18)
    {
      appTags = [v18 appTags];
      v71 = [appTags containsObject:@"hidden"];

      compatibilityObject = [v18 compatibilityObject];
      bundleType = [compatibilityObject bundleType];
      v22 = [bundleType isEqualToString:*MEMORY[0x1E6963570]];

      applicationState = [v18 applicationState];
      isRestricted = [applicationState isRestricted];

      v17 = v74;
      isLaunchProhibited = [v18 isLaunchProhibited];
      if ((v71 & 1) != 0 || (v22 & 1) != 0 || (isRestricted & 1) != 0 || isLaunchProhibited)
      {
        v11 = [MCPayload badFieldValueErrorWithField:@"Identifier"];
        v15 = v64;
        array = v65;
LABEL_59:

        goto LABEL_60;
      }
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:v17 forKey:@"Identifier"];
    v26 = [v13 objectForKey:@"Options"];
    array = v65;
    if (v26)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v11 = [MCPayload badFieldTypeErrorWithField:@"Options"];
        v15 = v64;
LABEL_58:

        goto LABEL_59;
      }

      v66 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v26, "count")}];
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v57 = v26;
      v27 = v26;
      v72 = [v27 countByEnumeratingWithState:&v79 objects:v92 count:16];
      if (v72)
      {
        v69 = *v80;
        v68 = v13;
        while (2)
        {
          for (i = 0; i != v72; ++i)
          {
            if (*v80 != v69)
            {
              objc_enumerationMutation(v27);
            }

            v29 = *(*(&v79 + 1) + 8 * i);
            v30 = [v27 objectForKey:v29];
            if (v30)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v11 = [MCPayload badFieldValueErrorWithField:v29];

                v15 = v64;
                array = v65;
                v26 = v57;
                goto LABEL_58;
              }

              v31 = v27;
              v32 = +[(MCAppWhitelistPayloadBase *)MCSingleAppPayload];
              v33 = [v32 containsObject:v29];

              if (v33)
              {
                [v66 setObject:v30 forKey:v29];
                v27 = v31;
                v13 = v68;
              }

              else
              {
                v34 = _MCLogObjects;
                v27 = v31;
                v13 = v68;
                if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v88 = v29;
                  _os_log_impl(&dword_1A795B000, v34, OS_LOG_TYPE_DEFAULT, "Ignoring unknown option: %{public}@", buf, 0xCu);
                }
              }
            }
          }

          v72 = [v27 countByEnumeratingWithState:&v79 objects:v92 count:16];
          if (v72)
          {
            continue;
          }

          break;
        }
      }

      if ([v66 count])
      {
        [dictionary setObject:v66 forKey:@"Options"];
      }

      array = v65;
      v26 = v57;
    }

    v35 = [v13 objectForKey:?];
    v59 = v35;
    if (v35)
    {
      v36 = v35;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v11 = [MCPayload badFieldTypeErrorWithField:@"UserEnabledOptions"];
LABEL_56:
        v15 = v64;
LABEL_57:

        goto LABEL_58;
      }

      v58 = v26;
      v60 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v36, "count")}];
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v37 = v36;
      v73 = [v37 countByEnumeratingWithState:&v75 objects:v91 count:16];
      if (v73)
      {
        v70 = *v76;
        v67 = v37;
        while (2)
        {
          for (j = 0; j != v73; ++j)
          {
            if (*v76 != v70)
            {
              objc_enumerationMutation(v37);
            }

            v39 = *(*(&v75 + 1) + 8 * j);
            v40 = [v37 objectForKey:v39];
            if (v40)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v11 = [MCPayload badFieldValueErrorWithField:v39];

                v15 = v64;
                array = v65;
                v26 = v58;
                goto LABEL_57;
              }

              v41 = +[(MCAppWhitelistPayloadBase *)MCSingleAppPayload];
              v42 = [v41 containsObject:v39];

              if (v42)
              {
                [v60 setObject:v40 forKey:v39];
                v37 = v67;
              }

              else
              {
                v43 = _MCLogObjects;
                v37 = v67;
                if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v88 = v39;
                  _os_log_impl(&dword_1A795B000, v43, OS_LOG_TYPE_DEFAULT, "Ignoring unknown option: %{public}@", buf, 0xCu);
                }
              }
            }
          }

          v73 = [v37 countByEnumeratingWithState:&v75 objects:v91 count:16];
          if (v73)
          {
            continue;
          }

          break;
        }
      }

      if ([v60 count])
      {
        [dictionary setObject:v60 forKey:@"UserEnabledOptions"];
      }

      array = v65;
      v26 = v58;
    }

    [array addObject:dictionary];
    [(MCAppWhitelistPayloadBase *)v10 setWhitelistedAppsAndOptions:array];
    v11 = 0;
    goto LABEL_56;
  }

LABEL_61:

  if (v11)
  {
    goto LABEL_62;
  }

LABEL_67:
  if ([dictionaryCopy count])
  {
    v52 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v53 = v52;
      friendlyName = [(MCPayload *)v10 friendlyName];
      *buf = 138543618;
      v88 = friendlyName;
      v89 = 2114;
      v90 = dictionaryCopy;
      _os_log_impl(&dword_1A795B000, v53, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_71:
  v55 = *MEMORY[0x1E69E9840];
  return v10;
}

- (NSString)applicationBundleID
{
  whitelistedAppsAndOptions = [(MCAppWhitelistPayloadBase *)self whitelistedAppsAndOptions];
  firstObject = [whitelistedAppsAndOptions firstObject];

  v4 = [firstObject objectForKeyedSubscript:@"Identifier"];

  return v4;
}

- (id)restrictions
{
  v17[2] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = MCSingleAppPayload;
  restrictions = [(MCAppWhitelistPayloadBase *)&v11 restrictions];
  mCMutableDeepCopy = [restrictions MCMutableDeepCopy];

  v16[0] = @"allowMultipleAppsInAppLock";
  v14[0] = @"value";
  v14[1] = @"preference";
  v15[0] = MEMORY[0x1E695E110];
  v15[1] = MEMORY[0x1E695E110];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v5;
  v16[1] = @"allowAppLockLogout";
  v12[0] = @"value";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCSingleAppPayload allowLogout](self, "allowLogout")}];
  v12[1] = @"preference";
  v13[0] = v6;
  v13[1] = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [mCMutableDeepCopy setObject:v8 forKeyedSubscript:@"restrictedBool"];

  v9 = *MEMORY[0x1E69E9840];

  return mCMutableDeepCopy;
}

- (id)subtitle1Description
{
  whitelistedAppsAndOptions = [(MCAppWhitelistPayloadBase *)self whitelistedAppsAndOptions];
  v4 = [whitelistedAppsAndOptions count];

  if (!v4)
  {
    goto LABEL_3;
  }

  whitelistedAppsAndOptions2 = [(MCAppWhitelistPayloadBase *)self whitelistedAppsAndOptions];
  v13 = [whitelistedAppsAndOptions2 objectAtIndex:0];
  v14 = [v13 objectForKey:@"Identifier"];

  if (!v14)
  {
LABEL_3:
    v14 = MCLocalizedFormat(@"SINGLE_APP_UNKNOWN", v5, v6, v7, v8, v9, v10, v11, v16);
  }

  return v14;
}

@end