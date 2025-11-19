@interface OrgApacheLuceneSearchHitQueue
- (BOOL)lessThanWithId:(id)a3 withId:(id)a4;
- (id)getSentinelObject;
@end

@implementation OrgApacheLuceneSearchHitQueue

- (id)getSentinelObject
{
  v2 = new_OrgApacheLuceneSearchScoreDoc_initWithInt_withFloat_(0x7FFFFFFF, -INFINITY);

  return v2;
}

- (BOOL)lessThanWithId:(id)a3 withId:(id)a4
{
  if (!a3 || !a4)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 2);
  v5 = *(a4 + 2);
  if (v4 == v5)
  {
    return *(a3 + 3) > *(a4 + 3);
  }

  else
  {
    return v4 < v5;
  }
}

@end