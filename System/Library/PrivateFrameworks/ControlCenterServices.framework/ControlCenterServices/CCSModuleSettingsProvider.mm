@interface CCSModuleSettingsProvider
+ (BOOL)_continuousExposeEnabled;
+ (id)_configurationDirectoryURL;
+ (id)_configurationFileURL;
+ (id)_defaultEnabledModuleOrder;
+ (id)_defaultFixedModuleIdentifiers;
+ (id)_defaultUserEnabledFixedModuleIdentifiers;
+ (id)_defaultUserEnabledModuleIdentifiers;
+ (id)_readSettingsWithVersion:(unint64_t *)version;
+ (id)sharedProvider;
+ (void)_writeOrderedIdentifiers:(id)identifiers userEnabledFixedIdentifiers:(id)fixedIdentifiers userDisabledIdentifiers:(id)disabledIdentifiers;
- (CCSModuleSettingsProvider)init;
- (NSArray)orderedFixedModuleIdentifiers;
- (NSArray)orderedUserEnabledFixedModuleIdentifiers;
- (NSArray)orderedUserEnabledModuleIdentifiers;
- (NSArray)userDisabledModuleIdentifiers;
- (void)_queue_handleConfigurationFileUpdate;
- (void)_queue_loadSettings;
- (void)_queue_runBlockOnListeners:(id)listeners;
- (void)_queue_saveSettings;
- (void)_queue_sendConfigurationFileUpdateMessageToObservers;
- (void)_queue_setAndSaveOrderedUserEnabledModuleIdentifiers:(id)identifiers previousOrderedUserEnabledModuleIdentifiers:(id)moduleIdentifiers;
- (void)_queue_startMonitoringConfigurationUpdates;
- (void)_queue_stopMonitoringConfigurationUpdates;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)legacyModuleMigration:(BOOL *)migration versionNumber:(unint64_t)number;
- (void)removeObserver:(id)observer;
- (void)setAndSaveOrderedUserEnabledFixedModuleIdentifiers:(id)identifiers;
- (void)setAndSaveOrderedUserEnabledModuleIdentifiers:(id)identifiers;
- (void)setAndSaveOrderedUserEnabledModuleIdentifiers:(id)identifiers previousOrderedUserEnabledModuleIdentifiers:(id)moduleIdentifiers;
@end

@implementation CCSModuleSettingsProvider

+ (BOOL)_continuousExposeEnabled
{
  mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
  v3 = [mEMORY[0x277CF0CA8] deviceClass] == 2;

  return v3;
}

+ (id)sharedProvider
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__CCSModuleSettingsProvider_sharedProvider__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedProvider_onceToken != -1)
  {
    dispatch_once(&sharedProvider_onceToken, block);
  }

  v2 = sharedProvider_instance;

  return v2;
}

uint64_t __43__CCSModuleSettingsProvider_sharedProvider__block_invoke(uint64_t a1)
{
  sharedProvider_instance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (CCSModuleSettingsProvider)init
{
  v17.receiver = self;
  v17.super_class = CCSModuleSettingsProvider;
  v2 = [(CCSModuleSettingsProvider *)&v17 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v2->_observers;
    v2->_observers = v3;

    _defaultFixedModuleIdentifiers = [objc_opt_class() _defaultFixedModuleIdentifiers];
    orderedFixedModuleIdentifiers = v2->_orderedFixedModuleIdentifiers;
    v2->_orderedFixedModuleIdentifiers = _defaultFixedModuleIdentifiers;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.ControlCenter.ModuleSettingsProvider", v7);
    queue = v2->_queue;
    v2->_queue = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.ControlCenter.ModuleSettingsProvider.callout", v10);
    callOutQueue = v2->_callOutQueue;
    v2->_callOutQueue = v11;

    v13 = v2->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__CCSModuleSettingsProvider_init__block_invoke;
    block[3] = &unk_278E0F630;
    v16 = v2;
    dispatch_sync(v13, block);
  }

  return v2;
}

uint64_t __33__CCSModuleSettingsProvider_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_loadSettings];
  v2 = *(a1 + 32);

  return [v2 _queue_startMonitoringConfigurationUpdates];
}

- (void)dealloc
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CCSModuleSettingsProvider_dealloc__block_invoke;
  block[3] = &unk_278E0F630;
  block[4] = self;
  dispatch_sync(queue, block);
  v4.receiver = self;
  v4.super_class = CCSModuleSettingsProvider;
  [(CCSModuleSettingsProvider *)&v4 dealloc];
}

- (NSArray)orderedFixedModuleIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__CCSModuleSettingsProvider_orderedFixedModuleIdentifiers__block_invoke;
  v5[3] = &unk_278E0F658;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __58__CCSModuleSettingsProvider_orderedFixedModuleIdentifiers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSArray)orderedUserEnabledModuleIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__CCSModuleSettingsProvider_orderedUserEnabledModuleIdentifiers__block_invoke;
  v5[3] = &unk_278E0F658;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __64__CCSModuleSettingsProvider_orderedUserEnabledModuleIdentifiers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSArray)orderedUserEnabledFixedModuleIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__CCSModuleSettingsProvider_orderedUserEnabledFixedModuleIdentifiers__block_invoke;
  v5[3] = &unk_278E0F658;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __69__CCSModuleSettingsProvider_orderedUserEnabledFixedModuleIdentifiers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSArray)userDisabledModuleIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__CCSModuleSettingsProvider_userDisabledModuleIdentifiers__block_invoke;
  v5[3] = &unk_278E0F658;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __58__CCSModuleSettingsProvider_userDisabledModuleIdentifiers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setAndSaveOrderedUserEnabledModuleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__CCSModuleSettingsProvider_setAndSaveOrderedUserEnabledModuleIdentifiers___block_invoke;
  v7[3] = &unk_278E0F680;
  v7[4] = self;
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  dispatch_sync(queue, v7);
}

- (void)setAndSaveOrderedUserEnabledModuleIdentifiers:(id)identifiers previousOrderedUserEnabledModuleIdentifiers:(id)moduleIdentifiers
{
  identifiersCopy = identifiers;
  moduleIdentifiersCopy = moduleIdentifiers;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __119__CCSModuleSettingsProvider_setAndSaveOrderedUserEnabledModuleIdentifiers_previousOrderedUserEnabledModuleIdentifiers___block_invoke;
  block[3] = &unk_278E0F6A8;
  block[4] = self;
  v12 = identifiersCopy;
  v13 = moduleIdentifiersCopy;
  v9 = moduleIdentifiersCopy;
  v10 = identifiersCopy;
  dispatch_sync(queue, block);
}

- (void)_queue_setAndSaveOrderedUserEnabledModuleIdentifiers:(id)identifiers previousOrderedUserEnabledModuleIdentifiers:(id)moduleIdentifiers
{
  identifiersCopy = identifiers;
  moduleIdentifiersCopy = moduleIdentifiers;
  if ((BSEqualObjects() & 1) == 0)
  {
    v7 = [MEMORY[0x277CBEB98] setWithArray:moduleIdentifiersCopy];
    v8 = [MEMORY[0x277CBEB98] setWithArray:identifiersCopy];
    v9 = [v7 mutableCopy];
    [v9 minusSet:v8];
    v10 = [v8 mutableCopy];
    [v10 minusSet:v7];
    v11 = [(NSArray *)self->_userDisabledModuleIdentifiers mutableCopy];
    allObjects = [v10 allObjects];
    [v11 removeObjectsInArray:allObjects];

    allObjects2 = [v9 allObjects];
    [v11 addObjectsFromArray:allObjects2];

    [v11 sortUsingSelector:sel_caseInsensitiveCompare_];
    v14 = [identifiersCopy copy];
    orderedUserEnabledModuleIdentifiers = self->_orderedUserEnabledModuleIdentifiers;
    self->_orderedUserEnabledModuleIdentifiers = v14;

    v16 = [v11 copy];
    userDisabledModuleIdentifiers = self->_userDisabledModuleIdentifiers;
    self->_userDisabledModuleIdentifiers = v16;

    [(CCSModuleSettingsProvider *)self _queue_stopMonitoringConfigurationUpdates];
    [(CCSModuleSettingsProvider *)self _queue_saveSettings];
    [(CCSModuleSettingsProvider *)self _queue_startMonitoringConfigurationUpdates];
    [(CCSModuleSettingsProvider *)self _queue_sendConfigurationFileUpdateMessageToObservers];
  }
}

- (void)setAndSaveOrderedUserEnabledFixedModuleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__CCSModuleSettingsProvider_setAndSaveOrderedUserEnabledFixedModuleIdentifiers___block_invoke;
  v7[3] = &unk_278E0F680;
  v7[4] = self;
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  dispatch_sync(queue, v7);
}

void __80__CCSModuleSettingsProvider_setAndSaveOrderedUserEnabledFixedModuleIdentifiers___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 56);
  if ((BSEqualObjects() & 1) == 0)
  {
    v16 = [MEMORY[0x277CBEB98] setWithArray:*(*(a1 + 32) + 56)];
    v4 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 40)];
    v5 = [v16 mutableCopy];
    [v5 minusSet:v4];
    v6 = [v4 mutableCopy];
    [v6 minusSet:v16];
    v7 = [*(*(a1 + 32) + 64) mutableCopy];
    v8 = [v6 allObjects];
    [v7 removeObjectsInArray:v8];

    v9 = [v5 allObjects];
    [v7 addObjectsFromArray:v9];

    [v7 sortUsingSelector:sel_caseInsensitiveCompare_];
    v10 = [*(a1 + 40) copy];
    v11 = *(a1 + 32);
    v12 = *(v11 + 56);
    *(v11 + 56) = v10;

    v13 = [v7 copy];
    v14 = *(a1 + 32);
    v15 = *(v14 + 64);
    *(v14 + 64) = v13;

    [*(a1 + 32) _queue_stopMonitoringConfigurationUpdates];
    [*(a1 + 32) _queue_saveSettings];
    [*(a1 + 32) _queue_startMonitoringConfigurationUpdates];
    [*(a1 + 32) _queue_sendConfigurationFileUpdateMessageToObservers];
  }
}

+ (id)_readSettingsWithVersion:(unint64_t *)version
{
  _configurationFileURL = [objc_opt_class() _configurationFileURL];
  v5 = [MEMORY[0x277CBEAE0] inputStreamWithURL:_configurationFileURL];
  v6 = v5;
  if (v5)
  {
    [v5 open];
    v25 = 0;
    v7 = [MEMORY[0x277CCAC58] propertyListWithStream:v6 options:0 format:0 error:&v25];
    v8 = v25;
    [v6 close];
    if (v8)
    {
      if (os_log_type_enabled(CCSLogModuleSettings, OS_LOG_TYPE_ERROR))
      {
        +[CCSModuleSettingsProvider _readSettingsWithVersion:];
      }

      v9 = 0;
    }

    else
    {
      v11 = objc_opt_class();
      v12 = v7;
      if (v11)
      {
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      v15 = [v14 bs_safeNumberForKey:@"version"];
      unsignedIntegerValue = [v15 unsignedIntegerValue];

      if (version)
      {
        *version = unsignedIntegerValue;
      }

      if (unsignedIntegerValue - 1 > 2)
      {
        if (os_log_type_enabled(CCSLogModuleSettings, OS_LOG_TYPE_ERROR))
        {
          +[CCSModuleSettingsProvider _readSettingsWithVersion:];
        }

        dictionary = 0;
      }

      else
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v24 = [v14 bs_safeArrayForKey:@"module-identifiers"];
        v23 = [v24 bs_mapNoNulls:&__block_literal_global_3];
        [dictionary bs_setSafeObject:v23 forKey:@"module-identifiers"];
        v18 = [v14 bs_safeArrayForKey:@"userenabled-fixed-module-identifiers"];
        v19 = [v18 bs_mapNoNulls:&__block_literal_global_58];
        [dictionary bs_setSafeObject:v19 forKey:@"userenabled-fixed-module-identifiers"];
        v20 = [v14 bs_safeArrayForKey:@"disabled-module-identifiers"];
        v21 = [v20 bs_mapNoNulls:&__block_literal_global_60];
        [dictionary bs_setSafeObject:v21 forKey:@"disabled-module-identifiers"];
      }

      v9 = dictionary;
    }
  }

  else
  {
    v10 = CCSLogModuleSettings;
    if (os_log_type_enabled(CCSLogModuleSettings, OS_LOG_TYPE_ERROR))
    {
      [(CCSModuleSettingsProvider *)_configurationFileURL _readSettingsWithVersion:v10];
    }

    v9 = 0;
  }

  return v9;
}

void *__54__CCSModuleSettingsProvider__readSettingsWithVersion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

void *__54__CCSModuleSettingsProvider__readSettingsWithVersion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

void *__54__CCSModuleSettingsProvider__readSettingsWithVersion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

+ (void)_writeOrderedIdentifiers:(id)identifiers userEnabledFixedIdentifiers:(id)fixedIdentifiers userDisabledIdentifiers:(id)disabledIdentifiers
{
  v26[4] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  fixedIdentifiersCopy = fixedIdentifiers;
  disabledIdentifiersCopy = disabledIdentifiers;
  _configurationDirectoryURL = [objc_opt_class() _configurationDirectoryURL];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [_configurationDirectoryURL path];
  v13 = [defaultManager fileExistsAtPath:path];

  if ((v13 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v24 = 0;
    v15 = [defaultManager2 createDirectoryAtURL:_configurationDirectoryURL withIntermediateDirectories:1 attributes:0 error:&v24];
    v16 = v24;

    if ((v15 & 1) == 0 && os_log_type_enabled(CCSLogModuleSettings, OS_LOG_TYPE_ERROR))
    {
      +[CCSModuleSettingsProvider _writeOrderedIdentifiers:userEnabledFixedIdentifiers:userDisabledIdentifiers:];
    }
  }

  _configurationFileURL = [objc_opt_class() _configurationFileURL];
  v25[0] = @"version";
  v25[1] = @"module-identifiers";
  v26[0] = &unk_2857A45A0;
  v26[1] = identifiersCopy;
  v25[2] = @"userenabled-fixed-module-identifiers";
  v25[3] = @"disabled-module-identifiers";
  v26[2] = fixedIdentifiersCopy;
  v26[3] = disabledIdentifiersCopy;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];
  v19 = [MEMORY[0x277CCAC58] dataWithPropertyList:v18 format:100 options:0 error:0];
  v23 = 0;
  v20 = [v19 writeToURL:_configurationFileURL options:268435457 error:&v23];
  v21 = v23;
  if ((v20 & 1) == 0 && os_log_type_enabled(CCSLogModuleSettings, OS_LOG_TYPE_ERROR))
  {
    +[CCSModuleSettingsProvider _writeOrderedIdentifiers:userEnabledFixedIdentifiers:userDisabledIdentifiers:];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)legacyModuleMigration:(BOOL *)migration versionNumber:(unint64_t)number
{
  v42 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_userDisabledModuleIdentifiers containsObject:@"com.apple.control-center.CarModeModule"])
  {
    v7 = [(NSArray *)self->_userDisabledModuleIdentifiers mutableCopy];
    [(NSArray *)v7 removeObject:@"com.apple.control-center.CarModeModule"];
    userDisabledModuleIdentifiers = self->_userDisabledModuleIdentifiers;
    self->_userDisabledModuleIdentifiers = v7;

    *migration = 1;
  }

  p_orderedUserEnabledModuleIdentifiers = &self->_orderedUserEnabledModuleIdentifiers;
  if ([(NSArray *)self->_orderedUserEnabledModuleIdentifiers containsObject:@"com.apple.control-center.CarModeModule"])
  {
    v10 = [(NSArray *)*p_orderedUserEnabledModuleIdentifiers mutableCopy];
    [(NSArray *)v10 removeObject:@"com.apple.control-center.CarModeModule"];
    v11 = *p_orderedUserEnabledModuleIdentifiers;
    *p_orderedUserEnabledModuleIdentifiers = v10;

    *migration = 1;
  }

  if ([(NSArray *)self->_userDisabledModuleIdentifiers containsObject:@"com.apple.sleep.controlcenter.sleepmode"])
  {
    v12 = [(NSArray *)self->_userDisabledModuleIdentifiers mutableCopy];
    [(NSArray *)v12 removeObject:@"com.apple.sleep.controlcenter.sleepmode"];
    v13 = self->_userDisabledModuleIdentifiers;
    self->_userDisabledModuleIdentifiers = v12;

    *migration = 1;
  }

  if ([(NSArray *)*p_orderedUserEnabledModuleIdentifiers containsObject:@"com.apple.sleep.controlcenter.sleepmode"])
  {
    v14 = [(NSArray *)*p_orderedUserEnabledModuleIdentifiers mutableCopy];
    [(NSArray *)v14 removeObject:@"com.apple.sleep.controlcenter.sleepmode"];
    v15 = *p_orderedUserEnabledModuleIdentifiers;
    *p_orderedUserEnabledModuleIdentifiers = v14;

    *migration = 1;
  }

  if ([(NSArray *)*p_orderedUserEnabledModuleIdentifiers containsObject:@"com.apple.Home.ControlCenter"])
  {
    v16 = CCSLogModuleSettings;
    if (os_log_type_enabled(CCSLogModuleSettings, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v40) = 0;
      _os_log_impl(&dword_24427F000, v16, OS_LOG_TYPE_DEFAULT, "Migrating home module from user enabled to enabled and fixed module", &v40, 2u);
    }

    v17 = [(NSArray *)self->_orderedUserEnabledModuleIdentifiers mutableCopy];
    [v17 removeObject:@"com.apple.Home.ControlCenter"];
    objc_storeStrong(&self->_orderedUserEnabledModuleIdentifiers, v17);
    if (![(NSArray *)self->_orderedUserEnabledFixedModuleIdentifiers containsObject:@"com.apple.Home.ControlCenter"])
    {
      v18 = [(NSArray *)self->_orderedUserEnabledFixedModuleIdentifiers mutableCopy];
      [(NSArray *)v18 addObject:@"com.apple.Home.ControlCenter"];
      orderedUserEnabledFixedModuleIdentifiers = self->_orderedUserEnabledFixedModuleIdentifiers;
      self->_orderedUserEnabledFixedModuleIdentifiers = v18;
    }

    *migration = 1;
  }

  if (![(NSArray *)self->_userDisabledModuleIdentifiers containsObject:@"com.apple.BarcodeSupport.NFCControlCenterModule"]&& ![(NSArray *)*p_orderedUserEnabledModuleIdentifiers containsObject:@"com.apple.BarcodeSupport.NFCControlCenterModule"])
  {
    v20 = [(NSArray *)*p_orderedUserEnabledModuleIdentifiers mutableCopy];
    [(NSArray *)v20 addObject:@"com.apple.BarcodeSupport.NFCControlCenterModule"];
    v21 = *p_orderedUserEnabledModuleIdentifiers;
    *p_orderedUserEnabledModuleIdentifiers = v20;

    *migration = 1;
  }

  mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
  deviceClass = [mEMORY[0x277CF0CA8] deviceClass];

  if (number <= 1 && !deviceClass && [(NSArray *)self->_userDisabledModuleIdentifiers containsObject:@"com.apple.control-center.MuteModule"])
  {
    v24 = CCSLogModuleSettings;
    if (os_log_type_enabled(CCSLogModuleSettings, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 134217984;
      numberCopy = number;
      _os_log_impl(&dword_24427F000, v24, OS_LOG_TYPE_DEFAULT, "Migrating mute module out of user-disabled list from settings with version: %lu", &v40, 0xCu);
    }

    v25 = [(NSArray *)self->_userDisabledModuleIdentifiers mutableCopy];
    [(NSArray *)v25 removeObject:@"com.apple.control-center.MuteModule"];
    v26 = self->_userDisabledModuleIdentifiers;
    self->_userDisabledModuleIdentifiers = v25;

    *migration = 1;
  }

  if (![(NSArray *)self->_orderedFixedModuleIdentifiers containsObject:@"com.apple.control-center.MuteModule"]&& ![(NSArray *)self->_userDisabledModuleIdentifiers containsObject:@"com.apple.control-center.MuteModule"]&& ![(NSArray *)*p_orderedUserEnabledModuleIdentifiers containsObject:@"com.apple.control-center.MuteModule"])
  {
    v27 = [(NSArray *)*p_orderedUserEnabledModuleIdentifiers mutableCopy];
    [(NSArray *)v27 insertObject:@"com.apple.control-center.MuteModule" atIndex:0];
    v28 = *p_orderedUserEnabledModuleIdentifiers;
    *p_orderedUserEnabledModuleIdentifiers = v27;

    *migration = 1;
  }

  if ([(NSArray *)self->_orderedFixedModuleIdentifiers containsObject:@"com.apple.control-center.MuteModule"]&& [(NSArray *)*p_orderedUserEnabledModuleIdentifiers containsObject:@"com.apple.control-center.MuteModule"])
  {
    v29 = [(NSArray *)*p_orderedUserEnabledModuleIdentifiers mutableCopy];
    [(NSArray *)v29 removeObject:@"com.apple.control-center.MuteModule"];
    v30 = *p_orderedUserEnabledModuleIdentifiers;
    *p_orderedUserEnabledModuleIdentifiers = v29;

    *migration = 1;
  }

  if (![(NSArray *)self->_orderedFixedModuleIdentifiers containsObject:@"com.apple.mediaremote.controlcenter.airplaymirroring"]&& ![(NSArray *)self->_userDisabledModuleIdentifiers containsObject:@"com.apple.mediaremote.controlcenter.airplaymirroring"]&& ![(NSArray *)*p_orderedUserEnabledModuleIdentifiers containsObject:@"com.apple.mediaremote.controlcenter.airplaymirroring"])
  {
    v31 = [(NSArray *)*p_orderedUserEnabledModuleIdentifiers mutableCopy];
    [(NSArray *)v31 addObject:@"com.apple.mediaremote.controlcenter.airplaymirroring"];
    v32 = *p_orderedUserEnabledModuleIdentifiers;
    *p_orderedUserEnabledModuleIdentifiers = v31;

    *migration = 1;
  }

  if ([(NSArray *)self->_orderedFixedModuleIdentifiers containsObject:@"com.apple.mediaremote.controlcenter.airplaymirroring"]&& [(NSArray *)*p_orderedUserEnabledModuleIdentifiers containsObject:@"com.apple.mediaremote.controlcenter.airplaymirroring"])
  {
    v33 = [(NSArray *)*p_orderedUserEnabledModuleIdentifiers mutableCopy];
    [(NSArray *)v33 removeObject:@"com.apple.mediaremote.controlcenter.airplaymirroring"];
    v34 = *p_orderedUserEnabledModuleIdentifiers;
    *p_orderedUserEnabledModuleIdentifiers = v33;

    *migration = 1;
  }

  if (((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl()) && ![(NSArray *)self->_userDisabledModuleIdentifiers containsObject:@"com.apple.springboard.SensitiveUIModule"]&& ![(NSArray *)*p_orderedUserEnabledModuleIdentifiers containsObject:@"com.apple.springboard.SensitiveUIModule"])
  {
    v35 = [(NSArray *)*p_orderedUserEnabledModuleIdentifiers mutableCopy];
    [(NSArray *)v35 addObject:@"com.apple.springboard.SensitiveUIModule"];
    v36 = *p_orderedUserEnabledModuleIdentifiers;
    *p_orderedUserEnabledModuleIdentifiers = v35;

    *migration = 1;
  }

  if ([objc_opt_class() _continuousExposeEnabled] && !-[NSArray containsObject:](self->_userDisabledModuleIdentifiers, "containsObject:", @"com.apple.springboard.ContinuousExposeModule") && !-[NSArray containsObject:](*p_orderedUserEnabledModuleIdentifiers, "containsObject:", @"com.apple.springboard.ContinuousExposeModule"))
  {
    v37 = [(NSArray *)*p_orderedUserEnabledModuleIdentifiers mutableCopy];
    [(NSArray *)v37 addObject:@"com.apple.springboard.ContinuousExposeModule"];
    v38 = *p_orderedUserEnabledModuleIdentifiers;
    *p_orderedUserEnabledModuleIdentifiers = v37;

    *migration = 1;
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_queue_loadSettings
{
  dispatch_assert_queue_V2(self->_queue);
  v15 = 0;
  v3 = [objc_opt_class() _readSettingsWithVersion:&v15];
  v4 = [v3 objectForKey:@"disabled-module-identifiers"];
  userDisabledModuleIdentifiers = self->_userDisabledModuleIdentifiers;
  self->_userDisabledModuleIdentifiers = v4;

  if (!self->_userDisabledModuleIdentifiers)
  {
    self->_userDisabledModuleIdentifiers = MEMORY[0x277CBEBF8];
  }

  v6 = [v3 objectForKey:@"userenabled-fixed-module-identifiers"];
  orderedUserEnabledFixedModuleIdentifiers = self->_orderedUserEnabledFixedModuleIdentifiers;
  self->_orderedUserEnabledFixedModuleIdentifiers = v6;

  v8 = self->_orderedUserEnabledFixedModuleIdentifiers;
  if (!v8)
  {
    _defaultUserEnabledFixedModuleIdentifiers = [objc_opt_class() _defaultUserEnabledFixedModuleIdentifiers];
    v10 = self->_orderedUserEnabledFixedModuleIdentifiers;
    self->_orderedUserEnabledFixedModuleIdentifiers = _defaultUserEnabledFixedModuleIdentifiers;
  }

  v11 = [v3 objectForKey:@"module-identifiers"];
  orderedUserEnabledModuleIdentifiers = self->_orderedUserEnabledModuleIdentifiers;
  self->_orderedUserEnabledModuleIdentifiers = v11;

  if (!self->_orderedUserEnabledModuleIdentifiers)
  {
    _defaultUserEnabledModuleIdentifiers = [objc_opt_class() _defaultUserEnabledModuleIdentifiers];
    v14 = self->_orderedUserEnabledModuleIdentifiers;
    self->_orderedUserEnabledModuleIdentifiers = _defaultUserEnabledModuleIdentifiers;

LABEL_9:
    [(CCSModuleSettingsProvider *)self _queue_saveSettings];
    goto LABEL_10;
  }

  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_queue_saveSettings
{
  v3 = objc_opt_class();
  orderedUserEnabledModuleIdentifiers = self->_orderedUserEnabledModuleIdentifiers;
  orderedUserEnabledFixedModuleIdentifiers = self->_orderedUserEnabledFixedModuleIdentifiers;
  userDisabledModuleIdentifiers = self->_userDisabledModuleIdentifiers;

  [v3 _writeOrderedIdentifiers:orderedUserEnabledModuleIdentifiers userEnabledFixedIdentifiers:orderedUserEnabledFixedModuleIdentifiers userDisabledIdentifiers:userDisabledModuleIdentifiers];
}

- (void)_queue_startMonitoringConfigurationUpdates
{
  dispatch_assert_queue_V2(self->_queue);
  _configurationFileURL = [objc_opt_class() _configurationFileURL];
  v4 = open([_configurationFileURL fileSystemRepresentation], 0x8000);
  v5 = dispatch_source_create(MEMORY[0x277D85D48], v4, 1uLL, self->_queue);
  configurationChangedSource = self->_configurationChangedSource;
  self->_configurationChangedSource = v5;

  objc_initWeak(&location, self);
  v7 = self->_configurationChangedSource;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __71__CCSModuleSettingsProvider__queue_startMonitoringConfigurationUpdates__block_invoke;
  handler[3] = &unk_278E0F6F0;
  objc_copyWeak(&v12, &location);
  dispatch_source_set_event_handler(v7, handler);
  v8 = self->_configurationChangedSource;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__CCSModuleSettingsProvider__queue_startMonitoringConfigurationUpdates__block_invoke_2;
  v9[3] = &__block_descriptor_36_e5_v8__0l;
  v10 = v4;
  dispatch_source_set_cancel_handler(v8, v9);
  dispatch_resume(self->_configurationChangedSource);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __71__CCSModuleSettingsProvider__queue_startMonitoringConfigurationUpdates__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_handleConfigurationFileUpdate];
}

- (void)_queue_stopMonitoringConfigurationUpdates
{
  dispatch_assert_queue_V2(self->_queue);
  configurationChangedSource = self->_configurationChangedSource;
  if (configurationChangedSource)
  {
    dispatch_source_cancel(configurationChangedSource);
    v4 = self->_configurationChangedSource;
    self->_configurationChangedSource = 0;
  }
}

- (void)_queue_handleConfigurationFileUpdate
{
  dispatch_assert_queue_V2(self->_queue);
  [(CCSModuleSettingsProvider *)self _queue_stopMonitoringConfigurationUpdates];
  [(CCSModuleSettingsProvider *)self _queue_loadSettings];
  [(CCSModuleSettingsProvider *)self _queue_startMonitoringConfigurationUpdates];

  [(CCSModuleSettingsProvider *)self _queue_sendConfigurationFileUpdateMessageToObservers];
}

- (void)_queue_sendConfigurationFileUpdateMessageToObservers
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __81__CCSModuleSettingsProvider__queue_sendConfigurationFileUpdateMessageToObservers__block_invoke;
  v2[3] = &unk_278E0F738;
  v2[4] = self;
  [(CCSModuleSettingsProvider *)self _queue_runBlockOnListeners:v2];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__CCSModuleSettingsProvider_addObserver___block_invoke;
  v7[3] = &unk_278E0F680;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__CCSModuleSettingsProvider_removeObserver___block_invoke;
  v7[3] = &unk_278E0F680;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)_queue_runBlockOnListeners:(id)listeners
{
  listenersCopy = listeners;
  dispatch_assert_queue_V2(self->_queue);
  allObjects = [(NSHashTable *)self->_observers allObjects];
  callOutQueue = self->_callOutQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__CCSModuleSettingsProvider__queue_runBlockOnListeners___block_invoke;
  v9[3] = &unk_278E0F3B8;
  v10 = allObjects;
  v11 = listenersCopy;
  v7 = listenersCopy;
  v8 = allObjects;
  dispatch_sync(callOutQueue, v9);
}

+ (id)_defaultEnabledModuleOrder
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CCSModuleSettingsProvider__defaultEnabledModuleOrder__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_defaultEnabledModuleOrder_onceToken != -1)
  {
    dispatch_once(&_defaultEnabledModuleOrder_onceToken, block);
  }

  v2 = _defaultEnabledModuleOrder_moduleOrderDict;

  return v2;
}

void __55__CCSModuleSettingsProvider__defaultEnabledModuleOrder__block_invoke(uint64_t a1)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CF0CA8] sharedInstance];
  v3 = [v2 deviceClass];

  if (v3)
  {
    v4 = MGGetBoolAnswer();
    v5 = [*(a1 + 32) _continuousExposeEnabled];
    if (v4)
    {
      if (v5)
      {
        v14[0] = @"fixed";
        v14[1] = @"user-enabled-fixed";
        v15[0] = &unk_2857A4678;
        v15[1] = MEMORY[0x277CBEBF8];
        v14[2] = @"user-enabled";
        v15[2] = &unk_2857A4690;
        v6 = MEMORY[0x277CBEAC0];
        v7 = v15;
        v8 = v14;
      }

      else
      {
        v12[0] = @"fixed";
        v12[1] = @"user-enabled-fixed";
        v13[0] = &unk_2857A46A8;
        v13[1] = MEMORY[0x277CBEBF8];
        v12[2] = @"user-enabled";
        v13[2] = &unk_2857A46C0;
        v6 = MEMORY[0x277CBEAC0];
        v7 = v13;
        v8 = v12;
      }
    }

    else
    {
      v16[0] = @"fixed";
      v16[1] = @"user-enabled-fixed";
      v17[0] = &unk_2857A4648;
      v17[1] = MEMORY[0x277CBEBF8];
      v16[2] = @"user-enabled";
      v17[2] = &unk_2857A4660;
      v6 = MEMORY[0x277CBEAC0];
      v7 = v17;
      v8 = v16;
    }
  }

  else if (MGGetBoolAnswer())
  {
    v18[0] = @"fixed";
    v18[1] = @"user-enabled-fixed";
    v19[0] = &unk_2857A4618;
    v19[1] = MEMORY[0x277CBEBF8];
    v18[2] = @"user-enabled";
    v19[2] = &unk_2857A4630;
    v6 = MEMORY[0x277CBEAC0];
    v7 = v19;
    v8 = v18;
  }

  else
  {
    v20[0] = @"fixed";
    v20[1] = @"user-enabled-fixed";
    v21[0] = &unk_2857A45E8;
    v21[1] = MEMORY[0x277CBEBF8];
    v20[2] = @"user-enabled";
    v21[2] = &unk_2857A4600;
    v6 = MEMORY[0x277CBEAC0];
    v7 = v21;
    v8 = v20;
  }

  v9 = [v6 dictionaryWithObjects:v7 forKeys:v8 count:3];
  v10 = _defaultEnabledModuleOrder_moduleOrderDict;
  _defaultEnabledModuleOrder_moduleOrderDict = v9;

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)_configurationDirectoryURL
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEBC0];
  v3 = BSCurrentUserDirectory();
  v8[0] = v3;
  v8[1] = @"Library";
  v8[2] = @"ControlCenter";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  v5 = [v2 fileURLWithPathComponents:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)_configurationFileURL
{
  _configurationDirectoryURL = [objc_opt_class() _configurationDirectoryURL];
  v3 = [_configurationDirectoryURL URLByAppendingPathComponent:@"ModuleConfiguration.plist"];

  return v3;
}

+ (id)_defaultFixedModuleIdentifiers
{
  _defaultEnabledModuleOrder = [objc_opt_class() _defaultEnabledModuleOrder];
  v3 = [_defaultEnabledModuleOrder objectForKey:@"fixed"];

  return v3;
}

+ (id)_defaultUserEnabledFixedModuleIdentifiers
{
  _defaultEnabledModuleOrder = [objc_opt_class() _defaultEnabledModuleOrder];
  v3 = [_defaultEnabledModuleOrder objectForKey:@"user-enabled-fixed"];

  return v3;
}

+ (id)_defaultUserEnabledModuleIdentifiers
{
  _defaultEnabledModuleOrder = [objc_opt_class() _defaultEnabledModuleOrder];
  v3 = [_defaultEnabledModuleOrder objectForKey:@"user-enabled"];

  return v3;
}

+ (void)_readSettingsWithVersion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_readSettingsWithVersion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_readSettingsWithVersion:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_24427F000, a2, OS_LOG_TYPE_ERROR, "Could not load configuration file (NSInputStream is nil) at %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_writeOrderedIdentifiers:userEnabledFixedIdentifiers:userDisabledIdentifiers:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_writeOrderedIdentifiers:userEnabledFixedIdentifiers:userDisabledIdentifiers:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end