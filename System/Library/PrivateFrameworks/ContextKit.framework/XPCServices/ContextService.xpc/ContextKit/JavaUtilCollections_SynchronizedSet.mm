@interface JavaUtilCollections_SynchronizedSet
- (BOOL)isEqual:(id)a3;
- (JavaUtilCollections_SynchronizedSet)initWithJavaUtilSet:(id)a3 withId:(id)a4;
- (unint64_t)hash;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3;
@end

@implementation JavaUtilCollections_SynchronizedSet

- (JavaUtilCollections_SynchronizedSet)initWithJavaUtilSet:(id)a3 withId:(id)a4
{
  JreStrongAssign(&self->super.c_, a3);
  JreStrongAssign(&self->super.mutex_, a4);
  return self;
}

- (BOOL)isEqual:(id)a3
{
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  c = self->super.c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilCollection *)c isEqual:a3];
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

@end