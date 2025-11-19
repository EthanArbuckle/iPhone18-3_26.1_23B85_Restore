@interface OrgApacheLuceneSearchBooleanScorer_HeadPriorityQueue
- (BOOL)lessThanWithId:(id)a3 withId:(id)a4;
@end

@implementation OrgApacheLuceneSearchBooleanScorer_HeadPriorityQueue

- (BOOL)lessThanWithId:(id)a3 withId:(id)a4
{
  if (!a3 || !a4)
  {
    JreThrowNullPointerException();
  }

  return *(a3 + 6) < *(a4 + 6);
}

@end