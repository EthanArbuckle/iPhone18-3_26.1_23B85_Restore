@interface MCAppEnforcedRestrictionUtilities
+ (id)appUnavailableInRegionRestrictionForBundleID:(id)a3;
+ (id)currentCountryCodes;
+ (id)enforcedRestrictionsForBundleID:(id)a3 restrictionPlistURL:(id)a4 countryCodes:(id)a5;
@end

@implementation MCAppEnforcedRestrictionUtilities

+ (id)enforcedRestrictionsForBundleID:(id)a3 restrictionPlistURL:(id)a4 countryCodes:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  if (!v9)
  {
    v9 = +[MCAppEnforcedRestrictionUtilities currentCountryCodes];
  }

  v11 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v8];
  if (!v11)
  {
    v21 = _MCLogObjects;
    if (!os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138543362;
    v36 = v7;
    v22 = "Couldn't find restriction plist for app “%{public}@”";
    v23 = v21;
    v24 = 12;
LABEL_23:
    _os_log_impl(&dword_1A795B000, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
    goto LABEL_24;
  }

  v12 = [MEMORY[0x1E695DFA8] set];
  v13 = [v11 objectForKey:@"MCWhitelistedLocales"];
  if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_21:

    v25 = _MCLogObjects;
    if (!os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v22 = "Restriction plist is malformatted";
    v23 = v25;
    v24 = 2;
    goto LABEL_23;
  }

  v29 = v9;
  v30 = v7;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v31 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v7 = v30;
          v9 = v29;
          goto LABEL_21;
        }

        [v12 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v7 = v30;
  v9 = v29;
  if ([v12 count] && (objc_msgSend(v12, "intersectsSet:", v29) & 1) == 0)
  {
    v20 = [MCAppEnforcedRestrictionUtilities appUnavailableInRegionRestrictionForBundleID:v30];
    [v10 addEntriesFromDictionary:v20];
  }

LABEL_24:
  if ([v10 count])
  {
    v26 = [v10 copy];
  }

  else
  {
    v26 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

+ (id)currentCountryCodes
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [v2 countryCode];
  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = v4;
  if (v3)
  {
    [v4 addObject:v3];
  }

  else
  {
    v6 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_ERROR, "Failed to retrieve a valid country code from NSLocale! Attempting fallback.", buf, 2u);
    }

    v7 = [MEMORY[0x1E695DF58] preferredLanguages];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:*(*(&v21 + 1) + 8 * i)];
          v13 = [v12 countryCode];

          if (v13)
          {
            [v5 addObject:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v31 count:16];
      }

      while (v9);
    }

    v14 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v26 = v5;
      v27 = 2114;
      v28 = v7;
      _os_log_impl(&dword_1A795B000, v14, OS_LOG_TYPE_INFO, "Got country codes %{public}@ from languages %{public}@", buf, 0x16u);
    }
  }

  v15 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [v2 localeIdentifier];
    *buf = 138543874;
    v26 = v3;
    v27 = 2114;
    v28 = v17;
    v29 = 2114;
    v30 = v2;
    _os_log_impl(&dword_1A795B000, v16, OS_LOG_TYPE_DEFAULT, "Reevaluating country code %{public}@ from locale identifier %{public}@ of currentLocale %{public}@", buf, 0x20u);
  }

  v18 = [v5 copy];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)appUnavailableInRegionRestrictionForBundleID:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = [v3 dictionary];
  v9[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  [v5 MCSetUnionRestriction:@"blockedAppBundleIDs" values:v6];
  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

@end