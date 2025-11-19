@interface JavaNioSelectorImpl_UnaddableSet
- (BOOL)containsAllWithJavaUtilCollection:(id)a3;
- (BOOL)containsWithId:(id)a3;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)removeAllWithJavaUtilCollection:(id)a3;
- (BOOL)removeWithId:(id)a3;
- (BOOL)retainAllWithJavaUtilCollection:(id)a3;
- (id)iterator;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)a3;
- (int)size;
- (unint64_t)hash;
- (void)clear;
- (void)dealloc;
@end

@implementation JavaNioSelectorImpl_UnaddableSet

- (BOOL)isEqual:(id)a3
{
  set = self->set_;
  if (!set)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)set isEqual:a3];
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

- (BOOL)containsWithId:(id)a3
{
  set = self->set_;
  if (!set)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)set containsWithId:a3];
}

- (BOOL)containsAllWithJavaUtilCollection:(id)a3
{
  set = self->set_;
  if (!set)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)set containsAllWithJavaUtilCollection:a3];
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

- (BOOL)removeWithId:(id)a3
{
  set = self->set_;
  if (!set)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)set removeWithId:a3];
}

- (BOOL)removeAllWithJavaUtilCollection:(id)a3
{
  set = self->set_;
  if (!set)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)set removeAllWithJavaUtilCollection:a3];
}

- (BOOL)retainAllWithJavaUtilCollection:(id)a3
{
  set = self->set_;
  if (!set)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)set retainAllWithJavaUtilCollection:a3];
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

- (id)toArrayWithNSObjectArray:(id)a3
{
  set = self->set_;
  if (!set)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)set toArrayWithNSObjectArray:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioSelectorImpl_UnaddableSet;
  [(JavaNioSelectorImpl_UnaddableSet *)&v3 dealloc];
}

@end