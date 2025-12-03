@interface ComAppleContextkitCategoriesConstellation_GroupingRequest_$1
- (int)compareWithId:(id)id withId:(id)withId;
@end

@implementation ComAppleContextkitCategoriesConstellation_GroupingRequest_$1

- (int)compareWithId:(id)id withId:(id)withId
{
  if (!id || (v5 = [id getValue]) == 0 || (v6 = objc_msgSend(v5, "size"), !withId) || (v7 = v6, (v8 = objc_msgSend(withId, "getValue")) == 0))
  {
    JreThrowNullPointerException();
  }

  v9 = -[v8 size];

  return JavaLangInteger_compareWithInt_withInt_(-v7, v9);
}

@end