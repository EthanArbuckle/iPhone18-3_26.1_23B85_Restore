@interface OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1
- (OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1)initWithOrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector:(id)collector withInt:(int)int withInt:(int)withInt;
- (void)collectWithInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1

- (void)collectWithInt:(int)int
{
  scorer = self->super.scorer_;
  if (!scorer)
  {
    goto LABEL_13;
  }

  [(OrgApacheLuceneSearchScorer *)scorer score];
  ++self->this$0_->super.super.totalHits_;
  v7 = self->this$0_;
  after = v7->after_;
  if (!after)
  {
    goto LABEL_13;
  }

  score = after->score_;
  if (v6 > score || v6 == score && self->val$afterDoc_ >= int)
  {
    return;
  }

  pqTop = v7->super.pqTop_;
  if (!pqTop)
  {
    goto LABEL_13;
  }

  if (v6 <= pqTop->score_)
  {
    return;
  }

  ++v7->collectedHits_;
  self->this$0_->super.pqTop_->doc_ = self->val$docBase_ + int;
  self->this$0_->super.pqTop_->score_ = v6;
  v11 = self->this$0_;
  pq = v11->super.super.pq_;
  if (!pq)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  updateTop = [(OrgApacheLuceneUtilPriorityQueue *)pq updateTop];

  JreStrongAssign(&v11->super.pqTop_, updateTop);
}

- (OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector_$1)initWithOrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector:(id)collector withInt:(int)int withInt:(int)withInt
{
  JreStrongAssign(&self->this$0_, collector);
  self->val$afterDoc_ = int;
  self->val$docBase_ = withInt;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector__1;
  [(OrgApacheLuceneSearchTopScoreDocCollector_ScorerLeafCollector *)&v3 dealloc];
}

@end