@interface JavaUtilCollections_AsLIFOQueue
- (BOOL)addWithId:(id)id;
- (BOOL)containsAllWithJavaUtilCollection:(id)collection;
- (BOOL)containsWithId:(id)id;
- (BOOL)isEmpty;
- (BOOL)offerWithId:(id)id;
- (BOOL)removeAllWithJavaUtilCollection:(id)collection;
- (BOOL)removeWithId:(id)id;
- (BOOL)retainAllWithJavaUtilCollection:(id)collection;
- (JavaUtilCollections_AsLIFOQueue)initWithJavaUtilDeque:(id)deque;
- (NSString)description;
- (id)element;
- (id)iterator;
- (id)peek;
- (id)poll;
- (id)remove;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)array;
- (int)size;
- (void)clear;
- (void)dealloc;
@end

@implementation JavaUtilCollections_AsLIFOQueue

- (JavaUtilCollections_AsLIFOQueue)initWithJavaUtilDeque:(id)deque
{
  JavaUtilAbstractQueue_init(self, a2);
  JreStrongAssign(&self->q_, deque);
  return self;
}

- (id)iterator
{
  q = self->q_;
  if (!q)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilDeque *)q iterator];
}

- (int)size
{
  q = self->q_;
  if (!q)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilDeque *)q size];
}

- (BOOL)offerWithId:(id)id
{
  q = self->q_;
  if (!q)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilDeque *)q offerFirstWithId:id];
}

- (id)peek
{
  q = self->q_;
  if (!q)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilDeque *)q peekFirst];
}

- (id)poll
{
  q = self->q_;
  if (!q)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilDeque *)q pollFirst];
}

- (BOOL)addWithId:(id)id
{
  q = self->q_;
  if (!q)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilDeque *)q pushWithId:id];
  return 1;
}

- (void)clear
{
  q = self->q_;
  if (!q)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilDeque *)q clear];
}

- (id)element
{
  q = self->q_;
  if (!q)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilDeque *)q getFirst];
}

- (id)remove
{
  q = self->q_;
  if (!q)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilDeque *)q pop];
}

- (BOOL)containsWithId:(id)id
{
  q = self->q_;
  if (!q)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilDeque *)q containsWithId:id];
}

- (BOOL)containsAllWithJavaUtilCollection:(id)collection
{
  q = self->q_;
  if (!q)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilDeque *)q containsAllWithJavaUtilCollection:collection];
}

- (BOOL)isEmpty
{
  q = self->q_;
  if (!q)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilDeque *)q isEmpty];
}

- (BOOL)removeWithId:(id)id
{
  q = self->q_;
  if (!q)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilDeque *)q removeWithId:id];
}

- (BOOL)removeAllWithJavaUtilCollection:(id)collection
{
  q = self->q_;
  if (!q)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilDeque *)q removeAllWithJavaUtilCollection:collection];
}

- (BOOL)retainAllWithJavaUtilCollection:(id)collection
{
  q = self->q_;
  if (!q)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilDeque *)q retainAllWithJavaUtilCollection:collection];
}

- (id)toArray
{
  q = self->q_;
  if (!q)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilDeque *)q toArray];
}

- (id)toArrayWithNSObjectArray:(id)array
{
  q = self->q_;
  if (!q)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilDeque *)q toArrayWithNSObjectArray:array];
}

- (NSString)description
{
  q = self->q_;
  if (!q)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilDeque *)q description];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_AsLIFOQueue;
  [(JavaUtilCollections_AsLIFOQueue *)&v3 dealloc];
}

@end