@interface FCNewsTabiEventAggregationConfiguration
- (FCNewsTabiEventAggregationConfiguration)initWithDictionary:(id)dictionary outputs:(id)outputs;
- (id)description;
@end

@implementation FCNewsTabiEventAggregationConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  eventConditions = [(FCNewsTabiEventAggregationConfiguration *)self eventConditions];
  indentedDescription = [eventConditions indentedDescription];
  [v3 appendFormat:@"\n\teventConditions: %@;", indentedDescription];

  [v3 appendFormat:@"\n\tfullBodyEmbeddingDimension: %lu;", -[FCNewsTabiEventAggregationConfiguration fullBodyEmbeddingDimension](self, "fullBodyEmbeddingDimension")];
  [v3 appendFormat:@"\n\tmaxTopicIds: %lu;", -[FCNewsTabiEventAggregationConfiguration maxTopicIds](self, "maxTopicIds")];
  [v3 appendFormat:@"\n\tmaxSessionEvents: %lu;", -[FCNewsTabiEventAggregationConfiguration maxSessionEvents](self, "maxSessionEvents")];
  outputs = [(FCNewsTabiEventAggregationConfiguration *)self outputs];
  indentedDescription2 = [outputs indentedDescription];
  [v3 appendFormat:@"\n\toutputs: %@;", indentedDescription2];

  [v3 appendFormat:@"\n\ttitleEmbeddingDimension: %lu;", -[FCNewsTabiEventAggregationConfiguration titleEmbeddingDimension](self, "titleEmbeddingDimension")];
  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiEventAggregationConfiguration)initWithDictionary:(id)dictionary outputs:(id)outputs
{
  dictionaryCopy = dictionary;
  outputsCopy = outputs;
  v9 = [FCNewsTabiEventAggregationConditions alloc];
  v10 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"eventConditions", 0);
  v11 = [(FCNewsTabiEventAggregationConditions *)v9 initWithDictionary:v10];

  if (v11)
  {
    v12 = v11;
    v13 = FCAppConfigurationNumberValue(dictionaryCopy, @"fullBodyEmbeddingDimension", 0);
    v14 = v13;
    if (v13)
    {
      v15 = v13;
      v16 = FCAppConfigurationNumberValue(dictionaryCopy, @"maxTopicIds", 0);
      v17 = v16;
      if (v16)
      {
        v18 = v16;
        v19 = FCAppConfigurationNumberValue(dictionaryCopy, @"maxSessionEvents", 0);
        v33 = v19;
        if (v19)
        {
          v30 = v18;
          v32 = v19;
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __70__FCNewsTabiEventAggregationConfiguration_initWithDictionary_outputs___block_invoke_26;
          v39[3] = &unk_1E7C3BA50;
          v20 = dictionaryCopy;
          v40 = v20;
          v41 = outputsCopy;
          v21 = __70__FCNewsTabiEventAggregationConfiguration_initWithDictionary_outputs___block_invoke_26(v39);
          obj = v21;
          if (v21)
          {
            v28 = v21;
            v29 = FCAppConfigurationNumberValue(v20, @"titleEmbeddingDimension", 0);
            if (v29)
            {
              v34.receiver = self;
              v34.super_class = FCNewsTabiEventAggregationConfiguration;
              v22 = [(FCNewsTabiEventAggregationConfiguration *)&v34 init];
              v23 = v22;
              v18 = v30;
              if (v22)
              {
                objc_storeStrong(&v22->_dictionary, dictionary);
                objc_storeStrong(&v23->_eventConditions, v11);
                v23->_fullBodyEmbeddingDimension = [v15 intValue];
                v23->_maxTopicIds = [v30 intValue];
                v23->_maxSessionEvents = [v32 intValue];
                objc_storeStrong(&v23->_outputs, obj);
                v23->_titleEmbeddingDimension = [v29 intValue];
              }

              self = v23;
              selfCopy = self;
            }

            else
            {
              v35[0] = MEMORY[0x1E69E9820];
              v35[1] = 3221225472;
              v35[2] = __70__FCNewsTabiEventAggregationConfiguration_initWithDictionary_outputs___block_invoke_31;
              v35[3] = &unk_1E7C36F98;
              v36 = v20;
              selfCopy = __70__FCNewsTabiEventAggregationConfiguration_initWithDictionary_outputs___block_invoke_31(v35);

              v18 = v30;
            }

            v26 = v28;
          }

          else
          {
            v37[0] = MEMORY[0x1E69E9820];
            v37[1] = 3221225472;
            v37[2] = __70__FCNewsTabiEventAggregationConfiguration_initWithDictionary_outputs___block_invoke_3;
            v37[3] = &unk_1E7C36F98;
            v38 = v20;
            selfCopy = __70__FCNewsTabiEventAggregationConfiguration_initWithDictionary_outputs___block_invoke_3(v37);
            v26 = v38;
            v18 = v30;
          }

          v25 = v32;
        }

        else
        {
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __70__FCNewsTabiEventAggregationConfiguration_initWithDictionary_outputs___block_invoke_25;
          v42[3] = &unk_1E7C36F98;
          v43 = dictionaryCopy;
          selfCopy = __70__FCNewsTabiEventAggregationConfiguration_initWithDictionary_outputs___block_invoke_25(v42);
          v25 = v43;
        }
      }

      else
      {
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __70__FCNewsTabiEventAggregationConfiguration_initWithDictionary_outputs___block_invoke_24;
        v44[3] = &unk_1E7C36F98;
        v45 = dictionaryCopy;
        selfCopy = __70__FCNewsTabiEventAggregationConfiguration_initWithDictionary_outputs___block_invoke_24(v44);
        v18 = v45;
      }
    }

    else
    {
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __70__FCNewsTabiEventAggregationConfiguration_initWithDictionary_outputs___block_invoke_23;
      v46[3] = &unk_1E7C36F98;
      v47 = dictionaryCopy;
      selfCopy = __70__FCNewsTabiEventAggregationConfiguration_initWithDictionary_outputs___block_invoke_23(v46);
      v15 = v47;
    }
  }

  else
  {
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __70__FCNewsTabiEventAggregationConfiguration_initWithDictionary_outputs___block_invoke;
    v48[3] = &unk_1E7C36F98;
    v49 = dictionaryCopy;
    selfCopy = __70__FCNewsTabiEventAggregationConfiguration_initWithDictionary_outputs___block_invoke(v48);
    v12 = v49;
  }

  return selfCopy;
}

uint64_t __70__FCNewsTabiEventAggregationConfiguration_initWithDictionary_outputs___block_invoke(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiEventAggregationConfiguration due to failure to decode eventConditions from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __70__FCNewsTabiEventAggregationConfiguration_initWithDictionary_outputs___block_invoke_23(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiEventAggregationConfiguration due to failure to decode fullBodyEmbeddingDimension from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __70__FCNewsTabiEventAggregationConfiguration_initWithDictionary_outputs___block_invoke_24(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiEventAggregationConfiguration due to failure to decode maxTopicIDs from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __70__FCNewsTabiEventAggregationConfiguration_initWithDictionary_outputs___block_invoke_25(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiEventAggregationConfiguration due to failure to decode maxSessionEvents from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

FCNewsTabiEventAggregationOutputsConfiguration *__70__FCNewsTabiEventAggregationConfiguration_initWithDictionary_outputs___block_invoke_26(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"bundleOutputConfiguration"];
  if (v2)
  {
    v3 = [*(a1 + 32) objectForKeyedSubscript:@"nonBundleOutputConfiguration"];

    if (v3)
    {
      v2 = [[FCNewsTabiEventAggregationOutputsConfiguration alloc] initWithDictionary:*(a1 + 32)];
    }

    else
    {
      v2 = 0;
    }
  }

  v4 = [FCNewsTabiEventAggregationOutputsConfiguration alloc];
  v5 = MEMORY[0x1E695DEC8];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __70__FCNewsTabiEventAggregationConfiguration_initWithDictionary_outputs___block_invoke_2;
  v13 = &unk_1E7C3B110;
  v14 = *(a1 + 40);
  v15 = v2;
  v6 = v2;
  v7 = [v5 fc_array:&v10];
  v8 = [(FCNewsTabiEventAggregationOutputsConfiguration *)v4 initWithOutputs:v7, v10, v11, v12, v13];

  return v8;
}

void __70__FCNewsTabiEventAggregationConfiguration_initWithDictionary_outputs___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 fc_safelyAddObjectsFromArray:v3];
  [v4 fc_safelyAddObject:*(a1 + 40)];
}

uint64_t __70__FCNewsTabiEventAggregationConfiguration_initWithDictionary_outputs___block_invoke_3(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiEventAggregationConfiguration due to failure to decode bundleOutputConfiguration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __70__FCNewsTabiEventAggregationConfiguration_initWithDictionary_outputs___block_invoke_31(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiEventAggregationConfiguration due to failure to decode titleEmbeddingDimension from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

@end