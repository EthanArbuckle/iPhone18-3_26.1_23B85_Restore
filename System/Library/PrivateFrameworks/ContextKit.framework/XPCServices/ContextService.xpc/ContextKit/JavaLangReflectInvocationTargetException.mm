@interface JavaLangReflectInvocationTargetException
- (JavaLangReflectInvocationTargetException)initWithJavaLangThrowable:(id)throwable;
- (JavaLangReflectInvocationTargetException)initWithJavaLangThrowable:(id)throwable withNSString:(id)string;
- (void)dealloc;
@end

@implementation JavaLangReflectInvocationTargetException

- (JavaLangReflectInvocationTargetException)initWithJavaLangThrowable:(id)throwable
{
  JavaLangReflectiveOperationException_initWithNSString_withJavaLangThrowable_(self, 0, throwable);
  JreStrongAssign(&self->target_, throwable);
  return self;
}

- (JavaLangReflectInvocationTargetException)initWithJavaLangThrowable:(id)throwable withNSString:(id)string
{
  JavaLangReflectiveOperationException_initWithNSString_withJavaLangThrowable_(self, string, throwable);
  JreStrongAssign(&self->target_, throwable);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaLangReflectInvocationTargetException;
  [(JavaLangThrowable *)&v3 dealloc];
}

@end