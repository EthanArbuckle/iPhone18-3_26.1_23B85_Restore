@interface ComAppleContextkitCategoriesConstellation_$1
- (int)compareWithId:(id)id withId:(id)withId;
@end

@implementation ComAppleContextkitCategoriesConstellation_$1

- (int)compareWithId:(id)id withId:(id)withId
{
  if (!id || (v5 = [id intValue], !withId))
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  intValue = [withId intValue];

  return JavaLangInteger_compareWithInt_withInt_(v6 ^ 0x80000000, intValue ^ 0x80000000);
}

@end