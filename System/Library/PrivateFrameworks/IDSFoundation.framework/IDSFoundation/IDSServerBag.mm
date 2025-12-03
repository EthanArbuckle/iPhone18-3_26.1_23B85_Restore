@interface IDSServerBag
+ (id)_sharedCourierBag;
+ (id)_sharedIDSBag;
+ (id)sharedInstanceForBagType:(int64_t)type;
- (BOOL)isInDebilitatedMode;
- (BOOL)requiresIDSConnection;
- (BOOL)requiresIDSHost;
- (IDSServerBag)init;
- (IDSServerBag)initWithConfig:(id)config queue:(id)queue;
- (IDSServerBag)initWithConfig:(id)config queue:(id)queue contentProvider:(id)provider;
- (NSString)apsEnvironmentName;
- (NSURL)bagURL;
- (id)_overrideValues;
- (id)copyLoadedContents;
- (id)description;
- (id)objectForKey:(id)key;
- (id)objectForKey:(id)key ofClass:(Class)class;
- (id)urlWithKey:(id)key;
- (void)_clearOverrideValues;
- (void)_setOverrideValue:(id)value forKey:(id)key;
- (void)forceBagLoad;
- (void)startBagLoad;
@end

@implementation IDSServerBag

+ (id)_sharedIDSBag
{
  if (qword_1ED5DF7A0 != -1)
  {
    sub_1A7B007DC();
  }

  v3 = qword_1ED5DF7A8;

  return v3;
}

+ (id)_sharedCourierBag
{
  if (qword_1ED5DF7C0 != -1)
  {
    sub_1A7B00CF4();
  }

  v3 = qword_1ED5DF7C8;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  config = [(IDSServerBag *)self config];
  v6 = _IDSServerBagTypeInternalString([config bagType]);
  v7 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, v6];;

  return v7;
}

- (void)startBagLoad
{
  contentProvider = [(IDSServerBag *)self contentProvider];
  v2 = [contentProvider updateContentsIfPossibleShouldForce:0];
}

+ (id)sharedInstanceForBagType:(int64_t)type
{
  if (type == 1)
  {
    [self _sharedCourierBag];
  }

  else
  {
    [self _sharedIDSBag];
  }
  v3 = ;

  return v3;
}

- (IDSServerBag)init
{
  v5.receiver = self;
  v5.super_class = IDSServerBag;
  v2 = [(IDSServerBag *)&v5 init];
  if (v2)
  {
    serverBag = [MEMORY[0x1E69A6138] serverBag];
    if (os_log_type_enabled(serverBag, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E1AAB0(serverBag);
    }
  }

  return v2;
}

- (IDSServerBag)initWithConfig:(id)config queue:(id)queue
{
  queueCopy = queue;
  configCopy = config;
  v8 = [[IDSServerBagInProcessContentProvider alloc] initWithConfig:configCopy queue:queueCopy];
  v9 = [(IDSServerBag *)self initWithConfig:configCopy queue:queueCopy contentProvider:v8];

  return v9;
}

- (IDSServerBag)initWithConfig:(id)config queue:(id)queue contentProvider:(id)provider
{
  v41 = *MEMORY[0x1E69E9840];
  configCopy = config;
  queueCopy = queue;
  providerCopy = provider;
  v30.receiver = self;
  v30.super_class = IDSServerBag;
  v12 = [(IDSServerBag *)&v30 init];
  v13 = v12;
  if (v12)
  {
    v12->_contentsLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_queue, queue);
    objc_storeStrong(&v13->_config, config);
    objc_storeStrong(&v13->_contentProvider, provider);
    objc_initWeak(&location, v13);
    contentProvider = v13->_contentProvider;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1A7BEF2B4;
    v27[3] = &unk_1E77E16E0;
    objc_copyWeak(&v28, &location);
    [(IDSServerBagContentProvider *)contentProvider setContentsUpdatedBlock:v27];
    os_unfair_lock_lock(&v13->_contentsLock);
    v26 = 0;
    v15 = [providerCopy currentLoadedContentsWithError:&v26];
    v16 = v26;
    loadedContents = v13->_loadedContents;
    v13->_loadedContents = v15;

    loadOverrideValuesIfPresent = [(IDSServerBagContentProvider *)v13->_contentProvider loadOverrideValuesIfPresent];
    v19 = [loadOverrideValuesIfPresent mutableCopy];
    overrideValues = v13->_overrideValues;
    v13->_overrideValues = v19;

    dictionary = [(IDSServerBagLoadedContents *)v13->_loadedContents dictionary];
    v22 = [dictionary count];

    v23 = [(NSMutableDictionary *)v13->_overrideValues count];
    os_unfair_lock_unlock(&v13->_contentsLock);
    logCategory = [configCopy logCategory];
    if (os_log_type_enabled(logCategory, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544386;
      v32 = v13;
      v33 = 2114;
      v34 = configCopy;
      v35 = 2112;
      v36 = providerCopy;
      v37 = 2050;
      v38 = v22;
      v39 = 2050;
      v40 = v23;
      _os_log_impl(&dword_1A7AD9000, logCategory, OS_LOG_TYPE_DEFAULT, "%{public}@ created {config: %{public}@, contentProvider: %@, loadedContents.count: %{public}llu, overrideValues.count: %{public}llu}", buf, 0x34u);
    }

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v13;
}

- (void)forceBagLoad
{
  contentProvider = [(IDSServerBag *)self contentProvider];
  v2 = [contentProvider updateContentsIfPossibleShouldForce:1];
}

- (BOOL)isInDebilitatedMode
{
  if ([(IDSServerBagConfig *)self->_config bagType])
  {
    return 0;
  }

  v4 = [(IDSServerBag *)self objectForKey:@"vc-disaster-mode"];
  v3 = [v4 intValue] != 0;

  return v3;
}

- (BOOL)requiresIDSConnection
{
  config = [(IDSServerBag *)self config];
  requiresIDSHost = [config requiresIDSHost];

  return requiresIDSHost;
}

- (BOOL)requiresIDSHost
{
  config = [(IDSServerBag *)self config];
  requiresIDSHost = [config requiresIDSHost];

  return requiresIDSHost;
}

- (NSURL)bagURL
{
  config = [(IDSServerBag *)self config];
  v3 = [config url];

  return v3;
}

- (NSString)apsEnvironmentName
{
  config = [(IDSServerBag *)self config];
  apsEnvironmentName = [config apsEnvironmentName];

  return apsEnvironmentName;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_contentsLock);
  if (CUTIsInternalInstall())
  {
    v5 = [@"server-bag-" stringByAppendingString:keyCopy];
    mEMORY[0x1E69A6180] = [MEMORY[0x1E69A6180] sharedDefaults];
    v7 = [mEMORY[0x1E69A6180] appValueForKey:v5];

    if (v7)
    {
LABEL_3:
      os_unfair_lock_unlock(&self->_contentsLock);
      goto LABEL_11;
    }

    if ([(NSMutableDictionary *)self->_overrideValues count])
    {
      v8 = [(NSMutableDictionary *)self->_overrideValues objectForKey:keyCopy];
      if (v8)
      {
        v7 = v8;
        goto LABEL_3;
      }
    }
  }

  loadedContents = [(IDSServerBag *)self loadedContents];
  dictionary = [loadedContents dictionary];
  v5 = [dictionary objectForKey:keyCopy];

  os_unfair_lock_unlock(&self->_contentsLock);
  if (v5)
  {
    v5 = v5;
    v7 = v5;
  }

  else
  {
    config = [(IDSServerBag *)self config];
    defaultBag = [config defaultBag];
    v7 = [defaultBag objectForKey:keyCopy];
  }

LABEL_11:

  return v7;
}

- (id)objectForKey:(id)key ofClass:(Class)class
{
  classCopy = class;
  if (class)
  {
    v5 = [(IDSServerBag *)self objectForKey:key];
    if (objc_opt_isKindOfClass())
    {
      classCopy = v5;
    }

    else
    {
      classCopy = 0;
    }
  }

  return classCopy;
}

- (id)urlWithKey:(id)key
{
  v4 = [(IDSServerBag *)self objectForKey:key];
  v5 = v4;
  if ([(IDSServerBag *)self isServerAvailable])
  {
    [(IDSServerBag *)self startBagLoad];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 length];
    if (v6)
    {
      v6 = [MEMORY[0x1E695DFF8] URLWithString:v4];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_clearOverrideValues
{
  os_unfair_lock_lock(&self->_contentsLock);
  overrideValues = self->_overrideValues;
  self->_overrideValues = 0;

  os_unfair_lock_unlock(&self->_contentsLock);
  clearOverrideValues = [(IDSServerBagContentProvider *)self->_contentProvider clearOverrideValues];
}

- (void)_setOverrideValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    os_unfair_lock_lock(&self->_contentsLock);
    overrideValues = self->_overrideValues;
    if (!overrideValues)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = self->_overrideValues;
      self->_overrideValues = v10;

      overrideValues = self->_overrideValues;
    }

    [(NSMutableDictionary *)overrideValues setObject:valueCopy forKey:keyCopy];
    os_unfair_lock_unlock(&self->_contentsLock);
    v12 = [(IDSServerBagContentProvider *)self->_contentProvider writeOverrideValues:self->_overrideValues];
  }
}

- (id)_overrideValues
{
  os_unfair_lock_lock(&self->_contentsLock);
  v3 = [(NSMutableDictionary *)self->_overrideValues copy];
  os_unfair_lock_unlock(&self->_contentsLock);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v5 = v4;

  return v4;
}

- (id)copyLoadedContents
{
  os_unfair_lock_lock(&self->_contentsLock);
  v3 = [(IDSServerBagLoadedContents *)self->_loadedContents copy];
  os_unfair_lock_unlock(&self->_contentsLock);
  return v3;
}

@end