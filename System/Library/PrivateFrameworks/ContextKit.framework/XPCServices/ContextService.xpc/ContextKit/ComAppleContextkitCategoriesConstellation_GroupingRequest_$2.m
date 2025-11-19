@interface ComAppleContextkitCategoriesConstellation_GroupingRequest_$2
- (int)compareWithId:(id)a3 withId:(id)a4;
@end

@implementation ComAppleContextkitCategoriesConstellation_GroupingRequest_$2

- (int)compareWithId:(id)a3 withId:(id)a4
{
  if (!a3 || (v5 = [a3 getValue]) == 0 || (v6 = objc_msgSend(v5, "intValue"), !a4) || (v7 = v6, (v8 = objc_msgSend(a4, "getValue")) == 0))
  {
    JreThrowNullPointerException();
  }

  v9 = [v8 intValue];

  return JavaLangInteger_compareWithInt_withInt_(v7, v9);
}

@end