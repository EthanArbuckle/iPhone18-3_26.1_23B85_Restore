@interface FCPersonalizationTopicConfig
- (FCPersonalizationTopicConfig)init;
- (FCPersonalizationTopicConfig)initWithCoder:(id)a3;
- (FCPersonalizationTopicConfig)initWithConfigDictionary:(id)a3;
- (FCPersonalizationTopicConfig)initWithConfigDictionary:(id)a3 defaultConfig:(id)a4;
- (FCPersonalizationTopicConfig)initWithTopicID:(id)a3 scoreMultiplier:(double)a4 tagWeight:(double)a5 capAtBaseline:(BOOL)a6 limitInGroup:(int64_t)a7 shouldLimitInGroup:(BOOL)a8 publisherTopicWeight:(double)a9 useHalfLifeCoefficientOverride:(BOOL)a10 halfLifeCoefficientOverride:(double)a11;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FCPersonalizationTopicConfig

- (FCPersonalizationTopicConfig)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPersonalizationTopicConfig init]";
    v10 = 2080;
    v11 = "FCPersonalizationTopicConfig.m";
    v12 = 1024;
    v13 = 16;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPersonalizationTopicConfig init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPersonalizationTopicConfig)initWithConfigDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = FCPersonalizationTopicConfig;
  v5 = [(FCPersonalizationTopicConfig *)&v20 init];
  if (v5)
  {
    v6 = FCAppConfigurationStringValue(v4, @"topicId", 0);
    v7 = FCAppConfigurationDoubleValue(v4, @"scoreMultiplier", 1.0);
    if (v7 < 0.0)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = v7;
    }

    v9 = FCAppConfigurationDoubleValue(v4, @"tagWeight", 1.0);
    if (v9 < 0.0)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = v9;
    }

    v11 = FCAppConfigurationBoolValue(v4, @"capAtBaseline", 0);
    v12 = FCAppConfigurationIntegerValue(v4, @"limitInGroup", 100);
    v13 = FCAppConfigurationBoolValue(v4, @"shouldLimitInGroup", 0);
    v14 = FCAppConfigurationDoubleValue(v4, @"publisherTopicWeight", 1.0);
    if (v14 < 0.0)
    {
      v15 = 1.0;
    }

    else
    {
      v15 = v14;
    }

    v16 = FCAppConfigurationBoolValue(v4, @"useHalfLifeCoefficientOverride", 0);
    v17 = FCAppConfigurationDoubleValue(v4, @"halfLifeCoefficientOverride", 1.0);
    if (v17 <= 0.0)
    {
      v18 = 1.0;
    }

    else
    {
      v18 = v17;
    }

    v5 = [(FCPersonalizationTopicConfig *)v5 initWithTopicID:v6 scoreMultiplier:v11 tagWeight:v12 capAtBaseline:v13 limitInGroup:v16 shouldLimitInGroup:v8 publisherTopicWeight:v10 useHalfLifeCoefficientOverride:v15 halfLifeCoefficientOverride:v18];
  }

  return v5;
}

- (FCPersonalizationTopicConfig)initWithConfigDictionary:(id)a3 defaultConfig:(id)a4
{
  v6 = a3;
  v7 = a4;
  v29.receiver = self;
  v29.super_class = FCPersonalizationTopicConfig;
  v8 = [(FCPersonalizationTopicConfig *)&v29 init];
  if (v8)
  {
    v9 = [v7 topicID];
    v10 = FCAppConfigurationStringValue(v6, @"topicId", v9);
    [v7 scoreMultiplier];
    v12 = FCAppConfigurationDoubleValue(v6, @"scoreMultiplier", v11);
    [v7 scoreMultiplier];
    if (v12 < 0.0)
    {
      v12 = v13;
    }

    [v7 tagWeight];
    v15 = FCAppConfigurationDoubleValue(v6, @"tagWeight", v14);
    [v7 tagWeight];
    if (v15 < 0.0)
    {
      v15 = v16;
    }

    v17 = FCAppConfigurationBoolValue(v6, @"capAtBaseline", [v7 capAtBaseline]);
    v18 = FCAppConfigurationIntegerValue(v6, @"limitInGroup", [v7 limitInGroup]);
    v19 = FCAppConfigurationBoolValue(v6, @"shouldLimitInGroup", [v7 shouldLimitInGroup]);
    [v7 publisherTopicWeight];
    v21 = FCAppConfigurationDoubleValue(v6, @"publisherTopicWeight", v20);
    [v7 publisherTopicWeight];
    if (v21 < 0.0)
    {
      v21 = v22;
    }

    v23 = FCAppConfigurationBoolValue(v6, @"useHalfLifeCoefficientOverride", [v7 useHalfLifeCoefficientOverride]);
    [v7 halfLifeCoefficientOverride];
    v25 = FCAppConfigurationDoubleValue(v6, @"halfLifeCoefficientOverride", v24);
    [v7 halfLifeCoefficientOverride];
    if (v25 <= 0.0)
    {
      v27 = v26;
    }

    else
    {
      v27 = v25;
    }

    v8 = [(FCPersonalizationTopicConfig *)v8 initWithTopicID:v10 scoreMultiplier:v17 tagWeight:v18 capAtBaseline:v19 limitInGroup:v23 shouldLimitInGroup:v12 publisherTopicWeight:v15 useHalfLifeCoefficientOverride:v21 halfLifeCoefficientOverride:v27];
  }

  return v8;
}

- (FCPersonalizationTopicConfig)initWithTopicID:(id)a3 scoreMultiplier:(double)a4 tagWeight:(double)a5 capAtBaseline:(BOOL)a6 limitInGroup:(int64_t)a7 shouldLimitInGroup:(BOOL)a8 publisherTopicWeight:(double)a9 useHalfLifeCoefficientOverride:(BOOL)a10 halfLifeCoefficientOverride:(double)a11
{
  v21 = a3;
  v25.receiver = self;
  v25.super_class = FCPersonalizationTopicConfig;
  v22 = [(FCPersonalizationTopicConfig *)&v25 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_topicID, a3);
    v23->_scoreMultiplier = a4;
    v23->_tagWeight = a5;
    v23->_capAtBaseline = a6;
    v23->_limitInGroup = a7;
    v23->_shouldLimitInGroup = a8;
    v23->_useHalfLifeCoefficientOverride = a10;
    v23->_publisherTopicWeight = a9;
    v23->_halfLifeCoefficientOverride = a11;
  }

  return v23;
}

- (FCPersonalizationTopicConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"topicId"];
  [v4 decodeDoubleForKey:@"scoreMultiplier"];
  v7 = v6;
  [v4 decodeDoubleForKey:@"tagWeight"];
  v9 = v8;
  v10 = [v4 decodeBoolForKey:@"capAtBaseline"];
  v11 = [v4 decodeIntegerForKey:@"limitInGroup"];
  v12 = [v4 decodeBoolForKey:@"shouldLimitInGroup"];
  [v4 decodeDoubleForKey:@"publisherTopicWeight"];
  v14 = v13;
  v15 = [v4 decodeBoolForKey:@"useHalfLifeCoefficientOverride"];
  [v4 decodeDoubleForKey:@"halfLifeCoefficientOverride"];
  v17 = v16;

  v18 = [(FCPersonalizationTopicConfig *)self initWithTopicID:v5 scoreMultiplier:v10 tagWeight:v11 capAtBaseline:v12 limitInGroup:v15 shouldLimitInGroup:v7 publisherTopicWeight:v9 useHalfLifeCoefficientOverride:v14 halfLifeCoefficientOverride:v17];
  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(FCPersonalizationTopicConfig *)self topicID];
  [v5 encodeObject:v4 forKey:@"topicId"];

  [(FCPersonalizationTopicConfig *)self scoreMultiplier];
  [v5 encodeDouble:@"scoreMultiplier" forKey:?];
  [(FCPersonalizationTopicConfig *)self tagWeight];
  [v5 encodeDouble:@"tagWeight" forKey:?];
  [v5 encodeBool:-[FCPersonalizationTopicConfig capAtBaseline](self forKey:{"capAtBaseline"), @"capAtBaseline"}];
  [v5 encodeInteger:-[FCPersonalizationTopicConfig limitInGroup](self forKey:{"limitInGroup"), @"limitInGroup"}];
  [v5 encodeBool:-[FCPersonalizationTopicConfig shouldLimitInGroup](self forKey:{"shouldLimitInGroup"), @"shouldLimitInGroup"}];
  [(FCPersonalizationTopicConfig *)self publisherTopicWeight];
  [v5 encodeDouble:@"publisherTopicWeight" forKey:?];
  [v5 encodeBool:-[FCPersonalizationTopicConfig useHalfLifeCoefficientOverride](self forKey:{"useHalfLifeCoefficientOverride"), @"useHalfLifeCoefficientOverride"}];
  [(FCPersonalizationTopicConfig *)self halfLifeCoefficientOverride];
  [v5 encodeDouble:@"halfLifeCoefficientOverride" forKey:?];
}

@end