@interface OrgApacheLuceneSearchTermQuery_TermWeight
- (BOOL)termNotInReaderWithOrgApacheLuceneIndexLeafReader:(id)reader withOrgApacheLuceneIndexTerm:(id)term;
- (float)getValueForNormalization;
- (id)scorerWithOrgApacheLuceneIndexLeafReaderContext:(id)context;
- (void)dealloc;
- (void)extractTermsWithJavaUtilSet:(id)set;
- (void)normalizeWithFloat:(float)float withFloat:(float)withFloat;
@end

@implementation OrgApacheLuceneSearchTermQuery_TermWeight

- (void)extractTermsWithJavaUtilSet:(id)set
{
  if (!set)
  {
    JreThrowNullPointerException();
  }

  getTerm = [(OrgApacheLuceneSearchTermQuery *)self->this$0_ getTerm];

  [set addWithId:getTerm];
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

- (void)normalizeWithFloat:(float)float withFloat:(float)withFloat
{
  stats = self->stats_;
  if (!stats)
  {
    JreThrowNullPointerException();
  }

  [OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight normalizeWithFloat:"normalizeWithFloat:withFloat:" withFloat:?];
}

- (id)scorerWithOrgApacheLuceneIndexLeafReaderContext:(id)context
{
  result = sub_10001A680(self, context);
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

    v9 = new_OrgApacheLuceneSearchTermScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexPostingsEnum_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(self, v7, [(OrgApacheLuceneSearchSimilaritiesSimilarity *)similarity simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:self->stats_ withOrgApacheLuceneIndexLeafReaderContext:context]);

    return v9;
  }

  return result;
}

- (BOOL)termNotInReaderWithOrgApacheLuceneIndexLeafReader:(id)reader withOrgApacheLuceneIndexTerm:(id)term
{
  if (!reader)
  {
    JreThrowNullPointerException();
  }

  return [reader docFreqWithOrgApacheLuceneIndexTerm:term] == 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTermQuery_TermWeight;
  [(OrgApacheLuceneSearchWeight *)&v3 dealloc];
}

@end