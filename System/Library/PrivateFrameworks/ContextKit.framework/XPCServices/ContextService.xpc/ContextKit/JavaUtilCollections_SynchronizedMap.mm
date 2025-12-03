@interface JavaUtilCollections_SynchronizedMap
- (BOOL)containsKeyWithId:(id)id;
- (BOOL)containsValueWithId:(id)id;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (JavaUtilCollections_SynchronizedMap)initWithJavaUtilMap:(id)map withId:(id)id;
- (NSString)description;
- (id)entrySet;
- (id)getWithId:(id)id;
- (id)keySet;
- (id)putWithId:(id)id withId:(id)withId;
- (id)removeWithId:(id)id;
- (id)values;
- (int)size;
- (unint64_t)hash;
- (void)clear;
- (void)dealloc;
- (void)putAllWithJavaUtilMap:(id)map;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaUtilCollections_SynchronizedMap

- (JavaUtilCollections_SynchronizedMap)initWithJavaUtilMap:(id)map withId:(id)id
{
  JreStrongAssign(&self->m_, map);
  JreStrongAssign(&self->mutex_, id);
  return self;
}

- (void)clear
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilMap *)m clear];

  objc_sync_exit(mutex);
}

- (BOOL)containsKeyWithId:(id)id
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilMap *)m containsKeyWithId:id];
  objc_sync_exit(mutex);
  return v7;
}

- (BOOL)containsValueWithId:(id)id
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilMap *)m containsValueWithId:id];
  objc_sync_exit(mutex);
  return v7;
}

- (id)entrySet
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  v5 = new_JavaUtilCollections_SynchronizedSet_initWithJavaUtilSet_withId_([(JavaUtilMap *)m entrySet], self->mutex_);
  objc_sync_exit(mutex);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilMap *)m isEqual:equal];
  objc_sync_exit(mutex);
  return v7;
}

- (id)getWithId:(id)id
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilMap *)m getWithId:id];
  objc_sync_exit(mutex);
  return v7;
}

- (unint64_t)hash
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  v5 = [(JavaUtilMap *)m hash];
  objc_sync_exit(mutex);
  return v5;
}

- (BOOL)isEmpty
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  isEmpty = [(JavaUtilMap *)m isEmpty];
  objc_sync_exit(mutex);
  return isEmpty;
}

- (id)keySet
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  v5 = new_JavaUtilCollections_SynchronizedSet_initWithJavaUtilSet_withId_([(JavaUtilMap *)m keySet], self->mutex_);
  objc_sync_exit(mutex);
  return v5;
}

- (id)putWithId:(id)id withId:(id)withId
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  v9 = [(JavaUtilMap *)m putWithId:id withId:withId];
  objc_sync_exit(mutex);
  return v9;
}

- (void)putAllWithJavaUtilMap:(id)map
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilMap *)m putAllWithJavaUtilMap:map];

  objc_sync_exit(mutex);
}

- (id)removeWithId:(id)id
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilMap *)m removeWithId:id];
  objc_sync_exit(mutex);
  return v7;
}

- (int)size
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  v5 = [(JavaUtilMap *)m size];
  objc_sync_exit(mutex);
  return v5;
}

- (id)values
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  v5 = new_JavaUtilCollections_SynchronizedCollection_initWithJavaUtilCollection_withId_([(JavaUtilMap *)m values], self->mutex_);
  objc_sync_exit(mutex);
  return v5;
}

- (NSString)description
{
  mutex = self->mutex_;
  objc_sync_enter(mutex);
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  v5 = [(JavaUtilMap *)m description];
  objc_sync_exit(mutex);
  return v5;
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
  v3.super_class = JavaUtilCollections_SynchronizedMap;
  [(JavaUtilCollections_SynchronizedMap *)&v3 dealloc];
}

@end