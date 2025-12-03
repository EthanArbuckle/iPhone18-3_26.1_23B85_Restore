@interface FCDerivedPersonalizationData
- (FCDerivedPersonalizationData)init;
- (FCDerivedPersonalizationData)initWithAggregates:(id)aggregates scoringType:(unint64_t)type decayRate:(double)rate;
- (FCDerivedPersonalizationData)initWithCoder:(id)coder;
- (id)aggregateForFeatureKey:(id)key;
- (id)aggregatesForFeatureKeys:(id)keys;
- (id)allAggregates;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FCDerivedPersonalizationData

- (FCDerivedPersonalizationData)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCDerivedPersonalizationData init]";
    v10 = 2080;
    v11 = "FCDerivedPersonalizationData.m";
    v12 = 1024;
    v13 = 26;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCDerivedPersonalizationData init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCDerivedPersonalizationData)initWithAggregates:(id)aggregates scoringType:(unint64_t)type decayRate:(double)rate
{
  v24 = *MEMORY[0x1E69E9840];
  aggregatesCopy = aggregates;
  if (!aggregatesCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "aggregates"];
    *buf = 136315906;
    v17 = "[FCDerivedPersonalizationData initWithAggregates:scoringType:decayRate:]";
    v18 = 2080;
    v19 = "FCDerivedPersonalizationData.m";
    v20 = 1024;
    v21 = 31;
    v22 = 2114;
    v23 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v15.receiver = self;
  v15.super_class = FCDerivedPersonalizationData;
  v9 = [(FCDerivedPersonalizationData *)&v15 init];
  v10 = v9;
  if (v9)
  {
    if (aggregatesCopy)
    {
      v11 = aggregatesCopy;
    }

    else
    {
      v11 = MEMORY[0x1E695E0F8];
    }

    objc_storeStrong(&v9->_aggregatesByFeatureKey, v11);
    v10->_scoringType = type;
    v10->_decayRate = rate;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)allAggregates
{
  if (self)
  {
    self = self->_aggregatesByFeatureKey;
  }

  return self;
}

- (id)aggregatesForFeatureKeys:(id)keys
{
  if (self)
  {
    self = self->_aggregatesByFeatureKey;
  }

  return [(FCDerivedPersonalizationData *)self fc_subdictionaryForKeys:keys];
}

- (id)aggregateForFeatureKey:(id)key
{
  if (self)
  {
    self = self->_aggregatesByFeatureKey;
  }

  return [(FCDerivedPersonalizationData *)self objectForKeyedSubscript:key];
}

- (FCDerivedPersonalizationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"version"];
  v6 = [coderCopy decodeIntegerForKey:@"scoringType"];
  [coderCopy decodeDoubleForKey:@"decayRate"];
  v8 = v7;
  if (v5 == 5)
  {
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"aggregatesByFeatureKey"];
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = [(FCDerivedPersonalizationData *)self initWithAggregates:v13 scoringType:v6 decayRate:v8];

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:5 forKey:@"version"];
  if (self)
  {
    aggregatesByFeatureKey = self->_aggregatesByFeatureKey;
  }

  else
  {
    aggregatesByFeatureKey = 0;
  }

  [coderCopy encodeObject:aggregatesByFeatureKey forKey:@"aggregatesByFeatureKey"];
  [coderCopy encodeInteger:-[FCDerivedPersonalizationData scoringType](self forKey:{"scoringType"), @"scoringType"}];
  [(FCDerivedPersonalizationData *)self decayRate];
  [coderCopy encodeDouble:@"decayRate" forKey:?];
}

@end