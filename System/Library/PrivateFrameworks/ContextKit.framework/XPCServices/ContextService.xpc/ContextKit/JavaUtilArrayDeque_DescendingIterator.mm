@interface JavaUtilArrayDeque_DescendingIterator
- (JavaUtilArrayDeque_DescendingIterator)initWithJavaUtilArrayDeque:(id)a3;
- (id)next;
- (void)dealloc;
- (void)remove;
@end

@implementation JavaUtilArrayDeque_DescendingIterator

- (id)next
{
  cursor = self->cursor_;
  fence = self->fence_;
  v4 = __OFSUB__(cursor, fence);
  if (cursor == fence)
  {
    v14 = new_JavaUtilNoSuchElementException_init();
    goto LABEL_16;
  }

  v6 = self->this$0_;
  elements = v6->elements_;
  if (!elements)
  {
    JreThrowNullPointerException();
  }

  v8 = (elements->super.size_ - 1) & (cursor - 1);
  self->cursor_ = v8;
  v9 = v6->elements_;
  size = v9->super.size_;
  if (v8 < 0 != v4 || v8 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v8);
  }

  result = (&v9->elementType_)[v8];
  if (v6->head_ != fence || result == 0)
  {
    v14 = new_JavaUtilConcurrentModificationException_init();
LABEL_16:
    objc_exception_throw(v14);
  }

  self->lastRet_ = self->cursor_;
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

  if (!sub_100253C94(self->this$0_, lastRet))
  {
    v4 = self->this$0_;
    elements = v4->elements_;
    if (!elements)
    {
      JreThrowNullPointerException();
    }

    self->cursor_ = (elements->super.size_ - 1) & (self->cursor_ + 1);
    self->fence_ = v4->head_;
  }

  self->lastRet_ = -1;
}

- (JavaUtilArrayDeque_DescendingIterator)initWithJavaUtilArrayDeque:(id)a3
{
  JreStrongAssign(&self->this$0_, a3);
  self->cursor_ = *(a3 + 5);
  self->fence_ = *(a3 + 4);
  self->lastRet_ = -1;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilArrayDeque_DescendingIterator;
  [(JavaUtilArrayDeque_DescendingIterator *)&v3 dealloc];
}

@end