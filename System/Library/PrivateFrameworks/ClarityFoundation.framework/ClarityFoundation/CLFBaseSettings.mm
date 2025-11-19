@interface CLFBaseSettings
+ (NSString)domainName;
+ (void)deleteAllKeys;
- (CLFBaseSettings)init;
- (NSString)domainName;
- (id)observeUpdatesForSelector:(SEL)a3 handler:(id)a4;
- (id)preferenceKeyForSelector:(SEL)a3;
- (uint64_t)preferenceKeysBySelectorName;
- (void)_deleteAllKeys;
- (void)deleteAllKeys;
- (void)registerUpdateBlock:(id)a3 withListener:(id)a4;
@end

@implementation CLFBaseSettings

- (NSString)domainName
{
  v2 = objc_opt_class();

  return [v2 domainName];
}

- (CLFBaseSettings)init
{
  v6.receiver = self;
  v6.super_class = CLFBaseSettings;
  v2 = [(AXBaseSettings *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    preferenceKeysBySelectorName = v2->_preferenceKeysBySelectorName;
    v2->_preferenceKeysBySelectorName = v3;
  }

  return v2;
}

- (id)observeUpdatesForSelector:(SEL)a3 handler:(id)a4
{
  v6 = a4;
  v7 = [[_CLFSettingsObserver alloc] initWithSettings:self settingsSelector:a3];
  [(AXBaseSettings *)self registerUpdateBlock:v6 forRetrieveSelector:a3 withListener:v7];

  return v7;
}

- (void)registerUpdateBlock:(id)a3 withListener:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [objc_opt_class() allPreferenceSelectorsAsStrings];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(AXBaseSettings *)self registerUpdateBlock:v6 forRetrieveSelector:NSSelectorFromString(*(*(&v14 + 1) + 8 * v12++)) withListener:v7];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)deleteAllKeys
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__CLFBaseSettings_deleteAllKeys__block_invoke;
  v3[3] = &unk_1E8704EF8;
  v3[4] = self;
  if (![(AXBaseSettings_Legacy *)self _switchFromRootUserIfNecessary:v3])
  {
    [(CLFBaseSettings *)self _deleteAllKeys];
  }
}

+ (void)deleteAllKeys
{
  v4 = [a1 domainName];
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:v4];
  v3 = v2;
  if (v2)
  {
    [v2 removePersistentDomainForName:v4];
  }
}

- (void)_deleteAllKeys
{
  v4 = [(CLFBaseSettings *)self domainName];
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:v4];
  v3 = v2;
  if (v2)
  {
    [v2 removePersistentDomainForName:v4];
  }
}

+ (NSString)domainName
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return &stru_1F5C05698;
}

- (id)preferenceKeyForSelector:(SEL)a3
{
  if (self)
  {
    preferenceKeysBySelectorName = self->_preferenceKeysBySelectorName;
  }

  else
  {
    preferenceKeysBySelectorName = 0;
  }

  v5 = preferenceKeysBySelectorName;
  v6 = NSStringFromSelector(a3);
  v7 = [(NSMutableDictionary *)v5 objectForKeyedSubscript:v6];

  return v7;
}

- (uint64_t)preferenceKeysBySelectorName
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

@end