@interface FCPersonalizationPublisherDampeningConfig
- (FCPersonalizationPublisherDampeningConfig)init;
- (FCPersonalizationPublisherDampeningConfig)initWithCoder:(id)coder;
- (FCPersonalizationPublisherDampeningConfig)initWithConfig:(id)config;
- (FCPersonalizationPublisherDampeningConfig)initWithDampeningFactorMapping:(id)mapping dampeningStrategy:(unint64_t)strategy defaultDampeningFactor:(double)factor;
- (void)encodeWithCoder:(id)coder;
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

- (FCPersonalizationPublisherDampeningConfig)initWithConfig:(id)config
{
  configCopy = config;
  v9.receiver = self;
  v9.super_class = FCPersonalizationPublisherDampeningConfig;
  v5 = [(FCPersonalizationPublisherDampeningConfig *)&v9 init];
  if (v5)
  {
    v6 = FCAppConfigurationDictionaryValueWithDefaultValue(configCopy, @"mapping", 0);
    v7 = FCAppConfigurationIntegerValue(configCopy, @"strategy", 0);
    v5 = [(FCPersonalizationPublisherDampeningConfig *)v5 initWithDampeningFactorMapping:v6 dampeningStrategy:v7 defaultDampeningFactor:FCAppConfigurationDoubleValue(configCopy, @"defaultDampeningFactor", 1.0)];
  }

  return v5;
}

- (FCPersonalizationPublisherDampeningConfig)initWithDampeningFactorMapping:(id)mapping dampeningStrategy:(unint64_t)strategy defaultDampeningFactor:(double)factor
{
  mappingCopy = mapping;
  v13.receiver = self;
  v13.super_class = FCPersonalizationPublisherDampeningConfig;
  v9 = [(FCPersonalizationPublisherDampeningConfig *)&v13 init];
  if (v9)
  {
    if (mappingCopy)
    {
      v10 = mappingCopy;
    }

    else
    {
      v10 = MEMORY[0x1E695E0F8];
    }

    dampeningFactorMapping = v9->_dampeningFactorMapping;
    v9->_dampeningFactorMapping = v10;

    v9->_dampeningStrategy = strategy;
    v9->_defaultDampeningFactor = factor;
  }

  return v9;
}

- (FCPersonalizationPublisherDampeningConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"dampeningFactorMapping"];
  v6 = [coderCopy decodeIntegerForKey:@"dampeningStrategy"];
  [coderCopy decodeDoubleForKey:@"defaultDampeningFactor"];
  v8 = v7;

  v9 = [(FCPersonalizationPublisherDampeningConfig *)self initWithDampeningFactorMapping:v5 dampeningStrategy:v6 defaultDampeningFactor:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dampeningFactorMapping = [(FCPersonalizationPublisherDampeningConfig *)self dampeningFactorMapping];
  [coderCopy encodeObject:dampeningFactorMapping forKey:@"dampeningFactorMapping"];

  [coderCopy encodeInteger:-[FCPersonalizationPublisherDampeningConfig dampeningStrategy](self forKey:{"dampeningStrategy"), @"dampeningStrategy"}];
  [(FCPersonalizationPublisherDampeningConfig *)self defaultDampeningFactor];
  [coderCopy encodeDouble:@"defaultDampeningFactor" forKey:?];
}

@end