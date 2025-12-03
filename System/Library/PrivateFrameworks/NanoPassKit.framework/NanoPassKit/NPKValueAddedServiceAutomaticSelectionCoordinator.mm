@interface NPKValueAddedServiceAutomaticSelectionCoordinator
- (NPKPassesDataSource)dataSource;
- (NPKValueAddedServiceAutomaticSelectionCoordinator)initWithDelegate:(id)delegate passesDataSource:(id)source;
- (NPKValueAddedServiceAutomaticSelectionCoordinatorDelegate)delegate;
- (void)_handleWalletPreferencesChanged:(id)changed;
- (void)_updateAutomaticSelectionPasses;
- (void)passesDataSource:(id)source didAddPasses:(id)passes;
- (void)passesDataSource:(id)source didRemovePasses:(id)passes;
- (void)passesDataSource:(id)source didUpdatePasses:(id)passes;
- (void)passesDataSource:(id)source didUpdateSettingsForPass:(id)pass;
- (void)passesDataSourceDidReloadPasses:(id)passes;
- (void)passesDataSourceDidReorderPasses:(id)passes;
@end

@implementation NPKValueAddedServiceAutomaticSelectionCoordinator

- (NPKValueAddedServiceAutomaticSelectionCoordinator)initWithDelegate:(id)delegate passesDataSource:(id)source
{
  delegateCopy = delegate;
  sourceCopy = source;
  v13.receiver = self;
  v13.super_class = NPKValueAddedServiceAutomaticSelectionCoordinator;
  v8 = [(NPKValueAddedServiceAutomaticSelectionCoordinator *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = objc_storeWeak(&v9->_dataSource, sourceCopy);
    [sourceCopy registerObserver:v9];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__handleWalletPreferencesChanged_ name:*MEMORY[0x277D38978] object:0];
  }

  return v9;
}

- (void)passesDataSourceDidReloadPasses:(id)passes
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

- (void)passesDataSource:(id)source didAddPasses:(id)passes
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

- (void)passesDataSource:(id)source didUpdatePasses:(id)passes
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

- (void)passesDataSource:(id)source didRemovePasses:(id)passes
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

- (void)passesDataSourceDidReorderPasses:(id)passes
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

- (void)passesDataSource:(id)source didUpdateSettingsForPass:(id)pass
{
  v13 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      v11 = 138412290;
      v12 = uniqueID;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: VAS automatic selection coordinator got updated settings for pass %@", &v11, 0xCu);
    }
  }

  [(NPKValueAddedServiceAutomaticSelectionCoordinator *)self _updateAutomaticSelectionPasses];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleWalletPreferencesChanged:(id)changed
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
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  passes = [WeakRetained passes];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = passes;
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
          passTypeIdentifier = [v10 passTypeIdentifier];
          v12 = [dictionary objectForKeyedSubscript:passTypeIdentifier];

          if (!v12)
          {
            goto LABEL_12;
          }

          passTypeIdentifier2 = [v10 passTypeIdentifier];
          uniqueID2 = [dictionary objectForKeyedSubscript:passTypeIdentifier2];

          ingestedDate = [uniqueID2 ingestedDate];
          ingestedDate2 = [v10 ingestedDate];
          v17 = [ingestedDate compare:ingestedDate2];

          if (v17 == 1)
          {
            uniqueID = [v10 uniqueID];
            [dictionary2 removeObjectForKey:uniqueID];

LABEL_12:
            passTypeIdentifier3 = [v10 passTypeIdentifier];
            [dictionary setObject:v10 forKeyedSubscript:passTypeIdentifier3];

            uniqueID2 = [v10 uniqueID];
            [dictionary2 setObject:v10 forKey:uniqueID2];
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
      v23 = [dictionary2 count];
      *buf = 67109120;
      v33 = v23;
      _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: Found %d VAS passes for automatic selection", buf, 8u);
    }
  }

  v24 = objc_loadWeakRetained(&selfCopy->_delegate);
  [v24 valueAddedServiceAutomaticSelectionCoordinator:selfCopy didUpdatePasses:dictionary2];

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