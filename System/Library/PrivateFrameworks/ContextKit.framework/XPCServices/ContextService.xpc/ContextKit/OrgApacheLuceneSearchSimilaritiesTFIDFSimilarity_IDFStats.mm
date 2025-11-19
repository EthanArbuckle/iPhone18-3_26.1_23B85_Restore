@interface OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_IDFStats
- (void)dealloc;
- (void)normalizeWithFloat:(float)a3 withFloat:(float)a4;
@end

@implementation OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_IDFStats

- (void)normalizeWithFloat:(float)a3 withFloat:(float)a4
{
  v5 = a3 * a4;
  self->queryNorm_ = v5;
  v6 = v5 * self->queryWeight_;
  self->queryWeight_ = v6;
  idf = self->idf_;
  if (!idf)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneSearchExplanation *)idf getValue];
  self->value_ = v6 * v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_IDFStats;
  [(OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_IDFStats *)&v3 dealloc];
}

@end