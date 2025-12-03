@interface OrgApacheLuceneSearchTopFieldCollector_MultiComparatorLeafCollector
- (void)dealloc;
- (void)setScorerWithOrgApacheLuceneSearchScorer:(id)scorer;
@end

@implementation OrgApacheLuceneSearchTopFieldCollector_MultiComparatorLeafCollector

- (void)setScorerWithOrgApacheLuceneSearchScorer:(id)scorer
{
  JreStrongAssign(&self->scorer_, scorer);
  comparators = self->comparators_;
  if (!comparators)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  p_elementType = &comparators->elementType_;
  v7 = &(&comparators->elementType_)[comparators->super.size_];
  while (p_elementType < v7)
  {
    v8 = *p_elementType;
    if (!*p_elementType)
    {
      goto LABEL_7;
    }

    ++p_elementType;
    [v8 setScorerWithOrgApacheLuceneSearchScorer:scorer];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopFieldCollector_MultiComparatorLeafCollector;
  [(OrgApacheLuceneSearchTopFieldCollector_MultiComparatorLeafCollector *)&v3 dealloc];
}

@end