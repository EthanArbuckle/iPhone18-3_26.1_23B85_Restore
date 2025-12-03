@interface OrgApacheLuceneUtilFstFST_NodeQueue
- (BOOL)lessThanWithId:(id)id withId:(id)withId;
@end

@implementation OrgApacheLuceneUtilFstFST_NodeQueue

- (BOOL)lessThanWithId:(id)id withId:(id)withId
{
  if (!id)
  {
    JreThrowNullPointerException();
  }

  return [id compareToWithId:withId] >> 31;
}

@end