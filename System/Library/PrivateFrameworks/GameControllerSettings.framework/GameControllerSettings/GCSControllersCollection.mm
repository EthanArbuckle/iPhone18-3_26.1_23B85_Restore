@interface GCSControllersCollection
- (BOOL)storeVersionIsCompatible;
- (GCSControllersCollection)initWithSettingsStore:(id)a3 userDefaults:(id)a4;
- (GCSSettingsStoreService)settingsStore;
- (id)controllerForPersistentIdentifier:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)updateControllers:(id)a3;
@end

@implementation GCSControllersCollection

- (GCSControllersCollection)initWithSettingsStore:(id)a3 userDefaults:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = GCSControllersCollection;
  v8 = [(GCSControllersCollection *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_settingsStore, v6);
    objc_storeStrong(&v9->_userDefaults, a4);
    [(GCUserDefaults *)v9->_userDefaults addObserver:v9 forKeyPath:@"controllers" options:5 context:0];
    WeakRetained = objc_loadWeakRetained(&v9->_settingsStore);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = objc_loadWeakRetained(&v9->_settingsStore);
      [v12 addObserver:v9 forKeyPath:@"settingsVersion" options:5 context:0];
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

- (id)controllerForPersistentIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
        v10 = [v9 persistentIdentifier];
        v11 = [v10 isEqualToString:v4];

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

- (void)updateControllers:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(GCSControllersCollection *)self storeVersionIsCompatible])
  {
    v5 = [v4 objectForKeyedSubscript:@"data"];
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
            v12 = [GCSController alloc];
            v13 = [(GCSController *)v12 initWithJSONObject:v11, v18];
            [v6 addObject:v13];

            ++v10;
          }

          while (v8 != v10);
          v8 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v8);
      }

      [(GCSControllersCollection *)self setValues:v6];
      v14 = getGCSLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [(GCSControllersCollection *)self values];
        *buf = 138412290;
        v24 = v15;
        _os_log_impl(&dword_24E4FA000, v14, OS_LOG_TYPE_INFO, "GCSControllersCollection.values = %@", buf, 0xCu);
      }
    }
  }

  else
  {
    [(GCSControllersCollection *)self setValues:MEMORY[0x277CBEBF8]];
    v5 = getGCSLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v16 = [(GCSControllersCollection *)self values];
      *buf = 138412290;
      v24 = v16;
      _os_log_impl(&dword_24E4FA000, v5, OS_LOG_TYPE_INFO, "GCSControllersCollection.values = %@", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"controllers"])
  {
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  }

  else
  {
    if (![v10 isEqualToString:@"settingsVersion"])
    {
      v15.receiver = self;
      v15.super_class = GCSControllersCollection;
      [(GCSControllersCollection *)&v15 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
      goto LABEL_7;
    }

    v13 = [(GCUserDefaults *)self->_userDefaults objectForKey:@"controllers"];
  }

  v14 = v13;
  [(GCSControllersCollection *)self updateControllers:v13];

LABEL_7:
}

- (void)dealloc
{
  [(GCUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:@"controllers" context:0];
  WeakRetained = objc_loadWeakRetained(&self->_settingsStore);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = objc_loadWeakRetained(&self->_settingsStore);
    [v5 removeObserver:self forKeyPath:@"settingsVersion" context:0];
  }

  v6.receiver = self;
  v6.super_class = GCSControllersCollection;
  [(GCSControllersCollection *)&v6 dealloc];
}

- (GCSSettingsStoreService)settingsStore
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsStore);

  return WeakRetained;
}

@end