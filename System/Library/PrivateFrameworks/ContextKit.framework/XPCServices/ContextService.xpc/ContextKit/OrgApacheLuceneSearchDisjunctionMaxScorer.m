@interface OrgApacheLuceneSearchDisjunctionMaxScorer
- (OrgApacheLuceneSearchDisjunctionMaxScorer)initWithOrgApacheLuceneSearchWeight:(id)a3 withFloat:(float)a4 withJavaUtilList:(id)a5 withBoolean:(BOOL)a6;
- (float)scoreWithOrgApacheLuceneSearchDisiWrapper:(id)a3;
@end

@implementation OrgApacheLuceneSearchDisjunctionMaxScorer

- (OrgApacheLuceneSearchDisjunctionMaxScorer)initWithOrgApacheLuceneSearchWeight:(id)a3 withFloat:(float)a4 withJavaUtilList:(id)a5 withBoolean:(BOOL)a6
{
  OrgApacheLuceneSearchDisjunctionScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withBoolean_(self, a3, a5, a6);
  self->tieBreakerMultiplier_ = a4;
  return self;
}

- (float)scoreWithOrgApacheLuceneSearchDisiWrapper:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = 0.0;
    v6 = 0.0;
    do
    {
      v7 = v4[1];
      if (!v7)
      {
        JreThrowNullPointerException();
      }

      [v7 score];
      v6 = v6 + v8;
      if (v8 > v5)
      {
        v5 = v8;
      }

      v4 = v4[4];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
    v5 = 0.0;
  }

  return v5 + ((v6 - v5) * self->tieBreakerMultiplier_);
}

@end