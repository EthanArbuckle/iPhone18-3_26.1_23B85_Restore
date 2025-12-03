@interface OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_IDFStats
- (void)dealloc;
- (void)normalizeWithFloat:(float)float withFloat:(float)withFloat;
@end

@implementation OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_IDFStats

- (void)normalizeWithFloat:(float)float withFloat:(float)withFloat
{
  v5 = float * withFloat;
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