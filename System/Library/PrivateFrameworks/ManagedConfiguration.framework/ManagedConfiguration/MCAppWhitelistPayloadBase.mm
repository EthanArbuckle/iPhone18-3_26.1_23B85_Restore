@interface MCAppWhitelistPayloadBase
+ (id)knownOptionsKeys;
+ (id)knownUserEnabledOptionKeys;
- (MCAppWhitelistPayloadBase)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (id)payloadDescriptionKeyValueSections;
- (id)restrictions;
- (id)stubDictionary;
- (id)verboseDescription;
@end

@implementation MCAppWhitelistPayloadBase

+ (id)knownOptionsKeys
{
  if (knownOptionsKeys_onceToken != -1)
  {
    +[MCAppWhitelistPayloadBase knownOptionsKeys];
  }

  v3 = knownOptionsKeys_keys;

  return v3;
}

void __45__MCAppWhitelistPayloadBase_knownOptionsKeys__block_invoke()
{
  v5[13] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"DisableTouch";
  v5[1] = @"DisableDeviceRotation";
  v5[2] = @"DisableVolumeButtons";
  v5[3] = @"DisableRingerSwitch";
  v5[4] = @"DisableSleepWakeButton";
  v5[5] = @"DisableAutoLock";
  v5[6] = @"EnableVoiceOver";
  v5[7] = @"EnableZoom";
  v5[8] = @"EnableInvertColors";
  v5[9] = @"EnableAssistiveTouch";
  v5[10] = @"EnableSpeakSelection";
  v5[11] = @"EnableMonoAudio";
  v5[12] = @"EnableVoiceControl";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:13];
  v2 = [v0 setWithArray:v1];
  v3 = knownOptionsKeys_keys;
  knownOptionsKeys_keys = v2;

  v4 = *MEMORY[0x1E69E9840];
}

+ (id)knownUserEnabledOptionKeys
{
  if (knownUserEnabledOptionKeys_onceToken != -1)
  {
    +[MCAppWhitelistPayloadBase knownUserEnabledOptionKeys];
  }

  v3 = knownUserEnabledOptionKeys_keys;

  return v3;
}

void __55__MCAppWhitelistPayloadBase_knownUserEnabledOptionKeys__block_invoke()
{
  v5[5] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"Zoom";
  v5[1] = @"InvertColors";
  v5[2] = @"AssistiveTouch";
  v5[3] = @"VoiceOver";
  v5[4] = @"VoiceControl";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  v2 = [v0 setWithArray:v1];
  v3 = knownUserEnabledOptionKeys_keys;
  knownUserEnabledOptionKeys_keys = v2;

  v4 = *MEMORY[0x1E69E9840];
}

- (MCAppWhitelistPayloadBase)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = MCAppWhitelistPayloadBase;
  v10 = [(MCPayload *)&v16 initWithDictionary:v8 profile:v9 outError:a5];
  if (v10 && [v9 isStub])
  {
    v11 = [v8 objectForKey:@"Apps"];
    whitelistedAppsAndOptions = v10->_whitelistedAppsAndOptions;
    v10->_whitelistedAppsAndOptions = v11;

    v13 = [v8 objectForKey:@"AllowAccessWithoutPasscode"];
    v10->_allowAccessWithoutPasscode = [v13 BOOLValue];

    v14 = [v8 objectForKey:@"ForceAllowSupervisorAccess"];
    v10->_forceAllowSupervisorAccess = [v14 BOOLValue];

    [v8 removeObjectForKey:@"Apps"];
    [v8 removeObjectForKey:@"AllowAccessWithoutPasscode"];
    [v8 removeObjectForKey:@"ForceAllowSupervisorAccess"];
  }

  return v10;
}

- (id)restrictions
{
  v33[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  if (![(MCAppWhitelistPayloadBase *)self allowAccessWithoutPasscode])
  {
    v32[0] = @"value";
    v32[1] = @"preference";
    v33[0] = MEMORY[0x1E695E110];
    v33[1] = MEMORY[0x1E695E110];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
    [v4 setObject:v5 forKeyedSubscript:@"allowAccessWithoutPasscodeInAppLock"];
  }

  if ([(MCAppWhitelistPayloadBase *)self forceAllowSupervisorAccess])
  {
    v30[0] = @"value";
    v30[1] = @"preference";
    v31[0] = MEMORY[0x1E695E118];
    v31[1] = MEMORY[0x1E695E118];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
    [v4 setObject:v6 forKeyedSubscript:@"forceGrantSupervisorAccessInAppLock"];
  }

  [v3 setObject:v4 forKeyedSubscript:@"restrictedBool"];
  v7 = [(MCAppWhitelistPayloadBase *)self whitelistedAppsAndOptions];

  if (v7)
  {
    v8 = MEMORY[0x1E695DF70];
    v9 = [(MCAppWhitelistPayloadBase *)self whitelistedAppsAndOptions];
    v10 = [v8 arrayWithCapacity:{objc_msgSend(v9, "count")}];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [(MCAppWhitelistPayloadBase *)self whitelistedAppsAndOptions];
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v21 + 1) + 8 * i) objectForKey:@"Identifier"];
          if (v16)
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v13);
    }

    v27 = @"appLockBundleIDs";
    v25 = @"values";
    v26 = v10;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v28 = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    [v3 setObject:v18 forKeyedSubscript:@"intersection"];
  }

  v19 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)stubDictionary
{
  v9.receiver = self;
  v9.super_class = MCAppWhitelistPayloadBase;
  v3 = [(MCPayload *)&v9 stubDictionary];
  v4 = v3;
  whitelistedAppsAndOptions = self->_whitelistedAppsAndOptions;
  if (whitelistedAppsAndOptions)
  {
    [v3 setObject:whitelistedAppsAndOptions forKey:@"Apps"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCAppWhitelistPayloadBase allowAccessWithoutPasscode](self, "allowAccessWithoutPasscode")}];
  [v4 setObject:v6 forKey:@"AllowAccessWithoutPasscode"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCAppWhitelistPayloadBase forceAllowSupervisorAccess](self, "forceAllowSupervisorAccess")}];
  [v4 setObject:v7 forKey:@"ForceAllowSupervisorAccess"];

  return v4;
}

- (id)verboseDescription
{
  v7.receiver = self;
  v7.super_class = MCAppWhitelistPayloadBase;
  v3 = [(MCPayload *)&v7 verboseDescription];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"App whitelist:\n"];
  v5 = [(MCAppWhitelistPayloadBase *)self whitelistedAppsAndOptions];
  [v4 appendFormat:@"  Apps: %@\n", v5];

  [v4 appendFormat:@"  Allow access without passcode: %d\n", -[MCAppWhitelistPayloadBase allowAccessWithoutPasscode](self, "allowAccessWithoutPasscode")];
  [v4 appendFormat:@"  Allow supervisor access: %d\n", -[MCAppWhitelistPayloadBase forceAllowSupervisorAccess](self, "forceAllowSupervisorAccess")];

  return v4;
}

- (id)payloadDescriptionKeyValueSections
{
  v38[2] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [MCKeyValue alloc];
  v5 = MCLocalizedStringForBool([(MCAppWhitelistPayloadBase *)self allowAccessWithoutPasscode]);
  v6 = MCLocalizedString(@"ALLOW_ACCESS_WITHOUT_PASSCODE");
  v7 = [(MCKeyValue *)v4 initWithLocalizedString:v5 localizedKey:v6];

  v8 = [MCKeyValue alloc];
  v9 = MCLocalizedStringForBool([(MCAppWhitelistPayloadBase *)self forceAllowSupervisorAccess]);
  v10 = MCLocalizedString(@"ALLOW_SUPERVISOR_ACCESS");
  v11 = [(MCKeyValue *)v8 initWithLocalizedString:v9 localizedKey:v10];

  v38[0] = v7;
  v38[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  v13 = [MCKeyValueSection sectionWithKeyValues:v12];

  v14 = v3;
  [v3 addObject:v13];
  v15 = [(MCAppWhitelistPayloadBase *)self whitelistedAppsAndOptions];

  if (v15)
  {
    v29 = v13;
    v30 = v11;
    v31 = v7;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [(MCAppWhitelistPayloadBase *)self whitelistedAppsAndOptions];
    v16 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v34;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v34 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v33 + 1) + 8 * i);
          v21 = objc_opt_new();
          v22 = [v20 objectForKey:@"Identifier"];
          v23 = [MCKeyValue alloc];
          v24 = MCLocalizedString(@"APP");
          v25 = [(MCKeyValue *)v23 initWithLocalizedString:v22 localizedKey:v24];

          [v21 addObject:v25];
          v26 = [MCKeyValueSection sectionWithKeyValues:v21];
          [v14 addObject:v26];
        }

        v17 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v17);
    }

    v11 = v30;
    v7 = v31;
    v13 = v29;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v14;
}

@end