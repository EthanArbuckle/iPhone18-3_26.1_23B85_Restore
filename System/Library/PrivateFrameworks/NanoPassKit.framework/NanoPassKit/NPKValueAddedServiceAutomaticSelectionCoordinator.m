@interface NPKValueAddedServiceAutomaticSelectionCoordinator
- (NPKPassesDataSource)dataSource;
- (NPKValueAddedServiceAutomaticSelectionCoordinator)initWithDelegate:(id)a3 passesDataSource:(id)a4;
- (NPKValueAddedServiceAutomaticSelectionCoordinatorDelegate)delegate;
- (void)_handleWalletPreferencesChanged:(id)a3;
- (void)_updateAutomaticSelectionPasses;
- (void)passesDataSource:(id)a3 didAddPasses:(id)a4;
- (void)passesDataSource:(id)a3 didRemovePasses:(id)a4;
- (void)passesDataSource:(id)a3 didUpdatePasses:(id)a4;
- (void)passesDataSource:(id)a3 didUpdateSettingsForPass:(id)a4;
- (void)passesDataSourceDidReloadPasses:(id)a3;
- (void)passesDataSourceDidReorderPasses:(id)a3;
@end

@implementation NPKValueAddedServiceAutomaticSelectionCoordinator

- (NPKValueAddedServiceAutomaticSelectionCoordinator)initWithDelegate:(id)a3 passesDataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = NPKValueAddedServiceAutomaticSelectionCoordinator;
  v8 = [(NPKValueAddedServiceAutomaticSelectionCoordinator *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    v10 = objc_storeWeak(&v9->_dataSource, v7);
    [v7 registerObserver:v9];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v9 selector:sel__handleWalletPreferencesChanged_ name:*MEMORY[0x277D38978] object:0];
  }

  return v9;
}

- (void)passesDataSourceDidReloadPasses:(id)a3
{
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: VAS automatic selection coordinator got reloaded passes", v7, 2u);
    }
  }

  [(NPKValueAddedServiceAutomaticSelectionCoordinator *)self _updateAutomaticSelectionPasses];
}

- (void)passesDataSource:(id)a3 didAddPasses:(id)a4
{
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: VAS automatic selection coordinator got added passes", v8, 2u);
    }
  }

  [(NPKValueAddedServiceAutomaticSelectionCoordinator *)self _updateAutomaticSelectionPasses];
}

- (void)passesDataSource:(id)a3 didUpdatePasses:(id)a4
{
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: VAS automatic selection coordinator got updated passes", v8, 2u);
    }
  }

  [(NPKValueAddedServiceAutomaticSelectionCoordinator *)self _updateAutomaticSelectionPasses];
}

- (void)passesDataSource:(id)a3 didRemovePasses:(id)a4
{
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: VAS automatic selection coordinator got removed passes", v8, 2u);
    }
  }

  [(NPKValueAddedServiceAutomaticSelectionCoordinator *)self _updateAutomaticSelectionPasses];
}

- (void)passesDataSourceDidReorderPasses:(id)a3
{
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: VAS automatic selection coordinator got reordered passes", v7, 2u);
    }
  }

  [(NPKValueAddedServiceAutomaticSelectionCoordinator *)self _updateAutomaticSelectionPasses];
}

- (void)passesDataSource:(id)a3 didUpdateSettingsForPass:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 uniqueID];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: VAS automatic selection coordinator got updated settings for pass %@", &v11, 0xCu);
    }
  }

  [(NPKValueAddedServiceAutomaticSelectionCoordinator *)self _updateAutomaticSelectionPasses];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleWalletPreferencesChanged:(id)a3
{
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Wallet preferences changed", v7, 2u);
    }
  }

  [(NPKValueAddedServiceAutomaticSelectionCoordinator *)self _updateAutomaticSelectionPasses];
}

- (void)_updateAutomaticSelectionPasses
{
  v35 = *MEMORY[0x277D85DE8];
  v26 = self;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v3 = [WeakRetained passes];

  v4 = [MEMORY[0x277CBEB38] dictionary];
  v27 = [MEMORY[0x277CBEB38] dictionary];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        if (NPKIsValidVASPass(v10) && ([v10 hasStoredValue] & 1) == 0 && (objc_msgSend(v10, "settings") & 0x10) != 0)
        {
          v11 = [v10 passTypeIdentifier];
          v12 = [v4 objectForKeyedSubscript:v11];

          if (!v12)
          {
            goto LABEL_12;
          }

          v13 = [v10 passTypeIdentifier];
          v14 = [v4 objectForKeyedSubscript:v13];

          v15 = [v14 ingestedDate];
          v16 = [v10 ingestedDate];
          v17 = [v15 compare:v16];

          if (v17 == 1)
          {
            v18 = [v10 uniqueID];
            [v27 removeObjectForKey:v18];

LABEL_12:
            v19 = [v10 passTypeIdentifier];
            [v4 setObject:v10 forKeyedSubscript:v19];

            v14 = [v10 uniqueID];
            [v27 setObject:v10 forKey:v14];
          }

          continue;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  v20 = pk_General_log();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

  if (v21)
  {
    v22 = pk_General_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v27 count];
      *buf = 67109120;
      v33 = v23;
      _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: Found %d VAS passes for automatic selection", buf, 8u);
    }
  }

  v24 = objc_loadWeakRetained(&v26->_delegate);
  [v24 valueAddedServiceAutomaticSelectionCoordinator:v26 didUpdatePasses:v27];

  v25 = *MEMORY[0x277D85DE8];
}

- (NPKValueAddedServiceAutomaticSelectionCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NPKPassesDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end