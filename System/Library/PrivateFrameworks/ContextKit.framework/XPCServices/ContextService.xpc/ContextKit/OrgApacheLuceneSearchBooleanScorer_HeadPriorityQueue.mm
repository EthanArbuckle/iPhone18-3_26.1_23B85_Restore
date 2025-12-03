@interface OrgApacheLuceneSearchBooleanScorer_HeadPriorityQueue
- (BOOL)lessThanWithId:(id)id withId:(id)withId;
@end

@implementation OrgApacheLuceneSearchBooleanScorer_HeadPriorityQueue

- (BOOL)lessThanWithId:(id)id withId:(id)withId
{
  if (!id || !withId)
  {
    JreThrowNullPointerException();
  }

  return *(id + 6) < *(withId + 6);
}

@end