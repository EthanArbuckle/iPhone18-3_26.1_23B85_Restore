@interface OrgApacheLuceneSearchBooleanTopLevelScorers_ReqMultiOptScorer
- (OrgApacheLuceneSearchBooleanTopLevelScorers_ReqMultiOptScorer)initWithOrgApacheLuceneSearchScorer:(id)a3 withOrgApacheLuceneSearchScorer:(id)a4 withInt:(int)a5 withFloatArray:(id)a6;
- (float)score;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchBooleanTopLevelScorers_ReqMultiOptScorer

- (OrgApacheLuceneSearchBooleanTopLevelScorers_ReqMultiOptScorer)initWithOrgApacheLuceneSearchScorer:(id)a3 withOrgApacheLuceneSearchScorer:(id)a4 withInt:(int)a5 withFloatArray:(id)a6
{
  OrgApacheLuceneSearchReqOptSumScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(self, a3, a4);
  self->requiredCount_ = a5;
  JreStrongAssign(&self->coords_, a6);
  return self;
}

- (float)score
{
  reqScorer = self->super.reqScorer_;
  if (!reqScorer)
  {
    goto LABEL_15;
  }

  v4 = [(OrgApacheLuceneSearchScorer *)reqScorer docID];
  [(OrgApacheLuceneSearchScorer *)self->super.reqScorer_ score];
  v6 = v5;
  optScorer = self->super.optScorer_;
  if (!optScorer)
  {
    goto LABEL_11;
  }

  v8 = [(OrgApacheLuceneSearchScorer *)optScorer docID];
  if (v8 < v4)
  {
    v8 = [(OrgApacheLuceneSearchScorer *)self->super.optScorer_ advanceWithInt:v4];
    if (v8 == 0x7FFFFFFF)
    {
      JreStrongAssign(&self->super.optScorer_, 0);
      goto LABEL_11;
    }
  }

  if (v8 != v4)
  {
LABEL_11:
    coords = self->coords_;
    if (coords)
    {
      requiredCount = self->requiredCount_;
      size = coords->super.size_;
      if ((requiredCount & 0x80000000) != 0)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  v9 = self->super.optScorer_;
  if (!v9)
  {
    goto LABEL_15;
  }

  [(OrgApacheLuceneSearchScorer *)v9 score];
  coords = self->coords_;
  if (!coords)
  {
    goto LABEL_15;
  }

  v6 = v6 + v10;
  v12 = self->requiredCount_;
  v13 = [(OrgApacheLuceneSearchScorer *)self->super.optScorer_ freq];
  size = coords->super.size_;
  requiredCount = v13 + v12;
  if ((v13 + v12) < 0)
  {
LABEL_16:
    IOSArray_throwOutOfBoundsWithMsg(size, requiredCount);
  }

LABEL_13:
  if (requiredCount >= size)
  {
    goto LABEL_16;
  }

  return v6 * *(&coords->super.size_ + requiredCount + 1);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchBooleanTopLevelScorers_ReqMultiOptScorer;
  [(OrgApacheLuceneSearchReqOptSumScorer *)&v3 dealloc];
}

@end