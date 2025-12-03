@interface OrgApacheLuceneSearchScoringRewrite_$2
- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)reader withOrgApacheLuceneSearchMultiTermQuery:(id)query;
@end

@implementation OrgApacheLuceneSearchScoringRewrite_$2

- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)reader withOrgApacheLuceneSearchMultiTermQuery:(id)query
{
  if ((atomic_load_explicit(OrgApacheLuceneSearchScoringRewrite__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000637F0();
  }

  if (!OrgApacheLuceneSearchScoringRewrite_SCORING_BOOLEAN_REWRITE_ || (v6 = sub_10008F870(OrgApacheLuceneSearchScoringRewrite_SCORING_BOOLEAN_REWRITE_, reader, query), v7 = new_OrgApacheLuceneSearchConstantScoreQuery_initWithOrgApacheLuceneSearchQuery_(v6), !query))
  {
    JreThrowNullPointerException();
  }

  v8 = v7;
  [query getBoost];
  [(OrgApacheLuceneSearchQuery *)v8 setBoostWithFloat:?];
  return v8;
}

@end