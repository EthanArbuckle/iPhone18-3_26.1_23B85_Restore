@interface OrgApacheLuceneSearchReqExclScorer_$1
- (BOOL)matches;
- (OrgApacheLuceneSearchReqExclScorer_$1)initWithOrgApacheLuceneSearchReqExclScorer:(id)a3 withOrgApacheLuceneSearchDocIdSetIterator:(id)a4;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchReqExclScorer_$1

- (BOOL)matches
{
  reqApproximation = self->this$0_->reqApproximation_;
  if (!reqApproximation || (v4 = [(OrgApacheLuceneSearchDocIdSetIterator *)reqApproximation docID], (exclApproximation = self->this$0_->exclApproximation_) == 0))
  {
    JreThrowNullPointerException();
  }

  v6 = [(OrgApacheLuceneSearchDocIdSetIterator *)exclApproximation docID];
  if (v6 < v4)
  {
    v6 = [(OrgApacheLuceneSearchDocIdSetIterator *)self->this$0_->exclApproximation_ advanceWithInt:v4];
  }

  v7 = self->this$0_;
  reqTwoPhaseIterator = v7->reqTwoPhaseIterator_;
  if (v4 != v6)
  {
    goto LABEL_9;
  }

  exclTwoPhaseIterator = v7->exclTwoPhaseIterator_;
  if (!exclTwoPhaseIterator)
  {
    return exclTwoPhaseIterator;
  }

  if (([(OrgApacheLuceneSearchTwoPhaseIterator *)exclTwoPhaseIterator matches]& 1) != 0)
  {
    LOBYTE(exclTwoPhaseIterator) = 0;
  }

  else
  {
LABEL_9:
    if (reqTwoPhaseIterator)
    {

      LOBYTE(exclTwoPhaseIterator) = [(OrgApacheLuceneSearchTwoPhaseIterator *)reqTwoPhaseIterator matches];
    }

    else
    {
      LOBYTE(exclTwoPhaseIterator) = 1;
    }
  }

  return exclTwoPhaseIterator;
}

- (OrgApacheLuceneSearchReqExclScorer_$1)initWithOrgApacheLuceneSearchReqExclScorer:(id)a3 withOrgApacheLuceneSearchDocIdSetIterator:(id)a4
{
  JreStrongAssign(&self->this$0_, a3);
  OrgApacheLuceneSearchTwoPhaseIterator_initWithOrgApacheLuceneSearchDocIdSetIterator_(self, a4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchReqExclScorer__1;
  [(OrgApacheLuceneSearchTwoPhaseIterator *)&v3 dealloc];
}

@end