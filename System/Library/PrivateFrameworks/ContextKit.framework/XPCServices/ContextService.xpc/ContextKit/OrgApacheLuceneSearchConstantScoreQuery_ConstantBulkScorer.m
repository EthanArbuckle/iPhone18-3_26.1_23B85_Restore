@interface OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer
- (int64_t)cost;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer

- (int64_t)cost
{
  bulkScorer = self->bulkScorer_;
  if (!bulkScorer)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchBulkScorer *)bulkScorer cost];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer;
  [(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer *)&v3 dealloc];
}

@end