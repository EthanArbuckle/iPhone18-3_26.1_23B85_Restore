@interface JavaUtilTreeMap_MapIterator
- (JavaUtilTreeMap_MapIterator)initWithJavaUtilTreeMap:(id)map withJavaUtilTreeMap_Node:(id)node;
- (id)stepBackward;
- (id)stepForward;
- (void)dealloc;
- (void)remove;
@end

@implementation JavaUtilTreeMap_MapIterator

- (JavaUtilTreeMap_MapIterator)initWithJavaUtilTreeMap:(id)map withJavaUtilTreeMap_Node:(id)node
{
  JreStrongAssign(&self->this$0_, map);
  self->expectedModCount_ = *(map + 11);
  JreStrongAssign(&self->next_, node);
  return self;
}

- (id)stepForward
{
  p_next = &self->next_;
  next = self->next_;
  if (!next)
  {
    v7 = new_JavaUtilNoSuchElementException_init();
    goto LABEL_8;
  }

  if (self->this$0_->modCount_ != self->expectedModCount_)
  {
    v7 = new_JavaUtilConcurrentModificationException_init();
LABEL_8:
    objc_exception_throw(v7);
  }

  JreStrongAssign(&self->last_, next);
  v5 = self->next_;
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign(p_next, [(JavaUtilTreeMap_Node *)v5 next]);
  return self->last_;
}

- (id)stepBackward
{
  p_next = &self->next_;
  next = self->next_;
  if (!next)
  {
    v7 = new_JavaUtilNoSuchElementException_init();
    goto LABEL_8;
  }

  if (self->this$0_->modCount_ != self->expectedModCount_)
  {
    v7 = new_JavaUtilConcurrentModificationException_init();
LABEL_8:
    objc_exception_throw(v7);
  }

  JreStrongAssign(&self->last_, next);
  v5 = self->next_;
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign(p_next, [(JavaUtilTreeMap_Node *)v5 prev]);
  return self->last_;
}

- (void)remove
{
  p_last = &self->last_;
  if (!self->last_)
  {
    v4 = new_JavaLangIllegalStateException_init();
    objc_exception_throw(v4);
  }

  [(JavaUtilTreeMap *)self->this$0_ removeInternalWithJavaUtilTreeMap_Node:?];
  self->expectedModCount_ = self->this$0_->modCount_;

  JreStrongAssign(p_last, 0);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilTreeMap_MapIterator;
  [(JavaUtilTreeMap_MapIterator *)&v3 dealloc];
}

@end