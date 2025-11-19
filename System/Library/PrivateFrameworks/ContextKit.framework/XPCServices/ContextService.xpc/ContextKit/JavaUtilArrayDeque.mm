@interface JavaUtilArrayDeque
- (BOOL)containsWithId:(id)a3;
- (BOOL)removeFirstOccurrenceWithId:(id)a3;
- (BOOL)removeLastOccurrenceWithId:(id)a3;
- (JavaUtilArrayDeque)initWithInt:(int)a3;
- (id)clone;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descendingIterator;
- (id)getFirst;
- (id)getLast;
- (id)iterator;
- (id)peekFirst;
- (id)peekLast;
- (id)pollFirst;
- (id)pollLast;
- (id)removeFirst;
- (id)removeLast;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)a3;
- (int)size;
- (void)addFirstWithId:(id)a3;
- (void)addLastWithId:(id)a3;
- (void)clear;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)a3;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3;
@end

@implementation JavaUtilArrayDeque

- (JavaUtilArrayDeque)initWithInt:(int)a3
{
  JavaUtilAbstractCollection_init(self, a2);
  sub_1002531D8(self, a3);
  return self;
}

- (void)addFirstWithId:(id)a3
{
  if (!a3)
  {
    v6 = new_JavaLangNullPointerException_init();
    objc_exception_throw(v6);
  }

  elements = self->elements_;
  if (!elements)
  {
    JreThrowNullPointerException();
  }

  v5 = (elements->super.size_ - 1) & (self->head_ - 1);
  self->head_ = v5;
  IOSObjectArray_Set(elements, v5, a3);
  if (self->head_ == self->tail_)
  {

    sub_1002532A0(self);
  }
}

- (void)addLastWithId:(id)a3
{
  if (!a3)
  {
    v6 = new_JavaLangNullPointerException_init();
    objc_exception_throw(v6);
  }

  elements = self->elements_;
  if (!elements)
  {
    JreThrowNullPointerException();
  }

  IOSObjectArray_Set(elements, self->tail_, a3);
  v5 = (self->elements_->super.size_ - 1) & (self->tail_ + 1);
  self->tail_ = v5;
  if (v5 == self->head_)
  {

    sub_1002532A0(self);
  }
}

- (id)removeFirst
{
  result = [(JavaUtilArrayDeque *)self pollFirst];
  if (!result)
  {
    v3 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v3);
  }

  return result;
}

- (id)removeLast
{
  result = [(JavaUtilArrayDeque *)self pollLast];
  if (!result)
  {
    v3 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v3);
  }

  return result;
}

- (id)pollFirst
{
  elements = self->elements_;
  if (!elements)
  {
    JreThrowNullPointerException();
  }

  head = self->head_;
  size = elements->super.size_;
  if ((head & 0x80000000) != 0 || head >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, head);
  }

  v6 = (&elements->elementType_)[head];
  if (v6)
  {
    IOSObjectArray_Set(self->elements_, head, 0);
    self->head_ = (self->elements_->super.size_ - 1) & (head + 1);
  }

  return v6;
}

- (id)pollLast
{
  elements = self->elements_;
  if (!elements)
  {
    JreThrowNullPointerException();
  }

  v5 = self->tail_ - 1;
  size = elements->super.size_;
  v7 = (size - 1) & v5;
  if (v7 < 0 != v2 || v7 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (size - 1) & v5);
  }

  v9 = (&elements->elementType_)[v7];
  if (v9)
  {
    IOSObjectArray_Set(self->elements_, v7, 0);
    self->tail_ = v7;
  }

  return v9;
}

- (id)getFirst
{
  elements = self->elements_;
  if (!elements)
  {
    JreThrowNullPointerException();
  }

  head = self->head_;
  size = elements->super.size_;
  if (head < 0 || head >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, head);
  }

  result = (&elements->elementType_)[head];
  if (!result)
  {
    v6 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v6);
  }

  return result;
}

- (id)getLast
{
  elements = self->elements_;
  if (!elements)
  {
    JreThrowNullPointerException();
  }

  v4 = self->tail_ - 1;
  size = elements->super.size_;
  v6 = (size - 1) & v4;
  if (v6 < 0 != v2 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  result = (&elements->elementType_)[v6];
  if (!result)
  {
    v9 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v9);
  }

  return result;
}

- (id)peekFirst
{
  elements = self->elements_;
  if (!elements)
  {
    JreThrowNullPointerException();
  }

  head = self->head_;
  size = elements->super.size_;
  if (head < 0 || head >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, head);
  }

  return (&elements->elementType_)[head];
}

- (id)peekLast
{
  elements = self->elements_;
  if (!elements)
  {
    JreThrowNullPointerException();
  }

  v4 = self->tail_ - 1;
  size = elements->super.size_;
  v6 = (size - 1) & v4;
  if (v6 < 0 != v2 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (size - 1) & v4);
  }

  return (&elements->elementType_)[v6];
}

- (BOOL)removeFirstOccurrenceWithId:(id)a3
{
  if (a3)
  {
    elements = self->elements_;
    if (!elements)
    {
      JreThrowNullPointerException();
    }

    size = elements->super.size_;
    v7 = size - 1;
    head = self->head_;
    while (1)
    {
      v9 = head;
      if (head < 0 || head >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, head);
      }

      if (!(&elements->elementType_)[head])
      {
        break;
      }

      if ([a3 isEqual:?])
      {
        sub_100253C94(self, v9);
        return 1;
      }

      head = (v9 + 1) & v7;
      elements = self->elements_;
      size = elements->super.size_;
    }
  }

  return 0;
}

- (BOOL)removeLastOccurrenceWithId:(id)a3
{
  if (a3)
  {
    elements = self->elements_;
    if (!elements)
    {
      JreThrowNullPointerException();
    }

    v7 = elements->super.size_ - 1;
    tail = self->tail_;
    while (1)
    {
      v9 = self->elements_;
      size = v9->super.size_;
      tail = (tail - 1) & v7;
      if (tail < 0 != v3 || tail >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, tail);
      }

      if (!(&v9->elementType_)[tail])
      {
        break;
      }

      if ([a3 isEqual:?])
      {
        sub_100253C94(self, tail);
        return 1;
      }
    }
  }

  return 0;
}

- (int)size
{
  elements = self->elements_;
  if (!elements)
  {
    JreThrowNullPointerException();
  }

  return (elements->super.size_ - 1) & (self->tail_ - self->head_);
}

- (id)iterator
{
  v3 = [JavaUtilArrayDeque_DeqIterator alloc];
  JreStrongAssign(&v3->this$0_, self);
  v3->cursor_ = self->head_;
  v3->fence_ = self->tail_;
  v3->lastRet_ = -1;

  return v3;
}

- (id)descendingIterator
{
  v3 = [JavaUtilArrayDeque_DescendingIterator alloc];
  JreStrongAssign(&v3->this$0_, self);
  v3->cursor_ = self->tail_;
  v3->fence_ = self->head_;
  v3->lastRet_ = -1;

  return v3;
}

- (BOOL)containsWithId:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  elements = self->elements_;
  if (!elements)
  {
    JreThrowNullPointerException();
  }

  size = elements->super.size_;
  v7 = size - 1;
  head = self->head_;
  while (1)
  {
    v9 = head;
    if (head < 0 || head >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, head);
    }

    v10 = (&elements->elementType_)[head];
    v11 = v10 != 0;
    if (!v10 || ([a3 isEqual:?] & 1) != 0)
    {
      break;
    }

    head = (v9 + 1) & v7;
    elements = self->elements_;
    size = elements->super.size_;
  }

  return v11;
}

- (void)clear
{
  head = self->head_;
  tail = self->tail_;
  if (head != tail)
  {
    self->tail_ = 0;
    self->head_ = 0;
    elements = self->elements_;
    if (!elements)
    {
      JreThrowNullPointerException();
    }

    v6 = elements->super.size_ - 1;
    do
    {
      IOSObjectArray_Set(self->elements_, head, 0);
      head = (head + 1) & v6;
    }

    while (head != tail);
  }
}

- (id)toArray
{
  v3 = [IOSObjectArray arrayWithLength:[(JavaUtilArrayDeque *)self size] type:NSObject_class_()];

  return sub_1002533D4(self, v3);
}

- (id)toArrayWithNSObjectArray:(id)a3
{
  v5 = [(JavaUtilArrayDeque *)self size];
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  if (*(a3 + 2) < v5)
  {
    a3 = JavaLangReflectArray_newInstanceWithIOSClass_withInt_([objc_msgSend(a3 "getClass")], v5);
    objc_opt_class();
    if (!a3)
    {
      sub_1002533D4(self, 0);
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }
  }

  sub_1002533D4(self, a3);
  if (*(a3 + 2) > v6)
  {
    IOSObjectArray_Set(a3, v6, 0);
  }

  return a3;
}

- (id)clone
{
  v7.receiver = self;
  v7.super_class = JavaUtilArrayDeque;
  v3 = [(JavaUtilArrayDeque *)&v7 clone];
  objc_opt_class();
  if (!v3)
  {
    goto LABEL_5;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  elements = self->elements_;
  if (!elements)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  v5 = JavaUtilArrays_copyOfWithNSObjectArray_withInt_(elements, elements->super.size_);
  JreStrongAssign(v3 + 1, v5);
  return v3;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3
{
  if (!a3 || ([a3 defaultWriteObject], objc_msgSend(a3, "writeIntWithInt:", -[JavaUtilArrayDeque size](self, "size")), (elements = self->elements_) == 0))
  {
    JreThrowNullPointerException();
  }

  head = self->head_;
  if (head != self->tail_)
  {
    v7 = elements->super.size_ - 1;
    do
    {
      v8 = self->elements_;
      v9 = head;
      size = v8->super.size_;
      if (head < 0 || head >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, head);
      }

      [a3 writeObjectWithId:(&v8->elementType_)[head]];
      head = (v9 + 1) & v7;
    }

    while (head != self->tail_);
  }
}

- (void)readObjectWithJavaIoObjectInputStream:(id)a3
{
  if (!a3)
  {
    goto LABEL_7;
  }

  [a3 defaultReadObject];
  v5 = [a3 readInt];
  sub_1002531D8(self, v5);
  self->head_ = 0;
  self->tail_ = v5;
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = v5;
    while (1)
    {
      elements = self->elements_;
      if (!elements)
      {
        break;
      }

      IOSObjectArray_Set(elements, v6++, [a3 readObject]);
      if (v7 == v6)
      {
        return;
      }
    }

LABEL_7:
    JreThrowNullPointerException();
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilArrayDeque;
  [(JavaUtilArrayDeque *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(JavaUtilArrayDeque *)self clone];

  return v3;
}

@end