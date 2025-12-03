@interface OrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector_$1
- (OrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector_$1)initWithOrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector:(id)collector withOrgApacheLuceneSearchLeafFieldComparator:(id)comparator withInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector_$1

- (OrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector_$1)initWithOrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector:(id)collector withOrgApacheLuceneSearchLeafFieldComparator:(id)comparator withInt:(int)int
{
  JreStrongAssign(&self->this$0_, collector);
  JreStrongAssign(&self->super.comparator_, comparator);
  self->super.reverseMul_ = int;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector__1;
  [(OrgApacheLuceneSearchTopFieldCollector_OneComparatorLeafCollector *)&v3 dealloc];
}

@end