@interface JavaUtilConcurrentLocksReentrantLock
- (BOOL)hasQueuedThreadWithJavaLangThread:(id)a3;
- (BOOL)hasQueuedThreads;
- (BOOL)hasWaitersWithJavaUtilConcurrentLocksCondition:(id)a3;
- (BOOL)isFair;
- (BOOL)isHeldByCurrentThread;
- (BOOL)isLocked;
- (BOOL)tryLock;
- (BOOL)tryLockWithLong:(int64_t)a3 withJavaUtilConcurrentTimeUnitEnum:(id)a4;
- (NSString)description;
- (id)getOwner;
- (id)getQueuedThreads;
- (id)getWaitingThreadsWithJavaUtilConcurrentLocksCondition:(id)a3;
- (id)newCondition;
- (int)getHoldCount;
- (int)getQueueLength;
- (int)getWaitQueueLengthWithJavaUtilConcurrentLocksCondition:(id)a3;
- (void)dealloc;
- (void)lock;
- (void)lockInterruptibly;
- (void)unlock;
@end

@implementation JavaUtilConcurrentLocksReentrantLock

- (void)lock
{
  sync = self->sync_;
  if (!sync)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilConcurrentLocksReentrantLock_Sync *)sync lock];
}

- (void)lockInterruptibly
{
  sync = self->sync_;
  if (!sync)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)sync acquireInterruptiblyWithInt:1];
}

- (BOOL)tryLock
{
  sync = self->sync_;
  if (!sync)
  {
    JreThrowNullPointerException();
  }

  return sub_10023FCC0(sync, 1);
}

- (BOOL)tryLockWithLong:(int64_t)a3 withJavaUtilConcurrentTimeUnitEnum:(id)a4
{
  sync = self->sync_;
  if (!sync || !a4)
  {
    JreThrowNullPointerException();
  }

  v5 = [a4 toNanosWithLong:a3];

  return [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)sync tryAcquireNanosWithInt:1 withLong:v5];
}

- (void)unlock
{
  sync = self->sync_;
  if (!sync)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)sync release__WithInt:1];
}

- (id)newCondition
{
  sync = self->sync_;
  if (!sync)
  {
    JreThrowNullPointerException();
  }

  v3 = new_JavaUtilConcurrentLocksAbstractQueuedSynchronizer_ConditionObject_initWithJavaUtilConcurrentLocksAbstractQueuedSynchronizer_(sync);

  return v3;
}

- (int)getHoldCount
{
  sync = self->sync_;
  if (!sync)
  {
    JreThrowNullPointerException();
  }

  v3 = [(JavaUtilConcurrentLocksAbstractOwnableSynchronizer *)self->sync_ getExclusiveOwnerThread];
  if (v3 != JavaLangThread_currentThread())
  {
    return 0;
  }

  return [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)sync getState];
}

- (BOOL)isHeldByCurrentThread
{
  sync = self->sync_;
  if (!sync)
  {
    JreThrowNullPointerException();
  }

  v3 = [(JavaUtilConcurrentLocksAbstractOwnableSynchronizer *)sync getExclusiveOwnerThread];
  return v3 == JavaLangThread_currentThread();
}

- (BOOL)isLocked
{
  sync = self->sync_;
  if (!sync)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)sync getState]!= 0;
}

- (BOOL)isFair
{
  sync = self->sync_;
  objc_opt_class();
  return objc_opt_isKindOfClass() & 1;
}

- (id)getOwner
{
  sync = self->sync_;
  if (!sync)
  {
    JreThrowNullPointerException();
  }

  if (![(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self->sync_ getState])
  {
    return 0;
  }

  return [(JavaUtilConcurrentLocksAbstractOwnableSynchronizer *)sync getExclusiveOwnerThread];
}

- (BOOL)hasQueuedThreads
{
  sync = self->sync_;
  if (!sync)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)sync hasQueuedThreads];
}

- (BOOL)hasQueuedThreadWithJavaLangThread:(id)a3
{
  sync = self->sync_;
  if (!sync)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)sync isQueuedWithJavaLangThread:a3];
}

- (int)getQueueLength
{
  sync = self->sync_;
  if (!sync)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)sync getQueueLength];
}

- (id)getQueuedThreads
{
  sync = self->sync_;
  if (!sync)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)sync getQueuedThreads];
}

- (BOOL)hasWaitersWithJavaUtilConcurrentLocksCondition:(id)a3
{
  if (!a3)
  {
    v6 = new_JavaLangNullPointerException_init();
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = new_JavaLangIllegalArgumentException_initWithNSString_(@"not owner");
LABEL_12:
    objc_exception_throw(v6);
  }

  sync = self->sync_;
  if (!sync)
  {
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)sync hasWaitersWithJavaUtilConcurrentLocksAbstractQueuedSynchronizer_ConditionObject:a3];
}

- (int)getWaitQueueLengthWithJavaUtilConcurrentLocksCondition:(id)a3
{
  if (!a3)
  {
    v6 = new_JavaLangNullPointerException_init();
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = new_JavaLangIllegalArgumentException_initWithNSString_(@"not owner");
LABEL_12:
    objc_exception_throw(v6);
  }

  sync = self->sync_;
  if (!sync)
  {
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)sync getWaitQueueLengthWithJavaUtilConcurrentLocksAbstractQueuedSynchronizer_ConditionObject:a3];
}

- (id)getWaitingThreadsWithJavaUtilConcurrentLocksCondition:(id)a3
{
  if (!a3)
  {
    v6 = new_JavaLangNullPointerException_init();
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = new_JavaLangIllegalArgumentException_initWithNSString_(@"not owner");
LABEL_12:
    objc_exception_throw(v6);
  }

  sync = self->sync_;
  if (!sync)
  {
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)sync getWaitingThreadsWithJavaUtilConcurrentLocksAbstractQueuedSynchronizer_ConditionObject:a3];
}

- (NSString)description
{
  sync = self->sync_;
  if (!sync)
  {
    JreThrowNullPointerException();
  }

  if ([(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self->sync_ getState])
  {
    v4 = [(JavaUtilConcurrentLocksAbstractOwnableSynchronizer *)sync getExclusiveOwnerThread];
  }

  else
  {
    v4 = 0;
  }

  v21.receiver = self;
  v21.super_class = JavaUtilConcurrentLocksReentrantLock;
  v12 = [(JavaUtilConcurrentLocksReentrantLock *)&v21 description];
  if (v4)
  {
    [v4 getName];
    JreStrcat("$$C", v13, v14, v15, v16, v17, v18, v19, @"[Locked by thread ");
  }

  return JreStrcat("$$", v5, v6, v7, v8, v9, v10, v11, v12);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentLocksReentrantLock;
  [(JavaUtilConcurrentLocksReentrantLock *)&v3 dealloc];
}

@end