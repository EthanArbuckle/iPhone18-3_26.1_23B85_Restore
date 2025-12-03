@interface OrgApacheLuceneSearchTopFieldCollector_OneComparatorLeafCollector
- (OrgApacheLuceneSearchTopFieldCollector_OneComparatorLeafCollector)initWithOrgApacheLuceneSearchLeafFieldComparator:(id)comparator withInt:(int)int;
- (void)dealloc;
- (void)setScorerWithOrgApacheLuceneSearchScorer:(id)scorer;
@end

@implementation OrgApacheLuceneSearchTopFieldCollector_OneComparatorLeafCollector

- (OrgApacheLuceneSearchTopFieldCollector_OneComparatorLeafCollector)initWithOrgApacheLuceneSearchLeafFieldComparator:(id)comparator withInt:(int)int
{
  JreStrongAssign(&self->comparator_, comparator);
  self->reverseMul_ = int;
  return self;
}

- (void)setScorerWithOrgApacheLuceneSearchScorer:(id)scorer
{
  JreStrongAssign(&self->scorer_, scorer);
  comparator = self->comparator_;
  if (!comparator)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneSearchLeafFieldComparator *)comparator setScorerWithOrgApacheLuceneSearchScorer:scorer];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopFieldCollector_OneComparatorLeafCollector;
  [(OrgApacheLuceneSearchTopFieldCollector_OneComparatorLeafCollector *)&v3 dealloc];
}

@end