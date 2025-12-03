@interface OrgApacheLuceneSearchBooleanTopLevelScorers_ReqMultiOptScorer
- (OrgApacheLuceneSearchBooleanTopLevelScorers_ReqMultiOptScorer)initWithOrgApacheLuceneSearchScorer:(id)scorer withOrgApacheLuceneSearchScorer:(id)searchScorer withInt:(int)int withFloatArray:(id)array;
- (float)score;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchBooleanTopLevelScorers_ReqMultiOptScorer

- (OrgApacheLuceneSearchBooleanTopLevelScorers_ReqMultiOptScorer)initWithOrgApacheLuceneSearchScorer:(id)scorer withOrgApacheLuceneSearchScorer:(id)searchScorer withInt:(int)int withFloatArray:(id)array
{
  OrgApacheLuceneSearchReqOptSumScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(self, scorer, searchScorer);
  self->requiredCount_ = int;
  JreStrongAssign(&self->coords_, array);
  return self;
}

- (float)score
{
  reqScorer = self->super.reqScorer_;
  if (!reqScorer)
  {
    goto LABEL_15;
  }

  docID = [(OrgApacheLuceneSearchScorer *)reqScorer docID];
  [(OrgApacheLuceneSearchScorer *)self->super.reqScorer_ score];
  v6 = v5;
  optScorer = self->super.optScorer_;
  if (!optScorer)
  {
    goto LABEL_11;
  }

  docID2 = [(OrgApacheLuceneSearchScorer *)optScorer docID];
  if (docID2 < docID)
  {
    docID2 = [(OrgApacheLuceneSearchScorer *)self->super.optScorer_ advanceWithInt:docID];
    if (docID2 == 0x7FFFFFFF)
    {
      JreStrongAssign(&self->super.optScorer_, 0);
      goto LABEL_11;
    }
  }

  if (docID2 != docID)
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
  freq = [(OrgApacheLuceneSearchScorer *)self->super.optScorer_ freq];
  size = coords->super.size_;
  requiredCount = freq + v12;
  if ((freq + v12) < 0)
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