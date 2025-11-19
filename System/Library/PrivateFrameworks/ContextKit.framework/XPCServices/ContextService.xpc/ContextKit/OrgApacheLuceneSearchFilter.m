@interface OrgApacheLuceneSearchFilter
- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)a3;
@end

@implementation OrgApacheLuceneSearchFilter

- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)a3
{
  if ((atomic_load_explicit(OrgApacheLuceneSearchFilteredQuery__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000AEA18();
  }

  v4 = OrgApacheLuceneSearchFilteredQuery_RANDOM_ACCESS_FILTER_STRATEGY_;
  if (!OrgApacheLuceneSearchFilteredQuery_RANDOM_ACCESS_FILTER_STRATEGY_)
  {
    JreThrowNullPointerException();
  }

  return [v4 rewriteWithOrgApacheLuceneSearchFilter:self];
}

@end