@interface IMDInvocationForwarder
- (BOOL)respondsToSelector:(SEL)selector;
- (IMDInvocationForwarder)initWithTargets:(id)targets;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)addTarget:(id)target;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
- (void)removeTarget:(id)target;
@end

@implementation IMDInvocationForwarder

- (IMDInvocationForwarder)initWithTargets:(id)targets
{
  v6.receiver = self;
  v6.super_class = IMDInvocationForwarder;
  v4 = [(IMDInvocationForwarder *)&v6 init];
  if (v4)
  {
    v4->_targets = [targets mutableCopy];
    v4->_lock = objc_alloc_init(MEMORY[0x277CCAAF8]);
  }

  return v4;
}

- (void)dealloc
{
  [(NSLock *)self->_lock lock];

  [(NSLock *)self->_lock unlock];
  v3.receiver = self;
  v3.super_class = IMDInvocationForwarder;
  [(IMDInvocationForwarder *)&v3 dealloc];
}

- (void)addTarget:(id)target
{
  if (target)
  {
    [(NSLock *)self->_lock lock];
    if ([(NSMutableArray *)self->_targets containsObjectIdenticalTo:target])
    {
      targets = self->_targets;
      if (!targets)
      {
        targets = objc_alloc_init(MEMORY[0x277CBEB18]);
        self->_targets = targets;
      }

      [(NSMutableArray *)targets addObject:target];
    }

    lock = self->_lock;

    [(NSLock *)lock unlock];
  }
}

- (void)removeTarget:(id)target
{
  if (target)
  {
    [(NSLock *)self->_lock lock];
    [(NSMutableArray *)self->_targets removeObjectIdenticalTo:target];
    if (![(NSMutableArray *)self->_targets count])
    {

      self->_targets = 0;
    }

    lock = self->_lock;

    [(NSLock *)lock unlock];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  [(NSLock *)self->_lock lock];
  v5 = [-[NSMutableArray __imFirstObject](self->_targets "__imFirstObject")];
  [(NSLock *)self->_lock unlock];

  return v5;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  [(NSLock *)self->_lock lock];
  v7.receiver = self;
  v7.super_class = IMDInvocationForwarder;
  if ([(IMDInvocationForwarder *)&v7 respondsToSelector:selector])
  {
    v5 = 1;
  }

  else
  {
    [(NSMutableArray *)self->_targets __imFirstObject];
    v5 = objc_opt_respondsToSelector();
  }

  [(NSLock *)self->_lock unlock];
  return v5 & 1;
}

- (void)forwardInvocation:(id)invocation
{
  v17 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_lock lock];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  targets = self->_targets;
  v6 = [(NSMutableArray *)targets countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(targets);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        [invocation invokeWithTarget:v9];
        objc_autoreleasePoolPop(v10);
      }

      v6 = [(NSMutableArray *)targets countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [(NSLock *)self->_lock unlock];
  v11 = *MEMORY[0x277D85DE8];
}

@end