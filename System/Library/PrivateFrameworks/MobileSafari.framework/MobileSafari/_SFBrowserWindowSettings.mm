@interface _SFBrowserWindowSettings
+ (_SFBrowserWindowSettings)settings;
+ (void)setSharedSettings:(id)settings;
- (BOOL)_BOOLValueForKey:(id)key windowUUID:(id)d;
- (BOOL)activeDocumentIsValidForWindowWithUUID:(id)d;
- (BOOL)hasPrivateBrowsingWindow;
- (_SFBrowserWindowSettings)init;
- (id)_blankSnapshotKeyForPrivateBrowsing:(BOOL)browsing syncableTabGroupUUID:(id)d;
- (id)_numberForKey:(id)key windowUUID:(id)d;
- (id)_stringForKey:(id)key windowUUID:(id)d;
- (id)blankSnapshotGroupIdentifierForPrivateBrowsing:(BOOL)browsing syncableTabGroupUUID:(id)d forWindowWithUUID:(id)iD;
- (id)dataForKey:(id)key forWindowWithUUID:(id)d;
- (void)_initializeSettingsDictionaryIfNeeded;
- (void)_setBool:(BOOL)bool forKey:(id)key windowUUID:(id)d;
- (void)_setString:(id)string forKey:(id)key windowUUID:(id)d;
- (void)_synchronizeNow;
- (void)removeWindowWithUUID:(id)d;
- (void)setBlankSnapshotGroupIdentifier:(id)identifier forPrivateBrowsing:(BOOL)browsing syncableTabGroupUUID:(id)d forWindowWithUUID:(id)iD;
- (void)setData:(id)data forKey:(id)key forWindowWithUUID:(id)d;
- (void)synchronize;
- (void)validateWindowSettingsWithUUIDs:(id)ds;
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
    block[4] = self;
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  settingsDictionary = self->_settingsDictionary;
  self->_settingsDictionary = dictionary;

  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v6 = [safari_browserDefaults objectForKey:@"BrowserControllersSavedState"];

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
  allValues = [(NSMutableDictionary *)self->_settingsDictionary allValues];
  v3 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v9 + 1) + 8 * i) safari_BOOLForKey:@"PrivateBrowsing"])
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v4 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
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

+ (void)setSharedSettings:(id)settings
{
  settingsCopy = settings;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  launchedToTest = [mEMORY[0x1E69DC668] launchedToTest];
  v6 = sharedSettingsInstance;

  if ((launchedToTest & 1) == 0 && v6)
  {
    +[_SFBrowserWindowSettings setSharedSettings:];
  }

  v7 = sharedSettingsInstance;
  sharedSettingsInstance = settingsCopy;
}

- (void)validateWindowSettingsWithUUIDs:(id)ds
{
  v22 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
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
          v12 = [dsCopy safari_firstObjectPassingTest:v15];

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

- (void)_setBool:(BOOL)bool forKey:(id)key windowUUID:(id)d
{
  boolCopy = bool;
  keyCopy = key;
  dCopy = d;
  v9 = [(_SFBrowserWindowSettings *)self _numberForKey:keyCopy windowUUID:dCopy];
  v10 = v9;
  if (!v9 || [v9 BOOLValue] != boolCopy)
  {
    uUIDString = [dCopy UUIDString];
    dictionary = [(NSMutableDictionary *)self->_settingsDictionary objectForKeyedSubscript:uUIDString];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [(NSMutableDictionary *)self->_settingsDictionary setObject:dictionary forKeyedSubscript:uUIDString];
    }

    v13 = [MEMORY[0x1E696AD98] numberWithBool:boolCopy];
    [dictionary setObject:v13 forKeyedSubscript:keyCopy];

    [(_SFBrowserWindowSettings *)self synchronize];
  }
}

- (void)setData:(id)data forKey:(id)key forWindowWithUUID:(id)d
{
  dataCopy = data;
  keyCopy = key;
  uUIDString = [d UUIDString];
  dictionary = [(NSMutableDictionary *)self->_settingsDictionary objectForKeyedSubscript:uUIDString];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(NSMutableDictionary *)self->_settingsDictionary setObject:dictionary forKeyedSubscript:uUIDString];
  }

  [dictionary setObject:dataCopy forKeyedSubscript:keyCopy];
  [(_SFBrowserWindowSettings *)self synchronize];
}

- (id)dataForKey:(id)key forWindowWithUUID:(id)d
{
  settingsDictionary = self->_settingsDictionary;
  keyCopy = key;
  uUIDString = [d UUIDString];
  v8 = [(NSMutableDictionary *)settingsDictionary objectForKeyedSubscript:uUIDString];

  v9 = [v8 safari_dataForKey:keyCopy];

  return v9;
}

- (id)_numberForKey:(id)key windowUUID:(id)d
{
  settingsDictionary = self->_settingsDictionary;
  keyCopy = key;
  uUIDString = [d UUIDString];
  v8 = [(NSMutableDictionary *)settingsDictionary objectForKeyedSubscript:uUIDString];

  v9 = [v8 safari_numberForKey:keyCopy];

  return v9;
}

- (BOOL)_BOOLValueForKey:(id)key windowUUID:(id)d
{
  v4 = [(_SFBrowserWindowSettings *)self _numberForKey:key windowUUID:d];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (id)_stringForKey:(id)key windowUUID:(id)d
{
  settingsDictionary = self->_settingsDictionary;
  keyCopy = key;
  uUIDString = [d UUIDString];
  v8 = [(NSMutableDictionary *)settingsDictionary objectForKeyedSubscript:uUIDString];

  v9 = [v8 safari_stringForKey:keyCopy];

  return v9;
}

- (void)_setString:(id)string forKey:(id)key windowUUID:(id)d
{
  stringCopy = string;
  keyCopy = key;
  dCopy = d;
  if (dCopy)
  {
    v10 = [(_SFBrowserWindowSettings *)self _stringForKey:keyCopy windowUUID:dCopy];
    if (v10 != stringCopy && ([v10 isEqualToString:stringCopy] & 1) == 0)
    {
      uUIDString = [dCopy UUIDString];
      dictionary = [(NSMutableDictionary *)self->_settingsDictionary objectForKeyedSubscript:uUIDString];
      if (!dictionary)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        [(NSMutableDictionary *)self->_settingsDictionary setObject:dictionary forKeyedSubscript:uUIDString];
      }

      [dictionary setValue:stringCopy forKey:keyCopy];
      [(_SFBrowserWindowSettings *)self synchronize];
    }
  }
}

- (BOOL)activeDocumentIsValidForWindowWithUUID:(id)d
{
  v3 = [(_SFBrowserWindowSettings *)self _numberForKey:@"ActiveDocumentIsValid" windowUUID:d];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (id)blankSnapshotGroupIdentifierForPrivateBrowsing:(BOOL)browsing syncableTabGroupUUID:(id)d forWindowWithUUID:(id)iD
{
  browsingCopy = browsing;
  iDCopy = iD;
  v9 = [(_SFBrowserWindowSettings *)self _blankSnapshotKeyForPrivateBrowsing:browsingCopy syncableTabGroupUUID:d];
  v10 = [(_SFBrowserWindowSettings *)self _stringForKey:v9 windowUUID:iDCopy];

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

- (void)setBlankSnapshotGroupIdentifier:(id)identifier forPrivateBrowsing:(BOOL)browsing syncableTabGroupUUID:(id)d forWindowWithUUID:(id)iD
{
  browsingCopy = browsing;
  iDCopy = iD;
  identifierCopy = identifier;
  v13 = [(_SFBrowserWindowSettings *)self _blankSnapshotKeyForPrivateBrowsing:browsingCopy syncableTabGroupUUID:d];
  uUIDString = [identifierCopy UUIDString];

  [(_SFBrowserWindowSettings *)self _setString:uUIDString forKey:v13 windowUUID:iDCopy];
}

- (id)_blankSnapshotKeyForPrivateBrowsing:(BOOL)browsing syncableTabGroupUUID:(id)d
{
  if (d)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"TabGroupBlankSnapshotGroupIdentifier", d];
  }

  else
  {
    v5 = @"NormalBlankSnapshotGroupIdentifier";
    if (browsing)
    {
      v5 = @"PrivateBlankSnapshotGroupIdentifier";
    }

    v4 = v5;
  }

  return v4;
}

- (void)removeWindowWithUUID:(id)d
{
  settingsDictionary = self->_settingsDictionary;
  uUIDString = [d UUIDString];
  [(NSMutableDictionary *)settingsDictionary removeObjectForKey:uUIDString];

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
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  [safari_browserDefaults setObject:self->_settingsDictionary forKey:@"BrowserControllersSavedState"];
  [safari_browserDefaults synchronize];
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