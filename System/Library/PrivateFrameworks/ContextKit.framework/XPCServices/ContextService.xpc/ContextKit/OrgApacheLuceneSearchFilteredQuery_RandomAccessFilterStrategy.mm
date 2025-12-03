@interface OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterStrategy
- (BOOL)useRandomAccessWithOrgApacheLuceneUtilBits:(id)bits withLong:(int64_t)long;
- (id)rewriteWithOrgApacheLuceneSearchFilter:(id)filter;
@end

@implementation OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterStrategy

- (id)rewriteWithOrgApacheLuceneSearchFilter:(id)filter
{
  v5 = [OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery alloc];
  sub_1000267A8(v5, filter, self);

  return v5;
}

- (BOOL)useRandomAccessWithOrgApacheLuceneUtilBits:(id)bits withLong:(int64_t)long
{
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  return 100 * long > [bits length];
}

@end