@interface LibcoreReflectGenericArrayTypeImpl
- (BOOL)isEqual:(id)equal;
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

- (BOOL)isEqual:(id)equal
{
  v5 = [JavaLangReflectGenericArrayType_class_() isInstance:equal];
  if (v5)
  {
    v6 = JavaLangReflectGenericArrayType_class_();
    if (!equal)
    {
      [(LibcoreReflectGenericArrayTypeImpl *)self getGenericComponentType];
      JreThrowNullPointerException();
    }

    if (([v6 isInstance:equal] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    getGenericComponentType = [(LibcoreReflectGenericArrayTypeImpl *)self getGenericComponentType];
    getGenericComponentType2 = [equal getGenericComponentType];

    LOBYTE(v5) = JavaUtilObjects_equalsWithId_withId_(getGenericComponentType, getGenericComponentType2);
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