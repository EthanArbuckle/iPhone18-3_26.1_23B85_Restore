@interface FCPersonalizationCohortConfig
- (FCPersonalizationCohortConfig)init;
- (FCPersonalizationCohortConfig)initWithCoder:(id)a3;
- (FCPersonalizationCohortConfig)initWithConfigDictionary:(id)a3;
- (FCPersonalizationCohortConfig)initWithConsiderPublisherTopicAggregates:(BOOL)a3 dilutionFactor:(double)a4 enableUndampening:(BOOL)a5 favoritedBoost:(double)a6 exponentialFavoritedBoost:(double)a7 globalWeight:(double)a8 globalWeightHalfLife:(double)a9 globalWeightInitialMultiplier:(double)a10 paddingFactor:(double)a11 preBaselineCurvature:(double)a12 postBaselineCurvature:(double)a13 undampenOnlyAboveBaselineMembership:(BOOL)a14 userBaseline:(double)a15 useRelativePersonalizationValue:(BOOL)a16 useExponentialFavoritedBoost:(BOOL)a17;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FCPersonalizationCohortConfig

- (FCPersonalizationCohortConfig)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPersonalizationCohortConfig init]";
    v10 = 2080;
    v11 = "FCPersonalizationCohortConfig.m";
    v12 = 1024;
    v13 = 18;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPersonalizationCohortConfig init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPersonalizationCohortConfig)initWithConfigDictionary:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = FCPersonalizationCohortConfig;
  v5 = [(FCPersonalizationCohortConfig *)&v35 init];
  if (v5)
  {
    v6 = FCAppConfigurationBoolValue(v4, @"considerPublisherTopicAggregates", 0);
    v7 = FCAppConfigurationDoubleValue(v4, @"dilutionFactor", 1.0);
    if (v7 > 1.0 || v7 < 0.0)
    {
      v7 = 1.0;
    }

    v34 = v7;
    v9 = FCAppConfigurationBoolValue(v4, @"enableUndampening", 0);
    v10 = FCAppConfigurationDoubleValue(v4, @"favoritedBoost", 0.3);
    if (v10 > 1.0 || v10 < 0.0)
    {
      v10 = 0.3;
    }

    v33 = v10;
    v12 = FCAppConfigurationDoubleValue(v4, @"exponentialFavoritedBoost", 1.0);
    if (v12 < 0.0)
    {
      v12 = 1.0;
    }

    v32 = v12;
    v13 = FCAppConfigurationDoubleValue(v4, @"globalWeight", 0.2);
    if (v13 > 1.0 || v13 < 0.0)
    {
      v13 = 0.2;
    }

    v31 = v13;
    v15 = FCAppConfigurationDoubleValue(v4, @"globalWeightHalfLife", 5.0);
    if (v15 < 0.0)
    {
      v16 = 5.0;
    }

    else
    {
      v16 = v15;
    }

    v17 = FCAppConfigurationDoubleValue(v4, @"globalWeightInitialMultiplier", 0.0);
    if (v17 < 0.0)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = v17;
    }

    v19 = FCAppConfigurationDoubleValue(v4, @"paddingFactor", 0.0);
    if (v19 < 0.0)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = v19;
    }

    v21 = FCAppConfigurationDoubleValue(v4, @"preBaselineCurvature", 2.0);
    if (v21 <= 0.0)
    {
      v22 = 2.0;
    }

    else
    {
      v22 = v21;
    }

    v23 = FCAppConfigurationDoubleValue(v4, @"postBaselineCurvature", 2.0);
    if (v23 <= 0.0)
    {
      v24 = 2.0;
    }

    else
    {
      v24 = v23;
    }

    v25 = FCAppConfigurationBoolValue(v4, @"undampenOnlyAboveBaselineMembership", 1);
    v26 = 0.05;
    v27 = FCAppConfigurationDoubleValue(v4, @"userBaseline", 0.05);
    if (v27 <= 1.0 && v27 >= 0.0)
    {
      v26 = v27;
    }

    v29 = FCAppConfigurationBoolValue(v4, @"useRelativePersonalizationValue", 0);
    v5 = [(FCPersonalizationCohortConfig *)v5 initWithConsiderPublisherTopicAggregates:v6 dilutionFactor:v9 enableUndampening:v25 favoritedBoost:v29 exponentialFavoritedBoost:FCAppConfigurationBoolValue(v4 globalWeight:@"useExponentialFavoritedBoost" globalWeightHalfLife:0) globalWeightInitialMultiplier:v34 paddingFactor:v33 preBaselineCurvature:v32 postBaselineCurvature:v31 undampenOnlyAboveBaselineMembership:v16 userBaseline:v18 useRelativePersonalizationValue:v20 useExponentialFavoritedBoost:v22, *&v24, *&v26];
  }

  return v5;
}

- (FCPersonalizationCohortConfig)initWithConsiderPublisherTopicAggregates:(BOOL)a3 dilutionFactor:(double)a4 enableUndampening:(BOOL)a5 favoritedBoost:(double)a6 exponentialFavoritedBoost:(double)a7 globalWeight:(double)a8 globalWeightHalfLife:(double)a9 globalWeightInitialMultiplier:(double)a10 paddingFactor:(double)a11 preBaselineCurvature:(double)a12 postBaselineCurvature:(double)a13 undampenOnlyAboveBaselineMembership:(BOOL)a14 userBaseline:(double)a15 useRelativePersonalizationValue:(BOOL)a16 useExponentialFavoritedBoost:(BOOL)a17
{
  v31.receiver = self;
  v31.super_class = FCPersonalizationCohortConfig;
  result = [(FCPersonalizationCohortConfig *)&v31 init];
  if (result)
  {
    result->_considerPublisherTopicAggregates = a3;
    result->_enableUndampening = a5;
    result->_dilutionFactor = a4;
    result->_favoritedBoost = a6;
    result->_exponentialFavoritedBoost = a7;
    result->_globalWeight = a8;
    result->_globalWeightHalfLife = a9;
    result->_globalWeightInitialMultiplier = a10;
    result->_paddingFactor = a11;
    result->_preBaselineCurvature = a12;
    result->_undampenOnlyAboveBaselineMembership = a14;
    result->_postBaselineCurvature = a13;
    result->_userBaseline = a15;
    result->_useRelativePersonalizationValue = a16;
    result->_useExponentialFavoritedBoost = a17;
  }

  return result;
}

- (FCPersonalizationCohortConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"considerPublisherTopicAggregates"];
  [v4 decodeDoubleForKey:@"dilutionFactor"];
  v30 = v6;
  v7 = [v4 decodeBoolForKey:@"enableUndampening"];
  [v4 decodeDoubleForKey:@"favoritedBoost"];
  v29 = v8;
  [v4 decodeDoubleForKey:@"exponentialFavoritedBoost"];
  v10 = v9;
  [v4 decodeDoubleForKey:@"globalWeight"];
  v12 = v11;
  [v4 decodeDoubleForKey:@"globalWeightHalfLife"];
  v14 = v13;
  [v4 decodeDoubleForKey:@"globalWeightInitialMultiplier"];
  v16 = v15;
  [v4 decodeDoubleForKey:@"paddingFactor"];
  v18 = v17;
  [v4 decodeDoubleForKey:@"preBaselineCurvature"];
  v20 = v19;
  [v4 decodeDoubleForKey:@"postBaselineCurvature"];
  v22 = v21;
  v23 = [v4 decodeBoolForKey:@"undampenOnlyAboveBaselineMembership"];
  [v4 decodeDoubleForKey:@"userBaseline"];
  v25 = v24;
  v26 = [v4 decodeBoolForKey:@"useRelativePersonalizationValue"];
  v27 = [v4 decodeBoolForKey:@"useExponentialFavoritedBoost"];

  return [(FCPersonalizationCohortConfig *)self initWithConsiderPublisherTopicAggregates:v5 dilutionFactor:v7 enableUndampening:v23 favoritedBoost:v26 exponentialFavoritedBoost:v27 globalWeight:v30 globalWeightHalfLife:v29 globalWeightInitialMultiplier:v10 paddingFactor:v12 preBaselineCurvature:v14 postBaselineCurvature:v16 undampenOnlyAboveBaselineMembership:v18 userBaseline:v20 useRelativePersonalizationValue:v22 useExponentialFavoritedBoost:v25];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[FCPersonalizationCohortConfig considerPublisherTopicAggregates](self forKey:{"considerPublisherTopicAggregates"), @"considerPublisherTopicAggregates"}];
  [(FCPersonalizationCohortConfig *)self dilutionFactor];
  [v4 encodeDouble:@"dilutionFactor" forKey:?];
  [v4 encodeBool:-[FCPersonalizationCohortConfig enableUndampening](self forKey:{"enableUndampening"), @"enableUndampening"}];
  [(FCPersonalizationCohortConfig *)self favoritedBoost];
  [v4 encodeDouble:@"favoritedBoost" forKey:?];
  [(FCPersonalizationCohortConfig *)self exponentialFavoritedBoost];
  [v4 encodeDouble:@"exponentialFavoritedBoost" forKey:?];
  [(FCPersonalizationCohortConfig *)self globalWeight];
  [v4 encodeDouble:@"globalWeight" forKey:?];
  [(FCPersonalizationCohortConfig *)self globalWeightHalfLife];
  [v4 encodeDouble:@"globalWeightHalfLife" forKey:?];
  [(FCPersonalizationCohortConfig *)self globalWeightInitialMultiplier];
  [v4 encodeDouble:@"globalWeightInitialMultiplier" forKey:?];
  [(FCPersonalizationCohortConfig *)self paddingFactor];
  [v4 encodeDouble:@"paddingFactor" forKey:?];
  [(FCPersonalizationCohortConfig *)self preBaselineCurvature];
  [v4 encodeDouble:@"preBaselineCurvature" forKey:?];
  [(FCPersonalizationCohortConfig *)self postBaselineCurvature];
  [v4 encodeDouble:@"postBaselineCurvature" forKey:?];
  [v4 encodeBool:-[FCPersonalizationCohortConfig undampenOnlyAboveBaselineMembership](self forKey:{"undampenOnlyAboveBaselineMembership"), @"undampenOnlyAboveBaselineMembership"}];
  [(FCPersonalizationCohortConfig *)self userBaseline];
  [v4 encodeDouble:@"userBaseline" forKey:?];
  [v4 encodeBool:-[FCPersonalizationCohortConfig useRelativePersonalizationValue](self forKey:{"useRelativePersonalizationValue"), @"useRelativePersonalizationValue"}];
  [v4 encodeBool:-[FCPersonalizationCohortConfig useExponentialFavoritedBoost](self forKey:{"useExponentialFavoritedBoost"), @"useExponentialFavoritedBoost"}];
}

@end