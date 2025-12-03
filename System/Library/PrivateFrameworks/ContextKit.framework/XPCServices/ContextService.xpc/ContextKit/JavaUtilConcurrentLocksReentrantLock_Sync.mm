@interface JavaUtilConcurrentLocksReentrantLock_Sync
- (BOOL)tryReleaseWithInt:(int)int;
- (id)getOwner;
- (id)newCondition;
- (int)getHoldCount;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
@end

@implementation JavaUtilConcurrentLocksReentrantLock_Sync

- (BOOL)tryReleaseWithInt:(int)int
{
  getState = [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self getState];
  v6 = JavaLangThread_currentThread();
  if (v6 != [(JavaUtilConcurrentLocksAbstractOwnableSynchronizer *)self getExclusiveOwnerThread])
  {
    v8 = new_JavaLangIllegalMonitorStateException_init();
    objc_exception_throw(v8);
  }

  if (getState == int)
  {
    [(JavaUtilConcurrentLocksAbstractOwnableSynchronizer *)self setExclusiveOwnerThreadWithJavaLangThread:0];
  }

  [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self setStateWithInt:getState - int];
  return getState == int;
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
  getExclusiveOwnerThread = [(JavaUtilConcurrentLocksAbstractOwnableSynchronizer *)self getExclusiveOwnerThread];
  if (getExclusiveOwnerThread != JavaLangThread_currentThread())
  {
    return 0;
  }

  return [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self getState];
}

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  if (!stream)
  {
    JreThrowNullPointerException();
  }

  [stream defaultReadObject];

  [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self setStateWithInt:0];
}

@end