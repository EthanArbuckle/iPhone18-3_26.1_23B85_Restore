@interface IDSServerBag
+ (id)_sharedCourierBag;
+ (id)_sharedIDSBag;
+ (id)sharedInstanceForBagType:(int64_t)a3;
- (BOOL)isInDebilitatedMode;
- (BOOL)requiresIDSConnection;
- (BOOL)requiresIDSHost;
- (IDSServerBag)init;
- (IDSServerBag)initWithConfig:(id)a3 queue:(id)a4;
- (IDSServerBag)initWithConfig:(id)a3 queue:(id)a4 contentProvider:(id)a5;
- (NSString)apsEnvironmentName;
- (NSURL)bagURL;
- (id)_overrideValues;
- (id)copyLoadedContents;
- (id)description;
- (id)objectForKey:(id)a3;
- (id)objectForKey:(id)a3 ofClass:(Class)a4;
- (id)urlWithKey:(id)a3;
- (void)_clearOverrideValues;
- (void)_setOverrideValue:(id)a3 forKey:(id)a4;
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
  v5 = [(IDSServerBag *)self config];
  v6 = _IDSServerBagTypeInternalString([v5 bagType]);
  v7 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, v6];;

  return v7;
}

- (void)startBagLoad
{
  v3 = [(IDSServerBag *)self contentProvider];
  v2 = [v3 updateContentsIfPossibleShouldForce:0];
}

+ (id)sharedInstanceForBagType:(int64_t)a3
{
  if (a3 == 1)
  {
    [a1 _sharedCourierBag];
  }

  else
  {
    [a1 _sharedIDSBag];
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
    v3 = [MEMORY[0x1E69A6138] serverBag];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E1AAB0(v3);
    }
  }

  return v2;
}

- (IDSServerBag)initWithConfig:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[IDSServerBagInProcessContentProvider alloc] initWithConfig:v7 queue:v6];
  v9 = [(IDSServerBag *)self initWithConfig:v7 queue:v6 contentProvider:v8];

  return v9;
}

- (IDSServerBag)initWithConfig:(id)a3 queue:(id)a4 contentProvider:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v30.receiver = self;
  v30.super_class = IDSServerBag;
  v12 = [(IDSServerBag *)&v30 init];
  v13 = v12;
  if (v12)
  {
    v12->_contentsLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_queue, a4);
    objc_storeStrong(&v13->_config, a3);
    objc_storeStrong(&v13->_contentProvider, a5);
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
    v15 = [v11 currentLoadedContentsWithError:&v26];
    v16 = v26;
    loadedContents = v13->_loadedContents;
    v13->_loadedContents = v15;

    v18 = [(IDSServerBagContentProvider *)v13->_contentProvider loadOverrideValuesIfPresent];
    v19 = [v18 mutableCopy];
    overrideValues = v13->_overrideValues;
    v13->_overrideValues = v19;

    v21 = [(IDSServerBagLoadedContents *)v13->_loadedContents dictionary];
    v22 = [v21 count];

    v23 = [(NSMutableDictionary *)v13->_overrideValues count];
    os_unfair_lock_unlock(&v13->_contentsLock);
    v24 = [v9 logCategory];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544386;
      v32 = v13;
      v33 = 2114;
      v34 = v9;
      v35 = 2112;
      v36 = v11;
      v37 = 2050;
      v38 = v22;
      v39 = 2050;
      v40 = v23;
      _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ created {config: %{public}@, contentProvider: %@, loadedContents.count: %{public}llu, overrideValues.count: %{public}llu}", buf, 0x34u);
    }

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v13;
}

- (void)forceBagLoad
{
  v3 = [(IDSServerBag *)self contentProvider];
  v2 = [v3 updateContentsIfPossibleShouldForce:1];
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
  v2 = [(IDSServerBag *)self config];
  v3 = [v2 requiresIDSHost];

  return v3;
}

- (BOOL)requiresIDSHost
{
  v2 = [(IDSServerBag *)self config];
  v3 = [v2 requiresIDSHost];

  return v3;
}

- (NSURL)bagURL
{
  v2 = [(IDSServerBag *)self config];
  v3 = [v2 url];

  return v3;
}

- (NSString)apsEnvironmentName
{
  v2 = [(IDSServerBag *)self config];
  v3 = [v2 apsEnvironmentName];

  return v3;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_contentsLock);
  if (CUTIsInternalInstall())
  {
    v5 = [@"server-bag-" stringByAppendingString:v4];
    v6 = [MEMORY[0x1E69A6180] sharedDefaults];
    v7 = [v6 appValueForKey:v5];

    if (v7)
    {
LABEL_3:
      os_unfair_lock_unlock(&self->_contentsLock);
      goto LABEL_11;
    }

    if ([(NSMutableDictionary *)self->_overrideValues count])
    {
      v8 = [(NSMutableDictionary *)self->_overrideValues objectForKey:v4];
      if (v8)
      {
        v7 = v8;
        goto LABEL_3;
      }
    }
  }

  v9 = [(IDSServerBag *)self loadedContents];
  v10 = [v9 dictionary];
  v5 = [v10 objectForKey:v4];

  os_unfair_lock_unlock(&self->_contentsLock);
  if (v5)
  {
    v5 = v5;
    v7 = v5;
  }

  else
  {
    v11 = [(IDSServerBag *)self config];
    v12 = [v11 defaultBag];
    v7 = [v12 objectForKey:v4];
  }

LABEL_11:

  return v7;
}

- (id)objectForKey:(id)a3 ofClass:(Class)a4
{
  v4 = a4;
  if (a4)
  {
    v5 = [(IDSServerBag *)self objectForKey:a3];
    if (objc_opt_isKindOfClass())
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)urlWithKey:(id)a3
{
  v4 = [(IDSServerBag *)self objectForKey:a3];
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
  v4 = [(IDSServerBagContentProvider *)self->_contentProvider clearOverrideValues];
}

- (void)_setOverrideValue:(id)a3 forKey:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69A60F0] sharedInstance];
  v8 = [v7 isInternalInstall];

  if (v8)
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

    [(NSMutableDictionary *)overrideValues setObject:v13 forKey:v6];
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