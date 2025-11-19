@interface OrgApacheLuceneSearchBooleanScorer_$1
- (OrgApacheLuceneSearchBooleanScorer_$1)initWithOrgApacheLuceneSearchBulkScorer:(id)a3;
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

- (OrgApacheLuceneSearchBooleanScorer_$1)initWithOrgApacheLuceneSearchBulkScorer:(id)a3
{
  JreStrongAssign(&self->val$scorer_, a3);
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