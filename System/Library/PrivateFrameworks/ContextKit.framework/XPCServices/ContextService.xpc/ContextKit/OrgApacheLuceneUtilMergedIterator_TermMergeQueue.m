@interface OrgApacheLuceneUtilMergedIterator_TermMergeQueue
- (BOOL)lessThanWithId:(id)a3 withId:(id)a4;
@end

@implementation OrgApacheLuceneUtilMergedIterator_TermMergeQueue

- (BOOL)lessThanWithId:(id)a3 withId:(id)a4
{
  if (!a3 || (v5 = *(a3 + 2)) == 0 || !a4)
  {
    JreThrowNullPointerException();
  }

  v7 = [v5 compareToWithId:*(a4 + 2)];
  if (v7)
  {
    return v7 >> 31;
  }

  else
  {
    LOBYTE(v8) = *(a3 + 6) < *(a4 + 6);
  }

  return v8;
}

@end