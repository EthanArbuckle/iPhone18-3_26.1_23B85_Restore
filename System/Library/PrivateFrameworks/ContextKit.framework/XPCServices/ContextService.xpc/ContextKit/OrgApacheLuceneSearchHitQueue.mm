@interface OrgApacheLuceneSearchHitQueue
- (BOOL)lessThanWithId:(id)id withId:(id)withId;
- (id)getSentinelObject;
@end

@implementation OrgApacheLuceneSearchHitQueue

- (id)getSentinelObject
{
  v2 = new_OrgApacheLuceneSearchScoreDoc_initWithInt_withFloat_(0x7FFFFFFF, -INFINITY);

  return v2;
}

- (BOOL)lessThanWithId:(id)id withId:(id)withId
{
  if (!id || !withId)
  {
    JreThrowNullPointerException();
  }

  v4 = *(id + 2);
  v5 = *(withId + 2);
  if (v4 == v5)
  {
    return *(id + 3) > *(withId + 3);
  }

  else
  {
    return v4 < v5;
  }
}

@end