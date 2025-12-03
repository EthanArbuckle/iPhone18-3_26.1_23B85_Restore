@interface OrgApacheLuceneUtilAccountables_$1
- (int)compareWithId:(id)id withId:(id)withId;
@end

@implementation OrgApacheLuceneUtilAccountables_$1

- (int)compareWithId:(id)id withId:(id)withId
{
  if (!id || (v5 = [id description]) == 0 || !withId)
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  v7 = [withId description];

  return [v6 compareToWithId:v7];
}

@end