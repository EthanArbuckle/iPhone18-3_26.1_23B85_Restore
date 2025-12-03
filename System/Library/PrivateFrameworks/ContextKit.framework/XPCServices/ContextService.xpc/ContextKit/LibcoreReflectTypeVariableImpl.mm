@interface LibcoreReflectTypeVariableImpl
- (BOOL)isEqual:(id)equal;
- (LibcoreReflectTypeVariableImpl)initWithJavaLangReflectGenericDeclaration:(id)declaration withNSString:(id)string;
- (id)getBounds;
- (unint64_t)hash;
- (void)dealloc;
- (void)resolve;
@end

@implementation LibcoreReflectTypeVariableImpl

- (BOOL)isEqual:(id)equal
{
  if (![JavaLangReflectTypeVariable_class_() isInstance:equal])
  {
    return 0;
  }

  v5 = JavaLangReflectTypeVariable_class_();
  if (!equal)
  {
    [(LibcoreReflectTypeVariableImpl *)self getName];
    JreThrowNullPointerException();
  }

  if (([v5 isInstance:equal] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  getName = [(LibcoreReflectTypeVariableImpl *)self getName];
  if (!getName)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  if (![getName isEqual:{objc_msgSend(equal, "getName")}])
  {
    return 0;
  }

  getGenericDeclaration = [(LibcoreReflectTypeVariableImpl *)self getGenericDeclaration];
  if (!getGenericDeclaration)
  {
    goto LABEL_11;
  }

  v8 = getGenericDeclaration;
  getGenericDeclaration2 = [equal getGenericDeclaration];

  return [v8 isEqual:getGenericDeclaration2];
}

- (unint64_t)hash
{
  getName = [(LibcoreReflectTypeVariableImpl *)self getName];
  if (!getName || (v4 = [getName hash], (v5 = -[LibcoreReflectTypeVariableImpl getGenericDeclaration](self, "getGenericDeclaration")) == 0))
  {
    JreThrowNullPointerException();
  }

  return ([v5 hash] - v4 + 32 * v4);
}

- (LibcoreReflectTypeVariableImpl)initWithJavaLangReflectGenericDeclaration:(id)declaration withNSString:(id)string
{
  JreStrongAssign(&self->name_, string);
  JreStrongAssign(&self->declOfVarUser_, declaration);
  return self;
}

- (void)resolve
{
  p_formalVar = &self->formalVar_;
  if (!self->formalVar_)
  {
    declOfVarUser = self->declOfVarUser_;
    while (1)
    {
      FormalVarWithJavaLangReflectGenericDeclaration_withNSString = LibcoreReflectTypeVariableImpl_findFormalVarWithJavaLangReflectGenericDeclaration_withNSString_(declOfVarUser, self->name_);
      if (FormalVarWithJavaLangReflectGenericDeclaration_withNSString)
      {
        break;
      }

      declOfVarUser = sub_10016F2C4(declOfVarUser);
      if (!declOfVarUser)
      {
        v6 = new_JavaLangAssertionError_initWithId_(@"illegal type variable reference");
        objc_exception_throw(v6);
      }
    }

    v7 = FormalVarWithJavaLangReflectGenericDeclaration_withNSString;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    JreStrongAssign(p_formalVar, v7);
    if (!*p_formalVar)
    {
      JreThrowNullPointerException();
    }

    JreStrongAssign(&self->genericDeclaration_, (*p_formalVar)->genericDeclaration_);
    bounds = self->formalVar_->bounds_;

    JreStrongAssign(&self->bounds_, bounds);
  }
}

- (id)getBounds
{
  [(LibcoreReflectTypeVariableImpl *)self resolve];
  bounds = self->bounds_;
  if (!bounds || (v4 = [(LibcoreReflectListOfTypes *)bounds getResolvedTypes]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v4 clone];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LibcoreReflectTypeVariableImpl;
  [(LibcoreReflectTypeVariableImpl *)&v3 dealloc];
}

@end