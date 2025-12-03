@interface FCNewsPersonalizationAggregateModificationConfiguration
- (FCNewsPersonalizationAggregateModificationConfiguration)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCNewsPersonalizationAggregateModificationConfiguration

- (FCNewsPersonalizationAggregateModificationConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = FCNewsPersonalizationAggregateModificationConfiguration;
  v5 = [(FCNewsPersonalizationAggregateModificationConfiguration *)&v17 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"baselineModificationData", 0);
  v7 = [[FCNewsPersonalizationAggregateModificationData alloc] initWithDictionary:v6];
  if (!v7)
  {
LABEL_7:

    v15 = 0;
    goto LABEL_8;
  }

  v8 = v7;
  v9 = v7;
  v10 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"aggregateModificationData", 0);
  v11 = [[FCNewsPersonalizationAggregateModificationData alloc] initWithDictionary:v10];
  v12 = v11;
  if (!v11)
  {

    goto LABEL_7;
  }

  v13 = v11;
  objc_storeStrong(&v5->_baselineModificationData, v8);
  aggregateModificationData = v5->_aggregateModificationData;
  v5->_aggregateModificationData = v13;

LABEL_5:
  v15 = v5;
LABEL_8:

  return v15;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  baselineModificationData = [(FCNewsPersonalizationAggregateModificationConfiguration *)self baselineModificationData];
  [v3 appendFormat:@"; baselineModificationData: %@", baselineModificationData];

  aggregateModificationData = [(FCNewsPersonalizationAggregateModificationConfiguration *)self aggregateModificationData];
  [v3 appendFormat:@"; aggregateModificationData: %@", aggregateModificationData];

  [v3 appendString:@">"];

  return v3;
}

@end