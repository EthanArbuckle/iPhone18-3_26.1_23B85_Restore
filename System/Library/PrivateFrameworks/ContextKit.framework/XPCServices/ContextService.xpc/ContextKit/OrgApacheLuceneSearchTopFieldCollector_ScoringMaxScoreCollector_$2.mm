@interface OrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector_$2
- (OrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector_$2)initWithOrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector:(id)a3 withOrgApacheLuceneSearchLeafFieldComparatorArray:(id)a4 withIntArray:(id)a5;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector_$2

- (OrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector_$2)initWithOrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector:(id)a3 withOrgApacheLuceneSearchLeafFieldComparatorArray:(id)a4 withIntArray:(id)a5
{
  JreStrongAssign(&self->this$0_, a3);
  sub_100094EC0(self, a4, a5);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector__2;
  [(OrgApacheLuceneSearchTopFieldCollector_MultiComparatorLeafCollector *)&v3 dealloc];
}

@end