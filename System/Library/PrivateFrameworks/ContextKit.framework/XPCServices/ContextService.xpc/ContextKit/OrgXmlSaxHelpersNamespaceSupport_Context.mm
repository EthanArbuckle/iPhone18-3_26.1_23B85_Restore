@interface OrgXmlSaxHelpersNamespaceSupport_Context
- (id)getDeclaredPrefixes;
- (id)getPrefixWithNSString:(id)string;
- (id)getPrefixes;
- (id)getURIWithNSString:(id)string;
- (id)processNameWithNSString:(id)string withBoolean:(BOOL)boolean;
- (void)__javaClone;
- (void)clear;
- (void)copyTables;
- (void)dealloc;
- (void)declarePrefixWithNSString:(id)string withNSString:(id)sString;
- (void)setParentWithOrgXmlSaxHelpersNamespaceSupport_Context:(id)context;
@end

@implementation OrgXmlSaxHelpersNamespaceSupport_Context

- (void)setParentWithOrgXmlSaxHelpersNamespaceSupport_Context:(id)context
{
  JreStrongAssign(&self->parent_, context);
  JreStrongAssign(&self->declarations_, 0);
  if (!context)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign(&self->prefixTable_, *(context + 1));
  JreStrongAssign(&self->uriTable_, *(context + 2));
  JreStrongAssign(&self->elementNameTable_, *(context + 3));
  JreStrongAssign(&self->attributeNameTable_, *(context + 4));
  JreStrongAssign(&self->defaultNS_, *(context + 5));
  self->declSeen_ = 0;
  self->declsOK_ = 1;
}

- (void)clear
{
  JreStrongAssign(&self->parent_, 0);
  JreStrongAssign(&self->prefixTable_, 0);
  JreStrongAssign(&self->uriTable_, 0);
  JreStrongAssign(&self->elementNameTable_, 0);
  JreStrongAssign(&self->attributeNameTable_, 0);

  JreStrongAssign(&self->defaultNS_, 0);
}

- (void)declarePrefixWithNSString:(id)string withNSString:(id)sString
{
  if (!self->declsOK_)
  {
    v17 = new_JavaLangIllegalStateException_initWithNSString_(@"can't declare any more prefixes in this context");
    objc_exception_throw(v17);
  }

  if (!self->declSeen_)
  {
    [OrgXmlSaxHelpersNamespaceSupport_Context copyTables]_0(self);
  }

  p_declarations = &self->declarations_;
  if (!self->declarations_)
  {
    v8 = new_JavaUtilArrayList_init();
    JreStrongAssignAndConsume(&self->declarations_, v8);
  }

  if (!string)
  {
    goto LABEL_20;
  }

  intern = [string intern];
  if (!sString)
  {
    goto LABEL_20;
  }

  v10 = intern;
  intern2 = [sString intern];
  if (![&stru_100484358 isEqual:v10])
  {
    prefixTable = self->prefixTable_;
    if (prefixTable)
    {
      [(JavaUtilHashtable *)prefixTable putWithId:v10 withId:intern2];
      uriTable = self->uriTable_;
      if (uriTable)
      {
        [(JavaUtilHashtable *)uriTable putWithId:intern2 withId:v10];
        goto LABEL_16;
      }
    }

LABEL_20:
    JreThrowNullPointerException();
  }

  if ([&stru_100484358 isEqual:intern2])
  {
    p_defaultNS = &self->defaultNS_;
    v13 = 0;
  }

  else
  {
    p_defaultNS = &self->defaultNS_;
    v13 = intern2;
  }

  JreStrongAssign(p_defaultNS, v13);
LABEL_16:
  v16 = *p_declarations;
  if (!*p_declarations)
  {
    goto LABEL_20;
  }

  [(JavaUtilArrayList *)v16 addWithId:v10];
}

- (void)copyTables
{
  v3 = (self + 8);
  v2 = *(self + 8);
  if (v2)
  {
    clone = [v2 clone];
    objc_opt_class();
    if (clone && (objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

    JreStrongAssign(v3, clone);
  }

  else
  {
    v5 = new_JavaUtilHashtable_init();
    JreStrongAssignAndConsume(v3, v5);
  }

  v6 = *(self + 16);
  if (!v6)
  {
    v8 = new_JavaUtilHashtable_init();
    JreStrongAssignAndConsume((self + 16), v8);
    goto LABEL_11;
  }

  clone2 = [v6 clone];
  objc_opt_class();
  if (clone2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_12:
    JreThrowClassCastException();
  }

  JreStrongAssign((self + 16), clone2);
LABEL_11:
  v9 = new_JavaUtilHashtable_init();
  JreStrongAssignAndConsume((self + 24), v9);
  v10 = new_JavaUtilHashtable_init();
  result = JreStrongAssignAndConsume((self + 32), v10);
  *(self + 72) = 1;
  return result;
}

- (id)processNameWithNSString:(id)string withBoolean:(BOOL)boolean
{
  self->declsOK_ = 0;
  v4 = 24;
  if (boolean)
  {
    v4 = 32;
  }

  v5 = *(&self->super.isa + v4);
  if (!v5)
  {
    goto LABEL_31;
  }

  booleanCopy = boolean;
  v9 = [*(&self->super.isa + v4) getWithId:?];
  objc_opt_class();
  if (!v9)
  {
    v10 = [IOSObjectArray arrayWithLength:3 type:NSString_class_()];
    if (!string)
    {
      goto LABEL_31;
    }

    v9 = v10;
    IOSObjectArray_Set(v10, 2, [string intern]);
    v11 = [string indexOf:58];
    if (v11 != -1)
    {
      v12 = v11;
      v13 = [string substring:0 endIndex:v11];
      v14 = [string substring:(v12 + 1)];
      if ([&stru_100484358 isEqual:v13])
      {
        defaultNS = self->defaultNS_;
        if (!defaultNS)
        {
          return 0;
        }
      }

      else
      {
        prefixTable = self->prefixTable_;
        if (!prefixTable)
        {
          goto LABEL_31;
        }

        defaultNS = [(JavaUtilHashtable *)prefixTable getWithId:v13];
        objc_opt_class();
        if (!defaultNS)
        {
          return 0;
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_6:
          JreThrowClassCastException();
        }
      }

      if (!booleanCopy && ([@"xmlns" isEqual:v13] & 1) != 0)
      {
        return 0;
      }

      IOSObjectArray_Set(v9, 0, defaultNS);
      if (v14)
      {
        intern = [v14 intern];
LABEL_28:
        IOSObjectArray_Set(v9, 1, intern);
        size = v9->super.size_;
        if (size <= 2)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, 2);
        }

        [v5 putWithId:v9->buffer_[1] withId:v9];
        return v9;
      }

LABEL_31:
      JreThrowNullPointerException();
    }

    if (booleanCopy)
    {
      if ([@"xmlns" isEqual:string] && *(objc_loadWeak(&self->this$0_) + 28) == 1)
      {
        v16 = OrgXmlSaxHelpersNamespaceSupport_NSDECL_;
LABEL_26:
        IOSObjectArray_Set(v9, 0, v16);
        v19 = v9->super.size_;
        if (v19 <= 2)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, 2);
        }

        intern = v9->buffer_[1];
        goto LABEL_28;
      }
    }

    else
    {
      v16 = self->defaultNS_;
      if (v16)
      {
        goto LABEL_26;
      }
    }

    v16 = &stru_100484358;
    goto LABEL_26;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  return v9;
}

- (id)getURIWithNSString:(id)string
{
  if ([&stru_100484358 isEqual:?])
  {
    return self->defaultNS_;
  }

  prefixTable = self->prefixTable_;
  if (!prefixTable)
  {
    return 0;
  }

  v5 = [(JavaUtilHashtable *)prefixTable getWithId:string];
  objc_opt_class();
  if (v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v5;
}

- (id)getPrefixWithNSString:(id)string
{
  uriTable = self->uriTable_;
  if (!uriTable)
  {
    return 0;
  }

  v4 = [(JavaUtilHashtable *)uriTable getWithId:string];
  objc_opt_class();
  if (v4 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v4;
}

- (id)getDeclaredPrefixes
{
  declarations = self->declarations_;
  if (declarations)
  {

    return JavaUtilCollections_enumerationWithJavaUtilCollection_(declarations);
  }

  else
  {
    if ((atomic_load_explicit(OrgXmlSaxHelpersNamespaceSupport__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10027907C();
    }

    return qword_100556F60;
  }
}

- (id)getPrefixes
{
  prefixTable = self->prefixTable_;
  if (prefixTable)
  {

    return [(JavaUtilHashtable *)prefixTable keys];
  }

  else
  {
    if ((atomic_load_explicit(OrgXmlSaxHelpersNamespaceSupport__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10027907C();
    }

    return qword_100556F60;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgXmlSaxHelpersNamespaceSupport_Context;
  [(OrgXmlSaxHelpersNamespaceSupport_Context *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = OrgXmlSaxHelpersNamespaceSupport_Context;
  [(OrgXmlSaxHelpersNamespaceSupport_Context *)&v3 __javaClone];
}

@end