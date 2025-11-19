@interface JavaLangIllegalStateException
- (JavaLangIllegalStateException)initWithJavaLangThrowable:(id)a3;
@end

@implementation JavaLangIllegalStateException

- (JavaLangIllegalStateException)initWithJavaLangThrowable:(id)a3
{
  if (a3)
  {
    v5 = [a3 description];
  }

  else
  {
    v5 = 0;
  }

  JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_(self, v5, a3);
  return self;
}

@end