@interface FCAppInstallationObserver
- (BOOL)fitnessAppInstalled;
- (FCAppInstallationObserver)init;
- (void)_applicationsInstalled:(id)a3;
- (void)_applicationsUninstalled:(id)a3;
- (void)_setAppInstalled:(BOOL)a3;
- (void)_updateApplicationInstalled;
@end

@implementation FCAppInstallationObserver

- (FCAppInstallationObserver)init
{
  v8.receiver = self;
  v8.super_class = FCAppInstallationObserver;
  v2 = [(FCAppInstallationObserver *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D09C58]);
    appInstallationUtility = v2->_appInstallationUtility;
    v2->_appInstallationUtility = v3;

    v2->_unfairLock._os_unfair_lock_opaque = 0;
    [(FCAppInstallationObserver *)v2 _setAppInstalled:[(FCCAppInstallationUtility *)v2->_appInstallationUtility fitnessAppInstalled]];
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel__applicationsInstalled_ name:*MEMORY[0x277D10448] object:0];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v2 selector:sel__applicationsUninstalled_ name:*MEMORY[0x277D10458] object:0];
  }

  return v2;
}

- (BOOL)fitnessAppInstalled
{
  os_unfair_lock_lock(&self->_unfairLock);
  isAppInstalled = self->_isAppInstalled;
  os_unfair_lock_unlock(&self->_unfairLock);
  return isAppInstalled;
}

- (void)_setAppInstalled:(BOOL)a3
{
  os_unfair_lock_lock(&self->_unfairLock);
  self->_isAppInstalled = a3;

  os_unfair_lock_unlock(&self->_unfairLock);
}

- (void)_applicationsInstalled:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D10440]];

  if ([v5 containsObject:*MEMORY[0x277D09BD0]])
  {
    [(FCAppInstallationObserver *)self _updateApplicationInstalled];
  }
}

- (void)_applicationsUninstalled:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D10450]];

  if ([v5 containsObject:*MEMORY[0x277D09BD0]])
  {
    [(FCAppInstallationObserver *)self _updateApplicationInstalled];
  }
}

- (void)_updateApplicationInstalled
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(FCAppInstallationObserver *)self fitnessAppInstalled];
  v4 = [(FCCAppInstallationUtility *)self->_appInstallationUtility fitnessAppInstalled];
  if (v3 != v4)
  {
    v5 = v4;
    [(FCAppInstallationObserver *)self _setAppInstalled:v4];
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67240448;
      v9[1] = v3;
      v10 = 1026;
      v11 = v5;
      _os_log_impl(&dword_24B55B000, v6, OS_LOG_TYPE_DEFAULT, "Fitness app installed state changed: %{public}d -> %{public}d", v9, 0xEu);
    }

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"FCFitnessInstallStateChangedNotification" object:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end