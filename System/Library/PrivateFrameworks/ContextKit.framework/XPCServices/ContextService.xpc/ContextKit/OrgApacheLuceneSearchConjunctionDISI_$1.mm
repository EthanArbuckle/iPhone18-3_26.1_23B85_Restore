@interface OrgApacheLuceneSearchConjunctionDISI_$1
- (int)compareWithId:(id)id withId:(id)withId;
@end

@implementation OrgApacheLuceneSearchConjunctionDISI_$1

- (int)compareWithId:(id)id withId:(id)withId
{
  if (!id || (v5 = [id cost], !withId))
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  cost = [withId cost];

  return JavaLangLong_compareWithLong_withLong_(v6, cost);
}

@end