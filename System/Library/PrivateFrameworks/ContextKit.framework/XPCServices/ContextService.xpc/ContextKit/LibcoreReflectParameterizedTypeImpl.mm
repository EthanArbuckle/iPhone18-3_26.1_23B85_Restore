@interface LibcoreReflectParameterizedTypeImpl
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)getActualTypeArguments;
- (id)getOwnerType;
- (id)getRawType;
- (id)getResolvedType;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation LibcoreReflectParameterizedTypeImpl

- (id)getActualTypeArguments
{
  args = self->args_;
  if (!args || (v3 = [(LibcoreReflectListOfTypes *)args getResolvedTypes]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v3 clone];
}

- (id)getOwnerType
{
  p_ownerTypeRes = &self->ownerTypeRes_;
  if (!self->ownerTypeRes_)
  {
    if (self->ownerType0_)
    {
      getResolvedType = [(LibcoreReflectParameterizedTypeImpl *)self->ownerType0_ getResolvedType];
    }

    else
    {
      getRawType = [(LibcoreReflectParameterizedTypeImpl *)self getRawType];
      if (!getRawType)
      {
        JreThrowNullPointerException();
      }

      getResolvedType = [getRawType getDeclaringClass];
    }

    JreStrongAssign(p_ownerTypeRes, getResolvedType);
  }

  return *p_ownerTypeRes;
}

- (id)getRawType
{
  p_rawType = &self->rawType_;
  result = self->rawType_;
  if (!result)
  {
    v5 = IOSClass_forName_initialize_classLoader_(self->rawTypeName_, 0, self->loader_);
    JreStrongAssign(p_rawType, v5);
    return *p_rawType;
  }

  return result;
}

- (id)getResolvedType
{
  args = self->args_;
  if (!args || (v4 = [(LibcoreReflectListOfTypes *)args getResolvedTypes]) == 0)
  {
    JreThrowNullPointerException();
  }

  if (v4[2])
  {
    return self;
  }

  return [(LibcoreReflectParameterizedTypeImpl *)self getRawType];
}

- (BOOL)isEqual:(id)equal
{
  if (![JavaLangReflectParameterizedType_class_() isInstance:equal])
  {
    return 0;
  }

  v5 = JavaLangReflectParameterizedType_class_();
  if (!equal)
  {
    [(LibcoreReflectParameterizedTypeImpl *)self getRawType];
    JreThrowNullPointerException();
  }

  if (([v5 isInstance:equal] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (!JavaUtilObjects_equalsWithId_withId_(-[LibcoreReflectParameterizedTypeImpl getRawType](self, "getRawType"), [equal getRawType]) || !JavaUtilObjects_equalsWithId_withId_(-[LibcoreReflectParameterizedTypeImpl getOwnerType](self, "getOwnerType"), objc_msgSend(equal, "getOwnerType")))
  {
    return 0;
  }

  args = self->args_;
  if (!args)
  {
    JreThrowNullPointerException();
  }

  getResolvedTypes = [(LibcoreReflectListOfTypes *)args getResolvedTypes];
  getActualTypeArguments = [equal getActualTypeArguments];

  return JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(getResolvedTypes, getActualTypeArguments);
}

- (unint64_t)hash
{
  v3 = JavaUtilObjects_hashCodeWithId_([(LibcoreReflectParameterizedTypeImpl *)self getRawType]);
  v4 = JavaUtilObjects_hashCodeWithId_([(LibcoreReflectParameterizedTypeImpl *)self getOwnerType]);
  args = self->args_;
  if (!args)
  {
    JreThrowNullPointerException();
  }

  return (JavaUtilArrays_hashCodeWithNSObjectArray_([(LibcoreReflectListOfTypes *)args getResolvedTypes]) - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3));
}

- (NSString)description
{
  v3 = new_JavaLangStringBuilder_init();
  [(JavaLangStringBuilder *)v3 appendWithNSString:self->rawTypeName_];
  args = self->args_;
  if (!args)
  {
    goto LABEL_9;
  }

  if ([(LibcoreReflectListOfTypes *)args length]< 1)
  {
    goto LABEL_6;
  }

  v5 = [(JavaLangStringBuilder *)v3 appendWithNSString:@"<"];
  if (!v5 || (v6 = [v5 appendWithId:self->args_]) == 0)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  [v6 appendWithNSString:@">"];
LABEL_6:

  return [(JavaLangStringBuilder *)v3 description];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LibcoreReflectParameterizedTypeImpl;
  [(LibcoreReflectParameterizedTypeImpl *)&v3 dealloc];
}

@end