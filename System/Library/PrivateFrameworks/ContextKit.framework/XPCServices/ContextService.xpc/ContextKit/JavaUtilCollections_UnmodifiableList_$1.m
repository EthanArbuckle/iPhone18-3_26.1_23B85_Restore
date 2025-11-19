@interface JavaUtilCollections_UnmodifiableList_$1
- (BOOL)hasNext;
- (BOOL)hasPrevious;
- (id)next;
- (id)previous;
- (int)nextIndex;
- (int)previousIndex;
- (void)dealloc;
@end

@implementation JavaUtilCollections_UnmodifiableList_$1

- (BOOL)hasNext
{
  iterator = self->iterator_;
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilListIterator *)iterator hasNext];
}

- (BOOL)hasPrevious
{
  iterator = self->iterator_;
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilListIterator *)iterator hasPrevious];
}

- (id)next
{
  iterator = self->iterator_;
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilListIterator *)iterator next];
}

- (int)nextIndex
{
  iterator = self->iterator_;
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilListIterator *)iterator nextIndex];
}

- (id)previous
{
  iterator = self->iterator_;
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilListIterator *)iterator previous];
}

- (int)previousIndex
{
  iterator = self->iterator_;
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilListIterator *)iterator previousIndex];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_UnmodifiableList__1;
  [(JavaUtilCollections_UnmodifiableList_$1 *)&v3 dealloc];
}

@end