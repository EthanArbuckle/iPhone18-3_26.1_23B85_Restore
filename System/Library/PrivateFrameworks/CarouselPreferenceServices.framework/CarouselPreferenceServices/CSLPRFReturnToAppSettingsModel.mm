@interface CSLPRFReturnToAppSettingsModel
+ (id)returnToAppSettingsToDictionary:(id)a3;
- (CSLPRFReturnToAppSettingsModel)init;
- (id)settingsForBundleID:(id)a3;
- (void)_withLock:(id)a3;
- (void)reloadAppSettings;
- (void)saveAppSettings;
- (void)setSettings:(id)a3 forBundleID:(id)a4;
@end

@implementation CSLPRFReturnToAppSettingsModel

- (void)setSettings:(id)a3 forBundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__CSLPRFReturnToAppSettingsModel_setSettings_forBundleID___block_invoke;
  v16[3] = &unk_2787453E0;
  v16[4] = self;
  v8 = v7;
  v17 = v8;
  v9 = v6;
  v18 = v9;
  [(CSLPRFReturnToAppSettingsModel *)self _withLock:v16];
  observers = self->_observers;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__CSLPRFReturnToAppSettingsModel_setSettings_forBundleID___block_invoke_2;
  v13[3] = &unk_278745408;
  v14 = v9;
  v15 = v8;
  v11 = v8;
  v12 = v9;
  [(CSLPRFConcurrentObserverStore *)observers enumerateObserversWithBlock:v13];
}

void __58__CSLPRFReturnToAppSettingsModel_setSettings_forBundleID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 settingsChanged:*(a1 + 32) forBundleID:*(a1 + 40)];
  }
}

- (id)settingsForBundleID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__4366;
  v15 = __Block_byref_object_dispose__4367;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__CSLPRFReturnToAppSettingsModel_settingsForBundleID___block_invoke;
  v8[3] = &unk_2787453B8;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [(CSLPRFReturnToAppSettingsModel *)self _withLock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __54__CSLPRFReturnToAppSettingsModel_settingsForBundleID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)saveAppSettings
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4366;
  v10 = __Block_byref_object_dispose__4367;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__CSLPRFReturnToAppSettingsModel_saveAppSettings__block_invoke;
  v5[3] = &unk_278745590;
  v5[4] = self;
  v5[5] = &v6;
  [(CSLPRFReturnToAppSettingsModel *)self _withLock:v5];
  [(NPSDomainAccessor *)self->_npsDomainAccessor setObject:v7[5] forKey:@"ReturnToAppSettings"];
  v3 = [(NPSDomainAccessor *)self->_npsDomainAccessor synchronize];
  v4 = [MEMORY[0x277CBEB98] setWithObject:@"ReturnToAppSettings"];
  [(NPSManager *)self->_npsManager synchronizeNanoDomain:@"com.apple.Carousel" keys:v4];

  _Block_object_dispose(&v6, 8);
}

uint64_t __49__CSLPRFReturnToAppSettingsModel_saveAppSettings__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() returnToAppSettingsToDictionary:*(*(a1 + 32) + 16)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)reloadAppSettings
{
  v3 = [(NPSDomainAccessor *)self->_npsDomainAccessor synchronize];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__CSLPRFReturnToAppSettingsModel_reloadAppSettings__block_invoke;
  v4[3] = &unk_278745368;
  v4[4] = self;
  [(CSLPRFReturnToAppSettingsModel *)self _withLock:v4];
}

void __51__CSLPRFReturnToAppSettingsModel_reloadAppSettings__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKey:@"ReturnToAppSettings"];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = v3;

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__CSLPRFReturnToAppSettingsModel_reloadAppSettings__block_invoke_2;
  v6[3] = &unk_278745340;
  v6[4] = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v6];
}

void __51__CSLPRFReturnToAppSettingsModel_reloadAppSettings__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[CSLPRFReturnToAppSettings alloc] initWithDictionary:v5];

  [*(*(a1 + 32) + 16) setObject:v7 forKeyedSubscript:v6];
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (CSLPRFReturnToAppSettingsModel)init
{
  v14.receiver = self;
  v14.super_class = CSLPRFReturnToAppSettingsModel;
  v2 = [(CSLPRFReturnToAppSettingsModel *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [CSLPRFConcurrentObserverStore alloc];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(CSLPRFConcurrentObserverStore *)v4 initWithServiceName:v6];
    observers = v3->_observers;
    v3->_observers = v7;

    v9 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.Carousel"];
    npsDomainAccessor = v3->_npsDomainAccessor;
    v3->_npsDomainAccessor = v9;

    v11 = objc_alloc_init(MEMORY[0x277D2BA60]);
    npsManager = v3->_npsManager;
    v3->_npsManager = v11;

    [(CSLPRFReturnToAppSettingsModel *)v3 reloadAppSettings];
  }

  return v3;
}

+ (id)returnToAppSettingsToDictionary:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__CSLPRFReturnToAppSettingsModel_returnToAppSettingsToDictionary___block_invoke;
  v9[3] = &unk_278745390;
  v10 = v5;
  v6 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

void __66__CSLPRFReturnToAppSettingsModel_returnToAppSettingsToDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 toDictionary];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

@end