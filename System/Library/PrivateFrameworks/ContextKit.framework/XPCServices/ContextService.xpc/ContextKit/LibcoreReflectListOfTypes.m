@interface LibcoreReflectListOfTypes
+ (void)initialize;
- (id)description;
- (id)getResolvedTypes;
- (int)length;
- (void)addWithJavaLangReflectType:(id)a3;
- (void)dealloc;
@end

@implementation LibcoreReflectListOfTypes

- (void)addWithJavaLangReflectType:(id)a3
{
  if (!a3)
  {
    v4 = new_JavaLangNullPointerException_initWithNSString_(@"type == null");
    objc_exception_throw(v4);
  }

  types = self->types_;
  if (!types)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilArrayList *)types addWithId:?];
}

- (int)length
{
  types = self->types_;
  if (!types)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilArrayList *)types size];
}

- (id)getResolvedTypes
{
  p_resolvedTypes = &self->resolvedTypes_;
  resolvedTypes = self->resolvedTypes_;
  if (!resolvedTypes)
  {
    resolvedTypes = sub_100224300(self->types_);
    JreStrongAssign(p_resolvedTypes, resolvedTypes);
  }

  return resolvedTypes;
}

- (id)description
{
  v3 = new_JavaLangStringBuilder_init();
  types = self->types_;
  if (!types)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  v5 = 0;
  while (v5 < [(JavaUtilArrayList *)types size])
  {
    if (v5)
    {
      [(JavaLangStringBuilder *)v3 appendWithNSString:@", "];
    }

    [(JavaLangStringBuilder *)v3 appendWithId:[(JavaUtilArrayList *)self->types_ getWithInt:v5]];
    v5 = (v5 + 1);
    types = self->types_;
    if (!types)
    {
      goto LABEL_7;
    }
  }

  return [(JavaLangStringBuilder *)v3 description];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LibcoreReflectListOfTypes;
  [(LibcoreReflectListOfTypes *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = new_LibcoreReflectListOfTypes_initWithInt_(0);
    JreStrongAssignAndConsume(&LibcoreReflectListOfTypes_EMPTY_, v2);
    atomic_store(1u, LibcoreReflectListOfTypes__initialized);
  }
}

@end