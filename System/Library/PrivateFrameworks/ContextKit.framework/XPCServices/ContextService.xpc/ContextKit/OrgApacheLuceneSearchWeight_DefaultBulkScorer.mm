@interface OrgApacheLuceneSearchWeight_DefaultBulkScorer
- (int64_t)cost;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchWeight_DefaultBulkScorer

- (int64_t)cost
{
  scorer = self->scorer_;
  if (!scorer)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchScorer *)scorer cost];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchWeight_DefaultBulkScorer;
  [(OrgApacheLuceneSearchWeight_DefaultBulkScorer *)&v3 dealloc];
}

@end