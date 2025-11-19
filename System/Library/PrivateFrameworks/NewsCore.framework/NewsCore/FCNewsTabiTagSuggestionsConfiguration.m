@interface FCNewsTabiTagSuggestionsConfiguration
- (FCNewsTabiTagSuggestionsConfiguration)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsTabiTagSuggestionsConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(FCNewsTabiTagSuggestionsConfiguration *)self bundleOutputConfiguration];
  v5 = [v4 indentedDescription];
  [v3 appendFormat:@"\n\tbundleOutputConfiguration: %@;", v5];

  v6 = [(FCNewsTabiTagSuggestionsConfiguration *)self nonBundleOutputConfiguration];
  v7 = [v6 indentedDescription];
  [v3 appendFormat:@"\n\tnonBundleOutputConfiguration: %@;", v7];

  v8 = [(FCNewsTabiTagSuggestionsConfiguration *)self recipeEventAggregationConfiguration];
  v9 = [v8 indentedDescription];
  [v3 appendFormat:@"\n\trecipeEventAggregationConfiguration: %@;", v9];

  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiTagSuggestionsConfiguration)initWithDictionary:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [FCNewsTabiTagSuggestionsOutputConfiguration alloc];
  v6 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"bundleOutputConfiguration", 0);
  v7 = [(FCNewsTabiTagSuggestionsOutputConfiguration *)v5 initWithDictionary:v6];

  if (v7)
  {
    v8 = v7;
    v9 = [FCNewsTabiTagSuggestionsOutputConfiguration alloc];
    v10 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"nonBundleOutputConfiguration", 0);
    v11 = [(FCNewsTabiTagSuggestionsOutputConfiguration *)v9 initWithDictionary:v10];

    if (v11)
    {
      v12 = v11;
      v13 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"recipeEventAggregationConfiguration", 0);
      v14 = [[FCNewsTabiRecipeEventAggregationConfiguration alloc] initWithDictionary:v13];
      if (!v14)
      {
        v15 = FCTabiConfigurationLog;
        if (os_log_type_enabled(FCTabiConfigurationLog, OS_LOG_TYPE_ERROR))
        {
          v21 = v15;
          v22 = [v4 description];
          *buf = 138543362;
          v29 = v22;
          _os_log_error_impl(&dword_1B63EF000, v21, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecipeEventAggregationConfiguration in FCNewsTabiTagSuggestionsConfiguration due to failure to decode configuration from configuration %{public}@", buf, 0xCu);
        }
      }

      v23.receiver = self;
      v23.super_class = FCNewsTabiTagSuggestionsConfiguration;
      v16 = [(FCNewsTabiTagSuggestionsConfiguration *)&v23 init];
      p_isa = &v16->super.isa;
      if (v16)
      {
        objc_storeStrong(&v16->_bundleOutputConfiguration, v7);
        objc_storeStrong(p_isa + 2, v11);
        objc_storeStrong(p_isa + 3, v14);
      }

      self = p_isa;

      v18 = self;
    }

    else
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __60__FCNewsTabiTagSuggestionsConfiguration_initWithDictionary___block_invoke_58;
      v24[3] = &unk_1E7C36F98;
      v25 = v4;
      v18 = __60__FCNewsTabiTagSuggestionsConfiguration_initWithDictionary___block_invoke_58(v24);
      v12 = v25;
    }
  }

  else
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __60__FCNewsTabiTagSuggestionsConfiguration_initWithDictionary___block_invoke;
    v26[3] = &unk_1E7C36F98;
    v27 = v4;
    v18 = __60__FCNewsTabiTagSuggestionsConfiguration_initWithDictionary___block_invoke(v26);
    v8 = v27;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t __60__FCNewsTabiTagSuggestionsConfiguration_initWithDictionary___block_invoke(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiTagSuggestionsConfiguration due to failure to decode bundleOutputConfiguration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __60__FCNewsTabiTagSuggestionsConfiguration_initWithDictionary___block_invoke_58(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiTagSuggestionsConfiguration due to failure to decode nonBundleOutputConfiguration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

@end