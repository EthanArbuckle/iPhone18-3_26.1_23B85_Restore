@interface JavaLangString_CaseInsensitiveComparator
- (int)compareWithId:(id)id withId:(id)withId;
@end

@implementation JavaLangString_CaseInsensitiveComparator

- (int)compareWithId:(id)id withId:(id)withId
{
  if (!id)
  {
    v6 = objc_opt_class();
    Exception = makeException(v6);
    objc_exception_throw(Exception);
  }

  return [id compareToIgnoreCase:withId];
}

@end