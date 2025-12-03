@interface FCFeedTransformationLimit
+ (id)transformationWithLimit:(unint64_t)limit;
- (id)transformFeedItems:(id)items;
@end

@implementation FCFeedTransformationLimit

+ (id)transformationWithLimit:(unint64_t)limit
{
  v4 = objc_opt_new();
  [v4 setLimit:limit];

  return v4;
}

- (id)transformFeedItems:(id)items
{
  itemsCopy = items;
  v5 = [itemsCopy fc_subarrayWithMaxCount:{-[FCFeedTransformationLimit limit](self, "limit")}];

  return v5;
}

@end