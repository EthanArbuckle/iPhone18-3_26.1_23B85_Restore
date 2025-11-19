@interface OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity
- (id)computeWeightWithFloat:(float)a3 withOrgApacheLuceneSearchCollectionStatistics:(id)a4 withOrgApacheLuceneSearchTermStatisticsArray:(id)a5;
- (id)idfExplainWithOrgApacheLuceneSearchCollectionStatistics:(id)a3 withOrgApacheLuceneSearchTermStatistics:(id)a4;
- (id)idfExplainWithOrgApacheLuceneSearchCollectionStatistics:(id)a3 withOrgApacheLuceneSearchTermStatisticsArray:(id)a4;
- (id)simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:(id)a3 withOrgApacheLuceneIndexLeafReaderContext:(id)a4;
- (int64_t)computeNormWithOrgApacheLuceneIndexFieldInvertState:(id)a3;
@end

@implementation OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity

- (id)idfExplainWithOrgApacheLuceneSearchCollectionStatistics:(id)a3 withOrgApacheLuceneSearchTermStatistics:(id)a4
{
  if (!a4 || (v6 = [a4 docFreq], !a3))
  {
    JreThrowNullPointerException();
  }

  -[OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity idfWithLong:withLong:](self, "idfWithLong:withLong:", v6, [a3 maxDoc]);
  v8 = v7;
  v16 = JreStrcat("$J$JC", v9, v10, v11, v12, v13, v14, v15, @"idf(docFreq=");
  v17 = [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()];

  return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(v16, v17, v8);
}

- (id)idfExplainWithOrgApacheLuceneSearchCollectionStatistics:(id)a3 withOrgApacheLuceneSearchTermStatisticsArray:(id)a4
{
  if (!a3)
  {
    goto LABEL_9;
  }

  v6 = [a3 maxDoc];
  v7 = new_JavaUtilArrayList_init();
  if (!a4)
  {
    goto LABEL_9;
  }

  v8 = v7;
  v9 = (a4 + 24);
  v10 = (a4 + 8 * *(a4 + 2) + 24);
  v11 = 0.0;
  if (a4 + 24 < v10)
  {
    while (1)
    {
      v12 = *v9;
      if (!*v9)
      {
        break;
      }

      ++v9;
      -[OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity idfWithLong:withLong:](self, "idfWithLong:withLong:", [v12 docFreq], v6);
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

- (int64_t)computeNormWithOrgApacheLuceneIndexFieldInvertState:(id)a3
{
  [(OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity *)self lengthNormWithOrgApacheLuceneIndexFieldInvertState:a3];

  return [(OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity *)self encodeNormValueWithFloat:?];
}

- (id)computeWeightWithFloat:(float)a3 withOrgApacheLuceneSearchCollectionStatistics:(id)a4 withOrgApacheLuceneSearchTermStatisticsArray:(id)a5
{
  if (!a5 || (*(a5 + 2) != 1 ? (v7 = [(OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity *)self idfExplainWithOrgApacheLuceneSearchCollectionStatistics:a4 withOrgApacheLuceneSearchTermStatisticsArray:?]) : (v7 = [(OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity *)self idfExplainWithOrgApacheLuceneSearchCollectionStatistics:a4 withOrgApacheLuceneSearchTermStatistics:*(a5 + 3)]), v8 = v7, !a4))
  {
    JreThrowNullPointerException();
  }

  v9 = [a4 field];
  v10 = [OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_IDFStats alloc];
  sub_100048154(v10, v9, v8, a3);

  return v10;
}

- (id)simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:(id)a3 withOrgApacheLuceneIndexLeafReaderContext:(id)a4
{
  objc_opt_class();
  if (a3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (!a4 || (v7 = [a4 reader]) == 0 || !a3)
  {
    JreThrowNullPointerException();
  }

  v8 = [v7 getNormValuesWithNSString:*(a3 + 1)];
  v9 = [OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_TFIDFSimScorer alloc];
  sub_100047F38(v9, self, a3, v8);

  return v9;
}

@end