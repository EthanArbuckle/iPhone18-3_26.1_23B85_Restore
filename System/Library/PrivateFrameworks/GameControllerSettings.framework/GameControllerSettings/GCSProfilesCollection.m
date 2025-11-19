@interface GCSProfilesCollection
- (BOOL)storeVersionIsCompatible;
- (GCSProfilesCollection)initWithSettingsStore:(id)a3 userDefaults:(id)a4;
- (GCSSettingsStoreService)settingsStore;
- (id)profileForIdentifier:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)updateProfiles:(id)a3;
@end

@implementation GCSProfilesCollection

- (GCSProfilesCollection)initWithSettingsStore:(id)a3 userDefaults:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = GCSProfilesCollection;
  v8 = [(GCSProfilesCollection *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_settingsStore, v6);
    objc_storeStrong(&v9->_userDefaults, a4);
    v10 = +[GCSProfile defaultProfile];
    v19[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    values = v9->_values;
    v9->_values = v11;

    [(GCUserDefaults *)v9->_userDefaults addObserver:v9 forKeyPath:@"profiles" options:5 context:0];
    WeakRetained = objc_loadWeakRetained(&v9->_settingsStore);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v15 = objc_loadWeakRetained(&v9->_settingsStore);
      [v15 addObserver:v9 forKeyPath:@"settingsVersion" options:5 context:0];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)storeVersionIsCompatible
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsStore);
  v3 = [WeakRetained savedDataMeetsRequiredVersion:@"10.1.21"];

  return v3;
}

- (id)profileForIdentifier:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_values;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 uuid];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v13 = v10;

          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = +[GCSProfile defaultProfile];
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)updateProfiles:(id)a3
{
  v27[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(GCSProfilesCollection *)self storeVersionIsCompatible])
  {
    v5 = [v4 objectForKeyedSubscript:@"data"];
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSObject count](v5, "count")}];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v5 = v5;
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v21;
        do
        {
          v10 = 0;
          do
          {
            if (*v21 != v9)
            {
              objc_enumerationMutation(v5);
            }

            v11 = *(*(&v20 + 1) + 8 * v10);
            v12 = [GCSProfile alloc];
            v13 = [(GCSProfile *)v12 initWithJSONObject:v11, v20];
            [v6 addObject:v13];

            ++v10;
          }

          while (v8 != v10);
          v8 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v8);
      }

      [(GCSProfilesCollection *)self setValues:v6];
      v14 = getGCSLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [(GCSProfilesCollection *)self values];
        *buf = 138412290;
        v26 = v15;
        _os_log_impl(&dword_24E4FA000, v14, OS_LOG_TYPE_INFO, "GCSProfilesCollection.values = %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v16 = +[GCSProfile defaultProfile];
    v27[0] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    [(GCSProfilesCollection *)self setValues:v17];

    v5 = getGCSLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v18 = [(GCSProfilesCollection *)self values];
      *buf = 138412290;
      v26 = v18;
      _os_log_impl(&dword_24E4FA000, v5, OS_LOG_TYPE_INFO, "GCSProfilesCollection.values = %@", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"profiles"])
  {
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  }

  else
  {
    if (![v10 isEqualToString:@"settingsVersion"])
    {
      v15.receiver = self;
      v15.super_class = GCSProfilesCollection;
      [(GCSProfilesCollection *)&v15 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
      goto LABEL_7;
    }

    v13 = [(GCUserDefaults *)self->_userDefaults objectForKey:@"profiles"];
  }

  v14 = v13;
  [(GCSProfilesCollection *)self updateProfiles:v13];

LABEL_7:
}

- (void)dealloc
{
  [(GCUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:@"profiles" context:0];
  WeakRetained = objc_loadWeakRetained(&self->_settingsStore);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = objc_loadWeakRetained(&self->_settingsStore);
    [v5 removeObserver:self forKeyPath:@"settingsVersion" context:0];
  }

  v6.receiver = self;
  v6.super_class = GCSProfilesCollection;
  [(GCSProfilesCollection *)&v6 dealloc];
}

- (GCSSettingsStoreService)settingsStore
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsStore);

  return WeakRetained;
}

@end