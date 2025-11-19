@interface OrgApacheLuceneSearchTermQuery_TermWeight
- (BOOL)termNotInReaderWithOrgApacheLuceneIndexLeafReader:(id)a3 withOrgApacheLuceneIndexTerm:(id)a4;
- (float)getValueForNormalization;
- (id)scorerWithOrgApacheLuceneIndexLeafReaderContext:(id)a3;
- (void)dealloc;
- (void)extractTermsWithJavaUtilSet:(id)a3;
- (void)normalizeWithFloat:(float)a3 withFloat:(float)a4;
@end

@implementation OrgApacheLuceneSearchTermQuery_TermWeight

- (void)extractTermsWithJavaUtilSet:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = [(OrgApacheLuceneSearchTermQuery *)self->this$0_ getTerm];

  [a3 addWithId:v4];
}

- (float)getValueForNormalization
{
  stats = self->stats_;
  if (!stats)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *)stats getValueForNormalization];
  return result;
}

- (void)normalizeWithFloat:(float)a3 withFloat:(float)a4
{
  stats = self->stats_;
  if (!stats)
  {
    JreThrowNullPointerException();
  }

  [OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight normalizeWithFloat:"normalizeWithFloat:withFloat:" withFloat:?];
}

- (id)scorerWithOrgApacheLuceneIndexLeafReaderContext:(id)a3
{
  result = sub_10001A680(self, a3);
  if (result)
  {
    if (self->needsScores_)
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    v7 = [result postingsWithOrgApacheLuceneIndexPostingsEnum:0 withInt:v6];
    similarity = self->similarity_;
    if (!similarity)
    {
      JreThrowNullPointerException();
    }

    v9 = new_OrgApacheLuceneSearchTermScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexPostingsEnum_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(self, v7, [(OrgApacheLuceneSearchSimilaritiesSimilarity *)similarity simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:self->stats_ withOrgApacheLuceneIndexLeafReaderContext:a3]);

    return v9;
  }

  return result;
}

- (BOOL)termNotInReaderWithOrgApacheLuceneIndexLeafReader:(id)a3 withOrgApacheLuceneIndexTerm:(id)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  return [a3 docFreqWithOrgApacheLuceneIndexTerm:a4] == 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTermQuery_TermWeight;
  [(OrgApacheLuceneSearchWeight *)&v3 dealloc];
}

@end