@interface OrgApacheLuceneUtilFstFST_NodeQueue
- (BOOL)lessThanWithId:(id)a3 withId:(id)a4;
@end

@implementation OrgApacheLuceneUtilFstFST_NodeQueue

- (BOOL)lessThanWithId:(id)a3 withId:(id)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  return [a3 compareToWithId:a4] >> 31;
}

@end