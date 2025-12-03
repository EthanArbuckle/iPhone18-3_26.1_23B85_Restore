@interface FCNewsTabiRecipeEventAggregationConfiguration
- (FCNewsTabiRecipeEventAggregationConfiguration)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCNewsTabiRecipeEventAggregationConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  eventConditions = [(FCNewsTabiRecipeEventAggregationConfiguration *)self eventConditions];
  indentedDescription = [eventConditions indentedDescription];
  [v3 appendFormat:@"\n\teventConditions: %@;", indentedDescription];

  [v3 appendFormat:@"\n\tmaxSessionEvents: %lu;", -[FCNewsTabiRecipeEventAggregationConfiguration maxSessionEvents](self, "maxSessionEvents")];
  inputNames = [(FCNewsTabiRecipeEventAggregationConfiguration *)self inputNames];
  [v3 appendFormat:@"\n\tinputNames: %@;", inputNames];

  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiRecipeEventAggregationConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = FCAppConfigurationNumberValue(dictionaryCopy, @"maxSessionEvents", 0);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = [FCNewsTabiRecipeEventAggregationConditions alloc];
    v9 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"eventConditions", 0);
    v10 = [(FCNewsTabiRecipeEventAggregationConditions *)v8 initWithDictionary:v9];

    if (v10)
    {
      v11 = v10;
      v12 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"inputNames", 0);
      v13 = v12;
      if (v12)
      {
        v14 = v12;
        v18.receiver = self;
        v18.super_class = FCNewsTabiRecipeEventAggregationConfiguration;
        v15 = [(FCNewsTabiRecipeEventAggregationConfiguration *)&v18 init];
        if (v15)
        {
          v15->_maxSessionEvents = [v7 intValue];
          objc_storeStrong(&v15->_eventConditions, v10);
          objc_storeStrong(&v15->_inputNames, v13);
        }

        self = v15;
        selfCopy = self;
      }

      else
      {
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __68__FCNewsTabiRecipeEventAggregationConfiguration_initWithDictionary___block_invoke_9;
        v19[3] = &unk_1E7C36F98;
        v20 = dictionaryCopy;
        selfCopy = __68__FCNewsTabiRecipeEventAggregationConfiguration_initWithDictionary___block_invoke_9(v19);
        v14 = v20;
      }
    }

    else
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __68__FCNewsTabiRecipeEventAggregationConfiguration_initWithDictionary___block_invoke_8;
      v21[3] = &unk_1E7C36F98;
      v22 = dictionaryCopy;
      selfCopy = __68__FCNewsTabiRecipeEventAggregationConfiguration_initWithDictionary___block_invoke_8(v21);
      v11 = v22;
    }
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __68__FCNewsTabiRecipeEventAggregationConfiguration_initWithDictionary___block_invoke;
    v23[3] = &unk_1E7C36F98;
    v24 = dictionaryCopy;
    selfCopy = __68__FCNewsTabiRecipeEventAggregationConfiguration_initWithDictionary___block_invoke(v23);
    v7 = v24;
  }

  return selfCopy;
}

uint64_t __68__FCNewsTabiRecipeEventAggregationConfiguration_initWithDictionary___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = FCTabiConfigurationLog;
  if (os_log_type_enabled(FCTabiConfigurationLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = v2;
    v7 = [v5 description];
    v8 = 138543362;
    v9 = v7;
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecipeEventAggregationConfiguration due to failure to decode maxSessionEvents from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __68__FCNewsTabiRecipeEventAggregationConfiguration_initWithDictionary___block_invoke_8(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = FCTabiConfigurationLog;
  if (os_log_type_enabled(FCTabiConfigurationLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = v2;
    v7 = [v5 description];
    v8 = 138543362;
    v9 = v7;
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecipeEventAggregationConfiguration due to failure to decode eventConditions from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __68__FCNewsTabiRecipeEventAggregationConfiguration_initWithDictionary___block_invoke_9(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = FCTabiConfigurationLog;
  if (os_log_type_enabled(FCTabiConfigurationLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = v2;
    v7 = [v5 description];
    v8 = 138543362;
    v9 = v7;
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecipeEventAggregationConfiguration due to failure to decode inputNames from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

@end