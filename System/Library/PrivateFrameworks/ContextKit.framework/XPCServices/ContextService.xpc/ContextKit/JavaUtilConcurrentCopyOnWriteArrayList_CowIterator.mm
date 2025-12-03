@interface JavaUtilConcurrentCopyOnWriteArrayList_CowIterator
- (JavaUtilConcurrentCopyOnWriteArrayList_CowIterator)initWithNSObjectArray:(id)array withInt:(int)int withInt:(int)withInt;
- (id)next;
- (id)previous;
- (void)dealloc;
@end

@implementation JavaUtilConcurrentCopyOnWriteArrayList_CowIterator

- (JavaUtilConcurrentCopyOnWriteArrayList_CowIterator)initWithNSObjectArray:(id)array withInt:(int)int withInt:(int)withInt
{
  self->index_ = 0;
  JreStrongAssign(&self->snapshot_, array);
  self->from_ = int;
  self->to_ = withInt;
  self->index_ = int;
  return self;
}

- (id)next
{
  index = self->index_;
  if (index >= self->to_)
  {
    v6 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v6);
  }

  snapshot = self->snapshot_;
  if (!snapshot)
  {
    JreThrowNullPointerException();
  }

  self->index_ = index + 1;
  size = snapshot->super.size_;
  if ((index & 0x80000000) != 0 || index >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, index);
  }

  return (&snapshot->elementType_)[index];
}

- (id)previous
{
  index = self->index_;
  if (index <= self->from_)
  {
    v7 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v7);
  }

  snapshot = self->snapshot_;
  if (!snapshot)
  {
    JreThrowNullPointerException();
  }

  self->index_ = index - 1;
  size = snapshot->super.size_;
  if (index < 1 || index > size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (index - 1));
  }

  return *(&snapshot->isRetained_ + index);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentCopyOnWriteArrayList_CowIterator;
  [(JavaUtilConcurrentCopyOnWriteArrayList_CowIterator *)&v3 dealloc];
}

@end