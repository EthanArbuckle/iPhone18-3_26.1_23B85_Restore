@interface OrgApacheLuceneUtilAccountables_$1
- (int)compareWithId:(id)a3 withId:(id)a4;
@end

@implementation OrgApacheLuceneUtilAccountables_$1

- (int)compareWithId:(id)a3 withId:(id)a4
{
  if (!a3 || (v5 = [a3 description]) == 0 || !a4)
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  v7 = [a4 description];

  return [v6 compareToWithId:v7];
}

@end