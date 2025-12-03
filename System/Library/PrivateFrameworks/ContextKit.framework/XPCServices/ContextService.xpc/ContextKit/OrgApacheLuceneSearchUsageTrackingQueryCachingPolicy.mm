@interface OrgApacheLuceneSearchUsageTrackingQueryCachingPolicy
- (BOOL)shouldCacheWithOrgApacheLuceneSearchQuery:(id)query withOrgApacheLuceneIndexLeafReaderContext:(id)context;
- (int)frequencyWithOrgApacheLuceneSearchQuery:(id)query;
- (int)minFrequencyToCacheWithOrgApacheLuceneSearchQuery:(id)query;
- (void)dealloc;
- (void)onUseWithOrgApacheLuceneSearchQuery:(id)query;
@end

@implementation OrgApacheLuceneSearchUsageTrackingQueryCachingPolicy

- (int)minFrequencyToCacheWithOrgApacheLuceneSearchQuery:(id)query
{
  if (OrgApacheLuceneSearchUsageTrackingQueryCachingPolicy_isCostlyWithOrgApacheLuceneSearchQuery_())
  {
    return 2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 20;
  }

  else
  {
    return 5;
  }
}

- (void)onUseWithOrgApacheLuceneSearchQuery:(id)query
{
  v4 = sub_100070BD8(query);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = [v4 hash];
  objc_sync_enter(self);
  recentlyUsedFilters = self->recentlyUsedFilters_;
  if (!recentlyUsedFilters)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneUtilFrequencyTrackingRingBuffer *)recentlyUsedFilters addWithInt:v5];

  objc_sync_exit(self);
}

- (int)frequencyWithOrgApacheLuceneSearchQuery:(id)query
{
  v4 = sub_100070BD8(query);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = [v4 hash];
  objc_sync_enter(self);
  recentlyUsedFilters = self->recentlyUsedFilters_;
  if (!recentlyUsedFilters)
  {
    JreThrowNullPointerException();
  }

  v7 = [(OrgApacheLuceneUtilFrequencyTrackingRingBuffer *)recentlyUsedFilters frequencyWithInt:v5];
  objc_sync_exit(self);
  return v7;
}

- (BOOL)shouldCacheWithOrgApacheLuceneSearchQuery:(id)query withOrgApacheLuceneIndexLeafReaderContext:(id)context
{
  segmentPolicy = self->segmentPolicy_;
  if (!segmentPolicy)
  {
    JreThrowNullPointerException();
  }

  v7 = [(OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments *)segmentPolicy shouldCacheWithOrgApacheLuceneSearchQuery:query withOrgApacheLuceneIndexLeafReaderContext:context];
  if (v7)
  {
    v8 = [(OrgApacheLuceneSearchUsageTrackingQueryCachingPolicy *)self frequencyWithOrgApacheLuceneSearchQuery:query];
    LOBYTE(v7) = v8 >= [(OrgApacheLuceneSearchUsageTrackingQueryCachingPolicy *)self minFrequencyToCacheWithOrgApacheLuceneSearchQuery:query];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchUsageTrackingQueryCachingPolicy;
  [(OrgApacheLuceneSearchUsageTrackingQueryCachingPolicy *)&v3 dealloc];
}

@end