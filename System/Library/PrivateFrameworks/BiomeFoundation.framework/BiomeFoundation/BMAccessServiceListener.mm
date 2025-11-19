@interface BMAccessServiceListener
- (BMAccessServiceListener)initWithDomain:(unint64_t)a3 queue:(id)a4 delegate:(id)a5;
- (BMAccessServiceListener)initWithMachServiceName:(id)a3 domain:(unint64_t)a4 queue:(id)a5 accessServer:(id)a6 fileServer:(id)a7 delegate:(id)a8;
- (BOOL)_acceptConnection:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)validateConnection:(id)a3 error:(id *)a4;
- (id)endpointForCoreDuetUseCases;
- (id)initLegacyWithQueue:(id)a3;
- (id)uniqueEndpointForAppScopedServicesActingOnBehalfOfClientWithAccessControlPolicy:(id)a3;
- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5;
- (void)dealloc;
- (void)replyToInvocation:(id)a3 withError:(id)a4;
@end

@implementation BMAccessServiceListener

- (id)initLegacyWithQueue:(id)a3
{
  v4 = a3;
  v5 = [[BMAccessServer alloc] initWithListener:self];
  v6 = [BMPaths biomeDirectoryForDomain:0];
  v7 = [[BMFileServer alloc] initWithDirectory:v6];
  v8 = [(BMAccessServiceListener *)self initWithMachServiceName:@"com.apple.biome.PublicStreamAccessService" domain:0 queue:v4 accessServer:v5 fileServer:v7 delegate:0];

  return v8;
}

- (BMAccessServiceListener)initWithDomain:(unint64_t)a3 queue:(id)a4 delegate:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[BMAccessServer alloc] initWithListener:self];
  v11 = [BMPaths biomeDirectoryForDomain:a3];
  v12 = [[BMFileServer alloc] initWithDirectory:v11];
  if (a3)
  {
    if (a3 != 1)
    {
      v14 = 0;
      goto LABEL_7;
    }

    v13 = &BMMachServiceNameSystemAccessService;
  }

  else
  {
    v13 = &BMMachServiceNameUserAccessService;
  }

  v14 = *v13;
LABEL_7:
  v15 = [(BMAccessServiceListener *)self initWithMachServiceName:v14 domain:a3 queue:v9 accessServer:v10 fileServer:v12 delegate:v8];

  return v15;
}

- (BMAccessServiceListener)initWithMachServiceName:(id)a3 domain:(unint64_t)a4 queue:(id)a5 accessServer:(id)a6 fileServer:(id)a7 delegate:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v31.receiver = self;
  v31.super_class = BMAccessServiceListener;
  v19 = [(BMAccessServiceListener *)&v31 init];
  if (v19)
  {
    v20 = __biome_log_for_category(6);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      _os_log_impl(&dword_1AC15D000, v20, OS_LOG_TYPE_DEFAULT, "Starting BMAccessServiceListener", v30, 2u);
    }

    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create_with_target_V2("com.apple.biome.AccessService", v21, v15);
    queue = v19->_queue;
    v19->_queue = v22;

    if (v14)
    {
      v24 = [[BMXPCListener alloc] initWithMachServiceName:v14 queue:v15];
    }

    else
    {
      v24 = [BMXPCListener anonymousListenerWithQueue:v15];
    }

    listener = v19->_listener;
    v19->_listener = v24;

    [(BMXPCListener *)v19->_listener setDelegate:v19];
    v19->_domain = a4;
    [v16 setDelegate:v18];
    objc_storeStrong(&v19->_accessServer, a6);
    objc_storeStrong(&v19->_fileServer, a7);
    v26 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:512 capacity:4];
    clientSpecificListeners = v19->_clientSpecificListeners;
    v19->_clientSpecificListeners = v26;

    v28 = __biome_log_for_category(6);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      _os_log_impl(&dword_1AC15D000, v28, OS_LOG_TYPE_DEFAULT, "Started BMAccessServiceListener", v30, 2u);
    }
  }

  return v19;
}

- (void)dealloc
{
  v3 = __biome_log_for_category(6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AC15D000, v3, OS_LOG_TYPE_DEFAULT, "Stopping BMAccessService", buf, 2u);
  }

  [(BMXPCListener *)self->_listener invalidate];
  v4.receiver = self;
  v4.super_class = BMAccessServiceListener;
  [(BMAccessServiceListener *)&v4 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [BMProcess processWithXPCConnection:v7];
  v10 = __biome_log_for_category(6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 executableName];
    v23 = 138543618;
    v24 = v11;
    v25 = 1024;
    v26 = [v9 pid];
    _os_log_impl(&dword_1AC15D000, v10, OS_LOG_TYPE_DEFAULT, "Incoming connection from %{public}@(%d)", &v23, 0x12u);
  }

  if ([v9 processType] != 4 && objc_msgSend(v9, "processType") != 5)
  {
    if (([v6 isEqual:self->_coreDuetListener] & 1) == 0)
    {
      v14 = [BMAccessControlPolicy policyForProcess:v9 connectionFlags:0 useCase:@"__na__"];
      [v7 setBm_connectionFlags:0];
      v13 = 0;
      if (([v14 allowsConnectionToAccessServiceWithDomain:self->_domain]& 1) != 0)
      {
LABEL_21:
        v12 = __biome_log_for_category(6);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [BMAccessServiceListener listener:shouldAcceptNewConnection:];
        }

        goto LABEL_23;
      }

      goto LABEL_24;
    }

    v13 = [BMAccessControlPolicy policyForProcess:v9 connectionFlags:2 useCase:@"__coreduet__"];
    [v7 setBm_accessControlPolicy:v13];
    [v7 setBm_connectionFlags:2];
    v17 = [v13 allowsConnectionToAccessServiceWithDomain:self->_domain];
    v18 = __biome_log_for_category(6);
    v12 = v18;
    if (v17)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [BMAccessServiceListener listener:shouldAcceptNewConnection:];
      }

      v14 = v13;
      goto LABEL_23;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [BMAccessServiceListener listener:shouldAcceptNewConnection:];
    }

LABEL_14:

LABEL_27:
    v19 = 0;
    goto LABEL_28;
  }

  v12 = [(NSMapTable *)self->_clientSpecificListeners objectForKey:v6];
  v13 = [v12 process];
  if (![BMAccessControlPolicy process:v9 canActOnBehalfOfProcess:v13])
  {
    v16 = __biome_log_for_category(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [BMAccessServiceListener listener:shouldAcceptNewConnection:];
    }

    goto LABEL_14;
  }

  v14 = [BMAccessControlPolicy policyForProcess:v9 connectionFlags:1 onBehalfOfProcessWithAccessControlPolicy:v12];
  [v7 setBm_accessControlPolicy:v14];
  [v7 setBm_connectionFlags:1];

  if (([v14 allowsConnectionToAccessServiceWithDomain:self->_domain]& 1) == 0)
  {
LABEL_24:
    v20 = __biome_log_for_category(6);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [BMAccessServiceListener listener:shouldAcceptNewConnection:];
    }

    goto LABEL_27;
  }

  if (!v13)
  {
    goto LABEL_21;
  }

  v15 = __biome_log_for_category(6);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [BMAccessServiceListener listener:shouldAcceptNewConnection:];
  }

  v12 = v13;
LABEL_23:

  v19 = [(BMAccessServiceListener *)self _acceptConnection:v7];
  v13 = v14;
LABEL_28:

  objc_autoreleasePoolPop(v8);
  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)_acceptConnection:(id)a3
{
  v4 = _acceptConnection__onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    [BMAccessServiceListener _acceptConnection:];
  }

  [v5 setDelegate:self];
  [v5 setExportedInterface:_acceptConnection__interface];
  [v5 setExportedObject:self];
  [v5 _setQueue:self->_queue];
  [v5 activate];

  return 1;
}

uint64_t __45__BMAccessServiceListener__acceptConnection___block_invoke()
{
  _acceptConnection__interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F20F5A00];

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
    v18 = __biome_log_for_category(6);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [BMAccessServiceListener replyToInvocation:withError:];
    }

    goto LABEL_10;
  }

  v19 = 0;
  [v5 getArgument:&v19 atIndex:v8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = __biome_log_for_category(6);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [BMAccessServiceListener replyToInvocation:withError:];
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
      v17 = __biome_log_for_category(6);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [BMAccessServiceListener replyToInvocation:v5 withError:?];
      }
    }
  }

  else
  {
    v17 = __biome_log_for_category(6);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [BMAccessServiceListener replyToInvocation:v5 withError:?];
    }
  }

  v6 = v20;
LABEL_16:
}

- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v24 = 0;
  v9 = [(BMAccessServiceListener *)self validateConnection:v7 error:&v24];
  v10 = v24;
  if (v9)
  {
    fileServer = self->_fileServer;
    [v8 selector];
    if (objc_opt_respondsToSelector())
    {
      v12 = self->_fileServer;
LABEL_9:
      [v8 invokeWithTarget:v12];
      goto LABEL_13;
    }

    accessServer = self->_accessServer;
    [v8 selector];
    if (objc_opt_respondsToSelector())
    {
      v12 = self->_accessServer;
      goto LABEL_9;
    }

    v15 = __biome_log_for_category(6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [BMAccessServiceListener connection:v7 handleInvocation:v8 isReply:?];
    }

    v16 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v17 = MEMORY[0x1E696AEC0];
    v18 = NSStringFromSelector([v8 selector]);
    v19 = [v17 stringWithFormat:@"Failed to route request -%@", v18];
    v26 = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v21 = [v16 errorWithDomain:@"BMAccessErrorDomain" code:6 userInfo:v20];

    [(BMAccessServiceListener *)self replyToInvocation:v8 withError:v21];
    [v7 invalidate];
    v10 = v21;
  }

  else
  {
    v13 = __biome_log_for_category(6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v23 = NSStringFromSelector([v8 selector]);
      *buf = 138412802;
      v28 = v23;
      v29 = 2112;
      v30 = v7;
      v31 = 2112;
      v32 = v10;
      _os_log_fault_impl(&dword_1AC15D000, v13, OS_LOG_TYPE_FAULT, "Request -%@ from %@ failed validation with error %@", buf, 0x20u);
    }

    [(BMAccessServiceListener *)self replyToInvocation:v8 withError:v10];
    [v7 invalidate];
  }

LABEL_13:

  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)validateConnection:(id)a3 error:(id *)a4
{
  v31[1] = *MEMORY[0x1E69E9840];
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
          v23 = MEMORY[0x1E696ABC0];
          v28 = *MEMORY[0x1E696A578];
          v29 = @"Use case already set";
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
          v19 = v23;
          v20 = 5;
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
          v26 = *MEMORY[0x1E696A578];
          v27 = @"Connection missing use-case";
          v15 = MEMORY[0x1E695DF20];
          v16 = &v27;
          v17 = &v26;
LABEL_9:
          v18 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
          v19 = v14;
          v20 = 1;
LABEL_15:
          *a4 = [v19 errorWithDomain:@"BMAccessErrorDomain" code:v20 userInfo:v18];

          goto LABEL_16;
        }

        goto LABEL_17;
      }
    }

    else
    {
      if (![BMAccessControlPolicy allowsConfiguringConnection:v6 forUseCase:v7 inDomain:self->_domain error:a4])
      {
LABEL_16:
        LOBYTE(a4) = 0;
        goto LABEL_17;
      }

      v21 = [v6 bm_process];
      v22 = +[BMAccessControlPolicy policyForProcess:connectionFlags:useCase:](BMAccessControlPolicy, "policyForProcess:connectionFlags:useCase:", v21, [v6 bm_connectionFlags], v7);

      [v6 setBm_accessControlPolicy:v22];
    }

    LOBYTE(a4) = 1;
    goto LABEL_17;
  }

  if (a4)
  {
    v14 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A578];
    v31[0] = @"Connection missing use-case";
    v15 = MEMORY[0x1E695DF20];
    v16 = v31;
    v17 = &v30;
    goto LABEL_9;
  }

LABEL_17:

  v24 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)uniqueEndpointForAppScopedServicesActingOnBehalfOfClientWithAccessControlPolicy:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [v4 process];
  v6 = [v5 processType];

  if (v6)
  {
    v7 = [v4 process];
    v23 = [v7 identifier];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = self->_clientSpecificListeners;
    v9 = [(NSMapTable *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v22 = v4;
      v11 = 0;
      v12 = *v25;
LABEL_4:
      v13 = 0;
      v14 = v11;
      while (1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v24 + 1) + 8 * v13);

        v15 = [(NSMapTable *)self->_clientSpecificListeners objectForKey:v11];
        v16 = [v15 process];
        v17 = [v16 identifier];
        v18 = [v17 isEqual:v23];

        if (v18)
        {
          break;
        }

        ++v13;
        v14 = v11;
        if (v10 == v13)
        {
          v10 = [(NSMapTable *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          v4 = v22;
          goto LABEL_11;
        }
      }

      v4 = v22;
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_11:
    }

    v11 = [BMXPCListener anonymousListenerWithQueue:self->_queue, v22];
    [v11 setDelegate:self];
    [v11 activate];
LABEL_14:
    [(NSMapTable *)self->_clientSpecificListeners setObject:v4 forKey:v11, v22];
    v19 = [v11 endpoint];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)endpointForCoreDuetUseCases
{
  dispatch_assert_queue_V2(self->_queue);
  coreDuetListener = self->_coreDuetListener;
  if (!coreDuetListener)
  {
    v4 = [BMXPCListener anonymousListenerWithQueue:self->_queue];
    v5 = self->_coreDuetListener;
    self->_coreDuetListener = v4;

    [(BMXPCListener *)self->_coreDuetListener setDelegate:self];
    [(BMXPCListener *)self->_coreDuetListener activate];
    coreDuetListener = self->_coreDuetListener;
  }

  return [(BMXPCListener *)coreDuetListener endpoint];
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v7 = *MEMORY[0x1E69E9840];
  [v1 executableName];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x1Cu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)listener:shouldAcceptNewConnection:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v7 = *MEMORY[0x1E69E9840];
  [v1 executableName];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x1Cu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)listener:shouldAcceptNewConnection:.cold.3()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v11 = *MEMORY[0x1E69E9840];
  v3 = [v1 executableName];
  [v2 pid];
  v4 = [v0 executableName];
  [v0 pid];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_2();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x22u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)listener:shouldAcceptNewConnection:.cold.4()
{
  OUTLINED_FUNCTION_2();
  v7 = *MEMORY[0x1E69E9840];
  [v1 executableName];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x12u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)listener:shouldAcceptNewConnection:.cold.5()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v10 = *MEMORY[0x1E69E9840];
  v3 = [v1 executableName];
  [v2 pid];
  v4 = [v0 executableName];
  [v0 pid];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x22u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)listener:shouldAcceptNewConnection:.cold.6()
{
  OUTLINED_FUNCTION_2();
  v7 = *MEMORY[0x1E69E9840];
  [v1 executableName];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x12u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)replyToInvocation:withError:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v10 = *MEMORY[0x1E69E9840];
  v2 = NSStringFromSelector([v1 selector]);
  v3 = *v0;
  objc_opt_class();
  OUTLINED_FUNCTION_1_2();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)replyToInvocation:(void *)a1 withError:.cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = NSStringFromSelector([a1 selector]);
  OUTLINED_FUNCTION_1_2();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)replyToInvocation:(void *)a1 withError:.cold.3(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = NSStringFromSelector([a1 selector]);
  OUTLINED_FUNCTION_1_2();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)replyToInvocation:withError:.cold.4()
{
  OUTLINED_FUNCTION_6();
  v8 = *MEMORY[0x1E69E9840];
  v7 = NSStringFromSelector([v0 selector]);
  OUTLINED_FUNCTION_1_2();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)connection:(uint64_t)a1 handleInvocation:(void *)a2 isReply:.cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = NSStringFromSelector([a2 selector]);
  OUTLINED_FUNCTION_1_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end