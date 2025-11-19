@interface JavaLangBoolean
+ (BOOL)parseBooleanWithNSString:(id)a3;
+ (id)valueOfWithBoolean:(BOOL)a3;
+ (int)compareWithBoolean:(BOOL)a3 withBoolean:(BOOL)a4;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (JavaLangBoolean)initWithNSString:(id)a3;
- (int)compareToWithId:(id)a3;
- (unint64_t)hash;
@end

@implementation JavaLangBoolean

- (JavaLangBoolean)initWithNSString:(id)a3
{
  if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100129828();
  }

  self->value_ = [@"true" equalsIgnoreCase:a3];
  return self;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return *(a3 + 8) == self->value_;
}

- (int)compareToWithId:(id)a3
{
  objc_opt_class();
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  value = self->value_;
  v6 = *(a3 + 8);
  if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100129828();
  }

  if (value)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  if (value == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

+ (int)compareWithBoolean:(BOOL)a3 withBoolean:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100129828();
  }

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  if (v5 != v4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)hash
{
  if (self->value_)
  {
    return 1231;
  }

  else
  {
    return 1237;
  }
}

+ (BOOL)parseBooleanWithNSString:(id)a3
{
  if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100129828();
  }

  return [@"true" equalsIgnoreCase:a3];
}

+ (id)valueOfWithBoolean:(BOOL)a3
{
  v3 = a3;
  if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100129828();
  }

  v4 = &JavaLangBoolean_TRUE__;
  if (!v3)
  {
    v4 = &JavaLangBoolean_FALSE__;
  }

  return *v4;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [IOSClass_arrayType(+[IOSClass BOOLeanClass](IOSClass "BOOLeanClass")];
    objc_opt_class();
    if (v2)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }
    }

    JreStrongAssign(&JavaLangBoolean_TYPE_, v2);
    v3 = [JavaLangBoolean alloc];
    v3->value_ = 1;
    JreStrongAssignAndConsume(&JavaLangBoolean_TRUE__, v3);
    v4 = [JavaLangBoolean alloc];
    v4->value_ = 0;
    JreStrongAssignAndConsume(&JavaLangBoolean_FALSE__, v4);
    atomic_store(1u, JavaLangBoolean__initialized);
  }
}

@end