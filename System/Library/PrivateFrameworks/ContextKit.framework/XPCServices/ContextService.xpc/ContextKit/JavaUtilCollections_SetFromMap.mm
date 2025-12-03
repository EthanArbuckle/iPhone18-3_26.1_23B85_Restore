@interface JavaUtilCollections_SetFromMap
- (BOOL)addWithId:(id)id;
- (BOOL)containsAllWithJavaUtilCollection:(id)collection;
- (BOOL)containsWithId:(id)id;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)removeWithId:(id)id;
- (BOOL)retainAllWithJavaUtilCollection:(id)collection;
- (NSString)description;
- (id)iterator;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)array;
- (int)size;
- (unint64_t)hash;
- (void)clear;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
@end

@implementation JavaUtilCollections_SetFromMap

- (BOOL)isEqual:(id)equal
{
  backingSet = self->backingSet_;
  if (!backingSet)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)backingSet isEqual:equal];
}

- (unint64_t)hash
{
  backingSet = self->backingSet_;
  if (!backingSet)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)backingSet hash];
}

- (BOOL)addWithId:(id)id
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100129828();
  }

  return [(JavaUtilMap *)m putWithId:id withId:JavaLangBoolean_TRUE__]== 0;
}

- (void)clear
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilMap *)m clear];
}

- (NSString)description
{
  backingSet = self->backingSet_;
  if (!backingSet)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)backingSet description];
}

- (BOOL)containsWithId:(id)id
{
  backingSet = self->backingSet_;
  if (!backingSet)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)backingSet containsWithId:id];
}

- (BOOL)containsAllWithJavaUtilCollection:(id)collection
{
  backingSet = self->backingSet_;
  if (!backingSet)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)backingSet containsAllWithJavaUtilCollection:collection];
}

- (BOOL)isEmpty
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m isEmpty];
}

- (BOOL)removeWithId:(id)id
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m removeWithId:id]!= 0;
}

- (BOOL)retainAllWithJavaUtilCollection:(id)collection
{
  backingSet = self->backingSet_;
  if (!backingSet)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)backingSet retainAllWithJavaUtilCollection:collection];
}

- (id)toArray
{
  backingSet = self->backingSet_;
  if (!backingSet)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)backingSet toArray];
}

- (id)toArrayWithNSObjectArray:(id)array
{
  backingSet = self->backingSet_;
  if (!backingSet)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)backingSet toArrayWithNSObjectArray:array];
}

- (id)iterator
{
  backingSet = self->backingSet_;
  if (!backingSet)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)backingSet iterator];
}

- (int)size
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m size];
}

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  if (!stream || ([stream defaultReadObject], (m = self->m_) == 0))
  {
    JreThrowNullPointerException();
  }

  keySet = [(JavaUtilMap *)m keySet];

  JreStrongAssign(&self->backingSet_, keySet);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_SetFromMap;
  [(JavaUtilCollections_SetFromMap *)&v3 dealloc];
}

@end