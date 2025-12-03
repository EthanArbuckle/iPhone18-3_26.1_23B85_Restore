@interface OrgApacheLuceneSearchBooleanScorer_$1_$1
- (OrgApacheLuceneSearchBooleanScorer_$1_$1)initWithOrgApacheLuceneSearchLeafCollector:(id)collector;
- (void)collectWithInt:(int)int;
- (void)dealloc;
- (void)setScorerWithOrgApacheLuceneSearchScorer:(id)scorer;
@end

@implementation OrgApacheLuceneSearchBooleanScorer_$1_$1

- (void)setScorerWithOrgApacheLuceneSearchScorer:(id)scorer
{
  if (!self->val$collector_)
  {
    JreThrowNullPointerException();
  }

  fake = self->fake_;
  v5 = self->val$collector_;

  [(OrgApacheLuceneSearchLeafCollector *)v5 setScorerWithOrgApacheLuceneSearchScorer:fake];
}

- (void)collectWithInt:(int)int
{
  fake = self->fake_;
  if (!fake || (fake->doc_ = int, (v4 = self->val$collector_) == 0))
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneSearchLeafCollector *)v4 collectWithInt:?];
}

- (OrgApacheLuceneSearchBooleanScorer_$1_$1)initWithOrgApacheLuceneSearchLeafCollector:(id)collector
{
  JreStrongAssign(&self->val$collector_, collector);
  v4 = new_OrgApacheLuceneSearchFakeScorer_init();
  JreStrongAssignAndConsume(&self->fake_, v4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchBooleanScorer__1__1;
  [(OrgApacheLuceneSearchBooleanScorer_$1_$1 *)&v3 dealloc];
}

@end