@interface LibcoreReflectWildcardTypeImpl
- (BOOL)isEqual:(id)a3;
- (LibcoreReflectWildcardTypeImpl)initWithLibcoreReflectListOfTypes:(id)a3 withLibcoreReflectListOfTypes:(id)a4;
- (NSString)description;
- (id)getLowerBounds;
- (id)getUpperBounds;
- (void)dealloc;
@end

@implementation LibcoreReflectWildcardTypeImpl

- (LibcoreReflectWildcardTypeImpl)initWithLibcoreReflectListOfTypes:(id)a3 withLibcoreReflectListOfTypes:(id)a4
{
  JreStrongAssign(&self->extendsBound_, a3);
  JreStrongAssign(&self->superBound_, a4);
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

- (BOOL)isEqual:(id)a3
{
  if (![JavaLangReflectWildcardType_class_() isInstance:a3])
  {
    return 0;
  }

  v5 = JavaLangReflectWildcardType_class_();
  if (!a3)
  {
    [(LibcoreReflectWildcardTypeImpl *)self getLowerBounds];
    JreThrowNullPointerException();
  }

  if (([v5 isInstance:a3] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (!JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(-[LibcoreReflectWildcardTypeImpl getLowerBounds](self, "getLowerBounds"), [a3 getLowerBounds]))
  {
    return 0;
  }

  v6 = [(LibcoreReflectWildcardTypeImpl *)self getUpperBounds];
  v7 = [a3 getUpperBounds];

  return JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(v6, v7);
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
    v6 = [(LibcoreReflectListOfTypes *)*p_extendsBound getResolvedTypes];
    if (!v6)
    {
      goto LABEL_17;
    }

    v7 = v6;
    v8 = v6[2];
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