@interface OrgApacheLuceneSearchMinShouldMatchSumScorer_$1
- (BOOL)lessThanWithId:(id)id withId:(id)withId;
@end

@implementation OrgApacheLuceneSearchMinShouldMatchSumScorer_$1

- (BOOL)lessThanWithId:(id)id withId:(id)withId
{
  if (!id || (v5 = [id cost], !withId))
  {
    JreThrowNullPointerException();
  }

  return v5 > [withId cost];
}

@end