@interface JavaLangReflectInvocationTargetException
- (JavaLangReflectInvocationTargetException)initWithJavaLangThrowable:(id)a3;
- (JavaLangReflectInvocationTargetException)initWithJavaLangThrowable:(id)a3 withNSString:(id)a4;
- (void)dealloc;
@end

@implementation JavaLangReflectInvocationTargetException

- (JavaLangReflectInvocationTargetException)initWithJavaLangThrowable:(id)a3
{
  JavaLangReflectiveOperationException_initWithNSString_withJavaLangThrowable_(self, 0, a3);
  JreStrongAssign(&self->target_, a3);
  return self;
}

- (JavaLangReflectInvocationTargetException)initWithJavaLangThrowable:(id)a3 withNSString:(id)a4
{
  JavaLangReflectiveOperationException_initWithNSString_withJavaLangThrowable_(self, a4, a3);
  JreStrongAssign(&self->target_, a3);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaLangReflectInvocationTargetException;
  [(JavaLangThrowable *)&v3 dealloc];
}

@end