@interface FCFeedTransformationSortBlock
+ (id)transformationWithSortBlock:(id)block;
- (id)transformFeedItems:(id)items;
@end

@implementation FCFeedTransformationSortBlock

+ (id)transformationWithSortBlock:(id)block
{
  blockCopy = block;
  v4 = objc_alloc_init(FCFeedTransformationSortBlock);
  [(FCFeedTransformationSortBlock *)v4 setSortBlock:blockCopy];

  return v4;
}

- (id)transformFeedItems:(id)items
{
  itemsCopy = items;
  sortBlock = [(FCFeedTransformationSortBlock *)self sortBlock];
  v6 = [itemsCopy sortedArrayUsingComparator:sortBlock];

  return v6;
}

@end