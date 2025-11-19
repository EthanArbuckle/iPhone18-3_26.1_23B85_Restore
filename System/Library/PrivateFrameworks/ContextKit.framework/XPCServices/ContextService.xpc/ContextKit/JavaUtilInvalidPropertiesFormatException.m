@interface JavaUtilInvalidPropertiesFormatException
- (JavaUtilInvalidPropertiesFormatException)initWithJavaLangThrowable:(id)a3;
@end

@implementation JavaUtilInvalidPropertiesFormatException

- (JavaUtilInvalidPropertiesFormatException)initWithJavaLangThrowable:(id)a3
{
  JavaIoIOException_init(self, a2);
  [(JavaLangThrowable *)self initCauseWithJavaLangThrowable:a3];
  return self;
}

@end