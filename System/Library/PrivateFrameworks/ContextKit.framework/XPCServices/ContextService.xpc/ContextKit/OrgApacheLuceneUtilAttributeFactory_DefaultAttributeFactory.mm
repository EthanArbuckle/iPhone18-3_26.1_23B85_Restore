@interface OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory
- (id)createAttributeInstanceWithIOSClass:(id)class;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory

- (id)createAttributeInstanceWithIOSClass:(id)class
{
  constructors = self->constructors_;
  if (!constructors || (v4 = [(OrgLukhnosPortmobileLangClassValue *)constructors getWithIOSClass:class]) == 0)
  {
    JreThrowNullPointerException();
  }

  invokeExact = [v4 invokeExact];
  objc_opt_class();
  if (invokeExact && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return invokeExact;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory;
  [(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *)&v3 dealloc];
}

@end