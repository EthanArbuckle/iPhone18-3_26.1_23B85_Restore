@interface JavaLangExceptionInInitializerError
- (JavaLangExceptionInInitializerError)init;
- (JavaLangExceptionInInitializerError)initWithJavaLangThrowable:(id)throwable;
- (JavaLangExceptionInInitializerError)initWithNSString:(id)string;
- (void)dealloc;
@end

@implementation JavaLangExceptionInInitializerError

- (JavaLangExceptionInInitializerError)init
{
  JavaLangLinkageError_init(self, a2);
  [(JavaLangThrowable *)self initCauseWithJavaLangThrowable:0];
  return self;
}

- (JavaLangExceptionInInitializerError)initWithNSString:(id)string
{
  JavaLangLinkageError_initWithNSString_(self, string);
  [(JavaLangThrowable *)self initCauseWithJavaLangThrowable:0];
  return self;
}

- (JavaLangExceptionInInitializerError)initWithJavaLangThrowable:(id)throwable
{
  JavaLangLinkageError_init(self, a2);
  JreStrongAssign(&self->exception_, throwable);
  [(JavaLangThrowable *)self initCauseWithJavaLangThrowable:throwable];
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaLangExceptionInInitializerError;
  [(JavaLangThrowable *)&v3 dealloc];
}

@end