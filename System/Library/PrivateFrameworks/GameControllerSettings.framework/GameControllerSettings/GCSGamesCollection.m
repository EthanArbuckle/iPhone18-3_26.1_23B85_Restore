@interface GCSGamesCollection
- (BOOL)storeVersionIsCompatible;
- (GCSGamesCollection)initWithSettingsStore:(id)a3 userDefaults:(id)a4;
- (GCSSettingsStoreService)settingsStore;
- (id)gameWithBundleIdentifier:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)updateGames:(id)a3;
@end

@implementation GCSGamesCollection

- (GCSGamesCollection)initWithSettingsStore:(id)a3 userDefaults:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = GCSGamesCollection;
  v8 = [(GCSGamesCollection *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_settingsStore, v6);
    objc_storeStrong(&v9->_userDefaults, a4);
    v10 = +[GCSGame defaultGame];
    v19[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    values = v9->_values;
    v9->_values = v11;

    [(GCUserDefaults *)v9->_userDefaults addObserver:v9 forKeyPath:@"games" options:5 context:0];
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

- (id)gameWithBundleIdentifier:(id)a3
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
        v10 = [v9 bundleIdentifier];
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

- (void)updateGames:(id)a3
{
  v31[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(GCSGamesCollection *)self storeVersionIsCompatible])
  {
    v5 = [v4 objectForKeyedSubscript:@"data"];
    if (v5)
    {
      v22 = v4;
      v23 = self;
      v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSObject count](v5, "count")}];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v5 = v5;
      v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v25;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v25 != v9)
            {
              objc_enumerationMutation(v5);
            }

            v11 = [[GCSGame alloc] initWithJSONObject:*(*(&v24 + 1) + 8 * i)];
            v12 = [(GCSGame *)v11 bundleIdentifier];
            v13 = +[GCSGame defaultIdentifier];
            v14 = [v12 isEqualToString:v13];

            if (v14)
            {
              objc_storeStrong(&v23->_defaultGame, v11);
            }

            [v6 addObject:{v11, v22}];
          }

          v8 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v8);
      }

      [(GCSGamesCollection *)v23 setValues:v6];
      v15 = getGCSLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [(GCSGamesCollection *)v23 values];
        *buf = 138412290;
        v30 = v16;
        _os_log_impl(&dword_24E4FA000, v15, OS_LOG_TYPE_INFO, "GCSGamesCollection.values = %@", buf, 0xCu);
      }

      v4 = v22;
    }
  }

  else
  {
    v17 = +[GCSGame defaultGame];
    defaultGame = self->_defaultGame;
    self->_defaultGame = v17;

    v31[0] = self->_defaultGame;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    [(GCSGamesCollection *)self setValues:v19];

    v5 = getGCSLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v20 = [(GCSGamesCollection *)self values];
      *buf = 138412290;
      v30 = v20;
      _os_log_impl(&dword_24E4FA000, v5, OS_LOG_TYPE_INFO, "GCSGamesCollection.values = %@", buf, 0xCu);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"games"])
  {
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  }

  else
  {
    if (![v10 isEqualToString:@"settingsVersion"])
    {
      v15.receiver = self;
      v15.super_class = GCSGamesCollection;
      [(GCSGamesCollection *)&v15 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
      goto LABEL_7;
    }

    v13 = [(GCUserDefaults *)self->_userDefaults objectForKey:@"games"];
  }

  v14 = v13;
  [(GCSGamesCollection *)self updateGames:v13];

LABEL_7:
}

- (void)dealloc
{
  [(GCUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:@"games" context:0];
  WeakRetained = objc_loadWeakRetained(&self->_settingsStore);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = objc_loadWeakRetained(&self->_settingsStore);
    [v5 removeObserver:self forKeyPath:@"settingsVersion" context:0];
  }

  v6.receiver = self;
  v6.super_class = GCSGamesCollection;
  [(GCSGamesCollection *)&v6 dealloc];
}

- (GCSSettingsStoreService)settingsStore
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsStore);

  return WeakRetained;
}

@end