@interface GCSMouseProfilesCollection
- (BOOL)storeVersionIsCompatible;
- (GCSMouseProfilesCollection)initWithSettingsStore:(id)a3 userDefaults:(id)a4;
- (GCSSettingsStoreService)settingsStore;
- (id)mouseProfileForBundleIdentifier:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)updateMouseProfiles:(id)a3;
@end

@implementation GCSMouseProfilesCollection

- (GCSMouseProfilesCollection)initWithSettingsStore:(id)a3 userDefaults:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = GCSMouseProfilesCollection;
  v8 = [(GCSMouseProfilesCollection *)&v13 init];
  if (v8)
  {
    v9 = objc_opt_new();
    values = v8->_values;
    v8->_values = v9;

    v11 = objc_storeWeak(&v8->_settingsStore, v6);
    [v6 addObserver:v8 forKeyPath:@"mouseProfiles" options:5 context:KVOContext];

    objc_storeStrong(&v8->_userDefaults, a4);
    [(GCUserDefaults *)v8->_userDefaults addObserver:v8 forKeyPath:@"settingsVersion" options:5 context:KVOContext];
  }

  return v8;
}

- (void)dealloc
{
  [(GCUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:@"settingsVersion" context:KVOContext];
  WeakRetained = objc_loadWeakRetained(&self->_settingsStore);
  [WeakRetained removeObserver:self forKeyPath:@"mouseProfiles" context:KVOContext];

  v4.receiver = self;
  v4.super_class = GCSMouseProfilesCollection;
  [(GCSMouseProfilesCollection *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (KVOContext == a6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_settingsStore);

    if (WeakRetained == v12)
    {
      if (([v11 isEqualToString:@"mouseProfiles"] & 1) == 0)
      {
        [GCSMouseProfilesCollection observeValueForKeyPath:a2 ofObject:self change:v11 context:?];
      }

      v15 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    }

    else
    {
      if (self->_userDefaults != v12)
      {
        v17 = MEMORY[0x277CBEAD8];
        v18 = *MEMORY[0x277CBE658];
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"KVO notification from unknown object <%@:%p>", objc_opt_class(), v12];
        v20 = [v17 exceptionWithName:v18 reason:v19 userInfo:0];
        v21 = v20;

        objc_exception_throw(v20);
      }

      if (([v11 isEqualToString:@"settingsVersion"] & 1) == 0)
      {
        [GCSMouseProfilesCollection observeValueForKeyPath:a2 ofObject:self change:v11 context:?];
      }

      v15 = [(GCUserDefaults *)self->_userDefaults objectForKey:@"mouseProfiles"];
    }

    v16 = v15;
    [(GCSMouseProfilesCollection *)self updateMouseProfiles:v15];
  }

  else
  {
    v22.receiver = self;
    v22.super_class = GCSMouseProfilesCollection;
    [(GCSMouseProfilesCollection *)&v22 observeValueForKeyPath:v11 ofObject:v12 change:v13 context:a6];
  }
}

- (BOOL)storeVersionIsCompatible
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsStore);
  v3 = [WeakRetained savedDataMeetsRequiredVersion:@"10.1.21"];

  return v3;
}

- (void)updateMouseProfiles:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(GCSMouseProfilesCollection *)self storeVersionIsCompatible])
  {
    v5 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          v12 = [GCSMouseProfile alloc];
          v13 = [(GCSMouseProfile *)v12 initWithJSONObject:v11, v15];
          if (v13)
          {
            [v5 addObject:v13];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    [(GCSMouseProfilesCollection *)self setValues:v5];
  }

  else
  {
    [(GCSMouseProfilesCollection *)self setValues:MEMORY[0x277CBEBF8]];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)mouseProfileForBundleIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(GCSMouseProfilesCollection *)self values];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 bundleIdentifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (GCSSettingsStoreService)settingsStore
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsStore);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(uint64_t)a3 ofObject:change:context:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"GCSMouseProfilesCollection.m" lineNumber:55 description:{@"Unhandled keypath %@", a3}];
}

- (void)observeValueForKeyPath:(uint64_t)a3 ofObject:change:context:.cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"GCSMouseProfilesCollection.m" lineNumber:52 description:{@"Unhandled keypath %@", a3}];
}

@end