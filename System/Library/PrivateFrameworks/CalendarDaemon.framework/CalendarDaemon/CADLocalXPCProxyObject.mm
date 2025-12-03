@interface CADLocalXPCProxyObject
- (CADLocalXPCProxyObject)initWithWrappedObject:(id)object queue:(id)queue errorHandler:(id)handler synchronous:(BOOL)synchronous connection:(id)connection;
- (id)_replacementArgumentValueForURLWrapper:(id)wrapper;
- (id)_updatedArgumentValueForArgumentValue:(id)value;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)_fixupArgumentsForInvocation:(id)invocation;
- (void)_forwardInvocationAsynchronously:(id)asynchronously;
- (void)_forwardInvocationSynchronously:(id)synchronously;
- (void)forwardInvocation:(id)invocation;
@end

@implementation CADLocalXPCProxyObject

- (CADLocalXPCProxyObject)initWithWrappedObject:(id)object queue:(id)queue errorHandler:(id)handler synchronous:(BOOL)synchronous connection:(id)connection
{
  objectCopy = object;
  queueCopy = queue;
  handlerCopy = handler;
  connectionCopy = connection;
  v22.receiver = self;
  v22.super_class = CADLocalXPCProxyObject;
  v17 = [(CADLocalXPCProxyObject *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_wrappedObject, object);
    objc_storeStrong(&v18->_queue, queue);
    v19 = MEMORY[0x22AA4DCD0](handlerCopy);
    errorHandler = v18->_errorHandler;
    v18->_errorHandler = v19;

    v18->_synchronous = synchronous;
    objc_storeWeak(&v18->_connection, connectionCopy);
  }

  return v18;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v10.receiver = self;
  v10.super_class = CADLocalXPCProxyObject;
  v5 = [(CADLocalXPCProxyObject *)&v10 methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [self->_wrappedObject methodSignatureForSelector:selector];
  }

  v8 = v7;

  return v8;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  isValid = [WeakRetained isValid];

  if (isValid)
  {
    if (self->_synchronous)
    {
      [(CADLocalXPCProxyObject *)self _forwardInvocationSynchronously:invocationCopy];
    }

    else
    {
      [(CADLocalXPCProxyObject *)self _forwardInvocationAsynchronously:invocationCopy];
    }
  }

  else if (self->_errorHandler)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4097 userInfo:0];
    (*(self->_errorHandler + 2))();
  }
}

- (void)_forwardInvocationSynchronously:(id)synchronously
{
  synchronouslyCopy = synchronously;
  [synchronouslyCopy setTarget:self->_wrappedObject];
  [(CADLocalXPCProxyObject *)self _fixupArgumentsForInvocation:synchronouslyCopy];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__11;
  v25 = __Block_byref_object_dispose__11;
  v26 = 0;
  v5 = [MEMORY[0x277CF7820] replyBlockArgumentIndex:synchronouslyCopy];
  v6 = 0;
  v20 = 0;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = dispatch_group_create();
    dispatch_group_enter(v7);
    v8 = [MEMORY[0x277CF7820] copyReplyBlockFromInvocation:synchronouslyCopy];
    _Block_signature(v8);
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __58__CADLocalXPCProxyObject__forwardInvocationSynchronously___block_invoke;
    v16 = &unk_27851BA50;
    v17 = v8;
    v19 = &v21;
    v6 = v7;
    v18 = v6;
    v20 = __NSMakeSpecialForwardingCaptureBlock();
    [synchronouslyCopy setArgument:&v20 atIndex:v5];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CADLocalXPCProxyObject__forwardInvocationSynchronously___block_invoke_2;
  block[3] = &unk_27851AAD8;
  v10 = synchronouslyCopy;
  v12 = v10;
  dispatch_sync(queue, block);
  if (v6)
  {
    dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v22[5])
  {
    [(CADLocalXPCProxyObject *)self _fixupArgumentsForInvocation:?];
    [v22[5] invoke];
  }

  _Block_object_dispose(&v21, 8);
}

void __58__CADLocalXPCProxyObject__forwardInvocationSynchronously___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTarget:*(a1 + 32)];
  [v3 retainArguments];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  dispatch_group_leave(*(a1 + 40));
}

- (void)_forwardInvocationAsynchronously:(id)asynchronously
{
  asynchronouslyCopy = asynchronously;
  [asynchronouslyCopy setTarget:self->_wrappedObject];
  [(CADLocalXPCProxyObject *)self _fixupArgumentsForInvocation:asynchronouslyCopy];
  v5 = [MEMORY[0x277CF7820] replyBlockArgumentIndex:asynchronouslyCopy];
  v19 = 0;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    v7 = [MEMORY[0x277CF7820] copyReplyBlockFromInvocation:asynchronouslyCopy];
    _Block_signature(v7);
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __59__CADLocalXPCProxyObject__forwardInvocationAsynchronously___block_invoke;
    v16 = &unk_27851AE48;
    v17 = v7;
    selfCopy = self;
    v8 = v7;
    v19 = __NSMakeSpecialForwardingCaptureBlock();
    [asynchronouslyCopy setArgument:&v19 atIndex:v6];
  }

  [asynchronouslyCopy retainArguments];
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__CADLocalXPCProxyObject__forwardInvocationAsynchronously___block_invoke_4;
  v11[3] = &unk_27851AAD8;
  v12 = asynchronouslyCopy;
  v10 = asynchronouslyCopy;
  dispatch_async(queue, v11);
}

void __59__CADLocalXPCProxyObject__forwardInvocationAsynchronously___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTarget:*(a1 + 32)];
  [v3 retainArguments];
  if (_block_invoke_onceToken_0 != -1)
  {
    __59__CADLocalXPCProxyObject__forwardInvocationAsynchronously___block_invoke_cold_1();
  }

  v4 = _block_invoke_asyncQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__CADLocalXPCProxyObject__forwardInvocationAsynchronously___block_invoke_3;
  v6[3] = &unk_27851AB28;
  v6[4] = *(a1 + 40);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __59__CADLocalXPCProxyObject__forwardInvocationAsynchronously___block_invoke_2()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("XPCReplyQueue", v2);
  v1 = _block_invoke_asyncQueue;
  _block_invoke_asyncQueue = v0;
}

uint64_t __59__CADLocalXPCProxyObject__forwardInvocationAsynchronously___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _fixupArgumentsForInvocation:*(a1 + 40)];
  v2 = *(a1 + 40);

  return [v2 invoke];
}

- (void)_fixupArgumentsForInvocation:(id)invocation
{
  v23 = *MEMORY[0x277D85DE8];
  invocationCopy = invocation;
  methodSignature = [invocationCopy methodSignature];
  if ([methodSignature numberOfArguments])
  {
    v6 = 0;
    do
    {
      v7 = [methodSignature getArgumentTypeAtIndex:v6];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = [&unk_2837C7598 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          v11 = 0;
          do
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(&unk_2837C7598);
            }

            if (!strcmp(v7, [*(*(&v18 + 1) + 8 * v11) UTF8String]))
            {
              v17 = 0;
              [invocationCopy getArgument:&v17 atIndex:v6];
              if (v17)
              {
                v12 = [(CADLocalXPCProxyObject *)self _updatedArgumentValueForArgumentValue:?];
                v16 = v12;
                if (v12)
                {
                  v13 = CFRetain(v12);
                  CFAutorelease(v13);
                  [invocationCopy setArgument:&v16 atIndex:v6];
                }
              }
            }

            ++v11;
          }

          while (v9 != v11);
          v14 = [&unk_2837C7598 countByEnumeratingWithState:&v18 objects:v22 count:16];
          v9 = v14;
        }

        while (v14);
      }

      ++v6;
    }

    while ([methodSignature numberOfArguments] != v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_updatedArgumentValueForArgumentValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CADLocalXPCProxyObject *)self _replacementArgumentValueForURLWrapper:valueCopy];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = valueCopy;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__11;
    v21 = __Block_byref_object_dispose__11;
    v22 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__CADLocalXPCProxyObject__updatedArgumentValueForArgumentValue___block_invoke;
    v14[3] = &unk_27851BA78;
    v14[4] = self;
    v16 = &v17;
    v7 = v6;
    v15 = v7;
    [v7 enumerateObjectsUsingBlock:v14];
    v5 = v18[5];
    v8 = v15;
LABEL_7:

    _Block_object_dispose(&v17, 8);
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = valueCopy;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__11;
    v21 = __Block_byref_object_dispose__11;
    v22 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__CADLocalXPCProxyObject__updatedArgumentValueForArgumentValue___block_invoke_2;
    v11[3] = &unk_27851BAA0;
    v11[4] = self;
    v13 = &v17;
    v7 = v9;
    v12 = v7;
    [v7 enumerateKeysAndObjectsUsingBlock:v11];
    v5 = v18[5];
    v8 = v12;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

uint64_t __64__CADLocalXPCProxyObject__updatedArgumentValueForArgumentValue___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) _updatedArgumentValueForArgumentValue:a2];
  v6 = v5;
  if (v5)
  {
    v7 = *(*(*(a1 + 48) + 8) + 40);
    v12 = v6;
    if (!v7)
    {
      v8 = [*(a1 + 40) mutableCopy];
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v7 = *(*(*(a1 + 48) + 8) + 40);
    }

    v5 = [v7 setObject:v12 atIndexedSubscript:a3];
  }

  return MEMORY[0x2821F96F8](v5);
}

void __64__CADLocalXPCProxyObject__updatedArgumentValueForArgumentValue___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = [*(a1 + 32) _updatedArgumentValueForArgumentValue:a3];
  if (v5)
  {
    v6 = *(*(*(a1 + 48) + 8) + 40);
    if (!v6)
    {
      v7 = [*(a1 + 40) mutableCopy];
      v8 = *(*(a1 + 48) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 48) + 8) + 40);
    }

    [v6 setObject:v5 forKeyedSubscript:v10];
  }
}

- (id)_replacementArgumentValueForURLWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  if (CalDatabaseIsCurrentProcessCalaccessd())
  {
    v4 = wrapperCopy;
  }

  else
  {
    v5 = [CADEmulatedSecurityScopedURLWrapper alloc];
    v6 = [wrapperCopy url];
    v4 = [(CADEmulatedSecurityScopedURLWrapper *)v5 initWithOriginalURL:v6];
  }

  return v4;
}

@end