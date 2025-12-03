@interface OrgApacheLuceneSearchPhraseQueue
- (BOOL)lessThanWithId:(id)id withId:(id)withId;
@end

@implementation OrgApacheLuceneSearchPhraseQueue

- (BOOL)lessThanWithId:(id)id withId:(id)withId
{
  if (!id || !withId)
  {
    JreThrowNullPointerException();
  }

  v4 = *(id + 2);
  v5 = *(withId + 2);
  v6 = v4 < v5;
  if (v4 == v5)
  {
    v7 = *(id + 4);
    v8 = *(withId + 4);
    v6 = v7 < v8;
    if (v7 == v8)
    {
      return *(id + 5) < *(withId + 5);
    }
  }

  return v6;
}

@end