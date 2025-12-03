@interface FCNewsTabiMyMagazinesConfiguration
- (FCNewsTabiMyMagazinesConfiguration)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCNewsTabiMyMagazinesConfiguration

- (FCNewsTabiMyMagazinesConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = FCAppConfigurationNumberValue(dictionaryCopy, @"maxTopicIds", 0);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = FCAppConfigurationNumberValue(dictionaryCopy, @"titleEmbeddingDimension", 0);
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      v11 = FCAppConfigurationNumberValue(dictionaryCopy, @"fullBodyEmbeddingDimension", 0);
      v12 = v11;
      if (v11)
      {
        v13 = v11;
        v14 = FCAppConfigurationStringValue(dictionaryCopy, @"scoreOutputName", 0);
        v15 = v14;
        if (v14)
        {
          v20 = v14;
          v21.receiver = self;
          v21.super_class = FCNewsTabiMyMagazinesConfiguration;
          v16 = [(FCNewsTabiMyMagazinesConfiguration *)&v21 init];
          if (v16)
          {
            v16->_maxTopicIds = [v7 intValue];
            v16->_titleEmbeddingDimension = [v10 intValue];
            v16->_fullBodyEmbeddingDimension = [v13 intValue];
            objc_storeStrong(&v16->_scoreOutputName, v15);
          }

          self = v16;
          selfCopy = self;
          v18 = v20;
        }

        else
        {
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __57__FCNewsTabiMyMagazinesConfiguration_initWithDictionary___block_invoke_62;
          v22[3] = &unk_1E7C36F98;
          v23 = dictionaryCopy;
          selfCopy = __57__FCNewsTabiMyMagazinesConfiguration_initWithDictionary___block_invoke_62(v22);
          v18 = v23;
        }
      }

      else
      {
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __57__FCNewsTabiMyMagazinesConfiguration_initWithDictionary___block_invoke_61;
        v24[3] = &unk_1E7C36F98;
        v25 = dictionaryCopy;
        selfCopy = __57__FCNewsTabiMyMagazinesConfiguration_initWithDictionary___block_invoke_61(v24);
        v13 = v25;
      }
    }

    else
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __57__FCNewsTabiMyMagazinesConfiguration_initWithDictionary___block_invoke_60;
      v26[3] = &unk_1E7C36F98;
      v27 = dictionaryCopy;
      selfCopy = __57__FCNewsTabiMyMagazinesConfiguration_initWithDictionary___block_invoke_60(v26);
      v10 = v27;
    }
  }

  else
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __57__FCNewsTabiMyMagazinesConfiguration_initWithDictionary___block_invoke;
    v28[3] = &unk_1E7C36F98;
    v29 = dictionaryCopy;
    selfCopy = __57__FCNewsTabiMyMagazinesConfiguration_initWithDictionary___block_invoke(v28);
    v7 = v29;
  }

  return selfCopy;
}

uint64_t __57__FCNewsTabiMyMagazinesConfiguration_initWithDictionary___block_invoke(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiMyMagazinesConfiguration due to failure to decode maxTopicIds from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __57__FCNewsTabiMyMagazinesConfiguration_initWithDictionary___block_invoke_60(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiMyMagazinesConfiguration due to failure to decode titleEmbeddingDimension from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __57__FCNewsTabiMyMagazinesConfiguration_initWithDictionary___block_invoke_61(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiMyMagazinesConfiguration due to failure to decode fullBodyEmbeddingDimension from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __57__FCNewsTabiMyMagazinesConfiguration_initWithDictionary___block_invoke_62(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiMyMagazinesConfiguration due to failure to decode scoreOutputName from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  [v3 appendFormat:@"\n\tmaxTopicIds: %lu", -[FCNewsTabiMyMagazinesConfiguration maxTopicIds](self, "maxTopicIds")];
  [v3 appendFormat:@"\n\ttitleEmbeddingDimension: %lu", -[FCNewsTabiMyMagazinesConfiguration titleEmbeddingDimension](self, "titleEmbeddingDimension")];
  [v3 appendFormat:@"\n\tfullBodyEmbeddingDimension: %lu", -[FCNewsTabiMyMagazinesConfiguration fullBodyEmbeddingDimension](self, "fullBodyEmbeddingDimension")];
  scoreOutputName = [(FCNewsTabiMyMagazinesConfiguration *)self scoreOutputName];
  [v3 appendFormat:@"\n\tscoreOutputName: %@;", scoreOutputName];

  [v3 appendString:@"\n>"];

  return v3;
}

@end