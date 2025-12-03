@interface OrgXmlSaxHelpersNamespaceSupport
+ (void)initialize;
- (BOOL)declarePrefixWithNSString:(id)string withNSString:(id)sString;
- (id)getDeclaredPrefixes;
- (id)getPrefixWithNSString:(id)string;
- (id)getPrefixes;
- (id)getPrefixesWithNSString:(id)string;
- (id)getURIWithNSString:(id)string;
- (void)dealloc;
- (void)popContext;
- (void)pushContext;
- (void)reset;
- (void)setNamespaceDeclUrisWithBoolean:(BOOL)boolean;
@end

@implementation OrgXmlSaxHelpersNamespaceSupport

- (void)reset
{
  if (qword_100556F70 != -1)
  {
    sub_100279068();
  }

  JreStrongAssignAndConsume(&self->contexts_, [IOSObjectArray newArrayWithLength:32 type:qword_100556F68]);
  self->namespaceDeclUris_ = 0;
  self->contextPos_ = 0;
  contexts = self->contexts_;
  v4 = [OrgXmlSaxHelpersNamespaceSupport_Context alloc];
  OrgXmlSaxHelpersNamespaceSupport_Context_initWithOrgXmlSaxHelpersNamespaceSupport_(v4, self);
  v5 = JreStrongAssignAndConsume(&self->currentContext_, v4);
  IOSObjectArray_Set(contexts, 0, v5);
  currentContext = self->currentContext_;
  v7 = OrgXmlSaxHelpersNamespaceSupport_XMLNS_;

  [(OrgXmlSaxHelpersNamespaceSupport_Context *)currentContext declarePrefixWithNSString:@"xml" withNSString:v7];
}

- (void)pushContext
{
  p_contexts = &self->contexts_;
  contexts = self->contexts_;
  if (!contexts)
  {
    goto LABEL_20;
  }

  size = contexts->super.size_;
  contextPos = self->contextPos_;
  if (contextPos < 0 || contextPos >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(contexts->super.size_, contextPos);
  }

  v7 = (&contexts->elementType_)[contextPos];
  if (!v7)
  {
    goto LABEL_20;
  }

  LOBYTE(v7[6].super.isa) = 0;
  v8 = self->contextPos_ + 1;
  self->contextPos_ = v8;
  if (v8 >= size)
  {
    if (qword_100556F70 != -1)
    {
      sub_100279068();
    }

    v9 = [IOSObjectArray arrayWithLength:2 * size type:qword_100556F68];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->contexts_, 0, v9, 0, size);
    JreStrongAssign(p_contexts, v9);
    v8 = self->contextPos_;
  }

  v10 = self->contexts_;
  v11 = v10->super.size_;
  if (v8 < 0 || v8 >= v11)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, v8);
  }

  JreStrongAssign(&self->currentContext_, (&v10->elementType_)[v8]);
  if (!self->currentContext_)
  {
    v12 = self->contexts_;
    v13 = self->contextPos_;
    v14 = [OrgXmlSaxHelpersNamespaceSupport_Context alloc];
    OrgXmlSaxHelpersNamespaceSupport_Context_initWithOrgXmlSaxHelpersNamespaceSupport_(v14, self);
    v15 = JreStrongAssignAndConsume(&self->currentContext_, v14);
    IOSObjectArray_Set(v12, v13, v15);
  }

  v16 = self->contextPos_;
  if (v16 >= 1)
  {
    currentContext = self->currentContext_;
    if (currentContext)
    {
      v18 = *p_contexts;
      v19 = v18->super.size_;
      if (v16 > v19)
      {
        IOSArray_throwOutOfBoundsWithMsg(v19, (v16 - 1));
      }

      v20 = (&v18->elementType_)[v16 - 1];

      [(OrgXmlSaxHelpersNamespaceSupport_Context *)currentContext setParentWithOrgXmlSaxHelpersNamespaceSupport_Context:v20];
      return;
    }

LABEL_20:
    JreThrowNullPointerException();
  }
}

- (void)popContext
{
  contexts = self->contexts_;
  if (!contexts)
  {
    goto LABEL_10;
  }

  contextPos = self->contextPos_;
  size = contexts->super.size_;
  if (contextPos < 0 || contextPos >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, contextPos);
  }

  v6 = (&contexts->elementType_)[contextPos];
  if (!v6)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  [(IOSClass *)v6 clear];
  v7 = self->contextPos_;
  v8 = (v7 - 1);
  self->contextPos_ = v8;
  if (v7 - 1 < 0)
  {
    v12 = new_JavaUtilEmptyStackException_init();
    objc_exception_throw(v12);
  }

  v9 = self->contexts_;
  v10 = v9->super.size_;
  if (v8 >= v10)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, v8);
  }

  v11 = (&v9->elementType_)[v8];

  JreStrongAssign(&self->currentContext_, v11);
}

- (BOOL)declarePrefixWithNSString:(id)string withNSString:(id)sString
{
  if (!string)
  {
    goto LABEL_7;
  }

  if ([string isEqual:@"xml"] & 1) != 0 || (objc_msgSend(string, "isEqual:", @"xmlns"))
  {
    return 0;
  }

  currentContext = self->currentContext_;
  if (!currentContext)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  [(OrgXmlSaxHelpersNamespaceSupport_Context *)currentContext declarePrefixWithNSString:string withNSString:sString];
  return 1;
}

- (id)getURIWithNSString:(id)string
{
  currentContext = self->currentContext_;
  if (!currentContext)
  {
    JreThrowNullPointerException();
  }

  return [(OrgXmlSaxHelpersNamespaceSupport_Context *)currentContext getURIWithNSString:string];
}

- (id)getPrefixes
{
  currentContext = self->currentContext_;
  if (!currentContext)
  {
    JreThrowNullPointerException();
  }

  return [(OrgXmlSaxHelpersNamespaceSupport_Context *)currentContext getPrefixes];
}

- (id)getPrefixWithNSString:(id)string
{
  currentContext = self->currentContext_;
  if (!currentContext)
  {
    JreThrowNullPointerException();
  }

  return [(OrgXmlSaxHelpersNamespaceSupport_Context *)currentContext getPrefixWithNSString:string];
}

- (id)getPrefixesWithNSString:(id)string
{
  v5 = new_JavaUtilArrayList_init();
  getPrefixes = [(OrgXmlSaxHelpersNamespaceSupport *)self getPrefixes];
  if (!getPrefixes)
  {
    goto LABEL_12;
  }

  v7 = getPrefixes;
  if ([getPrefixes hasMoreElements])
  {
    while (1)
    {
      nextElement = [v7 nextElement];
      objc_opt_class();
      if (nextElement && (objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      if (!string)
      {
        break;
      }

      if ([string isEqual:{-[OrgXmlSaxHelpersNamespaceSupport getURIWithNSString:](self, "getURIWithNSString:", nextElement)}])
      {
        [(JavaUtilArrayList *)v5 addWithId:nextElement];
      }

      if (([v7 hasMoreElements] & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    JreThrowNullPointerException();
  }

LABEL_9:

  return JavaUtilCollections_enumerationWithJavaUtilCollection_(v5);
}

- (id)getDeclaredPrefixes
{
  currentContext = self->currentContext_;
  if (!currentContext)
  {
    JreThrowNullPointerException();
  }

  return [(OrgXmlSaxHelpersNamespaceSupport_Context *)currentContext getDeclaredPrefixes];
}

- (void)setNamespaceDeclUrisWithBoolean:(BOOL)boolean
{
  if (self->contextPos_)
  {
    v10 = new_JavaLangIllegalStateException_init();
    objc_exception_throw(v10);
  }

  if (self->namespaceDeclUris_ != boolean)
  {
    self->namespaceDeclUris_ = boolean;
    if (boolean)
    {
      currentContext = self->currentContext_;
      if (currentContext)
      {
        v5 = OrgXmlSaxHelpersNamespaceSupport_NSDECL_;
        v6 = @"xmlns";
LABEL_8:

        [(OrgXmlSaxHelpersNamespaceSupport_Context *)currentContext declarePrefixWithNSString:v6 withNSString:v5];
        return;
      }
    }

    else
    {
      contexts = self->contexts_;
      if (contexts)
      {
        v8 = [OrgXmlSaxHelpersNamespaceSupport_Context alloc];
        OrgXmlSaxHelpersNamespaceSupport_Context_initWithOrgXmlSaxHelpersNamespaceSupport_(v8, self);
        v9 = JreStrongAssignAndConsume(&self->currentContext_, v8);
        IOSObjectArray_Set(contexts, 0, v9);
        currentContext = self->currentContext_;
        v5 = OrgXmlSaxHelpersNamespaceSupport_XMLNS_;
        v6 = @"xml";
        goto LABEL_8;
      }
    }

    JreThrowNullPointerException();
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgXmlSaxHelpersNamespaceSupport;
  [(OrgXmlSaxHelpersNamespaceSupport *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = JavaUtilCollections_emptyList();
    v3 = JavaUtilCollections_enumerationWithJavaUtilCollection_(v2);
    JreStrongAssign(&qword_100556F60, v3);
    atomic_store(1u, OrgXmlSaxHelpersNamespaceSupport__initialized);
  }
}

@end