@interface OrgApacheLuceneSearchIndexSearcher_$1
- (id)computeWeightWithFloat:(float)a3 withOrgApacheLuceneSearchCollectionStatistics:(id)a4 withOrgApacheLuceneSearchTermStatisticsArray:(id)a5;
- (id)simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:(id)a3 withOrgApacheLuceneIndexLeafReaderContext:(id)a4;
@end

@implementation OrgApacheLuceneSearchIndexSearcher_$1

- (id)computeWeightWithFloat:(float)a3 withOrgApacheLuceneSearchCollectionStatistics:(id)a4 withOrgApacheLuceneSearchTermStatisticsArray:(id)a5
{
  v5 = [OrgApacheLuceneSearchIndexSearcher__1__1 alloc];
  OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight_init(v5, v6);

  return v5;
}

- (id)simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:(id)a3 withOrgApacheLuceneIndexLeafReaderContext:(id)a4
{
  v4 = [OrgApacheLuceneSearchIndexSearcher__1__2 alloc];
  OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_init(v4, v5);

  return v4;
}

@end