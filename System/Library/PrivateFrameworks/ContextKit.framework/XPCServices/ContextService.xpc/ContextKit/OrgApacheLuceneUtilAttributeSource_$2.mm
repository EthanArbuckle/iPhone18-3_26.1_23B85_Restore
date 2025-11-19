@interface OrgApacheLuceneUtilAttributeSource_$2
- (OrgApacheLuceneUtilAttributeSource_$2)initWithOrgApacheLuceneUtilAttributeSource_State:(id)a3;
- (id)next;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilAttributeSource_$2

- (id)next
{
  state = self->state_;
  p_state = &self->state_;
  v3 = state;
  if (!state)
  {
    v7 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v7);
  }

  attribute = v3->attribute_;
  JreStrongAssign(p_state, v3->next_);
  return attribute;
}

- (OrgApacheLuceneUtilAttributeSource_$2)initWithOrgApacheLuceneUtilAttributeSource_State:(id)a3
{
  JreStrongAssign(&self->val$initState_, a3);
  JreStrongAssign(&self->state_, self->val$initState_);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAttributeSource__2;
  [(OrgApacheLuceneUtilAttributeSource_$2 *)&v3 dealloc];
}

@end