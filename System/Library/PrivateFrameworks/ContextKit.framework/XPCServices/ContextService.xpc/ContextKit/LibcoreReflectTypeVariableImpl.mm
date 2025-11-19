@interface LibcoreReflectTypeVariableImpl
- (BOOL)isEqual:(id)a3;
- (LibcoreReflectTypeVariableImpl)initWithJavaLangReflectGenericDeclaration:(id)a3 withNSString:(id)a4;
- (id)getBounds;
- (unint64_t)hash;
- (void)dealloc;
- (void)resolve;
@end

@implementation LibcoreReflectTypeVariableImpl

- (BOOL)isEqual:(id)a3
{
  if (![JavaLangReflectTypeVariable_class_() isInstance:a3])
  {
    return 0;
  }

  v5 = JavaLangReflectTypeVariable_class_();
  if (!a3)
  {
    [(LibcoreReflectTypeVariableImpl *)self getName];
    JreThrowNullPointerException();
  }

  if (([v5 isInstance:a3] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v6 = [(LibcoreReflectTypeVariableImpl *)self getName];
  if (!v6)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  if (![v6 isEqual:{objc_msgSend(a3, "getName")}])
  {
    return 0;
  }

  v7 = [(LibcoreReflectTypeVariableImpl *)self getGenericDeclaration];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [a3 getGenericDeclaration];

  return [v8 isEqual:v9];
}

- (unint64_t)hash
{
  v3 = [(LibcoreReflectTypeVariableImpl *)self getName];
  if (!v3 || (v4 = [v3 hash], (v5 = -[LibcoreReflectTypeVariableImpl getGenericDeclaration](self, "getGenericDeclaration")) == 0))
  {
    JreThrowNullPointerException();
  }

  return ([v5 hash] - v4 + 32 * v4);
}

- (LibcoreReflectTypeVariableImpl)initWithJavaLangReflectGenericDeclaration:(id)a3 withNSString:(id)a4
{
  JreStrongAssign(&self->name_, a4);
  JreStrongAssign(&self->declOfVarUser_, a3);
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