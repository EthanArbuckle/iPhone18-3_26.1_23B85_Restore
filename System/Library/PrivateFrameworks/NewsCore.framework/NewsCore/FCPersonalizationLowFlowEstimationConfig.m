@interface FCPersonalizationLowFlowEstimationConfig
- (FCPersonalizationLowFlowEstimationConfig)init;
- (FCPersonalizationLowFlowEstimationConfig)initWithCoder:(id)a3;
- (FCPersonalizationLowFlowEstimationConfig)initWithConfigDictionary:(id)a3;
- (FCPersonalizationLowFlowEstimationConfig)initWithExponent:(double)a3 padding:(double)a4 prior:(double)a5;
- (void)encodeWithCoder:(id)a3;
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

- (FCPersonalizationLowFlowEstimationConfig)initWithConfigDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = FCPersonalizationLowFlowEstimationConfig;
  v5 = [(FCPersonalizationLowFlowEstimationConfig *)&v14 init];
  if (v5)
  {
    v6 = 0.5;
    v7 = FCAppConfigurationDoubleValue(v4, @"exponent", 0.5);
    if (v7 >= 0.0)
    {
      v6 = v7;
    }

    v8 = 10.0;
    v9 = FCAppConfigurationDoubleValue(v4, @"padding", 10.0);
    if (v9 >= 0.0)
    {
      v8 = v9;
    }

    v10 = FCAppConfigurationDoubleValue(v4, @"prior", 0.1);
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

- (FCPersonalizationLowFlowEstimationConfig)initWithExponent:(double)a3 padding:(double)a4 prior:(double)a5
{
  v9.receiver = self;
  v9.super_class = FCPersonalizationLowFlowEstimationConfig;
  result = [(FCPersonalizationLowFlowEstimationConfig *)&v9 init];
  if (result)
  {
    result->_exponent = a3;
    result->_padding = a4;
    result->_prior = a5;
  }

  return result;
}

- (FCPersonalizationLowFlowEstimationConfig)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"exponent"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"padding"];
  v8 = v7;
  [v4 decodeDoubleForKey:@"prior"];
  v10 = v9;

  return [(FCPersonalizationLowFlowEstimationConfig *)self initWithExponent:v6 padding:v8 prior:v10];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(FCPersonalizationLowFlowEstimationConfig *)self exponent];
  [v4 encodeDouble:@"exponent" forKey:?];
  [(FCPersonalizationLowFlowEstimationConfig *)self padding];
  [v4 encodeDouble:@"padding" forKey:?];
  [(FCPersonalizationLowFlowEstimationConfig *)self prior];
  [v4 encodeDouble:@"prior" forKey:?];
}

@end