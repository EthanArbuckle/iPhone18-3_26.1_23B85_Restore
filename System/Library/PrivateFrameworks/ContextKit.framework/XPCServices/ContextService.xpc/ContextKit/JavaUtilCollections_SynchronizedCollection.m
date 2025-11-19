@interface JavaUtilCollections_SynchronizedCollection
- (BOOL)addAllWithJavaUtilCollection:(id)a3;
- (BOOL)addWithId:(id)a3;
- (BOOL)containsAllWithJavaUtilCollection:(id)a3;
- (BOOL)containsWithId:(id)a3;
- (BOOL)isEmpty;
- (BOOL)removeAllWithJavaUtilCollection:(id)a3;
- (BOOL)removeWithId:(id)a3;
- (BOOL)retainAllWithJavaUtilCollection:(id)a3;
- (JavaUtilCollections_SynchronizedCollection)initWithJavaUtilCollection:(id)a3 withId:(id)a4;
- (NSString)description;
- (id)iterator;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)a3;
- (int)size;
- (void)clear;
- (void)dealloc;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3;
@end

@implementation JavaUtilCollections_SynchronizedCollection

- (JavaUtilCollections_SynchronizedCollection)initWithJavaUtilCollection:(id)a3 withId:(id)a4
{
  JreStrongAssign(&self->c_, a3);
  JreStrongAssign(&self->mutex_, a4);
  return self;
}

- (BOOL)addWithId:(id)a3
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilCollection *)c addWithId:a3];
  objc_sync_exit(mutex);
  return v7;
}

- (BOOL)addAllWithJavaUtilCollection:(id)a3
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilCollection *)c addAllWithJavaUtilCollection:a3];
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

- (BOOL)containsWithId:(id)a3
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilCollection *)c containsWithId:a3];
  objc_sync_exit(mutex);
  return v7;
}

- (BOOL)containsAllWithJavaUtilCollection:(id)a3
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilCollection *)c containsAllWithJavaUtilCollection:a3];
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

  v5 = [(JavaUtilCollection *)c isEmpty];
  objc_sync_exit(mutex);
  return v5;
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

  v5 = [(JavaUtilCollection *)c iterator];
  objc_sync_exit(mutex);
  return v5;
}

- (BOOL)removeWithId:(id)a3
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilCollection *)c removeWithId:a3];
  objc_sync_exit(mutex);
  return v7;
}

- (BOOL)removeAllWithJavaUtilCollection:(id)a3
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilCollection *)c removeAllWithJavaUtilCollection:a3];
  objc_sync_exit(mutex);
  return v7;
}

- (BOOL)retainAllWithJavaUtilCollection:(id)a3
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilCollection *)c retainAllWithJavaUtilCollection:a3];
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

  v5 = [(JavaUtilCollection *)c toArray];
  objc_sync_exit(mutex);
  return v5;
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

- (id)toArrayWithNSObjectArray:(id)a3
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilCollection *)c toArrayWithNSObjectArray:a3];
  objc_sync_exit(mutex);
  return v7;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 defaultWriteObject];

  objc_sync_exit(mutex);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_SynchronizedCollection;
  [(JavaUtilCollections_SynchronizedCollection *)&v3 dealloc];
}

@end