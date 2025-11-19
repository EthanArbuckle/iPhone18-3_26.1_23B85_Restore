@interface FCNewsPersonalizationEventConditionalsConfigurations
- (FCNewsPersonalizationEventConditionalsConfigurations)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsPersonalizationEventConditionalsConfigurations

- (FCNewsPersonalizationEventConditionalsConfigurations)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FCNewsPersonalizationEventConditionalsConfigurations;
  v5 = [(FCNewsPersonalizationEventConditionalsConfigurations *)&v10 init];
  if (v5)
  {
    v6 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"articleRead", 0);
    v7 = [[FCNewsPersonalizationArticleReadEventConditionals alloc] initWithDictionary:v6];
    articleReadEventConditionals = v5->_articleReadEventConditionals;
    v5->_articleReadEventConditionals = v7;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(FCNewsPersonalizationEventConditionalsConfigurations *)self articleReadEventConditionals];
  [v3 appendFormat:@"; articleReadEventConditionals: %@", v4];

  [v3 appendString:@">"];

  return v3;
}

@end