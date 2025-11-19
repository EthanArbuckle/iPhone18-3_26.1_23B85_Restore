@interface JavaUtilCollections_SynchronizedSortedSet
- (JavaUtilCollections_SynchronizedSortedSet)initWithJavaUtilSortedSet:(id)a3;
- (id)comparator;
- (id)first;
- (id)headSetWithId:(id)a3;
- (id)last;
- (id)subSetWithId:(id)a3 withId:(id)a4;
- (id)tailSetWithId:(id)a3;
- (void)dealloc;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3;
@end

@implementation JavaUtilCollections_SynchronizedSortedSet

- (JavaUtilCollections_SynchronizedSortedSet)initWithJavaUtilSortedSet:(id)a3
{
  JavaUtilCollections_SynchronizedCollection_initWithJavaUtilCollection_(self, a3);
  JreStrongAssign(&self->ss_, a3);
  return self;
}

- (id)comparator
{
  mutex = self->super.super.mutex_;
  objc_sync_enter(mutex);
  ss = self->ss_;
  if (!ss)
  {
    JreThrowNullPointerException();
  }

  v5 = [(JavaUtilSortedSet *)ss comparator];
  objc_sync_exit(mutex);
  return v5;
}

- (id)first
{
  mutex = self->super.super.mutex_;
  objc_sync_enter(mutex);
  ss = self->ss_;
  if (!ss)
  {
    JreThrowNullPointerException();
  }

  v5 = [(JavaUtilSortedSet *)ss first];
  objc_sync_exit(mutex);
  return v5;
}

- (id)headSetWithId:(id)a3
{
  mutex = self->super.super.mutex_;
  objc_sync_enter(mutex);
  ss = self->ss_;
  if (!ss)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilSortedSet *)ss headSetWithId:a3];
  v8 = self->super.super.mutex_;
  v9 = [JavaUtilCollections_SynchronizedSortedSet alloc];
  JavaUtilCollections_SynchronizedSortedSet_initWithJavaUtilSortedSet_withId_(&v9->super.super.super.isa, v7, v8);
  v10 = v9;
  objc_sync_exit(mutex);
  return v10;
}

- (id)last
{
  mutex = self->super.super.mutex_;
  objc_sync_enter(mutex);
  ss = self->ss_;
  if (!ss)
  {
    JreThrowNullPointerException();
  }

  v5 = [(JavaUtilSortedSet *)ss last];
  objc_sync_exit(mutex);
  return v5;
}

- (id)subSetWithId:(id)a3 withId:(id)a4
{
  mutex = self->super.super.mutex_;
  objc_sync_enter(mutex);
  ss = self->ss_;
  if (!ss)
  {
    JreThrowNullPointerException();
  }

  v9 = [(JavaUtilSortedSet *)ss subSetWithId:a3 withId:a4];
  v10 = self->super.super.mutex_;
  v11 = [JavaUtilCollections_SynchronizedSortedSet alloc];
  JavaUtilCollections_SynchronizedSortedSet_initWithJavaUtilSortedSet_withId_(&v11->super.super.super.isa, v9, v10);
  v12 = v11;
  objc_sync_exit(mutex);
  return v12;
}

- (id)tailSetWithId:(id)a3
{
  mutex = self->super.super.mutex_;
  objc_sync_enter(mutex);
  ss = self->ss_;
  if (!ss)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilSortedSet *)ss tailSetWithId:a3];
  v8 = self->super.super.mutex_;
  v9 = [JavaUtilCollections_SynchronizedSortedSet alloc];
  JavaUtilCollections_SynchronizedSortedSet_initWithJavaUtilSortedSet_withId_(&v9->super.super.super.isa, v7, v8);
  v10 = v9;
  objc_sync_exit(mutex);
  return v10;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3
{
  mutex = self->super.super.mutex_;
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
  v3.super_class = JavaUtilCollections_SynchronizedSortedSet;
  [(JavaUtilCollections_SynchronizedCollection *)&v3 dealloc];
}

@end