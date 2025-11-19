@interface OrgApacheLuceneUtilAttributeImpl_$2
- (OrgApacheLuceneUtilAttributeImpl_$2)initWithOrgApacheLuceneUtilAttributeImpl:(id)a3 withJavaLangReflectField:(id)a4;
- (id)run;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilAttributeImpl_$2

- (id)run
{
  v3 = self->val$f_;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  [(JavaLangReflectAccessibleObject *)v3 setAccessibleWithBoolean:1];
  return [(JavaLangReflectField *)self->val$f_ getWithId:self->this$0_];
}

- (OrgApacheLuceneUtilAttributeImpl_$2)initWithOrgApacheLuceneUtilAttributeImpl:(id)a3 withJavaLangReflectField:(id)a4
{
  JreStrongAssign(&self->this$0_, a3);
  JreStrongAssign(&self->val$f_, a4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAttributeImpl__2;
  [(OrgApacheLuceneUtilAttributeImpl_$2 *)&v3 dealloc];
}

@end