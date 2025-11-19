@interface JavaUtilProperties_$1
- (JavaUtilProperties_$1)initWithJavaUtilProperties:(id)a3;
- (void)dealloc;
- (void)startElementWithNSString:(id)a3 withNSString:(id)a4 withNSString:(id)a5 withOrgXmlSaxAttributes:(id)a6;
@end

@implementation JavaUtilProperties_$1

- (void)startElementWithNSString:(id)a3 withNSString:(id)a4 withNSString:(id)a5 withOrgXmlSaxAttributes:(id)a6
{
  JreStrongAssign(&self->key_, 0);
  if (!a5)
  {
    goto LABEL_8;
  }

  if (![a5 isEqual:@"entry"])
  {
    return;
  }

  if (!a6)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v9 = [a6 getValueWithNSString:@"key"];

  JreStrongAssign(&self->key_, v9);
}

- (JavaUtilProperties_$1)initWithJavaUtilProperties:(id)a3
{
  JreStrongAssign(&self->this$0_, a3);
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