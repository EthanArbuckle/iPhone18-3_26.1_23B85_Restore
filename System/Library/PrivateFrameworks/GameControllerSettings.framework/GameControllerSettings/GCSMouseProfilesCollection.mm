@interface GCSMouseProfilesCollection
- (BOOL)storeVersionIsCompatible;
- (GCSMouseProfilesCollection)initWithSettingsStore:(id)store userDefaults:(id)defaults;
- (GCSSettingsStoreService)settingsStore;
- (id)mouseProfileForBundleIdentifier:(id)identifier;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateMouseProfiles:(id)profiles;
@end

@implementation GCSMouseProfilesCollection

- (GCSMouseProfilesCollection)initWithSettingsStore:(id)store userDefaults:(id)defaults
{
  storeCopy = store;
  defaultsCopy = defaults;
  v13.receiver = self;
  v13.super_class = GCSMouseProfilesCollection;
  v8 = [(GCSMouseProfilesCollection *)&v13 init];
  if (v8)
  {
    v9 = objc_opt_new();
    values = v8->_values;
    v8->_values = v9;

    v11 = objc_storeWeak(&v8->_settingsStore, storeCopy);
    [storeCopy addObserver:v8 forKeyPath:@"mouseProfiles" options:5 context:KVOContext];

    objc_storeStrong(&v8->_userDefaults, defaults);
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (KVOContext == context)
  {
    WeakRetained = objc_loadWeakRetained(&self->_settingsStore);

    if (WeakRetained == objectCopy)
    {
      if (([pathCopy isEqualToString:@"mouseProfiles"] & 1) == 0)
      {
        [GCSMouseProfilesCollection observeValueForKeyPath:a2 ofObject:self change:pathCopy context:?];
      }

      v15 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    }

    else
    {
      if (self->_userDefaults != objectCopy)
      {
        v17 = MEMORY[0x277CBEAD8];
        v18 = *MEMORY[0x277CBE658];
        objectCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"KVO notification from unknown object <%@:%p>", objc_opt_class(), objectCopy];
        v20 = [v17 exceptionWithName:v18 reason:objectCopy userInfo:0];
        v21 = v20;

        objc_exception_throw(v20);
      }

      if (([pathCopy isEqualToString:@"settingsVersion"] & 1) == 0)
      {
        [GCSMouseProfilesCollection observeValueForKeyPath:a2 ofObject:self change:pathCopy context:?];
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
    [(GCSMouseProfilesCollection *)&v22 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (BOOL)storeVersionIsCompatible
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsStore);
  v3 = [WeakRetained savedDataMeetsRequiredVersion:@"10.1.21"];

  return v3;
}

- (void)updateMouseProfiles:(id)profiles
{
  v20 = *MEMORY[0x277D85DE8];
  profilesCopy = profiles;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(GCSMouseProfilesCollection *)self storeVersionIsCompatible])
  {
    v5 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = profilesCopy;
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

- (id)mouseProfileForBundleIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  values = [(GCSMouseProfilesCollection *)self values];
  v6 = [values countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(values);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        bundleIdentifier = [v9 bundleIdentifier];
        v11 = [bundleIdentifier isEqualToString:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [values countByEnumeratingWithState:&v14 objects:v18 count:16];
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