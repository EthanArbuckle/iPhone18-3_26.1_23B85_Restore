@interface FCNewsPersonalizationEventConditionalsConfigurations
- (FCNewsPersonalizationEventConditionalsConfigurations)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCNewsPersonalizationEventConditionalsConfigurations

- (FCNewsPersonalizationEventConditionalsConfigurations)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = FCNewsPersonalizationEventConditionalsConfigurations;
  v5 = [(FCNewsPersonalizationEventConditionalsConfigurations *)&v10 init];
  if (v5)
  {
    v6 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"articleRead", 0);
    v7 = [[FCNewsPersonalizationArticleReadEventConditionals alloc] initWithDictionary:v6];
    articleReadEventConditionals = v5->_articleReadEventConditionals;
    v5->_articleReadEventConditionals = v7;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  articleReadEventConditionals = [(FCNewsPersonalizationEventConditionalsConfigurations *)self articleReadEventConditionals];
  [v3 appendFormat:@"; articleReadEventConditionals: %@", articleReadEventConditionals];

  [v3 appendString:@">"];

  return v3;
}

@end