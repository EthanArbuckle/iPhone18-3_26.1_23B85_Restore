@interface OrgApacheLuceneSearchBlendedTermQuery_$1
- (id)rewriteWithOrgApacheLuceneSearchQueryArray:(id)a3;
@end

@implementation OrgApacheLuceneSearchBlendedTermQuery_$1

- (id)rewriteWithOrgApacheLuceneSearchQueryArray:(id)a3
{
  v4 = new_OrgApacheLuceneSearchBooleanQuery_Builder_init();
  [(OrgApacheLuceneSearchBooleanQuery_Builder *)v4 setDisableCoordWithBoolean:1];
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = (a3 + 24);
  v6 = a3 + 8 * *(a3 + 2) + 24;
  if (a3 + 24 < v6)
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