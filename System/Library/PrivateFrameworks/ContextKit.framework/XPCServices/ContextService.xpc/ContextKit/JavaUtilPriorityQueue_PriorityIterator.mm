@interface JavaUtilPriorityQueue_PriorityIterator
- (JavaUtilPriorityQueue_PriorityIterator)initWithJavaUtilPriorityQueue:(id)queue;
- (id)next;
- (void)dealloc;
- (void)remove;
@end

@implementation JavaUtilPriorityQueue_PriorityIterator

- (id)next
{
  if (![(JavaUtilPriorityQueue_PriorityIterator *)self hasNext])
  {
    v8 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v8);
  }

  self->allowRemove_ = 1;
  elements = self->this$0_->elements_;
  if (!elements)
  {
    JreThrowNullPointerException();
  }

  currentIndex = self->currentIndex_;
  v5 = (currentIndex + 1);
  self->currentIndex_ = v5;
  size = elements->super.size_;
  if (currentIndex + 1 < 0 || v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v5);
  }

  return (&elements->elementType_)[v5];
}

- (void)remove
{
  if (!self->allowRemove_)
  {
    v5 = new_JavaLangIllegalStateException_init();
    objc_exception_throw(v5);
  }

  self->allowRemove_ = 0;
  v3 = self->this$0_;
  currentIndex = self->currentIndex_;
  self->currentIndex_ = currentIndex - 1;

  sub_1001B7AD8(v3, currentIndex);
}

- (JavaUtilPriorityQueue_PriorityIterator)initWithJavaUtilPriorityQueue:(id)queue
{
  JreStrongAssign(&self->this$0_, queue);
  self->currentIndex_ = -1;
  self->allowRemove_ = 0;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilPriorityQueue_PriorityIterator;
  [(JavaUtilPriorityQueue_PriorityIterator *)&v3 dealloc];
}

@end