@interface GCSTombstonesCollection
- (BOOL)storeVersionIsCompatible;
- (GCSSettingsStoreService)settingsStore;
- (GCSTombstonesCollection)initWithSettingsStore:(id)store userDefaults:(id)defaults;
- (id)tombstoneForIdentifier:(id)identifier;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateTombstones:(id)tombstones;
@end

@implementation GCSTombstonesCollection

- (GCSTombstonesCollection)initWithSettingsStore:(id)store userDefaults:(id)defaults
{
  storeCopy = store;
  defaultsCopy = defaults;
  v15.receiver = self;
  v15.super_class = GCSTombstonesCollection;
  v8 = [(GCSTombstonesCollection *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_settingsStore, storeCopy);
    objc_storeStrong(&v9->_userDefaults, defaults);
    values = v9->_values;
    v9->_values = MEMORY[0x277CBEBF8];

    [(GCUserDefaults *)v9->_userDefaults addObserver:v9 forKeyPath:@"tombstones" options:5 context:0];
    WeakRetained = objc_loadWeakRetained(&v9->_settingsStore);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v13 = objc_loadWeakRetained(&v9->_settingsStore);
      [v13 addObserver:v9 forKeyPath:@"tombstones" options:5 context:0];
    }
  }

  return v9;
}

- (BOOL)storeVersionIsCompatible
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsStore);
  v3 = [WeakRetained savedDataMeetsRequiredVersion:@"10.1.21"];

  return v3;
}

- (id)tombstoneForIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_values;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        identifier = [v9 identifier];
        v11 = [identifier isEqual:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)updateTombstones:(id)tombstones
{
  v25 = *MEMORY[0x277D85DE8];
  tombstonesCopy = tombstones;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(GCSTombstonesCollection *)self storeVersionIsCompatible])
  {
    v5 = tombstonesCopy;
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSObject count](v5, "count")}];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v5 = v5;
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v19;
        do
        {
          v10 = 0;
          do
          {
            if (*v19 != v9)
            {
              objc_enumerationMutation(v5);
            }

            v11 = *(*(&v18 + 1) + 8 * v10);
            v12 = [GCSTombstone alloc];
            v13 = [(GCSTombstone *)v12 initWithJSONObject:v11, v18];
            [v6 addObject:v13];

            ++v10;
          }

          while (v8 != v10);
          v8 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v8);
      }

      [(GCSTombstonesCollection *)self setValues:v6];
      v14 = getGCSLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        values = [(GCSTombstonesCollection *)self values];
        *buf = 138412290;
        v24 = values;
        _os_log_impl(&dword_24E4FA000, v14, OS_LOG_TYPE_INFO, "GCSTombstones.values = %@", buf, 0xCu);
      }
    }
  }

  else
  {
    [(GCSTombstonesCollection *)self setValues:MEMORY[0x277CBEBF8]];
    v5 = getGCSLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      values2 = [(GCSTombstonesCollection *)self values];
      *buf = 138412290;
      v24 = values2;
      _os_log_impl(&dword_24E4FA000, v5, OS_LOG_TYPE_INFO, "GCSTombstones.values = %@", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"tombstones"])
  {
    v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  }

  else
  {
    if (![pathCopy isEqualToString:@"settingsVersion"])
    {
      v15.receiver = self;
      v15.super_class = GCSTombstonesCollection;
      [(GCSTombstonesCollection *)&v15 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
      goto LABEL_7;
    }

    v13 = [(GCUserDefaults *)self->_userDefaults objectForKey:@"tombstones"];
  }

  v14 = v13;
  [(GCSTombstonesCollection *)self updateTombstones:v13];

LABEL_7:
}

- (void)dealloc
{
  [(GCUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:@"tombstones" context:0];
  WeakRetained = objc_loadWeakRetained(&self->_settingsStore);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = objc_loadWeakRetained(&self->_settingsStore);
    [v5 removeObserver:self forKeyPath:@"tombstones" context:0];
  }

  v6.receiver = self;
  v6.super_class = GCSTombstonesCollection;
  [(GCSTombstonesCollection *)&v6 dealloc];
}

- (GCSSettingsStoreService)settingsStore
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsStore);

  return WeakRetained;
}

@end