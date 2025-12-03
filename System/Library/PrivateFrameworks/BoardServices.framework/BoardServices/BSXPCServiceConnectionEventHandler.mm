@interface BSXPCServiceConnectionEventHandler
- (BSXPCServiceConnectionEventHandler)init;
- (id)remoteTargetWithHandshake:(void *)handshake assertionAttributes:;
- (uint64_t)encodeInitiatingContext:(uint64_t)result;
- (void)_connectionInvalidated:(void *)invalidated;
- (void)connection:(uint64_t)connection handleConnection:;
- (void)connection:(uint64_t)connection handleMessage:;
- (void)connection:(void *)connection handleError:;
- (void)connectionActivated:(void *)activated;
- (void)connectionDisconnected:(uint64_t)disconnected;
- (void)connectionHandleNoMoreChildren:(int)children withGeneration:;
- (void)connectionInitialized:(int)initialized withActivationGeneration:(void *)generation activeXPCConnection:(void *)connection xpcConnectionTargetQueue:;
- (void)connectionInterruptedFromXPCError:(void *)error;
- (void)initWithAssertionTarget:(void *)target;
- (void)setCalloutContext:(uint64_t)context;
- (void)setInitiatingContext:(uint64_t)context;
- (void)setInterfaceTarget:(uint64_t)target;
- (void)setQueue:(uint64_t)queue;
@end

@implementation BSXPCServiceConnectionEventHandler

- (BSXPCServiceConnectionEventHandler)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BSXPCServiceConnectionEventHandler"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138544642;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = @"BSXPCServiceConnectionEventHandler.m";
    v18 = 1024;
    v19 = 109;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)initWithAssertionTarget:(void *)target
{
  if (!target)
  {
    return 0;
  }

  v7.receiver = target;
  v7.super_class = BSXPCServiceConnectionEventHandler;
  v3 = objc_msgSendSuper2(&v7, sel_init);
  if (v3)
  {
    v4 = [a2 copy];
    v5 = v3[1];
    v3[1] = v4;

    *(v3 + 30) = 0;
  }

  return v3;
}

- (void)setCalloutContext:(uint64_t)context
{
  if (context)
  {
    objc_storeStrong((context + 136), a2);
  }
}

- (uint64_t)encodeInitiatingContext:(uint64_t)result
{
  if (result && a2)
  {
    v3 = result;
    v4 = *(result + 168);
    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E698E7A8]);
      v6 = *(v3 + 168);
      *(v3 + 168) = v5;

      v4 = *(v3 + 168);
    }

    v7 = *(a2 + 16);

    return v7(a2, v4);
  }

  return result;
}

- (void)setInterfaceTarget:(uint64_t)target
{
  if (target)
  {
    objc_storeStrong((target + 48), a2);
  }
}

- (void)setQueue:(uint64_t)queue
{
  if (queue)
  {
    objc_storeStrong((queue + 152), a2);
  }
}

- (id)remoteTargetWithHandshake:(void *)handshake assertionAttributes:
{
  v36 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v6 = [handshake count];
    v7 = v6;
    if (a2 && !v6)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"handshake is only supported if there are launching attributes"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = NSStringFromSelector(sel_remoteTargetWithHandshake_assertionAttributes_);
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *buf = 138544642;
        v25 = v20;
        v26 = 2114;
        v27 = v22;
        v28 = 2048;
        selfCopy = self;
        v30 = 2114;
        v31 = @"BSXPCServiceConnectionEventHandler.m";
        v32 = 1024;
        v33 = 193;
        v34 = 2114;
        v35 = v19;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v23 = v19;
      [v19 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A849DC0);
    }

    os_unfair_lock_lock((self + 120));
    if (v7 || (v12 = *(self + 40)) == 0)
    {
      v8 = *(self + 16);
      if (v8)
      {
        v9 = *(v8 + 192);
        isServer = [v9 isServer];
        v11 = *(self + 160);
        if (isServer)
        {
          [v11 client];
        }

        else
        {
          [v11 server];
        }
        v13 = ;

        methods = [v13 methods];
        v15 = [methods count];

        if (v15)
        {
          if (v7)
          {
            handshakeCopy = handshake;
          }

          else
          {
            handshakeCopy = 0;
          }

          v12 = [BSXPCServiceConnectionProxy proxyForConnection:a2 handshake:v13 withProtocol:*(self + 124) activationGeneration:*(self + 24) activeXPCConnection:*(self + 32) xpcConnectionTargetQueue:*(self + 152) replyQueue:*(self + 8) target:handshakeCopy attributes:0 assertionProvider:?];
          if (!v7)
          {
            objc_storeStrong((self + 40), v12);
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    os_unfair_lock_unlock((self + 120));
  }

  else
  {
    v12 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)connectionInitialized:(int)initialized withActivationGeneration:(void *)generation activeXPCConnection:(void *)connection xpcConnectionTargetQueue:
{
  v29 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (!*(self + 152))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_queue cannot be nil"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = NSStringFromSelector(sel_connectionInitialized_withActivationGeneration_activeXPCConnection_xpcConnectionTargetQueue_);
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v17 = 138544642;
        v18 = v12;
        v19 = 2114;
        v20 = v14;
        v21 = 2048;
        selfCopy = self;
        v23 = 2114;
        v24 = @"BSXPCServiceConnectionEventHandler.m";
        v25 = 1024;
        v26 = 245;
        v27 = 2114;
        v28 = v11;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v17, 0x3Au);
      }

      v15 = v11;
      [v11 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A849FDCLL);
    }

    os_unfair_lock_lock((self + 120));
    objc_storeStrong((self + 16), a2);
    *(self + 124) = initialized;
    objc_storeStrong((self + 24), generation);
    objc_storeStrong((self + 32), connection);
    v10 = *MEMORY[0x1E69E9840];

    os_unfair_lock_unlock((self + 120));
  }

  else
  {
    v16 = *MEMORY[0x1E69E9840];
  }
}

- (void)connectionDisconnected:(uint64_t)disconnected
{
  if (disconnected)
  {
    os_unfair_lock_lock((disconnected + 120));
    v2 = *(disconnected + 16);
    *(disconnected + 16) = 0;

    v3 = *(disconnected + 24);
    *(disconnected + 24) = 0;

    v4 = *(disconnected + 32);
    *(disconnected + 32) = 0;

    v5 = *(disconnected + 40);
    *(disconnected + 40) = 0;

    os_unfair_lock_unlock((disconnected + 120));
  }
}

- (void)connection:(uint64_t)connection handleConnection:
{
  v27 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = *(self + 152);
    if (!v4)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_queue must be set"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(sel_connection_handleConnection_);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138544642;
        v16 = v10;
        v17 = 2114;
        v18 = v12;
        v19 = 2048;
        selfCopy = self;
        v21 = 2114;
        v22 = @"BSXPCServiceConnectionEventHandler.m";
        v23 = 1024;
        v24 = 267;
        v25 = 2114;
        v26 = v9;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v13 = v9;
      [v9 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84A280);
    }

    [v4 assertBarrierOnQueue];
    if (*(self + 136))
    {
      v7 = *(self + 136);
    }

    else
    {
      v7 = a2;
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __66__BSXPCServiceConnectionEventHandler_connection_handleConnection___block_invoke;
    v14[3] = &unk_1E75205A8;
    v14[4] = self;
    v14[5] = a2;
    v14[6] = connection;
    BSXPCServiceConnectionExecuteCallOut(a2, v7, v14);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __66__BSXPCServiceConnectionEventHandler_connection_handleConnection___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 56))
  {
    if ([*(a1 + 40) _isClientInvalidated])
    {
      v2 = BSServiceXPCLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 40);
        v15 = 138543362;
        v16 = v14;
        _os_log_error_impl(&dword_19A821000, v2, OS_LOG_TYPE_ERROR, "%{public}@ Cancelling incoming connection because the root has already been invalidated", &v15, 0xCu);
      }

      [(BSXPCServiceConnection *)*(a1 + 48) cancel];
      goto LABEL_15;
    }

    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = *(*(a1 + 32) + 56);
    v7 = BSServiceXPCLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
LABEL_14:

      (*(v6 + 16))(v6, v5, v4);
      goto LABEL_15;
    }

    if (v5)
    {
      v8 = *(v5 + 192);
      v9 = v8;
      if (v8)
      {
        v10 = *(v8 + 1);
LABEL_13:
        v11 = v10;
        v15 = 138543362;
        v16 = v11;
        _os_log_impl(&dword_19A821000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ [callout] connection:handleConnection:", &v15, 0xCu);

        goto LABEL_14;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = 0;
    goto LABEL_13;
  }

  v3 = BSServiceXPCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 40);
    v15 = 138543362;
    v16 = v13;
    _os_log_error_impl(&dword_19A821000, v3, OS_LOG_TYPE_ERROR, "%{public}@ Invalidating incoming connection because there is no event handler", &v15, 0xCu);
  }

  [*(a1 + 48) invalidate];
LABEL_15:
  v12 = *MEMORY[0x1E69E9840];
}

- (void)connectionHandleNoMoreChildren:(int)children withGeneration:
{
  v28 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = self[19];
    if (!v4)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"queue must be set"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(sel_connectionHandleNoMoreChildren_withGeneration_);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138544642;
        v17 = v10;
        v18 = 2114;
        v19 = v12;
        v20 = 2048;
        selfCopy = self;
        v22 = 2114;
        v23 = @"BSXPCServiceConnectionEventHandler.m";
        v24 = 1024;
        v25 = 290;
        v26 = 2114;
        v27 = v9;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v13 = v9;
      [v9 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84A688);
    }

    [v4 assertBarrierOnQueue];
    if (self[8] && ([a2 _isClientInvalidated] & 1) == 0)
    {
      if (self[17])
      {
        v7 = self[17];
      }

      else
      {
        v7 = a2;
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __84__BSXPCServiceConnectionEventHandler_connectionHandleNoMoreChildren_withGeneration___block_invoke;
      v14[3] = &unk_1E7520A10;
      v14[4] = a2;
      v14[5] = self;
      childrenCopy = children;
      BSXPCServiceConnectionExecuteCallOut(a2, v7, v14);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __84__BSXPCServiceConnectionEventHandler_connectionHandleNoMoreChildren_withGeneration___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 40) + 64);
  v3 = *(a1 + 48);
  v4 = BSServiceXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v1)
    {
      v5 = *(v1 + 192);
      v6 = v5;
      if (v5)
      {
        v7 = *(v5 + 1);
LABEL_5:
        v8 = v7;
        v11 = 138543618;
        v12 = v8;
        v13 = 1024;
        v14 = v3;
        _os_log_impl(&dword_19A821000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ [callout] connectionHandleNoMoreChildren: withGeneration=%u", &v11, 0x12u);

        goto LABEL_6;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 0;
    goto LABEL_5;
  }

LABEL_6:

  result = (*(v2 + 16))(v2, v1, v3);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)connection:(uint64_t)connection handleMessage:
{
  v27 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = *(self + 152);
    if (!v4)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"queue must be set"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(sel_connection_handleMessage_);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138544642;
        v16 = v10;
        v17 = 2114;
        v18 = v12;
        v19 = 2048;
        selfCopy = self;
        v21 = 2114;
        v22 = @"BSXPCServiceConnectionEventHandler.m";
        v23 = 1024;
        v24 = 302;
        v25 = 2114;
        v26 = v9;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v13 = v9;
      [v9 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84A9A8);
    }

    [v4 assertBarrierOnQueue];
    if (*(self + 136))
    {
      v7 = *(self + 136);
    }

    else
    {
      v7 = a2;
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __63__BSXPCServiceConnectionEventHandler_connection_handleMessage___block_invoke;
    v14[3] = &unk_1E75205F8;
    v14[4] = a2;
    v14[5] = connection;
    v14[6] = self;
    v14[7] = sel_connection_handleMessage_;
    BSXPCServiceConnectionExecuteCallOut(a2, v7, v14);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __63__BSXPCServiceConnectionEventHandler_connection_handleMessage___block_invoke(uint64_t a1)
{
  v80 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[24];
  }

  v3 = v2;
  v57 = v3;
  if (![*(a1 + 32) _isClientInvalidated])
  {
    v53 = [(BSXPCServiceConnectionMessage *)*(a1 + 40) _subMessages];
    v7 = [v53 count];
    if (v7)
    {
      v8 = [*(a1 + 40) createReply];
      v9 = MEMORY[0x1E698E630];
      v10 = [v53 count];
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __63__BSXPCServiceConnectionEventHandler_connection_handleMessage___block_invoke_30;
      v67[3] = &unk_1E75209A0;
      v11 = v8;
      v68 = v11;
      v69 = v57;
      log = [v9 sentinelWithSignalCount:v10 signalHandler:v67];

      v3 = v57;
    }

    else
    {
      log = 0;
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    if (v53)
    {
      v12 = v53;
    }

    else
    {
      v78 = *(a1 + 40);
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
    }

    v13 = v12;
    v56 = v7;
    v14 = [v12 countByEnumeratingWithState:&v63 objects:v79 count:16];
    if (!v14)
    {
LABEL_66:

      goto LABEL_67;
    }

    v58 = *v64;
    v55 = v13;
LABEL_16:
    v60 = v14;
    v15 = 0;
    while (1)
    {
      if (*v64 != v58)
      {
        objc_enumerationMutation(v13);
      }

      v16 = *(*(&v63 + 1) + 8 * v15);
      v17 = *(*(a1 + 48) + 72);
      if (!v17)
      {
        v25 = [v3 isServer];
        v26 = *(*(a1 + 48) + 160);
        if (v25)
        {
          [v26 server];
        }

        else
        {
          [v26 client];
        }
        v27 = ;
        v28 = [(BSXPCServiceConnectionMessage *)v16 selectorName];
        v29 = v28;
        if (v28)
        {
          v30 = [v27 methodForSelector:NSSelectorFromString(v28)];
          v31 = v30;
          if (*(*(a1 + 48) + 48) && v30)
          {
            v32 = objc_autoreleasePoolPush();
            if (v56)
            {
              v33 = BSServiceXPCBatchLog();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                if (v3)
                {
                  v46 = v3[1];
                }

                else
                {
                  v46 = 0;
                }

                v47 = v46;
                *buf = 138412546;
                v71 = v47;
                v72 = 2112;
                v73 = v29;
                _os_log_debug_impl(&dword_19A821000, v33, OS_LOG_TYPE_DEBUG, "%@ invoking batched method %@", buf, 0x16u);
              }
            }

            v34 = *(*(a1 + 48) + 48);
            v35 = *(a1 + 32);
            v61[0] = MEMORY[0x1E69E9820];
            v61[1] = 3221225472;
            v61[2] = __63__BSXPCServiceConnectionEventHandler_connection_handleMessage___block_invoke_33;
            v61[3] = &unk_1E75205D0;
            v62 = log;
            [BSXPCServiceConnectionProxy invokeMethod:v31 onTarget:v34 withMessage:v16 forConnection:v35 completion:v61];

            v3 = v57;
            v13 = v55;
            objc_autoreleasePoolPop(v32);
          }

          else
          {
            if (v30)
            {
              v37 = BSServiceXPCErrorsLog();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                if (v3)
                {
                  v38 = v3[1];
                }

                else
                {
                  v38 = 0;
                }

                v39 = v38;
                v40 = [v27 name];
                *buf = 138543874;
                v71 = v39;
                v72 = 2112;
                v73 = v29;
                v74 = 2112;
                v75 = v40;
                _os_log_error_impl(&dword_19A821000, v37, OS_LOG_TYPE_ERROR, "%{public}@ Dropping message. No interfaceTarget for @selector(%@) in @protocol(%@).", buf, 0x20u);
              }
            }

            else
            {
              v41 = [v27 methods];
              v37 = [v41 bs_map:&__block_literal_global_5];

              v42 = BSServiceXPCErrorsLog();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                if (v3)
                {
                  v48 = v3[1];
                }

                else
                {
                  v48 = 0;
                }

                v54 = v48;
                v49 = [v27 name];
                v50 = [v37 componentsJoinedByString:@"\n"];
                *buf = 138544130;
                v71 = v54;
                v72 = 2112;
                v73 = v29;
                v74 = 2112;
                v75 = v49;
                v76 = 2112;
                v52 = v50;
                v77 = v50;
                _os_log_error_impl(&dword_19A821000, v42, OS_LOG_TYPE_ERROR, "%{public}@ Dropping message. No method found for @selector(%@) in @protocol(%@)\n{\n%@\n}.", buf, 0x2Au);
              }
            }

            [log signal];
          }
        }

        else
        {
          v36 = BSServiceXPCErrorsLog();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            if (v3)
            {
              v43 = v3[1];
            }

            else
            {
              v43 = 0;
            }

            v44 = v43;
            v45 = [v27 name];
            *buf = 138543618;
            v71 = v44;
            v72 = 2112;
            v73 = v45;
            _os_log_error_impl(&dword_19A821000, v36, OS_LOG_TYPE_ERROR, "%{public}@ Dropping message. Missing selectorName on incoming message in protocol(%@).", buf, 0x16u);
          }

          [log signal];
        }

        v24 = v60;
        goto LABEL_48;
      }

      v18 = *(a1 + 32);
      v19 = BSServiceXPCLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        break;
      }

LABEL_25:

      (*(v17 + 16))(v17, v18, v16);
      v24 = v60;
      [log signal];
LABEL_48:
      if (v24 == ++v15)
      {
        v14 = [v13 countByEnumeratingWithState:&v63 objects:v79 count:16];
        if (!v14)
        {
          goto LABEL_66;
        }

        goto LABEL_16;
      }
    }

    if (v18)
    {
      v20 = *(v18 + 192);
      v21 = v20;
      if (v20)
      {
        v22 = *(v20 + 1);
LABEL_24:
        v23 = v22;
        *buf = 138543362;
        v71 = v23;
        _os_log_impl(&dword_19A821000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ [callout] connection:handleMessage:", buf, 0xCu);

        goto LABEL_25;
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = 0;
    goto LABEL_24;
  }

  log = BSServiceXPCLog();
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    if (v3)
    {
      v4 = v3[1];
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    v6 = NSStringFromSelector(*(a1 + 56));
    *buf = 138543618;
    v71 = v5;
    v72 = 2080;
    v73 = [v6 UTF8String];
    _os_log_error_impl(&dword_19A821000, log, OS_LOG_TYPE_ERROR, "%{public}@ BLOCKING %s BECAUSE THE CLIENT INVALIDATED THE CONNECTION", buf, 0x16u);
  }

LABEL_67:

  v51 = *MEMORY[0x1E69E9840];
}

void __63__BSXPCServiceConnectionEventHandler_connection_handleMessage___block_invoke_30(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if ([a2 isComplete])
  {
    [*(a1 + 32) send];
    if ([a2 isFailed])
    {
      v4 = BSServiceXPCBatchLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 40);
        if (v6)
        {
          v6 = v6[1];
        }

        v7 = v6;
        v8 = 138543362;
        v9 = v7;
        _os_log_error_impl(&dword_19A821000, v4, OS_LOG_TYPE_ERROR, "%{public}@ One or more completions for a message batch were not called.", &v8, 0xCu);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

id __63__BSXPCServiceConnectionEventHandler_connection_handleMessage___block_invoke_34(uint64_t a1, void *a2)
{
  v3 = NSStringFromSelector([a2 selector]);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [a2 name];
    v5 = [@"name:" stringByAppendingString:v6];
  }

  return v5;
}

- (void)connection:(void *)connection handleError:
{
  v27 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = self[19];
    if (!v4)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"queue must be set"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(sel_connection_handleError_);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138544642;
        v16 = v10;
        v17 = 2114;
        v18 = v12;
        v19 = 2048;
        selfCopy = self;
        v21 = 2114;
        v22 = @"BSXPCServiceConnectionEventHandler.m";
        v23 = 1024;
        v24 = 368;
        v25 = 2114;
        v26 = v9;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v13 = v9;
      [v9 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84B6E0);
    }

    [v4 assertBarrierOnQueue];
    if (self[10] && ([(os_unfair_lock_s *)a2 _isClientInvalidated]& 1) == 0)
    {
      if ([connection isBSServiceConnectionError] && objc_msgSend(connection, "code") == 1)
      {
        [(BSXPCServiceConnection *)a2 _makingInterruptCallout];
      }

      if (self[17])
      {
        v7 = self[17];
      }

      else
      {
        v7 = a2;
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __61__BSXPCServiceConnectionEventHandler_connection_handleError___block_invoke;
      v14[3] = &unk_1E75205A8;
      v14[4] = a2;
      v14[5] = connection;
      v14[6] = self;
      BSXPCServiceConnectionExecuteCallOut(a2, v7, v14);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __61__BSXPCServiceConnectionEventHandler_connection_handleError___block_invoke(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  v2 = a1[5];
  v3 = *(a1[6] + 80);
  v4 = BSServiceXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v1)
    {
      v5 = *(v1 + 192);
      v6 = v5;
      if (v5)
      {
        v7 = *(v5 + 1);
LABEL_5:
        v8 = v7;
        v11 = 138543362;
        v12 = v8;
        _os_log_impl(&dword_19A821000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ [callout] connection:handleError:", &v11, 0xCu);

        goto LABEL_6;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 0;
    goto LABEL_5;
  }

LABEL_6:

  result = (*(v3 + 16))(v3, v1, v2);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)connectionActivated:(void *)activated
{
  v25 = *MEMORY[0x1E69E9840];
  if (activated)
  {
    v3 = activated[19];
    if (!v3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"queue must be set"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v8 = NSStringFromSelector(sel_connectionActivated_);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        *buf = 138544642;
        v14 = v8;
        v15 = 2114;
        v16 = v10;
        v17 = 2048;
        activatedCopy = activated;
        v19 = 2114;
        v20 = @"BSXPCServiceConnectionEventHandler.m";
        v21 = 1024;
        v22 = 383;
        v23 = 2114;
        v24 = v7;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v11 = v7;
      [v7 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84B9FCLL);
    }

    [v3 assertBarrierOnQueue];
    if (activated[11] && ([a2 _isClientInvalidated] & 1) == 0)
    {
      if (activated[17])
      {
        v5 = activated[17];
      }

      else
      {
        v5 = a2;
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __58__BSXPCServiceConnectionEventHandler_connectionActivated___block_invoke;
      v12[3] = &unk_1E75209E8;
      v12[4] = a2;
      v12[5] = activated;
      BSXPCServiceConnectionExecuteCallOut(a2, v5, v12);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __58__BSXPCServiceConnectionEventHandler_connectionActivated___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 40) + 88);
  v3 = BSServiceXPCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (v1)
    {
      v4 = *(v1 + 192);
      v5 = v4;
      if (v4)
      {
        v6 = *(v4 + 1);
LABEL_5:
        v7 = v6;
        v10 = 138543362;
        v11 = v7;
        _os_log_impl(&dword_19A821000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ [callout] connectionActivated:", &v10, 0xCu);

        goto LABEL_6;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 0;
    goto LABEL_5;
  }

LABEL_6:

  result = (*(v2 + 16))(v2, v1);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)connectionInterruptedFromXPCError:(void *)error
{
  v25 = *MEMORY[0x1E69E9840];
  if (error)
  {
    v3 = error[19];
    if (!v3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"queue must be set"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v8 = NSStringFromSelector(sel_connectionInterruptedFromXPCError_);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        *buf = 138544642;
        v14 = v8;
        v15 = 2114;
        v16 = v10;
        v17 = 2048;
        errorCopy = error;
        v19 = 2114;
        v20 = @"BSXPCServiceConnectionEventHandler.m";
        v21 = 1024;
        v22 = 395;
        v23 = 2114;
        v24 = v7;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v11 = v7;
      [v7 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84BD18);
    }

    [v3 assertBarrierOnQueue];
    if (error[12] && ([(os_unfair_lock_s *)a2 _isClientInvalidated]& 1) == 0)
    {
      [(BSXPCServiceConnection *)a2 _makingInterruptCallout];
      if (error[17])
      {
        v5 = error[17];
      }

      else
      {
        v5 = a2;
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __72__BSXPCServiceConnectionEventHandler_connectionInterruptedFromXPCError___block_invoke;
      v12[3] = &unk_1E75209E8;
      v12[4] = a2;
      v12[5] = error;
      BSXPCServiceConnectionExecuteCallOut(a2, v5, v12);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __72__BSXPCServiceConnectionEventHandler_connectionInterruptedFromXPCError___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 40) + 96);
  v3 = BSServiceXPCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (v1)
    {
      v4 = *(v1 + 192);
      v5 = v4;
      if (v4)
      {
        v6 = *(v4 + 1);
LABEL_5:
        v7 = v6;
        v10 = 138543362;
        v11 = v7;
        _os_log_impl(&dword_19A821000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ [callout] connectionInterrupted:", &v10, 0xCu);

        goto LABEL_6;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 0;
    goto LABEL_5;
  }

LABEL_6:

  result = (*(v2 + 16))(v2, v1);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_connectionInvalidated:(void *)invalidated
{
  v33 = *MEMORY[0x1E69E9840];
  if (invalidated)
  {
    v3 = invalidated[19];
    if (!v3)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"queue must be set"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v16 = NSStringFromSelector(sel__connectionInvalidated_);
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138544642;
        v22 = v16;
        v23 = 2114;
        v24 = v18;
        v25 = 2048;
        invalidatedCopy = invalidated;
        v27 = 2114;
        v28 = @"BSXPCServiceConnectionEventHandler.m";
        v29 = 1024;
        v30 = 425;
        v31 = 2114;
        v32 = v15;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v19 = v15;
      [v15 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84C08CLL);
    }

    [v3 assertBarrierOnQueue];
    if (invalidated[13] && ([a2 _isClientInvalidated] & 1) == 0)
    {
      if (invalidated[17])
      {
        v5 = invalidated[17];
      }

      else
      {
        v5 = a2;
      }

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __61__BSXPCServiceConnectionEventHandler__connectionInvalidated___block_invoke;
      v20[3] = &unk_1E75209E8;
      v20[4] = a2;
      v20[5] = invalidated;
      BSXPCServiceConnectionExecuteCallOut(a2, v5, v20);
    }

    v6 = invalidated[9];
    invalidated[9] = 0;

    v7 = invalidated[7];
    invalidated[7] = 0;

    v8 = invalidated[8];
    invalidated[8] = 0;

    v9 = invalidated[10];
    invalidated[10] = 0;

    v10 = invalidated[11];
    invalidated[11] = 0;

    v11 = invalidated[12];
    invalidated[12] = 0;

    v12 = invalidated[13];
    invalidated[13] = 0;

    v13 = invalidated[14];
    invalidated[14] = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __61__BSXPCServiceConnectionEventHandler__connectionInvalidated___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 104);
  v4 = BSServiceXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v2)
    {
      v5 = *(v2 + 192);
      v6 = v5;
      if (v5)
      {
        v7 = *(v5 + 1);
LABEL_5:
        v8 = v7;
        v11 = 138543362;
        v12 = v8;
        _os_log_impl(&dword_19A821000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ [callout] connectionInvalidated:", &v11, 0xCu);

        goto LABEL_6;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 0;
    goto LABEL_5;
  }

LABEL_6:

  (*(v3 + 16))(v3, v2);
  v9 = *(a1 + 32);
  if (v9)
  {
    [(BSXPCServiceConnection *)v9 _clientInvalidateWithType:?];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setInitiatingContext:(uint64_t)context
{
  if (context)
  {
    objc_storeStrong((context + 168), a2);
  }
}

@end