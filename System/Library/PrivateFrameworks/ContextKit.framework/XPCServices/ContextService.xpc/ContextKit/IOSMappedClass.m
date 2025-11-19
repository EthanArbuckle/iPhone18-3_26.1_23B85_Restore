@interface IOSMappedClass
- (IOSMappedClass)initWithClass:(Class)a3 package:(id)a4 name:(id)a5;
- (id)getConstructors;
- (id)getDeclaredConstructors;
- (id)getPackage;
@end

@implementation IOSMappedClass

- (IOSMappedClass)initWithClass:(Class)a3 package:(id)a4 name:(id)a5
{
  v9.receiver = self;
  v9.super_class = IOSMappedClass;
  v7 = [(IOSConcreteClass *)&v9 initWithClass:a3];
  if (v7)
  {
    v7->package_ = a4;
    v7->name_ = a5;
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
  v4 = [v3 allValues];
  v5 = JavaLangReflectMethod_class_();

  return [IOSObjectArray arrayWithNSArray:v4 type:v5];
}

- (id)getConstructors
{
  v3 = +[NSMutableDictionary dictionary];
  sub_100280AC0(self, v3, 1, 1);
  v4 = [v3 allValues];
  v5 = JavaLangReflectMethod_class_();

  return [IOSObjectArray arrayWithNSArray:v4 type:v5];
}

@end