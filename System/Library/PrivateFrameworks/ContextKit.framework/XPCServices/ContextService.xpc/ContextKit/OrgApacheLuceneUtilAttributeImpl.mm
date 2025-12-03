@interface OrgApacheLuceneUtilAttributeImpl
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)reflectAsStringWithBoolean:(BOOL)boolean;
- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id)reflector;
@end

@implementation OrgApacheLuceneUtilAttributeImpl

- (id)reflectAsStringWithBoolean:(BOOL)boolean
{
  v5 = new_JavaLangStringBuilder_init();
  v6 = [OrgApacheLuceneUtilAttributeImpl__1 alloc];
  JreStrongAssign(&v6->val$buffer_, v5);
  v6->val$prependAttClass_ = boolean;
  [(OrgApacheLuceneUtilAttributeImpl *)self reflectWithWithOrgApacheLuceneUtilAttributeReflector:v6];

  return [(JavaLangStringBuilder *)v5 description];
}

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id)reflector
{
  getClass = [(OrgApacheLuceneUtilAttributeImpl *)self getClass];
  AttributeInterfacesWithIOSClass = OrgApacheLuceneUtilAttributeSource_getAttributeInterfacesWithIOSClass_(getClass);
  if (!AttributeInterfacesWithIOSClass)
  {
    goto LABEL_11;
  }

  if (AttributeInterfacesWithIOSClass[2] != 1)
  {
    getName = [getClass getName];
    v23 = JreStrcat("$$", v16, v17, v18, v19, v20, v21, v22, getName);
    v24 = new_JavaLangUnsupportedOperationException_initWithNSString_(v23);
    objc_exception_throw(v24);
  }

  v7 = *(AttributeInterfacesWithIOSClass + 3);
  getDeclaredFields = [getClass getDeclaredFields];
  if (!getDeclaredFields)
  {
    goto LABEL_11;
  }

  v9 = (getDeclaredFields + 24);
  v10 = &getDeclaredFields[8 * *(getDeclaredFields + 2) + 24];
  if ((getDeclaredFields + 24) < v10)
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
        if (!reflector)
        {
          break;
        }

        getName2 = [v11 getName];
        v14 = [OrgApacheLuceneUtilAttributeImpl__2 alloc];
        JreStrongAssign(&v14->this$0_, self);
        JreStrongAssign(&v14->val$f_, v11);
        [reflector reflectWithIOSClass:v7 withNSString:getName2 withId:JavaSecurityAccessController_doPrivilegedWithJavaSecurityPrivilegedAction_(v14)];
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
  clone = [(OrgApacheLuceneUtilAttributeImpl *)&v4 clone];
  objc_opt_class();
  if (clone && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return clone;
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(OrgApacheLuceneUtilAttributeImpl *)self clone];

  return clone;
}

@end