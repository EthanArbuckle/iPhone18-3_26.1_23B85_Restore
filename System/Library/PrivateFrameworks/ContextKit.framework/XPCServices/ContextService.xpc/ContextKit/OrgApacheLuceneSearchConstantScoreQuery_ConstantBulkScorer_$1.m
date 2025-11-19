@interface OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1
- (OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1)initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer:(id)a3 withOrgApacheLuceneSearchLeafCollector:(id)a4;
- (void)dealloc;
- (void)setScorerWithOrgApacheLuceneSearchScorer:(id)a3;
@end

@implementation OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1

- (void)setScorerWithOrgApacheLuceneSearchScorer:(id)a3
{
  in = self->super.in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  v6 = [OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer__1__1 alloc];
  JreStrongAssign(&v6->this$0_, self);
  OrgApacheLuceneSearchFilterScorer_initWithOrgApacheLuceneSearchScorer_(v6, a3);
  v7 = v6;

  [(OrgApacheLuceneSearchLeafCollector *)in setScorerWithOrgApacheLuceneSearchScorer:v7];
}

- (OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1)initWithOrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer:(id)a3 withOrgApacheLuceneSearchLeafCollector:(id)a4
{
  JreStrongAssign(&self->this$0_, a3);
  OrgApacheLuceneSearchFilterLeafCollector_initWithOrgApacheLuceneSearchLeafCollector_(self, a4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer__1;
  [(OrgApacheLuceneSearchFilterLeafCollector *)&v3 dealloc];
}

@end