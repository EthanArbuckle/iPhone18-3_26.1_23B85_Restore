@interface NTPBFeedPersonalizingItem
@end

@implementation NTPBFeedPersonalizingItem

void __73__NTPBFeedPersonalizingItem_FCAdditions__enumerateTopicCohortsWithBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 tagID];
  v4 = [v3 cohorts];

  (*(v2 + 16))(v2, v5, v4);
}

void __81__NTPBFeedPersonalizingItem_FCAdditions__enumerateTopicConversionStatsWithBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 tagID];
  v4 = [v3 conversionStats];

  (*(v2 + 16))(v2, v5, v4);
}

@end