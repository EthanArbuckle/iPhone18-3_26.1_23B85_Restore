@interface FCNewsTabiFeedPersonalizationConfiguration
- (FCNewsTabiFeedPersonalizationConfiguration)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsTabiFeedPersonalizationConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(FCNewsTabiFeedPersonalizationConfiguration *)self bundleOutputConfiguration];
  v5 = [v4 indentedDescription];
  [v3 appendFormat:@"\n\tbundleOutputConfiguration: %@", v5];

  [v3 appendFormat:@"\n\tfullBodyEmbeddingDimension: %lu", -[FCNewsTabiFeedPersonalizationConfiguration fullBodyEmbeddingDimension](self, "fullBodyEmbeddingDimension")];
  [v3 appendFormat:@"\n\tmaxTopicIds: %lu", -[FCNewsTabiFeedPersonalizationConfiguration maxTopicIds](self, "maxTopicIds")];
  v6 = [(FCNewsTabiFeedPersonalizationConfiguration *)self nonBundleOutputConfiguration];
  v7 = [v6 indentedDescription];
  [v3 appendFormat:@"\n\tnonBundleOutputConfiguration: %@", v7];

  [v3 appendFormat:@"\n\ttitleEmbeddingDimension: %lu", -[FCNewsTabiFeedPersonalizationConfiguration titleEmbeddingDimension](self, "titleEmbeddingDimension")];
  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiFeedPersonalizationConfiguration)initWithDictionary:(id)a3
{
  v5 = a3;
  v6 = [FCNewsTabiFeedPersonalizationOutputConfiguration alloc];
  v7 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"bundleOutputConfiguration", 0);
  v8 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)v6 initWithDictionary:v7];

  if (v8)
  {
    v9 = v8;
    v10 = FCAppConfigurationNumberValue(v5, @"fullBodyEmbeddingDimension", 0);
    v11 = v10;
    if (v10)
    {
      v12 = v10;
      v13 = FCAppConfigurationNumberValue(v5, @"maxTopicIds", 0);
      v14 = v13;
      if (v13)
      {
        v27 = v12;
        v15 = v13;
        v16 = [FCNewsTabiFeedPersonalizationOutputConfiguration alloc];
        v17 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"nonBundleOutputConfiguration", 0);
        v18 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)v16 initWithDictionary:v17];

        if (v18)
        {
          v26 = v18;
          FCAppConfigurationNumberValue(v5, @"titleEmbeddingDimension", 0);
          v20 = v19 = v15;
          if (v20)
          {
            v28.receiver = self;
            v28.super_class = FCNewsTabiFeedPersonalizationConfiguration;
            v21 = [(FCNewsTabiFeedPersonalizationConfiguration *)&v28 init];
            v22 = v21;
            if (v21)
            {
              objc_storeStrong(&v21->_dictionary, a3);
              objc_storeStrong(&v22->_bundleOutputConfiguration, v8);
              v22->_fullBodyEmbeddingDimension = [v27 intValue];
              v22->_maxTopicIds = [v19 intValue];
              objc_storeStrong(&v22->_nonBundleOutputConfiguration, v18);
              v22->_titleEmbeddingDimension = [v20 intValue];
            }

            self = v22;
            v23 = self;
          }

          else
          {
            v29[0] = MEMORY[0x1E69E9820];
            v29[1] = 3221225472;
            v29[2] = __65__FCNewsTabiFeedPersonalizationConfiguration_initWithDictionary___block_invoke_67;
            v29[3] = &unk_1E7C36F98;
            v30 = v5;
            v23 = __65__FCNewsTabiFeedPersonalizationConfiguration_initWithDictionary___block_invoke_67(v29);
          }

          v24 = v26;
        }

        else
        {
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __65__FCNewsTabiFeedPersonalizationConfiguration_initWithDictionary___block_invoke_66;
          v31[3] = &unk_1E7C36F98;
          v32 = v5;
          v23 = __65__FCNewsTabiFeedPersonalizationConfiguration_initWithDictionary___block_invoke_66(v31);
          v24 = v32;
          v19 = v15;
        }

        v12 = v27;
      }

      else
      {
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __65__FCNewsTabiFeedPersonalizationConfiguration_initWithDictionary___block_invoke_65;
        v33[3] = &unk_1E7C36F98;
        v34 = v5;
        v23 = __65__FCNewsTabiFeedPersonalizationConfiguration_initWithDictionary___block_invoke_65(v33);
        v19 = v34;
      }
    }

    else
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __65__FCNewsTabiFeedPersonalizationConfiguration_initWithDictionary___block_invoke_64;
      v35[3] = &unk_1E7C36F98;
      v36 = v5;
      v23 = __65__FCNewsTabiFeedPersonalizationConfiguration_initWithDictionary___block_invoke_64(v35);
      v12 = v36;
    }
  }

  else
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __65__FCNewsTabiFeedPersonalizationConfiguration_initWithDictionary___block_invoke;
    v37[3] = &unk_1E7C36F98;
    v38 = v5;
    v23 = __65__FCNewsTabiFeedPersonalizationConfiguration_initWithDictionary___block_invoke(v37);
    v9 = v38;
  }

  return v23;
}

uint64_t __65__FCNewsTabiFeedPersonalizationConfiguration_initWithDictionary___block_invoke(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiFeedPersonalizationConfiguration due to failure to decode bundleOutputConfiguration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __65__FCNewsTabiFeedPersonalizationConfiguration_initWithDictionary___block_invoke_64(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiFeedPersonalizationConfiguration due to failure to decode fullBodyEmbeddingDimension from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __65__FCNewsTabiFeedPersonalizationConfiguration_initWithDictionary___block_invoke_65(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiFeedPersonalizationConfiguration due to failure to decode maxTopicIds from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __65__FCNewsTabiFeedPersonalizationConfiguration_initWithDictionary___block_invoke_66(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiFeedPersonalizationConfiguration due to failure to decode nonBundleOutputConfiguration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __65__FCNewsTabiFeedPersonalizationConfiguration_initWithDictionary___block_invoke_67(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiFeedPersonalizationConfiguration due to failure to decode titleEmbeddingDimension from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

@end