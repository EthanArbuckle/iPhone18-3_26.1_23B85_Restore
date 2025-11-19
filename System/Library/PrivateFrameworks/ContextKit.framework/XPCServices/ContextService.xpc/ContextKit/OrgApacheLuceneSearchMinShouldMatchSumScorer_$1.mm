@interface OrgApacheLuceneSearchMinShouldMatchSumScorer_$1
- (BOOL)lessThanWithId:(id)a3 withId:(id)a4;
@end

@implementation OrgApacheLuceneSearchMinShouldMatchSumScorer_$1

- (BOOL)lessThanWithId:(id)a3 withId:(id)a4
{
  if (!a3 || (v5 = [a3 cost], !a4))
  {
    JreThrowNullPointerException();
  }

  return v5 > [a4 cost];
}

@end