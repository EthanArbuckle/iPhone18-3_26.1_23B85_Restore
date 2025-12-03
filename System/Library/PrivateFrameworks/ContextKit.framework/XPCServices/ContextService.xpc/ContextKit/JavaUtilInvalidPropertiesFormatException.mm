@interface JavaUtilInvalidPropertiesFormatException
- (JavaUtilInvalidPropertiesFormatException)initWithJavaLangThrowable:(id)throwable;
@end

@implementation JavaUtilInvalidPropertiesFormatException

- (JavaUtilInvalidPropertiesFormatException)initWithJavaLangThrowable:(id)throwable
{
  JavaIoIOException_init(self, a2);
  [(JavaLangThrowable *)self initCauseWithJavaLangThrowable:throwable];
  return self;
}

@end