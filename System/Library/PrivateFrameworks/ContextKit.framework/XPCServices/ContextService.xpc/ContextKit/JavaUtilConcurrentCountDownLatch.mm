@interface JavaUtilConcurrentCountDownLatch
- (BOOL)awaitWithLong:(int64_t)long withJavaUtilConcurrentTimeUnitEnum:(id)enum;
- (id)description;
- (int64_t)getCount;
- (void)await;
- (void)countDown;
- (void)dealloc;
@end

@implementation JavaUtilConcurrentCountDownLatch

- (void)await
{
  sync = self->sync_;
  if (!sync)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)sync acquireSharedInterruptiblyWithInt:1];
}

- (BOOL)awaitWithLong:(int64_t)long withJavaUtilConcurrentTimeUnitEnum:(id)enum
{
  sync = self->sync_;
  if (!sync || !enum)
  {
    JreThrowNullPointerException();
  }

  v5 = [enum toNanosWithLong:long];

  return [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)sync tryAcquireSharedNanosWithInt:1 withLong:v5];
}

- (void)countDown
{
  sync = self->sync_;
  if (!sync)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)sync releaseSharedWithInt:1];
}

- (int64_t)getCount
{
  sync = self->sync_;
  if (!sync)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilConcurrentCountDownLatch_Sync *)sync getCount];
}

- (id)description
{
  v13.receiver = self;
  v13.super_class = JavaUtilConcurrentCountDownLatch;
  v3 = [(JavaUtilConcurrentCountDownLatch *)&v13 description];
  sync = self->sync_;
  if (!sync)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilConcurrentCountDownLatch_Sync *)sync getCount];
  return JreStrcat("$$IC", v5, v6, v7, v8, v9, v10, v11, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentCountDownLatch;
  [(JavaUtilConcurrentCountDownLatch *)&v3 dealloc];
}

@end