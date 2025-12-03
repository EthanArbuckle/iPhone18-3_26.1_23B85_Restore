@interface FCFileCoordinatedAppConfigurationManager
- (FCFileCoordinatedAppConfigurationManager)init;
- (FCFileCoordinatedAppConfigurationManager)initWithFileURL:(id)l storefrontID:(id)d;
- (FCNewsAppConfiguration)appConfiguration;
- (id)_appConfigurationFromDictionary:(id)dictionary forStorefrontID:(id)d;
- (id)_dictionaryFromAppConfiguration:(id)configuration;
- (void)depositAppConfiguration:(id)configuration;
- (void)fetchAppConfigurationIfNeededWithCompletionQueue:(id)queue completion:(id)completion;
- (void)refreshAppConfigurationIfNeededWithCompletionQueue:(id)queue refreshCompletion:(id)completion;
@end

@implementation FCFileCoordinatedAppConfigurationManager

- (FCFileCoordinatedAppConfigurationManager)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCFileCoordinatedAppConfigurationManager init]";
    v10 = 2080;
    v11 = "FCFileCoordinatedAppConfigurationManager.m";
    v12 = 1024;
    v13 = 29;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCFileCoordinatedAppConfigurationManager init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCFileCoordinatedAppConfigurationManager)initWithFileURL:(id)l storefrontID:(id)d
{
  v34 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  if (!lCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "fileURL"];
    *buf = 136315906;
    v27 = "[FCFileCoordinatedAppConfigurationManager initWithFileURL:storefrontID:]";
    v28 = 2080;
    v29 = "FCFileCoordinatedAppConfigurationManager.m";
    v30 = 1024;
    v31 = 34;
    v32 = 2114;
    v33 = v23;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (dCopy)
    {
      goto LABEL_6;
    }
  }

  else if (dCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "storefrontID"];
    *buf = 136315906;
    v27 = "[FCFileCoordinatedAppConfigurationManager initWithFileURL:storefrontID:]";
    v28 = 2080;
    v29 = "FCFileCoordinatedAppConfigurationManager.m";
    v30 = 1024;
    v31 = 35;
    v32 = 2114;
    v33 = v24;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v25.receiver = self;
  v25.super_class = FCFileCoordinatedAppConfigurationManager;
  v8 = [(FCFileCoordinatedAppConfigurationManager *)&v25 init];
  if (v8)
  {
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v9 setWithObjects:{v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
    lock = v8->_lock;
    v8->_lock = v15;

    v17 = [[FCFileCoordinatedDictionary alloc] initWithFileURL:lCopy allowedClasses:v14];
    fileCoordinatedDictionary = v8->_fileCoordinatedDictionary;
    v8->_fileCoordinatedDictionary = v17;

    v19 = [dCopy copy];
    storefrontID = v8->_storefrontID;
    v8->_storefrontID = v19;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)depositAppConfiguration:(id)configuration
{
  v19 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (!configurationCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "appConfiguration"];
    *buf = 136315906;
    v12 = "[FCFileCoordinatedAppConfigurationManager depositAppConfiguration:]";
    v13 = 2080;
    v14 = "FCFileCoordinatedAppConfigurationManager.m";
    v15 = 1024;
    v16 = 58;
    v17 = 2114;
    v18 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  fileCoordinatedDictionary = [(FCFileCoordinatedAppConfigurationManager *)self fileCoordinatedDictionary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__FCFileCoordinatedAppConfigurationManager_depositAppConfiguration___block_invoke;
  v9[3] = &unk_1E7C37D00;
  v9[4] = self;
  v10 = configurationCopy;
  v6 = configurationCopy;
  [fileCoordinatedDictionary writeWithAccessor:v9 completion:0];

  v7 = *MEMORY[0x1E69E9840];
}

void __68__FCFileCoordinatedAppConfigurationManager_depositAppConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 removeAllObjects];
  v4 = [*(a1 + 32) _dictionaryFromAppConfiguration:*(a1 + 40)];
  [v3 addEntriesFromDictionary:v4];
}

- (FCNewsAppConfiguration)appConfiguration
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  lock = [(FCFileCoordinatedAppConfigurationManager *)self lock];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__FCFileCoordinatedAppConfigurationManager_appConfiguration__block_invoke;
  v8[3] = &unk_1E7C37160;
  v8[4] = self;
  v8[5] = &v9;
  [lock performWithLockSync:v8];

  v4 = v10[5];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    storefrontID = [(FCFileCoordinatedAppConfigurationManager *)self storefrontID];
    v5 = [FCNewsAppConfig defaultConfigurationForStoreFrontID:storefrontID];
  }

  _Block_object_dispose(&v9, 8);

  return v5;
}

uint64_t __60__FCFileCoordinatedAppConfigurationManager_appConfiguration__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchedAppConfiguration];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)fetchAppConfigurationIfNeededWithCompletionQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  lock = [(FCFileCoordinatedAppConfigurationManager *)self lock];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __104__FCFileCoordinatedAppConfigurationManager_fetchAppConfigurationIfNeededWithCompletionQueue_completion___block_invoke;
  v12[3] = &unk_1E7C37160;
  v12[4] = self;
  v12[5] = &v13;
  [lock performWithLockSync:v12];

  if (v14[5])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __104__FCFileCoordinatedAppConfigurationManager_fetchAppConfigurationIfNeededWithCompletionQueue_completion___block_invoke_2;
    v9[3] = &unk_1E7C37D28;
    v10 = completionCopy;
    v11 = &v13;
    dispatch_async(queueCopy, v9);
  }

  else
  {
    [(FCFileCoordinatedAppConfigurationManager *)self refreshAppConfigurationIfNeededWithCompletionQueue:queueCopy refreshCompletion:completionCopy];
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t __104__FCFileCoordinatedAppConfigurationManager_fetchAppConfigurationIfNeededWithCompletionQueue_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchedAppConfiguration];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)refreshAppConfigurationIfNeededWithCompletionQueue:(id)queue refreshCompletion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  fileCoordinatedDictionary = [(FCFileCoordinatedAppConfigurationManager *)self fileCoordinatedDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __113__FCFileCoordinatedAppConfigurationManager_refreshAppConfigurationIfNeededWithCompletionQueue_refreshCompletion___block_invoke;
  v11[3] = &unk_1E7C37D50;
  v11[4] = self;
  v12 = queueCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = queueCopy;
  [fileCoordinatedDictionary readWithAccessor:v11];
}

void __113__FCFileCoordinatedAppConfigurationManager_refreshAppConfigurationIfNeededWithCompletionQueue_refreshCompletion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 storefrontID];
    v6 = [v3 _appConfigurationFromDictionary:v4 forStorefrontID:v5];

    if (v6)
    {
      v7 = [*(a1 + 32) lock];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __113__FCFileCoordinatedAppConfigurationManager_refreshAppConfigurationIfNeededWithCompletionQueue_refreshCompletion___block_invoke_2;
      v12[3] = &unk_1E7C36C58;
      v12[4] = *(a1 + 32);
      v13 = v6;
      [v7 performWithLockSync:v12];
    }
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __113__FCFileCoordinatedAppConfigurationManager_refreshAppConfigurationIfNeededWithCompletionQueue_refreshCompletion___block_invoke_3;
  v10[3] = &unk_1E7C37778;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10[4] = *(a1 + 32);
  v11 = v9;
  dispatch_async(v8, v10);
}

void __113__FCFileCoordinatedAppConfigurationManager_refreshAppConfigurationIfNeededWithCompletionQueue_refreshCompletion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) appConfiguration];
  (*(v1 + 16))(v1, v2, 0);
}

- (id)_dictionaryFromAppConfiguration:(id)configuration
{
  v22 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (!configurationCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "appConfiguration"];
    *buf = 136315906;
    v15 = "[FCFileCoordinatedAppConfigurationManager _dictionaryFromAppConfiguration:]";
    v16 = 2080;
    v17 = "FCFileCoordinatedAppConfigurationManager.m";
    v18 = 1024;
    v19 = 162;
    v20 = 2114;
    v21 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  internalConfiguration = [configurationCopy internalConfiguration];
  v12[0] = @"c";
  configDictionary = [internalConfiguration configDictionary];
  v13[0] = configDictionary;
  v12[1] = @"l";
  languageConfigDictionary = [internalConfiguration languageConfigDictionary];
  v13[1] = languageConfigDictionary;
  v12[2] = @"s";
  storefrontID = [internalConfiguration storefrontID];
  v13[2] = storefrontID;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_appConfigurationFromDictionary:(id)dictionary forStorefrontID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  dCopy = d;
  if (!dictionaryCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "dictionary"];
    *buf = 136315906;
    v17 = "[FCFileCoordinatedAppConfigurationManager _appConfigurationFromDictionary:forStorefrontID:]";
    v18 = 2080;
    v19 = "FCFileCoordinatedAppConfigurationManager.m";
    v20 = 1024;
    v21 = 175;
    v22 = 2114;
    v23 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (dCopy)
    {
      goto LABEL_6;
    }
  }

  else if (dCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "desiredStorefrontID"];
    *buf = 136315906;
    v17 = "[FCFileCoordinatedAppConfigurationManager _appConfigurationFromDictionary:forStorefrontID:]";
    v18 = 2080;
    v19 = "FCFileCoordinatedAppConfigurationManager.m";
    v20 = 1024;
    v21 = 176;
    v22 = 2114;
    v23 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v7 = [dictionaryCopy objectForKeyedSubscript:@"c"];
  v8 = [dictionaryCopy objectForKeyedSubscript:@"l"];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"s"];
  v10 = v9;
  v11 = 0;
  if (v7 && v8 && v9)
  {
    if ([v9 isEqualToString:dCopy])
    {
      v11 = [[FCNewsAppConfig alloc] initWithConfigDictionary:v7 storefrontID:v10 languageConfigDictionary:v8];
    }

    else
    {
      v11 = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end