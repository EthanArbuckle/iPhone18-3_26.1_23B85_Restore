@interface CSLPRFTwoWaySyncSetting
- (CSLPRFTwoWaySyncSetting)initWithKey:(id)key defaultValue:(id)value notification:(const char *)notification;
- (CSLPRFTwoWaySyncSettingDelegate)delegate;
- (NSString)description;
- (id)domainAccessor;
- (id)safeValueOfType:(Class)type;
- (id)syncManager;
- (id)value;
- (void)dealloc;
- (void)didUpdate;
- (void)handleDidUnpair;
- (void)migrate:(id)migrate withMapping:(id)mapping;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setValue:(id)value;
@end

@implementation CSLPRFTwoWaySyncSetting

- (CSLPRFTwoWaySyncSettingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  domainAccessor = [(CSLPRFTwoWaySyncSetting *)self domainAccessor];
  [domainAccessor setObject:valueCopy forKey:self->_key];

  domainAccessor2 = [(CSLPRFTwoWaySyncSetting *)self domainAccessor];
  synchronize = [domainAccessor2 synchronize];

  syncManager = [(CSLPRFTwoWaySyncSetting *)self syncManager];
  v9 = [MEMORY[0x277CBEB98] setWithObject:self->_key];
  [syncManager synchronizeNanoDomain:@"com.apple.Carousel" keys:v9];

  notificationName = self->_notificationName;
  if (notificationName)
  {

    notify_post(notificationName);
  }
}

- (id)safeValueOfType:(Class)type
{
  domainAccessor = [(CSLPRFTwoWaySyncSetting *)self domainAccessor];
  synchronize = [domainAccessor synchronize];

  domainAccessor2 = [(CSLPRFTwoWaySyncSetting *)self domainAccessor];
  v8 = [domainAccessor2 objectForKey:self->_key];

  if (type && (objc_opt_isKindOfClass() & 1) == 0)
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
  domainAccessor = [(CSLPRFTwoWaySyncSetting *)self domainAccessor];
  synchronize = [domainAccessor synchronize];

  domainAccessor2 = [(CSLPRFTwoWaySyncSetting *)self domainAccessor];
  v6 = [domainAccessor2 objectForKey:self->_key];

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

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults removeObserver:self forKeyPath:self->_key];

  notificationName = self->_notificationName;
  if (notificationName)
  {
    free(notificationName);
  }

  v6.receiver = self;
  v6.super_class = CSLPRFTwoWaySyncSetting;
  [(CSLPRFTwoWaySyncSetting *)&v6 dealloc];
}

- (void)migrate:(id)migrate withMapping:(id)mapping
{
  migrateCopy = migrate;
  mappingCopy = mapping;
  domainAccessor = [(CSLPRFTwoWaySyncSetting *)self domainAccessor];
  synchronize = [domainAccessor synchronize];

  domainAccessor2 = [(CSLPRFTwoWaySyncSetting *)self domainAccessor];
  v10 = [domainAccessor2 objectForKey:self->_key];

  if (!v10)
  {
    domainAccessor3 = [(CSLPRFTwoWaySyncSetting *)self domainAccessor];
    v12 = [domainAccessor3 objectForKey:migrateCopy];

    if (v12)
    {
      v13 = mappingCopy[2](mappingCopy, v12);
      [(CSLPRFTwoWaySyncSetting *)self setValue:v13];
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v8 = [(CSLPRFTwoWaySyncSetting *)self key];
  v9 = [v8 isEqualToString:pathCopy];

  if (v9)
  {

    [(CSLPRFTwoWaySyncSetting *)self didUpdate];
  }
}

- (void)didUpdate
{
  delegate = [(CSLPRFTwoWaySyncSetting *)self delegate];
  [delegate twoWaySyncSettingDidUpdate:self];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(CSLPRFTwoWaySyncSetting *)self key];
  [v3 appendString:v4 withName:@"key"];

  value = [(CSLPRFTwoWaySyncSetting *)self value];
  v6 = [v3 appendObject:value withName:@"value"];

  defaultValue = [(CSLPRFTwoWaySyncSetting *)self defaultValue];
  v8 = [v3 appendObject:defaultValue withName:@"default"];

  build = [v3 build];

  return build;
}

- (CSLPRFTwoWaySyncSetting)initWithKey:(id)key defaultValue:(id)value notification:(const char *)notification
{
  v33 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  v28.receiver = self;
  v28.super_class = CSLPRFTwoWaySyncSetting;
  v11 = [(CSLPRFTwoWaySyncSetting *)&v28 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_key, key);
    objc_storeStrong(&v12->_defaultValue, value);
    v12->_notifyToken = -1;
    if (notification)
    {
      v13 = strnlen(notification, 0x3FFuLL);
      v14 = malloc_type_calloc(v13 + 1, 1uLL, 0x100004077774924uLL);
      v12->_notificationName = v14;
      strlcpy(v14, notification, v13 + 1);
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
      notify_register_dispatch(notification, &v12->_notifyToken, MEMORY[0x277D85CD0], &v22);

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults addObserver:v12 forKeyPath:keyCopy options:1 context:0];

    mEMORY[0x277D37B50] = [MEMORY[0x277D37B50] sharedInstance];
    [mEMORY[0x277D37B50] addDelegate:v12];
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