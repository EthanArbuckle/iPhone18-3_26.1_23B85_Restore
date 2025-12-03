@interface NFMultiDelegate
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)respondsToSelector:(SEL)selector;
- (NFMultiDelegate)initWithDelegate:(id)delegate delegateProtocol:(id)protocol options:(unint64_t)options;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)addDelegate:(id)delegate;
- (void)forwardInvocation:(id)invocation;
- (void)removeDelegate:(id)delegate;
- (void)replaceDelegate:(id)delegate withDelegate:(id)withDelegate;
@end

@implementation NFMultiDelegate

- (NFMultiDelegate)initWithDelegate:(id)delegate delegateProtocol:(id)protocol options:(unint64_t)options
{
  optionsCopy = options;
  delegateCopy = delegate;
  protocolCopy = protocol;
  v16.receiver = self;
  v16.super_class = NFMultiDelegate;
  v10 = [(NFMultiDelegate *)&v16 init];
  if (v10)
  {
    v11 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    children = v10->_children;
    v10->_children = v11;

    if (delegateCopy)
    {
      [(NSHashTable *)v10->_children addObject:delegateCopy];
    }

    objc_storeStrong(&v10->_delegateProtocol, protocol);
    if (optionsCopy)
    {
      v13 = objc_alloc_init(NFUnfairLock);
      lock = v10->_lock;
      v10->_lock = v13;
    }
  }

  return v10;
}

- (void)addDelegate:(id)delegate
{
  if (delegate)
  {
    lock = self->_lock;
    delegateCopy = delegate;
    [(NFUnfairLock *)lock lock];
    children = [(NFMultiDelegate *)self children];
    [children addObject:delegateCopy];

    v7 = self->_lock;

    [(NFUnfairLock *)v7 unlock];
  }
}

- (void)removeDelegate:(id)delegate
{
  if (delegate)
  {
    lock = self->_lock;
    delegateCopy = delegate;
    [(NFUnfairLock *)lock lock];
    children = [(NFMultiDelegate *)self children];
    [children removeObject:delegateCopy];

    v7 = self->_lock;

    [(NFUnfairLock *)v7 unlock];
  }
}

- (void)replaceDelegate:(id)delegate withDelegate:(id)withDelegate
{
  delegateCopy = delegate;
  withDelegateCopy = withDelegate;
  if (delegateCopy != withDelegateCopy)
  {
    [(NFUnfairLock *)self->_lock lock];
    if (delegateCopy)
    {
      children = [(NFMultiDelegate *)self children];
      [children removeObject:delegateCopy];
    }

    if (withDelegateCopy)
    {
      children2 = [(NFMultiDelegate *)self children];
      [children2 addObject:withDelegateCopy];
    }

    [(NFUnfairLock *)self->_lock unlock];
  }
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v8.receiver = self;
  v8.super_class = NFMultiDelegate;
  if ([(NFMultiDelegate *)&v8 conformsToProtocol:protocolCopy])
  {
    v5 = 1;
  }

  else if (protocolCopy)
  {
    delegateProtocol = [(NFMultiDelegate *)self delegateProtocol];
    v5 = delegateProtocol == protocolCopy;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v20 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = NFMultiDelegate;
  if ([(NFMultiDelegate *)&v18 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    [(NFUnfairLock *)self->_lock lock];
    children = [(NFMultiDelegate *)self children];
    v6 = [children copy];

    [(NFUnfairLock *)self->_lock unlock];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if (*(*(&v14 + 1) + 8 * i) && (objc_opt_respondsToSelector() & 1) != 0)
          {
            v4 = 1;
            goto LABEL_14;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v4 = 0;
LABEL_14:
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v24 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = NFMultiDelegate;
  v5 = [(NFMultiDelegate *)&v22 methodSignatureForSelector:?];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    [(NFUnfairLock *)self->_lock lock];
    children = [(NFMultiDelegate *)self children];
    v8 = [children copy];

    [(NFUnfairLock *)self->_lock unlock];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if (v14)
          {
            v15 = [v14 methodSignatureForSelector:{selector, v18}];
            if (v15)
            {
              v6 = v15;
              goto LABEL_14;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
LABEL_14:
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)forwardInvocation:(id)invocation
{
  v19 = *MEMORY[0x277D85DE8];
  invocationCopy = invocation;
  [(NFUnfairLock *)self->_lock lock];
  children = [(NFMultiDelegate *)self children];
  v6 = [children copy];

  [(NFUnfairLock *)self->_lock unlock];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (v12)
        {
          [invocationCopy selector];
          if (objc_opt_respondsToSelector())
          {
            [invocationCopy invokeWithTarget:v12];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end