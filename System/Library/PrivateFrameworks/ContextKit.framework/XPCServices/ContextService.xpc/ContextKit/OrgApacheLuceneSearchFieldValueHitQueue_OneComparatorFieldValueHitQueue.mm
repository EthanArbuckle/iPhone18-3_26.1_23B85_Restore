@interface OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue
- (BOOL)lessThanWithId:(id)a3 withId:(id)a4;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue

- (BOOL)lessThanWithId:(id)a3 withId:(id)a4
{
  oneComparator = self->oneComparator_;
  if (!oneComparator)
  {
    JreThrowNullPointerException();
  }

  oneReverseMul = self->oneReverseMul_;
  v9 = [(OrgApacheLuceneSearchFieldComparator *)oneComparator compareWithInt:*(a3 + 5) withInt:*(a4 + 5)]* oneReverseMul;
  if (v9)
  {
    v10 = v9 <= 0;
  }

  else
  {
    v10 = *(a3 + 3) <= *(a4 + 3);
  }

  return !v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue;
  [(OrgApacheLuceneSearchFieldValueHitQueue *)&v3 dealloc];
}

@end