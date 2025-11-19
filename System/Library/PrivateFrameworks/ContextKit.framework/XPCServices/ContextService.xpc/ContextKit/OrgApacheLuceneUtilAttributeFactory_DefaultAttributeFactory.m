@interface OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory
- (id)createAttributeInstanceWithIOSClass:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory

- (id)createAttributeInstanceWithIOSClass:(id)a3
{
  constructors = self->constructors_;
  if (!constructors || (v4 = [(OrgLukhnosPortmobileLangClassValue *)constructors getWithIOSClass:a3]) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = [v4 invokeExact];
  objc_opt_class();
  if (v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory;
  [(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *)&v3 dealloc];
}

@end