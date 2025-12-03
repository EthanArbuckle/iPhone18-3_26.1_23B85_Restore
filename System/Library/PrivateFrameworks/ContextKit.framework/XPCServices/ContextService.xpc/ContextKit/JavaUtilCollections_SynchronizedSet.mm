@interface JavaUtilCollections_SynchronizedSet
- (BOOL)isEqual:(id)equal;
- (JavaUtilCollections_SynchronizedSet)initWithJavaUtilSet:(id)set withId:(id)id;
- (unint64_t)hash;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaUtilCollections_SynchronizedSet

- (JavaUtilCollections_SynchronizedSet)initWithJavaUtilSet:(id)set withId:(id)id
{
  JreStrongAssign(&self->super.c_, set);
  JreStrongAssign(&self->super.mutex_, id);
  return self;
}

- (BOOL)isEqual:(id)equal
{
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  c = self->super.c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilCollection *)c isEqual:equal];
  objc_sync_exit(mutex);
  return v7;
}

- (unint64_t)hash
{
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  c = self->super.c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  v5 = [(JavaUtilCollection *)c hash];
  objc_sync_exit(mutex);
  return v5;
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

@end