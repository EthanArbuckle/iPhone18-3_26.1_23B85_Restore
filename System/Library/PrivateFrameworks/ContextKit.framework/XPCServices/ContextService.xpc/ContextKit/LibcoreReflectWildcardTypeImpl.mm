@interface LibcoreReflectWildcardTypeImpl
- (BOOL)isEqual:(id)equal;
- (LibcoreReflectWildcardTypeImpl)initWithLibcoreReflectListOfTypes:(id)types withLibcoreReflectListOfTypes:(id)ofTypes;
- (NSString)description;
- (id)getLowerBounds;
- (id)getUpperBounds;
- (void)dealloc;
@end

@implementation LibcoreReflectWildcardTypeImpl

- (LibcoreReflectWildcardTypeImpl)initWithLibcoreReflectListOfTypes:(id)types withLibcoreReflectListOfTypes:(id)ofTypes
{
  JreStrongAssign(&self->extendsBound_, types);
  JreStrongAssign(&self->superBound_, ofTypes);
  return self;
}

- (id)getLowerBounds
{
  superBound = self->superBound_;
  if (!superBound || (v3 = [(LibcoreReflectListOfTypes *)superBound getResolvedTypes]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v3 clone];
}

- (id)getUpperBounds
{
  extendsBound = self->extendsBound_;
  if (!extendsBound || (v3 = [(LibcoreReflectListOfTypes *)extendsBound getResolvedTypes]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v3 clone];
}

- (BOOL)isEqual:(id)equal
{
  if (![JavaLangReflectWildcardType_class_() isInstance:equal])
  {
    return 0;
  }

  v5 = JavaLangReflectWildcardType_class_();
  if (!equal)
  {
    [(LibcoreReflectWildcardTypeImpl *)self getLowerBounds];
    JreThrowNullPointerException();
  }

  if (([v5 isInstance:equal] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (!JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(-[LibcoreReflectWildcardTypeImpl getLowerBounds](self, "getLowerBounds"), [equal getLowerBounds]))
  {
    return 0;
  }

  getUpperBounds = [(LibcoreReflectWildcardTypeImpl *)self getUpperBounds];
  getUpperBounds2 = [equal getUpperBounds];

  return JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(getUpperBounds, getUpperBounds2);
}

- (NSString)description
{
  v3 = new_JavaLangStringBuilder_initWithNSString_(@"?");
  p_extendsBound = &self->extendsBound_;
  extendsBound = self->extendsBound_;
  if (!extendsBound)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  if ([(LibcoreReflectListOfTypes *)extendsBound length]== 1)
  {
    getResolvedTypes = [(LibcoreReflectListOfTypes *)*p_extendsBound getResolvedTypes];
    if (!getResolvedTypes)
    {
      goto LABEL_17;
    }

    v7 = getResolvedTypes;
    v8 = getResolvedTypes[2];
    if (v8 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v8, 0);
    }

    v9 = *(v7 + 3);
    if (v9 != NSObject_class_())
    {
      goto LABEL_7;
    }
  }

  if ([(LibcoreReflectListOfTypes *)*p_extendsBound length]>= 2)
  {
LABEL_7:
    v10 = [(JavaLangStringBuilder *)v3 appendWithNSString:@" extends "];
    if (!v10)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  superBound = self->superBound_;
  p_superBound = &self->superBound_;
  v11 = superBound;
  if (!superBound)
  {
    goto LABEL_17;
  }

  if ([(LibcoreReflectListOfTypes *)v11 length]>= 1)
  {
    v10 = [(JavaLangStringBuilder *)v3 appendWithNSString:@" super "];
    if (!v10)
    {
      goto LABEL_17;
    }

    p_extendsBound = p_superBound;
LABEL_13:
    [v10 appendWithId:*p_extendsBound];
  }

  return [(JavaLangStringBuilder *)v3 description];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LibcoreReflectWildcardTypeImpl;
  [(LibcoreReflectWildcardTypeImpl *)&v3 dealloc];
}

@end