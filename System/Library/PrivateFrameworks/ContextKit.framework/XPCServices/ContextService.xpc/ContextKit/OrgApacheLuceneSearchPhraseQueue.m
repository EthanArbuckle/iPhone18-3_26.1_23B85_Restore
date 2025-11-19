@interface OrgApacheLuceneSearchPhraseQueue
- (BOOL)lessThanWithId:(id)a3 withId:(id)a4;
@end

@implementation OrgApacheLuceneSearchPhraseQueue

- (BOOL)lessThanWithId:(id)a3 withId:(id)a4
{
  if (!a3 || !a4)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 2);
  v5 = *(a4 + 2);
  v6 = v4 < v5;
  if (v4 == v5)
  {
    v7 = *(a3 + 4);
    v8 = *(a4 + 4);
    v6 = v7 < v8;
    if (v7 == v8)
    {
      return *(a3 + 5) < *(a4 + 5);
    }
  }

  return v6;
}

@end