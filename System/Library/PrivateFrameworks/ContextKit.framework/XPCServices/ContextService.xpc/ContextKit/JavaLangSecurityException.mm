@interface JavaLangSecurityException
- (JavaLangSecurityException)initWithJavaLangThrowable:(id)throwable;
@end

@implementation JavaLangSecurityException

- (JavaLangSecurityException)initWithJavaLangThrowable:(id)throwable
{
  if (throwable)
  {
    v5 = [throwable description];
  }

  else
  {
    v5 = 0;
  }

  JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_(self, v5, throwable);
  return self;
}

@end