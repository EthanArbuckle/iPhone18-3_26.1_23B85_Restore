@interface IDSServerBagCacheLoader
- (IDSServerBagCacheLoader)initWithConfig:(id)config queue:(id)queue;
- (id)clearOverrideValues;
- (id)loadFromCacheWithError:(id *)error;
- (id)loadOverrideValuesIfPresent;
- (id)writeOverrideValues:(id)values;
- (id)writeRawContents:(id)contents;
- (void)dealloc;
@end

@implementation IDSServerBagCacheLoader

- (id)loadOverrideValuesIfPresent
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    config = [(IDSServerBagCacheLoader *)self config];
    defaultsDomain = [config defaultsDomain];

    v7 = CFPreferencesCopyValue(@"OverrideValues", defaultsDomain, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }
  }

  v7 = 0;
LABEL_5:

  return v7;
}

- (IDSServerBagCacheLoader)initWithConfig:(id)config queue:(id)queue
{
  configCopy = config;
  queueCopy = queue;
  if (configCopy)
  {
    v15.receiver = self;
    v15.super_class = IDSServerBagCacheLoader;
    v9 = [(IDSServerBagCacheLoader *)&v15 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_config, config);
      objc_storeStrong(&v10->_queue, queue);
      v10->_loadedNotification = 0;
      v11 = [objc_alloc(MEMORY[0x1E69956C8]) initWithCapacity:1 queue:queueCopy block:&unk_1F1AAA8E0];
      handleExternalLoadTaskQueue = v10->_handleExternalLoadTaskQueue;
      v10->_handleExternalLoadTaskQueue = v11;
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)loadFromCacheWithError:(id *)error
{
  config = [(IDSServerBagCacheLoader *)self config];
  defaultsDomain = [config defaultsDomain];

  v7 = *MEMORY[0x1E695E8B8];
  v8 = *MEMORY[0x1E695E898];
  CFPreferencesSynchronize(defaultsDomain, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (!self->_loadedNotification)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1A7BE72A8, @"__k_IDSServerBagFinishedLoadingDistributedNotification", 0, CFNotificationSuspensionBehaviorCoalesce);
    self->_loadedNotification = 1;
  }

  v10 = CFPreferencesCopyValue(@"CachedBag", defaultsDomain, v7, v8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    v12 = CFPreferencesCopyValue(@"CacheTime", defaultsDomain, v7, v8);
    v13 = CFPreferencesCopyValue(@"Date", defaultsDomain, v7, v8);
    v14 = CFPreferencesCopyValue(@"CachedSignature", defaultsDomain, v7, v8);
    v15 = CFPreferencesCopyValue(@"CacheCertificate", defaultsDomain, v7, v8);
    if (v13)
    {
      v16 = MEMORY[0x1E695DF00];
      [v13 doubleValue];
      v17 = [v16 dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v17 = 0;
    }

    v19 = [IDSServerBagRawContents alloc];
    [v12 doubleValue];
    v18 = [(IDSServerBagRawContents *)v19 initWithLoadDate:v17 timeToLive:v14 serverSignature:v15 serverCerts:v11 signedBag:?];
  }

  else if (error)
  {
    IDSServerBagContentErrorWithUnderlyingError(300, 0);
    *error = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)writeRawContents:(id)contents
{
  contentsCopy = contents;
  config = [(IDSServerBagCacheLoader *)self config];
  defaultsDomain = [config defaultsDomain];

  queue = [(IDSServerBagCacheLoader *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A7BE7398;
  block[3] = &unk_1E77E1248;
  selfCopy = self;
  v13 = defaultsDomain;
  v11 = contentsCopy;
  v8 = contentsCopy;
  dispatch_async(queue, block);

  return 0;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"__k_IDSServerBagFinishedLoadingDistributedNotification", 0);
  v4.receiver = self;
  v4.super_class = IDSServerBagCacheLoader;
  [(IDSServerBagCacheLoader *)&v4 dealloc];
}

- (id)writeOverrideValues:(id)values
{
  valuesCopy = values;
  config = [(IDSServerBagCacheLoader *)self config];
  defaultsDomain = [config defaultsDomain];

  v7 = [valuesCopy copy];
  v8 = v7;
  v9 = *MEMORY[0x1E695E8B8];
  v10 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(@"OverrideValues", v8, defaultsDomain, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);

  CFPreferencesSynchronize(defaultsDomain, v9, v10);
  queue = [(IDSServerBagCacheLoader *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A7E1A378;
  block[3] = &unk_1E77E0818;
  block[4] = self;
  dispatch_async(queue, block);

  return 0;
}

- (id)clearOverrideValues
{
  config = [(IDSServerBagCacheLoader *)self config];
  defaultsDomain = [config defaultsDomain];

  v5 = *MEMORY[0x1E695E8B8];
  v6 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(@"OverrideValues", 0, defaultsDomain, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  CFPreferencesSynchronize(defaultsDomain, v5, v6);
  queue = [(IDSServerBagCacheLoader *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A7E1A37C;
  block[3] = &unk_1E77E0818;
  block[4] = self;
  dispatch_async(queue, block);

  return 0;
}

@end