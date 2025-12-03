@interface OrgApacheLuceneUtilAttributeFactory_$1
- (OrgApacheLuceneUtilAttributeFactory_$1)initWithOrgLukhnosPortmobileInvokeMethodHandle:(id)handle withOrgApacheLuceneUtilAttributeFactory:(id)factory withIOSClass:(id)class;
- (id)createInstance;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilAttributeFactory_$1

- (id)createInstance
{
  v2 = self->val$constr_;
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  invokeExact = [(OrgLukhnosPortmobileInvokeMethodHandle *)v2 invokeExact];
  objc_opt_class();
  if (invokeExact && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return invokeExact;
}

- (OrgApacheLuceneUtilAttributeFactory_$1)initWithOrgLukhnosPortmobileInvokeMethodHandle:(id)handle withOrgApacheLuceneUtilAttributeFactory:(id)factory withIOSClass:(id)class
{
  JreStrongAssign(&self->val$constr_, handle);
  JreStrongAssign(&self->super.delegate_, factory);
  JreStrongAssign(&self->super.clazz_, class);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAttributeFactory__1;
  [(OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory *)&v3 dealloc];
}

@end