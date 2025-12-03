@interface OrgApacheLuceneSearchWeight
- (id)bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:(id)context;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchWeight

- (id)bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:(id)context
{
  result = [(OrgApacheLuceneSearchWeight *)self scorerWithOrgApacheLuceneIndexLeafReaderContext:context];
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