@interface CRInvocationChain
- (BOOL)_isEligibleForSelector:(SEL)a3;
- (BOOL)_respondsToSelector:(SEL)a3;
- (BOOL)isEligibleForSelector:(SEL)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (CRInvocationChain)init;
- (CRInvocationChainDelegate)delegate;
- (NSPointerArray)_chainedObjects;
- (id)_methodSignatureForSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)_accessChainedObjectsSafely:(id)a3;
- (void)_addChainedObject:(id)a3;
- (void)_enumerateChainedObjectsUsingBlock:(id)a3;
- (void)_forwardInvocation:(id)a3;
- (void)addChainedObject:(id)a3;
- (void)enumerateChainedObjectsUsingBlock:(id)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation CRInvocationChain

- (CRInvocationChain)init
{
  v7.receiver = self;
  v7.super_class = CRInvocationChain;
  v2 = [(CRInvocationChain *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.cards.CRInvocationChain.chainedObjectsAccessQueue", v3);
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    dispatch_queue_set_specific(*(v2 + 1), _CRInvocationChainRecursiveKey, *(v2 + 1), 0);
  }

  return v2;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__CRInvocationChain_forwardInvocation___block_invoke;
  v6[3] = &unk_278DA5800;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CRInvocationChain *)self _accessChainedObjectsSafely:v6];
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__CRInvocationChain_respondsToSelector___block_invoke;
  v5[3] = &unk_278DA5828;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = a3;
  [(CRInvocationChain *)self _accessChainedObjectsSafely:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __40__CRInvocationChain_respondsToSelector___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _respondsToSelector:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__CRInvocationChain_methodSignatureForSelector___block_invoke;
  v5[3] = &unk_278DA5828;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = a3;
  [(CRInvocationChain *)self _accessChainedObjectsSafely:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __48__CRInvocationChain_methodSignatureForSelector___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _methodSignatureForSelector:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)addChainedObject:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__CRInvocationChain_addChainedObject___block_invoke;
  v6[3] = &unk_278DA5800;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CRInvocationChain *)self _accessChainedObjectsSafely:v6];
}

- (void)enumerateChainedObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__CRInvocationChain_enumerateChainedObjectsUsingBlock___block_invoke;
  v6[3] = &unk_278DA5850;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CRInvocationChain *)self _accessChainedObjectsSafely:v6];
}

- (BOOL)isEligibleForSelector:(SEL)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__CRInvocationChain_isEligibleForSelector___block_invoke;
  v5[3] = &unk_278DA5828;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = a3;
  [(CRInvocationChain *)self _accessChainedObjectsSafely:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __43__CRInvocationChain_isEligibleForSelector___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isEligibleForSelector:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_accessChainedObjectsSafely:(id)a3
{
  v4 = a3;
  if (v4)
  {
    specific = dispatch_get_specific(_CRInvocationChainRecursiveKey);
    chainedObjectsAccessQueue = self->_chainedObjectsAccessQueue;
    if (specific == chainedObjectsAccessQueue)
    {
      v4[2](v4);
    }

    else
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x3032000000;
      v14 = __Block_byref_object_copy_;
      v15 = __Block_byref_object_dispose_;
      v16 = 0;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __49__CRInvocationChain__accessChainedObjectsSafely___block_invoke;
      v8[3] = &unk_278DA5878;
      v9 = v4;
      v10 = &v11;
      dispatch_sync(chainedObjectsAccessQueue, v8);
      v7 = v12[5];
      if (v7)
      {
        objc_exception_throw(v7);
      }

      _Block_object_dispose(&v11, 8);
    }
  }
}

- (NSPointerArray)_chainedObjects
{
  chainedObjects = self->_chainedObjects;
  if (!chainedObjects)
  {
    v4 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    v5 = self->_chainedObjects;
    self->_chainedObjects = v4;

    chainedObjects = self->_chainedObjects;
  }

  [(NSPointerArray *)chainedObjects addPointer:0];
  [(NSPointerArray *)self->_chainedObjects compact];
  v6 = self->_chainedObjects;

  return v6;
}

- (void)_forwardInvocation:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CRInvocationChain *)self _chainedObjects];
  v6 = NSStringFromSelector([v4 selector]);
  v7 = CRLogContextCards;
  if (os_log_type_enabled(CRLogContextCards, OS_LOG_TYPE_DEBUG))
  {
    [(CRInvocationChain *)v6 _forwardInvocation:v5, v7];
  }

  v20 = v6;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * v12);
        v14 = [(CRInvocationChain *)self delegate];
        v15 = [v14 invocationChain:self shouldForwardInvocation:v4 toTarget:v13];

        if ((objc_opt_respondsToSelector() & 1) != 0 && v15)
        {
          v18 = CRLogContextCards;
          v17 = v20;
          if (os_log_type_enabled(CRLogContextCards, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v27 = v20;
            v28 = 2112;
            v29 = v13;
            _os_log_impl(&dword_24327C000, v18, OS_LOG_TYPE_INFO, "Invoking invocation %@ with target: %@", buf, 0x16u);
          }

          [v4 invokeWithTarget:v13];

          goto LABEL_18;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = CRLogContextCards;
  v17 = v20;
  if (os_log_type_enabled(CRLogContextCards, OS_LOG_TYPE_ERROR))
  {
    [(CRInvocationChain *)v20 _forwardInvocation:v16];
  }

  v21.receiver = self;
  v21.super_class = CRInvocationChain;
  [(CRInvocationChain *)&v21 forwardInvocation:v4];
LABEL_18:

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)_respondsToSelector:(SEL)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = CRInvocationChain;
  v5 = [(CRInvocationChain *)&v18 respondsToSelector:?];
  if ([(CRInvocationChain *)self _isEligibleForSelector:a3])
  {
    [(CRInvocationChain *)self _chainedObjects];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v17 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v5 = 1;
            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)_methodSignatureForSelector:(SEL)a3
{
  v20 = *MEMORY[0x277D85DE8];
  [(CRInvocationChain *)self _chainedObjects];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) methodSignatureForSelector:a3];
        if (v10)
        {
          v11 = v10;

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14.receiver = self;
  v14.super_class = CRInvocationChain;
  v11 = [(CRInvocationChain *)&v14 methodSignatureForSelector:a3];
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_addChainedObject:(id)a3
{
  v4 = a3;
  v5 = [(CRInvocationChain *)self _chainedObjects];
  [v5 addPointer:v4];
}

- (void)_enumerateChainedObjectsUsingBlock:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    [(CRInvocationChain *)self _chainedObjects];
    v15 = 0;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v14 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v11 + 1) + 8 * v9), &v15);
        if (v15)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isEligibleForSelector:(SEL)a3
{
  v3 = [(CRInvocationChain *)self _chainedObjects];
  v4 = [v3 count] != 0;

  return v4;
}

- (CRInvocationChainDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __49__CRInvocationChain__accessChainedObjectsSafely___block_invoke_cold_1(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_begin_catch(a1);
  v5 = *(*(a3 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_end_catch();
}

- (void)_forwardInvocation:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_24327C000, log, OS_LOG_TYPE_DEBUG, "Forwarding invocation %@ to candidates: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_forwardInvocation:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24327C000, a2, OS_LOG_TYPE_ERROR, "No members of the chain were eligble for invocation %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end