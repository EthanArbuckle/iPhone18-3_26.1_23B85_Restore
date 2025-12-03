@interface JavaLangClassNotFoundException
- (JavaLangClassNotFoundException)initWithNSString:(id)string withJavaLangThrowable:(id)throwable;
- (void)dealloc;
@end

@implementation JavaLangClassNotFoundException

- (JavaLangClassNotFoundException)initWithNSString:(id)string withJavaLangThrowable:(id)throwable
{
  JavaLangReflectiveOperationException_initWithNSString_(self, string);
  JreStrongAssign(&self->ex_, throwable);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaLangClassNotFoundException;
  [(JavaLangThrowable *)&v3 dealloc];
}

@end