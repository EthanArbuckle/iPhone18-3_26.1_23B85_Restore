@interface JavaLangReflectTypeVariableImpl
+ (id)typeVariableWithName:(id)a3;
- (JavaLangReflectTypeVariableImpl)initWithName:(id)a3;
- (void)dealloc;
@end

@implementation JavaLangReflectTypeVariableImpl

- (JavaLangReflectTypeVariableImpl)initWithName:(id)a3
{
  v6.receiver = self;
  v6.super_class = JavaLangReflectTypeVariableImpl;
  v4 = [(JavaLangReflectTypeVariableImpl *)&v6 init];
  if (v4)
  {
    v4->name_ = a3;
  }

  return v4;
}

+ (id)typeVariableWithName:(id)a3
{
  v3 = [[JavaLangReflectTypeVariableImpl alloc] initWithName:a3];

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaLangReflectTypeVariableImpl;
  [(JavaLangReflectTypeVariableImpl *)&v3 dealloc];
}

@end