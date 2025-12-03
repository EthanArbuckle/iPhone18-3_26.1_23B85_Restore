@interface JavaUtilCollections_SynchronizedSortedMap
- (JavaUtilCollections_SynchronizedSortedMap)initWithJavaUtilSortedMap:(id)map;
- (id)comparator;
- (id)firstKey;
- (id)headMapWithId:(id)id;
- (id)lastKey;
- (id)subMapWithId:(id)id withId:(id)withId;
- (id)tailMapWithId:(id)id;
- (void)dealloc;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaUtilCollections_SynchronizedSortedMap

- (JavaUtilCollections_SynchronizedSortedMap)initWithJavaUtilSortedMap:(id)map
{
  JavaUtilCollections_SynchronizedMap_initWithJavaUtilMap_(self, map);
  JreStrongAssign(&self->sm_, map);
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

  comparator = [(JavaUtilSortedMap *)sm comparator];
  objc_sync_exit(mutex);
  return comparator;
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

  firstKey = [(JavaUtilSortedMap *)sm firstKey];
  objc_sync_exit(mutex);
  return firstKey;
}

- (id)headMapWithId:(id)id
{
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  sm = self->sm_;
  if (!sm)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilSortedMap *)sm headMapWithId:id];
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

  lastKey = [(JavaUtilSortedMap *)sm lastKey];
  objc_sync_exit(mutex);
  return lastKey;
}

- (id)subMapWithId:(id)id withId:(id)withId
{
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  sm = self->sm_;
  if (!sm)
  {
    JreThrowNullPointerException();
  }

  v9 = [(JavaUtilSortedMap *)sm subMapWithId:id withId:withId];
  v10 = self->super.mutex_;
  v11 = [JavaUtilCollections_SynchronizedSortedMap alloc];
  JavaUtilCollections_SynchronizedSortedMap_initWithJavaUtilSortedMap_withId_(&v11->super.super.isa, v9, v10);
  v12 = v11;
  objc_sync_exit(mutex);
  return v12;
}

- (id)tailMapWithId:(id)id
{
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  sm = self->sm_;
  if (!sm)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilSortedMap *)sm tailMapWithId:id];
  v8 = self->super.mutex_;
  v9 = [JavaUtilCollections_SynchronizedSortedMap alloc];
  JavaUtilCollections_SynchronizedSortedMap_initWithJavaUtilSortedMap_withId_(&v9->super.super.isa, v7, v8);
  v10 = v9;
  objc_sync_exit(mutex);
  return v10;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream
{
  mutex = self->super.mutex_;
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
  v3.super_class = JavaUtilCollections_SynchronizedSortedMap;
  [(JavaUtilCollections_SynchronizedMap *)&v3 dealloc];
}

@end