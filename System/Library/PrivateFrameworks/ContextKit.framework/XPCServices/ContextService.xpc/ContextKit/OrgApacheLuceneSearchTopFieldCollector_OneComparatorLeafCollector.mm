@interface OrgApacheLuceneSearchTopFieldCollector_OneComparatorLeafCollector
- (OrgApacheLuceneSearchTopFieldCollector_OneComparatorLeafCollector)initWithOrgApacheLuceneSearchLeafFieldComparator:(id)a3 withInt:(int)a4;
- (void)dealloc;
- (void)setScorerWithOrgApacheLuceneSearchScorer:(id)a3;
@end

@implementation OrgApacheLuceneSearchTopFieldCollector_OneComparatorLeafCollector

- (OrgApacheLuceneSearchTopFieldCollector_OneComparatorLeafCollector)initWithOrgApacheLuceneSearchLeafFieldComparator:(id)a3 withInt:(int)a4
{
  JreStrongAssign(&self->comparator_, a3);
  self->reverseMul_ = a4;
  return self;
}

- (void)setScorerWithOrgApacheLuceneSearchScorer:(id)a3
{
  JreStrongAssign(&self->scorer_, a3);
  comparator = self->comparator_;
  if (!comparator)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneSearchLeafFieldComparator *)comparator setScorerWithOrgApacheLuceneSearchScorer:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopFieldCollector_OneComparatorLeafCollector;
  [(OrgApacheLuceneSearchTopFieldCollector_OneComparatorLeafCollector *)&v3 dealloc];
}

@end