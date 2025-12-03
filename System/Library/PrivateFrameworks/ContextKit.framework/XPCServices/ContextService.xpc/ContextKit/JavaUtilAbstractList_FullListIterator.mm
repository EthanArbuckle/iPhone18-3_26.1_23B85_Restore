@interface JavaUtilAbstractList_FullListIterator
- (id)previous;
- (void)addWithId:(id)id;
- (void)dealloc;
- (void)setWithId:(id)id;
@end

@implementation JavaUtilAbstractList_FullListIterator

- (void)addWithId:(id)id
{
  v4 = self->this$1_;
  if (self->super.expectedModCount_ != v4->modCount_)
  {
    v7 = new_JavaUtilConcurrentModificationException_init();
    objc_exception_throw(v7);
  }

  [(JavaUtilAbstractList *)v4 addWithInt:(self->super.pos_ + 1) withId:id];
  expectedModCount = self->super.expectedModCount_;
  ++self->super.pos_;
  self->super.lastPosition_ = -1;
  modCount = self->this$1_->modCount_;
  if (modCount != expectedModCount)
  {
    self->super.expectedModCount_ = modCount;
  }
}

- (id)previous
{
  v3 = self->this$1_;
  if (self->super.expectedModCount_ != v3->modCount_)
  {
    v6 = new_JavaUtilConcurrentModificationException_init();
    objc_exception_throw(v6);
  }

  result = [(JavaUtilAbstractList *)v3 getWithInt:self->super.pos_];
  pos = self->super.pos_;
  self->super.lastPosition_ = pos;
  self->super.pos_ = pos - 1;
  return result;
}

- (void)setWithId:(id)id
{
  if (self->super.expectedModCount_ != self->this$1_->modCount_)
  {
    v3 = new_JavaUtilConcurrentModificationException_init();
    objc_exception_throw(v3);
  }

  [(JavaUtilAbstractList *)self->this$1_ setWithInt:self->super.lastPosition_ withId:id];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilAbstractList_FullListIterator;
  [(JavaUtilAbstractList_SimpleListIterator *)&v3 dealloc];
}

@end