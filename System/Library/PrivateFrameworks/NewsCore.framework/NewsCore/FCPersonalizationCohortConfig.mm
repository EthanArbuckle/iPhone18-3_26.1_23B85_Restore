@interface FCPersonalizationCohortConfig
- (FCPersonalizationCohortConfig)init;
- (FCPersonalizationCohortConfig)initWithCoder:(id)coder;
- (FCPersonalizationCohortConfig)initWithConfigDictionary:(id)dictionary;
- (FCPersonalizationCohortConfig)initWithConsiderPublisherTopicAggregates:(BOOL)aggregates dilutionFactor:(double)factor enableUndampening:(BOOL)undampening favoritedBoost:(double)boost exponentialFavoritedBoost:(double)favoritedBoost globalWeight:(double)weight globalWeightHalfLife:(double)life globalWeightInitialMultiplier:(double)self0 paddingFactor:(double)self1 preBaselineCurvature:(double)self2 postBaselineCurvature:(double)self3 undampenOnlyAboveBaselineMembership:(BOOL)self4 userBaseline:(double)self5 useRelativePersonalizationValue:(BOOL)self6 useExponentialFavoritedBoost:(BOOL)self7;
- (void)encodeWithCoder:(id)coder;
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

- (FCPersonalizationCohortConfig)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v35.receiver = self;
  v35.super_class = FCPersonalizationCohortConfig;
  v5 = [(FCPersonalizationCohortConfig *)&v35 init];
  if (v5)
  {
    v6 = FCAppConfigurationBoolValue(dictionaryCopy, @"considerPublisherTopicAggregates", 0);
    v7 = FCAppConfigurationDoubleValue(dictionaryCopy, @"dilutionFactor", 1.0);
    if (v7 > 1.0 || v7 < 0.0)
    {
      v7 = 1.0;
    }

    v34 = v7;
    v9 = FCAppConfigurationBoolValue(dictionaryCopy, @"enableUndampening", 0);
    v10 = FCAppConfigurationDoubleValue(dictionaryCopy, @"favoritedBoost", 0.3);
    if (v10 > 1.0 || v10 < 0.0)
    {
      v10 = 0.3;
    }

    v33 = v10;
    v12 = FCAppConfigurationDoubleValue(dictionaryCopy, @"exponentialFavoritedBoost", 1.0);
    if (v12 < 0.0)
    {
      v12 = 1.0;
    }

    v32 = v12;
    v13 = FCAppConfigurationDoubleValue(dictionaryCopy, @"globalWeight", 0.2);
    if (v13 > 1.0 || v13 < 0.0)
    {
      v13 = 0.2;
    }

    v31 = v13;
    v15 = FCAppConfigurationDoubleValue(dictionaryCopy, @"globalWeightHalfLife", 5.0);
    if (v15 < 0.0)
    {
      v16 = 5.0;
    }

    else
    {
      v16 = v15;
    }

    v17 = FCAppConfigurationDoubleValue(dictionaryCopy, @"globalWeightInitialMultiplier", 0.0);
    if (v17 < 0.0)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = v17;
    }

    v19 = FCAppConfigurationDoubleValue(dictionaryCopy, @"paddingFactor", 0.0);
    if (v19 < 0.0)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = v19;
    }

    v21 = FCAppConfigurationDoubleValue(dictionaryCopy, @"preBaselineCurvature", 2.0);
    if (v21 <= 0.0)
    {
      v22 = 2.0;
    }

    else
    {
      v22 = v21;
    }

    v23 = FCAppConfigurationDoubleValue(dictionaryCopy, @"postBaselineCurvature", 2.0);
    if (v23 <= 0.0)
    {
      v24 = 2.0;
    }

    else
    {
      v24 = v23;
    }

    v25 = FCAppConfigurationBoolValue(dictionaryCopy, @"undampenOnlyAboveBaselineMembership", 1);
    v26 = 0.05;
    v27 = FCAppConfigurationDoubleValue(dictionaryCopy, @"userBaseline", 0.05);
    if (v27 <= 1.0 && v27 >= 0.0)
    {
      v26 = v27;
    }

    v29 = FCAppConfigurationBoolValue(dictionaryCopy, @"useRelativePersonalizationValue", 0);
    v5 = [(FCPersonalizationCohortConfig *)v5 initWithConsiderPublisherTopicAggregates:v6 dilutionFactor:v9 enableUndampening:v25 favoritedBoost:v29 exponentialFavoritedBoost:FCAppConfigurationBoolValue(dictionaryCopy globalWeight:@"useExponentialFavoritedBoost" globalWeightHalfLife:0) globalWeightInitialMultiplier:v34 paddingFactor:v33 preBaselineCurvature:v32 postBaselineCurvature:v31 undampenOnlyAboveBaselineMembership:v16 userBaseline:v18 useRelativePersonalizationValue:v20 useExponentialFavoritedBoost:v22, *&v24, *&v26];
  }

  return v5;
}

- (FCPersonalizationCohortConfig)initWithConsiderPublisherTopicAggregates:(BOOL)aggregates dilutionFactor:(double)factor enableUndampening:(BOOL)undampening favoritedBoost:(double)boost exponentialFavoritedBoost:(double)favoritedBoost globalWeight:(double)weight globalWeightHalfLife:(double)life globalWeightInitialMultiplier:(double)self0 paddingFactor:(double)self1 preBaselineCurvature:(double)self2 postBaselineCurvature:(double)self3 undampenOnlyAboveBaselineMembership:(BOOL)self4 userBaseline:(double)self5 useRelativePersonalizationValue:(BOOL)self6 useExponentialFavoritedBoost:(BOOL)self7
{
  v31.receiver = self;
  v31.super_class = FCPersonalizationCohortConfig;
  result = [(FCPersonalizationCohortConfig *)&v31 init];
  if (result)
  {
    result->_considerPublisherTopicAggregates = aggregates;
    result->_enableUndampening = undampening;
    result->_dilutionFactor = factor;
    result->_favoritedBoost = boost;
    result->_exponentialFavoritedBoost = favoritedBoost;
    result->_globalWeight = weight;
    result->_globalWeightHalfLife = life;
    result->_globalWeightInitialMultiplier = multiplier;
    result->_paddingFactor = paddingFactor;
    result->_preBaselineCurvature = curvature;
    result->_undampenOnlyAboveBaselineMembership = membership;
    result->_postBaselineCurvature = baselineCurvature;
    result->_userBaseline = baseline;
    result->_useRelativePersonalizationValue = value;
    result->_useExponentialFavoritedBoost = exponentialFavoritedBoost;
  }

  return result;
}

- (FCPersonalizationCohortConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"considerPublisherTopicAggregates"];
  [coderCopy decodeDoubleForKey:@"dilutionFactor"];
  v30 = v6;
  v7 = [coderCopy decodeBoolForKey:@"enableUndampening"];
  [coderCopy decodeDoubleForKey:@"favoritedBoost"];
  v29 = v8;
  [coderCopy decodeDoubleForKey:@"exponentialFavoritedBoost"];
  v10 = v9;
  [coderCopy decodeDoubleForKey:@"globalWeight"];
  v12 = v11;
  [coderCopy decodeDoubleForKey:@"globalWeightHalfLife"];
  v14 = v13;
  [coderCopy decodeDoubleForKey:@"globalWeightInitialMultiplier"];
  v16 = v15;
  [coderCopy decodeDoubleForKey:@"paddingFactor"];
  v18 = v17;
  [coderCopy decodeDoubleForKey:@"preBaselineCurvature"];
  v20 = v19;
  [coderCopy decodeDoubleForKey:@"postBaselineCurvature"];
  v22 = v21;
  v23 = [coderCopy decodeBoolForKey:@"undampenOnlyAboveBaselineMembership"];
  [coderCopy decodeDoubleForKey:@"userBaseline"];
  v25 = v24;
  v26 = [coderCopy decodeBoolForKey:@"useRelativePersonalizationValue"];
  v27 = [coderCopy decodeBoolForKey:@"useExponentialFavoritedBoost"];

  return [(FCPersonalizationCohortConfig *)self initWithConsiderPublisherTopicAggregates:v5 dilutionFactor:v7 enableUndampening:v23 favoritedBoost:v26 exponentialFavoritedBoost:v27 globalWeight:v30 globalWeightHalfLife:v29 globalWeightInitialMultiplier:v10 paddingFactor:v12 preBaselineCurvature:v14 postBaselineCurvature:v16 undampenOnlyAboveBaselineMembership:v18 userBaseline:v20 useRelativePersonalizationValue:v22 useExponentialFavoritedBoost:v25];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[FCPersonalizationCohortConfig considerPublisherTopicAggregates](self forKey:{"considerPublisherTopicAggregates"), @"considerPublisherTopicAggregates"}];
  [(FCPersonalizationCohortConfig *)self dilutionFactor];
  [coderCopy encodeDouble:@"dilutionFactor" forKey:?];
  [coderCopy encodeBool:-[FCPersonalizationCohortConfig enableUndampening](self forKey:{"enableUndampening"), @"enableUndampening"}];
  [(FCPersonalizationCohortConfig *)self favoritedBoost];
  [coderCopy encodeDouble:@"favoritedBoost" forKey:?];
  [(FCPersonalizationCohortConfig *)self exponentialFavoritedBoost];
  [coderCopy encodeDouble:@"exponentialFavoritedBoost" forKey:?];
  [(FCPersonalizationCohortConfig *)self globalWeight];
  [coderCopy encodeDouble:@"globalWeight" forKey:?];
  [(FCPersonalizationCohortConfig *)self globalWeightHalfLife];
  [coderCopy encodeDouble:@"globalWeightHalfLife" forKey:?];
  [(FCPersonalizationCohortConfig *)self globalWeightInitialMultiplier];
  [coderCopy encodeDouble:@"globalWeightInitialMultiplier" forKey:?];
  [(FCPersonalizationCohortConfig *)self paddingFactor];
  [coderCopy encodeDouble:@"paddingFactor" forKey:?];
  [(FCPersonalizationCohortConfig *)self preBaselineCurvature];
  [coderCopy encodeDouble:@"preBaselineCurvature" forKey:?];
  [(FCPersonalizationCohortConfig *)self postBaselineCurvature];
  [coderCopy encodeDouble:@"postBaselineCurvature" forKey:?];
  [coderCopy encodeBool:-[FCPersonalizationCohortConfig undampenOnlyAboveBaselineMembership](self forKey:{"undampenOnlyAboveBaselineMembership"), @"undampenOnlyAboveBaselineMembership"}];
  [(FCPersonalizationCohortConfig *)self userBaseline];
  [coderCopy encodeDouble:@"userBaseline" forKey:?];
  [coderCopy encodeBool:-[FCPersonalizationCohortConfig useRelativePersonalizationValue](self forKey:{"useRelativePersonalizationValue"), @"useRelativePersonalizationValue"}];
  [coderCopy encodeBool:-[FCPersonalizationCohortConfig useExponentialFavoritedBoost](self forKey:{"useExponentialFavoritedBoost"), @"useExponentialFavoritedBoost"}];
}

@end