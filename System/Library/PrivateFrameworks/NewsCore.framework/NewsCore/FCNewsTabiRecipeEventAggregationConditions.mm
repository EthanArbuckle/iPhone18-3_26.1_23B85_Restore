@interface FCNewsTabiRecipeEventAggregationConditions
- (FCNewsTabiRecipeEventAggregationConditions)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCNewsTabiRecipeEventAggregationConditions

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  indentedDescription = [self->_cookModeViewed indentedDescription];
  [v3 appendFormat:@"\n\tcookModeViewed: %@", indentedDescription];

  indentedDescription2 = [self->_recipeSaved indentedDescription];
  [v3 appendFormat:@"\n\trecipeSaved: %@", indentedDescription2];

  indentedDescription3 = [self->_recipeViewed indentedDescription];
  [v3 appendFormat:@"\n\trecipeViewed: %@", indentedDescription3];

  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiRecipeEventAggregationConditions)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = FCNewsTabiRecipeEventAggregationConditions;
  v5 = [(FCNewsTabiRecipeEventAggregationConditions *)&v19 init];
  if (v5)
  {
    v6 = [FCNewsTabiEventAggregationDurationEventConditions alloc];
    v7 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"cookModeViewedConditions", 0);
    v8 = [(FCNewsTabiEventAggregationDurationEventConditions *)v6 initWithDictionary:v7];
    cookModeViewed = v5->_cookModeViewed;
    v5->_cookModeViewed = v8;

    v10 = [FCNewsTabiEventAggregationBaseEventConditions alloc];
    v11 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"recipeSavedConditions", 0);
    v12 = [(FCNewsTabiEventAggregationBaseEventConditions *)v10 initWithDictionary:v11];
    recipeSaved = v5->_recipeSaved;
    v5->_recipeSaved = v12;

    v14 = [FCNewsTabiEventAggregationDurationEventConditions alloc];
    v15 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"recipeViewedConditions", 0);
    v16 = [(FCNewsTabiEventAggregationDurationEventConditions *)v14 initWithDictionary:v15];
    recipeViewed = v5->_recipeViewed;
    v5->_recipeViewed = v16;
  }

  return v5;
}

@end