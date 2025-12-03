@interface OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer
- (OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer)initWithOrgApacheLuceneSearchScorer:(id)scorer withOrgApacheLuceneSearchScorer:(id)searchScorer withFloat:(float)float withFloat:(float)withFloat;
- (float)score;
@end

@implementation OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer

- (OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer)initWithOrgApacheLuceneSearchScorer:(id)scorer withOrgApacheLuceneSearchScorer:(id)searchScorer withFloat:(float)float withFloat:(float)withFloat
{
  OrgApacheLuceneSearchReqOptSumScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(self, scorer, searchScorer);
  self->coordReq_ = float;
  self->coordBoth_ = withFloat;
  return self;
}

- (float)score
{
  reqScorer = self->super.reqScorer_;
  if (!reqScorer)
  {
    goto LABEL_11;
  }

  docID = [(OrgApacheLuceneSearchScorer *)reqScorer docID];
  [(OrgApacheLuceneSearchScorer *)self->super.reqScorer_ score];
  v6 = v5;
  optScorer = self->super.optScorer_;
  if (!optScorer)
  {
LABEL_9:
    v11 = &OBJC_IVAR___OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer_coordReq_;
    return v6 * *(&self->super.super.super.super.isa + *v11);
  }

  docID2 = [(OrgApacheLuceneSearchScorer *)optScorer docID];
  if (docID2 < docID)
  {
    docID2 = [(OrgApacheLuceneSearchScorer *)self->super.optScorer_ advanceWithInt:docID];
    if (docID2 == 0x7FFFFFFF)
    {
      JreStrongAssign(&self->super.optScorer_, 0);
      goto LABEL_9;
    }
  }

  if (docID2 != docID)
  {
    goto LABEL_9;
  }

  v9 = self->super.optScorer_;
  if (!v9)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneSearchScorer *)v9 score];
  v6 = v6 + v10;
  v11 = &OBJC_IVAR___OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer_coordBoth_;
  return v6 * *(&self->super.super.super.super.isa + *v11);
}

@end