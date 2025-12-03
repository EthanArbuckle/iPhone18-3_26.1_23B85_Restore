@interface FCFeedTransformationLowQualityContentFilter
+ (id)transformationWithPersonalizer:(id)personalizer;
- (id)transformFeedItems:(id)items;
@end

@implementation FCFeedTransformationLowQualityContentFilter

+ (id)transformationWithPersonalizer:(id)personalizer
{
  personalizerCopy = personalizer;
  v4 = objc_opt_new();
  [v4 setFeedPersonalizer:personalizerCopy];

  return v4;
}

- (id)transformFeedItems:(id)items
{
  itemsCopy = items;
  v5 = NewsCoreUserDefaults();
  v6 = [v5 BOOLForKey:@"personalization_disabled"];

  if (v6)
  {
    v7 = itemsCopy;
  }

  else
  {
    feedPersonalizer = [(FCFeedTransformationLowQualityContentFilter *)self feedPersonalizer];
    v7 = [feedPersonalizer limitItemsByMinimumItemQuality:itemsCopy];
  }

  return v7;
}

@end