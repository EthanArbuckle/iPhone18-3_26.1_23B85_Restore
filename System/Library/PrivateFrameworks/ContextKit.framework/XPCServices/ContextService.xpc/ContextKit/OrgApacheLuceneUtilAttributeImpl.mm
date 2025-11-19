@interface OrgApacheLuceneUtilAttributeImpl
- (id)clone;
- (id)copyWithZone:(_NSZone *)a3;
- (id)reflectAsStringWithBoolean:(BOOL)a3;
- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id)a3;
@end

@implementation OrgApacheLuceneUtilAttributeImpl

- (id)reflectAsStringWithBoolean:(BOOL)a3
{
  v5 = new_JavaLangStringBuilder_init();
  v6 = [OrgApacheLuceneUtilAttributeImpl__1 alloc];
  JreStrongAssign(&v6->val$buffer_, v5);
  v6->val$prependAttClass_ = a3;
  [(OrgApacheLuceneUtilAttributeImpl *)self reflectWithWithOrgApacheLuceneUtilAttributeReflector:v6];

  return [(JavaLangStringBuilder *)v5 description];
}

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id)a3
{
  v5 = [(OrgApacheLuceneUtilAttributeImpl *)self getClass];
  AttributeInterfacesWithIOSClass = OrgApacheLuceneUtilAttributeSource_getAttributeInterfacesWithIOSClass_(v5);
  if (!AttributeInterfacesWithIOSClass)
  {
    goto LABEL_11;
  }

  if (AttributeInterfacesWithIOSClass[2] != 1)
  {
    v15 = [v5 getName];
    v23 = JreStrcat("$$", v16, v17, v18, v19, v20, v21, v22, v15);
    v24 = new_JavaLangUnsupportedOperationException_initWithNSString_(v23);
    objc_exception_throw(v24);
  }

  v7 = *(AttributeInterfacesWithIOSClass + 3);
  v8 = [v5 getDeclaredFields];
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = (v8 + 24);
  v10 = &v8[8 * *(v8 + 2) + 24];
  if ((v8 + 24) < v10)
  {
    while (1)
    {
      v12 = *v9++;
      v11 = v12;
      if (!v12)
      {
        break;
      }

      if ((JavaLangReflectModifier_isStaticWithInt_([v11 getModifiers]) & 1) == 0)
      {
        if (!a3)
        {
          break;
        }

        v13 = [v11 getName];
        v14 = [OrgApacheLuceneUtilAttributeImpl__2 alloc];
        JreStrongAssign(&v14->this$0_, self);
        JreStrongAssign(&v14->val$f_, v11);
        [a3 reflectWithIOSClass:v7 withNSString:v13 withId:JavaSecurityAccessController_doPrivilegedWithJavaSecurityPrivilegedAction_(v14)];
      }

      if (v9 >= v10)
      {
        return;
      }
    }

LABEL_11:
    JreThrowNullPointerException();
  }
}

- (id)clone
{
  v4.receiver = self;
  v4.super_class = OrgApacheLuceneUtilAttributeImpl;
  v2 = [(OrgApacheLuceneUtilAttributeImpl *)&v4 clone];
  objc_opt_class();
  if (v2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(OrgApacheLuceneUtilAttributeImpl *)self clone];

  return v3;
}

@end