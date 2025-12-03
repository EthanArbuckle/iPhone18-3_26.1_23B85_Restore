@interface JavaUtilWeakHashMap_HashIterator
- (BOOL)hasNext;
- (JavaUtilWeakHashMap_HashIterator)initWithJavaUtilWeakHashMap:(id)map withJavaUtilWeakHashMap_Entry_Type:(id)type;
- (id)next;
- (void)dealloc;
- (void)remove;
@end

@implementation JavaUtilWeakHashMap_HashIterator

- (JavaUtilWeakHashMap_HashIterator)initWithJavaUtilWeakHashMap:(id)map withJavaUtilWeakHashMap_Entry_Type:(id)type
{
  JreStrongAssign(&self->this$0_, map);
  self->position_ = 0;
  JreStrongAssign(&self->type_, type);
  v7 = atomic_load(map + 10);
  self->expectedModCount_ = v7;
  return self;
}

- (BOOL)hasNext
{
  p_nextEntry = &self->nextEntry_;
  nextEntry = self->nextEntry_;
  if (nextEntry && (self->nextKey_ || nextEntry->isNull_))
  {
LABEL_4:
    LOBYTE(nextEntry) = 1;
    return nextEntry;
  }

  if (nextEntry)
  {
    goto LABEL_15;
  }

  do
  {
LABEL_9:
    elementData = self->this$0_->elementData_;
    if (!elementData)
    {
      JreThrowNullPointerException();
    }

    position = self->position_;
    if (position >= elementData->super.size_)
    {
      break;
    }

    self->position_ = position + 1;
    size = elementData->super.size_;
    if ((position & 0x80000000) != 0 || position >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, position);
    }
  }

  while (!JreStrongAssign(p_nextEntry, (&elementData->elementType_)[position]));
  nextEntry = *p_nextEntry;
  if (*p_nextEntry)
  {
LABEL_15:
    while (1)
    {
      JreStrongAssign(&self->nextKey_, [(JavaLangRefReference *)nextEntry get]);
      if (self->nextKey_ || (*p_nextEntry)->isNull_)
      {
        goto LABEL_4;
      }

      JreStrongAssign(p_nextEntry, (*p_nextEntry)->next_);
      nextEntry = *p_nextEntry;
      if (!*p_nextEntry)
      {
        goto LABEL_9;
      }
    }
  }

  return nextEntry;
}

- (id)next
{
  expectedModCount = self->expectedModCount_;
  v3 = atomic_load(&self->this$0_->modCount_);
  if (expectedModCount != v3)
  {
    v9 = new_JavaUtilConcurrentModificationException_init();
    goto LABEL_9;
  }

  if (![(JavaUtilWeakHashMap_HashIterator *)self hasNext])
  {
    v9 = new_JavaUtilNoSuchElementException_init();
LABEL_9:
    objc_exception_throw(v9);
  }

  JreStrongAssign(&self->currentEntry_, self->nextEntry_);
  currentEntry = self->currentEntry_;
  if (!currentEntry || (JreStrongAssign(&self->nextEntry_, currentEntry->next_), (type = self->type_) == 0))
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilWeakHashMap_Entry_Type *)type getWithJavaUtilMap_Entry:self->currentEntry_];
  JreStrongAssign(&self->nextKey_, 0);
  return v7;
}

- (void)remove
{
  expectedModCount = self->expectedModCount_;
  v3 = atomic_load(&self->this$0_->modCount_);
  if (expectedModCount != v3)
  {
    v6 = new_JavaUtilConcurrentModificationException_init();
    goto LABEL_6;
  }

  p_currentEntry = &self->currentEntry_;
  if (!self->currentEntry_)
  {
    v6 = new_JavaLangIllegalStateException_init();
LABEL_6:
    objc_exception_throw(v6);
  }

  [(JavaUtilWeakHashMap *)self->this$0_ removeEntryWithJavaUtilWeakHashMap_Entry:?];
  JreStrongAssign(p_currentEntry, 0);
  ++self->expectedModCount_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilWeakHashMap_HashIterator;
  [(JavaUtilWeakHashMap_HashIterator *)&v3 dealloc];
}

@end