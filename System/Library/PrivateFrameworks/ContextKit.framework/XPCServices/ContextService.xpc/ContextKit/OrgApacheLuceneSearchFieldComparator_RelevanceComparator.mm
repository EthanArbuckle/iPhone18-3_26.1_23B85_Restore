@interface OrgApacheLuceneSearchFieldComparator_RelevanceComparator
- (int)compareValuesWithId:(id)id withId:(id)withId;
- (void)dealloc;
- (void)setScorerWithOrgApacheLuceneSearchScorer:(id)scorer;
- (void)setTopValueWithId:(id)id;
@end

@implementation OrgApacheLuceneSearchFieldComparator_RelevanceComparator

- (void)setTopValueWithId:(id)id
{
  if (!id)
  {
    JreThrowNullPointerException();
  }

  [id floatValue];
  self->topValue_ = v4;
}

- (void)setScorerWithOrgApacheLuceneSearchScorer:(id)scorer
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    JreStrongAssign(&self->scorer_, scorer);
  }

  else
  {
    v5 = new_OrgApacheLuceneSearchScoreCachingWrappingScorer_initWithOrgApacheLuceneSearchScorer_(scorer);

    JreStrongAssignAndConsume(&self->scorer_, v5);
  }
}

- (int)compareValuesWithId:(id)id withId:(id)withId
{
  if (!withId)
  {
    JreThrowNullPointerException();
  }

  return [withId compareToWithId:id];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFieldComparator_RelevanceComparator;
  [(OrgApacheLuceneSearchFieldComparator_RelevanceComparator *)&v3 dealloc];
}

@end