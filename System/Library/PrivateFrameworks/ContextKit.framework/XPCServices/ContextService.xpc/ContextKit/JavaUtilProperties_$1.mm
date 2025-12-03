@interface JavaUtilProperties_$1
- (JavaUtilProperties_$1)initWithJavaUtilProperties:(id)properties;
- (void)dealloc;
- (void)startElementWithNSString:(id)string withNSString:(id)sString withNSString:(id)nSString withOrgXmlSaxAttributes:(id)attributes;
@end

@implementation JavaUtilProperties_$1

- (void)startElementWithNSString:(id)string withNSString:(id)sString withNSString:(id)nSString withOrgXmlSaxAttributes:(id)attributes
{
  JreStrongAssign(&self->key_, 0);
  if (!nSString)
  {
    goto LABEL_8;
  }

  if (![nSString isEqual:@"entry"])
  {
    return;
  }

  if (!attributes)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v9 = [attributes getValueWithNSString:@"key"];

  JreStrongAssign(&self->key_, v9);
}

- (JavaUtilProperties_$1)initWithJavaUtilProperties:(id)properties
{
  JreStrongAssign(&self->this$0_, properties);
  OrgXmlSaxHelpersDefaultHandler_init(self);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilProperties__1;
  [(JavaUtilProperties_$1 *)&v3 dealloc];
}

@end