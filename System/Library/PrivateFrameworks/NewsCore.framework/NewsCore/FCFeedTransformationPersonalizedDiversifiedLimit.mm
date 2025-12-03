@interface FCFeedTransformationPersonalizedDiversifiedLimit
+ (id)transformationWithFunctionProvider:(id)provider limit:(unint64_t)limit;
- (id)transformFeedItems:(id)items;
- (id)transformFeedItems:(id)items withRespectToLimit:(unint64_t)limit;
@end

@implementation FCFeedTransformationPersonalizedDiversifiedLimit

+ (id)transformationWithFunctionProvider:(id)provider limit:(unint64_t)limit
{
  providerCopy = provider;
  v6 = objc_opt_new();
  [v6 setLimit:limit];
  [v6 setFunctionProvider:providerCopy];

  return v6;
}

- (id)transformFeedItems:(id)items
{
  itemsCopy = items;
  v5 = [(FCFeedTransformationPersonalizedDiversifiedLimit *)self transformFeedItems:itemsCopy withRespectToLimit:[(FCFeedTransformationPersonalizedDiversifiedLimit *)self limit]];

  return v5;
}

- (id)transformFeedItems:(id)items withRespectToLimit:(unint64_t)limit
{
  itemsCopy = items;
  functionProvider = [(FCFeedTransformationPersonalizedDiversifiedLimit *)self functionProvider];

  if (functionProvider)
  {
    functionProvider2 = [(FCFeedTransformationPersonalizedDiversifiedLimit *)self functionProvider];
    v9 = [functionProvider2 diversifyItems:itemsCopy limit:limit];
  }

  else
  {
    v9 = itemsCopy;
  }

  return v9;
}

@end