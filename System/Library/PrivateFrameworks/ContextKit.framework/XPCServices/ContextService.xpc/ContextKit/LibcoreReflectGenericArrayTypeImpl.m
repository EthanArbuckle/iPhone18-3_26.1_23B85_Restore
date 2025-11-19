@interface LibcoreReflectGenericArrayTypeImpl
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)getGenericComponentType;
- (void)dealloc;
@end

@implementation LibcoreReflectGenericArrayTypeImpl

- (id)getGenericComponentType
{
  componentType = self->componentType_;
  objc_opt_class();
  if (!componentType)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [(JavaLangReflectType *)componentType getResolvedType];
}

- (BOOL)isEqual:(id)a3
{
  v5 = [JavaLangReflectGenericArrayType_class_() isInstance:a3];
  if (v5)
  {
    v6 = JavaLangReflectGenericArrayType_class_();
    if (!a3)
    {
      [(LibcoreReflectGenericArrayTypeImpl *)self getGenericComponentType];
      JreThrowNullPointerException();
    }

    if (([v6 isInstance:a3] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v7 = [(LibcoreReflectGenericArrayTypeImpl *)self getGenericComponentType];
    v8 = [a3 getGenericComponentType];

    LOBYTE(v5) = JavaUtilObjects_equalsWithId_withId_(v7, v8);
  }

  return v5;
}

- (NSString)description
{
  componentType = self->componentType_;
  if (!componentType)
  {
    JreThrowNullPointerException();
  }

  v3 = [(JavaLangReflectType *)componentType description];
  return JreStrcat("$$", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LibcoreReflectGenericArrayTypeImpl;
  [(LibcoreReflectGenericArrayTypeImpl *)&v3 dealloc];
}

@end