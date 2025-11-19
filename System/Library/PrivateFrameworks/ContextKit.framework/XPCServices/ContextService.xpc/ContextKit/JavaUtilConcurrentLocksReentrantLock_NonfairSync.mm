@interface JavaUtilConcurrentLocksReentrantLock_NonfairSync
- (void)lock;
@end

@implementation JavaUtilConcurrentLocksReentrantLock_NonfairSync

- (void)lock
{
  if ([(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self compareAndSetStateWithInt:0 withInt:1])
  {
    v3 = JavaLangThread_currentThread();

    [(JavaUtilConcurrentLocksAbstractOwnableSynchronizer *)self setExclusiveOwnerThreadWithJavaLangThread:v3];
  }

  else
  {

    [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self acquireWithInt:1];
  }
}

@end