@interface FCAppInstallationObserver
- (BOOL)fitnessAppInstalled;
- (FCAppInstallationObserver)init;
- (void)_applicationsInstalled:(id)installed;
- (void)_applicationsUninstalled:(id)uninstalled;
- (void)_setAppInstalled:(BOOL)installed;
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__applicationsInstalled_ name:*MEMORY[0x277D10448] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__applicationsUninstalled_ name:*MEMORY[0x277D10458] object:0];
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

- (void)_setAppInstalled:(BOOL)installed
{
  os_unfair_lock_lock(&self->_unfairLock);
  self->_isAppInstalled = installed;

  os_unfair_lock_unlock(&self->_unfairLock);
}

- (void)_applicationsInstalled:(id)installed
{
  userInfo = [installed userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D10440]];

  if ([v5 containsObject:*MEMORY[0x277D09BD0]])
  {
    [(FCAppInstallationObserver *)self _updateApplicationInstalled];
  }
}

- (void)_applicationsUninstalled:(id)uninstalled
{
  userInfo = [uninstalled userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D10450]];

  if ([v5 containsObject:*MEMORY[0x277D09BD0]])
  {
    [(FCAppInstallationObserver *)self _updateApplicationInstalled];
  }
}

- (void)_updateApplicationInstalled
{
  v12 = *MEMORY[0x277D85DE8];
  fitnessAppInstalled = [(FCAppInstallationObserver *)self fitnessAppInstalled];
  fitnessAppInstalled2 = [(FCCAppInstallationUtility *)self->_appInstallationUtility fitnessAppInstalled];
  if (fitnessAppInstalled != fitnessAppInstalled2)
  {
    v5 = fitnessAppInstalled2;
    [(FCAppInstallationObserver *)self _setAppInstalled:fitnessAppInstalled2];
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67240448;
      v9[1] = fitnessAppInstalled;
      v10 = 1026;
      v11 = v5;
      _os_log_impl(&dword_24B55B000, v6, OS_LOG_TYPE_DEFAULT, "Fitness app installed state changed: %{public}d -> %{public}d", v9, 0xEu);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"FCFitnessInstallStateChangedNotification" object:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end