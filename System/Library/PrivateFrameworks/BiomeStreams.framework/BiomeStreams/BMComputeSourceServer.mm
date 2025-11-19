@interface BMComputeSourceServer
- (BMComputeSourceDaemon)source;
- (BMComputeSourceServer)initWithQueue:(id)a3 domain:(unint64_t)a4 source:(id)a5;
- (BMComputeSourceServer)initWithQueue:(id)a3 domain:(unint64_t)a4 source:(id)a5 listener:(id)a6;
- (BOOL)_acceptConnection:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)validateConnection:(id)a3 error:(id *)a4;
- (void)activate;
- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5;
- (void)eventsPrunedWithStreamIdentifier:(id)a3 account:(id)a4 remoteName:(id)a5 reason:(unint64_t)a6;
- (void)replyToInvocation:(id)a3 withError:(id)a4;
@end

@implementation BMComputeSourceServer

- (BMComputeSourceDaemon)source
{
  WeakRetained = objc_loadWeakRetained(&self->_source);

  return WeakRetained;
}

- (BMComputeSourceServer)initWithQueue:(id)a3 domain:(unint64_t)a4 source:(id)a5
{
  if (!a4)
  {
    v10 = MEMORY[0x1E698E8F0];
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v10 = MEMORY[0x1E698E8D8];
LABEL_5:
    v5 = *v10;
  }

  v11 = MEMORY[0x1E698EA30];
  v12 = a5;
  v13 = a3;
  v14 = [[v11 alloc] initWithMachServiceName:v5 queue:v13];
  v15 = [(BMComputeSourceServer *)self initWithQueue:v13 domain:a4 source:v12 listener:v14];

  return v15;
}

- (BMComputeSourceServer)initWithQueue:(id)a3 domain:(unint64_t)a4 source:(id)a5 listener:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(v11);
  v17.receiver = self;
  v17.super_class = BMComputeSourceServer;
  v14 = [(BMComputeSourceServer *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_queue, a3);
    objc_storeWeak(&v15->_source, v12);
    objc_storeStrong(&v15->_listener, a6);
    [(BMXPCListener *)v15->_listener setDelegate:v15];
    v15->_domain = a4;
  }

  return v15;
}

- (void)activate
{
  v3 = [(BMComputeSourceServer *)self queue];
  dispatch_assert_queue_V2(v3);

  listener = self->_listener;

  [(BMXPCListener *)listener activate];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x1E698E9D8] processWithXPCConnection:v7];
  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 executableName];
    v19 = 138543618;
    v20 = v11;
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

    v16 = [(BMComputeSourceServer *)self _acceptConnection:v7];
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

- (BOOL)_acceptConnection:(id)a3
{
  v4 = _acceptConnection__onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    [BMComputeSourceServer _acceptConnection:];
  }

  [v5 setDelegate:self];
  [v5 setExportedInterface:_acceptConnection__interface];
  [v5 setExportedObject:self];
  [v5 _setQueue:self->_queue];
  [v5 activate];

  return 1;
}

uint64_t __43__BMComputeSourceServer__acceptConnection___block_invoke()
{
  _acceptConnection__interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF321320];

  return MEMORY[0x1EEE66BB8]();
}

- (void)replyToInvocation:(id)a3 withError:(id)a4
{
  v5 = a3;
  v6 = a4;
  v20 = v6;
  v7 = [v5 methodSignature];
  v8 = [v7 numberOfArguments] - 1;

  v9 = [v5 methodSignature];
  v10 = [v9 getArgumentTypeAtIndex:v8];

  if (!strchr(v10, 64))
  {
    v18 = __biome_log_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [BMComputeSourceServer replyToInvocation:v5 withError:?];
    }

    goto LABEL_10;
  }

  v19 = 0;
  [v5 getArgument:&v19 atIndex:v8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = __biome_log_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [BMComputeSourceServer replyToInvocation:v5 withError:&v19];
    }

LABEL_10:

    goto LABEL_16;
  }

  v11 = [MEMORY[0x1E696B0B8] currentConnection];
  v12 = [v11 exportedInterface];
  v13 = [v12 replyBlockSignatureForSelector:{objc_msgSend(v5, "selector")}];

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
        [BMComputeSourceServer replyToInvocation:v5 withError:?];
      }
    }
  }

  else
  {
    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [BMComputeSourceServer replyToInvocation:v5 withError:?];
    }
  }

  v6 = v20;
LABEL_16:
}

- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v22 = 0;
  v9 = [(BMComputeSourceServer *)self validateConnection:v7 error:&v22];
  v10 = v22;
  if (v9)
  {
    [v8 selector];
    if (objc_opt_respondsToSelector())
    {
      [v8 invokeWithTarget:self];
    }

    else
    {
      v12 = __biome_log_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [BMComputeSourceServer connection:v7 handleInvocation:v8 isReply:?];
      }

      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E698E8C8];
      v23 = *MEMORY[0x1E696A578];
      v15 = MEMORY[0x1E696AEC0];
      v16 = NSStringFromSelector([v8 selector]);
      v17 = [v15 stringWithFormat:@"Failed to route request -%@", v16];
      v24 = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v19 = [v13 errorWithDomain:v14 code:6 userInfo:v18];

      [(BMComputeSourceServer *)self replyToInvocation:v8 withError:v19];
      [v7 invalidate];
      v10 = v19;
    }
  }

  else
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v21 = NSStringFromSelector([v8 selector]);
      *buf = 138412802;
      v26 = v21;
      v27 = 2112;
      v28 = v7;
      v29 = 2112;
      v30 = v10;
      _os_log_fault_impl(&dword_1848EE000, v11, OS_LOG_TYPE_FAULT, "Request -%@ from %@ failed validation with error %@", buf, 0x20u);
    }

    [(BMComputeSourceServer *)self replyToInvocation:v8 withError:v10];
    [v7 invalidate];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (BOOL)validateConnection:(id)a3 error:(id *)a4
{
  v35[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 bm_remoteUseCase];
  if (v7)
  {
    v8 = [v6 bm_accessControlPolicy];

    if (v8)
    {
      v9 = [v6 bm_accessControlPolicy];
      v10 = [v9 useCase];
      v11 = [v7 isEqual:v10];

      if ((v11 & 1) == 0)
      {
        if (a4)
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

      v12 = [v6 bm_accessControlPolicy];
      v13 = [v12 useCase];

      if (!v13)
      {
        if (a4)
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
          *a4 = [v20 errorWithDomain:v21 code:v22 userInfo:v19];

          goto LABEL_16;
        }

        goto LABEL_17;
      }
    }

    else
    {
      if (![MEMORY[0x1E698E970] allowsConfiguringConnection:v6 forUseCase:v7 inDomain:self->_domain error:a4])
      {
LABEL_16:
        LOBYTE(a4) = 0;
        goto LABEL_17;
      }

      v23 = MEMORY[0x1E698E970];
      v24 = [v6 bm_process];
      v25 = [v23 policyForProcess:v24 connectionFlags:objc_msgSend(v6 useCase:{"bm_connectionFlags"), v7}];

      [v6 setBm_accessControlPolicy:v25];
    }

    LOBYTE(a4) = 1;
    goto LABEL_17;
  }

  if (a4)
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
  return a4;
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

- (void)eventsPrunedWithStreamIdentifier:(id)a3 account:(id)a4 remoteName:(id)a5 reason:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x1E696B0B8] currentConnection];
  v14 = [v13 bm_accessControlPolicy];

  if (v10)
  {
    v15 = [v14 allowsComputeSourceAccessToStream:v10];
    v16 = __biome_log_for_category();
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [BMComputeSourceServer eventsPrunedWithStreamIdentifier:account:remoteName:reason:];
      }

      v17 = [(BMComputeSourceServer *)self source];
      [v17 eventsPrunedWithStreamIdentifier:v10 account:v11 remoteName:v12 reason:a6];
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [BMComputeSourceServer eventsPrunedWithStreamIdentifier:account:remoteName:reason:];
    }
  }

  else
  {
    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [BMComputeSourceServer eventsPrunedWithStreamIdentifier:account:remoteName:reason:];
    }
  }
}

@end