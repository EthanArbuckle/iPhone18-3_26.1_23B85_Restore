@interface OrgApacheLuceneSearchScoringRewrite
+ (void)initialize;
@end

@implementation OrgApacheLuceneSearchScoringRewrite

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [OrgApacheLuceneSearchScoringRewrite__1 alloc];
    OrgApacheLuceneSearchTermCollectingRewrite_init(v2, v3);
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchScoringRewrite_SCORING_BOOLEAN_REWRITE_, v2);
    v4 = [OrgApacheLuceneSearchScoringRewrite__2 alloc];
    OrgApacheLuceneSearchMultiTermQuery_RewriteMethod_init(v4, v5);
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchScoringRewrite_CONSTANT_SCORE_BOOLEAN_REWRITE_, v4);
    atomic_store(1u, OrgApacheLuceneSearchScoringRewrite__initialized);
  }
}

@end