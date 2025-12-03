@interface FCRemoteDefaults
- (BOOL)isAvailable;
- (FCBackgroundTaskable)backgroundTaskable;
- (FCRemoteDefaults)init;
- (FCRemoteDefaults)initWithBackgroundTaskable:(id)taskable;
- (id)URLForKey:(id)key;
- (id)URLRequest;
- (id)dictionaryForKey:(id)key;
- (id)objectForKey:(id)key;
- (id)stringForKey:(id)key;
- (void)checkForUpdate;
- (void)processResponse:(id)response data:(id)data error:(id)error;
- (void)updateRemoteDefaults;
@end

@implementation FCRemoteDefaults

- (BOOL)isAvailable
{
  v2 = [(FCThreadSafeMutableDictionary *)self->_remoteDefaults objectForKey:@"FCRemoteDefaults"];
  v3 = v2 != 0;

  return v3;
}

- (FCRemoteDefaults)initWithBackgroundTaskable:(id)taskable
{
  taskableCopy = taskable;
  v12.receiver = self;
  v12.super_class = FCRemoteDefaults;
  v5 = [(FCRemoteDefaults *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_backgroundTaskable, taskableCopy);
    v7 = objc_alloc_init(FCThreadSafeMutableDictionary);
    remoteDefaults = v6->_remoteDefaults;
    v6->_remoteDefaults = v7;

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v10 = [standardUserDefaults objectForKey:@"FCRemoteDefaults"];

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

- (id)objectForKey:(id)key
{
  v18 = *MEMORY[0x1E69E9840];
  remoteDefaults = self->_remoteDefaults;
  keyCopy = key;
  v5 = [(FCThreadSafeMutableDictionary *)remoteDefaults objectForKey:@"FCRemoteDefaults"];
  v6 = [v5 objectForKey:keyCopy];

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

- (id)stringForKey:(id)key
{
  keyCopy = key;
  objc_opt_class();
  v5 = [(FCRemoteDefaults *)self objectForKey:keyCopy];

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

- (id)URLForKey:(id)key
{
  v3 = [(FCRemoteDefaults *)self objectForKey:key];
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

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  objc_opt_class();
  v5 = [(FCRemoteDefaults *)self objectForKey:keyCopy];

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
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"FCRemoteDefaultsLastUpdate"];
  date = [MEMORY[0x1E695DF00] date];
  v5 = [v3 dateByAddingTimeInterval:86400.0];
  if (!v3 || [date fc_isLaterThan:v5])
  {
    [(FCRemoteDefaults *)self updateRemoteDefaults];
  }
}

- (void)updateRemoteDefaults
{
  uRLRequest = [(FCRemoteDefaults *)self URLRequest];
  backgroundTaskable = [(FCRemoteDefaults *)self backgroundTaskable];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __40__FCRemoteDefaults_updateRemoteDefaults__block_invoke;
  v13[3] = &unk_1E7C3A3A0;
  v5 = backgroundTaskable;
  v14 = v5;
  v15 = &v16;
  v6 = [v5 fc_beginBackgroundTaskWithName:@"Remote Defaults Update" expirationHandler:v13];
  v17[3] = v6;
  mEMORY[0x1E695AC78] = [MEMORY[0x1E695AC78] sharedSession];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__FCRemoteDefaults_updateRemoteDefaults__block_invoke_2;
  v10[3] = &unk_1E7C44260;
  v10[4] = self;
  v8 = v5;
  v11 = v8;
  v12 = &v16;
  v9 = [mEMORY[0x1E695AC78] dataTaskWithRequest:uRLRequest completionHandler:v10];
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
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"FCRemoteDefaultsDownloadURL"];
  if (![v3 length] || (objc_msgSend(MEMORY[0x1E695DFF8], "URLWithString:", v3), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:@"https://configuration.apple.com/configurations/internetservices/tectosilicate/RemoteDefaults.plist"];
  }

  v5 = [MEMORY[0x1E695AC18] requestWithURL:v4];
  [v5 setTimeoutInterval:20.0];
  [v5 setCachePolicy:1];
  v6 = [standardUserDefaults stringForKey:@"FCRemoteDefaultsETag"];
  if ([v6 length])
  {
    [v5 setValue:v6 forHTTPHeaderField:@"If-None-Match"];
  }

  return v5;
}

- (void)processResponse:(id)response data:(id)data error:(id)error
{
  v25 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  dataCopy = data;
  errorCopy = error;
  statusCode = [responseCopy statusCode];
  v12 = statusCode;
  if (statusCode == 304 || statusCode == 200)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    date = [MEMORY[0x1E695DF00] date];
    [standardUserDefaults setObject:date forKey:@"FCRemoteDefaultsLastUpdate"];

    if (v12 == 200 && [dataCopy length])
    {
      v22 = 0;
      v15 = [MEMORY[0x1E696AE40] propertyListWithData:dataCopy options:0 format:0 error:&v22];
      v16 = v22;

      if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [(FCThreadSafeMutableDictionary *)self->_remoteDefaults setObject:v15 forKey:@"FCRemoteDefaults"];
        [standardUserDefaults setObject:v15 forKey:@"FCRemoteDefaults"];
        v17 = FCAppConfigurationLog;
        if (os_log_type_enabled(FCAppConfigurationLog, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = v15;
          _os_log_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_INFO, "Received configuration file: %@", buf, 0xCu);
        }

        allHeaderFields = [responseCopy allHeaderFields];
        v19 = [allHeaderFields objectForKey:@"Etag"];

        [standardUserDefaults setObject:v19 forKey:@"FCRemoteDefaultsETag"];
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
      v16 = errorCopy;
    }

    errorCopy = v16;
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (FCBackgroundTaskable)backgroundTaskable
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundTaskable);

  return WeakRetained;
}

@end