@interface FCStatelessPersonalizationConfiguration
- (FCStatelessPersonalizationConfiguration)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCStatelessPersonalizationConfiguration

- (FCStatelessPersonalizationConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FCStatelessPersonalizationConfiguration;
  v5 = [(FCStatelessPersonalizationConfiguration *)&v10 init];
  if (v5)
  {
    v6 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"enablementRequirements", 0);
    v7 = [[FCStatelessPersonalizationEnablementRequirements alloc] initWithDictionary:v6];
    enablementRequirements = v5->_enablementRequirements;
    v5->_enablementRequirements = v7;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(FCStatelessPersonalizationConfiguration *)self enablementRequirements];
  [v3 appendFormat:@"; enablementRequirements: %@", v4];

  [v3 appendString:@">"];

  return v3;
}

@end