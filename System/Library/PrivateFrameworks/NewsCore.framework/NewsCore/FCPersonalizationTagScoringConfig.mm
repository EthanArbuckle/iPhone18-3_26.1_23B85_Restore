@interface FCPersonalizationTagScoringConfig
- (FCPersonalizationTagScoringConfig)init;
- (FCPersonalizationTagScoringConfig)initWithChannelTopicMappingWeight:(double)weight democratizationFactor:(double)factor locationScoreDecayFactor:(double)decayFactor locationWeight:(double)locationWeight maxDistanceThreshold:(double)threshold maxLocationsToConsider:(int64_t)consider popularityMultiplierBoost:(double)boost popularityMultiplierExponent:(double)self0 topicTopicMappingWeight:(double)self1 userMembershipWeight:(double)self2;
- (FCPersonalizationTagScoringConfig)initWithCoder:(id)coder;
- (FCPersonalizationTagScoringConfig)initWithConfigDictionary:(id)dictionary;
- (FCPersonalizationTagScoringConfig)initWithConfigDictionary:(id)dictionary defaultConfig:(id)config;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FCPersonalizationTagScoringConfig

- (FCPersonalizationTagScoringConfig)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPersonalizationTagScoringConfig init]";
    v10 = 2080;
    v11 = "FCPersonalizationTagScoringConfig.m";
    v12 = 1024;
    v13 = 16;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPersonalizationTagScoringConfig init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPersonalizationTagScoringConfig)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = FCPersonalizationTagScoringConfig;
  v5 = [(FCPersonalizationTagScoringConfig *)&v27 init];
  if (v5)
  {
    v6 = FCAppConfigurationDoubleValue(dictionaryCopy, @"channelTopicMappingWeight", 1.0);
    if (v6 < 0.0)
    {
      v6 = 1.0;
    }

    v26 = v6;
    v7 = FCAppConfigurationDoubleValue(dictionaryCopy, @"democratizationFactor", 1.0);
    v8 = 0.0;
    if (v7 > 1.0 || v7 < 0.0)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = v7;
    }

    v11 = 0.1;
    v12 = FCAppConfigurationDoubleValue(dictionaryCopy, @"locationScoreDecayFactor", 0.1);
    if (v12 <= 1.0 && v12 >= 0.0)
    {
      v11 = v12;
    }

    v14 = FCAppConfigurationDoubleValue(dictionaryCopy, @"locationWeight", 1.0);
    if (v14 < 0.0)
    {
      v15 = 1.0;
    }

    else
    {
      v15 = v14;
    }

    v16 = 1000.0;
    v17 = FCAppConfigurationDoubleValue(dictionaryCopy, @"maxDistanceThreshold", 1000.0);
    if (v17 >= 0.0)
    {
      v16 = v17;
    }

    v18 = FCAppConfigurationIntegerValue(dictionaryCopy, @"maxLocationsToConsider", 10);
    v19 = FCAppConfigurationDoubleValue(dictionaryCopy, @"popularityMultiplierBoost", 0.0);
    if (v19 >= 0.0)
    {
      v8 = v19;
    }

    v20 = 0.5;
    v21 = FCAppConfigurationDoubleValue(dictionaryCopy, @"popularityMultiplierExponent", 0.5);
    if (v21 >= 0.0)
    {
      v20 = v21;
    }

    v22 = FCAppConfigurationDoubleValue(dictionaryCopy, @"topicTopicMappingWeight", 1.0);
    if (v22 < 0.0)
    {
      v23 = 1.0;
    }

    else
    {
      v23 = v22;
    }

    v24 = FCAppConfigurationDoubleValue(dictionaryCopy, @"userMembershipWeight", 1.0);
    if (v24 < 0.0)
    {
      v24 = 1.0;
    }

    v5 = [(FCPersonalizationTagScoringConfig *)v5 initWithChannelTopicMappingWeight:v18 democratizationFactor:v26 locationScoreDecayFactor:v10 locationWeight:v11 maxDistanceThreshold:v15 maxLocationsToConsider:v16 popularityMultiplierBoost:v8 popularityMultiplierExponent:v20 topicTopicMappingWeight:v23 userMembershipWeight:*&v24];
  }

  return v5;
}

- (FCPersonalizationTagScoringConfig)initWithConfigDictionary:(id)dictionary defaultConfig:(id)config
{
  dictionaryCopy = dictionary;
  configCopy = config;
  v41.receiver = self;
  v41.super_class = FCPersonalizationTagScoringConfig;
  v8 = [(FCPersonalizationTagScoringConfig *)&v41 init];
  if (v8)
  {
    [configCopy channelTopicMappingWeight];
    v10 = FCAppConfigurationDoubleValue(dictionaryCopy, @"channelTopicMappingWeight", v9);
    [configCopy channelTopicMappingWeight];
    if (v10 >= 0.0)
    {
      v11 = v10;
    }

    v40 = v11;
    [configCopy democratizationFactor];
    v13 = FCAppConfigurationDoubleValue(dictionaryCopy, @"democratizationFactor", v12);
    [configCopy democratizationFactor];
    if (v13 > 1.0 || v13 < 0.0)
    {
      v13 = v14;
    }

    [configCopy locationScoreDecayFactor];
    v17 = FCAppConfigurationDoubleValue(dictionaryCopy, @"locationScoreDecayFactor", v16);
    [configCopy locationScoreDecayFactor];
    if (v17 > 1.0 || v17 < 0.0)
    {
      v17 = v18;
    }

    [configCopy locationWeight];
    v21 = FCAppConfigurationDoubleValue(dictionaryCopy, @"locationWeight", v20);
    [configCopy locationWeight];
    if (v21 < 0.0)
    {
      v21 = v22;
    }

    [configCopy maxDistanceThreshold];
    v24 = FCAppConfigurationDoubleValue(dictionaryCopy, @"maxDistanceThreshold", v23);
    [configCopy maxDistanceThreshold];
    if (v24 < 0.0)
    {
      v24 = v25;
    }

    v26 = FCAppConfigurationIntegerValue(dictionaryCopy, @"maxLocationsToConsider", [configCopy maxLocationsToConsider]);
    [configCopy popularityMultiplierBoost];
    v28 = FCAppConfigurationDoubleValue(dictionaryCopy, @"popularityMultiplierBoost", v27);
    [configCopy popularityMultiplierBoost];
    if (v28 < 0.0)
    {
      v28 = v29;
    }

    [configCopy popularityMultiplierExponent];
    v31 = FCAppConfigurationDoubleValue(dictionaryCopy, @"popularityMultiplierExponent", v30);
    [configCopy popularityMultiplierExponent];
    if (v31 < 0.0)
    {
      v31 = v32;
    }

    [configCopy topicTopicMappingWeight];
    v34 = FCAppConfigurationDoubleValue(dictionaryCopy, @"topicTopicMappingWeight", v33);
    [configCopy topicTopicMappingWeight];
    if (v34 < 0.0)
    {
      v34 = v35;
    }

    [configCopy userMembershipWeight];
    v37 = FCAppConfigurationDoubleValue(dictionaryCopy, @"userMembershipWeight", v36);
    [configCopy userMembershipWeight];
    if (v37 >= 0.0)
    {
      v38 = v37;
    }

    v8 = [(FCPersonalizationTagScoringConfig *)v8 initWithChannelTopicMappingWeight:v26 democratizationFactor:v40 locationScoreDecayFactor:v13 locationWeight:v17 maxDistanceThreshold:v21 maxLocationsToConsider:v24 popularityMultiplierBoost:v28 popularityMultiplierExponent:v31 topicTopicMappingWeight:v34 userMembershipWeight:*&v38];
  }

  return v8;
}

- (FCPersonalizationTagScoringConfig)initWithChannelTopicMappingWeight:(double)weight democratizationFactor:(double)factor locationScoreDecayFactor:(double)decayFactor locationWeight:(double)locationWeight maxDistanceThreshold:(double)threshold maxLocationsToConsider:(int64_t)consider popularityMultiplierBoost:(double)boost popularityMultiplierExponent:(double)self0 topicTopicMappingWeight:(double)self1 userMembershipWeight:(double)self2
{
  v22.receiver = self;
  v22.super_class = FCPersonalizationTagScoringConfig;
  result = [(FCPersonalizationTagScoringConfig *)&v22 init];
  if (result)
  {
    result->_channelTopicMappingWeight = weight;
    result->_democratizationFactor = factor;
    result->_locationScoreDecayFactor = decayFactor;
    result->_locationWeight = locationWeight;
    result->_maxDistanceThreshold = threshold;
    result->_maxLocationsToConsider = consider;
    result->_popularityMultiplierBoost = boost;
    result->_popularityMultiplierExponent = exponent;
    result->_topicTopicMappingWeight = mappingWeight;
    result->_userMembershipWeight = membershipWeight;
  }

  return result;
}

- (FCPersonalizationTagScoringConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"channelTopicMappingWeight"];
  v24 = v5;
  [coderCopy decodeDoubleForKey:@"democratizationFactor"];
  v7 = v6;
  [coderCopy decodeDoubleForKey:@"locationScoreDecayFactor"];
  v9 = v8;
  [coderCopy decodeDoubleForKey:@"locationWeight"];
  v11 = v10;
  [coderCopy decodeDoubleForKey:@"maxDistanceThreshold"];
  v13 = v12;
  v14 = [coderCopy decodeInt64ForKey:@"maxLocationsToConsider"];
  [coderCopy decodeDoubleForKey:@"popularityMultiplierBoost"];
  v16 = v15;
  [coderCopy decodeDoubleForKey:@"popularityMultiplierExponent"];
  v18 = v17;
  [coderCopy decodeDoubleForKey:@"topicTopicMappingWeight"];
  v20 = v19;
  [coderCopy decodeDoubleForKey:@"userMembershipWeight"];
  v22 = v21;

  return [(FCPersonalizationTagScoringConfig *)self initWithChannelTopicMappingWeight:v14 democratizationFactor:v24 locationScoreDecayFactor:v7 locationWeight:v9 maxDistanceThreshold:v11 maxLocationsToConsider:v13 popularityMultiplierBoost:v16 popularityMultiplierExponent:v18 topicTopicMappingWeight:v20 userMembershipWeight:v22];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(FCPersonalizationTagScoringConfig *)self channelTopicMappingWeight];
  [coderCopy encodeDouble:@"channelTopicMappingWeight" forKey:?];
  [(FCPersonalizationTagScoringConfig *)self democratizationFactor];
  [coderCopy encodeDouble:@"democratizationFactor" forKey:?];
  [(FCPersonalizationTagScoringConfig *)self locationScoreDecayFactor];
  [coderCopy encodeDouble:@"locationScoreDecayFactor" forKey:?];
  [(FCPersonalizationTagScoringConfig *)self locationWeight];
  [coderCopy encodeDouble:@"locationWeight" forKey:?];
  [(FCPersonalizationTagScoringConfig *)self maxDistanceThreshold];
  [coderCopy encodeInt64:v4 forKey:@"maxDistanceThreshold"];
  [coderCopy encodeDouble:@"maxLocationsToConsider" forKey:{-[FCPersonalizationTagScoringConfig maxLocationsToConsider](self, "maxLocationsToConsider")}];
  [(FCPersonalizationTagScoringConfig *)self popularityMultiplierBoost];
  [coderCopy encodeDouble:@"popularityMultiplierBoost" forKey:?];
  [(FCPersonalizationTagScoringConfig *)self popularityMultiplierExponent];
  [coderCopy encodeDouble:@"popularityMultiplierExponent" forKey:?];
  [(FCPersonalizationTagScoringConfig *)self topicTopicMappingWeight];
  [coderCopy encodeDouble:@"topicTopicMappingWeight" forKey:?];
  [(FCPersonalizationTagScoringConfig *)self userMembershipWeight];
  [coderCopy encodeDouble:@"userMembershipWeight" forKey:?];
}

@end