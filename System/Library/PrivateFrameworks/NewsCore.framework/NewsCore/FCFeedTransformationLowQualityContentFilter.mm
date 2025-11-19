@interface FCFeedTransformationLowQualityContentFilter
+ (id)transformationWithPersonalizer:(id)a3;
- (id)transformFeedItems:(id)a3;
@end

@implementation FCFeedTransformationLowQualityContentFilter

+ (id)transformationWithPersonalizer:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setFeedPersonalizer:v3];

  return v4;
}

- (id)transformFeedItems:(id)a3
{
  v4 = a3;
  v5 = NewsCoreUserDefaults();
  v6 = [v5 BOOLForKey:@"personalization_disabled"];

  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v8 = [(FCFeedTransformationLowQualityContentFilter *)self feedPersonalizer];
    v7 = [v8 limitItemsByMinimumItemQuality:v4];
  }

  return v7;
}

@end