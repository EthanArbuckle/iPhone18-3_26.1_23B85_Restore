@interface JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node
+ (void)initialize;
- (JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node)initWithJavaLangThread:(id)thread withInt:(int)int;
- (JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node)initWithJavaLangThread:(id)thread withJavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node:(id)node;
- (void)__javaClone;
- (void)dealloc;
@end

@implementation JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node

- (JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node)initWithJavaLangThread:(id)thread withJavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node:(id)node
{
  JreStrongAssign(&self->nextWaiter_, node);
  JreVolatileStrongAssign(&self->thread_, thread);
  return self;
}

- (JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node)initWithJavaLangThread:(id)thread withInt:(int)int
{
  atomic_store(int, &self->waitStatus_);
  JreVolatileStrongAssign(&self->thread_, thread);
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
  if (objc_opt_class() == self)
  {
    JreStrongAssignAndConsume(&JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node_SHARED_, [JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node alloc]);
    JreStrongAssign(&JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node_EXCLUSIVE_, 0);
    atomic_store(1u, JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node__initialized);
  }
}

@end