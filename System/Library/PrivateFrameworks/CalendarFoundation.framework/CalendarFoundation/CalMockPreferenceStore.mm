@interface CalMockPreferenceStore
+ (id)decodeKeysDictionary:(id)dictionary;
+ (id)encodeKeysDictionary:(id)dictionary;
+ (id)inMemoryStore;
+ (id)preferencesStoreForPath:(id)path;
- (BOOL)_getValue:(id *)value forDomain:(id)domain key:(id)key;
- (BOOL)getBoolean:(BOOL *)boolean forDomain:(id)domain key:(id)key;
- (BOOL)getInteger:(int64_t *)integer forDomain:(id)domain key:(id)key;
- (BOOL)getValue:(id *)value forDomain:(id)domain key:(id)key;
- (CalMockPreferenceStore)init;
- (CalMockPreferenceStore)initWithPath:(id)path;
- (void)_setValue:(id)value forDomain:(id)domain key:(id)key;
- (void)setValue:(id)value forDomain:(id)domain key:(id)key;
@end

@implementation CalMockPreferenceStore

- (CalMockPreferenceStore)init
{
  v9.receiver = self;
  v9.super_class = CalMockPreferenceStore;
  v2 = [(CalMockPreferenceStore *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_opt_new();
    keys = v3->_keys;
    v3->_keys = v4;

    v6 = objc_opt_new();
    values = v3->_values;
    v3->_values = v6;
  }

  return v3;
}

- (CalMockPreferenceStore)initWithPath:(id)path
{
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = CalMockPreferenceStore;
  v5 = [(CalMockPreferenceStore *)&v20 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [CalMockPreferenceStore storagePathForDirectory:pathCopy];
    objc_storeStrong(&v6->_path, v7);
    v8 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v7];
    v9 = [v8 objectForKeyedSubscript:@"keys"];
    v10 = [CalMockPreferenceStore decodeKeysDictionary:v9];
    keys = v6->_keys;
    v6->_keys = v10;

    v12 = [v8 objectForKeyedSubscript:@"values"];
    v13 = [v12 mutableCopy];
    values = v6->_values;
    v6->_values = v13;

    if (!v6->_keys)
    {
      v15 = objc_opt_new();
      v16 = v6->_keys;
      v6->_keys = v15;
    }

    if (!v6->_values)
    {
      v17 = objc_opt_new();
      v18 = v6->_values;
      v6->_values = v17;
    }
  }

  return v6;
}

+ (id)preferencesStoreForPath:(id)path
{
  pathCopy = path;
  os_unfair_lock_lock(&preferencesStoreForPath__globalLock);
  v4 = preferencesStoreForPath__preferencesByPath;
  if (!preferencesStoreForPath__preferencesByPath)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v6 = preferencesStoreForPath__preferencesByPath;
    preferencesStoreForPath__preferencesByPath = strongToWeakObjectsMapTable;

    v4 = preferencesStoreForPath__preferencesByPath;
  }

  v7 = [v4 objectForKey:pathCopy];
  if (!v7)
  {
    v7 = [[CalMockPreferenceStore alloc] initWithPath:pathCopy];
    [preferencesStoreForPath__preferencesByPath setObject:v7 forKey:pathCopy];
  }

  os_unfair_lock_unlock(&preferencesStoreForPath__globalLock);

  return v7;
}

+ (id)inMemoryStore
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (BOOL)getBoolean:(BOOL *)boolean forDomain:(id)domain key:(id)key
{
  v10 = 0;
  v6 = [(CalMockPreferenceStore *)self getValue:&v10 forDomain:domain key:key];
  v7 = v10;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    *boolean = [v7 BOOLValue];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)getInteger:(int64_t *)integer forDomain:(id)domain key:(id)key
{
  v10 = 0;
  v6 = [(CalMockPreferenceStore *)self getValue:&v10 forDomain:domain key:key];
  v7 = v10;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    *integer = [v7 integerValue];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)getValue:(id *)value forDomain:(id)domain key:(id)key
{
  keyCopy = key;
  domainCopy = domain;
  os_unfair_lock_lock(&self->_lock);
  LOBYTE(value) = [(CalMockPreferenceStore *)self _getValue:value forDomain:domainCopy key:keyCopy];

  os_unfair_lock_unlock(&self->_lock);
  return value;
}

- (BOOL)_getValue:(id *)value forDomain:(id)domain key:(id)key
{
  domainCopy = domain;
  keyCopy = key;
  v10 = keyCopy;
  v11 = 0;
  if (domainCopy && keyCopy)
  {
    v12 = [(NSMutableDictionary *)self->_keys objectForKeyedSubscript:domainCopy];
    v13 = v12;
    if (v12 && [v12 containsObject:v10])
    {
      if (value)
      {
        v14 = [(NSMutableDictionary *)self->_values objectForKeyedSubscript:domainCopy];
        *value = [v14 objectForKeyedSubscript:v10];
      }

      v11 = 1;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)setValue:(id)value forDomain:(id)domain key:(id)key
{
  keyCopy = key;
  domainCopy = domain;
  valueCopy = value;
  os_unfair_lock_lock(&self->_lock);
  [(CalMockPreferenceStore *)self _setValue:valueCopy forDomain:domainCopy key:keyCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_setValue:(id)value forDomain:(id)domain key:(id)key
{
  v23[2] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  domainCopy = domain;
  keyCopy = key;
  v11 = keyCopy;
  if (domainCopy && keyCopy)
  {
    v12 = [(NSMutableDictionary *)self->_keys objectForKeyedSubscript:domainCopy];
    if (!v12)
    {
      v12 = objc_opt_new();
      [(NSMutableDictionary *)self->_keys setObject:v12 forKeyedSubscript:domainCopy];
    }

    [v12 addObject:v11];
    v13 = [(NSMutableDictionary *)self->_values objectForKeyedSubscript:domainCopy];
    if (!v13)
    {
      v13 = objc_opt_new();
      [(NSMutableDictionary *)self->_values setObject:v13 forKeyedSubscript:domainCopy];
    }

    [v13 setObject:valueCopy forKeyedSubscript:v11];
    if (self->_path)
    {
      v22[0] = @"keys";
      v14 = [CalMockPreferenceStore encodeKeysDictionary:self->_keys];
      v22[1] = @"values";
      v23[0] = v14;
      v23[1] = self->_values;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];

      v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_path];
      v21 = 0;
      v17 = [v15 writeToURL:v16 error:&v21];
      v18 = v21;

      if ((v17 & 1) == 0)
      {
        v19 = +[CalPreferences log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [CalMockPreferenceStore _setValue:v18 forDomain:v19 key:?];
        }
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

+ (id)encodeKeysDictionary:(id)dictionary
{
  v20 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = dictionaryCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v15}];
        allObjects = [v11 allObjects];
        [v4 setObject:allObjects forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)decodeKeysDictionary:(id)dictionary
{
  v21 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = dictionaryCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = objc_alloc(MEMORY[0x1E695DFA8]);
        v12 = [v5 objectForKeyedSubscript:{v10, v16}];
        v13 = [v11 initWithArray:v12];
        [v4 setObject:v13 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)_setValue:(uint64_t)a1 forDomain:(NSObject *)a2 key:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "Couldn't save preferences: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end