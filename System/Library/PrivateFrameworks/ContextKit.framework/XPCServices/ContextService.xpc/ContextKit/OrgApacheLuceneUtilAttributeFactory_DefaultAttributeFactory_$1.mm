@interface OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1
- (OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1)initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory:(id)factory;
- (id)computeValueWithIOSClass:(id)class;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1

- (id)computeValueWithIOSClass:(id)class
{
  if (!class)
  {
    JreThrowNullPointerException();
  }

  v3 = [class asSubclass:OrgApacheLuceneUtilAttribute_class_()];
  v4 = sub_1000C7704(v3);

  return OrgApacheLuceneUtilAttributeFactory_findAttributeImplCtorWithIOSClass_(v4);
}

- (OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1)initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory:(id)factory
{
  JreStrongAssign(&self->this$0_, factory);
  OrgLukhnosPortmobileLangClassValue_init(self);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory__1;
  [(OrgLukhnosPortmobileLangClassValue *)&v3 dealloc];
}

@end