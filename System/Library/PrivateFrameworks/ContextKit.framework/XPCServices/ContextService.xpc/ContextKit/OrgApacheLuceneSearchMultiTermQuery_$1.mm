@interface OrgApacheLuceneSearchMultiTermQuery_$1
- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)reader withOrgApacheLuceneSearchMultiTermQuery:(id)query;
@end

@implementation OrgApacheLuceneSearchMultiTermQuery_$1

- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)reader withOrgApacheLuceneSearchMultiTermQuery:(id)query
{
  v5 = new_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_initWithOrgApacheLuceneSearchMultiTermQuery_(query);
  if (!query)
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  [query getBoost];
  [(OrgApacheLuceneSearchQuery *)v6 setBoostWithFloat:?];
  return v6;
}

@end