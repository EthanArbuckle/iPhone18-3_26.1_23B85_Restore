@interface FCFeedTransformationSortByPublishDate
@end

@implementation FCFeedTransformationSortByPublishDate

uint64_t __60__FCFeedTransformationSortByPublishDate_transformFeedItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 publishDateMilliseconds];
  v6 = [v4 publishDateMilliseconds];

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