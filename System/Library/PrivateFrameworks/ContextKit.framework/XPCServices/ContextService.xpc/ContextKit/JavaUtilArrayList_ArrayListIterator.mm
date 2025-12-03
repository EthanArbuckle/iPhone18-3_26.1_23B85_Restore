@interface JavaUtilArrayList_ArrayListIterator
- (JavaUtilArrayList_ArrayListIterator)initWithJavaUtilArrayList:(id)list;
- (id)next;
- (void)dealloc;
- (void)remove;
@end

@implementation JavaUtilArrayList_ArrayListIterator

- (id)next
{
  v2 = self->this$0_;
  if (v2->super.modCount_ != self->expectedModCount_)
  {
    v9 = new_JavaUtilConcurrentModificationException_init();
    goto LABEL_11;
  }

  remaining = self->remaining_;
  if (!remaining)
  {
    v9 = new_JavaUtilNoSuchElementException_init();
LABEL_11:
    objc_exception_throw(v9);
  }

  self->remaining_ = remaining - 1;
  v4 = *&v2->size_;
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = *(&v2->super.modCount_ + 1);
  v6 = (v5 - remaining);
  self->removalIndex_ = v6;
  v7 = *(v4 + 8);
  if (v5 - remaining < 0 || v6 >= v7)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, v6);
  }

  return *(v4 + 24 + 8 * v6);
}

- (void)remove
{
  v2 = self->this$0_;
  if (v2->super.modCount_ != self->expectedModCount_)
  {
    v10 = new_JavaUtilConcurrentModificationException_init();
    goto LABEL_8;
  }

  removalIndex = self->removalIndex_;
  if ((removalIndex & 0x80000000) != 0)
  {
    v10 = new_JavaLangIllegalStateException_init();
LABEL_8:
    objc_exception_throw(v10);
  }

  v5 = *&v2->size_;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v5, (removalIndex + 1), v5, removalIndex, self->remaining_);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = self->this$0_;
  v7 = *(&v6->super.modCount_ + 1) - 1;
  *(&v6->super.modCount_ + 1) = v7;
  IOSObjectArray_Set(v5, v7, 0);
  self->removalIndex_ = -1;
  v8 = self->this$0_;
  v9 = v8->super.modCount_ + 1;
  v8->super.modCount_ = v9;
  self->expectedModCount_ = v9;
}

- (JavaUtilArrayList_ArrayListIterator)initWithJavaUtilArrayList:(id)list
{
  JreStrongAssign(&self->this$0_, list);
  self->remaining_ = *(list + 3);
  self->removalIndex_ = -1;
  self->expectedModCount_ = *(list + 2);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilArrayList_ArrayListIterator;
  [(JavaUtilArrayList_ArrayListIterator *)&v3 dealloc];
}

@end