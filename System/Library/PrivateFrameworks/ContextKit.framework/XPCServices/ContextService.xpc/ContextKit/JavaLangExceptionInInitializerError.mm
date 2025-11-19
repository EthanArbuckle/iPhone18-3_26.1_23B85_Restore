@interface JavaLangExceptionInInitializerError
- (JavaLangExceptionInInitializerError)init;
- (JavaLangExceptionInInitializerError)initWithJavaLangThrowable:(id)a3;
- (JavaLangExceptionInInitializerError)initWithNSString:(id)a3;
- (void)dealloc;
@end

@implementation JavaLangExceptionInInitializerError

- (JavaLangExceptionInInitializerError)init
{
  JavaLangLinkageError_init(self, a2);
  [(JavaLangThrowable *)self initCauseWithJavaLangThrowable:0];
  return self;
}

- (JavaLangExceptionInInitializerError)initWithNSString:(id)a3
{
  JavaLangLinkageError_initWithNSString_(self, a3);
  [(JavaLangThrowable *)self initCauseWithJavaLangThrowable:0];
  return self;
}

- (JavaLangExceptionInInitializerError)initWithJavaLangThrowable:(id)a3
{
  JavaLangLinkageError_init(self, a2);
  JreStrongAssign(&self->exception_, a3);
  [(JavaLangThrowable *)self initCauseWithJavaLangThrowable:a3];
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaLangExceptionInInitializerError;
  [(JavaLangThrowable *)&v3 dealloc];
}

@end