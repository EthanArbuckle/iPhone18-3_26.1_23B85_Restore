@interface EMRemoteConnection
+ (OS_os_log)log;
- (BOOL)_respondsToRemoteSelector:(SEL)a3;
- (EMRemoteConnection)initWithProtocol:(id)a3 proxyGenerator:(id)a4;
- (EMRemoteProxyGenerator)generator;
- (NSString)debugDescription;
- (NSString)description;
- (id)_methodSignatureForRemoteSelector:(SEL)a3;
- (id)proxy;
- (id)proxyCreator:(id *)a3;
- (id)reattemptingRemoteObjectProxy;
- (id)reattemptingRemoteObjectProxyWithReattemptHandler:(id)a3;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (id)requestRecoveryAssertion;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (void)_reattemptInvocation:(id)a3 withProxy:(id)a4 originalError:(id)a5;
- (void)_sendInvocation:(id)a3 withProxy:(id)a4;
- (void)addRecoveryHandler:(id)a3;
- (void)addResetHandler:(id)a3;
- (void)dealloc;
- (void)recover;
- (void)reset;
@end

@implementation EMRemoteConnection

- (id)remoteObjectProxy
{
  v3 = [_EMRemoteInterfaceDistantObject alloc];
  WeakRetained = objc_loadWeakRetained(&self->_generator);
  v5 = defaultNonReattemptingHandlerForConnection(self);
  v6 = [(_EMRemoteInterfaceDistantObject *)v3 initWithRemoteInterface:self proxyGenerator:WeakRetained synchronous:0 reattemptHandler:v5];

  return v6;
}

- (id)reattemptingRemoteObjectProxy
{
  v3 = [_EMRemoteInterfaceDistantObject alloc];
  WeakRetained = objc_loadWeakRetained(&self->_generator);
  v5 = defaultReattemptingHandlerForConnection(self);
  v6 = [(_EMRemoteInterfaceDistantObject *)v3 initWithRemoteInterface:self proxyGenerator:WeakRetained synchronous:0 reattemptHandler:v5];

  return v6;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__EMRemoteConnection_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_34 != -1)
  {
    dispatch_once(&log_onceToken_34, block);
  }

  v2 = log_log_34;

  return v2;
}

void __25__EMRemoteConnection_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_34;
  log_log_34 = v1;
}

- (EMRemoteConnection)initWithProtocol:(id)a3 proxyGenerator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v25.receiver = self;
  v25.super_class = EMRemoteConnection;
  v9 = [(EMRemoteConnection *)&v25 init];
  if (v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = NSStringFromProtocol(v7);
    v12 = [v10 stringWithFormat:@"com.apple.email.EMRemoteConnection.%@", v11];

    v13 = [v12 UTF8String];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_get_global_queue(21, 0);
    v16 = dispatch_queue_create_with_target_V2(v13, v14, v15);
    queue = v9->_queue;
    v9->_queue = v16;

    objc_storeWeak(&v9->_generator, v8);
    objc_storeStrong(&v9->_protocol, a3);
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    resetHandlers = v9->_resetHandlers;
    v9->_resetHandlers = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    recoveryHandlers = v9->_recoveryHandlers;
    v9->_recoveryHandlers = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingReattempts = v9->_pendingReattempts;
    v9->_pendingReattempts = v22;

    v9->_knownSelectors = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
    atomic_store(0, &v9->_activeVouchers);
  }

  return v9;
}

- (void)dealloc
{
  CFRelease(self->_knownSelectors);
  v3.receiver = self;
  v3.super_class = EMRemoteConnection;
  [(EMRemoteConnection *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromProtocol(self->_protocol);
  v6 = [(EMRemoteConnection *)self proxy];
  v7 = @"active";
  if (!v6)
  {
    v7 = @"inactive";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p> %@ (%@)", v4, self, v5, v7];

  return v8;
}

- (NSString)debugDescription
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_resetHandlers count];
  v4 = [(NSMutableArray *)self->_recoveryHandlers count];
  v5 = [(NSMutableArray *)self->_pendingReattempts copy];
  os_unfair_lock_unlock(&self->_lock);
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = NSStringFromProtocol(self->_protocol);
  v9 = [(EMRemoteConnection *)self proxy];
  v10 = [v6 stringWithFormat:@"<%@: %p> %@: %ld reset, %ld recovery, currentProxy=%p, pendingReattempts=%@", v7, self, v8, v3, v4, v9, v5];

  return v10;
}

- (void)reset
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  self->_waitingForRecovery = 1;
  v3 = [(NSMutableArray *)self->_resetHandlers copy];
  os_unfair_lock_unlock(&self->_lock);
  os_unfair_lock_lock(&self->_proxyLock);
  currentProxy = self->_currentProxy;
  self->_currentProxy = 0;

  os_unfair_lock_unlock(&self->_proxyLock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v8) + 16))(*(*(&v10 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)recover
{
  v24 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  self->_waitingForRecovery = 0;
  v3 = [(NSMutableArray *)self->_pendingReattempts copy];
  v4 = [(NSMutableArray *)self->_recoveryHandlers copy];
  [(NSMutableArray *)self->_pendingReattempts removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v6)
  {
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v18 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v6);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v10)
  {
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v12++) perform];
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addResetHandler:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  resetHandlers = self->_resetHandlers;
  v6 = [v4 copy];

  v7 = _Block_copy(v6);
  [(NSMutableArray *)resetHandlers addObject:v7];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addRecoveryHandler:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  recoveryHandlers = self->_recoveryHandlers;
  v6 = [v4 copy];

  v7 = _Block_copy(v6);
  [(NSMutableArray *)recoveryHandlers addObject:v7];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)proxy
{
  os_unfair_lock_lock(&self->_proxyLock);
  v3 = self->_currentProxy;
  os_unfair_lock_unlock(&self->_proxyLock);

  return v3;
}

- (id)proxyCreator:(id *)a3
{
  os_unfair_lock_lock(&self->_proxyLock);
  v5 = self->_currentProxy;
  if (!v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_generator);
    v7 = WeakRetained;
    if (WeakRetained)
    {
      protocol = self->_protocol;
      v13 = 0;
      v9 = [WeakRetained generateProxyForProtocol:protocol error:&v13];
      v10 = v13;
      currentProxy = self->_currentProxy;
      self->_currentProxy = v9;

      v5 = v9;
    }

    else if (a3)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"EMErrorDomain" code:2 userInfo:0];
      v10 = 0;
      *a3 = v5 = 0;
    }

    else
    {
      v10 = 0;
      v5 = 0;
    }
  }

  os_unfair_lock_unlock(&self->_proxyLock);

  return v5;
}

- (id)requestRecoveryAssertion
{
  v2 = [[EMRemoteConnectionRecoveryAssertion alloc] initWithConnection:self];

  return v2;
}

- (id)_methodSignatureForRemoteSelector:(SEL)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = CFDictionaryGetValue(self->_knownSelectors, a3);
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    if (protocol_getMethodDescription(self->_protocol, a3, 1, 1).name || protocol_getMethodDescription(self->_protocol, a3, 0, 1).name)
    {
      protocol = self->_protocol;
      v5 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:_protocol_getMethodTypeEncoding()];
      os_unfair_lock_lock(&self->_lock);
      CFDictionarySetValue(self->_knownSelectors, a3, v5);
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)_respondsToRemoteSelector:(SEL)a3
{
  v5 = 1;
  if (!protocol_getMethodDescription(self->_protocol, a3, 1, 1).name)
  {
    return protocol_getMethodDescription(self->_protocol, a3, 0, 1).name != 0;
  }

  return v5;
}

- (void)_reattemptInvocation:(id)a3 withProxy:(id)a4 originalError:(id)a5
{
  v6 = [_EMRemoteInterfaceDistantObjectReattempt recordedAttemptWithOriginalInvocation:a3 target:a4 error:a5];
  os_unfair_lock_lock(&self->_lock);
  if (self->_waitingForRecovery)
  {
    [(NSMutableArray *)self->_pendingReattempts addObject:v6];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    [v6 perform];
  }
}

- (void)_sendInvocation:(id)a3 withProxy:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 reattemptHandler];
  if ([v8 isSynchronous])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__EMRemoteConnection__sendInvocation_withProxy___block_invoke;
    block[3] = &unk_1E826F500;
    block[4] = self;
    v28 = v9;
    v29 = a2;
    v27 = v7;
    v11 = v9;
    dispatch_sync(queue, block);
  }

  else
  {
    v12 = CopyInvocation(v7);
    [v12 retainArguments];
    v11 = [v7 methodSignature];
    v13 = [v11 _classForObjectAtArgumentIndex:-1];
    if (v13 == objc_opt_class())
    {
      v14 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
      v25 = v14;
      [v7 setReturnValue:&v25];
    }

    else
    {
      v14 = 0;
    }

    v15 = self->_queue;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __48__EMRemoteConnection__sendInvocation_withProxy___block_invoke_76;
    v19[3] = &unk_1E826F550;
    v24 = v9;
    v20 = v12;
    v21 = self;
    v22 = v8;
    v23 = v14;
    v16 = v14;
    v17 = v12;
    v18 = v9;
    dispatch_async(v15, v19);
  }
}

void __48__EMRemoteConnection__sendInvocation_withProxy___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v24 = 0;
  v3 = [v2 proxyCreator:&v24];
  v4 = v24;
  v5 = v4;
  if (v3)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __48__EMRemoteConnection__sendInvocation_withProxy___block_invoke_2;
    v20 = &unk_1E826F4D8;
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v22 = v6;
    v23 = v7;
    v21 = *(a1 + 32);
    v8 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&v17];
    [*(a1 + 40) invokeWithTarget:{v8, v17, v18, v19, v20}];

    v9 = v22;
LABEL_3:

    goto LABEL_4;
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    v15 = v4;
    if (!v4)
    {
      v15 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"Creating an proxy creator failed but we didn't got an error"];
    }

    v16 = (*(v14 + 16))(v14, v15);
    if (!v5)
    {
    }

    if (v16)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"EMRemoteConnection.m" lineNumber:393 description:@"reattempt handler returned YES for a synchronous message which is not allowed."];
      goto LABEL_3;
    }
  }

LABEL_4:
  if (v5)
  {
    v10 = +[EMRemoteConnection log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = [v5 ef_publicDescription];
      *buf = 138543618;
      v26 = v11;
      v27 = 2114;
      v28 = v12;
      _os_log_impl(&dword_1C6655000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed to retrive a valid proxyCreator due to error: %{public}@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __48__EMRemoteConnection__sendInvocation_withProxy___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[5];
  if (v4)
  {
    v7 = v3;
    v5 = (*(v4 + 16))();
    v3 = v7;
    if (v5)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a1[6] object:a1[4] file:@"EMRemoteConnection.m" lineNumber:386 description:@"reattempt handler returned YES for a synchronous message which is not allowed."];

      v3 = v7;
    }
  }
}

void __48__EMRemoteConnection__sendInvocation_withProxy___block_invoke_76(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = CopyInvocation(*(a1 + 32));
    [v2 setTarget:0];
    [v2 retainArguments];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__EMRemoteConnection__sendInvocation_withProxy___block_invoke_2_77;
    aBlock[3] = &unk_1E826F528;
    v18 = *(a1 + 64);
    v3 = *(a1 + 48);
    aBlock[4] = *(a1 + 40);
    v16 = v2;
    v17 = v3;
    v4 = v2;
    v5 = _Block_copy(aBlock);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);
  v14 = 0;
  v7 = [v6 proxyCreator:&v14];
  v8 = v14;
  v9 = v8;
  if (v7)
  {
    if (v5)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __48__EMRemoteConnection__sendInvocation_withProxy___block_invoke_3;
      v12[3] = &unk_1E826EAC0;
      v12[4] = *(a1 + 40);
      v13 = v5;
      v10 = [v7 remoteObjectProxyWithErrorHandler:v12];
    }

    else
    {
      v10 = [v7 remoteObjectProxy];
    }

    [*(a1 + 32) invokeWithTarget:v10];
    if (*(a1 + 56))
    {
      v11 = 0;
      [*(a1 + 32) getReturnValue:&v11];
      if (v11)
      {
        [*(a1 + 56) addChild:v11 withPendingUnitCount:1];
      }
    }

LABEL_16:

    goto LABEL_17;
  }

  if (v5)
  {
    v10 = v8;
    if (!v8)
    {
      v10 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"Creating an proxy creator failed but we didn't got an error"];
    }

    (*(v5 + 2))(v5, v10);
    if (!v9)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
}

void __48__EMRemoteConnection__sendInvocation_withProxy___block_invoke_2_77(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 56) + 16))())
  {
    [*(a1 + 32) _reattemptInvocation:*(a1 + 40) withProxy:*(a1 + 48) originalError:v3];
  }
}

void __48__EMRemoteConnection__sendInvocation_withProxy___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__EMRemoteConnection__sendInvocation_withProxy___block_invoke_4;
  v7[3] = &unk_1E826D1F0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (id)reattemptingRemoteObjectProxyWithReattemptHandler:(id)a3
{
  v4 = a3;
  v5 = [_EMRemoteInterfaceDistantObject alloc];
  WeakRetained = objc_loadWeakRetained(&self->_generator);
  v7 = [(_EMRemoteInterfaceDistantObject *)v5 initWithRemoteInterface:self proxyGenerator:WeakRetained synchronous:0 reattemptHandler:v4];

  return v7;
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [_EMRemoteInterfaceDistantObject alloc];
  WeakRetained = objc_loadWeakRetained(&self->_generator);
  v7 = nonReattemptingHandlerForErrorHandler(v4);
  v8 = [(_EMRemoteInterfaceDistantObject *)v5 initWithRemoteInterface:self proxyGenerator:WeakRetained synchronous:0 reattemptHandler:v7];

  return v8;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [_EMRemoteInterfaceDistantObject alloc];
  WeakRetained = objc_loadWeakRetained(&self->_generator);
  v7 = nonReattemptingHandlerForErrorHandler(v4);
  v8 = [(_EMRemoteInterfaceDistantObject *)v5 initWithRemoteInterface:self proxyGenerator:WeakRetained synchronous:1 reattemptHandler:v7];

  return v8;
}

- (EMRemoteProxyGenerator)generator
{
  WeakRetained = objc_loadWeakRetained(&self->_generator);

  return WeakRetained;
}

@end