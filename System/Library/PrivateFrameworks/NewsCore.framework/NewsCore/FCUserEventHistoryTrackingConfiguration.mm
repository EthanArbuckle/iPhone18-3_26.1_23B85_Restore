@interface FCUserEventHistoryTrackingConfiguration
- (FCUserEventHistoryTrackingConfiguration)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCUserEventHistoryTrackingConfiguration

- (FCUserEventHistoryTrackingConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = FCUserEventHistoryTrackingConfiguration;
  v5 = [(FCUserEventHistoryTrackingConfiguration *)&v10 init];
  if (v5)
  {
    v6 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"pruningPolicies", 0);
    v7 = [[FCUserEventHistoryPruningPolicies alloc] initWithDictionary:v6];
    if (v7)
    {
      [(FCUserEventHistoryTrackingConfiguration *)v5 setPruningPolicies:v7];
    }

    else
    {
      v8 = +[FCUserEventHistoryPruningPolicies defaultPolicy];
      [(FCUserEventHistoryTrackingConfiguration *)v5 setPruningPolicies:v8];
    }
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  pruningPolicies = [(FCUserEventHistoryTrackingConfiguration *)self pruningPolicies];
  [v3 appendFormat:@"; pruningPolicies: %@", pruningPolicies];

  [v3 appendString:@">"];

  return v3;
}

@end