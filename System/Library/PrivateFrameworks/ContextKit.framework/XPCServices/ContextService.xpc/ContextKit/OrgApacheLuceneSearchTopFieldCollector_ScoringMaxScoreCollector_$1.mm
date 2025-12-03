@interface OrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector_$1
- (OrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector_$1)initWithOrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector:(id)collector withOrgApacheLuceneSearchLeafFieldComparator:(id)comparator withInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector_$1

- (OrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector_$1)initWithOrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector:(id)collector withOrgApacheLuceneSearchLeafFieldComparator:(id)comparator withInt:(int)int
{
  JreStrongAssign(&self->this$0_, collector);
  JreStrongAssign(&self->super.comparator_, comparator);
  self->super.reverseMul_ = int;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector__1;
  [(OrgApacheLuceneSearchTopFieldCollector_OneComparatorLeafCollector *)&v3 dealloc];
}

@end