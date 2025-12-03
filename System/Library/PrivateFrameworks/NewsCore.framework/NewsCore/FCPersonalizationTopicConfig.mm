@interface FCPersonalizationTopicConfig
- (FCPersonalizationTopicConfig)init;
- (FCPersonalizationTopicConfig)initWithCoder:(id)coder;
- (FCPersonalizationTopicConfig)initWithConfigDictionary:(id)dictionary;
- (FCPersonalizationTopicConfig)initWithConfigDictionary:(id)dictionary defaultConfig:(id)config;
- (FCPersonalizationTopicConfig)initWithTopicID:(id)d scoreMultiplier:(double)multiplier tagWeight:(double)weight capAtBaseline:(BOOL)baseline limitInGroup:(int64_t)group shouldLimitInGroup:(BOOL)inGroup publisherTopicWeight:(double)topicWeight useHalfLifeCoefficientOverride:(BOOL)self0 halfLifeCoefficientOverride:(double)self1;
- (void)encodeWithCoder:(id)coder;
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

- (FCPersonalizationTopicConfig)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = FCPersonalizationTopicConfig;
  v5 = [(FCPersonalizationTopicConfig *)&v20 init];
  if (v5)
  {
    v6 = FCAppConfigurationStringValue(dictionaryCopy, @"topicId", 0);
    v7 = FCAppConfigurationDoubleValue(dictionaryCopy, @"scoreMultiplier", 1.0);
    if (v7 < 0.0)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = v7;
    }

    v9 = FCAppConfigurationDoubleValue(dictionaryCopy, @"tagWeight", 1.0);
    if (v9 < 0.0)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = v9;
    }

    v11 = FCAppConfigurationBoolValue(dictionaryCopy, @"capAtBaseline", 0);
    v12 = FCAppConfigurationIntegerValue(dictionaryCopy, @"limitInGroup", 100);
    v13 = FCAppConfigurationBoolValue(dictionaryCopy, @"shouldLimitInGroup", 0);
    v14 = FCAppConfigurationDoubleValue(dictionaryCopy, @"publisherTopicWeight", 1.0);
    if (v14 < 0.0)
    {
      v15 = 1.0;
    }

    else
    {
      v15 = v14;
    }

    v16 = FCAppConfigurationBoolValue(dictionaryCopy, @"useHalfLifeCoefficientOverride", 0);
    v17 = FCAppConfigurationDoubleValue(dictionaryCopy, @"halfLifeCoefficientOverride", 1.0);
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

- (FCPersonalizationTopicConfig)initWithConfigDictionary:(id)dictionary defaultConfig:(id)config
{
  dictionaryCopy = dictionary;
  configCopy = config;
  v29.receiver = self;
  v29.super_class = FCPersonalizationTopicConfig;
  v8 = [(FCPersonalizationTopicConfig *)&v29 init];
  if (v8)
  {
    topicID = [configCopy topicID];
    v10 = FCAppConfigurationStringValue(dictionaryCopy, @"topicId", topicID);
    [configCopy scoreMultiplier];
    v12 = FCAppConfigurationDoubleValue(dictionaryCopy, @"scoreMultiplier", v11);
    [configCopy scoreMultiplier];
    if (v12 < 0.0)
    {
      v12 = v13;
    }

    [configCopy tagWeight];
    v15 = FCAppConfigurationDoubleValue(dictionaryCopy, @"tagWeight", v14);
    [configCopy tagWeight];
    if (v15 < 0.0)
    {
      v15 = v16;
    }

    v17 = FCAppConfigurationBoolValue(dictionaryCopy, @"capAtBaseline", [configCopy capAtBaseline]);
    v18 = FCAppConfigurationIntegerValue(dictionaryCopy, @"limitInGroup", [configCopy limitInGroup]);
    v19 = FCAppConfigurationBoolValue(dictionaryCopy, @"shouldLimitInGroup", [configCopy shouldLimitInGroup]);
    [configCopy publisherTopicWeight];
    v21 = FCAppConfigurationDoubleValue(dictionaryCopy, @"publisherTopicWeight", v20);
    [configCopy publisherTopicWeight];
    if (v21 < 0.0)
    {
      v21 = v22;
    }

    v23 = FCAppConfigurationBoolValue(dictionaryCopy, @"useHalfLifeCoefficientOverride", [configCopy useHalfLifeCoefficientOverride]);
    [configCopy halfLifeCoefficientOverride];
    v25 = FCAppConfigurationDoubleValue(dictionaryCopy, @"halfLifeCoefficientOverride", v24);
    [configCopy halfLifeCoefficientOverride];
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

- (FCPersonalizationTopicConfig)initWithTopicID:(id)d scoreMultiplier:(double)multiplier tagWeight:(double)weight capAtBaseline:(BOOL)baseline limitInGroup:(int64_t)group shouldLimitInGroup:(BOOL)inGroup publisherTopicWeight:(double)topicWeight useHalfLifeCoefficientOverride:(BOOL)self0 halfLifeCoefficientOverride:(double)self1
{
  dCopy = d;
  v25.receiver = self;
  v25.super_class = FCPersonalizationTopicConfig;
  v22 = [(FCPersonalizationTopicConfig *)&v25 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_topicID, d);
    v23->_scoreMultiplier = multiplier;
    v23->_tagWeight = weight;
    v23->_capAtBaseline = baseline;
    v23->_limitInGroup = group;
    v23->_shouldLimitInGroup = inGroup;
    v23->_useHalfLifeCoefficientOverride = override;
    v23->_publisherTopicWeight = topicWeight;
    v23->_halfLifeCoefficientOverride = coefficientOverride;
  }

  return v23;
}

- (FCPersonalizationTopicConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"topicId"];
  [coderCopy decodeDoubleForKey:@"scoreMultiplier"];
  v7 = v6;
  [coderCopy decodeDoubleForKey:@"tagWeight"];
  v9 = v8;
  v10 = [coderCopy decodeBoolForKey:@"capAtBaseline"];
  v11 = [coderCopy decodeIntegerForKey:@"limitInGroup"];
  v12 = [coderCopy decodeBoolForKey:@"shouldLimitInGroup"];
  [coderCopy decodeDoubleForKey:@"publisherTopicWeight"];
  v14 = v13;
  v15 = [coderCopy decodeBoolForKey:@"useHalfLifeCoefficientOverride"];
  [coderCopy decodeDoubleForKey:@"halfLifeCoefficientOverride"];
  v17 = v16;

  v18 = [(FCPersonalizationTopicConfig *)self initWithTopicID:v5 scoreMultiplier:v10 tagWeight:v11 capAtBaseline:v12 limitInGroup:v15 shouldLimitInGroup:v7 publisherTopicWeight:v9 useHalfLifeCoefficientOverride:v14 halfLifeCoefficientOverride:v17];
  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  topicID = [(FCPersonalizationTopicConfig *)self topicID];
  [coderCopy encodeObject:topicID forKey:@"topicId"];

  [(FCPersonalizationTopicConfig *)self scoreMultiplier];
  [coderCopy encodeDouble:@"scoreMultiplier" forKey:?];
  [(FCPersonalizationTopicConfig *)self tagWeight];
  [coderCopy encodeDouble:@"tagWeight" forKey:?];
  [coderCopy encodeBool:-[FCPersonalizationTopicConfig capAtBaseline](self forKey:{"capAtBaseline"), @"capAtBaseline"}];
  [coderCopy encodeInteger:-[FCPersonalizationTopicConfig limitInGroup](self forKey:{"limitInGroup"), @"limitInGroup"}];
  [coderCopy encodeBool:-[FCPersonalizationTopicConfig shouldLimitInGroup](self forKey:{"shouldLimitInGroup"), @"shouldLimitInGroup"}];
  [(FCPersonalizationTopicConfig *)self publisherTopicWeight];
  [coderCopy encodeDouble:@"publisherTopicWeight" forKey:?];
  [coderCopy encodeBool:-[FCPersonalizationTopicConfig useHalfLifeCoefficientOverride](self forKey:{"useHalfLifeCoefficientOverride"), @"useHalfLifeCoefficientOverride"}];
  [(FCPersonalizationTopicConfig *)self halfLifeCoefficientOverride];
  [coderCopy encodeDouble:@"halfLifeCoefficientOverride" forKey:?];
}

@end