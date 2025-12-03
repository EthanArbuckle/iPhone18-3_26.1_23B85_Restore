@interface OrgApacheLuceneSearchTopTermsRewrite_$1
- (int)compareWithId:(id)id withId:(id)withId;
@end

@implementation OrgApacheLuceneSearchTopTermsRewrite_$1

- (int)compareWithId:(id)id withId:(id)withId
{
  if (!id || (v4 = *(id + 1)) == 0 || (v6 = [v4 get]) == 0 || !withId)
  {
    JreThrowNullPointerException();
  }

  v7 = v6;
  v8 = [*(withId + 1) get];

  return [v7 compareToWithId:v8];
}

@end