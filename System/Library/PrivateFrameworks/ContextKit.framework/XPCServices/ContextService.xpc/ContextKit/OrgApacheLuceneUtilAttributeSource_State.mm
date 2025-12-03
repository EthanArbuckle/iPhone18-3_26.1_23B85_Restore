@interface OrgApacheLuceneUtilAttributeSource_State
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilAttributeSource_State

- (id)clone
{
  v3 = [OrgApacheLuceneUtilAttributeSource_State alloc];
  attribute = self->attribute_;
  if (!attribute)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign(&v3->attribute_, [(OrgApacheLuceneUtilAttributeImpl *)attribute clone]);
  next = self->next_;
  if (next)
  {
    JreStrongAssign(&v3->next_, [(OrgApacheLuceneUtilAttributeSource_State *)next clone]);
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAttributeSource_State;
  [(OrgApacheLuceneUtilAttributeSource_State *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(OrgApacheLuceneUtilAttributeSource_State *)self clone];

  return clone;
}

@end