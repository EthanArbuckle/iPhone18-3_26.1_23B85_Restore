@interface JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node
+ (void)initialize;
- (JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node)initWithJavaLangThread:(id)a3 withInt:(int)a4;
- (JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node)initWithJavaLangThread:(id)a3 withJavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node:(id)a4;
- (void)__javaClone;
- (void)dealloc;
@end

@implementation JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node

- (JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node)initWithJavaLangThread:(id)a3 withJavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node:(id)a4
{
  JreStrongAssign(&self->nextWaiter_, a4);
  JreVolatileStrongAssign(&self->thread_, a3);
  return self;
}

- (JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node)initWithJavaLangThread:(id)a3 withInt:(int)a4
{
  atomic_store(a4, &self->waitStatus_);
  JreVolatileStrongAssign(&self->thread_, a3);
  return self;
}

- (void)dealloc
{
  JreReleaseVolatile(&self->prev_);
  JreReleaseVolatile(&self->next_);
  JreReleaseVolatile(&self->thread_);

  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node;
  [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node;
  [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node *)&v3 __javaClone];
  JreRetainVolatile(&self->prev_);
  JreRetainVolatile(&self->next_);
  JreRetainVolatile(&self->thread_);
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    JreStrongAssignAndConsume(&JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node_SHARED_, [JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node alloc]);
    JreStrongAssign(&JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node_EXCLUSIVE_, 0);
    atomic_store(1u, JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node__initialized);
  }
}

@end