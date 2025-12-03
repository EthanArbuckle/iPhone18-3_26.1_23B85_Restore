@interface OrgApacheLuceneSearchSloppyPhraseScorer_$1
- (int)compareWithId:(id)id withId:(id)withId;
@end

@implementation OrgApacheLuceneSearchSloppyPhraseScorer_$1

- (int)compareWithId:(id)id withId:(id)withId
{
  if (!id || !withId)
  {
    JreThrowNullPointerException();
  }

  return *(id + 4) - *(withId + 4);
}

@end