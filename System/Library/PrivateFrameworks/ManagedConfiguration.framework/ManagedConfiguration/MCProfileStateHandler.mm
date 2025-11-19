@interface MCProfileStateHandler
+ (id)restrictionsStateDictionaryWithDetailsIncluded:(BOOL)a3;
+ (id)settingsStateDictionaryWithDetailsIncluded:(BOOL)a3;
+ (void)addProfileRestrictionsStateHandler;
+ (void)addProfileSettingsStateHandler;
@end

@implementation MCProfileStateHandler

+ (void)addProfileSettingsStateHandler
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __55__MCProfileStateHandler_addProfileSettingsStateHandler__block_invoke;
  v2[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v2[4] = a1;
  [a1 addStateHandlerWithName:"Profile Settings" stateBlock:v2];
}

+ (void)addProfileRestrictionsStateHandler
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __59__MCProfileStateHandler_addProfileRestrictionsStateHandler__block_invoke;
  v2[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v2[4] = a1;
  [a1 addStateHandlerWithName:"Profile Restrictions" stateBlock:v2];
}

+ (id)settingsStateDictionaryWithDetailsIncluded:(BOOL)a3
{
  v3 = a3;
  v40 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = +[MCProfileConnection sharedConnection];
  v6 = v5;
  if (v3)
  {
    v7 = [v5 userSettingsForSystem];
    [v4 setObject:v7 forKeyedSubscript:@"System user settings"];

    v8 = [v6 userSettingsForCurrentUser];
    v9 = @"User's user settings";
  }

  else
  {
    v8 = [v5 userSettings];
    v9 = @"User settings";
  }

  [v4 setObject:v8 forKeyedSubscript:v9];

  v10 = [v6 effectiveUserSettings];
  [v4 setObject:v10 forKeyedSubscript:@"Effective user settings"];
  v11 = [v10 objectForKey:@"restrictedBool"];
  if (v11)
  {
    v12 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v34 + 1) + 8 * i);
          if ([v6 isBoolSettingLockedDownByRestrictions:v18])
          {
            [v12 addObject:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v15);
    }

    [v4 setObject:v12 forKeyedSubscript:@"UI disabled for BOOL settings"];
  }

  v19 = [v10 objectForKey:@"restrictedValue"];
  if (v19)
  {
    v29 = v11;
    v20 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v21 = v19;
    v22 = [v21 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v31;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v31 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v30 + 1) + 8 * j);
          if ([v6 isValueSettingLockedDownByRestrictions:v26])
          {
            [v20 addObject:v26];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v23);
    }

    [v4 setObject:v20 forKeyedSubscript:@"UI disabled for value settings"];
    v11 = v29;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)restrictionsStateDictionaryWithDetailsIncluded:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  if (v3)
  {
    v5 = objc_alloc(MEMORY[0x1E695DF20]);
    v6 = MCSystemProfileRestrictionsFilePath();
    v7 = [v5 initWithContentsOfFile:v6];
    [v4 setObject:v7 forKeyedSubscript:@"Restrictions per system profile"];

    v8 = objc_alloc(MEMORY[0x1E695DF20]);
    v9 = MCUserProfileRestrictionsFilePath();
    v10 = [v8 initWithContentsOfFile:v9];
    [v4 setObject:v10 forKeyedSubscript:@"Restrictions per user profile"];

    v11 = objc_alloc(MEMORY[0x1E695DF20]);
    v12 = MCSystemClientRestrictionsFilePath();
    v13 = [v11 initWithContentsOfFile:v12];
    [v4 setObject:v13 forKeyedSubscript:@"Restrictions per system client"];

    v14 = objc_alloc(MEMORY[0x1E695DF20]);
    v15 = MCUserClientRestrictionsFilePath();
    v16 = [v14 initWithContentsOfFile:v15];
    [v4 setObject:v16 forKeyedSubscript:@"Restrictions per user client"];
  }

  v17 = +[MCProfileConnection sharedConnection];
  v18 = [v17 effectiveRestrictions];
  [v4 setObject:v18 forKeyedSubscript:@"Restrictions summary"];

  return v4;
}

@end