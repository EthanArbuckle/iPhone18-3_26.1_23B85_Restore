@interface FCPersonalizationTopicsConfig
- (FCPersonalizationTopicsConfig)init;
- (FCPersonalizationTopicsConfig)initWithCoder:(id)a3;
- (FCPersonalizationTopicsConfig)initWithConfig:(id)a3;
- (FCPersonalizationTopicsConfig)initWithConfig:(id)a3 defaultConfig:(id)a4;
- (FCPersonalizationTopicsConfig)initWithTopicsConfig:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FCPersonalizationTopicsConfig

- (FCPersonalizationTopicsConfig)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPersonalizationTopicsConfig init]";
    v10 = 2080;
    v11 = "FCPersonalizationTopicsConfig.m";
    v12 = 1024;
    v13 = 17;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPersonalizationTopicsConfig init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPersonalizationTopicsConfig)initWithConfig:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FCPersonalizationTopicsConfig;
  v5 = [(FCPersonalizationTopicsConfig *)&v8 init];
  if (v5)
  {
    v6 = [v4 fc_arrayByTransformingWithBlock:&__block_literal_global_159];
    v5 = [(FCPersonalizationTopicsConfig *)v5 initWithTopicsConfig:v6];
  }

  return v5;
}

FCPersonalizationTopicConfig *__48__FCPersonalizationTopicsConfig_initWithConfig___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FCPersonalizationTopicConfig alloc] initWithConfigDictionary:v2];

  return v3;
}

- (FCPersonalizationTopicsConfig)initWithConfig:(id)a3 defaultConfig:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = FCPersonalizationTopicsConfig;
  v8 = [(FCPersonalizationTopicsConfig *)&v28 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = [v7 topicsConfig];
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = [v15 topicID];

          if (v16)
          {
            v17 = [v15 topicID];
            [v9 setObject:v15 forKeyedSubscript:v17];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v12);
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __62__FCPersonalizationTopicsConfig_initWithConfig_defaultConfig___block_invoke;
    v22[3] = &unk_1E7C41DD8;
    v23 = v9;
    v18 = v9;
    [v6 enumerateObjectsUsingBlock:v22];
    v19 = [v18 allValues];
    v8 = [(FCPersonalizationTopicsConfig *)v8 initWithTopicsConfig:v19];
  }

  v20 = *MEMORY[0x1E69E9840];
  return v8;
}

void __62__FCPersonalizationTopicsConfig_initWithConfig_defaultConfig___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = FCAppConfigurationStringValue(v9, @"topicId", 0);
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
    v5 = [FCPersonalizationTopicConfig alloc];
    v6 = v5;
    if (v4)
    {
      v7 = [*(a1 + 32) objectForKeyedSubscript:v3];
      v8 = [(FCPersonalizationTopicConfig *)v6 initWithConfigDictionary:v9 defaultConfig:v7];
      [*(a1 + 32) setObject:v8 forKeyedSubscript:v3];
    }

    else
    {
      v7 = [(FCPersonalizationTopicConfig *)v5 initWithConfigDictionary:v9];
      [*(a1 + 32) setObject:v7 forKeyedSubscript:v3];
    }
  }
}

- (FCPersonalizationTopicsConfig)initWithTopicsConfig:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FCPersonalizationTopicsConfig;
  v6 = [(FCPersonalizationTopicsConfig *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_topicsConfig, a3);
  }

  return v7;
}

- (FCPersonalizationTopicsConfig)initWithCoder:(id)a3
{
  v4 = [a3 decodeObjectForKey:@"topicsConfig"];
  v5 = [(FCPersonalizationTopicsConfig *)self initWithTopicsConfig:v4];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FCPersonalizationTopicsConfig *)self topicsConfig];
  [v4 encodeObject:v5 forKey:@"topicsConfig"];
}

@end