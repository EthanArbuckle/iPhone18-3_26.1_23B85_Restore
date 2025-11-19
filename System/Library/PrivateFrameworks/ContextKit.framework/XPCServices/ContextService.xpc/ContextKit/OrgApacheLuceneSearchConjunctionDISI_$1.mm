@interface OrgApacheLuceneSearchConjunctionDISI_$1
- (int)compareWithId:(id)a3 withId:(id)a4;
@end

@implementation OrgApacheLuceneSearchConjunctionDISI_$1

- (int)compareWithId:(id)a3 withId:(id)a4
{
  if (!a3 || (v5 = [a3 cost], !a4))
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  v7 = [a4 cost];

  return JavaLangLong_compareWithLong_withLong_(v6, v7);
}

@end