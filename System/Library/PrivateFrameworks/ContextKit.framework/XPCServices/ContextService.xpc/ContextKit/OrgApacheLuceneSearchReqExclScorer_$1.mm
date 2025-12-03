@interface OrgApacheLuceneSearchReqExclScorer_$1
- (BOOL)matches;
- (OrgApacheLuceneSearchReqExclScorer_$1)initWithOrgApacheLuceneSearchReqExclScorer:(id)scorer withOrgApacheLuceneSearchDocIdSetIterator:(id)iterator;
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

  docID = [(OrgApacheLuceneSearchDocIdSetIterator *)exclApproximation docID];
  if (docID < v4)
  {
    docID = [(OrgApacheLuceneSearchDocIdSetIterator *)self->this$0_->exclApproximation_ advanceWithInt:v4];
  }

  v7 = self->this$0_;
  reqTwoPhaseIterator = v7->reqTwoPhaseIterator_;
  if (v4 != docID)
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

- (OrgApacheLuceneSearchReqExclScorer_$1)initWithOrgApacheLuceneSearchReqExclScorer:(id)scorer withOrgApacheLuceneSearchDocIdSetIterator:(id)iterator
{
  JreStrongAssign(&self->this$0_, scorer);
  OrgApacheLuceneSearchTwoPhaseIterator_initWithOrgApacheLuceneSearchDocIdSetIterator_(self, iterator);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchReqExclScorer__1;
  [(OrgApacheLuceneSearchTwoPhaseIterator *)&v3 dealloc];
}

@end