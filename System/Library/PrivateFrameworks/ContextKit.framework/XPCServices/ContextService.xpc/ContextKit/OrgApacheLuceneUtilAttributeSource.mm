@interface OrgApacheLuceneUtilAttributeSource
+ (void)initialize;
- (BOOL)hasAttributeWithIOSClass:(id)a3;
- (BOOL)hasAttributes;
- (BOOL)isEqual:(id)a3;
- (id)addAttributeWithIOSClass:(id)a3;
- (id)captureState;
- (id)cloneAttributes;
- (id)description;
- (id)getAttributeClassesIterator;
- (id)getAttributeImplsIterator;
- (id)getAttributeWithIOSClass:(id)a3;
- (id)getCurrentState;
- (unint64_t)hash;
- (void)clearAttributes;
- (void)copyToWithOrgApacheLuceneUtilAttributeSource:(id)a3;
- (void)dealloc;
- (void)restoreStateWithOrgApacheLuceneUtilAttributeSource_State:(id)a3;
@end

@implementation OrgApacheLuceneUtilAttributeSource

- (id)getAttributeClassesIterator
{
  attributes = self->attributes_;
  if (!attributes || (v3 = JavaUtilCollections_unmodifiableSetWithJavaUtilSet_([(JavaUtilMap *)attributes keySet])) == 0)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilCollections_UnmodifiableCollection *)v3 iterator];
}

- (id)getAttributeImplsIterator
{
  v2 = [OrgApacheLuceneUtilAttributeSource getCurrentState]_0(self);
  if (v2)
  {
    v3 = v2;
    v4 = [OrgApacheLuceneUtilAttributeSource__2 alloc];
    JreStrongAssign(&v4->val$initState_, v3);
    JreStrongAssign(&v4->state_, v4->val$initState_);

    return v4;
  }

  else
  {
    v6 = JavaUtilCollections_emptySet();
    if (!v6)
    {
      JreThrowNullPointerException();
    }

    return [v6 iterator];
  }
}

- (id)getCurrentState
{
  v1 = a1[3];
  if (!v1)
  {
    goto LABEL_14;
  }

  v3 = *(v1 + 8);
  if (v3 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v3, 0);
  }

  v4 = *(v1 + 24);
  if (!v4)
  {
    v5 = a1[1];
    if (v5)
    {
      if ([v5 isEmpty])
      {
        return 0;
      }

      v4 = IOSObjectArray_SetAndConsume(a1[3], 0, [OrgApacheLuceneUtilAttributeSource_State alloc]);
      v6 = a1[2];
      if (v6)
      {
        v7 = [v6 values];
        if (v7)
        {
          v8 = [v7 iterator];
          if (v8)
          {
            v9 = v8;
            JreStrongAssign(v4 + 1, [v8 next]);
            if ([v9 hasNext])
            {
              v10 = v4;
              do
              {
                JreStrongAssignAndConsume(v10 + 2, [OrgApacheLuceneUtilAttributeSource_State alloc]);
                v10 = v10[2];
                JreStrongAssign(v10 + 1, [v9 next]);
              }

              while (([v9 hasNext] & 1) != 0);
            }

            return v4;
          }
        }
      }
    }

LABEL_14:
    JreThrowNullPointerException();
  }

  return v4;
}

- (id)addAttributeWithIOSClass:(id)a3
{
  attributes = self->attributes_;
  if (!attributes)
  {
    goto LABEL_13;
  }

  v6 = [(JavaUtilMap *)attributes getWithId:?];
  if (!v6)
  {
    if (a3)
    {
      if (![a3 isInterface] || (objc_msgSend(OrgApacheLuceneUtilAttribute_class_(), "isAssignableFrom:", a3) & 1) == 0)
      {
        [a3 getName];
        v17 = JreStrcat("$$$", v10, v11, v12, v13, v14, v15, v16, @"addAttribute() only accepts an interface that extends Attribute, but ");
        v18 = new_JavaLangIllegalArgumentException_initWithNSString_(v17);
        objc_exception_throw(v18);
      }

      factory = self->factory_;
      if (factory)
      {
        v7 = [(OrgApacheLuceneUtilAttributeFactory *)factory createAttributeInstanceWithIOSClass:a3];
        sub_1000F2F1C(self, v7);
        goto LABEL_10;
      }
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  v7 = v6;
  if (!a3)
  {
    goto LABEL_13;
  }

LABEL_10:

  return [a3 cast:v7];
}

- (BOOL)hasAttributes
{
  attributes = self->attributes_;
  if (!attributes)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)attributes isEmpty]^ 1;
}

- (BOOL)hasAttributeWithIOSClass:(id)a3
{
  attributes = self->attributes_;
  if (!attributes)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)attributes containsKeyWithId:a3];
}

- (id)getAttributeWithIOSClass:(id)a3
{
  if (!a3 || (attributes = self->attributes_) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = [(JavaUtilMap *)attributes getWithId:?];

  return [a3 cast:v5];
}

- (void)clearAttributes
{
  v2 = [OrgApacheLuceneUtilAttributeSource getCurrentState]_0(self);
  if (v2)
  {
    v3 = v2;
    do
    {
      v4 = v3[1];
      if (!v4)
      {
        JreThrowNullPointerException();
      }

      [v4 clear];
      v3 = v3[2];
    }

    while (v3);
  }
}

- (id)captureState
{
  result = [OrgApacheLuceneUtilAttributeSource getCurrentState]_0(self);
  if (result)
  {

    return [result clone];
  }

  return result;
}

- (void)restoreStateWithOrgApacheLuceneUtilAttributeSource_State:(id)a3
{
  if (a3)
  {
    v3 = a3;
    do
    {
      attributeImpls = self->attributeImpls_;
      if (!attributeImpls || (v6 = v3[1]) == 0)
      {
        JreThrowNullPointerException();
      }

      v7 = -[JavaUtilMap getWithId:](attributeImpls, "getWithId:", [v6 getClass]);
      v8 = v3[1];
      if (!v7)
      {
        [objc_msgSend(v8 "getClass")];
        v16 = JreStrcat("$$$", v9, v10, v11, v12, v13, v14, v15, @"State contains AttributeImpl of type ");
        v17 = new_JavaLangIllegalArgumentException_initWithNSString_(v16);
        objc_exception_throw(v17);
      }

      [v8 copyToWithOrgApacheLuceneUtilAttributeImpl:?];
      v3 = v3[2];
    }

    while (v3);
  }
}

- (unint64_t)hash
{
  result = [OrgApacheLuceneUtilAttributeSource getCurrentState]_0(self);
  if (result)
  {
    v3 = result;
    v4 = 0;
    do
    {
      v5 = *(v3 + 8);
      if (!v5)
      {
        JreThrowNullPointerException();
      }

      v4 = [v5 hash] - v4 + 32 * v4;
      v3 = *(v3 + 16);
    }

    while (v3);
    return v4;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v7) = 1;
    return v7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_26;
  }

  objc_opt_class();
  if (a3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  attributes = self->attributes_;
  if (!attributes)
  {
    goto LABEL_28;
  }

  if (([(JavaUtilMap *)attributes isEmpty]& 1) == 0)
  {
    if (!a3)
    {
      goto LABEL_28;
    }

    v8 = *(a3 + 1);
    if (!v8)
    {
      goto LABEL_28;
    }

    if (([v8 isEmpty] & 1) == 0)
    {
      attributeImpls = self->attributeImpls_;
      if (!attributeImpls)
      {
        goto LABEL_28;
      }

      v10 = [(JavaUtilMap *)attributeImpls size];
      if (v10 == [*(a3 + 2) size])
      {
        v11 = [OrgApacheLuceneUtilAttributeSource getCurrentState]_0(self);
        v12 = [OrgApacheLuceneUtilAttributeSource getCurrentState]_0(a3);
        LOBYTE(v7) = 1;
        if (!v11 || !v12)
        {
          return v7;
        }

        while (1)
        {
          v13 = v12[1];
          if (!v13)
          {
            break;
          }

          v14 = [v13 getClass];
          if (v14 != [v11[1] getClass])
          {
            goto LABEL_26;
          }

          v7 = [v12[1] isEqual:v11[1]];
          if (v7)
          {
            v11 = v11[2];
            LOBYTE(v7) = 1;
            if (v11)
            {
              v12 = v12[2];
              if (v12)
              {
                continue;
              }
            }
          }

          return v7;
        }

LABEL_28:
        JreThrowNullPointerException();
      }
    }

LABEL_26:
    LOBYTE(v7) = 0;
    return v7;
  }

  if (!a3)
  {
    goto LABEL_28;
  }

  v6 = *(a3 + 1);
  if (!v6)
  {
    goto LABEL_28;
  }

  LOBYTE(v7) = [v6 isEmpty];
  return v7;
}

- (id)cloneAttributes
{
  factory = self->factory_;
  v4 = [OrgApacheLuceneUtilAttributeSource alloc];
  OrgApacheLuceneUtilAttributeSource_initWithOrgApacheLuceneUtilAttributeFactory_(&v4->super.isa, factory);
  v5 = v4;
  attributes = self->attributes_;
  if (!attributes)
  {
    goto LABEL_21;
  }

  if (([(JavaUtilMap *)attributes isEmpty]& 1) == 0)
  {
    v7 = [OrgApacheLuceneUtilAttributeSource getCurrentState]_0(self);
    if (v7)
    {
      v8 = v7;
      while (1)
      {
        attributeImpls = v5->attributeImpls_;
        if (!attributeImpls)
        {
          break;
        }

        v10 = v8[1];
        if (!v10)
        {
          break;
        }

        -[JavaUtilMap putWithId:withId:](attributeImpls, "putWithId:withId:", [v10 getClass], objc_msgSend(v8[1], "clone"));
        v8 = v8[2];
        if (!v8)
        {
          goto LABEL_8;
        }
      }

LABEL_21:
      JreThrowNullPointerException();
    }

LABEL_8:
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = self->attributes_;
    if (!v11)
    {
      goto LABEL_21;
    }

    v12 = [(JavaUtilMap *)v11 entrySet];
    if (!v12)
    {
      goto LABEL_21;
    }

    v13 = v12;
    v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v25 + 1) + 8 * i);
          if (!v18)
          {
            goto LABEL_21;
          }

          v19 = v5->attributes_;
          v20 = [*(*(&v25 + 1) + 8 * i) getKey];
          v21 = v5->attributeImpls_;
          if (!v21)
          {
            goto LABEL_21;
          }

          v22 = v20;
          v23 = [v18 getValue];
          if (!v23)
          {
            goto LABEL_21;
          }

          -[JavaUtilMap putWithId:withId:](v19, "putWithId:withId:", v22, -[JavaUtilMap getWithId:](v21, "getWithId:", [v23 getClass]));
        }

        v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v15);
    }
  }

  return v5;
}

- (void)copyToWithOrgApacheLuceneUtilAttributeSource:(id)a3
{
  v4 = [OrgApacheLuceneUtilAttributeSource getCurrentState]_0(self);
  if (v4)
  {
    if (a3)
    {
      v5 = v4;
      while (1)
      {
        v6 = *(a3 + 2);
        if (!v6)
        {
          break;
        }

        v7 = v5[1];
        if (!v7)
        {
          break;
        }

        v8 = [v6 getWithId:{objc_msgSend(v7, "getClass")}];
        v9 = v5[1];
        if (!v8)
        {
          [objc_msgSend(v9 "getClass")];
          v17 = JreStrcat("$$$", v10, v11, v12, v13, v14, v15, v16, @"This AttributeSource contains AttributeImpl of type ");
          v18 = new_JavaLangIllegalArgumentException_initWithNSString_(v17);
          objc_exception_throw(v18);
        }

        [v9 copyToWithOrgApacheLuceneUtilAttributeImpl:?];
        v5 = v5[2];
        if (!v5)
        {
          return;
        }
      }
    }

    JreThrowNullPointerException();
  }
}

- (id)description
{
  v3 = [-[OrgApacheLuceneUtilAttributeSource getClass](self "getClass")];
  v4 = JavaLangSystem_identityHashCodeWithId_(self);
  JavaLangInteger_toHexStringWithInt_(v4);
  sub_1000F3458(self, 0);
  return JreStrcat("$C$C$", v5, v6, v7, v8, v9, v10, v11, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAttributeSource;
  [(OrgApacheLuceneUtilAttributeSource *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [OrgApacheLuceneUtilAttributeSource__1 alloc];
    OrgLukhnosPortmobileLangClassValue_init(v2);
    JreStrongAssignAndConsume(&qword_1005545F8, v2);
    atomic_store(1u, &OrgApacheLuceneUtilAttributeSource__initialized);
  }
}

@end