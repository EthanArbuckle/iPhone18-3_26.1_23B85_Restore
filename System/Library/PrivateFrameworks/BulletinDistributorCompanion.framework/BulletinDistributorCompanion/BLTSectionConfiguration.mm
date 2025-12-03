@interface BLTSectionConfiguration
- (BLTSectionConfiguration)initWithWatchKitAppList:(id)list;
- (BLTSectionConfigurationDelegate)delegate;
- (BOOL)override:(id)override appliesToConfigurationForSectionID:(id)d;
- (BOOL)shouldSectionIDSettingsAlwaysSync:(id)sync;
- (void)_waitForWatchKitAppListLoaded;
- (void)watchKitAppList:(id)list added:(id)added removed:(id)removed;
@end

@implementation BLTSectionConfiguration

- (BLTSectionConfiguration)initWithWatchKitAppList:(id)list
{
  listCopy = list;
  v14.receiver = self;
  v14.super_class = BLTSectionConfiguration;
  v6 = [(BLTSectionConfigurationInternal *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_watchKitAppList, list);
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

- (void)watchKitAppList:(id)list added:(id)added removed:(id)removed
{
  removedCopy = removed;
  addedCopy = added;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sectionConfiguration:self addedSectionIDs:addedCopy removedSectionIDs:removedCopy];
}

- (BOOL)shouldSectionIDSettingsAlwaysSync:(id)sync
{
  syncCopy = sync;
  [(BLTSectionConfiguration *)self _waitForWatchKitAppListLoaded];
  v5 = [(BLTWatchKitAppList *)self->_watchKitAppList watchKitAppDefinitionWithBundleID:syncCopy];
  if ([v5 isInstalled])
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = BLTSectionConfiguration;
    v6 = [(BLTSectionConfigurationInternal *)&v8 shouldSectionIDSettingsAlwaysSync:syncCopy];
  }

  return v6;
}

- (BOOL)override:(id)override appliesToConfigurationForSectionID:(id)d
{
  overrideCopy = override;
  dCopy = d;
  v8 = [overrideCopy objectForKeyedSubscript:*MEMORY[0x277CF3400]];
  bOOLValue = [v8 BOOLValue];

  if (bOOLValue)
  {
    v10 = [overrideCopy objectForKeyedSubscript:*MEMORY[0x277CF33F8]];
    bOOLValue2 = [v10 BOOLValue];

    if (bOOLValue2)
    {
      v12 = 0;
    }

    else
    {
      v12 = 2;
    }

    v13 = [(BLTSectionConfigurationInternal *)self setCoordinationType:v12 sectionID:dCopy];
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