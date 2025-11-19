@interface OrgApacheLuceneSearchDisjunctionSumScorer
- (OrgApacheLuceneSearchDisjunctionSumScorer)initWithOrgApacheLuceneSearchWeight:(id)a3 withJavaUtilList:(id)a4 withFloatArray:(id)a5 withBoolean:(BOOL)a6;
- (float)scoreWithOrgApacheLuceneSearchDisiWrapper:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchDisjunctionSumScorer

- (OrgApacheLuceneSearchDisjunctionSumScorer)initWithOrgApacheLuceneSearchWeight:(id)a3 withJavaUtilList:(id)a4 withFloatArray:(id)a5 withBoolean:(BOOL)a6
{
  OrgApacheLuceneSearchDisjunctionScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withBoolean_(self, a3, a4, a6);
  JreStrongAssign(&self->coord_, a5);
  return self;
}

- (float)scoreWithOrgApacheLuceneSearchDisiWrapper:(id)a3
{
  if (a3)
  {
    v4 = a3;
    LODWORD(v5) = 0;
    v6 = 0.0;
    do
    {
      v7 = v4[1];
      if (!v7)
      {
        goto LABEL_11;
      }

      [v7 score];
      v6 = v6 + v8;
      v5 = (v5 + 1);
      v4 = v4[4];
    }

    while (v4);
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