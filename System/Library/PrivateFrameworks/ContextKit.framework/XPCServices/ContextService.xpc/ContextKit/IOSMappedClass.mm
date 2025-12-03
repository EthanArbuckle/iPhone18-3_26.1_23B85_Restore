@interface IOSMappedClass
- (IOSMappedClass)initWithClass:(Class)class package:(id)package name:(id)name;
- (id)getConstructors;
- (id)getDeclaredConstructors;
- (id)getPackage;
@end

@implementation IOSMappedClass

- (IOSMappedClass)initWithClass:(Class)class package:(id)package name:(id)name
{
  v9.receiver = self;
  v9.super_class = IOSMappedClass;
  v7 = [(IOSConcreteClass *)&v9 initWithClass:class];
  if (v7)
  {
    v7->package_ = package;
    v7->name_ = name;
  }

  return v7;
}

- (id)getPackage
{
  v2 = [[JavaLangPackage alloc] initWithNSString:self->package_ withNSString:0 withNSString:0 withNSString:0 withNSString:0 withNSString:0 withNSString:0 withJavaNetURL:0];

  return v2;
}

- (id)getDeclaredConstructors
{
  v3 = +[NSMutableDictionary dictionary];
  sub_100280AC0(self, v3, 0, 1);
  allValues = [v3 allValues];
  v5 = JavaLangReflectMethod_class_();

  return [IOSObjectArray arrayWithNSArray:allValues type:v5];
}

- (id)getConstructors
{
  v3 = +[NSMutableDictionary dictionary];
  sub_100280AC0(self, v3, 1, 1);
  allValues = [v3 allValues];
  v5 = JavaLangReflectMethod_class_();

  return [IOSObjectArray arrayWithNSArray:allValues type:v5];
}

@end