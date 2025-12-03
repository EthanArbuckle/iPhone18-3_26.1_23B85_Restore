@interface FCNewsTabiNotificationScoringConfiguration
- (FCNewsTabiNotificationScoringConfiguration)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCNewsTabiNotificationScoringConfiguration

- (FCNewsTabiNotificationScoringConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [FCNewsTabiNotificationScoringOutputConfiguration alloc];
  v6 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"bundleOutputConfiguration", 0);
  v7 = [(FCNewsTabiNotificationScoringOutputConfiguration *)v5 initWithDictionary:v6];

  if (v7)
  {
    v8 = v7;
    v9 = FCAppConfigurationNumberValue(dictionaryCopy, @"fullBodyEmbeddingDimension", 0);
    v10 = v9;
    if (v9)
    {
      v11 = v9;
      v12 = FCAppConfigurationNumberValue(dictionaryCopy, @"maxTopicIds", 0);
      v13 = v12;
      if (v12)
      {
        v27 = v12;
        v14 = [FCNewsTabiNotificationScoringOutputConfiguration alloc];
        v15 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"nonBundleOutputConfiguration", 0);
        v16 = [(FCNewsTabiNotificationScoringOutputConfiguration *)v14 initWithDictionary:v15];

        if (v16)
        {
          v17 = v16;
          v26 = FCAppConfigurationNumberValue(dictionaryCopy, @"titleEmbeddingDimension", 0);
          if (v26)
          {
            v28.receiver = self;
            v28.super_class = FCNewsTabiNotificationScoringConfiguration;
            v18 = [(FCNewsTabiNotificationScoringConfiguration *)&v28 init];
            v19 = v18;
            if (v18)
            {
              objc_storeStrong(&v18->_bundleOutputConfiguration, v7);
              v20 = [MEMORY[0x1E696AD98] numberWithInt:4];
              FCAppConfigurationNumberValue(dictionaryCopy, @"maxNotabilityScores", v20);
              v21 = v25 = v17;
              v19->_maxNotabilityScores = [v21 integerValue];

              v17 = v25;
              v19->_fullBodyEmbeddingDimension = [v11 intValue];
              v19->_maxTopicIds = [v27 intValue];
              objc_storeStrong(&v19->_nonBundleOutputConfiguration, v16);
              v19->_titleEmbeddingDimension = [v26 intValue];
            }

            self = v19;
            selfCopy = self;
          }

          else
          {
            v29[0] = MEMORY[0x1E69E9820];
            v29[1] = 3221225472;
            v29[2] = __65__FCNewsTabiNotificationScoringConfiguration_initWithDictionary___block_invoke_70;
            v29[3] = &unk_1E7C36F98;
            v30 = dictionaryCopy;
            selfCopy = __65__FCNewsTabiNotificationScoringConfiguration_initWithDictionary___block_invoke_70(v29);
          }
        }

        else
        {
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __65__FCNewsTabiNotificationScoringConfiguration_initWithDictionary___block_invoke_69;
          v31[3] = &unk_1E7C36F98;
          v32 = dictionaryCopy;
          selfCopy = __65__FCNewsTabiNotificationScoringConfiguration_initWithDictionary___block_invoke_69(v31);
          v17 = v32;
        }

        v23 = v27;
      }

      else
      {
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __65__FCNewsTabiNotificationScoringConfiguration_initWithDictionary___block_invoke_68;
        v33[3] = &unk_1E7C36F98;
        v34 = dictionaryCopy;
        selfCopy = __65__FCNewsTabiNotificationScoringConfiguration_initWithDictionary___block_invoke_68(v33);
        v23 = v34;
      }
    }

    else
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __65__FCNewsTabiNotificationScoringConfiguration_initWithDictionary___block_invoke_67;
      v35[3] = &unk_1E7C36F98;
      v36 = dictionaryCopy;
      selfCopy = __65__FCNewsTabiNotificationScoringConfiguration_initWithDictionary___block_invoke_67(v35);
      v11 = v36;
    }
  }

  else
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __65__FCNewsTabiNotificationScoringConfiguration_initWithDictionary___block_invoke;
    v37[3] = &unk_1E7C36F98;
    v38 = dictionaryCopy;
    selfCopy = __65__FCNewsTabiNotificationScoringConfiguration_initWithDictionary___block_invoke(v37);
    v8 = v38;
  }

  return selfCopy;
}

uint64_t __65__FCNewsTabiNotificationScoringConfiguration_initWithDictionary___block_invoke(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiNotificationScoringConfiguration due to failure to decode bundleOutputConfiguration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __65__FCNewsTabiNotificationScoringConfiguration_initWithDictionary___block_invoke_67(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiNotificationScoringConfiguration due to failure to decode fullBodyEmbeddingDimension from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __65__FCNewsTabiNotificationScoringConfiguration_initWithDictionary___block_invoke_68(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiNotificationScoringConfiguration due to failure to decode maxTopicIds from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __65__FCNewsTabiNotificationScoringConfiguration_initWithDictionary___block_invoke_69(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiNotificationScoringConfiguration due to failure to decode nonBundleOutputConfiguration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __65__FCNewsTabiNotificationScoringConfiguration_initWithDictionary___block_invoke_70(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiNotificationScoringConfiguration due to failure to decode titleEmbeddingDimension from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  bundleOutputConfiguration = [(FCNewsTabiNotificationScoringConfiguration *)self bundleOutputConfiguration];
  indentedDescription = [bundleOutputConfiguration indentedDescription];
  [v3 appendFormat:@"\n\tbundleOutputConfiguration: %@", indentedDescription];

  [v3 appendFormat:@"\n\tfullBodyEmbeddingDimension: %lu", -[FCNewsTabiNotificationScoringConfiguration fullBodyEmbeddingDimension](self, "fullBodyEmbeddingDimension")];
  [v3 appendFormat:@"\n\tmaxNotabilityScores: %lu", -[FCNewsTabiNotificationScoringConfiguration maxNotabilityScores](self, "maxNotabilityScores")];
  [v3 appendFormat:@"\n\tmaxTopicIds: %lu", -[FCNewsTabiNotificationScoringConfiguration maxTopicIds](self, "maxTopicIds")];
  nonBundleOutputConfiguration = [(FCNewsTabiNotificationScoringConfiguration *)self nonBundleOutputConfiguration];
  indentedDescription2 = [nonBundleOutputConfiguration indentedDescription];
  [v3 appendFormat:@"\n\tnonBundleOutputConfiguration: %@", indentedDescription2];

  [v3 appendFormat:@"\n\ttitleEmbeddingDimension: %lu", -[FCNewsTabiNotificationScoringConfiguration titleEmbeddingDimension](self, "titleEmbeddingDimension")];
  [v3 appendString:@"\n>"];

  return v3;
}

@end