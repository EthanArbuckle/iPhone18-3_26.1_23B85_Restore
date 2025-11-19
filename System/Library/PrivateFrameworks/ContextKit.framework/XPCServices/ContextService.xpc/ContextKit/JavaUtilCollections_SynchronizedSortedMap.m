@interface JavaUtilCollections_SynchronizedSortedMap
- (JavaUtilCollections_SynchronizedSortedMap)initWithJavaUtilSortedMap:(id)a3;
- (id)comparator;
- (id)firstKey;
- (id)headMapWithId:(id)a3;
- (id)lastKey;
- (id)subMapWithId:(id)a3 withId:(id)a4;
- (id)tailMapWithId:(id)a3;
- (void)dealloc;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3;
@end

@implementation JavaUtilCollections_SynchronizedSortedMap

- (JavaUtilCollections_SynchronizedSortedMap)initWithJavaUtilSortedMap:(id)a3
{
  JavaUtilCollections_SynchronizedMap_initWithJavaUtilMap_(self, a3);
  JreStrongAssign(&self->sm_, a3);
  return self;
}

- (id)comparator
{
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  sm = self->sm_;
  if (!sm)
  {
    JreThrowNullPointerException();
  }

  v5 = [(JavaUtilSortedMap *)sm comparator];
  objc_sync_exit(mutex);
  return v5;
}

- (id)firstKey
{
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  sm = self->sm_;
  if (!sm)
  {
    JreThrowNullPointerException();
  }

  v5 = [(JavaUtilSortedMap *)sm firstKey];
  objc_sync_exit(mutex);
  return v5;
}

- (id)headMapWithId:(id)a3
{
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  sm = self->sm_;
  if (!sm)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilSortedMap *)sm headMapWithId:a3];
  v8 = self->super.mutex_;
  v9 = [JavaUtilCollections_SynchronizedSortedMap alloc];
  JavaUtilCollections_SynchronizedSortedMap_initWithJavaUtilSortedMap_withId_(&v9->super.super.isa, v7, v8);
  v10 = v9;
  objc_sync_exit(mutex);
  return v10;
}

- (id)lastKey
{
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  sm = self->sm_;
  if (!sm)
  {
    JreThrowNullPointerException();
  }

  v5 = [(JavaUtilSortedMap *)sm lastKey];
  objc_sync_exit(mutex);
  return v5;
}

- (id)subMapWithId:(id)a3 withId:(id)a4
{
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  sm = self->sm_;
  if (!sm)
  {
    JreThrowNullPointerException();
  }

  v9 = [(JavaUtilSortedMap *)sm subMapWithId:a3 withId:a4];
  v10 = self->super.mutex_;
  v11 = [JavaUtilCollections_SynchronizedSortedMap alloc];
  JavaUtilCollections_SynchronizedSortedMap_initWithJavaUtilSortedMap_withId_(&v11->super.super.isa, v9, v10);
  v12 = v11;
  objc_sync_exit(mutex);
  return v12;
}

- (id)tailMapWithId:(id)a3
{
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  sm = self->sm_;
  if (!sm)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilSortedMap *)sm tailMapWithId:a3];
  v8 = self->super.mutex_;
  v9 = [JavaUtilCollections_SynchronizedSortedMap alloc];
  JavaUtilCollections_SynchronizedSortedMap_initWithJavaUtilSortedMap_withId_(&v9->super.super.isa, v7, v8);
  v10 = v9;
  objc_sync_exit(mutex);
  return v10;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3
{
  mutex = self->super.mutex_;
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
  v3.super_class = JavaUtilCollections_SynchronizedSortedMap;
  [(JavaUtilCollections_SynchronizedMap *)&v3 dealloc];
}

@end