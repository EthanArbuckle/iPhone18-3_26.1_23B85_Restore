@interface OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments
+ (void)initialize;
- (BOOL)shouldCacheWithOrgApacheLuceneSearchQuery:(id)query withOrgApacheLuceneIndexLeafReaderContext:(id)context;
@end

@implementation OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments

- (BOOL)shouldCacheWithOrgApacheLuceneSearchQuery:(id)query withOrgApacheLuceneIndexLeafReaderContext:(id)context
{
  TopLevelContextWithOrgApacheLuceneIndexIndexReaderContext = OrgApacheLuceneIndexReaderUtil_getTopLevelContextWithOrgApacheLuceneIndexIndexReaderContext_(context);
  if (!TopLevelContextWithOrgApacheLuceneIndexIndexReaderContext)
  {
    goto LABEL_9;
  }

  v7 = TopLevelContextWithOrgApacheLuceneIndexIndexReaderContext;
  reader = [TopLevelContextWithOrgApacheLuceneIndexIndexReaderContext reader];
  if (!reader)
  {
    goto LABEL_9;
  }

  if ([reader maxDoc] < self->minIndexSize_)
  {
    return 0;
  }

  if (!context || (v10 = [context reader]) == 0 || (v11 = objc_msgSend(v10, "maxDoc"), (v12 = objc_msgSend(v7, "reader")) == 0))
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  return (v11 / [v12 maxDoc]) >= self->minSizeRatio_;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments alloc];
    *&v2->minIndexSize_ = 0x3CF5C28F00002710;
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments_DEFAULT_, v2);
    atomic_store(1u, OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments__initialized);
  }
}

@end