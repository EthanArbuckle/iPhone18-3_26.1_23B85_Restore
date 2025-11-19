@interface OrgApacheLuceneSearchTopTermsRewrite_$1
- (int)compareWithId:(id)a3 withId:(id)a4;
@end

@implementation OrgApacheLuceneSearchTopTermsRewrite_$1

- (int)compareWithId:(id)a3 withId:(id)a4
{
  if (!a3 || (v4 = *(a3 + 1)) == 0 || (v6 = [v4 get]) == 0 || !a4)
  {
    JreThrowNullPointerException();
  }

  v7 = v6;
  v8 = [*(a4 + 1) get];

  return [v7 compareToWithId:v8];
}

@end