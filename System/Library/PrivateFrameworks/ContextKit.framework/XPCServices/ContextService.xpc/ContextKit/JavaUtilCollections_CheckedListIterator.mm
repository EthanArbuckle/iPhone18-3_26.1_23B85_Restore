@interface JavaUtilCollections_CheckedListIterator
- (BOOL)hasNext;
- (BOOL)hasPrevious;
- (JavaUtilCollections_CheckedListIterator)initWithJavaUtilListIterator:(id)iterator withIOSClass:(id)class;
- (id)next;
- (id)previous;
- (int)nextIndex;
- (int)previousIndex;
- (void)addWithId:(id)id;
- (void)dealloc;
- (void)remove;
- (void)setWithId:(id)id;
@end

@implementation JavaUtilCollections_CheckedListIterator

- (JavaUtilCollections_CheckedListIterator)initWithJavaUtilListIterator:(id)iterator withIOSClass:(id)class
{
  JreStrongAssign(&self->i_, iterator);
  JreStrongAssign(&self->type_, class);
  return self;
}

- (BOOL)hasNext
{
  i = self->i_;
  if (!i)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilListIterator *)i hasNext];
}

- (id)next
{
  i = self->i_;
  if (!i)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilListIterator *)i next];
}

- (void)remove
{
  i = self->i_;
  if (!i)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilListIterator *)i remove];
}

- (BOOL)hasPrevious
{
  i = self->i_;
  if (!i)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilListIterator *)i hasPrevious];
}

- (id)previous
{
  i = self->i_;
  if (!i)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilListIterator *)i previous];
}

- (int)nextIndex
{
  i = self->i_;
  if (!i)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilListIterator *)i nextIndex];
}

- (int)previousIndex
{
  i = self->i_;
  if (!i)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilListIterator *)i previousIndex];
}

- (void)setWithId:(id)id
{
  i = self->i_;
  if (!i)
  {
    JreThrowNullPointerException();
  }

  JavaUtilCollections_checkTypeWithId_withIOSClass_(id, self->type_);

  [(JavaUtilListIterator *)i setWithId:id];
}

- (void)addWithId:(id)id
{
  i = self->i_;
  if (!i)
  {
    JreThrowNullPointerException();
  }

  JavaUtilCollections_checkTypeWithId_withIOSClass_(id, self->type_);

  [(JavaUtilListIterator *)i addWithId:id];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_CheckedListIterator;
  [(JavaUtilCollections_CheckedListIterator *)&v3 dealloc];
}

@end