@interface OrgApacheLuceneUtilMergedIterator_TermMergeQueue
- (BOOL)lessThanWithId:(id)id withId:(id)withId;
@end

@implementation OrgApacheLuceneUtilMergedIterator_TermMergeQueue

- (BOOL)lessThanWithId:(id)id withId:(id)withId
{
  if (!id || (v5 = *(id + 2)) == 0 || !withId)
  {
    JreThrowNullPointerException();
  }

  v7 = [v5 compareToWithId:*(withId + 2)];
  if (v7)
  {
    return v7 >> 31;
  }

  else
  {
    LOBYTE(v8) = *(id + 6) < *(withId + 6);
  }

  return v8;
}

@end