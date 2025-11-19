@interface CSLPRFTwoWaySyncSetting
- (CSLPRFTwoWaySyncSetting)initWithKey:(id)a3 defaultValue:(id)a4 notification:(const char *)a5;
- (CSLPRFTwoWaySyncSettingDelegate)delegate;
- (NSString)description;
- (id)domainAccessor;
- (id)safeValueOfType:(Class)a3;
- (id)syncManager;
- (id)value;
- (void)dealloc;
- (void)didUpdate;
- (void)handleDidUnpair;
- (void)migrate:(id)a3 withMapping:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setValue:(id)a3;
@end

@implementation CSLPRFTwoWaySyncSetting

- (CSLPRFTwoWaySyncSettingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setValue:(id)a3
{
  v4 = a3;
  v5 = [(CSLPRFTwoWaySyncSetting *)self domainAccessor];
  [v5 setObject:v4 forKey:self->_key];

  v6 = [(CSLPRFTwoWaySyncSetting *)self domainAccessor];
  v7 = [v6 synchronize];

  v8 = [(CSLPRFTwoWaySyncSetting *)self syncManager];
  v9 = [MEMORY[0x277CBEB98] setWithObject:self->_key];
  [v8 synchronizeNanoDomain:@"com.apple.Carousel" keys:v9];

  notificationName = self->_notificationName;
  if (notificationName)
  {

    notify_post(notificationName);
  }
}

- (id)safeValueOfType:(Class)a3
{
  v5 = [(CSLPRFTwoWaySyncSetting *)self domainAccessor];
  v6 = [v5 synchronize];

  v7 = [(CSLPRFTwoWaySyncSetting *)self domainAccessor];
  v8 = [v7 objectForKey:self->_key];

  if (a3 && (objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_6:
    v8 = 0;
    defaultValue = self->_defaultValue;
    goto LABEL_7;
  }

  defaultValue = v8;
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_7:
  v10 = defaultValue;

  return defaultValue;
}

- (id)value
{
  v3 = [(CSLPRFTwoWaySyncSetting *)self domainAccessor];
  v4 = [v3 synchronize];

  v5 = [(CSLPRFTwoWaySyncSetting *)self domainAccessor];
  v6 = [v5 objectForKey:self->_key];

  defaultValue = v6;
  if (!v6)
  {
    defaultValue = self->_defaultValue;
  }

  v8 = defaultValue;

  return defaultValue;
}

- (void)handleDidUnpair
{
  domainAccessor = self->_domainAccessor;
  self->_domainAccessor = 0;

  syncManager = self->_syncManager;
  self->_syncManager = 0;
}

- (id)syncManager
{
  syncManager = self->_syncManager;
  if (!syncManager)
  {
    v4 = objc_alloc_init(MEMORY[0x277D2BA60]);
    v5 = self->_syncManager;
    self->_syncManager = v4;

    syncManager = self->_syncManager;
  }

  return syncManager;
}

- (id)domainAccessor
{
  domainAccessor = self->_domainAccessor;
  if (!domainAccessor)
  {
    v4 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.Carousel"];
    v5 = self->_domainAccessor;
    self->_domainAccessor = v4;

    domainAccessor = self->_domainAccessor;
  }

  return domainAccessor;
}

- (void)dealloc
{
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
    self->_notifyToken = -1;
  }

  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v4 removeObserver:self forKeyPath:self->_key];

  notificationName = self->_notificationName;
  if (notificationName)
  {
    free(notificationName);
  }

  v6.receiver = self;
  v6.super_class = CSLPRFTwoWaySyncSetting;
  [(CSLPRFTwoWaySyncSetting *)&v6 dealloc];
}

- (void)migrate:(id)a3 withMapping:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(CSLPRFTwoWaySyncSetting *)self domainAccessor];
  v8 = [v7 synchronize];

  v9 = [(CSLPRFTwoWaySyncSetting *)self domainAccessor];
  v10 = [v9 objectForKey:self->_key];

  if (!v10)
  {
    v11 = [(CSLPRFTwoWaySyncSetting *)self domainAccessor];
    v12 = [v11 objectForKey:v14];

    if (v12)
    {
      v13 = v6[2](v6, v12);
      [(CSLPRFTwoWaySyncSetting *)self setValue:v13];
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a3;
  v8 = [(CSLPRFTwoWaySyncSetting *)self key];
  v9 = [v8 isEqualToString:v7];

  if (v9)
  {

    [(CSLPRFTwoWaySyncSetting *)self didUpdate];
  }
}

- (void)didUpdate
{
  v3 = [(CSLPRFTwoWaySyncSetting *)self delegate];
  [v3 twoWaySyncSettingDidUpdate:self];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(CSLPRFTwoWaySyncSetting *)self key];
  [v3 appendString:v4 withName:@"key"];

  v5 = [(CSLPRFTwoWaySyncSetting *)self value];
  v6 = [v3 appendObject:v5 withName:@"value"];

  v7 = [(CSLPRFTwoWaySyncSetting *)self defaultValue];
  v8 = [v3 appendObject:v7 withName:@"default"];

  v9 = [v3 build];

  return v9;
}

- (CSLPRFTwoWaySyncSetting)initWithKey:(id)a3 defaultValue:(id)a4 notification:(const char *)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v28.receiver = self;
  v28.super_class = CSLPRFTwoWaySyncSetting;
  v11 = [(CSLPRFTwoWaySyncSetting *)&v28 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_key, a3);
    objc_storeStrong(&v12->_defaultValue, a4);
    v12->_notifyToken = -1;
    if (a5)
    {
      v13 = strnlen(a5, 0x3FFuLL);
      v14 = malloc_type_calloc(v13 + 1, 1uLL, 0x100004077774924uLL);
      v12->_notificationName = v14;
      strlcpy(v14, a5, v13 + 1);
      objc_initWeak(&location, v12);
      v15 = cslprf_settings_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        notificationName = v12->_notificationName;
        *buf = 138412546;
        v30 = v12;
        v31 = 2080;
        v32 = notificationName;
        _os_log_impl(&dword_22CE92000, v15, OS_LOG_TYPE_INFO, "%@ registering to receive %s", buf, 0x16u);
      }

      v17 = MEMORY[0x277D85CD0];
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __65__CSLPRFTwoWaySyncSetting_initWithKey_defaultValue_notification___block_invoke;
      v25 = &unk_278744900;
      objc_copyWeak(&v26, &location);
      notify_register_dispatch(a5, &v12->_notifyToken, MEMORY[0x277D85CD0], &v22);

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }

    v18 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v18 addObserver:v12 forKeyPath:v9 options:1 context:0];

    v19 = [MEMORY[0x277D37B50] sharedInstance];
    [v19 addDelegate:v12];
  }

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

void __65__CSLPRFTwoWaySyncSetting_initWithKey_defaultValue_notification___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = cslprf_settings_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = WeakRetained[2];
      v5 = 138412546;
      v6 = WeakRetained;
      v7 = 2080;
      v8 = v3;
      _os_log_impl(&dword_22CE92000, v2, OS_LOG_TYPE_INFO, "%@ received %s", &v5, 0x16u);
    }

    [WeakRetained didUpdate];
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end