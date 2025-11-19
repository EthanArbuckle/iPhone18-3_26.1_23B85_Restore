@interface OrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector_$1
- (OrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector_$1)initWithOrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector:(id)a3 withOrgApacheLuceneSearchLeafFieldComparator:(id)a4 withInt:(int)a5;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector_$1

- (OrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector_$1)initWithOrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector:(id)a3 withOrgApacheLuceneSearchLeafFieldComparator:(id)a4 withInt:(int)a5
{
  JreStrongAssign(&self->this$0_, a3);
  JreStrongAssign(&self->super.comparator_, a4);
  self->super.reverseMul_ = a5;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector__1;
  [(OrgApacheLuceneSearchTopFieldCollector_OneComparatorLeafCollector *)&v3 dealloc];
}

@end