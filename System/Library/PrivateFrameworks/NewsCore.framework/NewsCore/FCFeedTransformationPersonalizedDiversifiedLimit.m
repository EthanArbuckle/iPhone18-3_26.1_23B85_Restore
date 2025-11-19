@interface FCFeedTransformationPersonalizedDiversifiedLimit
+ (id)transformationWithFunctionProvider:(id)a3 limit:(unint64_t)a4;
- (id)transformFeedItems:(id)a3;
- (id)transformFeedItems:(id)a3 withRespectToLimit:(unint64_t)a4;
@end

@implementation FCFeedTransformationPersonalizedDiversifiedLimit

+ (id)transformationWithFunctionProvider:(id)a3 limit:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  [v6 setLimit:a4];
  [v6 setFunctionProvider:v5];

  return v6;
}

- (id)transformFeedItems:(id)a3
{
  v4 = a3;
  v5 = [(FCFeedTransformationPersonalizedDiversifiedLimit *)self transformFeedItems:v4 withRespectToLimit:[(FCFeedTransformationPersonalizedDiversifiedLimit *)self limit]];

  return v5;
}

- (id)transformFeedItems:(id)a3 withRespectToLimit:(unint64_t)a4
{
  v6 = a3;
  v7 = [(FCFeedTransformationPersonalizedDiversifiedLimit *)self functionProvider];

  if (v7)
  {
    v8 = [(FCFeedTransformationPersonalizedDiversifiedLimit *)self functionProvider];
    v9 = [v8 diversifyItems:v6 limit:a4];
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

@end