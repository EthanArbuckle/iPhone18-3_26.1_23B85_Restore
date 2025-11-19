@interface JavaUtilHashtable_HashIterator
- (id)nextEntry;
- (id)nextEntryNotFailFast;
- (void)dealloc;
- (void)remove;
@end

@implementation JavaUtilHashtable_HashIterator

- (id)nextEntry
{
  v2 = self->this$0_;
  if (v2->modCount_ != self->expectedModCount_)
  {
    v12 = new_JavaUtilConcurrentModificationException_init();
    goto LABEL_19;
  }

  p_nextEntry = &self->nextEntry_;
  nextEntry = self->nextEntry_;
  if (!nextEntry)
  {
    v12 = new_JavaUtilNoSuchElementException_init();
LABEL_19:
    objc_exception_throw(v12);
  }

  next = nextEntry->next_;
  if (!next)
  {
    table = v2->table_;
    if (!table)
    {
      JreThrowNullPointerException();
    }

    nextIndex = self->nextIndex_;
    p_size = &table->super.size_;
    if (nextIndex >= table->super.size_)
    {
LABEL_12:
      next = 0;
    }

    else
    {
      while (1)
      {
        self->nextIndex_ = nextIndex + 1;
        v10 = *p_size;
        if (nextIndex < 0 || nextIndex >= v10)
        {
          IOSArray_throwOutOfBoundsWithMsg(v10, nextIndex);
        }

        next = (&table->elementType_)[nextIndex];
        if (next)
        {
          break;
        }

        nextIndex = self->nextIndex_;
        p_size = &table->super.size_;
        if (nextIndex >= table->super.size_)
        {
          goto LABEL_12;
        }
      }
    }
  }

  JreStrongAssign(p_nextEntry, next);

  return JreStrongAssign(&self->lastEntryReturned_, nextEntry);
}

- (id)nextEntryNotFailFast
{
  p_nextEntry = &self->nextEntry_;
  nextEntry = self->nextEntry_;
  if (!nextEntry)
  {
    v11 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v11);
  }

  next = nextEntry->next_;
  if (!next)
  {
    table = self->this$0_->table_;
    if (!table)
    {
      JreThrowNullPointerException();
    }

    nextIndex = self->nextIndex_;
    p_size = &table->super.size_;
    if (nextIndex >= table->super.size_)
    {
LABEL_11:
      next = 0;
    }

    else
    {
      while (1)
      {
        self->nextIndex_ = nextIndex + 1;
        v9 = *p_size;
        if (nextIndex < 0 || nextIndex >= v9)
        {
          IOSArray_throwOutOfBoundsWithMsg(v9, nextIndex);
        }

        next = (&table->elementType_)[nextIndex];
        if (next)
        {
          break;
        }

        nextIndex = self->nextIndex_;
        p_size = &table->super.size_;
        if (nextIndex >= table->super.size_)
        {
          goto LABEL_11;
        }
      }
    }
  }

  JreStrongAssign(p_nextEntry, next);

  return JreStrongAssign(&self->lastEntryReturned_, nextEntry);
}

- (void)remove
{
  p_lastEntryReturned = &self->lastEntryReturned_;
  lastEntryReturned = self->lastEntryReturned_;
  if (!lastEntryReturned)
  {
    v6 = new_JavaLangIllegalStateException_init();
    goto LABEL_6;
  }

  v5 = self->this$0_;
  if (v5->modCount_ != self->expectedModCount_)
  {
    v6 = new_JavaUtilConcurrentModificationException_init();
LABEL_6:
    objc_exception_throw(v6);
  }

  [(JavaUtilHashtable *)v5 removeWithId:lastEntryReturned->key_];
  JreStrongAssign(p_lastEntryReturned, 0);
  self->expectedModCount_ = self->this$0_->modCount_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilHashtable_HashIterator;
  [(JavaUtilHashtable_HashIterator *)&v3 dealloc];
}

@end