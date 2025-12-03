@interface FCPersonalizationOntologyLevelConfig
- (FCPersonalizationOntologyLevelConfig)init;
- (FCPersonalizationOntologyLevelConfig)initWithCoder:(id)coder;
- (FCPersonalizationOntologyLevelConfig)initWithConfig:(id)config;
- (FCPersonalizationOntologyLevelConfig)initWithConfig:(id)config defaultConfig:(id)defaultConfig;
- (FCPersonalizationOntologyLevelConfig)initWithTagWeightMapping:(id)mapping;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FCPersonalizationOntologyLevelConfig

- (FCPersonalizationOntologyLevelConfig)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPersonalizationOntologyLevelConfig init]";
    v10 = 2080;
    v11 = "FCPersonalizationOntologyLevelConfig.m";
    v12 = 1024;
    v13 = 17;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPersonalizationOntologyLevelConfig init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPersonalizationOntologyLevelConfig)initWithConfig:(id)config
{
  configCopy = config;
  v14.receiver = self;
  v14.super_class = FCPersonalizationOntologyLevelConfig;
  v5 = [(FCPersonalizationOntologyLevelConfig *)&v14 init];
  if (v5)
  {
    v6 = v5;
    v7 = FCAppConfigurationDictionaryValueWithDefaultValue(configCopy, @"tagWeightMapping", 0);
    v8 = v7;
    if (v7)
    {
      v9 = [v7 fc_dictionaryByTransformingKeysWithBlock:&__block_literal_global_97];
      v10 = [(FCPersonalizationOntologyLevelConfig *)v6 initWithTagWeightMapping:v9];
      v11 = v10;
    }

    else
    {
      v13 = v6;
      v10 = v13;
      v11 = [(FCPersonalizationOntologyLevelConfig *)v10 initWithTagWeightMapping:MEMORY[0x1E695E0F8]];
      v9 = v13;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id __55__FCPersonalizationOntologyLevelConfig_initWithConfig___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 initWithTagWeightMapping:MEMORY[0x1E695E0F8]];

  return v2;
}

id __55__FCPersonalizationOntologyLevelConfig_initWithConfig___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v2, "integerValue")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FCPersonalizationOntologyLevelConfig)initWithConfig:(id)config defaultConfig:(id)defaultConfig
{
  configCopy = config;
  defaultConfigCopy = defaultConfig;
  v18.receiver = self;
  v18.super_class = FCPersonalizationOntologyLevelConfig;
  v8 = [(FCPersonalizationOntologyLevelConfig *)&v18 init];
  if (v8)
  {
    v9 = v8;
    v10 = FCAppConfigurationDictionaryValueWithDefaultValue(configCopy, @"tagWeightMapping", 0);

    if (v10)
    {
      v11 = FCAppConfigurationDictionaryValueWithDefaultValue(configCopy, @"tagWeightMapping", 0);
      tagWeightMapping = v11;
      if (v11)
      {
        v13 = [v11 fc_dictionaryByTransformingKeysWithBlock:&__block_literal_global_13_0];
        v14 = [(FCPersonalizationOntologyLevelConfig *)v9 initWithTagWeightMapping:v13];
        v15 = v14;
      }

      else
      {
        v17 = v9;
        v14 = v17;
        v15 = [(FCPersonalizationOntologyLevelConfig *)v14 initWithTagWeightMapping:MEMORY[0x1E695E0F8]];
        v13 = v17;
      }
    }

    else
    {
      tagWeightMapping = [defaultConfigCopy tagWeightMapping];
      v14 = [(FCPersonalizationOntologyLevelConfig *)v9 initWithTagWeightMapping:tagWeightMapping];
      v15 = v14;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id __69__FCPersonalizationOntologyLevelConfig_initWithConfig_defaultConfig___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 initWithTagWeightMapping:MEMORY[0x1E695E0F8]];

  return v2;
}

id __69__FCPersonalizationOntologyLevelConfig_initWithConfig_defaultConfig___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v2, "integerValue")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FCPersonalizationOntologyLevelConfig)initWithTagWeightMapping:(id)mapping
{
  mappingCopy = mapping;
  v9.receiver = self;
  v9.super_class = FCPersonalizationOntologyLevelConfig;
  v6 = [(FCPersonalizationOntologyLevelConfig *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tagWeightMapping, mapping);
  }

  return v7;
}

- (FCPersonalizationOntologyLevelConfig)initWithCoder:(id)coder
{
  v4 = [coder decodeObjectForKey:@"tagWeightMapping"];
  v5 = [(FCPersonalizationOntologyLevelConfig *)self initWithTagWeightMapping:v4];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  tagWeightMapping = [(FCPersonalizationOntologyLevelConfig *)self tagWeightMapping];
  [coderCopy encodeObject:tagWeightMapping forKey:@"tagWeightMapping"];
}

@end