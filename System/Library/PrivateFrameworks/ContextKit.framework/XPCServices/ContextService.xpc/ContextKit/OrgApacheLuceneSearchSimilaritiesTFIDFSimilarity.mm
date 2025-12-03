@interface OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity
- (id)computeWeightWithFloat:(float)float withOrgApacheLuceneSearchCollectionStatistics:(id)statistics withOrgApacheLuceneSearchTermStatisticsArray:(id)array;
- (id)idfExplainWithOrgApacheLuceneSearchCollectionStatistics:(id)statistics withOrgApacheLuceneSearchTermStatistics:(id)termStatistics;
- (id)idfExplainWithOrgApacheLuceneSearchCollectionStatistics:(id)statistics withOrgApacheLuceneSearchTermStatisticsArray:(id)array;
- (id)simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:(id)weight withOrgApacheLuceneIndexLeafReaderContext:(id)context;
- (int64_t)computeNormWithOrgApacheLuceneIndexFieldInvertState:(id)state;
@end

@implementation OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity

- (id)idfExplainWithOrgApacheLuceneSearchCollectionStatistics:(id)statistics withOrgApacheLuceneSearchTermStatistics:(id)termStatistics
{
  if (!termStatistics || (v6 = [termStatistics docFreq], !statistics))
  {
    JreThrowNullPointerException();
  }

  -[OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity idfWithLong:withLong:](self, "idfWithLong:withLong:", v6, [statistics maxDoc]);
  v8 = v7;
  v16 = JreStrcat("$J$JC", v9, v10, v11, v12, v13, v14, v15, @"idf(docFreq=");
  v17 = [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()];

  return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(v16, v17, v8);
}

- (id)idfExplainWithOrgApacheLuceneSearchCollectionStatistics:(id)statistics withOrgApacheLuceneSearchTermStatisticsArray:(id)array
{
  if (!statistics)
  {
    goto LABEL_9;
  }

  maxDoc = [statistics maxDoc];
  v7 = new_JavaUtilArrayList_init();
  if (!array)
  {
    goto LABEL_9;
  }

  v8 = v7;
  v9 = (array + 24);
  v10 = (array + 8 * *(array + 2) + 24);
  v11 = 0.0;
  if (array + 24 < v10)
  {
    while (1)
    {
      v12 = *v9;
      if (!*v9)
      {
        break;
      }

      ++v9;
      -[OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity idfWithLong:withLong:](self, "idfWithLong:withLong:", [v12 docFreq], maxDoc);
      v14 = v13;
      v22 = JreStrcat("$J$JC", v15, v16, v17, v18, v19, v20, v21, @"idf(docFreq=");
      v23 = [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()];
      [(JavaUtilArrayList *)v8 addWithId:OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(v22, v23, v14)];
      v11 = v11 + v14;
      if (v9 >= v10)
      {
        goto LABEL_6;
      }
    }

LABEL_9:
    JreThrowNullPointerException();
  }

LABEL_6:

  return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withJavaUtilCollection_(@"idf(), sum of:", v8, v11);
}

- (int64_t)computeNormWithOrgApacheLuceneIndexFieldInvertState:(id)state
{
  [(OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity *)self lengthNormWithOrgApacheLuceneIndexFieldInvertState:state];

  return [(OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity *)self encodeNormValueWithFloat:?];
}

- (id)computeWeightWithFloat:(float)float withOrgApacheLuceneSearchCollectionStatistics:(id)statistics withOrgApacheLuceneSearchTermStatisticsArray:(id)array
{
  if (!array || (*(array + 2) != 1 ? (v7 = [(OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity *)self idfExplainWithOrgApacheLuceneSearchCollectionStatistics:statistics withOrgApacheLuceneSearchTermStatisticsArray:?]) : (v7 = [(OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity *)self idfExplainWithOrgApacheLuceneSearchCollectionStatistics:statistics withOrgApacheLuceneSearchTermStatistics:*(array + 3)]), v8 = v7, !statistics))
  {
    JreThrowNullPointerException();
  }

  field = [statistics field];
  v10 = [OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_IDFStats alloc];
  sub_100048154(v10, field, v8, float);

  return v10;
}

- (id)simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:(id)weight withOrgApacheLuceneIndexLeafReaderContext:(id)context
{
  objc_opt_class();
  if (weight && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (!context || (v7 = [context reader]) == 0 || !weight)
  {
    JreThrowNullPointerException();
  }

  v8 = [v7 getNormValuesWithNSString:*(weight + 1)];
  v9 = [OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_TFIDFSimScorer alloc];
  sub_100047F38(v9, self, weight, v8);

  return v9;
}

@end