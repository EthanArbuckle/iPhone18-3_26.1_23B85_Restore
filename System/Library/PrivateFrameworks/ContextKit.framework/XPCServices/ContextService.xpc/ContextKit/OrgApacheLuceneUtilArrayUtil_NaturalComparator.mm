@interface OrgApacheLuceneUtilArrayUtil_NaturalComparator
- (int)compareWithId:(id)id withId:(id)withId;
@end

@implementation OrgApacheLuceneUtilArrayUtil_NaturalComparator

- (int)compareWithId:(id)id withId:(id)withId
{
  if (!id)
  {
    JreThrowNullPointerException();
  }

  return [id compareToWithId:withId];
}

@end