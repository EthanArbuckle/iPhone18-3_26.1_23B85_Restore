@interface OrgApacheLuceneUtilPriorityQueue
- (BOOL)removeWithId:(id)id;
- (id)insertWithOverflowWithId:(id)id;
- (id)pop;
- (id)top;
- (id)updateTopWithId:(id)id;
- (uint64_t)updateTop;
- (void)clear;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPriorityQueue

- (id)insertWithOverflowWithId:(id)id
{
  idCopy = id;
  size = self->size_;
  if (size >= self->maxSize_)
  {
    if (size >= 1)
    {
      heap = self->heap_;
      if (!heap)
      {
        JreThrowNullPointerException();
      }

      v7 = heap->super.size_;
      if (v7 <= 1)
      {
        IOSArray_throwOutOfBoundsWithMsg(v7, 1);
      }

      if (([(OrgApacheLuceneUtilPriorityQueue *)self lessThanWithId:id withId:heap->buffer_[0]]& 1) == 0)
      {
        v8 = self->heap_;
        if (v8->super.size_ <= 1)
        {
          v11 = self->heap_;
          IOSArray_throwOutOfBoundsWithMsg(v8->super.size_, 1);
        }

        v9 = v8->buffer_[0];
        IOSObjectArray_Set(self->heap_, 1, idCopy);
        [OrgApacheLuceneUtilPriorityQueue updateTop]_0(self);
        return v9;
      }
    }
  }

  else
  {
    sub_10000A6EC(self, id);
    return 0;
  }

  return idCopy;
}

- (uint64_t)updateTop
{
  sub_10000AA4C(self, 1);
  v2 = *(self + 16);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = *(v2 + 8);
  if (v3 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v3, 1);
  }

  return *(v2 + 32);
}

- (id)top
{
  heap = self->heap_;
  if (!heap)
  {
    JreThrowNullPointerException();
  }

  size = heap->super.size_;
  if (size <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 1);
  }

  return heap->buffer_[0];
}

- (id)pop
{
  size = self->size_;
  if (size < 1)
  {
    return 0;
  }

  heap = self->heap_;
  if (!heap)
  {
    JreThrowNullPointerException();
  }

  v5 = heap->super.size_;
  if (v5 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, 1);
  }

  v6 = heap;
  v7 = heap->buffer_[0];
  if (size < 0 || size >= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, size);
  }

  IOSObjectArray_Set(v6, 1, *(v6 + 24 + 8 * size));
  IOSObjectArray_Set(self->heap_, self->size_, 0);
  --self->size_;
  sub_10000AA4C(self, 1);
  return v7;
}

- (id)updateTopWithId:(id)id
{
  heap = self->heap_;
  if (!heap)
  {
    JreThrowNullPointerException();
  }

  IOSObjectArray_Set(heap, 1, id);

  return [OrgApacheLuceneUtilPriorityQueue updateTop]_0(self);
}

- (void)clear
{
  if ((self->size_ & 0x80000000) == 0)
  {
    v3 = 0;
    do
    {
      heap = self->heap_;
      if (!heap)
      {
        JreThrowNullPointerException();
      }

      IOSObjectArray_Set(heap, v3++, 0);
    }

    while (v3 <= self->size_);
  }

  self->size_ = 0;
}

- (BOOL)removeWithId:(id)id
{
  if (self->size_ < 1)
  {
    return 0;
  }

  v4 = 1;
  while (1)
  {
    heap = self->heap_;
    if (!heap)
    {
      JreThrowNullPointerException();
    }

    size = heap->super.size_;
    if ((v4 & 0x80000000) != 0 || v4 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v4);
    }

    v7 = (&heap->elementType_)[v4];
    v8 = self->size_;
    if (v7 == id)
    {
      break;
    }

    v4 = (v4 + 1);
    if (v4 > v8)
    {
      return 0;
    }
  }

  v10 = self->heap_;
  v11 = v10->super.size_;
  if ((v8 & 0x80000000) != 0 || v8 >= v11)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, self->size_);
  }

  IOSObjectArray_Set(self->heap_, v4, (&v10->elementType_)[v8]);
  IOSObjectArray_Set(self->heap_, self->size_, 0);
  v12 = self->size_ - 1;
  self->size_ = v12;
  if (v4 <= v12 && !sub_10000AEC4(self, v4))
  {
    sub_10000AA4C(self, v4);
  }

  return 1;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPriorityQueue;
  [(OrgApacheLuceneUtilPriorityQueue *)&v3 dealloc];
}

@end