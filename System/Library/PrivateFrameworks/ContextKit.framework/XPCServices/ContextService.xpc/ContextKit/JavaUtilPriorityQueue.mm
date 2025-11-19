@interface JavaUtilPriorityQueue
- (BOOL)offerWithId:(id)a3;
- (BOOL)removeWithId:(id)a3;
- (JavaUtilPriorityQueue)initWithJavaUtilPriorityQueue:(id)a3;
- (JavaUtilPriorityQueue)initWithJavaUtilSortedSet:(id)a3;
- (id)iterator;
- (id)peek;
- (id)poll;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)a3;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3;
@end

@implementation JavaUtilPriorityQueue

- (JavaUtilPriorityQueue)initWithJavaUtilPriorityQueue:(id)a3
{
  JavaUtilAbstractQueue_init(self, a2);
  sub_1001B7FA0(self, a3);
  return self;
}

- (JavaUtilPriorityQueue)initWithJavaUtilSortedSet:(id)a3
{
  JavaUtilAbstractQueue_init(self, a2);
  sub_1001B805C(self, a3);
  return self;
}

- (id)iterator
{
  v3 = [JavaUtilPriorityQueue_PriorityIterator alloc];
  JreStrongAssign(&v3->this$0_, self);
  v3->currentIndex_ = -1;
  v3->allowRemove_ = 0;

  return v3;
}

- (BOOL)offerWithId:(id)a3
{
  if (!a3)
  {
    v8 = new_JavaLangNullPointerException_initWithNSString_(@"o == null");
    objc_exception_throw(v8);
  }

  sub_1001B7868(&self->super.super.super.isa, self->size_ + 1);
  elements = self->elements_;
  if (!elements)
  {
    JreThrowNullPointerException();
  }

  IOSObjectArray_Set(elements, self->size_, a3);
  size = self->size_;
  self->size_ = size + 1;
  sub_1001B7914(self, size);
  return 1;
}

- (id)poll
{
  if ([(JavaUtilAbstractCollection *)self isEmpty])
  {
    return 0;
  }

  elements = self->elements_;
  if (!elements)
  {
    JreThrowNullPointerException();
  }

  size = elements->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  elementType = elements->elementType_;
  sub_1001B7AD8(self, 0);
  return elementType;
}

- (id)peek
{
  if ([(JavaUtilAbstractCollection *)self isEmpty])
  {
    return 0;
  }

  elements = self->elements_;
  if (!elements)
  {
    JreThrowNullPointerException();
  }

  size = elements->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  return elements->elementType_;
}

- (BOOL)removeWithId:(id)a3
{
  if (!a3 || self->size_ < 1)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    elements = self->elements_;
    if (!elements)
    {
      JreThrowNullPointerException();
    }

    size = elements->super.size_;
    if (v5 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v5);
    }

    if ([a3 isEqual:(&elements->elementType_)[v5]])
    {
      break;
    }

    if (++v5 >= self->size_)
    {
      return 0;
    }
  }

  sub_1001B7AD8(self, v5);
  return 1;
}

- (void)readObjectWithJavaIoObjectInputStream:(id)a3
{
  if (!a3)
  {
    goto LABEL_7;
  }

  [a3 defaultReadObject];
  v5 = sub_1001B7E48([a3 readInt]);
  JreStrongAssign(&self->elements_, v5);
  if (self->size_ >= 1)
  {
    v6 = 0;
    while (1)
    {
      elements = self->elements_;
      if (!elements)
      {
        break;
      }

      IOSObjectArray_Set(elements, v6++, [a3 readObject]);
      if (v6 >= self->size_)
      {
        return;
      }
    }

LABEL_7:
    JreThrowNullPointerException();
  }
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3
{
  if (!a3 || ([a3 defaultWriteObject], (elements = self->elements_) == 0))
  {
    JreThrowNullPointerException();
  }

  [a3 writeIntWithInt:elements->super.size_];
  if (self->size_ >= 1)
  {
    v6 = 0;
    do
    {
      v7 = self->elements_;
      size = v7->super.size_;
      if (v6 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v6);
      }

      [a3 writeObjectWithId:(&v7->elementType_)[v6++]];
    }

    while (v6 < self->size_);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilPriorityQueue;
  [(JavaUtilPriorityQueue *)&v3 dealloc];
}

@end