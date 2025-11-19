@interface FCRemoteDefaults
- (BOOL)isAvailable;
- (FCBackgroundTaskable)backgroundTaskable;
- (FCRemoteDefaults)init;
- (FCRemoteDefaults)initWithBackgroundTaskable:(id)a3;
- (id)URLForKey:(id)a3;
- (id)URLRequest;
- (id)dictionaryForKey:(id)a3;
- (id)objectForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (void)checkForUpdate;
- (void)processResponse:(id)a3 data:(id)a4 error:(id)a5;
- (void)updateRemoteDefaults;
@end

@implementation FCRemoteDefaults

- (BOOL)isAvailable
{
  v2 = [(FCThreadSafeMutableDictionary *)self->_remoteDefaults objectForKey:@"FCRemoteDefaults"];
  v3 = v2 != 0;

  return v3;
}

- (FCRemoteDefaults)initWithBackgroundTaskable:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = FCRemoteDefaults;
  v5 = [(FCRemoteDefaults *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_backgroundTaskable, v4);
    v7 = objc_alloc_init(FCThreadSafeMutableDictionary);
    remoteDefaults = v6->_remoteDefaults;
    v6->_remoteDefaults = v7;

    v9 = [MEMORY[0x1E695E000] standardUserDefaults];
    v10 = [v9 objectForKey:@"FCRemoteDefaults"];

    if (v10)
    {
      [(FCThreadSafeMutableDictionary *)v6->_remoteDefaults setObject:v10 forKey:@"FCRemoteDefaults"];
    }

    else
    {
      [(FCRemoteDefaults *)v6 checkForUpdate];
    }
  }

  return v6;
}

- (FCRemoteDefaults)init
{
  v14 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case unsupported"];
    v6 = 136315906;
    v7 = "[FCRemoteDefaults init]";
    v8 = 2080;
    v9 = "FCRemoteDefaults.m";
    v10 = 1024;
    v11 = 58;
    v12 = 2114;
    v13 = v5;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v6, 0x26u);
  }

  result = [(FCRemoteDefaults *)self initWithBackgroundTaskable:0];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)objectForKey:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  remoteDefaults = self->_remoteDefaults;
  v4 = a3;
  v5 = [(FCThreadSafeMutableDictionary *)remoteDefaults objectForKey:@"FCRemoteDefaults"];
  v6 = [v5 objectForKey:v4];

  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "object"];
    *buf = 136315906;
    v11 = "[FCRemoteDefaults objectForKey:]";
    v12 = 2080;
    v13 = "FCRemoteDefaults.m";
    v14 = 1024;
    v15 = 68;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(FCRemoteDefaults *)self objectForKey:v4];

  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (id)URLForKey:(id)a3
{
  v3 = [(FCRemoteDefaults *)self objectForKey:a3];
  objc_opt_class();
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (!v5 && v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v3;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    if (v7)
    {
      v5 = [MEMORY[0x1E695DFF8] URLWithString:v7];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)dictionaryForKey:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(FCRemoteDefaults *)self objectForKey:v4];

  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (void)checkForUpdate
{
  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v6 objectForKey:@"FCRemoteDefaultsLastUpdate"];
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [v3 dateByAddingTimeInterval:86400.0];
  if (!v3 || [v4 fc_isLaterThan:v5])
  {
    [(FCRemoteDefaults *)self updateRemoteDefaults];
  }
}

- (void)updateRemoteDefaults
{
  v3 = [(FCRemoteDefaults *)self URLRequest];
  v4 = [(FCRemoteDefaults *)self backgroundTaskable];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __40__FCRemoteDefaults_updateRemoteDefaults__block_invoke;
  v13[3] = &unk_1E7C3A3A0;
  v5 = v4;
  v14 = v5;
  v15 = &v16;
  v6 = [v5 fc_beginBackgroundTaskWithName:@"Remote Defaults Update" expirationHandler:v13];
  v17[3] = v6;
  v7 = [MEMORY[0x1E695AC78] sharedSession];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__FCRemoteDefaults_updateRemoteDefaults__block_invoke_2;
  v10[3] = &unk_1E7C44260;
  v10[4] = self;
  v8 = v5;
  v11 = v8;
  v12 = &v16;
  v9 = [v7 dataTaskWithRequest:v3 completionHandler:v10];
  [v9 resume];

  _Block_object_dispose(&v16, 8);
}

void __40__FCRemoteDefaults_updateRemoteDefaults__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = objc_opt_class();
  v11 = FCCheckedDynamicCast(v10, v8);

  [*(a1 + 32) processResponse:v11 data:v9 error:v7];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __40__FCRemoteDefaults_updateRemoteDefaults__block_invoke_3;
  v14[3] = &unk_1E7C3A3A0;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v15 = v12;
  v16 = v13;
  FCPerformBlockOnMainThread(v14);
}

- (id)URLRequest
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 stringForKey:@"FCRemoteDefaultsDownloadURL"];
  if (![v3 length] || (objc_msgSend(MEMORY[0x1E695DFF8], "URLWithString:", v3), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:@"https://configuration.apple.com/configurations/internetservices/tectosilicate/RemoteDefaults.plist"];
  }

  v5 = [MEMORY[0x1E695AC18] requestWithURL:v4];
  [v5 setTimeoutInterval:20.0];
  [v5 setCachePolicy:1];
  v6 = [v2 stringForKey:@"FCRemoteDefaultsETag"];
  if ([v6 length])
  {
    [v5 setValue:v6 forHTTPHeaderField:@"If-None-Match"];
  }

  return v5;
}

- (void)processResponse:(id)a3 data:(id)a4 error:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 statusCode];
  v12 = v11;
  if (v11 == 304 || v11 == 200)
  {
    v13 = [MEMORY[0x1E695E000] standardUserDefaults];
    v14 = [MEMORY[0x1E695DF00] date];
    [v13 setObject:v14 forKey:@"FCRemoteDefaultsLastUpdate"];

    if (v12 == 200 && [v9 length])
    {
      v22 = 0;
      v15 = [MEMORY[0x1E696AE40] propertyListWithData:v9 options:0 format:0 error:&v22];
      v16 = v22;

      if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [(FCThreadSafeMutableDictionary *)self->_remoteDefaults setObject:v15 forKey:@"FCRemoteDefaults"];
        [v13 setObject:v15 forKey:@"FCRemoteDefaults"];
        v17 = FCAppConfigurationLog;
        if (os_log_type_enabled(FCAppConfigurationLog, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = v15;
          _os_log_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_INFO, "Received configuration file: %@", buf, 0xCu);
        }

        v18 = [v8 allHeaderFields];
        v19 = [v18 objectForKey:@"Etag"];

        [v13 setObject:v19 forKey:@"FCRemoteDefaultsETag"];
      }

      else
      {
        v20 = FCDefaultLog;
        if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v24 = v16;
          _os_log_error_impl(&dword_1B63EF000, v20, OS_LOG_TYPE_ERROR, "Could not create property list from data. Error: %{public}@", buf, 0xCu);
        }
      }
    }

    else
    {
      v16 = v10;
    }

    v10 = v16;
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (FCBackgroundTaskable)backgroundTaskable
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundTaskable);

  return WeakRetained;
}

@end