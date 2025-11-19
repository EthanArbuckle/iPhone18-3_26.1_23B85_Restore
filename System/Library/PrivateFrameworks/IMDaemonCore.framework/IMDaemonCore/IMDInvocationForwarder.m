@interface IMDInvocationForwarder
- (BOOL)respondsToSelector:(SEL)a3;
- (IMDInvocationForwarder)initWithTargets:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)addTarget:(id)a3;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
- (void)removeTarget:(id)a3;
@end

@implementation IMDInvocationForwarder

- (IMDInvocationForwarder)initWithTargets:(id)a3
{
  v6.receiver = self;
  v6.super_class = IMDInvocationForwarder;
  v4 = [(IMDInvocationForwarder *)&v6 init];
  if (v4)
  {
    v4->_targets = [a3 mutableCopy];
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

- (void)addTarget:(id)a3
{
  if (a3)
  {
    [(NSLock *)self->_lock lock];
    if ([(NSMutableArray *)self->_targets containsObjectIdenticalTo:a3])
    {
      targets = self->_targets;
      if (!targets)
      {
        targets = objc_alloc_init(MEMORY[0x277CBEB18]);
        self->_targets = targets;
      }

      [(NSMutableArray *)targets addObject:a3];
    }

    lock = self->_lock;

    [(NSLock *)lock unlock];
  }
}

- (void)removeTarget:(id)a3
{
  if (a3)
  {
    [(NSLock *)self->_lock lock];
    [(NSMutableArray *)self->_targets removeObjectIdenticalTo:a3];
    if (![(NSMutableArray *)self->_targets count])
    {

      self->_targets = 0;
    }

    lock = self->_lock;

    [(NSLock *)lock unlock];
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  [(NSLock *)self->_lock lock];
  v5 = [-[NSMutableArray __imFirstObject](self->_targets "__imFirstObject")];
  [(NSLock *)self->_lock unlock];

  return v5;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  [(NSLock *)self->_lock lock];
  v7.receiver = self;
  v7.super_class = IMDInvocationForwarder;
  if ([(IMDInvocationForwarder *)&v7 respondsToSelector:a3])
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

- (void)forwardInvocation:(id)a3
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
        [a3 invokeWithTarget:v9];
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