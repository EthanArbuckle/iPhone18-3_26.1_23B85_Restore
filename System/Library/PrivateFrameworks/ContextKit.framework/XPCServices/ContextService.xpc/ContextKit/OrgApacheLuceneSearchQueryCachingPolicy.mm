@interface OrgApacheLuceneSearchQueryCachingPolicy
+ (void)initialize;
@end

@implementation OrgApacheLuceneSearchQueryCachingPolicy

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchQueryCachingPolicy_ALWAYS_CACHE_, [OrgApacheLuceneSearchQueryCachingPolicy__1 alloc]);
    atomic_store(1u, OrgApacheLuceneSearchQueryCachingPolicy__initialized);
  }
}

@end