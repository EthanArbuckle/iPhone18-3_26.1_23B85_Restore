@interface OrgApacheLuceneSearchBooleanScorer_$1
- (OrgApacheLuceneSearchBooleanScorer_$1)initWithOrgApacheLuceneSearchBulkScorer:(id)scorer;
- (int64_t)cost;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchBooleanScorer_$1

- (int64_t)cost
{
  v3 = self->val$scorer_;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchBulkScorer *)v3 cost];
}

- (OrgApacheLuceneSearchBooleanScorer_$1)initWithOrgApacheLuceneSearchBulkScorer:(id)scorer
{
  JreStrongAssign(&self->val$scorer_, scorer);
  OrgApacheLuceneSearchBulkScorer_init(self);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchBooleanScorer__1;
  [(OrgApacheLuceneSearchBooleanScorer_$1 *)&v3 dealloc];
}

@end