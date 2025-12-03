@interface FCPersonalizationLowFlowEstimationConfig
- (FCPersonalizationLowFlowEstimationConfig)init;
- (FCPersonalizationLowFlowEstimationConfig)initWithCoder:(id)coder;
- (FCPersonalizationLowFlowEstimationConfig)initWithConfigDictionary:(id)dictionary;
- (FCPersonalizationLowFlowEstimationConfig)initWithExponent:(double)exponent padding:(double)padding prior:(double)prior;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FCPersonalizationLowFlowEstimationConfig

- (FCPersonalizationLowFlowEstimationConfig)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPersonalizationLowFlowEstimationConfig init]";
    v10 = 2080;
    v11 = "FCPersonalizationLowFlowEstimationConfig.m";
    v12 = 1024;
    v13 = 18;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPersonalizationLowFlowEstimationConfig init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPersonalizationLowFlowEstimationConfig)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = FCPersonalizationLowFlowEstimationConfig;
  v5 = [(FCPersonalizationLowFlowEstimationConfig *)&v14 init];
  if (v5)
  {
    v6 = 0.5;
    v7 = FCAppConfigurationDoubleValue(dictionaryCopy, @"exponent", 0.5);
    if (v7 >= 0.0)
    {
      v6 = v7;
    }

    v8 = 10.0;
    v9 = FCAppConfigurationDoubleValue(dictionaryCopy, @"padding", 10.0);
    if (v9 >= 0.0)
    {
      v8 = v9;
    }

    v10 = FCAppConfigurationDoubleValue(dictionaryCopy, @"prior", 0.1);
    if (v10 > 1.0 || v10 < 0.0)
    {
      v12 = 0.1;
    }

    else
    {
      v12 = v10;
    }

    v5 = [(FCPersonalizationLowFlowEstimationConfig *)v5 initWithExponent:v6 padding:v8 prior:v12];
  }

  return v5;
}

- (FCPersonalizationLowFlowEstimationConfig)initWithExponent:(double)exponent padding:(double)padding prior:(double)prior
{
  v9.receiver = self;
  v9.super_class = FCPersonalizationLowFlowEstimationConfig;
  result = [(FCPersonalizationLowFlowEstimationConfig *)&v9 init];
  if (result)
  {
    result->_exponent = exponent;
    result->_padding = padding;
    result->_prior = prior;
  }

  return result;
}

- (FCPersonalizationLowFlowEstimationConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"exponent"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"padding"];
  v8 = v7;
  [coderCopy decodeDoubleForKey:@"prior"];
  v10 = v9;

  return [(FCPersonalizationLowFlowEstimationConfig *)self initWithExponent:v6 padding:v8 prior:v10];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(FCPersonalizationLowFlowEstimationConfig *)self exponent];
  [coderCopy encodeDouble:@"exponent" forKey:?];
  [(FCPersonalizationLowFlowEstimationConfig *)self padding];
  [coderCopy encodeDouble:@"padding" forKey:?];
  [(FCPersonalizationLowFlowEstimationConfig *)self prior];
  [coderCopy encodeDouble:@"prior" forKey:?];
}

@end