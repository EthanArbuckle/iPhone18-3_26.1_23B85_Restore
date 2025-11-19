@interface GCSCopilotFusedControllersCollection
- (BOOL)storeVersionIsCompatible;
- (GCSCopilotFusedControllersCollection)initWithSettingsStore:(id)a3 userDefaults:(id)a4;
- (GCSSettingsStoreService)settingsStore;
- (id)_unitTest_fusePilotController:(id)a3 withCopilot:(id)a4;
- (id)copilotFusedControllerForControllerIdentifier:(id)a3;
- (id)copilotFusedControllerForCopilotControllerIdentifier:(id)a3;
- (id)copilotFusedControllerForFusedControllerIdentifier:(id)a3;
- (id)copilotFusedControllerForPilotControllerIdentifier:(id)a3;
- (void)_unitTest_saveCopilotFusedControllers:(id)a3;
- (void)_unitTest_unfuseCopilotFusedController:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)updateCopilotFusedControllers:(id)a3;
@end

@implementation GCSCopilotFusedControllersCollection

- (GCSCopilotFusedControllersCollection)initWithSettingsStore:(id)a3 userDefaults:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = GCSCopilotFusedControllersCollection;
  v8 = [(GCSCopilotFusedControllersCollection *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_settingsStore, v6);
    objc_storeStrong(&v9->_userDefaults, a4);
    [(GCUserDefaults *)v9->_userDefaults addObserver:v9 forKeyPath:@"copilotFusedControllers" options:5 context:0];
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

- (id)copilotFusedControllerForControllerIdentifier:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_values;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 fusedControllerIdentifier];
        if ([v11 isEqualToString:v4])
        {
          goto LABEL_14;
        }

        v12 = [v10 pilotIdentifier];
        if ([v12 isEqualToString:v4])
        {

LABEL_14:
LABEL_15:
          v15 = v10;
          goto LABEL_16;
        }

        v13 = [v10 copilotIdentifier];
        v14 = [v13 isEqualToString:v4];

        if (v14)
        {
          goto LABEL_15;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v15 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_16:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)copilotFusedControllerForFusedControllerIdentifier:(id)a3
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
        v10 = [v9 fusedControllerIdentifier];
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

- (id)copilotFusedControllerForPilotControllerIdentifier:(id)a3
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
        v10 = [v9 pilotIdentifier];
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

- (id)copilotFusedControllerForCopilotControllerIdentifier:(id)a3
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
        v10 = [v9 copilotIdentifier];
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

- (void)updateCopilotFusedControllers:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(GCSCopilotFusedControllersCollection *)self storeVersionIsCompatible])
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
            v12 = [GCSCopilotFusedController alloc];
            v13 = [(GCSCopilotFusedController *)v12 initWithJSONObject:v11, v18];
            [v6 addObject:v13];

            ++v10;
          }

          while (v8 != v10);
          v8 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v8);
      }

      [(GCSCopilotFusedControllersCollection *)self setValues:v6];
      v14 = getGCSLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [(GCSCopilotFusedControllersCollection *)self values];
        *buf = 138412290;
        v24 = v15;
        _os_log_impl(&dword_24E4FA000, v14, OS_LOG_TYPE_INFO, "GCSCopilotFusedControllersCollection.values = %@", buf, 0xCu);
      }
    }
  }

  else
  {
    [(GCSCopilotFusedControllersCollection *)self setValues:MEMORY[0x277CBEBF8]];
    v5 = getGCSLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v16 = [(GCSCopilotFusedControllersCollection *)self values];
      *buf = 138412290;
      v24 = v16;
      _os_log_impl(&dword_24E4FA000, v5, OS_LOG_TYPE_INFO, "GCSCopilotFusedControllersCollection.values = %@", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"copilotFusedControllers"])
  {
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  }

  else
  {
    if (![v10 isEqualToString:@"settingsVersion"])
    {
      v15.receiver = self;
      v15.super_class = GCSCopilotFusedControllersCollection;
      [(GCSCopilotFusedControllersCollection *)&v15 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
      goto LABEL_7;
    }

    v13 = [(GCUserDefaults *)self->_userDefaults objectForKey:@"copilotFusedControllers"];
  }

  v14 = v13;
  [(GCSCopilotFusedControllersCollection *)self updateCopilotFusedControllers:v13];

LABEL_7:
}

- (void)dealloc
{
  [(GCUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:@"copilotFusedControllers" context:0];
  WeakRetained = objc_loadWeakRetained(&self->_settingsStore);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = objc_loadWeakRetained(&self->_settingsStore);
    [v5 removeObserver:self forKeyPath:@"settingsVersion" context:0];
  }

  v6.receiver = self;
  v6.super_class = GCSCopilotFusedControllersCollection;
  [(GCSCopilotFusedControllersCollection *)&v6 dealloc];
}

- (id)_unitTest_fusePilotController:(id)a3 withCopilot:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [(GCSCopilotFusedControllersCollection *)self copilotFusedControllerForControllerIdentifier:v8];

  if (v9)
  {
    [GCSCopilotFusedControllersCollection _unitTest_fusePilotController:a2 withCopilot:self];
  }

  v10 = [(GCSCopilotFusedControllersCollection *)self copilotFusedControllerForControllerIdentifier:v7];

  if (v10)
  {
    [GCSCopilotFusedControllersCollection _unitTest_fusePilotController:a2 withCopilot:self];
  }

  v11 = [MEMORY[0x277CCAD78] UUID];
  v12 = [v11 UUIDString];

  v13 = [[GCSCopilotFusedController alloc] initWithFusedControllerIdentifier:v12 pilotIdentifier:v8 copilotIdentifier:v7];
  values = self->_values;
  if (values)
  {
    v15 = [(NSArray *)values mutableCopy];
  }

  else
  {
    v15 = objc_opt_new();
  }

  v16 = v15;
  [(NSArray *)v15 addObject:v13];
  v17 = self->_values;
  self->_values = v16;
  v18 = v16;

  [(GCSCopilotFusedControllersCollection *)self _unitTest_saveCopilotFusedControllers:v18];

  return v12;
}

- (void)_unitTest_unfuseCopilotFusedController:(id)a3
{
  v10 = [(GCSCopilotFusedControllersCollection *)self copilotFusedControllerForControllerIdentifier:a3];
  if (!v10)
  {
    [(GCSCopilotFusedControllersCollection *)a2 _unitTest_unfuseCopilotFusedController:?];
  }

  values = self->_values;
  if (values)
  {
    v6 = [(NSArray *)values mutableCopy];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;
  [(NSArray *)v6 removeObject:v10];
  v8 = self->_values;
  self->_values = v7;
  v9 = v7;

  [(GCSCopilotFusedControllersCollection *)self _unitTest_saveCopilotFusedControllers:v9];
}

- (void)_unitTest_saveCopilotFusedControllers:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v17 + 1) + 8 * v10) jsonObject];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  v21[0] = @"data";
  v21[1] = @"tombstones";
  v22[0] = v5;
  v12 = [(GCUserDefaults *)self->_userDefaults objectForKey:?];
  v13 = v12;
  v14 = MEMORY[0x277CBEBF8];
  if (v12)
  {
    v14 = v12;
  }

  v22[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:{2, v17}];

  [(GCUserDefaults *)self->_userDefaults setObject:@"10.1.21" forKey:@"settingsVersion"];
  [(GCUserDefaults *)self->_userDefaults setObject:v15 forKey:@"copilotFusedControllers"];

  v16 = *MEMORY[0x277D85DE8];
}

- (GCSSettingsStoreService)settingsStore
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsStore);

  return WeakRetained;
}

- (void)_unitTest_fusePilotController:(uint64_t)a1 withCopilot:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCSCopilotFusedControllersCollection.m" lineNumber:134 description:@"The pilot controller is already fused to another controller"];
}

- (void)_unitTest_fusePilotController:(uint64_t)a1 withCopilot:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCSCopilotFusedControllersCollection.m" lineNumber:135 description:@"The copilot controller is already fused to another controller"];
}

- (void)_unitTest_unfuseCopilotFusedController:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCSCopilotFusedControllersCollection.m" lineNumber:151 description:@"The copilot fused controller does not exist"];
}

@end