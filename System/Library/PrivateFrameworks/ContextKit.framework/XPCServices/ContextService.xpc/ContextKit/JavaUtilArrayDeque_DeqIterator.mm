@interface JavaUtilArrayDeque_DeqIterator
- (JavaUtilArrayDeque_DeqIterator)initWithJavaUtilArrayDeque:(id)deque;
- (id)next;
- (void)dealloc;
- (void)remove;
@end

@implementation JavaUtilArrayDeque_DeqIterator

- (id)next
{
  fence = self->fence_;
  cursor = self->cursor_;
  if (cursor == fence)
  {
    v11 = new_JavaUtilNoSuchElementException_init();
    goto LABEL_14;
  }

  v5 = self->this$0_;
  elements = v5->elements_;
  if (!elements)
  {
    JreThrowNullPointerException();
  }

  size = elements->super.size_;
  if ((cursor & 0x80000000) != 0 || cursor >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, cursor);
  }

  result = (&elements->elementType_)[cursor];
  if (v5->tail_ != fence || result == 0)
  {
    v11 = new_JavaUtilConcurrentModificationException_init();
LABEL_14:
    objc_exception_throw(v11);
  }

  v10 = self->cursor_;
  self->lastRet_ = v10;
  self->cursor_ = (v5->elements_->super.size_ - 1) & (v10 + 1);
  return result;
}

- (void)remove
{
  lastRet = self->lastRet_;
  if ((lastRet & 0x80000000) != 0)
  {
    v6 = new_JavaLangIllegalStateException_init();
    objc_exception_throw(v6);
  }

  if (sub_100253C94(self->this$0_, lastRet))
  {
    v4 = self->this$0_;
    elements = v4->elements_;
    if (!elements)
    {
      JreThrowNullPointerException();
    }

    self->cursor_ = (elements->super.size_ - 1) & (self->cursor_ - 1);
    self->fence_ = v4->tail_;
  }

  self->lastRet_ = -1;
}

- (JavaUtilArrayDeque_DeqIterator)initWithJavaUtilArrayDeque:(id)deque
{
  JreStrongAssign(&self->this$0_, deque);
  self->cursor_ = *(deque + 4);
  self->fence_ = *(deque + 5);
  self->lastRet_ = -1;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilArrayDeque_DeqIterator;
  [(JavaUtilArrayDeque_DeqIterator *)&v3 dealloc];
}

@end