@interface MCSingleAppPayload
- (MCSingleAppPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (NSString)applicationBundleID;
- (id)restrictions;
- (id)subtitle1Description;
@end

@implementation MCSingleAppPayload

- (MCSingleAppPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v93 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v86.receiver = self;
  v86.super_class = MCSingleAppPayload;
  v10 = [(MCAppWhitelistPayloadBase *)&v86 initWithDictionary:v8 profile:v9 outError:a5];
  if (!v10)
  {
    goto LABEL_71;
  }

  if ([v9 isStub])
  {
    v11 = 0;
    goto LABEL_67;
  }

  v12 = [MEMORY[0x1E695DF70] array];
  v85 = 0;
  v13 = [MCProfile removeRequiredObjectInDictionary:v8 key:@"App" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" missingDataCode:2002 missingDataErrorString:@"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v85];
  v14 = v85;
  if (v14)
  {
    v11 = v14;

LABEL_62:
    v44 = [(MCPayload *)v10 malformedPayloadErrorWithError:v11];
    v45 = v44;
    if (a5)
    {
      v46 = v44;
      *a5 = v45;
    }

    v47 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v48 = v47;
      v49 = objc_opt_class();
      v50 = v49;
      v51 = [v45 MCVerboseDescription];
      *buf = 138543618;
      v88 = v49;
      v89 = 2114;
      v90 = v51;
      _os_log_impl(&dword_1A795B000, v48, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v10 = 0;
    goto LABEL_67;
  }

  v84 = 0;
  v15 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"AllowLogout" isRequired:0 outError:&v84];
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
    v65 = v12;
    v83 = 0;
    v18 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v17 allowPlaceholder:1 error:&v83];
    v62 = v83;
    v63 = v18;
    if (v18)
    {
      v19 = [v18 appTags];
      v71 = [v19 containsObject:@"hidden"];

      v20 = [v18 compatibilityObject];
      v21 = [v20 bundleType];
      v22 = [v21 isEqualToString:*MEMORY[0x1E6963570]];

      v23 = [v18 applicationState];
      v24 = [v23 isRestricted];

      v17 = v74;
      v25 = [v18 isLaunchProhibited];
      if ((v71 & 1) != 0 || (v22 & 1) != 0 || (v24 & 1) != 0 || v25)
      {
        v11 = [MCPayload badFieldValueErrorWithField:@"Identifier"];
        v15 = v64;
        v12 = v65;
LABEL_59:

        goto LABEL_60;
      }
    }

    v61 = [MEMORY[0x1E695DF90] dictionary];
    [v61 setObject:v17 forKey:@"Identifier"];
    v26 = [v13 objectForKey:@"Options"];
    v12 = v65;
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
                v12 = v65;
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
        [v61 setObject:v66 forKey:@"Options"];
      }

      v12 = v65;
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
                v12 = v65;
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
        [v61 setObject:v60 forKey:@"UserEnabledOptions"];
      }

      v12 = v65;
      v26 = v58;
    }

    [v12 addObject:v61];
    [(MCAppWhitelistPayloadBase *)v10 setWhitelistedAppsAndOptions:v12];
    v11 = 0;
    goto LABEL_56;
  }

LABEL_61:

  if (v11)
  {
    goto LABEL_62;
  }

LABEL_67:
  if ([v8 count])
  {
    v52 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v53 = v52;
      v54 = [(MCPayload *)v10 friendlyName];
      *buf = 138543618;
      v88 = v54;
      v89 = 2114;
      v90 = v8;
      _os_log_impl(&dword_1A795B000, v53, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_71:
  v55 = *MEMORY[0x1E69E9840];
  return v10;
}

- (NSString)applicationBundleID
{
  v2 = [(MCAppWhitelistPayloadBase *)self whitelistedAppsAndOptions];
  v3 = [v2 firstObject];

  v4 = [v3 objectForKeyedSubscript:@"Identifier"];

  return v4;
}

- (id)restrictions
{
  v17[2] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = MCSingleAppPayload;
  v3 = [(MCAppWhitelistPayloadBase *)&v11 restrictions];
  v4 = [v3 MCMutableDeepCopy];

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
  [v4 setObject:v8 forKeyedSubscript:@"restrictedBool"];

  v9 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)subtitle1Description
{
  v3 = [(MCAppWhitelistPayloadBase *)self whitelistedAppsAndOptions];
  v4 = [v3 count];

  if (!v4)
  {
    goto LABEL_3;
  }

  v12 = [(MCAppWhitelistPayloadBase *)self whitelistedAppsAndOptions];
  v13 = [v12 objectAtIndex:0];
  v14 = [v13 objectForKey:@"Identifier"];

  if (!v14)
  {
LABEL_3:
    v14 = MCLocalizedFormat(@"SINGLE_APP_UNKNOWN", v5, v6, v7, v8, v9, v10, v11, v16);
  }

  return v14;
}

@end