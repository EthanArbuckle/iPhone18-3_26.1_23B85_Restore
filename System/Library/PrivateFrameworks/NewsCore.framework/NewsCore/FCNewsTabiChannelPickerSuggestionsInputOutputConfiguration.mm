@interface FCNewsTabiChannelPickerSuggestionsInputOutputConfiguration
- (FCNewsTabiChannelPickerSuggestionsInputOutputConfiguration)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCNewsTabiChannelPickerSuggestionsInputOutputConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  contextFeatureKey = [(FCNewsTabiChannelPickerSuggestionsInputOutputConfiguration *)self contextFeatureKey];
  [v3 appendFormat:@"\n\tcontextFeatureKey: %@;", contextFeatureKey];

  generalChannelSuggestionsOutputName = [(FCNewsTabiChannelPickerSuggestionsInputOutputConfiguration *)self generalChannelSuggestionsOutputName];
  [v3 appendFormat:@"\n\tgeneralChannelSuggestionsOutputName: %@;", generalChannelSuggestionsOutputName];

  generalChannelSuggestionsScoreOutputName = [(FCNewsTabiChannelPickerSuggestionsInputOutputConfiguration *)self generalChannelSuggestionsScoreOutputName];
  [v3 appendFormat:@"\n\tgeneralChannelSuggestionsScoreOutputName: %@;", generalChannelSuggestionsScoreOutputName];

  newsPlusChannelSuggestionsOutputName = [(FCNewsTabiChannelPickerSuggestionsInputOutputConfiguration *)self newsPlusChannelSuggestionsOutputName];
  [v3 appendFormat:@"\n\tnewsPlusChannelSuggestionsOutputName: %@;", newsPlusChannelSuggestionsOutputName];

  newsPlusChannelSuggestionsScoreOutputName = [(FCNewsTabiChannelPickerSuggestionsInputOutputConfiguration *)self newsPlusChannelSuggestionsScoreOutputName];
  [v3 appendFormat:@"\n\tnewsPlusChannelSuggestionsScoreOutputName: %@;", newsPlusChannelSuggestionsScoreOutputName];

  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiChannelPickerSuggestionsInputOutputConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = FCAppConfigurationStringValue(dictionaryCopy, @"contextFeatureKey", 0);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = FCAppConfigurationStringValue(dictionaryCopy, @"generalChannelSuggestionsOutputName", 0);
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      v11 = FCAppConfigurationStringValue(dictionaryCopy, @"generalChannelSuggestionsScoreOutputName", 0);
      v12 = v11;
      if (v11)
      {
        v13 = v11;
        v14 = FCAppConfigurationStringValue(dictionaryCopy, @"newsPlusChannelSuggestionsOutputName", 0);
        v15 = v14;
        if (v14)
        {
          v24 = v13;
          v23 = v14;
          v16 = FCAppConfigurationStringValue(dictionaryCopy, @"newsPlusChannelSuggestionsScoreOutputName", 0);
          v17 = v16;
          if (v16)
          {
            v18 = v16;
            v25.receiver = self;
            v25.super_class = FCNewsTabiChannelPickerSuggestionsInputOutputConfiguration;
            v19 = [(FCNewsTabiChannelPickerSuggestionsInputOutputConfiguration *)&v25 init];
            p_isa = &v19->super.isa;
            if (v19)
            {
              objc_storeStrong(&v19->_contextFeatureKey, v6);
              objc_storeStrong(p_isa + 2, v9);
              objc_storeStrong(p_isa + 3, v12);
              objc_storeStrong(p_isa + 4, v15);
              objc_storeStrong(p_isa + 5, v17);
            }

            self = p_isa;

            selfCopy = self;
          }

          else
          {
            selfCopy = 0;
          }

          v13 = v24;
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end