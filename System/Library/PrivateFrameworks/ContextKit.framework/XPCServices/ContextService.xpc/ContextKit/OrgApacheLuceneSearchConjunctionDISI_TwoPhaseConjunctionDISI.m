@interface OrgApacheLuceneSearchConjunctionDISI_TwoPhaseConjunctionDISI
- (BOOL)matches;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchConjunctionDISI_TwoPhaseConjunctionDISI

- (BOOL)matches
{
  twoPhaseIterators = self->twoPhaseIterators_;
  if (!twoPhaseIterators)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  p_elementType = &twoPhaseIterators->elementType_;
  v4 = &(&twoPhaseIterators->elementType_)[twoPhaseIterators->super.size_];
  do
  {
    v5 = p_elementType;
    if (p_elementType >= v4)
    {
      break;
    }

    v6 = *p_elementType;
    if (!*p_elementType)
    {
      goto LABEL_7;
    }

    ++p_elementType;
  }

  while (([v6 matches] & 1) != 0);
  return v5 >= v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchConjunctionDISI_TwoPhaseConjunctionDISI;
  [(OrgApacheLuceneSearchTwoPhaseIterator *)&v3 dealloc];
}

@end