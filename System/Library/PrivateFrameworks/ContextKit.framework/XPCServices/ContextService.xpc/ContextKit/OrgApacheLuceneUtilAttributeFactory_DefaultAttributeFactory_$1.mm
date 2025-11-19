@interface OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1
- (OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1)initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory:(id)a3;
- (id)computeValueWithIOSClass:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1

- (id)computeValueWithIOSClass:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v3 = [a3 asSubclass:OrgApacheLuceneUtilAttribute_class_()];
  v4 = sub_1000C7704(v3);

  return OrgApacheLuceneUtilAttributeFactory_findAttributeImplCtorWithIOSClass_(v4);
}

- (OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1)initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory:(id)a3
{
  JreStrongAssign(&self->this$0_, a3);
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