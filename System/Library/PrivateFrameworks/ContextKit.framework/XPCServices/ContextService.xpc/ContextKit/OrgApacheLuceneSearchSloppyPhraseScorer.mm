@interface OrgApacheLuceneSearchSloppyPhraseScorer
- (BOOL)advancePPWithOrgApacheLuceneSearchPhrasePositions:(id)a3;
- (float)score;
- (id)asTwoPhaseIterator;
- (id)lesserWithOrgApacheLuceneSearchPhrasePositions:(id)a3 withOrgApacheLuceneSearchPhrasePositions:(id)a4;
- (int)docID;
- (int)nextDoc;
- (int)tpPosWithOrgApacheLuceneSearchPhrasePositions:(id)a3;
- (int64_t)cost;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchSloppyPhraseScorer

- (BOOL)advancePPWithOrgApacheLuceneSearchPhrasePositions:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = [a3 nextPosition];
  if (v5)
  {
    v6 = *(a3 + 2);
    if (v6 > self->end_)
    {
      self->end_ = v6;
    }
  }

  return v5;
}

- (id)lesserWithOrgApacheLuceneSearchPhrasePositions:(id)a3 withOrgApacheLuceneSearchPhrasePositions:(id)a4
{
  if (!a3 || !a4)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 2);
  v5 = *(a4 + 2);
  if (v4 >= v5 && (v4 != v5 || *(a3 + 4) >= *(a4 + 4)))
  {
    return a4;
  }

  return a3;
}

- (int)tpPosWithOrgApacheLuceneSearchPhrasePositions:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  return *(a3 + 4) + *(a3 + 2);
}

- (int)docID
{
  conjunction = self->conjunction_;
  if (!conjunction)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchConjunctionDISI *)conjunction docID];
}

- (int)nextDoc
{
  conjunction = self->conjunction_;
  if (!conjunction)
  {
    JreThrowNullPointerException();
  }

  v4 = [(OrgApacheLuceneSearchConjunctionDISI *)conjunction nextDoc];
  v5 = 0x7FFFFFFF;
  if (v4 != 0x7FFFFFFF)
  {
    v6 = v4;
    v7 = sub_1000C38E8(self);
    self->sloppyFreq_ = v7;
    if (v7 == 0.0)
    {
      while (1)
      {
        v9 = [(OrgApacheLuceneSearchConjunctionDISI *)self->conjunction_ nextDoc];
        if (v9 == 0x7FFFFFFF)
        {
          break;
        }

        v5 = v9;
        v8 = sub_1000C38E8(self);
        self->sloppyFreq_ = v8;
        if (v8 != 0.0)
        {
          return v5;
        }
      }

      return 0x7FFFFFFF;
    }

    else
    {
      return v6;
    }
  }

  return v5;
}

- (float)score
{
  docScorer = self->docScorer_;
  if (!docScorer)
  {
    JreThrowNullPointerException();
  }

  v4 = [(OrgApacheLuceneSearchSloppyPhraseScorer *)self docID];
  *&v5 = self->sloppyFreq_;

  [(OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *)docScorer scoreWithInt:v4 withFloat:v5];
  return result;
}

- (int64_t)cost
{
  conjunction = self->conjunction_;
  if (!conjunction)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchConjunctionDISI *)conjunction cost];
}

- (id)asTwoPhaseIterator
{
  conjunction = self->conjunction_;
  v4 = [OrgApacheLuceneSearchSloppyPhraseScorer__2 alloc];
  JreStrongAssign(&v4->this$0_, self);
  OrgApacheLuceneSearchTwoPhaseIterator_initWithOrgApacheLuceneSearchDocIdSetIterator_(v4, conjunction);

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchSloppyPhraseScorer;
  [(OrgApacheLuceneSearchScorer *)&v3 dealloc];
}

@end