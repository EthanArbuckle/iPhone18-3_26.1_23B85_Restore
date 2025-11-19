@interface JavaUtilConcurrentLocksReentrantLock_Sync
- (BOOL)tryReleaseWithInt:(int)a3;
- (id)getOwner;
- (id)newCondition;
- (int)getHoldCount;
- (void)readObjectWithJavaIoObjectInputStream:(id)a3;
@end

@implementation JavaUtilConcurrentLocksReentrantLock_Sync

- (BOOL)tryReleaseWithInt:(int)a3
{
  v5 = [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self getState];
  v6 = JavaLangThread_currentThread();
  if (v6 != [(JavaUtilConcurrentLocksAbstractOwnableSynchronizer *)self getExclusiveOwnerThread])
  {
    v8 = new_JavaLangIllegalMonitorStateException_init();
    objc_exception_throw(v8);
  }

  if (v5 == a3)
  {
    [(JavaUtilConcurrentLocksAbstractOwnableSynchronizer *)self setExclusiveOwnerThreadWithJavaLangThread:0];
  }

  [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self setStateWithInt:v5 - a3];
  return v5 == a3;
}

- (id)newCondition
{
  v2 = new_JavaUtilConcurrentLocksAbstractQueuedSynchronizer_ConditionObject_initWithJavaUtilConcurrentLocksAbstractQueuedSynchronizer_(self);

  return v2;
}

- (id)getOwner
{
  if (![(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self getState])
  {
    return 0;
  }

  return [(JavaUtilConcurrentLocksAbstractOwnableSynchronizer *)self getExclusiveOwnerThread];
}

- (int)getHoldCount
{
  v3 = [(JavaUtilConcurrentLocksAbstractOwnableSynchronizer *)self getExclusiveOwnerThread];
  if (v3 != JavaLangThread_currentThread())
  {
    return 0;
  }

  return [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self getState];
}

- (void)readObjectWithJavaIoObjectInputStream:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 defaultReadObject];

  [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self setStateWithInt:0];
}

@end