@interface OrgApacheLuceneSearchDocIdSet
+ (void)initialize;
@end

@implementation OrgApacheLuceneSearchDocIdSet

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchDocIdSet_EMPTY_, [OrgApacheLuceneSearchDocIdSet__1 alloc]);
    atomic_store(1u, OrgApacheLuceneSearchDocIdSet__initialized);
  }
}

@end