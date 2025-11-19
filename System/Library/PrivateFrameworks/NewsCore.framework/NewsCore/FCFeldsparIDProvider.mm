@interface FCFeldsparIDProvider
+ (FCFeldsparIDProvider)sharedInstance;
- (FCFeldsparIDProvider)init;
- (NSString)feldsparID;
- (void)_updateFeldsparID:(id)a3;
- (void)addObserver:(id)a3;
- (void)registerUserInfo:(id)a3;
- (void)removeObserver:(id)a3;
- (void)userInfoDidChangeFeldsparID:(id)a3 fromCloud:(BOOL)a4;
@end

@implementation FCFeldsparIDProvider

+ (FCFeldsparIDProvider)sharedInstance
{
  if (qword_1EDB27030 != -1)
  {
    dispatch_once(&qword_1EDB27030, &__block_literal_global_30);
  }

  v3 = _MergedGlobals_142;

  return v3;
}

uint64_t __38__FCFeldsparIDProvider_sharedInstance__block_invoke()
{
  _MergedGlobals_142 = objc_alloc_init(FCFeldsparIDProvider);

  return MEMORY[0x1EEE66BB8]();
}

- (FCFeldsparIDProvider)init
{
  v9.receiver = self;
  v9.super_class = FCFeldsparIDProvider;
  v2 = [(FCFeldsparIDProvider *)&v9 init];
  if (v2)
  {
    v3 = NewsCoreSensitiveUserDefaults();
    v4 = [v3 stringForKey:@"provider_user_id"];
    feldsparID = v2->_feldsparID;
    v2->_feldsparID = v4;

    v6 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    observers = v2->_observers;
    v2->_observers = v6;
  }

  return v2;
}

- (NSString)feldsparID
{
  v3 = +[FCUserInfo overrideFeldsparID];
  if ([v3 length])
  {
    v4 = v3;
LABEL_5:
    v5 = v4;
    goto LABEL_6;
  }

  if (self->_userInfo)
  {
    v4 = self->_feldsparID;
    goto LABEL_5;
  }

  v7 = NewsCoreSensitiveUserDefaults();
  v5 = [v7 stringForKey:@"provider_user_id"];

LABEL_6:

  return v5;
}

- (void)registerUserInfo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  if (v5)
  {
    userInfo = self->_userInfo;
    if (userInfo != v5)
    {
      [(FCUserInfo *)userInfo removeObserver:self];
      [(FCUserInfo *)v5 addObserver:self];
      objc_storeStrong(&self->_userInfo, a3);
      v7 = [(FCUserInfo *)v5 feldsparID];
      [(FCFeldsparIDProvider *)self _updateFeldsparID:v7];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "userInfo"];
    *buf = 136315906;
    v11 = "[FCFeldsparIDProvider registerUserInfo:]";
    v12 = 2080;
    v13 = "FCFeldsparIDProvider.m";
    v14 = 1024;
    v15 = 67;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)addObserver:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  if (v4)
  {
    v5 = [(FCFeldsparIDProvider *)self observers];
    [v5 addObject:v4];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer"];
    *buf = 136315906;
    v8 = "[FCFeldsparIDProvider addObserver:]";
    v9 = 2080;
    v10 = "FCFeldsparIDProvider.m";
    v11 = 1024;
    v12 = 87;
    v13 = 2114;
    v14 = v5;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_5:
  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  if (v4)
  {
    v5 = [(FCFeldsparIDProvider *)self observers];
    [v5 removeObject:v4];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer"];
    *buf = 136315906;
    v8 = "[FCFeldsparIDProvider removeObserver:]";
    v9 = 2080;
    v10 = "FCFeldsparIDProvider.m";
    v11 = 1024;
    v12 = 98;
    v13 = 2114;
    v14 = v5;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_5:
  v6 = *MEMORY[0x1E69E9840];
}

- (void)userInfoDidChangeFeldsparID:(id)a3 fromCloud:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v6 = [v7 feldsparID];
  [(FCFeldsparIDProvider *)self _updateFeldsparID:v6];

  if (v4)
  {
    [v7 resetSportsID];
  }
}

- (void)_updateFeldsparID:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  if ([v4 length])
  {
    v5 = [(FCFeldsparIDProvider *)self feldsparID];
    v6 = [v5 isEqualToString:v4];

    if ((v6 & 1) == 0)
    {
      [(FCFeldsparIDProvider *)self setFeldsparID:v4];
      v7 = NewsCoreSensitiveUserDefaults();
      [v7 setValue:v4 forKey:@"provider_user_id"];

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = [(FCFeldsparIDProvider *)self observers];
      v9 = [v8 copy];

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
        do
        {
          v13 = 0;
          do
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v16 + 1) + 8 * v13);
            if (objc_opt_respondsToSelector())
            {
              [v14 feldsparIDProviderDidChangeFeldsparID:self];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v11);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end