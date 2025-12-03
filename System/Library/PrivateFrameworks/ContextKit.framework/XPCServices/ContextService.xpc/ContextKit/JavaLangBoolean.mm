@interface JavaLangBoolean
+ (BOOL)parseBooleanWithNSString:(id)string;
+ (id)valueOfWithBoolean:(BOOL)boolean;
+ (int)compareWithBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (JavaLangBoolean)initWithNSString:(id)string;
- (int)compareToWithId:(id)id;
- (unint64_t)hash;
@end

@implementation JavaLangBoolean

- (JavaLangBoolean)initWithNSString:(id)string
{
  if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100129828();
  }

  self->value_ = [@"true" equalsIgnoreCase:string];
  return self;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!equal)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return *(equal + 8) == self->value_;
}

- (int)compareToWithId:(id)id
{
  objc_opt_class();
  if (!id)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  value = self->value_;
  v6 = *(id + 8);
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

+ (int)compareWithBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean
{
  withBooleanCopy = withBoolean;
  booleanCopy = boolean;
  if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100129828();
  }

  if (booleanCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  if (booleanCopy != withBooleanCopy)
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

+ (BOOL)parseBooleanWithNSString:(id)string
{
  if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100129828();
  }

  return [@"true" equalsIgnoreCase:string];
}

+ (id)valueOfWithBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100129828();
  }

  v4 = &JavaLangBoolean_TRUE__;
  if (!booleanCopy)
  {
    v4 = &JavaLangBoolean_FALSE__;
  }

  return *v4;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
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