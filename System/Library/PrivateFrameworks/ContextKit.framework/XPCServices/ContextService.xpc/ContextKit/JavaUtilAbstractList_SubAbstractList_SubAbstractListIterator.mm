@interface JavaUtilAbstractList_SubAbstractList_SubAbstractListIterator
- (BOOL)hasNext;
- (BOOL)hasPrevious;
- (JavaUtilAbstractList_SubAbstractList_SubAbstractListIterator)initWithJavaUtilListIterator:(id)iterator withJavaUtilAbstractList_SubAbstractList:(id)list withInt:(int)int withInt:(int)withInt;
- (id)next;
- (id)previous;
- (int)nextIndex;
- (int)previousIndex;
- (void)addWithId:(id)id;
- (void)dealloc;
- (void)remove;
- (void)setWithId:(id)id;
@end

@implementation JavaUtilAbstractList_SubAbstractList_SubAbstractListIterator

- (JavaUtilAbstractList_SubAbstractList_SubAbstractListIterator)initWithJavaUtilListIterator:(id)iterator withJavaUtilAbstractList_SubAbstractList:(id)list withInt:(int)int withInt:(int)withInt
{
  JreStrongAssign(&self->iterator_, iterator);
  JreStrongAssign(&self->subList_, list);
  self->start_ = int;
  self->end_ = withInt + int;
  return self;
}

- (void)addWithId:(id)id
{
  iterator = self->iterator_;
  if (!iterator || ([(JavaUtilListIterator *)iterator addWithId:id], (subList = self->subList_) == 0))
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilAbstractList_SubAbstractList *)subList sizeChangedWithBoolean:1];
  ++self->end_;
}

- (BOOL)hasNext
{
  iterator = self->iterator_;
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilListIterator *)iterator nextIndex]< self->end_;
}

- (BOOL)hasPrevious
{
  iterator = self->iterator_;
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilListIterator *)iterator previousIndex]>= self->start_;
}

- (id)next
{
  iterator = self->iterator_;
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  if ([(JavaUtilListIterator *)iterator nextIndex]>= self->end_)
  {
    v6 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v6);
  }

  v4 = self->iterator_;

  return [(JavaUtilListIterator *)v4 next];
}

- (int)nextIndex
{
  iterator = self->iterator_;
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilListIterator *)iterator nextIndex]- self->start_;
}

- (id)previous
{
  iterator = self->iterator_;
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  if ([(JavaUtilListIterator *)iterator previousIndex]< self->start_)
  {
    v6 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v6);
  }

  v4 = self->iterator_;

  return [(JavaUtilListIterator *)v4 previous];
}

- (int)previousIndex
{
  iterator = self->iterator_;
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  previousIndex = [(JavaUtilListIterator *)iterator previousIndex];
  start = self->start_;
  v6 = __OFSUB__(previousIndex, start);
  v7 = previousIndex - start;
  if (v7 < 0 != v6)
  {
    return -1;
  }

  else
  {
    return v7;
  }
}

- (void)remove
{
  iterator = self->iterator_;
  if (!iterator || ([(JavaUtilListIterator *)iterator remove], (subList = self->subList_) == 0))
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilAbstractList_SubAbstractList *)subList sizeChangedWithBoolean:0];
  --self->end_;
}

- (void)setWithId:(id)id
{
  iterator = self->iterator_;
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilListIterator *)iterator setWithId:id];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilAbstractList_SubAbstractList_SubAbstractListIterator;
  [(JavaUtilAbstractList_SubAbstractList_SubAbstractListIterator *)&v3 dealloc];
}

@end