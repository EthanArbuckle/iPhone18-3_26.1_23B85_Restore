@interface OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1
- (OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1)initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1:(id)a3 withOrgApacheLuceneSearchScorer:(id)a4;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1

- (OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1_$1)initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1:(id)a3 withOrgApacheLuceneSearchScorer:(id)a4
{
  JreStrongAssign(&self->this$0_, a3);
  OrgApacheLuceneSearchFilterScorer_initWithOrgApacheLuceneSearchScorer_(self, a4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer__1__1;
  [(OrgApacheLuceneSearchFilterScorer *)&v3 dealloc];
}

@end