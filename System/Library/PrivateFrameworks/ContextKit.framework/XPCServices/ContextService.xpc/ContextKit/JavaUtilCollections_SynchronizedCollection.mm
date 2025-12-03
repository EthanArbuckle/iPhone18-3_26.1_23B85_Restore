@interface JavaUtilCollections_SynchronizedCollection
- (BOOL)addAllWithJavaUtilCollection:(id)collection;
- (BOOL)addWithId:(id)id;
- (BOOL)containsAllWithJavaUtilCollection:(id)collection;
- (BOOL)containsWithId:(id)id;
- (BOOL)isEmpty;
- (BOOL)removeAllWithJavaUtilCollection:(id)collection;
- (BOOL)removeWithId:(id)id;
- (BOOL)retainAllWithJavaUtilCollection:(id)collection;
- (JavaUtilCollections_SynchronizedCollection)initWithJavaUtilCollection:(id)collection withId:(id)id;
- (NSString)description;
- (id)iterator;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)array;
- (int)size;
- (void)clear;
- (void)dealloc;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaUtilCollections_SynchronizedCollection

- (JavaUtilCollections_SynchronizedCollection)initWithJavaUtilCollection:(id)collection withId:(id)id
{
  JreStrongAssign(&self->c_, collection);
  JreStrongAssign(&self->mutex_, id);
  return self;
}

- (BOOL)addWithId:(id)id
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilCollection *)c addWithId:id];
  objc_sync_exit(mutex);
  return v7;
}

- (BOOL)addAllWithJavaUtilCollection:(id)collection
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilCollection *)c addAllWithJavaUtilCollection:collection];
  objc_sync_exit(mutex);
  return v7;
}

- (void)clear
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilCollection *)c clear];

  objc_sync_exit(mutex);
}

- (BOOL)containsWithId:(id)id
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilCollection *)c containsWithId:id];
  objc_sync_exit(mutex);
  return v7;
}

- (BOOL)containsAllWithJavaUtilCollection:(id)collection
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilCollection *)c containsAllWithJavaUtilCollection:collection];
  objc_sync_exit(mutex);
  return v7;
}

- (BOOL)isEmpty
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  isEmpty = [(JavaUtilCollection *)c isEmpty];
  objc_sync_exit(mutex);
  return isEmpty;
}

- (id)iterator
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  iterator = [(JavaUtilCollection *)c iterator];
  objc_sync_exit(mutex);
  return iterator;
}

- (BOOL)removeWithId:(id)id
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilCollection *)c removeWithId:id];
  objc_sync_exit(mutex);
  return v7;
}

- (BOOL)removeAllWithJavaUtilCollection:(id)collection
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilCollection *)c removeAllWithJavaUtilCollection:collection];
  objc_sync_exit(mutex);
  return v7;
}

- (BOOL)retainAllWithJavaUtilCollection:(id)collection
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilCollection *)c retainAllWithJavaUtilCollection:collection];
  objc_sync_exit(mutex);
  return v7;
}

- (int)size
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  v5 = [(JavaUtilCollection *)c size];
  objc_sync_exit(mutex);
  return v5;
}

- (id)toArray
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  toArray = [(JavaUtilCollection *)c toArray];
  objc_sync_exit(mutex);
  return toArray;
}

- (NSString)description
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  v5 = [(JavaUtilCollection *)c description];
  objc_sync_exit(mutex);
  return v5;
}

- (id)toArrayWithNSObjectArray:(id)array
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilCollection *)c toArrayWithNSObjectArray:array];
  objc_sync_exit(mutex);
  return v7;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  if (!stream)
  {
    JreThrowNullPointerException();
  }

  [stream defaultWriteObject];

  objc_sync_exit(mutex);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_SynchronizedCollection;
  [(JavaUtilCollections_SynchronizedCollection *)&v3 dealloc];
}

@end