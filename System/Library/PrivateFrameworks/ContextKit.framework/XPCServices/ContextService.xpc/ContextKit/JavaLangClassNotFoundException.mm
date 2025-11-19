@interface JavaLangClassNotFoundException
- (JavaLangClassNotFoundException)initWithNSString:(id)a3 withJavaLangThrowable:(id)a4;
- (void)dealloc;
@end

@implementation JavaLangClassNotFoundException

- (JavaLangClassNotFoundException)initWithNSString:(id)a3 withJavaLangThrowable:(id)a4
{
  JavaLangReflectiveOperationException_initWithNSString_(self, a3);
  JreStrongAssign(&self->ex_, a4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaLangClassNotFoundException;
  [(JavaLangThrowable *)&v3 dealloc];
}

@end