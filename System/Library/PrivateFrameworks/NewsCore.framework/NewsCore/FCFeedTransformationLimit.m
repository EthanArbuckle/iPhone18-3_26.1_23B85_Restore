@interface FCFeedTransformationLimit
+ (id)transformationWithLimit:(unint64_t)a3;
- (id)transformFeedItems:(id)a3;
@end

@implementation FCFeedTransformationLimit

+ (id)transformationWithLimit:(unint64_t)a3
{
  v4 = objc_opt_new();
  [v4 setLimit:a3];

  return v4;
}

- (id)transformFeedItems:(id)a3
{
  v4 = a3;
  v5 = [v4 fc_subarrayWithMaxCount:{-[FCFeedTransformationLimit limit](self, "limit")}];

  return v5;
}

@end