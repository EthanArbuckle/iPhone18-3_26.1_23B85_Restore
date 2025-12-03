@interface OrgApacheLuceneSearchBlendedTermQuery_$1
- (id)rewriteWithOrgApacheLuceneSearchQueryArray:(id)array;
@end

@implementation OrgApacheLuceneSearchBlendedTermQuery_$1

- (id)rewriteWithOrgApacheLuceneSearchQueryArray:(id)array
{
  v4 = new_OrgApacheLuceneSearchBooleanQuery_Builder_init();
  [(OrgApacheLuceneSearchBooleanQuery_Builder *)v4 setDisableCoordWithBoolean:1];
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v5 = (array + 24);
  v6 = array + 8 * *(array + 2) + 24;
  if (array + 24 < v6)
  {
    do
    {
      v8 = *v5++;
      v7 = v8;
      if ((atomic_load_explicit(OrgApacheLuceneSearchBooleanClause_OccurEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100026EB0();
      }

      [(OrgApacheLuceneSearchBooleanQuery_Builder *)v4 addWithOrgApacheLuceneSearchQuery:v7 withOrgApacheLuceneSearchBooleanClause_OccurEnum:qword_100557BA8];
    }

    while (v5 < v6);
  }

  return [(OrgApacheLuceneSearchBooleanQuery_Builder *)v4 build];
}

@end