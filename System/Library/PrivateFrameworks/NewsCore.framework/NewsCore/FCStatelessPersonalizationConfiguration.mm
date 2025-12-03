@interface FCStatelessPersonalizationConfiguration
- (FCStatelessPersonalizationConfiguration)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCStatelessPersonalizationConfiguration

- (FCStatelessPersonalizationConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = FCStatelessPersonalizationConfiguration;
  v5 = [(FCStatelessPersonalizationConfiguration *)&v10 init];
  if (v5)
  {
    v6 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"enablementRequirements", 0);
    v7 = [[FCStatelessPersonalizationEnablementRequirements alloc] initWithDictionary:v6];
    enablementRequirements = v5->_enablementRequirements;
    v5->_enablementRequirements = v7;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  enablementRequirements = [(FCStatelessPersonalizationConfiguration *)self enablementRequirements];
  [v3 appendFormat:@"; enablementRequirements: %@", enablementRequirements];

  [v3 appendString:@">"];

  return v3;
}

@end