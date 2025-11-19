@interface JavaUtilAbstractList_SimpleListIterator
- (JavaUtilAbstractList_SimpleListIterator)initWithJavaUtilAbstractList:(id)a3;
- (id)next;
- (void)dealloc;
- (void)remove;
@end

@implementation JavaUtilAbstractList_SimpleListIterator

- (JavaUtilAbstractList_SimpleListIterator)initWithJavaUtilAbstractList:(id)a3
{
  JreStrongAssign(&self->this$0_, a3);
  self->pos_ = -1;
  self->lastPosition_ = -1;
  self->expectedModCount_ = *(a3 + 2);
  return self;
}

- (id)next
{
  expectedModCount = self->expectedModCount_;
  v4 = self->this$0_;
  if (expectedModCount != v4->modCount_)
  {
    v7 = new_JavaUtilConcurrentModificationException_init();
    objc_exception_throw(v7);
  }

  result = [(JavaUtilAbstractList *)v4 getWithInt:(self->pos_ + 1)];
  v6 = self->pos_ + 1;
  self->pos_ = v6;
  self->lastPosition_ = v6;
  return result;
}

- (void)remove
{
  if (self->lastPosition_ == -1)
  {
    v6 = new_JavaLangIllegalStateException_init();
    goto LABEL_8;
  }

  expectedModCount = self->expectedModCount_;
  v4 = self->this$0_;
  if (expectedModCount != v4->modCount_)
  {
    v6 = new_JavaUtilConcurrentModificationException_init();
LABEL_8:
    objc_exception_throw(v6);
  }

  [(JavaUtilAbstractList *)v4 removeWithInt:?];
  self->expectedModCount_ = self->this$0_->modCount_;
  pos = self->pos_;
  if (pos == self->lastPosition_)
  {
    self->pos_ = pos - 1;
  }

  self->lastPosition_ = -1;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilAbstractList_SimpleListIterator;
  [(JavaUtilAbstractList_SimpleListIterator *)&v3 dealloc];
}

@end