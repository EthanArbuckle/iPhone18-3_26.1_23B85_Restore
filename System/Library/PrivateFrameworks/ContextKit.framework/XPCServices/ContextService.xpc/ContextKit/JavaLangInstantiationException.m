@interface JavaLangInstantiationException
- (JavaLangInstantiationException)initWithIOSClass:(id)a3;
@end

@implementation JavaLangInstantiationException

- (JavaLangInstantiationException)initWithIOSClass:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  JavaLangReflectiveOperationException_initWithNSString_(self, [a3 getName]);
  return self;
}

@end