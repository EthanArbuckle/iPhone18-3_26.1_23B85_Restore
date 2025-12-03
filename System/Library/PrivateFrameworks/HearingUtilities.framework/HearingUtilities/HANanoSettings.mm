@interface HANanoSettings
+ (id)sharedInstance;
- (HANanoSettings)init;
- (id)_valueForPreferenceKey:(id)key;
- (id)currentLocale;
- (id)nanoDomainAccessor;
- (void)dealloc;
- (void)pairedWatchDidChange:(id)change;
- (void)setValue:(id)value forPreferenceKey:(id)key;
@end

@implementation HANanoSettings

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_364 != -1)
  {
    +[HANanoSettings sharedInstance];
  }

  v3 = sharedInstance_Settings_363;

  return v3;
}

uint64_t __32__HANanoSettings_sharedInstance__block_invoke()
{
  sharedInstance_Settings_363 = objc_alloc_init(HANanoSettings);

  return MEMORY[0x1EEE66BB8]();
}

- (HANanoSettings)init
{
  v11.receiver = self;
  v11.super_class = HANanoSettings;
  v2 = [(HUHearingAidSettings *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("heard_hearing_aids_nano_domain_accessor_queue", v3);
    domainAccessorQueue = v2->_domainAccessorQueue;
    v2->_domainAccessorQueue = v4;

    v6 = [objc_alloc(MEMORY[0x1E69B3588]) initWithDomain:@".GlobalPreferences"];
    globalDomainAccessor = v2->_globalDomainAccessor;
    v2->_globalDomainAccessor = v6;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_pairedWatchDidChange_ name:*MEMORY[0x1E69B3688] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_pairedWatchDidChange_ name:*MEMORY[0x1E69B3660] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HANanoSettings;
  [(HUHearingAidSettings *)&v4 dealloc];
}

- (void)pairedWatchDidChange:(id)change
{
  domainAccessor = self->_domainAccessor;
  self->_domainAccessor = 0;
  MEMORY[0x1EEE66BB8]();
}

- (id)nanoDomainAccessor
{
  domainAccessor = self->_domainAccessor;
  if (!domainAccessor)
  {
    v4 = objc_alloc(MEMORY[0x1E69B3588]);
    v5 = [v4 initWithDomain:*MEMORY[0x1E69E4D90]];
    v6 = self->_domainAccessor;
    self->_domainAccessor = v5;

    domainAccessor = self->_domainAccessor;
  }

  return domainAccessor;
}

- (id)currentLocale
{
  synchronize = [(NPSDomainAccessor *)self->_globalDomainAccessor synchronize];
  globalDomainAccessor = self->_globalDomainAccessor;

  return [(NPSDomainAccessor *)globalDomainAccessor objectForKey:@"AppleLocale"];
}

- (void)setValue:(id)value forPreferenceKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  domainAccessorQueue = [(HANanoSettings *)self domainAccessorQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__HANanoSettings_setValue_forPreferenceKey___block_invoke;
  block[3] = &unk_1E85CA468;
  v12 = keyCopy;
  v13 = valueCopy;
  selfCopy = self;
  v9 = valueCopy;
  v10 = keyCopy;
  dispatch_async(domainAccessorQueue, block);
}

void __44__HANanoSettings_setValue_forPreferenceKey___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = HCLogHearingAids();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v22 = v3;
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "Setting nano value %@ - %@", buf, 0x16u);
  }

  v5 = [*(a1 + 48) nanoDomainAccessor];
  [v5 setObject:*(a1 + 40) forKey:*(a1 + 32)];
  v6 = [v5 synchronize];
  if (v6)
  {
    v7 = HCLogHearingAids();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __44__HANanoSettings_setValue_forPreferenceKey___block_invoke_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = objc_opt_new();
  v15 = *MEMORY[0x1E69E4D90];
  v16 = MEMORY[0x1E695DFD8];
  v20 = *(a1 + 32);
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v18 = [v16 setWithArray:v17];
  [v14 synchronizeNanoDomain:v15 keys:v18];

  v19 = *MEMORY[0x1E69E9840];
}

- (id)_valueForPreferenceKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  domainAccessorQueue = [(HANanoSettings *)self domainAccessorQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__HANanoSettings__valueForPreferenceKey___block_invoke;
  block[3] = &unk_1E85CB970;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(domainAccessorQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __41__HANanoSettings__valueForPreferenceKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nanoDomainAccessor];
  v3 = [v2 synchronize];
  if (v3)
  {
    v4 = HCLogHearingAids();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __44__HANanoSettings_setValue_forPreferenceKey___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = [v2 objectForKey:*(a1 + 40)];
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void __44__HANanoSettings_setValue_forPreferenceKey___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1DA5E2000, a2, a3, "Error synchronizing accessor %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end