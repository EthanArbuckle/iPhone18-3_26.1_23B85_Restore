@interface JavaUtilAbstractList_SubAbstractList_SubAbstractListIterator
- (BOOL)hasNext;
- (BOOL)hasPrevious;
- (JavaUtilAbstractList_SubAbstractList_SubAbstractListIterator)initWithJavaUtilListIterator:(id)a3 withJavaUtilAbstractList_SubAbstractList:(id)a4 withInt:(int)a5 withInt:(int)a6;
- (id)next;
- (id)previous;
- (int)nextIndex;
- (int)previousIndex;
- (void)addWithId:(id)a3;
- (void)dealloc;
- (void)remove;
- (void)setWithId:(id)a3;
@end

@implementation JavaUtilAbstractList_SubAbstractList_SubAbstractListIterator

- (JavaUtilAbstractList_SubAbstractList_SubAbstractListIterator)initWithJavaUtilListIterator:(id)a3 withJavaUtilAbstractList_SubAbstractList:(id)a4 withInt:(int)a5 withInt:(int)a6
{
  JreStrongAssign(&self->iterator_, a3);
  JreStrongAssign(&self->subList_, a4);
  self->start_ = a5;
  self->end_ = a6 + a5;
  return self;
}

- (void)addWithId:(id)a3
{
  iterator = self->iterator_;
  if (!iterator || ([(JavaUtilListIterator *)iterator addWithId:a3], (subList = self->subList_) == 0))
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

  v4 = [(JavaUtilListIterator *)iterator previousIndex];
  start = self->start_;
  v6 = __OFSUB__(v4, start);
  v7 = v4 - start;
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

- (void)setWithId:(id)a3
{
  iterator = self->iterator_;
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilListIterator *)iterator setWithId:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilAbstractList_SubAbstractList_SubAbstractListIterator;
  [(JavaUtilAbstractList_SubAbstractList_SubAbstractListIterator *)&v3 dealloc];
}

@end