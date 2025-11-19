@interface OrgApacheLuceneSearchUsageTrackingQueryCachingPolicy
- (BOOL)shouldCacheWithOrgApacheLuceneSearchQuery:(id)a3 withOrgApacheLuceneIndexLeafReaderContext:(id)a4;
- (int)frequencyWithOrgApacheLuceneSearchQuery:(id)a3;
- (int)minFrequencyToCacheWithOrgApacheLuceneSearchQuery:(id)a3;
- (void)dealloc;
- (void)onUseWithOrgApacheLuceneSearchQuery:(id)a3;
@end

@implementation OrgApacheLuceneSearchUsageTrackingQueryCachingPolicy

- (int)minFrequencyToCacheWithOrgApacheLuceneSearchQuery:(id)a3
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

- (void)onUseWithOrgApacheLuceneSearchQuery:(id)a3
{
  v4 = sub_100070BD8(a3);
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

- (int)frequencyWithOrgApacheLuceneSearchQuery:(id)a3
{
  v4 = sub_100070BD8(a3);
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

- (BOOL)shouldCacheWithOrgApacheLuceneSearchQuery:(id)a3 withOrgApacheLuceneIndexLeafReaderContext:(id)a4
{
  segmentPolicy = self->segmentPolicy_;
  if (!segmentPolicy)
  {
    JreThrowNullPointerException();
  }

  v7 = [(OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments *)segmentPolicy shouldCacheWithOrgApacheLuceneSearchQuery:a3 withOrgApacheLuceneIndexLeafReaderContext:a4];
  if (v7)
  {
    v8 = [(OrgApacheLuceneSearchUsageTrackingQueryCachingPolicy *)self frequencyWithOrgApacheLuceneSearchQuery:a3];
    LOBYTE(v7) = v8 >= [(OrgApacheLuceneSearchUsageTrackingQueryCachingPolicy *)self minFrequencyToCacheWithOrgApacheLuceneSearchQuery:a3];
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