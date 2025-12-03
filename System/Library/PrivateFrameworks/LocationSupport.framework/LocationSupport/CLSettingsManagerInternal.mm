@interface CLSettingsManagerInternal
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (id)syncgetSetValue:(id)value forKey:(id)key withoutNotifying:(id)notifying;
- (id)syncgetSettingsAndRegisterForUpdates:(id)updates;
- (void)beginService;
- (void)endService;
- (void)updateClientsWithDictionary:(id)dictionary;
@end

@implementation CLSettingsManagerInternal

+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index
{
  v5 = index + 1;
  if (index + 1 < [blocked count])
  {
    [objc_msgSend(blocked objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", blocked, v5}];
  }
}

+ (id)getSilo
{
  if (qword_1ED5FAD90 != -1)
  {
    dispatch_once(&qword_1ED5FAD90, &unk_1F5AC6420);
  }

  return qword_1ED5FAD88;
}

- (void)beginService
{
  -[CLSettingsManagerInternal setClients:](self, "setClients:", [MEMORY[0x1E695DFA8] set]);

  [(CLSettingsManagerInternal *)self setSettingsDictionary:0];
}

- (void)endService
{
  [(CLSettingsManagerInternal *)self setSettingsDictionary:0];

  [(CLSettingsManagerInternal *)self setClients:0];
}

- (id)syncgetSettingsAndRegisterForUpdates:(id)updates
{
  [(NSMutableSet *)self->_clients addObject:updates];
  v4 = MEMORY[0x1E695DF20];
  settingsDictionary = self->_settingsDictionary;

  return [v4 dictionaryWithDictionary:settingsDictionary];
}

- (void)updateClientsWithDictionary:(id)dictionary
{
  v16 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    __assert_rtn("[CLSettingsManagerInternal updateClientsWithDictionary:]", "CLSettingsManagerInternal.m", 52, "![dictionary isKindOfClass:[NSMutableDictionary class]]");
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  clients = self->_clients;
  v6 = [(NSMutableSet *)clients countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(clients);
        }

        [*(*(&v11 + 1) + 8 * v9++) didUpdateSettings:dictionary];
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)clients countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)syncgetSetValue:(id)value forKey:(id)key withoutNotifying:(id)notifying
{
  v21 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self->_settingsDictionary setValue:value forKey:key];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:self->_settingsDictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  clients = self->_clients;
  v9 = [(NSMutableSet *)clients countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(clients);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        if (v13 != notifying)
        {
          [v13 didUpdateSettings:v7];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableSet *)clients countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

@end