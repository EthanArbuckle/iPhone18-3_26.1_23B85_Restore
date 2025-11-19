@interface OrgApacheLuceneSearchFieldComparator_RelevanceComparator
- (int)compareValuesWithId:(id)a3 withId:(id)a4;
- (void)dealloc;
- (void)setScorerWithOrgApacheLuceneSearchScorer:(id)a3;
- (void)setTopValueWithId:(id)a3;
@end

@implementation OrgApacheLuceneSearchFieldComparator_RelevanceComparator

- (void)setTopValueWithId:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 floatValue];
  self->topValue_ = v4;
}

- (void)setScorerWithOrgApacheLuceneSearchScorer:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    JreStrongAssign(&self->scorer_, a3);
  }

  else
  {
    v5 = new_OrgApacheLuceneSearchScoreCachingWrappingScorer_initWithOrgApacheLuceneSearchScorer_(a3);

    JreStrongAssignAndConsume(&self->scorer_, v5);
  }
}

- (int)compareValuesWithId:(id)a3 withId:(id)a4
{
  if (!a4)
  {
    JreThrowNullPointerException();
  }

  return [a4 compareToWithId:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFieldComparator_RelevanceComparator;
  [(OrgApacheLuceneSearchFieldComparator_RelevanceComparator *)&v3 dealloc];
}

@end