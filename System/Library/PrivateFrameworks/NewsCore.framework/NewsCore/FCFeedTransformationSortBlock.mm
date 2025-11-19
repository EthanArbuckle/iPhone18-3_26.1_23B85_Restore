@interface FCFeedTransformationSortBlock
+ (id)transformationWithSortBlock:(id)a3;
- (id)transformFeedItems:(id)a3;
@end

@implementation FCFeedTransformationSortBlock

+ (id)transformationWithSortBlock:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(FCFeedTransformationSortBlock);
  [(FCFeedTransformationSortBlock *)v4 setSortBlock:v3];

  return v4;
}

- (id)transformFeedItems:(id)a3
{
  v4 = a3;
  v5 = [(FCFeedTransformationSortBlock *)self sortBlock];
  v6 = [v4 sortedArrayUsingComparator:v5];

  return v6;
}

@end