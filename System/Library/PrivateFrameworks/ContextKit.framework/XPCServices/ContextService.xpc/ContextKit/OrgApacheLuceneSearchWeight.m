@interface OrgApacheLuceneSearchWeight
- (id)bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchWeight

- (id)bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:(id)a3
{
  result = [(OrgApacheLuceneSearchWeight *)self scorerWithOrgApacheLuceneIndexLeafReaderContext:a3];
  if (result)
  {
    v4 = result;
    v5 = [OrgApacheLuceneSearchWeight_DefaultBulkScorer alloc];
    OrgApacheLuceneSearchWeight_DefaultBulkScorer_initWithOrgApacheLuceneSearchScorer_(v5, v4);

    return v5;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchWeight;
  [(OrgApacheLuceneSearchWeight *)&v3 dealloc];
}

@end