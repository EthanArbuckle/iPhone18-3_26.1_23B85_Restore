@interface OrgApacheLuceneSearchDisjunctionMaxScorer
- (OrgApacheLuceneSearchDisjunctionMaxScorer)initWithOrgApacheLuceneSearchWeight:(id)weight withFloat:(float)float withJavaUtilList:(id)list withBoolean:(BOOL)boolean;
- (float)scoreWithOrgApacheLuceneSearchDisiWrapper:(id)wrapper;
@end

@implementation OrgApacheLuceneSearchDisjunctionMaxScorer

- (OrgApacheLuceneSearchDisjunctionMaxScorer)initWithOrgApacheLuceneSearchWeight:(id)weight withFloat:(float)float withJavaUtilList:(id)list withBoolean:(BOOL)boolean
{
  OrgApacheLuceneSearchDisjunctionScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withBoolean_(self, weight, list, boolean);
  self->tieBreakerMultiplier_ = float;
  return self;
}

- (float)scoreWithOrgApacheLuceneSearchDisiWrapper:(id)wrapper
{
  if (wrapper)
  {
    wrapperCopy = wrapper;
    v5 = 0.0;
    v6 = 0.0;
    do
    {
      v7 = wrapperCopy[1];
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

      wrapperCopy = wrapperCopy[4];
    }

    while (wrapperCopy);
  }

  else
  {
    v6 = 0.0;
    v5 = 0.0;
  }

  return v5 + ((v6 - v5) * self->tieBreakerMultiplier_);
}

@end