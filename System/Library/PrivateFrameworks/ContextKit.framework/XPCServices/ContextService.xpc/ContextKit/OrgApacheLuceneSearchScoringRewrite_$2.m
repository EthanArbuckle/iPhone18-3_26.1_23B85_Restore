@interface OrgApacheLuceneSearchScoringRewrite_$2
- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)a3 withOrgApacheLuceneSearchMultiTermQuery:(id)a4;
@end

@implementation OrgApacheLuceneSearchScoringRewrite_$2

- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)a3 withOrgApacheLuceneSearchMultiTermQuery:(id)a4
{
  if ((atomic_load_explicit(OrgApacheLuceneSearchScoringRewrite__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000637F0();
  }

  if (!OrgApacheLuceneSearchScoringRewrite_SCORING_BOOLEAN_REWRITE_ || (v6 = sub_10008F870(OrgApacheLuceneSearchScoringRewrite_SCORING_BOOLEAN_REWRITE_, a3, a4), v7 = new_OrgApacheLuceneSearchConstantScoreQuery_initWithOrgApacheLuceneSearchQuery_(v6), !a4))
  {
    JreThrowNullPointerException();
  }

  v8 = v7;
  [a4 getBoost];
  [(OrgApacheLuceneSearchQuery *)v8 setBoostWithFloat:?];
  return v8;
}

@end