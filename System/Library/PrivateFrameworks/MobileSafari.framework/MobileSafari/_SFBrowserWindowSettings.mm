@interface _SFBrowserWindowSettings
+ (_SFBrowserWindowSettings)settings;
+ (void)setSharedSettings:(id)a3;
- (BOOL)_BOOLValueForKey:(id)a3 windowUUID:(id)a4;
- (BOOL)activeDocumentIsValidForWindowWithUUID:(id)a3;
- (BOOL)hasPrivateBrowsingWindow;
- (_SFBrowserWindowSettings)init;
- (id)_blankSnapshotKeyForPrivateBrowsing:(BOOL)a3 syncableTabGroupUUID:(id)a4;
- (id)_numberForKey:(id)a3 windowUUID:(id)a4;
- (id)_stringForKey:(id)a3 windowUUID:(id)a4;
- (id)blankSnapshotGroupIdentifierForPrivateBrowsing:(BOOL)a3 syncableTabGroupUUID:(id)a4 forWindowWithUUID:(id)a5;
- (id)dataForKey:(id)a3 forWindowWithUUID:(id)a4;
- (void)_initializeSettingsDictionaryIfNeeded;
- (void)_setBool:(BOOL)a3 forKey:(id)a4 windowUUID:(id)a5;
- (void)_setString:(id)a3 forKey:(id)a4 windowUUID:(id)a5;
- (void)_synchronizeNow;
- (void)removeWindowWithUUID:(id)a3;
- (void)setBlankSnapshotGroupIdentifier:(id)a3 forPrivateBrowsing:(BOOL)a4 syncableTabGroupUUID:(id)a5 forWindowWithUUID:(id)a6;
- (void)setData:(id)a3 forKey:(id)a4 forWindowWithUUID:(id)a5;
- (void)synchronize;
- (void)validateWindowSettingsWithUUIDs:(id)a3;
@end

@implementation _SFBrowserWindowSettings

+ (_SFBrowserWindowSettings)settings
{
  v2 = sharedSettingsInstance;
  if (!sharedSettingsInstance)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36___SFBrowserWindowSettings_settings__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (settings_onceToken != -1)
    {
      dispatch_once(&settings_onceToken, block);
    }

    v2 = sharedSettingsInstance;
  }

  v3 = v2;

  return v3;
}

- (_SFBrowserWindowSettings)init
{
  v6.receiver = self;
  v6.super_class = _SFBrowserWindowSettings;
  v2 = [(_SFBrowserWindowSettings *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_invalidatesClosedWindows = 1;
    [(_SFBrowserWindowSettings *)v2 _initializeSettingsDictionaryIfNeeded];
    v4 = v3;
  }

  return v3;
}

- (void)_initializeSettingsDictionaryIfNeeded
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  settingsDictionary = self->_settingsDictionary;
  self->_settingsDictionary = v3;

  v5 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v6 = [v5 objectForKey:@"BrowserControllersSavedState"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65___SFBrowserWindowSettings__initializeSettingsDictionaryIfNeeded__block_invoke;
    v7[3] = &unk_1E721CA68;
    v7[4] = self;
    [v6 enumerateKeysAndObjectsUsingBlock:v7];
  }
}

- (BOOL)hasPrivateBrowsingWindow
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(NSMutableDictionary *)self->_settingsDictionary allValues];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v9 + 1) + 8 * i) safari_BOOLForKey:@"PrivateBrowsing"])
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

+ (void)setSharedSettings:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 launchedToTest];
  v6 = sharedSettingsInstance;

  if ((v5 & 1) == 0 && v6)
  {
    +[_SFBrowserWindowSettings setSharedSettings:];
  }

  v7 = sharedSettingsInstance;
  sharedSettingsInstance = v3;
}

- (void)validateWindowSettingsWithUUIDs:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_invalidatesClosedWindows)
  {
    [(NSMutableDictionary *)self->_settingsDictionary allKeys];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = v20 = 0u;
    v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v13 = 0;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v9];
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __60___SFBrowserWindowSettings_validateWindowSettingsWithUUIDs___block_invoke;
          v15[3] = &unk_1E721CA40;
          v11 = v10;
          v16 = v11;
          v12 = [v4 safari_firstObjectPassingTest:v15];

          if (!v12)
          {
            [(NSMutableDictionary *)self->_settingsDictionary removeObjectForKey:v9];
            v13 = 1;
          }
        }

        v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
      if (v13)
      {
        [(_SFBrowserWindowSettings *)self synchronize];
      }
    }
  }
}

- (void)_setBool:(BOOL)a3 forKey:(id)a4 windowUUID:(id)a5
{
  v6 = a3;
  v14 = a4;
  v8 = a5;
  v9 = [(_SFBrowserWindowSettings *)self _numberForKey:v14 windowUUID:v8];
  v10 = v9;
  if (!v9 || [v9 BOOLValue] != v6)
  {
    v11 = [v8 UUIDString];
    v12 = [(NSMutableDictionary *)self->_settingsDictionary objectForKeyedSubscript:v11];
    if (!v12)
    {
      v12 = [MEMORY[0x1E695DF90] dictionary];
      [(NSMutableDictionary *)self->_settingsDictionary setObject:v12 forKeyedSubscript:v11];
    }

    v13 = [MEMORY[0x1E696AD98] numberWithBool:v6];
    [v12 setObject:v13 forKeyedSubscript:v14];

    [(_SFBrowserWindowSettings *)self synchronize];
  }
}

- (void)setData:(id)a3 forKey:(id)a4 forWindowWithUUID:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = [a5 UUIDString];
  v10 = [(NSMutableDictionary *)self->_settingsDictionary objectForKeyedSubscript:v9];
  if (!v10)
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
    [(NSMutableDictionary *)self->_settingsDictionary setObject:v10 forKeyedSubscript:v9];
  }

  [v10 setObject:v11 forKeyedSubscript:v8];
  [(_SFBrowserWindowSettings *)self synchronize];
}

- (id)dataForKey:(id)a3 forWindowWithUUID:(id)a4
{
  settingsDictionary = self->_settingsDictionary;
  v6 = a3;
  v7 = [a4 UUIDString];
  v8 = [(NSMutableDictionary *)settingsDictionary objectForKeyedSubscript:v7];

  v9 = [v8 safari_dataForKey:v6];

  return v9;
}

- (id)_numberForKey:(id)a3 windowUUID:(id)a4
{
  settingsDictionary = self->_settingsDictionary;
  v6 = a3;
  v7 = [a4 UUIDString];
  v8 = [(NSMutableDictionary *)settingsDictionary objectForKeyedSubscript:v7];

  v9 = [v8 safari_numberForKey:v6];

  return v9;
}

- (BOOL)_BOOLValueForKey:(id)a3 windowUUID:(id)a4
{
  v4 = [(_SFBrowserWindowSettings *)self _numberForKey:a3 windowUUID:a4];
  v5 = [v4 BOOLValue];

  return v5;
}

- (id)_stringForKey:(id)a3 windowUUID:(id)a4
{
  settingsDictionary = self->_settingsDictionary;
  v6 = a3;
  v7 = [a4 UUIDString];
  v8 = [(NSMutableDictionary *)settingsDictionary objectForKeyedSubscript:v7];

  v9 = [v8 safari_stringForKey:v6];

  return v9;
}

- (void)_setString:(id)a3 forKey:(id)a4 windowUUID:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = [(_SFBrowserWindowSettings *)self _stringForKey:v8 windowUUID:v9];
    if (v10 != v13 && ([v10 isEqualToString:v13] & 1) == 0)
    {
      v11 = [v9 UUIDString];
      v12 = [(NSMutableDictionary *)self->_settingsDictionary objectForKeyedSubscript:v11];
      if (!v12)
      {
        v12 = [MEMORY[0x1E695DF90] dictionary];
        [(NSMutableDictionary *)self->_settingsDictionary setObject:v12 forKeyedSubscript:v11];
      }

      [v12 setValue:v13 forKey:v8];
      [(_SFBrowserWindowSettings *)self synchronize];
    }
  }
}

- (BOOL)activeDocumentIsValidForWindowWithUUID:(id)a3
{
  v3 = [(_SFBrowserWindowSettings *)self _numberForKey:@"ActiveDocumentIsValid" windowUUID:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)blankSnapshotGroupIdentifierForPrivateBrowsing:(BOOL)a3 syncableTabGroupUUID:(id)a4 forWindowWithUUID:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = [(_SFBrowserWindowSettings *)self _blankSnapshotKeyForPrivateBrowsing:v6 syncableTabGroupUUID:a4];
  v10 = [(_SFBrowserWindowSettings *)self _stringForKey:v9 windowUUID:v8];

  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setBlankSnapshotGroupIdentifier:(id)a3 forPrivateBrowsing:(BOOL)a4 syncableTabGroupUUID:(id)a5 forWindowWithUUID:(id)a6
{
  v7 = a4;
  v10 = a6;
  v11 = a3;
  v13 = [(_SFBrowserWindowSettings *)self _blankSnapshotKeyForPrivateBrowsing:v7 syncableTabGroupUUID:a5];
  v12 = [v11 UUIDString];

  [(_SFBrowserWindowSettings *)self _setString:v12 forKey:v13 windowUUID:v10];
}

- (id)_blankSnapshotKeyForPrivateBrowsing:(BOOL)a3 syncableTabGroupUUID:(id)a4
{
  if (a4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"TabGroupBlankSnapshotGroupIdentifier", a4];
  }

  else
  {
    v5 = @"NormalBlankSnapshotGroupIdentifier";
    if (a3)
    {
      v5 = @"PrivateBlankSnapshotGroupIdentifier";
    }

    v4 = v5;
  }

  return v4;
}

- (void)removeWindowWithUUID:(id)a3
{
  settingsDictionary = self->_settingsDictionary;
  v5 = [a3 UUIDString];
  [(NSMutableDictionary *)settingsDictionary removeObjectForKey:v5];

  [(_SFBrowserWindowSettings *)self synchronize];
}

- (void)synchronize
{
  if (!self->_synchronizeScheduled)
  {
    self->_synchronizeScheduled = 1;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39___SFBrowserWindowSettings_synchronize__block_invoke;
    block[3] = &unk_1E721B360;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_synchronizeNow
{
  v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
  [v3 setObject:self->_settingsDictionary forKey:@"BrowserControllersSavedState"];
  [v3 synchronize];
}

+ (void)setSharedSettings:.cold.1()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1EFF36230];
  v1 = MEMORY[0x1E696AEC0];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/SafariServices/iOS/MobileSafari/MobileSafariFramework/_SFBrowserWindowSettings.m"];
  v3 = [v2 lastPathComponent];
  if ([v0 length])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@", %@", v0];
    v4 = [v1 stringWithFormat:@"ASSERTION FAILURE: %s in %s, %@:%d%@", "[[UIApplication sharedApplication] launchedToTest] || !sharedSettingsInstance", "+[_SFBrowserWindowSettings setSharedSettings:]", v3, 38, v5];
  }

  else
  {
    v4 = [v1 stringWithFormat:@"ASSERTION FAILURE: %s in %s, %@:%d%@", "[[UIApplication sharedApplication] launchedToTest] || !sharedSettingsInstance", "+[_SFBrowserWindowSettings setSharedSettings:]", v3, 38, &stru_1EFF36230];
  }

  v6 = [MEMORY[0x1E696AF00] callStackSymbols];
  NSLog(&stru_1EFF364B0.isa, v4, v6);

  abort();
}

@end