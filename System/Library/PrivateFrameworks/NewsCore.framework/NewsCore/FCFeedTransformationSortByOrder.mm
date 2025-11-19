@interface FCFeedTransformationSortByOrder
@end

@implementation FCFeedTransformationSortByOrder

uint64_t __54__FCFeedTransformationSortByOrder_transformFeedItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 order];
  v6 = [v4 order];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

@end