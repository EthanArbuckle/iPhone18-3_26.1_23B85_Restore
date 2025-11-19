@interface BLTSectionConfiguration
- (BLTSectionConfiguration)initWithWatchKitAppList:(id)a3;
- (BLTSectionConfigurationDelegate)delegate;
- (BOOL)override:(id)a3 appliesToConfigurationForSectionID:(id)a4;
- (BOOL)shouldSectionIDSettingsAlwaysSync:(id)a3;
- (void)_waitForWatchKitAppListLoaded;
- (void)watchKitAppList:(id)a3 added:(id)a4 removed:(id)a5;
@end

@implementation BLTSectionConfiguration

- (BLTSectionConfiguration)initWithWatchKitAppList:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = BLTSectionConfiguration;
  v6 = [(BLTSectionConfigurationInternal *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_watchKitAppList, a3);
    [(BLTWatchKitAppList *)v7->_watchKitAppList setDelegate:v7];
    v8 = objc_alloc_init(MEMORY[0x277CCA928]);
    watchKitAppListLoadedCondition = v7->_watchKitAppListLoadedCondition;
    v7->_watchKitAppListLoadedCondition = v8;

    if (![(BLTWatchKitAppList *)v7->_watchKitAppList isLoaded])
    {
      watchKitAppList = v7->_watchKitAppList;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __51__BLTSectionConfiguration_initWithWatchKitAppList___block_invoke;
      v12[3] = &unk_278D31428;
      v13 = v7;
      [(BLTWatchKitAppList *)watchKitAppList fetchWatchKitInfoWithCompletion:v12];
    }
  }

  return v7;
}

uint64_t __51__BLTSectionConfiguration_initWithWatchKitAppList___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) lock];
  *(*(a1 + 32) + 32) = 1;
  [*(*(a1 + 32) + 24) signal];
  v2 = *(*(a1 + 32) + 24);

  return [v2 unlock];
}

- (void)_waitForWatchKitAppListLoaded
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_241FB3000, log, OS_LOG_TYPE_ERROR, "Timed out waiting for watchkit app list to load", buf, 2u);
}

- (void)watchKitAppList:(id)a3 added:(id)a4 removed:(id)a5
{
  v7 = a5;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sectionConfiguration:self addedSectionIDs:v8 removedSectionIDs:v7];
}

- (BOOL)shouldSectionIDSettingsAlwaysSync:(id)a3
{
  v4 = a3;
  [(BLTSectionConfiguration *)self _waitForWatchKitAppListLoaded];
  v5 = [(BLTWatchKitAppList *)self->_watchKitAppList watchKitAppDefinitionWithBundleID:v4];
  if ([v5 isInstalled])
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = BLTSectionConfiguration;
    v6 = [(BLTSectionConfigurationInternal *)&v8 shouldSectionIDSettingsAlwaysSync:v4];
  }

  return v6;
}

- (BOOL)override:(id)a3 appliesToConfigurationForSectionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277CF3400]];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = [v6 objectForKeyedSubscript:*MEMORY[0x277CF33F8]];
    v11 = [v10 BOOLValue];

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = 2;
    }

    v13 = [(BLTSectionConfigurationInternal *)self setCoordinationType:v12 sectionID:v7];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BLTSectionConfigurationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end