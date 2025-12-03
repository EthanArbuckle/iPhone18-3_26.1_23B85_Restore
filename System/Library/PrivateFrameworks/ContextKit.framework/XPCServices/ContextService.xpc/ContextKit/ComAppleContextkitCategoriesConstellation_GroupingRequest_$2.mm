@interface ComAppleContextkitCategoriesConstellation_GroupingRequest_$2
- (int)compareWithId:(id)id withId:(id)withId;
@end

@implementation ComAppleContextkitCategoriesConstellation_GroupingRequest_$2

- (int)compareWithId:(id)id withId:(id)withId
{
  if (!id || (v5 = [id getValue]) == 0 || (v6 = objc_msgSend(v5, "intValue"), !withId) || (v7 = v6, (v8 = objc_msgSend(withId, "getValue")) == 0))
  {
    JreThrowNullPointerException();
  }

  intValue = [v8 intValue];

  return JavaLangInteger_compareWithInt_withInt_(v7, intValue);
}

@end