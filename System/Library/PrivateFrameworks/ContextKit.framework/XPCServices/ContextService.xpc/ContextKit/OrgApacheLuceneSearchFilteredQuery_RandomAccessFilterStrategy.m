@interface OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterStrategy
- (BOOL)useRandomAccessWithOrgApacheLuceneUtilBits:(id)a3 withLong:(int64_t)a4;
- (id)rewriteWithOrgApacheLuceneSearchFilter:(id)a3;
@end

@implementation OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterStrategy

- (id)rewriteWithOrgApacheLuceneSearchFilter:(id)a3
{
  v5 = [OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery alloc];
  sub_1000267A8(v5, a3, self);

  return v5;
}

- (BOOL)useRandomAccessWithOrgApacheLuceneUtilBits:(id)a3 withLong:(int64_t)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  return 100 * a4 > [a3 length];
}

@end