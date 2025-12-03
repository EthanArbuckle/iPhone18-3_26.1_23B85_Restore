@interface BMComputeSourceServer
- (BMComputeSourceDaemon)source;
- (BMComputeSourceServer)initWithQueue:(id)queue domain:(unint64_t)domain source:(id)source;
- (BMComputeSourceServer)initWithQueue:(id)queue domain:(unint64_t)domain source:(id)source listener:(id)listener;
- (BOOL)_acceptConnection:(id)connection;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)validateConnection:(id)connection error:(id *)error;
- (void)activate;
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
- (void)eventsPrunedWithStreamIdentifier:(id)identifier account:(id)account remoteName:(id)name reason:(unint64_t)reason;
- (void)replyToInvocation:(id)invocation withError:(id)error;
@end

@implementation BMComputeSourceServer

- (BMComputeSourceDaemon)source
{
  WeakRetained = objc_loadWeakRetained(&self->_source);

  return WeakRetained;
}

- (BMComputeSourceServer)initWithQueue:(id)queue domain:(unint64_t)domain source:(id)source
{
  if (!domain)
  {
    v10 = MEMORY[0x1E698E8F0];
    goto LABEL_5;
  }

  if (domain == 1)
  {
    v10 = MEMORY[0x1E698E8D8];
LABEL_5:
    v5 = *v10;
  }

  v11 = MEMORY[0x1E698EA30];
  sourceCopy = source;
  queueCopy = queue;
  v14 = [[v11 alloc] initWithMachServiceName:v5 queue:queueCopy];
  v15 = [(BMComputeSourceServer *)self initWithQueue:queueCopy domain:domain source:sourceCopy listener:v14];

  return v15;
}

- (BMComputeSourceServer)initWithQueue:(id)queue domain:(unint64_t)domain source:(id)source listener:(id)listener
{
  queueCopy = queue;
  sourceCopy = source;
  listenerCopy = listener;
  dispatch_assert_queue_V2(queueCopy);
  v17.receiver = self;
  v17.super_class = BMComputeSourceServer;
  v14 = [(BMComputeSourceServer *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_queue, queue);
    objc_storeWeak(&v15->_source, sourceCopy);
    objc_storeStrong(&v15->_listener, listener);
    [(BMXPCListener *)v15->_listener setDelegate:v15];
    v15->_domain = domain;
  }

  return v15;
}

- (void)activate
{
  queue = [(BMComputeSourceServer *)self queue];
  dispatch_assert_queue_V2(queue);

  listener = self->_listener;

  [(BMXPCListener *)listener activate];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v23 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x1E698E9D8] processWithXPCConnection:connectionCopy];
  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    executableName = [v9 executableName];
    v19 = 138543618;
    v20 = executableName;
    v21 = 1024;
    v22 = [v9 pid];
    _os_log_impl(&dword_1848EE000, v10, OS_LOG_TYPE_DEFAULT, "Incoming connection from %{public}@(%d)", &v19, 0x12u);
  }

  v12 = [MEMORY[0x1E698E970] policyForProcess:v9 connectionFlags:0 useCase:*MEMORY[0x1E698E948]];
  v13 = [v12 allowsConnectionToComputeSourceServiceWithDomain:self->_domain];
  v14 = __biome_log_for_category();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [BMComputeSourceServer listener:v9 shouldAcceptNewConnection:v15];
    }

    v16 = [(BMComputeSourceServer *)self _acceptConnection:connectionCopy];
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [BMComputeSourceServer listener:v9 shouldAcceptNewConnection:v15];
    }

    v16 = 0;
  }

  objc_autoreleasePoolPop(v8);
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)_acceptConnection:(id)connection
{
  v4 = _acceptConnection__onceToken;
  connectionCopy = connection;
  if (v4 != -1)
  {
    [BMComputeSourceServer _acceptConnection:];
  }

  [connectionCopy setDelegate:self];
  [connectionCopy setExportedInterface:_acceptConnection__interface];
  [connectionCopy setExportedObject:self];
  [connectionCopy _setQueue:self->_queue];
  [connectionCopy activate];

  return 1;
}

uint64_t __43__BMComputeSourceServer__acceptConnection___block_invoke()
{
  _acceptConnection__interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF321320];

  return MEMORY[0x1EEE66BB8]();
}

- (void)replyToInvocation:(id)invocation withError:(id)error
{
  invocationCopy = invocation;
  errorCopy = error;
  v20 = errorCopy;
  methodSignature = [invocationCopy methodSignature];
  v8 = [methodSignature numberOfArguments] - 1;

  methodSignature2 = [invocationCopy methodSignature];
  v10 = [methodSignature2 getArgumentTypeAtIndex:v8];

  if (!strchr(v10, 64))
  {
    v18 = __biome_log_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [BMComputeSourceServer replyToInvocation:invocationCopy withError:?];
    }

    goto LABEL_10;
  }

  v19 = 0;
  [invocationCopy getArgument:&v19 atIndex:v8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = __biome_log_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [BMComputeSourceServer replyToInvocation:invocationCopy withError:&v19];
    }

LABEL_10:

    goto LABEL_16;
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  exportedInterface = [currentConnection exportedInterface];
  v13 = [exportedInterface replyBlockSignatureForSelector:{objc_msgSend(invocationCopy, "selector")}];

  v14 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:{objc_msgSend(v13, "UTF8String")}];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 numberOfArguments] - 1;
    if ([objc_msgSend(v15 _classForObjectAtArgumentIndex:{v16), "isSubclassOfClass:", objc_opt_class()}])
    {
      v17 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v15];
      [v17 retainArguments];
      [v17 setTarget:v19];
      [v17 setArgument:&v20 atIndex:v16];
      [v17 invoke];
    }

    else
    {
      v17 = __biome_log_for_category();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [BMComputeSourceServer replyToInvocation:invocationCopy withError:?];
      }
    }
  }

  else
  {
    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [BMComputeSourceServer replyToInvocation:invocationCopy withError:?];
    }
  }

  errorCopy = v20;
LABEL_16:
}

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  v31 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  invocationCopy = invocation;
  v22 = 0;
  v9 = [(BMComputeSourceServer *)self validateConnection:connectionCopy error:&v22];
  v10 = v22;
  if (v9)
  {
    [invocationCopy selector];
    if (objc_opt_respondsToSelector())
    {
      [invocationCopy invokeWithTarget:self];
    }

    else
    {
      v12 = __biome_log_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [BMComputeSourceServer connection:connectionCopy handleInvocation:invocationCopy isReply:?];
      }

      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E698E8C8];
      v23 = *MEMORY[0x1E696A578];
      v15 = MEMORY[0x1E696AEC0];
      v16 = NSStringFromSelector([invocationCopy selector]);
      v17 = [v15 stringWithFormat:@"Failed to route request -%@", v16];
      v24 = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v19 = [v13 errorWithDomain:v14 code:6 userInfo:v18];

      [(BMComputeSourceServer *)self replyToInvocation:invocationCopy withError:v19];
      [connectionCopy invalidate];
      v10 = v19;
    }
  }

  else
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v21 = NSStringFromSelector([invocationCopy selector]);
      *buf = 138412802;
      v26 = v21;
      v27 = 2112;
      v28 = connectionCopy;
      v29 = 2112;
      v30 = v10;
      _os_log_fault_impl(&dword_1848EE000, v11, OS_LOG_TYPE_FAULT, "Request -%@ from %@ failed validation with error %@", buf, 0x20u);
    }

    [(BMComputeSourceServer *)self replyToInvocation:invocationCopy withError:v10];
    [connectionCopy invalidate];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (BOOL)validateConnection:(id)connection error:(id *)error
{
  v35[1] = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  bm_remoteUseCase = [connectionCopy bm_remoteUseCase];
  if (bm_remoteUseCase)
  {
    bm_accessControlPolicy = [connectionCopy bm_accessControlPolicy];

    if (bm_accessControlPolicy)
    {
      bm_accessControlPolicy2 = [connectionCopy bm_accessControlPolicy];
      useCase = [bm_accessControlPolicy2 useCase];
      v11 = [bm_remoteUseCase isEqual:useCase];

      if ((v11 & 1) == 0)
      {
        if (error)
        {
          v26 = MEMORY[0x1E696ABC0];
          v27 = *MEMORY[0x1E698E8C8];
          v32 = *MEMORY[0x1E696A578];
          v33 = @"Use case already set";
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
          v20 = v26;
          v21 = v27;
          v22 = 5;
          goto LABEL_15;
        }

        goto LABEL_17;
      }

      bm_accessControlPolicy3 = [connectionCopy bm_accessControlPolicy];
      useCase2 = [bm_accessControlPolicy3 useCase];

      if (!useCase2)
      {
        if (error)
        {
          v14 = MEMORY[0x1E696ABC0];
          v15 = *MEMORY[0x1E698E8C8];
          v30 = *MEMORY[0x1E696A578];
          v31 = @"Connection missing use-case";
          v16 = MEMORY[0x1E695DF20];
          v17 = &v31;
          v18 = &v30;
LABEL_9:
          v19 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:1];
          v20 = v14;
          v21 = v15;
          v22 = 1;
LABEL_15:
          *error = [v20 errorWithDomain:v21 code:v22 userInfo:v19];

          goto LABEL_16;
        }

        goto LABEL_17;
      }
    }

    else
    {
      if (![MEMORY[0x1E698E970] allowsConfiguringConnection:connectionCopy forUseCase:bm_remoteUseCase inDomain:self->_domain error:error])
      {
LABEL_16:
        LOBYTE(error) = 0;
        goto LABEL_17;
      }

      v23 = MEMORY[0x1E698E970];
      bm_process = [connectionCopy bm_process];
      v25 = [v23 policyForProcess:bm_process connectionFlags:objc_msgSend(connectionCopy useCase:{"bm_connectionFlags"), bm_remoteUseCase}];

      [connectionCopy setBm_accessControlPolicy:v25];
    }

    LOBYTE(error) = 1;
    goto LABEL_17;
  }

  if (error)
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E698E8C8];
    v34 = *MEMORY[0x1E696A578];
    v35[0] = @"Connection missing use-case";
    v16 = MEMORY[0x1E695DF20];
    v17 = v35;
    v18 = &v34;
    goto LABEL_9;
  }

LABEL_17:

  v28 = *MEMORY[0x1E69E9840];
  return error;
}

void __122__BMComputeSourceServer_sendEventWithStreamIdentifier_timestamp_signpostID_eventData_eventDataVersion_account_remoteName___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 40) + 1) >= 2)
  {
    v2 = __biome_log_for_category();
    v3 = v2;
    v4 = *(a1 + 40);
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_signpost_emit_with_name_impl(&dword_1848EE000, v3, OS_SIGNPOST_INTERVAL_END, v4, "SendEvent", "StreamIdentifier=%@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)eventsPrunedWithStreamIdentifier:(id)identifier account:(id)account remoteName:(id)name reason:(unint64_t)reason
{
  identifierCopy = identifier;
  accountCopy = account;
  nameCopy = name;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  bm_accessControlPolicy = [currentConnection bm_accessControlPolicy];

  if (identifierCopy)
  {
    v15 = [bm_accessControlPolicy allowsComputeSourceAccessToStream:identifierCopy];
    v16 = __biome_log_for_category();
    source = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [BMComputeSourceServer eventsPrunedWithStreamIdentifier:account:remoteName:reason:];
      }

      source = [(BMComputeSourceServer *)self source];
      [source eventsPrunedWithStreamIdentifier:identifierCopy account:accountCopy remoteName:nameCopy reason:reason];
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [BMComputeSourceServer eventsPrunedWithStreamIdentifier:account:remoteName:reason:];
    }
  }

  else
  {
    source = __biome_log_for_category();
    if (os_log_type_enabled(source, OS_LOG_TYPE_ERROR))
    {
      [BMComputeSourceServer eventsPrunedWithStreamIdentifier:account:remoteName:reason:];
    }
  }
}

@end