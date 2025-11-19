@interface FCPersonalizationTagScoringConfig
- (FCPersonalizationTagScoringConfig)init;
- (FCPersonalizationTagScoringConfig)initWithChannelTopicMappingWeight:(double)a3 democratizationFactor:(double)a4 locationScoreDecayFactor:(double)a5 locationWeight:(double)a6 maxDistanceThreshold:(double)a7 maxLocationsToConsider:(int64_t)a8 popularityMultiplierBoost:(double)a9 popularityMultiplierExponent:(double)a10 topicTopicMappingWeight:(double)a11 userMembershipWeight:(double)a12;
- (FCPersonalizationTagScoringConfig)initWithCoder:(id)a3;
- (FCPersonalizationTagScoringConfig)initWithConfigDictionary:(id)a3;
- (FCPersonalizationTagScoringConfig)initWithConfigDictionary:(id)a3 defaultConfig:(id)a4;
- (void)encodeWithCoder:(id)a3;
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

- (FCPersonalizationTagScoringConfig)initWithConfigDictionary:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = FCPersonalizationTagScoringConfig;
  v5 = [(FCPersonalizationTagScoringConfig *)&v27 init];
  if (v5)
  {
    v6 = FCAppConfigurationDoubleValue(v4, @"channelTopicMappingWeight", 1.0);
    if (v6 < 0.0)
    {
      v6 = 1.0;
    }

    v26 = v6;
    v7 = FCAppConfigurationDoubleValue(v4, @"democratizationFactor", 1.0);
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
    v12 = FCAppConfigurationDoubleValue(v4, @"locationScoreDecayFactor", 0.1);
    if (v12 <= 1.0 && v12 >= 0.0)
    {
      v11 = v12;
    }

    v14 = FCAppConfigurationDoubleValue(v4, @"locationWeight", 1.0);
    if (v14 < 0.0)
    {
      v15 = 1.0;
    }

    else
    {
      v15 = v14;
    }

    v16 = 1000.0;
    v17 = FCAppConfigurationDoubleValue(v4, @"maxDistanceThreshold", 1000.0);
    if (v17 >= 0.0)
    {
      v16 = v17;
    }

    v18 = FCAppConfigurationIntegerValue(v4, @"maxLocationsToConsider", 10);
    v19 = FCAppConfigurationDoubleValue(v4, @"popularityMultiplierBoost", 0.0);
    if (v19 >= 0.0)
    {
      v8 = v19;
    }

    v20 = 0.5;
    v21 = FCAppConfigurationDoubleValue(v4, @"popularityMultiplierExponent", 0.5);
    if (v21 >= 0.0)
    {
      v20 = v21;
    }

    v22 = FCAppConfigurationDoubleValue(v4, @"topicTopicMappingWeight", 1.0);
    if (v22 < 0.0)
    {
      v23 = 1.0;
    }

    else
    {
      v23 = v22;
    }

    v24 = FCAppConfigurationDoubleValue(v4, @"userMembershipWeight", 1.0);
    if (v24 < 0.0)
    {
      v24 = 1.0;
    }

    v5 = [(FCPersonalizationTagScoringConfig *)v5 initWithChannelTopicMappingWeight:v18 democratizationFactor:v26 locationScoreDecayFactor:v10 locationWeight:v11 maxDistanceThreshold:v15 maxLocationsToConsider:v16 popularityMultiplierBoost:v8 popularityMultiplierExponent:v20 topicTopicMappingWeight:v23 userMembershipWeight:*&v24];
  }

  return v5;
}

- (FCPersonalizationTagScoringConfig)initWithConfigDictionary:(id)a3 defaultConfig:(id)a4
{
  v6 = a3;
  v7 = a4;
  v41.receiver = self;
  v41.super_class = FCPersonalizationTagScoringConfig;
  v8 = [(FCPersonalizationTagScoringConfig *)&v41 init];
  if (v8)
  {
    [v7 channelTopicMappingWeight];
    v10 = FCAppConfigurationDoubleValue(v6, @"channelTopicMappingWeight", v9);
    [v7 channelTopicMappingWeight];
    if (v10 >= 0.0)
    {
      v11 = v10;
    }

    v40 = v11;
    [v7 democratizationFactor];
    v13 = FCAppConfigurationDoubleValue(v6, @"democratizationFactor", v12);
    [v7 democratizationFactor];
    if (v13 > 1.0 || v13 < 0.0)
    {
      v13 = v14;
    }

    [v7 locationScoreDecayFactor];
    v17 = FCAppConfigurationDoubleValue(v6, @"locationScoreDecayFactor", v16);
    [v7 locationScoreDecayFactor];
    if (v17 > 1.0 || v17 < 0.0)
    {
      v17 = v18;
    }

    [v7 locationWeight];
    v21 = FCAppConfigurationDoubleValue(v6, @"locationWeight", v20);
    [v7 locationWeight];
    if (v21 < 0.0)
    {
      v21 = v22;
    }

    [v7 maxDistanceThreshold];
    v24 = FCAppConfigurationDoubleValue(v6, @"maxDistanceThreshold", v23);
    [v7 maxDistanceThreshold];
    if (v24 < 0.0)
    {
      v24 = v25;
    }

    v26 = FCAppConfigurationIntegerValue(v6, @"maxLocationsToConsider", [v7 maxLocationsToConsider]);
    [v7 popularityMultiplierBoost];
    v28 = FCAppConfigurationDoubleValue(v6, @"popularityMultiplierBoost", v27);
    [v7 popularityMultiplierBoost];
    if (v28 < 0.0)
    {
      v28 = v29;
    }

    [v7 popularityMultiplierExponent];
    v31 = FCAppConfigurationDoubleValue(v6, @"popularityMultiplierExponent", v30);
    [v7 popularityMultiplierExponent];
    if (v31 < 0.0)
    {
      v31 = v32;
    }

    [v7 topicTopicMappingWeight];
    v34 = FCAppConfigurationDoubleValue(v6, @"topicTopicMappingWeight", v33);
    [v7 topicTopicMappingWeight];
    if (v34 < 0.0)
    {
      v34 = v35;
    }

    [v7 userMembershipWeight];
    v37 = FCAppConfigurationDoubleValue(v6, @"userMembershipWeight", v36);
    [v7 userMembershipWeight];
    if (v37 >= 0.0)
    {
      v38 = v37;
    }

    v8 = [(FCPersonalizationTagScoringConfig *)v8 initWithChannelTopicMappingWeight:v26 democratizationFactor:v40 locationScoreDecayFactor:v13 locationWeight:v17 maxDistanceThreshold:v21 maxLocationsToConsider:v24 popularityMultiplierBoost:v28 popularityMultiplierExponent:v31 topicTopicMappingWeight:v34 userMembershipWeight:*&v38];
  }

  return v8;
}

- (FCPersonalizationTagScoringConfig)initWithChannelTopicMappingWeight:(double)a3 democratizationFactor:(double)a4 locationScoreDecayFactor:(double)a5 locationWeight:(double)a6 maxDistanceThreshold:(double)a7 maxLocationsToConsider:(int64_t)a8 popularityMultiplierBoost:(double)a9 popularityMultiplierExponent:(double)a10 topicTopicMappingWeight:(double)a11 userMembershipWeight:(double)a12
{
  v22.receiver = self;
  v22.super_class = FCPersonalizationTagScoringConfig;
  result = [(FCPersonalizationTagScoringConfig *)&v22 init];
  if (result)
  {
    result->_channelTopicMappingWeight = a3;
    result->_democratizationFactor = a4;
    result->_locationScoreDecayFactor = a5;
    result->_locationWeight = a6;
    result->_maxDistanceThreshold = a7;
    result->_maxLocationsToConsider = a8;
    result->_popularityMultiplierBoost = a9;
    result->_popularityMultiplierExponent = a10;
    result->_topicTopicMappingWeight = a11;
    result->_userMembershipWeight = a12;
  }

  return result;
}

- (FCPersonalizationTagScoringConfig)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"channelTopicMappingWeight"];
  v24 = v5;
  [v4 decodeDoubleForKey:@"democratizationFactor"];
  v7 = v6;
  [v4 decodeDoubleForKey:@"locationScoreDecayFactor"];
  v9 = v8;
  [v4 decodeDoubleForKey:@"locationWeight"];
  v11 = v10;
  [v4 decodeDoubleForKey:@"maxDistanceThreshold"];
  v13 = v12;
  v14 = [v4 decodeInt64ForKey:@"maxLocationsToConsider"];
  [v4 decodeDoubleForKey:@"popularityMultiplierBoost"];
  v16 = v15;
  [v4 decodeDoubleForKey:@"popularityMultiplierExponent"];
  v18 = v17;
  [v4 decodeDoubleForKey:@"topicTopicMappingWeight"];
  v20 = v19;
  [v4 decodeDoubleForKey:@"userMembershipWeight"];
  v22 = v21;

  return [(FCPersonalizationTagScoringConfig *)self initWithChannelTopicMappingWeight:v14 democratizationFactor:v24 locationScoreDecayFactor:v7 locationWeight:v9 maxDistanceThreshold:v11 maxLocationsToConsider:v13 popularityMultiplierBoost:v16 popularityMultiplierExponent:v18 topicTopicMappingWeight:v20 userMembershipWeight:v22];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [(FCPersonalizationTagScoringConfig *)self channelTopicMappingWeight];
  [v5 encodeDouble:@"channelTopicMappingWeight" forKey:?];
  [(FCPersonalizationTagScoringConfig *)self democratizationFactor];
  [v5 encodeDouble:@"democratizationFactor" forKey:?];
  [(FCPersonalizationTagScoringConfig *)self locationScoreDecayFactor];
  [v5 encodeDouble:@"locationScoreDecayFactor" forKey:?];
  [(FCPersonalizationTagScoringConfig *)self locationWeight];
  [v5 encodeDouble:@"locationWeight" forKey:?];
  [(FCPersonalizationTagScoringConfig *)self maxDistanceThreshold];
  [v5 encodeInt64:v4 forKey:@"maxDistanceThreshold"];
  [v5 encodeDouble:@"maxLocationsToConsider" forKey:{-[FCPersonalizationTagScoringConfig maxLocationsToConsider](self, "maxLocationsToConsider")}];
  [(FCPersonalizationTagScoringConfig *)self popularityMultiplierBoost];
  [v5 encodeDouble:@"popularityMultiplierBoost" forKey:?];
  [(FCPersonalizationTagScoringConfig *)self popularityMultiplierExponent];
  [v5 encodeDouble:@"popularityMultiplierExponent" forKey:?];
  [(FCPersonalizationTagScoringConfig *)self topicTopicMappingWeight];
  [v5 encodeDouble:@"topicTopicMappingWeight" forKey:?];
  [(FCPersonalizationTagScoringConfig *)self userMembershipWeight];
  [v5 encodeDouble:@"userMembershipWeight" forKey:?];
}

@end