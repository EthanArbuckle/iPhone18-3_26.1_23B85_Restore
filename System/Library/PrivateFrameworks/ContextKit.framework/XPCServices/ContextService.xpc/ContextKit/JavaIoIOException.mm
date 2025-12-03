@interface JavaIoIOException
- (JavaIoIOException)initWithJavaLangThrowable:(id)throwable;
@end

@implementation JavaIoIOException

- (JavaIoIOException)initWithJavaLangThrowable:(id)throwable
{
  if (throwable)
  {
    v5 = [throwable description];
  }

  else
  {
    v5 = 0;
  }

  JavaLangException_initWithNSString_withJavaLangThrowable_(self, v5, throwable);
  return self;
}

@end