@interface JavaLangInstantiationException
- (JavaLangInstantiationException)initWithIOSClass:(id)class;
@end

@implementation JavaLangInstantiationException

- (JavaLangInstantiationException)initWithIOSClass:(id)class
{
  if (!class)
  {
    JreThrowNullPointerException();
  }

  JavaLangReflectiveOperationException_initWithNSString_(self, [class getName]);
  return self;
}

@end