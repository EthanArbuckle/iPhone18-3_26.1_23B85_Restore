@interface OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1
- (OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1)initWithOrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector:(id)collector withInt:(int)int;
- (void)collectWithInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1

- (void)collectWithInt:(int)int
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

  pqTop->doc_ = self->val$docBase_ + int;
  self->this$0_->super.pqTop_->score_ = v6;
  v8 = self->this$0_;
  pq = v8->super.super.pq_;
  if (!pq)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  updateTop = [(OrgApacheLuceneUtilPriorityQueue *)pq updateTop];

  JreStrongAssign(&v8->super.pqTop_, updateTop);
}

- (OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector_$1)initWithOrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector:(id)collector withInt:(int)int
{
  JreStrongAssign(&self->this$0_, collector);
  self->val$docBase_ = int;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector__1;
  [(OrgApacheLuceneSearchTopScoreDocCollector_ScorerLeafCollector *)&v3 dealloc];
}

@end