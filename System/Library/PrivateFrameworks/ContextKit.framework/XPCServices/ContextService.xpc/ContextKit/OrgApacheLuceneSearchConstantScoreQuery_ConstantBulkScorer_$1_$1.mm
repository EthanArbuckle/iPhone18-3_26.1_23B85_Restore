@interface OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1
- (OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1)initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1:(id)1 withOrgApacheLuceneSearchScorer:(id)scorer;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1

- (OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1)initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1:(id)1 withOrgApacheLuceneSearchScorer:(id)scorer
{
  JreStrongAssign(&self->this$0_, 1);
  OrgApacheLuceneSearchFilterScorer_initWithOrgApacheLuceneSearchScorer_(self, scorer);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer__1__1;
  [(OrgApacheLuceneSearchFilterScorer *)&v3 dealloc];
}

@end