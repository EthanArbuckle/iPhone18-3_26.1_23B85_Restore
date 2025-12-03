@interface FCNewsTabiRecipeScoringConfiguration
- (FCNewsTabiRecipeScoringConfiguration)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCNewsTabiRecipeScoringConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  bundleOutputConfiguration = [(FCNewsTabiRecipeScoringConfiguration *)self bundleOutputConfiguration];
  indentedDescription = [bundleOutputConfiguration indentedDescription];
  [v3 appendFormat:@"\n\tbundleOutputConfiguration: %@", indentedDescription];

  nonBundleOutputConfiguration = [(FCNewsTabiRecipeScoringConfiguration *)self nonBundleOutputConfiguration];
  indentedDescription2 = [nonBundleOutputConfiguration indentedDescription];
  [v3 appendFormat:@"\n\tnonBundleOutputConfiguration: %@", indentedDescription2];

  eventAggregationConfiguration = [(FCNewsTabiRecipeScoringConfiguration *)self eventAggregationConfiguration];
  indentedDescription3 = [eventAggregationConfiguration indentedDescription];
  [v3 appendFormat:@"\n\teventAggregationConfiguration: %@;", indentedDescription3];

  bundleInputConfiguration = [(FCNewsTabiRecipeScoringConfiguration *)self bundleInputConfiguration];
  indentedDescription4 = [bundleInputConfiguration indentedDescription];
  [v3 appendFormat:@"\n\tbundleInputConfiguration: %@", indentedDescription4];

  nonBundleInputConfiguration = [(FCNewsTabiRecipeScoringConfiguration *)self nonBundleInputConfiguration];
  indentedDescription5 = [nonBundleInputConfiguration indentedDescription];
  [v3 appendFormat:@"\n\tnonBundleInputConfiguration: %@", indentedDescription5];

  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiRecipeScoringConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [FCNewsTabiRecipeScoringOutputConfiguration alloc];
  v6 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"bundleOutputConfiguration", 0);
  v7 = [(FCNewsTabiRecipeScoringOutputConfiguration *)v5 initWithDictionary:v6];

  if (v7)
  {
    v8 = v7;
    v9 = [FCNewsTabiRecipeScoringOutputConfiguration alloc];
    v10 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"nonBundleOutputConfiguration", 0);
    v11 = [(FCNewsTabiRecipeScoringOutputConfiguration *)v9 initWithDictionary:v10];

    if (v11)
    {
      v12 = v11;
      v13 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"eventAggregationConfiguration", 0);
      v14 = v13;
      if (v13)
      {
        v15 = v13;
        v16 = [[FCNewsTabiRecipeEventAggregationConfiguration alloc] initWithDictionary:v15];
        v17 = v16;
        if (v16)
        {
          v36 = v16;
          v35 = v16;
          v18 = [FCNewsTabiRecipeScoringInputConfiguration alloc];
          v19 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"bundleInputConfiguration", 0);
          v20 = [(FCNewsTabiRecipeScoringInputConfiguration *)v18 initWithDictionary:v19];

          obj = v20;
          if (v20)
          {
            v34 = v20;
            v21 = [FCNewsTabiRecipeScoringInputConfiguration alloc];
            v22 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"nonBundleInputConfiguration", 0);
            v23 = [(FCNewsTabiRecipeScoringInputConfiguration *)v21 initWithDictionary:v22];

            v33 = v23;
            if (v23)
            {
              v32 = v23;
              v38.receiver = self;
              v38.super_class = FCNewsTabiRecipeScoringConfiguration;
              v24 = [(FCNewsTabiRecipeScoringConfiguration *)&v38 init];
              v25 = v23;
              p_isa = &v24->super.isa;
              v17 = v36;
              if (v24)
              {
                objc_storeStrong(&v24->_bundleOutputConfiguration, v7);
                objc_storeStrong(p_isa + 2, v11);
                objc_storeStrong(p_isa + 3, v36);
                objc_storeStrong(p_isa + 4, obj);
                objc_storeStrong(p_isa + 5, v25);
              }

              self = p_isa;
              selfCopy = self;
              v28 = v32;
            }

            else
            {
              v39[0] = MEMORY[0x1E69E9820];
              v39[1] = 3221225472;
              v39[2] = __59__FCNewsTabiRecipeScoringConfiguration_initWithDictionary___block_invoke_20;
              v39[3] = &unk_1E7C36F98;
              v40 = dictionaryCopy;
              selfCopy = __59__FCNewsTabiRecipeScoringConfiguration_initWithDictionary___block_invoke_20(v39);
              v28 = v40;
              v17 = v36;
            }

            v30 = v34;
          }

          else
          {
            v41[0] = MEMORY[0x1E69E9820];
            v41[1] = 3221225472;
            v41[2] = __59__FCNewsTabiRecipeScoringConfiguration_initWithDictionary___block_invoke_19;
            v41[3] = &unk_1E7C36F98;
            v42 = dictionaryCopy;
            selfCopy = __59__FCNewsTabiRecipeScoringConfiguration_initWithDictionary___block_invoke_19(v41);
            v30 = v42;
            v17 = v36;
          }

          v29 = v35;
        }

        else
        {
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = __59__FCNewsTabiRecipeScoringConfiguration_initWithDictionary___block_invoke_17;
          v43[3] = &unk_1E7C36F98;
          v44 = v15;
          selfCopy = __59__FCNewsTabiRecipeScoringConfiguration_initWithDictionary___block_invoke_17(v43);
          v29 = v44;
        }
      }

      else
      {
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __59__FCNewsTabiRecipeScoringConfiguration_initWithDictionary___block_invoke_15;
        v45[3] = &unk_1E7C36F98;
        v46 = dictionaryCopy;
        selfCopy = __59__FCNewsTabiRecipeScoringConfiguration_initWithDictionary___block_invoke_15(v45);
        v15 = v46;
      }
    }

    else
    {
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __59__FCNewsTabiRecipeScoringConfiguration_initWithDictionary___block_invoke_14;
      v47[3] = &unk_1E7C36F98;
      v48 = dictionaryCopy;
      selfCopy = __59__FCNewsTabiRecipeScoringConfiguration_initWithDictionary___block_invoke_14(v47);
      v12 = v48;
    }
  }

  else
  {
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __59__FCNewsTabiRecipeScoringConfiguration_initWithDictionary___block_invoke;
    v49[3] = &unk_1E7C36F98;
    v50 = dictionaryCopy;
    selfCopy = __59__FCNewsTabiRecipeScoringConfiguration_initWithDictionary___block_invoke(v49);
    v8 = v50;
  }

  return selfCopy;
}

uint64_t __59__FCNewsTabiRecipeScoringConfiguration_initWithDictionary___block_invoke(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecipeScoringOutputConfiguration due to failure to decode bundleOutputConfiguration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __59__FCNewsTabiRecipeScoringConfiguration_initWithDictionary___block_invoke_14(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecipeScoringOutputConfiguration due to failure to decode nonBundleOutputConfiguration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __59__FCNewsTabiRecipeScoringConfiguration_initWithDictionary___block_invoke_15(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecipeEventAggregationConfiguration due to failure to decode event aggregation configuration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __59__FCNewsTabiRecipeScoringConfiguration_initWithDictionary___block_invoke_17(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecipeEventAggregationConfiguration due to failure to decode configuration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __59__FCNewsTabiRecipeScoringConfiguration_initWithDictionary___block_invoke_19(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecipeScoringInputConfiguration due to failure to decode bundleInputConfiguration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __59__FCNewsTabiRecipeScoringConfiguration_initWithDictionary___block_invoke_20(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiRecipeScoringInputConfiguration due to failure to decode nonBundleInputConfiguration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

@end