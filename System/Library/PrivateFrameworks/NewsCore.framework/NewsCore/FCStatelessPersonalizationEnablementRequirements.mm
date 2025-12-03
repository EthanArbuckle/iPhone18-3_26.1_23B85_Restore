@interface FCStatelessPersonalizationEnablementRequirements
- (FCStatelessPersonalizationEnablementRequirements)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCStatelessPersonalizationEnablementRequirements

- (FCStatelessPersonalizationEnablementRequirements)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = FCStatelessPersonalizationEnablementRequirements;
  v5 = [(FCStatelessPersonalizationEnablementRequirements *)&v15 init];
  if (v5)
  {
    v6 = FCAppConfigurationNumberValue(dictionaryCopy, @"minimumAggregateCount", 0);
    v7 = FCAppConfigurationNumberValue(dictionaryCopy, @"minumumEventCount", 0);
    if (v6 | v7)
    {
      if (v6)
      {
        longLongValue = [v6 longLongValue];
      }

      else
      {
        longLongValue = -1;
      }

      v5->_minimumAggregateCount = longLongValue;
      if (NFInternalBuild() && (NewsCoreUserDefaults(), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 integerForKey:@"news.features.statelessPersonalization"], v9, v10 == 1))
      {
        v11 = FCStatelessPersonalizationLog;
        if (os_log_type_enabled(FCStatelessPersonalizationLog, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "Stateless Personalization Enabled, overriding enablement requirements to have minimum event count of 10", v14, 2u);
        }

        v5->_minimumEventCount = 10;
      }

      else
      {
        if (v7)
        {
          longLongValue2 = [v7 longLongValue];
        }

        else
        {
          longLongValue2 = -1;
        }

        v5->_minimumEventCount = longLongValue2;
      }
    }

    else
    {

      v5 = 0;
    }
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  [v3 appendFormat:@"; minimumAggregateCount: %lld", -[FCStatelessPersonalizationEnablementRequirements minimumAggregateCount](self, "minimumAggregateCount")];
  [v3 appendFormat:@"; minimumEventCount: %lld", -[FCStatelessPersonalizationEnablementRequirements minimumEventCount](self, "minimumEventCount")];
  [v3 appendString:@">"];

  return v3;
}

@end