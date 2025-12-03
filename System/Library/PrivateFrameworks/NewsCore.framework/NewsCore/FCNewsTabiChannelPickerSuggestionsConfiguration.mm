@interface FCNewsTabiChannelPickerSuggestionsConfiguration
- (FCNewsTabiChannelPickerSuggestionsConfiguration)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCNewsTabiChannelPickerSuggestionsConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  bundleInputOutputConfiguration = [(FCNewsTabiChannelPickerSuggestionsConfiguration *)self bundleInputOutputConfiguration];
  indentedDescription = [bundleInputOutputConfiguration indentedDescription];
  [v3 appendFormat:@"\n\tbundleInputOutputConfiguration: %@;", indentedDescription];

  [v3 appendFormat:@"\n\tfilterLocationSuggestionsOnlyToAppleNewsLocal: %d;", -[FCNewsTabiChannelPickerSuggestionsConfiguration filterLocationSuggestionsOnlyToAppleNewsLocal](self, "filterLocationSuggestionsOnlyToAppleNewsLocal")];
  nonBundleInputOutputConfiguration = [(FCNewsTabiChannelPickerSuggestionsConfiguration *)self nonBundleInputOutputConfiguration];
  indentedDescription2 = [nonBundleInputOutputConfiguration indentedDescription];
  [v3 appendFormat:@"\n\tnonBundleInputOutputConfiguration: %@;", indentedDescription2];

  userContextConfiguration = [(FCNewsTabiChannelPickerSuggestionsConfiguration *)self userContextConfiguration];
  indentedDescription3 = [userContextConfiguration indentedDescription];
  [v3 appendFormat:@"\n\tuserContextConfiguration: %@;", indentedDescription3];

  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiChannelPickerSuggestionsConfiguration)initWithDictionary:(id)dictionary
{
  v33 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [FCNewsTabiChannelPickerSuggestionsInputOutputConfiguration alloc];
  v6 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"bundleInputOutputConfiguration", 0);
  v7 = [(FCNewsTabiChannelPickerSuggestionsInputOutputConfiguration *)v5 initWithDictionary:v6];

  if (v7)
  {
    v8 = v7;
    v9 = [FCNewsTabiChannelPickerSuggestionsInputOutputConfiguration alloc];
    v10 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"nonBundleInputOutputConfiguration", 0);
    v11 = [(FCNewsTabiChannelPickerSuggestionsInputOutputConfiguration *)v9 initWithDictionary:v10];

    if (v11)
    {
      v12 = v11;
      v26.receiver = self;
      v26.super_class = FCNewsTabiChannelPickerSuggestionsConfiguration;
      v13 = [(FCNewsTabiChannelPickerSuggestionsConfiguration *)&v26 init];
      v14 = v13;
      if (v13)
      {
        objc_storeStrong(&v13->_bundleInputOutputConfiguration, v7);
        objc_storeStrong(&v14->_nonBundleInputOutputConfiguration, v11);
        v15 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"userContextConfiguration", 0);
        v16 = [[FCNewsTabiChannelPickerSuggestionsUserContextConfiguration alloc] initWithDictionary:v15];
        userContextConfiguration = v14->_userContextConfiguration;
        v14->_userContextConfiguration = v16;

        if (NFInternalBuild() && (NewsCoreUserDefaults(), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 BOOLForKey:@"news.news_personalization.should_override_local_channel_picker_configuration"], v18, v19))
        {
          v20 = NewsCoreUserDefaults();
          v21 = [v20 BOOLForKey:@"news.news_personalization.should_filter_location_suggestions_only_to_apple_news_local"];

          v22 = FCTabiConfigurationLog;
          if (os_log_type_enabled(FCTabiConfigurationLog, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v32 = v21;
            _os_log_error_impl(&dword_1B63EF000, v22, OS_LOG_TYPE_ERROR, "See override for filterLocationSuggestionsOnlyToAppleNewsLocal, setting to %d", buf, 8u);
          }

          v14->_filterLocationSuggestionsOnlyToAppleNewsLocal = v21;
        }

        else
        {
          v14->_filterLocationSuggestionsOnlyToAppleNewsLocal = FCAppConfigurationBoolValue(dictionaryCopy, @"filterLocationSuggestionsOnlyToAppleNewsLocal", 0);
        }
      }

      self = v14;
      selfCopy = self;
    }

    else
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __70__FCNewsTabiChannelPickerSuggestionsConfiguration_initWithDictionary___block_invoke_61;
      v27[3] = &unk_1E7C36F98;
      v28 = dictionaryCopy;
      selfCopy = __70__FCNewsTabiChannelPickerSuggestionsConfiguration_initWithDictionary___block_invoke_61(v27);
      v12 = v28;
    }
  }

  else
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __70__FCNewsTabiChannelPickerSuggestionsConfiguration_initWithDictionary___block_invoke;
    v29[3] = &unk_1E7C36F98;
    v30 = dictionaryCopy;
    selfCopy = __70__FCNewsTabiChannelPickerSuggestionsConfiguration_initWithDictionary___block_invoke(v29);
    v8 = v30;
  }

  v24 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

uint64_t __70__FCNewsTabiChannelPickerSuggestionsConfiguration_initWithDictionary___block_invoke(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiChannelPickerSuggestionsConfiguration due to failure to decode bundleInputOutputConfiguration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __70__FCNewsTabiChannelPickerSuggestionsConfiguration_initWithDictionary___block_invoke_61(uint64_t a1)
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
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiChannelPickerSuggestionsConfiguration due to failure to decode nonBundleInputOutputConfiguration from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

@end