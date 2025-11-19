@interface OrgApacheLuceneSearchConjunctionScorer
- (float)score;
- (id)asTwoPhaseIterator;
- (id)getChildren;
- (int)docID;
- (int)freq;
- (int)nextDoc;
- (int64_t)cost;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchConjunctionScorer

- (id)asTwoPhaseIterator
{
  disi = self->disi_;
  if (!disi)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchConjunctionDISI *)disi asTwoPhaseIterator];
}

- (int)docID
{
  disi = self->disi_;
  if (!disi)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchConjunctionDISI *)disi docID];
}

- (int)nextDoc
{
  disi = self->disi_;
  if (!disi)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchConjunctionDISI *)disi nextDoc];
}

- (float)score
{
  scorers = self->scorers_;
  if (!scorers)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  p_elementType = &scorers->elementType_;
  v5 = &(&scorers->elementType_)[scorers->super.size_];
  v6 = 0.0;
  if (&scorers->elementType_ < v5)
  {
    v7 = 0.0;
    do
    {
      v8 = *p_elementType;
      if (!*p_elementType)
      {
        goto LABEL_8;
      }

      ++p_elementType;
      [v8 score];
      v6 = v9;
      v7 = v7 + v6;
    }

    while (p_elementType < v5);
    *&v6 = v7;
  }

  return self->coord_ * *&v6;
}

- (int)freq
{
  scorers = self->scorers_;
  if (!scorers)
  {
    JreThrowNullPointerException();
  }

  return scorers->super.size_;
}

- (int64_t)cost
{
  disi = self->disi_;
  if (!disi)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchConjunctionDISI *)disi cost];
}

- (id)getChildren
{
  v3 = new_JavaUtilArrayList_init();
  scorers = self->scorers_;
  if (!scorers)
  {
    JreThrowNullPointerException();
  }

  v5 = v3;
  p_elementType = &scorers->elementType_;
  v7 = &(&scorers->elementType_)[scorers->super.size_];
  if (&scorers->elementType_ < v7)
  {
    do
    {
      v8 = *p_elementType++;
      [(JavaUtilArrayList *)v5 addWithId:new_OrgApacheLuceneSearchScorer_ChildScorer_initWithOrgApacheLuceneSearchScorer_withNSString_(v8, @"MUST")];
    }

    while (p_elementType < v7);
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchConjunctionScorer;
  [(OrgApacheLuceneSearchScorer *)&v3 dealloc];
}

@end