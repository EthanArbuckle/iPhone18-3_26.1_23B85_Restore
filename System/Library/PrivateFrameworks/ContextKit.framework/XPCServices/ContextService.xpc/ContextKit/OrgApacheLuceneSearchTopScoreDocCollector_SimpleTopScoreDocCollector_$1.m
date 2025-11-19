@interface OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1
- (OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1)initWithOrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector:(id)a3 withInt:(int)a4;
- (void)collectWithInt:(int)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1

- (void)collectWithInt:(int)a3
{
  scorer = self->super.scorer_;
  if (!scorer)
  {
    goto LABEL_9;
  }

  [(OrgApacheLuceneSearchScorer *)scorer score];
  ++self->this$0_->super.super.totalHits_;
  pqTop = self->this$0_->super.pqTop_;
  if (!pqTop)
  {
    goto LABEL_9;
  }

  if (v6 <= pqTop->score_)
  {
    return;
  }

  pqTop->doc_ = self->val$docBase_ + a3;
  self->this$0_->super.pqTop_->score_ = v6;
  v8 = self->this$0_;
  pq = v8->super.super.pq_;
  if (!pq)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v10 = [(OrgApacheLuceneUtilPriorityQueue *)pq updateTop];

  JreStrongAssign(&v8->super.pqTop_, v10);
}

- (OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1)initWithOrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector:(id)a3 withInt:(int)a4
{
  JreStrongAssign(&self->this$0_, a3);
  self->val$docBase_ = a4;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector__1;
  [(OrgApacheLuceneSearchTopScoreDocCollector_ScorerLeafCollector *)&v3 dealloc];
}

@end