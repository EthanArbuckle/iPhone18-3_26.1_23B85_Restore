@interface OrgApacheLuceneSearchTopFieldCollector_NonScoringCollector_$2
- (OrgApacheLuceneSearchTopFieldCollector_NonScoringCollector_$2)initWithOrgApacheLuceneSearchTopFieldCollector_NonScoringCollector:(id)collector withOrgApacheLuceneSearchLeafFieldComparatorArray:(id)array withIntArray:(id)intArray;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTopFieldCollector_NonScoringCollector_$2

- (OrgApacheLuceneSearchTopFieldCollector_NonScoringCollector_$2)initWithOrgApacheLuceneSearchTopFieldCollector_NonScoringCollector:(id)collector withOrgApacheLuceneSearchLeafFieldComparatorArray:(id)array withIntArray:(id)intArray
{
  JreStrongAssign(&self->this$0_, collector);
  sub_100094EC0(self, array, intArray);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopFieldCollector_NonScoringCollector__2;
  [(OrgApacheLuceneSearchTopFieldCollector_MultiComparatorLeafCollector *)&v3 dealloc];
}

@end