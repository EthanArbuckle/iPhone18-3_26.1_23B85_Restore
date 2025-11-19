@interface FCNewsTabiRecipeEventAggregationConditions
- (FCNewsTabiRecipeEventAggregationConditions)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsTabiRecipeEventAggregationConditions

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [self->_cookModeViewed indentedDescription];
  [v3 appendFormat:@"\n\tcookModeViewed: %@", v4];

  v5 = [self->_recipeSaved indentedDescription];
  [v3 appendFormat:@"\n\trecipeSaved: %@", v5];

  v6 = [self->_recipeViewed indentedDescription];
  [v3 appendFormat:@"\n\trecipeViewed: %@", v6];

  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiRecipeEventAggregationConditions)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = FCNewsTabiRecipeEventAggregationConditions;
  v5 = [(FCNewsTabiRecipeEventAggregationConditions *)&v19 init];
  if (v5)
  {
    v6 = [FCNewsTabiEventAggregationDurationEventConditions alloc];
    v7 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"cookModeViewedConditions", 0);
    v8 = [(FCNewsTabiEventAggregationDurationEventConditions *)v6 initWithDictionary:v7];
    cookModeViewed = v5->_cookModeViewed;
    v5->_cookModeViewed = v8;

    v10 = [FCNewsTabiEventAggregationBaseEventConditions alloc];
    v11 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"recipeSavedConditions", 0);
    v12 = [(FCNewsTabiEventAggregationBaseEventConditions *)v10 initWithDictionary:v11];
    recipeSaved = v5->_recipeSaved;
    v5->_recipeSaved = v12;

    v14 = [FCNewsTabiEventAggregationDurationEventConditions alloc];
    v15 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"recipeViewedConditions", 0);
    v16 = [(FCNewsTabiEventAggregationDurationEventConditions *)v14 initWithDictionary:v15];
    recipeViewed = v5->_recipeViewed;
    v5->_recipeViewed = v16;
  }

  return v5;
}

@end