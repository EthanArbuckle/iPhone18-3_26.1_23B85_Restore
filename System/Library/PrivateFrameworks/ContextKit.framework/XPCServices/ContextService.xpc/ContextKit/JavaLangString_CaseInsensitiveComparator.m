@interface JavaLangString_CaseInsensitiveComparator
- (int)compareWithId:(id)a3 withId:(id)a4;
@end

@implementation JavaLangString_CaseInsensitiveComparator

- (int)compareWithId:(id)a3 withId:(id)a4
{
  if (!a3)
  {
    v6 = objc_opt_class();
    Exception = makeException(v6);
    objc_exception_throw(Exception);
  }

  return [a3 compareToIgnoreCase:a4];
}

@end