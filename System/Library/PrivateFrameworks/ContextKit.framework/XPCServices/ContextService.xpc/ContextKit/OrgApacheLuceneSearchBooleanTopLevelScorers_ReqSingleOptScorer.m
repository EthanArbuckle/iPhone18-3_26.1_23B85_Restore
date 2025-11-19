@interface OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer
- (OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer)initWithOrgApacheLuceneSearchScorer:(id)a3 withOrgApacheLuceneSearchScorer:(id)a4 withFloat:(float)a5 withFloat:(float)a6;
- (float)score;
@end

@implementation OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer

- (OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer)initWithOrgApacheLuceneSearchScorer:(id)a3 withOrgApacheLuceneSearchScorer:(id)a4 withFloat:(float)a5 withFloat:(float)a6
{
  OrgApacheLuceneSearchReqOptSumScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(self, a3, a4);
  self->coordReq_ = a5;
  self->coordBoth_ = a6;
  return self;
}

- (float)score
{
  reqScorer = self->super.reqScorer_;
  if (!reqScorer)
  {
    goto LABEL_11;
  }

  v4 = [(OrgApacheLuceneSearchScorer *)reqScorer docID];
  [(OrgApacheLuceneSearchScorer *)self->super.reqScorer_ score];
  v6 = v5;
  optScorer = self->super.optScorer_;
  if (!optScorer)
  {
LABEL_9:
    v11 = &OBJC_IVAR___OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer_coordReq_;
    return v6 * *(&self->super.super.super.super.isa + *v11);
  }

  v8 = [(OrgApacheLuceneSearchScorer *)optScorer docID];
  if (v8 < v4)
  {
    v8 = [(OrgApacheLuceneSearchScorer *)self->super.optScorer_ advanceWithInt:v4];
    if (v8 == 0x7FFFFFFF)
    {
      JreStrongAssign(&self->super.optScorer_, 0);
      goto LABEL_9;
    }
  }

  if (v8 != v4)
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