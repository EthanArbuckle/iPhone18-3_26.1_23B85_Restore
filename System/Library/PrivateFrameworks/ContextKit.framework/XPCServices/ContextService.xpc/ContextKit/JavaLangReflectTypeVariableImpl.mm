@interface JavaLangReflectTypeVariableImpl
+ (id)typeVariableWithName:(id)name;
- (JavaLangReflectTypeVariableImpl)initWithName:(id)name;
- (void)dealloc;
@end

@implementation JavaLangReflectTypeVariableImpl

- (JavaLangReflectTypeVariableImpl)initWithName:(id)name
{
  v6.receiver = self;
  v6.super_class = JavaLangReflectTypeVariableImpl;
  v4 = [(JavaLangReflectTypeVariableImpl *)&v6 init];
  if (v4)
  {
    v4->name_ = name;
  }

  return v4;
}

+ (id)typeVariableWithName:(id)name
{
  v3 = [[JavaLangReflectTypeVariableImpl alloc] initWithName:name];

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaLangReflectTypeVariableImpl;
  [(JavaLangReflectTypeVariableImpl *)&v3 dealloc];
}

@end