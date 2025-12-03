@interface OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue
- (BOOL)lessThanWithId:(id)id withId:(id)withId;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue

- (BOOL)lessThanWithId:(id)id withId:(id)withId
{
  oneComparator = self->oneComparator_;
  if (!oneComparator)
  {
    JreThrowNullPointerException();
  }

  oneReverseMul = self->oneReverseMul_;
  v9 = [(OrgApacheLuceneSearchFieldComparator *)oneComparator compareWithInt:*(id + 5) withInt:*(withId + 5)]* oneReverseMul;
  if (v9)
  {
    v10 = v9 <= 0;
  }

  else
  {
    v10 = *(id + 3) <= *(withId + 3);
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