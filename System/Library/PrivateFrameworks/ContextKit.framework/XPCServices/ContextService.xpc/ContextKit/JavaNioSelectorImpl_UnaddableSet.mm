@interface JavaNioSelectorImpl_UnaddableSet
- (BOOL)containsAllWithJavaUtilCollection:(id)collection;
- (BOOL)containsWithId:(id)id;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)removeAllWithJavaUtilCollection:(id)collection;
- (BOOL)removeWithId:(id)id;
- (BOOL)retainAllWithJavaUtilCollection:(id)collection;
- (id)iterator;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)array;
- (int)size;
- (unint64_t)hash;
- (void)clear;
- (void)dealloc;
@end

@implementation JavaNioSelectorImpl_UnaddableSet

- (BOOL)isEqual:(id)equal
{
  set = self->set_;
  if (!set)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)set isEqual:equal];
}

- (unint64_t)hash
{
  set = self->set_;
  if (!set)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)set hash];
}

- (void)clear
{
  set = self->set_;
  if (!set)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilSet *)set clear];
}

- (BOOL)containsWithId:(id)id
{
  set = self->set_;
  if (!set)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)set containsWithId:id];
}

- (BOOL)containsAllWithJavaUtilCollection:(id)collection
{
  set = self->set_;
  if (!set)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)set containsAllWithJavaUtilCollection:collection];
}

- (BOOL)isEmpty
{
  set = self->set_;
  if (!set)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)set isEmpty];
}

- (id)iterator
{
  set = self->set_;
  if (!set)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)set iterator];
}

- (BOOL)removeWithId:(id)id
{
  set = self->set_;
  if (!set)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)set removeWithId:id];
}

- (BOOL)removeAllWithJavaUtilCollection:(id)collection
{
  set = self->set_;
  if (!set)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)set removeAllWithJavaUtilCollection:collection];
}

- (BOOL)retainAllWithJavaUtilCollection:(id)collection
{
  set = self->set_;
  if (!set)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)set retainAllWithJavaUtilCollection:collection];
}

- (int)size
{
  set = self->set_;
  if (!set)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)set size];
}

- (id)toArray
{
  set = self->set_;
  if (!set)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)set toArray];
}

- (id)toArrayWithNSObjectArray:(id)array
{
  set = self->set_;
  if (!set)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)set toArrayWithNSObjectArray:array];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioSelectorImpl_UnaddableSet;
  [(JavaNioSelectorImpl_UnaddableSet *)&v3 dealloc];
}

@end