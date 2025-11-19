@interface FCPersonalizationPublisherDampeningConfig
- (FCPersonalizationPublisherDampeningConfig)init;
- (FCPersonalizationPublisherDampeningConfig)initWithCoder:(id)a3;
- (FCPersonalizationPublisherDampeningConfig)initWithConfig:(id)a3;
- (FCPersonalizationPublisherDampeningConfig)initWithDampeningFactorMapping:(id)a3 dampeningStrategy:(unint64_t)a4 defaultDampeningFactor:(double)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FCPersonalizationPublisherDampeningConfig

- (FCPersonalizationPublisherDampeningConfig)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPersonalizationPublisherDampeningConfig init]";
    v10 = 2080;
    v11 = "FCPersonalizationPublisherDampeningConfig.m";
    v12 = 1024;
    v13 = 17;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPersonalizationPublisherDampeningConfig init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPersonalizationPublisherDampeningConfig)initWithConfig:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FCPersonalizationPublisherDampeningConfig;
  v5 = [(FCPersonalizationPublisherDampeningConfig *)&v9 init];
  if (v5)
  {
    v6 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"mapping", 0);
    v7 = FCAppConfigurationIntegerValue(v4, @"strategy", 0);
    v5 = [(FCPersonalizationPublisherDampeningConfig *)v5 initWithDampeningFactorMapping:v6 dampeningStrategy:v7 defaultDampeningFactor:FCAppConfigurationDoubleValue(v4, @"defaultDampeningFactor", 1.0)];
  }

  return v5;
}

- (FCPersonalizationPublisherDampeningConfig)initWithDampeningFactorMapping:(id)a3 dampeningStrategy:(unint64_t)a4 defaultDampeningFactor:(double)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = FCPersonalizationPublisherDampeningConfig;
  v9 = [(FCPersonalizationPublisherDampeningConfig *)&v13 init];
  if (v9)
  {
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = MEMORY[0x1E695E0F8];
    }

    dampeningFactorMapping = v9->_dampeningFactorMapping;
    v9->_dampeningFactorMapping = v10;

    v9->_dampeningStrategy = a4;
    v9->_defaultDampeningFactor = a5;
  }

  return v9;
}

- (FCPersonalizationPublisherDampeningConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"dampeningFactorMapping"];
  v6 = [v4 decodeIntegerForKey:@"dampeningStrategy"];
  [v4 decodeDoubleForKey:@"defaultDampeningFactor"];
  v8 = v7;

  v9 = [(FCPersonalizationPublisherDampeningConfig *)self initWithDampeningFactorMapping:v5 dampeningStrategy:v6 defaultDampeningFactor:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(FCPersonalizationPublisherDampeningConfig *)self dampeningFactorMapping];
  [v5 encodeObject:v4 forKey:@"dampeningFactorMapping"];

  [v5 encodeInteger:-[FCPersonalizationPublisherDampeningConfig dampeningStrategy](self forKey:{"dampeningStrategy"), @"dampeningStrategy"}];
  [(FCPersonalizationPublisherDampeningConfig *)self defaultDampeningFactor];
  [v5 encodeDouble:@"defaultDampeningFactor" forKey:?];
}

@end