@interface OrgApacheLuceneSearchDisjunctionSumScorer
- (OrgApacheLuceneSearchDisjunctionSumScorer)initWithOrgApacheLuceneSearchWeight:(id)weight withJavaUtilList:(id)list withFloatArray:(id)array withBoolean:(BOOL)boolean;
- (float)scoreWithOrgApacheLuceneSearchDisiWrapper:(id)wrapper;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchDisjunctionSumScorer

- (OrgApacheLuceneSearchDisjunctionSumScorer)initWithOrgApacheLuceneSearchWeight:(id)weight withJavaUtilList:(id)list withFloatArray:(id)array withBoolean:(BOOL)boolean
{
  OrgApacheLuceneSearchDisjunctionScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withBoolean_(self, weight, list, boolean);
  JreStrongAssign(&self->coord_, array);
  return self;
}

- (float)scoreWithOrgApacheLuceneSearchDisiWrapper:(id)wrapper
{
  if (wrapper)
  {
    wrapperCopy = wrapper;
    LODWORD(v5) = 0;
    v6 = 0.0;
    do
    {
      v7 = wrapperCopy[1];
      if (!v7)
      {
        goto LABEL_11;
      }

      [v7 score];
      v6 = v6 + v8;
      v5 = (v5 + 1);
      wrapperCopy = wrapperCopy[4];
    }

    while (wrapperCopy);
    v9 = v6;
  }

  else
  {
    v5 = 0;
    v9 = 0.0;
  }

  coord = self->coord_;
  if (!coord)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  size = coord->super.size_;
  if ((v5 & 0x80000000) != 0 || v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v5);
  }

  return *(&coord->super.size_ + v5 + 1) * v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchDisjunctionSumScorer;
  [(OrgApacheLuceneSearchDisjunctionScorer *)&v3 dealloc];
}

@end