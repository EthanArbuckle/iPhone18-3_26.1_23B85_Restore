@interface JavaUtilCollections_SynchronizedSortedSet
- (JavaUtilCollections_SynchronizedSortedSet)initWithJavaUtilSortedSet:(id)set;
- (id)comparator;
- (id)first;
- (id)headSetWithId:(id)id;
- (id)last;
- (id)subSetWithId:(id)id withId:(id)withId;
- (id)tailSetWithId:(id)id;
- (void)dealloc;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaUtilCollections_SynchronizedSortedSet

- (JavaUtilCollections_SynchronizedSortedSet)initWithJavaUtilSortedSet:(id)set
{
  JavaUtilCollections_SynchronizedCollection_initWithJavaUtilCollection_(self, set);
  JreStrongAssign(&self->ss_, set);
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

  comparator = [(JavaUtilSortedSet *)ss comparator];
  objc_sync_exit(mutex);
  return comparator;
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

  first = [(JavaUtilSortedSet *)ss first];
  objc_sync_exit(mutex);
  return first;
}

- (id)headSetWithId:(id)id
{
  mutex = self->super.super.mutex_;
  objc_sync_enter(mutex);
  ss = self->ss_;
  if (!ss)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilSortedSet *)ss headSetWithId:id];
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

  last = [(JavaUtilSortedSet *)ss last];
  objc_sync_exit(mutex);
  return last;
}

- (id)subSetWithId:(id)id withId:(id)withId
{
  mutex = self->super.super.mutex_;
  objc_sync_enter(mutex);
  ss = self->ss_;
  if (!ss)
  {
    JreThrowNullPointerException();
  }

  v9 = [(JavaUtilSortedSet *)ss subSetWithId:id withId:withId];
  v10 = self->super.super.mutex_;
  v11 = [JavaUtilCollections_SynchronizedSortedSet alloc];
  JavaUtilCollections_SynchronizedSortedSet_initWithJavaUtilSortedSet_withId_(&v11->super.super.super.isa, v9, v10);
  v12 = v11;
  objc_sync_exit(mutex);
  return v12;
}

- (id)tailSetWithId:(id)id
{
  mutex = self->super.super.mutex_;
  objc_sync_enter(mutex);
  ss = self->ss_;
  if (!ss)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilSortedSet *)ss tailSetWithId:id];
  v8 = self->super.super.mutex_;
  v9 = [JavaUtilCollections_SynchronizedSortedSet alloc];
  JavaUtilCollections_SynchronizedSortedSet_initWithJavaUtilSortedSet_withId_(&v9->super.super.super.isa, v7, v8);
  v10 = v9;
  objc_sync_exit(mutex);
  return v10;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream
{
  mutex = self->super.super.mutex_;
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
  v3.super_class = JavaUtilCollections_SynchronizedSortedSet;
  [(JavaUtilCollections_SynchronizedCollection *)&v3 dealloc];
}

@end