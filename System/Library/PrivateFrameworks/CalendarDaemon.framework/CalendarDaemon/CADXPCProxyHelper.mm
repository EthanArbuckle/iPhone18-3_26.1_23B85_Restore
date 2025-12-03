@interface CADXPCProxyHelper
- (BOOL)_validateCADObjectIDsInInvocationArguments:(id)arguments;
- (CADXPCProxyHelper)initWithXPCConnection:(id)connection protocol:(id)protocol synchronous:(BOOL)synchronous;
- (CADXPCProxyHelperDelegate)delegate;
- (id)_replaceReplyBlockInInvocation:(id)invocation retryingAfterInitializationWithContextHolder:(id)holder;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)_callReplyHandler:(id)handler ofInvocation:(id)invocation withErrorCode:(int64_t)code;
- (void)_tryInvokeWithGenerationValidation:(id)validation target:(id)target replyBlock:(id)block contextHolder:(id)holder;
- (void)forwardInvocation:(id)invocation;
@end

@implementation CADXPCProxyHelper

- (CADXPCProxyHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CADXPCProxyHelper)initWithXPCConnection:(id)connection protocol:(id)protocol synchronous:(BOOL)synchronous
{
  connectionCopy = connection;
  protocolCopy = protocol;
  v14.receiver = self;
  v14.super_class = CADXPCProxyHelper;
  v11 = [(CADXPCProxyHelper *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_connection, connection);
    objc_storeStrong(&v12->_protocol, protocol);
    v12->_synchronous = synchronous;
  }

  return v12;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v14.receiver = self;
  v14.super_class = CADXPCProxyHelper;
  v5 = [(CADXPCProxyHelper *)&v14 methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
LABEL_7:
    v12 = v7;
    goto LABEL_8;
  }

  protocol = self->_protocol;
  if (protocol)
  {
    MethodDescription = protocol_getMethodDescription(protocol, selector, 1, 1);
    types = MethodDescription.types;
    if (MethodDescription.name || (v11 = protocol_getMethodDescription(self->_protocol, selector, 0, 1), types = v11.types, v11.name))
    {
      v7 = [MEMORY[0x277CBEB08] signatureWithObjCTypes:types];
      goto LABEL_7;
    }
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v5 = [MEMORY[0x277CF7820] copyReplyBlockFromInvocation:invocationCopy];
  if (self->_connection)
  {
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v21 = 1;
    v6 = objc_opt_new();
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __39__CADXPCProxyHelper_forwardInvocation___block_invoke;
    v14[3] = &unk_27851AE20;
    v7 = v5;
    v15 = v7;
    v19 = v20;
    v8 = v6;
    v16 = v8;
    selfCopy = self;
    v9 = invocationCopy;
    v18 = v9;
    v10 = MEMORY[0x22AA4DCD0](v14);
    connection = self->_connection;
    if (self->_synchronous)
    {
      [(CADXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
    }

    else
    {
      [(CADXPCConnection *)connection remoteObjectProxyWithErrorHandler:v10];
    }
    v12 = ;
    if (v12)
    {
      v13 = [(CADXPCProxyHelper *)self _replaceReplyBlockInInvocation:v9 retryingAfterInitializationWithContextHolder:v8];
      if (v13)
      {
        [v8 retainProxy:v12 andArgumentsInInvocation:v9];
      }

      [(CADXPCProxyHelper *)self _tryInvokeWithGenerationValidation:v9 target:v12 replyBlock:v7 contextHolder:v8];
    }

    _Block_object_dispose(v20, 8);
  }

  else
  {
    [(CADXPCProxyHelper *)self _callReplyHandler:v5 ofInvocation:invocationCopy withErrorCode:1021];
  }
}

void __39__CADXPCProxyHelper_forwardInvocation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    if ([v3 code] == 4097)
    {
      v5 = *MEMORY[0x277CCA050];
      v6 = [v4 domain];
      LODWORD(v5) = [v5 isEqualToString:v6];

      if (v5)
      {
        if (*(*(*(a1 + 64) + 8) + 24) >= 1)
        {
          v7 = getCADXPCProxyHelperLogHandle();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *v13 = 0;
            _os_log_impl(&dword_22430B000, v7, OS_LOG_TYPE_DEFAULT, "Received NSXPCConnectionInterrupted from calaccessd connection. Attempting to resend message.", v13, 2u);
          }

          --*(*(*(a1 + 64) + 8) + 24);
          v8 = [*(a1 + 40) proxy];
          if (v8)
          {
            v9 = v8;
            [*(a1 + 48) _tryInvokeWithGenerationValidation:*(a1 + 56) target:v8 replyBlock:*(a1 + 32) contextHolder:*(a1 + 40)];

            goto LABEL_18;
          }

          v11 = getCADXPCProxyHelperLogHandle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            __39__CADXPCProxyHelper_forwardInvocation___block_invoke_cold_1();
          }
        }
      }
    }

    v12 = getCADXPCProxyHelperLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __39__CADXPCProxyHelper_forwardInvocation___block_invoke_cold_2();
    }

    [*(a1 + 40) clear];
    [*(a1 + 48) _callReplyHandler:*(a1 + 32) ofInvocation:*(a1 + 56) withErrorCode:{objc_msgSend(v4, "code")}];
  }

  else
  {
    v10 = getCADXPCProxyHelperLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __39__CADXPCProxyHelper_forwardInvocation___block_invoke_cold_3();
    }
  }

LABEL_18:
}

- (id)_replaceReplyBlockInInvocation:(id)invocation retryingAfterInitializationWithContextHolder:(id)holder
{
  invocationCopy = invocation;
  holderCopy = holder;
  v8 = [MEMORY[0x277CF7820] replyBlockArgumentIndex:invocationCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
    goto LABEL_15;
  }

  v10 = v8;
  v11 = [MEMORY[0x277CF7820] copyReplyBlockFromInvocation:invocationCopy];
  v12 = _Block_signature(v11);
  if (!v12 || !*v12)
  {
    goto LABEL_11;
  }

  v13 = [MEMORY[0x277CBEB08] signatureWithObjCTypes:v12];
  if ([v13 numberOfArguments] < 2 || (v14 = objc_msgSend(v13, "getArgumentTypeAtIndex:", 1), *v14 != 105))
  {

    goto LABEL_11;
  }

  v15 = v14[1];

  if (v15)
  {
LABEL_11:
    v16 = getCADXPCProxyHelperLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [CADXPCProxyHelper _replaceReplyBlockInInvocation:invocationCopy retryingAfterInitializationWithContextHolder:v16];
    }

    v9 = 0;
    goto LABEL_14;
  }

  if ([(CADXPCProxyHelper *)self _shouldResendInitializationOptionsForInvocation:invocationCopy])
  {
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v26 = 0;
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __97__CADXPCProxyHelper__replaceReplyBlockInInvocation_retryingAfterInitializationWithContextHolder___block_invoke_2;
    v21 = &unk_27851AEC0;
    v22 = holderCopy;
    v23 = v11;
    v24 = invocationCopy;
    v33 = __NSMakeSpecialForwardingCaptureBlock();

    _Block_object_dispose(v25, 8);
  }

  else
  {
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __97__CADXPCProxyHelper__replaceReplyBlockInInvocation_retryingAfterInitializationWithContextHolder___block_invoke;
    v30 = &unk_27851AE48;
    v31 = holderCopy;
    v32 = v11;
    v33 = __NSMakeSpecialForwardingCaptureBlock();
  }

  [invocationCopy setArgument:&v33 atIndex:{v10, v18, v19, v20, v21}];
  v9 = v33;

LABEL_14:
LABEL_15:

  return v9;
}

void __97__CADXPCProxyHelper__replaceReplyBlockInInvocation_retryingAfterInitializationWithContextHolder___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 clear];
  [v4 setTarget:*(a1 + 40)];
  [v4 invoke];
}

void __97__CADXPCProxyHelper__replaceReplyBlockInInvocation_retryingAfterInitializationWithContextHolder___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v25 = 0;
  [v3 getArgument:&v25 atIndex:1];
  v4 = *(*(a1 + 64) + 8);
  if ((*(v4 + 24) & 1) != 0 || v25 != 1019)
  {
    [*(a1 + 32) clear];
    [v3 setTarget:*(a1 + 48)];
    [v3 invoke];
  }

  else
  {
    *(v4 + 24) = 1;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __97__CADXPCProxyHelper__replaceReplyBlockInInvocation_retryingAfterInitializationWithContextHolder___block_invoke_3;
    v22[3] = &unk_27851AE70;
    *&v5 = *(a1 + 32);
    *(&v5 + 1) = *(a1 + 40);
    v15 = v5;
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    *&v8 = v6;
    *(&v8 + 1) = v7;
    v23 = v15;
    v24 = v8;
    v9 = MEMORY[0x22AA4DCD0](v22);
    v10 = *(a1 + 40);
    v11 = *(v10 + 8);
    if (*(v10 + 24) == 1)
    {
      [v11 synchronousRemoteObjectProxyWithErrorHandler:v9];
    }

    else
    {
      [v11 remoteObjectProxyWithErrorHandler:v9];
    }
    v12 = ;
    v13 = [*(a1 + 40) initializationOptions];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __97__CADXPCProxyHelper__replaceReplyBlockInInvocation_retryingAfterInitializationWithContextHolder___block_invoke_22;
    v17[3] = &unk_27851AE98;
    v16 = *(a1 + 32);
    v14 = v16.i64[0];
    v18 = vextq_s8(v16, v16, 8uLL);
    v19 = v3;
    v20 = *(a1 + 48);
    v21 = *(a1 + 56);
    [v12 CADDatabaseSetInitializationOptions:v13 reply:v17];
  }
}

void __97__CADXPCProxyHelper__replaceReplyBlockInInvocation_retryingAfterInitializationWithContextHolder___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = getCADXPCProxyHelperLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __97__CADXPCProxyHelper__replaceReplyBlockInInvocation_retryingAfterInitializationWithContextHolder___block_invoke_3_cold_1();
  }

  [*(a1 + 32) clear];
  [*(a1 + 40) _callReplyHandler:*(a1 + 48) ofInvocation:*(a1 + 56) withErrorCode:{objc_msgSend(v3, "code")}];
}

void __97__CADXPCProxyHelper__replaceReplyBlockInInvocation_retryingAfterInitializationWithContextHolder___block_invoke_22(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) delegate];
  [v5 setDatabaseRestoreGeneration:a3];

  v6 = [*(a1 + 40) proxy];
  if (v6)
  {
    [*(a1 + 32) _tryInvokeWithGenerationValidation:*(a1 + 64) target:v6 replyBlock:*(a1 + 56) contextHolder:*(a1 + 40)];
  }

  else
  {
    v7 = getCADXPCProxyHelperLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __39__CADXPCProxyHelper_forwardInvocation___block_invoke_cold_1();
    }

    [*(a1 + 40) clear];
    [*(a1 + 48) setTarget:*(a1 + 56)];
    [*(a1 + 48) invoke];
  }
}

- (void)_tryInvokeWithGenerationValidation:(id)validation target:(id)target replyBlock:(id)block contextHolder:(id)holder
{
  validationCopy = validation;
  targetCopy = target;
  blockCopy = block;
  holderCopy = holder;
  if (blockCopy && ![(CADXPCProxyHelper *)self _validateCADObjectIDsInInvocationArguments:validationCopy])
  {
    [holderCopy clear];
    [(CADXPCProxyHelper *)self _callReplyHandler:blockCopy ofInvocation:validationCopy withErrorCode:1010];
  }

  else
  {
    [validationCopy invokeWithTarget:targetCopy];
  }
}

- (BOOL)_validateCADObjectIDsInInvocationArguments:(id)arguments
{
  v34 = *MEMORY[0x277D85DE8];
  argumentsCopy = arguments;
  delegate = [(CADXPCProxyHelper *)self delegate];
  if (![delegate shouldValidateObjectIDs] || (v6 = objc_msgSend(delegate, "databaseRestoreGeneration"), v6 == -1))
  {
    v13 = 1;
    goto LABEL_24;
  }

  v7 = v6;
  methodSignature = [argumentsCopy methodSignature];
  if (![methodSignature numberOfArguments])
  {
LABEL_21:
    v13 = 1;
    goto LABEL_22;
  }

  v9 = 0;
  while (1)
  {
    v10 = [methodSignature getArgumentTypeAtIndex:v9];
    if (*v10 != 64)
    {
      goto LABEL_20;
    }

    if (v10[1])
    {
      goto LABEL_20;
    }

    v23 = 0;
    [argumentsCopy getArgument:&v23 atIndex:v9];
    if (!v23)
    {
      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v23;
      if ([v11 restoreGeneration]!= -1 && [v11 restoreGeneration]!= v7)
      {
        v16 = getCADXPCProxyHelperLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          Name = sel_getName([argumentsCopy selector]);
          restoreGeneration = [v11 restoreGeneration];
          *buf = 136447234;
          v25 = Name;
          v26 = 1024;
          v27 = v9;
          v28 = 2112;
          v29 = v11;
          v30 = 1024;
          v31 = restoreGeneration;
          v32 = 1024;
          v33 = v7;
          _os_log_debug_impl(&dword_22430B000, v16, OS_LOG_TYPE_DEBUG, "Found CADObjectID argument with unexpected restore generation in call to selector %{public}s. index = %d, objectID = %@, generation = %d, expected = %d", buf, 0x28u);
        }

        goto LABEL_27;
      }

      goto LABEL_19;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

LABEL_20:
    if (++v9 == [methodSignature numberOfArguments])
    {
      goto LABEL_21;
    }
  }

  v11 = v23;
  firstObject = [v11 firstObject];
  if (!firstObject || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_18:

LABEL_19:
    goto LABEL_20;
  }

  v16 = firstObject;
  if ([v16 restoreGeneration]== -1 || [v16 restoreGeneration]== v7)
  {

    goto LABEL_18;
  }

  v18 = getCADXPCProxyHelperLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v21 = sel_getName([argumentsCopy selector]);
    restoreGeneration2 = [v16 restoreGeneration];
    *buf = 136447234;
    v25 = v21;
    v26 = 1024;
    v27 = v9;
    v28 = 2112;
    v29 = v16;
    v30 = 1024;
    v31 = restoreGeneration2;
    v32 = 1024;
    v33 = v7;
    _os_log_debug_impl(&dword_22430B000, v18, OS_LOG_TYPE_DEBUG, "Found CADObjectID in array argument with unexpected restore generation in call to selector %{public}s. index = %d, objectID = %@, generation = %d, expected = %d", buf, 0x28u);
  }

LABEL_27:
  v13 = 0;
LABEL_22:

LABEL_24:
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)_callReplyHandler:(id)handler ofInvocation:(id)invocation withErrorCode:(int64_t)code
{
  handlerCopy = handler;
  invocationCopy = invocation;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__CADXPCProxyHelper__callReplyHandler_ofInvocation_withErrorCode___block_invoke;
  v14[3] = &unk_27851A300;
  v10 = handlerCopy;
  v15 = v10;
  v11 = invocationCopy;
  v16 = v11;
  codeCopy = code;
  v12 = MEMORY[0x22AA4DCD0](v14);
  v13 = v12;
  if (self->_synchronous)
  {
    (*(v12 + 16))(v12);
  }

  else
  {
    if (_callReplyHandler_ofInvocation_withErrorCode__onceToken != -1)
    {
      [CADXPCProxyHelper _callReplyHandler:ofInvocation:withErrorCode:];
    }

    dispatch_async(_callReplyHandler_ofInvocation_withErrorCode__asyncQueue, v13);
  }
}

void __66__CADXPCProxyHelper__callReplyHandler_ofInvocation_withErrorCode___block_invoke_2()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("EventKitXPCErrorReplyQueue", v2);
  v1 = _callReplyHandler_ofInvocation_withErrorCode__asyncQueue;
  _callReplyHandler_ofInvocation_withErrorCode__asyncQueue = v0;
}

void __39__CADXPCProxyHelper_forwardInvocation___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __39__CADXPCProxyHelper_forwardInvocation___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_replaceReplyBlockInInvocation:(void *)a1 retryingAfterInitializationWithContextHolder:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector([a1 selector]);
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(&dword_22430B000, a2, OS_LOG_TYPE_DEBUG, "Reply block does not have take an error as its first argument in method: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __97__CADXPCProxyHelper__replaceReplyBlockInInvocation_retryingAfterInitializationWithContextHolder___block_invoke_3_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end