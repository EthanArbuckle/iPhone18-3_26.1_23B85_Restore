@interface ComAppleContextkitCategoriesConstellation_$1
- (int)compareWithId:(id)a3 withId:(id)a4;
@end

@implementation ComAppleContextkitCategoriesConstellation_$1

- (int)compareWithId:(id)a3 withId:(id)a4
{
  if (!a3 || (v5 = [a3 intValue], !a4))
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  v7 = [a4 intValue];

  return JavaLangInteger_compareWithInt_withInt_(v6 ^ 0x80000000, v7 ^ 0x80000000);
}

@end