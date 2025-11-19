@interface OrgApacheLuceneSearchConjunctionDISI_TwoPhase
- (BOOL)matches;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchConjunctionDISI_TwoPhase

- (BOOL)matches
{
  twoPhaseView = self->twoPhaseView_;
  if (!twoPhaseView)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchConjunctionDISI_TwoPhaseConjunctionDISI *)twoPhaseView matches];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchConjunctionDISI_TwoPhase;
  [(OrgApacheLuceneSearchConjunctionDISI *)&v3 dealloc];
}

@end