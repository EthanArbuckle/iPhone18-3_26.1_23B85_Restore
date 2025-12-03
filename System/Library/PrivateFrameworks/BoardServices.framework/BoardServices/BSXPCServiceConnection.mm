@interface BSXPCServiceConnection
+ (id)_connectionWithIncomingXPCConnection:(void *)connection endpointDescription:;
+ (id)_invalidationMessageForXPCConnection:(uint64_t)connection;
+ (id)connectionWithConnection:(uint64_t)connection;
+ (id)connectionWithEndpoint:(uint64_t)endpoint;
+ (id)currentContext;
+ (id)nullConnection;
+ (void)_invalidateIncomingXPCConnection:(int)connection withDisconnectMessage:;
- (BOOL)_isClientInvalidated;
- (BOOL)_isInvalidated;
- (BOOL)hasChildren;
- (BOOL)shouldSendMessage:(id)message;
- (BSXPCServiceConnection)init;
- (NSString)description;
- (id)_defaultNameWithClientLoggingProem:(uint64_t)proem as:(int)as onLock:;
- (id)_eventHandler;
- (id)_initWithContext:(void *)context assertionTarget:;
- (id)_underlyingServerPeerConnection;
- (id)activatedConnectionQueue;
- (id)activeMessageBatch;
- (id)addObserverWithReason:(uint64_t)reason forRevocation:;
- (id)auditToken;
- (id)createMessageWithOptions:(uint64_t)options;
- (id)defaultNameWithClientLoggingProem:(uint64_t)proem as:;
- (id)peer;
- (id)remoteTargetWithAssertionAttributes:(int)attributes enforcingLaunchConstraints:;
- (id)stateDump;
- (uint64_t)_lock_activateNowOrWhenReady:(uint64_t)ready;
- (uint64_t)activateNowOrWhenReady:(uint64_t)ready;
- (uint64_t)childrenGeneration;
- (uint64_t)isRevokedPeer;
- (uint64_t)isValid;
- (void)_clientInvalidateWithType:(uint64_t)type;
- (void)_connection_consumeLock_didActivateWithMessage:(void *)message fromPeer:;
- (void)_connection_consumeLock_handleError:(int)error notYetLocked:;
- (void)_connection_consumeLock_runPendedEventsIfAppropriate;
- (void)_connection_handleInvalidateMessage:(uint64_t)message withHandoff:;
- (void)_connection_handleMessage:(void *)message fromPeer:(uint64_t)peer withHandoff:;
- (void)_handleParentDisconnectWithMessage:(void *)message outRevocations:;
- (void)_lock_associateNewChildConnection:(uint64_t)connection;
- (void)_lock_disconnect;
- (void)_lock_enqueueChildActivateEvent:(uint64_t)event forHandoff:;
- (void)_lock_enqueueConnectionEstablishedEvent:(uint64_t)event;
- (void)_lock_invalidateWithDisconnectMessage:(void *)message outChildRevocations:;
- (void)_makingInterruptCallout;
- (void)_noteChildConnectionDidInvalidate:(id)invalidate;
- (void)_setParent:(uint64_t)parent;
- (void)cancel;
- (void)configure:(uint64_t)configure;
- (void)dealloc;
- (void)initiatingContext;
- (void)loggingProem;
- (void)name;
- (void)sendBarrierBlock:(uint64_t)block;
- (void)updateAuditTokenFromReplyMessage:(id)message fromActivationGeneration:(unsigned int)generation;
@end

@implementation BSXPCServiceConnection

- (id)auditToken
{
  if (self)
  {
    os_unfair_lock_lock((self + 160));
    v2 = *(self + 24);
    os_unfair_lock_unlock((self + 160));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_connection_consumeLock_runPendedEventsIfAppropriate
{
  v43 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_32;
  }

  os_unfair_lock_assert_owner((self + 160));
  if ((*(self + 174) & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"we should never get here if we've never set up the connection queue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(sel__connection_consumeLock_runPendedEventsIfAppropriate);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138544642;
      v32 = v17;
      v33 = 2114;
      v34 = v19;
      v35 = 2048;
      selfCopy = self;
      v37 = 2114;
      v38 = @"BSXPCServiceConnection.m";
      v39 = 1024;
      v40 = 1160;
      v41 = 2114;
      v42 = v16;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v20 = v16;
    [v16 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82268CLL);
  }

  [*(self + 40) assertBarrierOnQueue];
  v2 = *(self + 164);
  if (*(self + 174) != 1 || *(self + 175) != 1)
  {
    v3 = 0;
    goto LABEL_8;
  }

  v3 = *(self + 80);
  v4 = *(self + 80);
  *(self + 80) = 0;

  if (*(self + 177) != 1)
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v5 = *(self + 88);
  v6 = *(self + 88);
  *(self + 88) = 0;

LABEL_9:
  os_unfair_lock_unlock((self + 160));
  if ([v3 count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = *v26;
      do
      {
        v10 = 0;
        do
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v7);
          }

          (*(*(*(&v25 + 1) + 8 * v10++) + 16))();
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      os_unfair_lock_lock((self + 160));
      if (*(self + 177) != 1 || v2 != *(self + 164))
      {

        v5 = 0;
      }

      os_unfair_lock_unlock((self + 160));
    }
  }

  if ([v5 count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v12)
    {
      v13 = *v22;
      do
      {
        v14 = 0;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v11);
          }

          (*(*(*(&v21 + 1) + 8 * v14) + 16))(*(*(&v21 + 1) + 8 * v14));
          ++v14;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v12);
    }
  }

LABEL_32:
  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isClientInvalidated
{
  os_unfair_lock_lock(&self->_lock);
  v3 = (*(self + 172) & 3) != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)_isInvalidated
{
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  return lock_invalidated;
}

+ (id)currentContext
{
  objc_opt_self();
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v2 = [threadDictionary objectForKey:@"BSXPCCurrentContext"];

  return v2;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = BSServiceXPCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    proem = self->_proem;
    endpointDescription = [(BSXPCServiceConnectionContext *)self->_context endpointDescription];
    *buf = 138543618;
    v9 = proem;
    v10 = 2112;
    v11 = endpointDescription;
    _os_log_impl(&dword_19A821000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Dealloc %@", buf, 0x16u);
  }

  BSClearTokenVar();
  v7.receiver = self;
  v7.super_class = BSXPCServiceConnection;
  [(BSXPCServiceConnection *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)loggingProem
{
  if (self)
  {
    v2 = self[24];
    if (v2)
    {
      v2 = v2[1];
    }

    self = v2;
    v1 = vars8;
  }

  return self;
}

- (void)_lock_disconnect
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(self + 175) == 1)
  {
    v2 = BSServiceXPCLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(self + 8);
      *buf = 138543362;
      v17 = v3;
      _os_log_impl(&dword_19A821000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Disconnecting.", buf, 0xCu);
    }
  }

  v4 = *(self + 64);
  v5 = v4;
  if (v4)
  {
    xpc_connection_set_event_handler(v4, &__block_literal_global_238);
    xpc_connection_activate(v5);
    barrier[0] = MEMORY[0x1E69E9820];
    barrier[1] = 3221225472;
    barrier[2] = __42__BSXPCServiceConnection__lock_disconnect__block_invoke_2;
    barrier[3] = &unk_1E75205D0;
    v15 = v5;
    xpc_connection_send_barrier(v15, barrier);
    v6 = *(self + 64);
    *(self + 64) = 0;
  }

  [BSXPCServiceConnectionEventHandler connectionDisconnected:?];
  v7 = *(self + 80);
  *(self + 80) = 0;

  v8 = *(self + 88);
  *(self + 88) = 0;

  *(self + 175) = 0;
  *(self + 177) = 0;
  if ([*(self + 192) isClient])
  {
    v9 = *(self + 16);
    *(self + 16) = 0;
  }

  [*(self + 96) invalidate];
  v10 = *(self + 96);
  *(self + 96) = 0;

  v11 = *(self + 112);
  *(self + 112) = 0;

  os_unfair_recursive_lock_lock_with_options();
  [*(self + 120) commitWithReason:@"disconnect"];
  v12 = *(self + 120);
  *(self + 120) = 0;

  os_unfair_recursive_lock_unlock();
  v13 = *MEMORY[0x1E69E9840];
}

- (id)_eventHandler
{
  if (self)
  {
    os_unfair_lock_lock((self + 160));
    v2 = *(self + 128);
    os_unfair_lock_unlock((self + 160));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)initiatingContext
{
  if (self)
  {
    os_unfair_lock_lock((self + 160));
    v2 = *(self + 128);
    if (v2)
    {
      v2 = v2[21];
    }

    v3 = v2;
    os_unfair_lock_unlock((self + 160));
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t ____BSXPCServiceConnection_IS_INVOKING_A_MESSAGE_REPLY_BLOCK___block_invoke(void *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = a1[7];
  v1 = a1[8];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = objc_opt_self();
  if (!v1)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"callOutBlock != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(sel_invokeReplyBlock_blockDescriptor_andPayload_error_forConnection_);
      v15 = objc_opt_class();
      LODWORD(buf[0]) = 138544642;
      *(buf + 4) = v14;
      WORD2(buf[1]) = 2114;
      *(&buf[1] + 6) = NSStringFromClass(v15);
      HIWORD(buf[2]) = 2048;
      buf[3] = v6;
      LOWORD(v35) = 2114;
      *(&v35 + 2) = @"BSXPCServiceConnectionProxy.m";
      WORD5(v35) = 1024;
      HIDWORD(v35) = 669;
      LOWORD(v36) = 2114;
      *(&v36 + 2) = v13;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A828A0CLL);
  }

  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  memset(buf, 0, sizeof(buf));
  v7 = [v3 blockArguments];
  v8 = v7;
  if (v5)
  {
    v9 = [objc_msgSend(v7 "lastObject")];
    if (v9 != [v8 count] - 1)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[[arguments lastObject] argumentIndex] == ([arguments count] - 1)"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v17 = NSStringFromSelector(sel_invokeReplyBlock_blockDescriptor_andPayload_error_forConnection_);
        v18 = objc_opt_class();
        *v22 = 138544642;
        v23 = v17;
        v24 = 2114;
        v25 = NSStringFromClass(v18);
        v26 = 2048;
        v27 = v6;
        v28 = 2114;
        v29 = @"BSXPCServiceConnectionProxy.m";
        v30 = 1024;
        v31 = 691;
        v32 = 2114;
        v33 = v16;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v22, 0x3Au);
      }

      [v16 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A828AE8);
    }

    buf[[objc_msgSend(v8 "lastObject")]] = v5;
  }

  else
  {
    if (!v4)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"payload != ((void *)0)"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = NSStringFromSelector(sel_invokeReplyBlock_blockDescriptor_andPayload_error_forConnection_);
        v21 = objc_opt_class();
        *v22 = 138544642;
        v23 = v20;
        v24 = 2114;
        v25 = NSStringFromClass(v21);
        v26 = 2048;
        v27 = v6;
        v28 = 2114;
        v29 = @"BSXPCServiceConnectionProxy.m";
        v30 = 1024;
        v31 = 676;
        v32 = 2114;
        v33 = v19;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v22, 0x3Au);
      }

      [v19 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A828BC4);
    }

    v10 = [objc_alloc(MEMORY[0x1E698E7A8]) initWithMessage:v4];
    [BSXPCServiceConnectionProxy decodeArguments:v8 outArgs:buf fromMessage:v10 forConnection:v2];
  }

  result = [v8 count];
  if (result <= 4)
  {
    if (result <= 1)
    {
      if (result)
      {
        if (result == 1)
        {
          result = (*(v1 + 16))(v1, buf[0]);
        }
      }

      else
      {
        result = (*(v1 + 16))(v1);
      }
    }

    else if (result == 2)
    {
      result = (*(v1 + 16))(v1, buf[0], buf[1]);
    }

    else if (result == 3)
    {
      result = (*(v1 + 16))(v1, buf[0], buf[1], buf[2]);
    }

    else
    {
      result = (*(v1 + 16))(v1, buf[0], buf[1], buf[2], buf[3]);
    }
  }

  else if (result > 7)
  {
    switch(result)
    {
      case 8:
        result = (*(v1 + 16))(v1, buf[0], buf[1], buf[2], buf[3], v35, *(&v35 + 1), v36, *(&v36 + 1));
        break;
      case 9:
        result = (*(v1 + 16))(v1, buf[0], buf[1], buf[2], buf[3], v35, *(&v35 + 1), v36, *(&v36 + 1), v37);
        break;
      case 10:
        result = (*(v1 + 16))(v1, buf[0], buf[1], buf[2], buf[3], v35, *(&v35 + 1), v36, *(&v36 + 1), v37, *(&v37 + 1));
        break;
    }
  }

  else if (result == 5)
  {
    result = (*(v1 + 16))(v1, buf[0], buf[1], buf[2], buf[3], v35);
  }

  else if (result == 6)
  {
    result = (*(v1 + 16))(v1, buf[0], buf[1], buf[2], buf[3], v35, *(&v35 + 1));
  }

  else
  {
    result = (*(v1 + 16))(v1, buf[0], buf[1], buf[2], buf[3], v35, *(&v35 + 1), v36);
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)peer
{
  if (self)
  {
    os_unfair_lock_lock((self + 160));
    v2 = *(self + 16);
    os_unfair_lock_unlock((self + 160));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)isRevokedPeer
{
  v22 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (([*(self + 192) isServer] & 1) == 0)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"only viable on server connections"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v6 = NSStringFromSelector(sel_isRevokedPeer);
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v10 = 138544642;
        v11 = v6;
        v12 = 2114;
        v13 = v8;
        v14 = 2048;
        selfCopy = self;
        v16 = 2114;
        v17 = @"BSXPCServiceConnection.m";
        v18 = 1024;
        v19 = 319;
        v20 = 2114;
        v21 = v5;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
      }

      v9 = v5;
      [v5 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A82A678);
    }

    os_unfair_lock_lock((self + 160));
    if (*(self + 179))
    {
      v2 = 1;
    }

    else
    {
      v2 = *(self + 180);
    }

    os_unfair_lock_unlock((self + 160));
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2 & 1;
}

- (void)name
{
  if (self)
  {
    os_unfair_lock_lock((self + 160));
    v2 = *(self + 128);
    if (v2)
    {
      v2 = v2[18];
    }

    v3 = v2;
    os_unfair_lock_unlock((self + 160));
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)cancel
{
  v21 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (([*(self + 192) isServer] & 1) == 0)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cancelling is only supported on server peer connections"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v4 = NSStringFromSelector(sel_cancel);
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        v9 = 138544642;
        v10 = v4;
        v11 = 2114;
        v12 = v6;
        v13 = 2048;
        selfCopy = self;
        v15 = 2114;
        v16 = @"BSXPCServiceConnection.m";
        v17 = 1024;
        v18 = 301;
        v19 = 2114;
        v20 = v3;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
      }

      v7 = v3;
      [v3 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A82AF5CLL);
    }

    v2 = *MEMORY[0x1E69E9840];

    [(BSXPCServiceConnection *)self _clientInvalidateWithType:?];
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];
  }
}

void __42__BSXPCServiceConnection__lock_disconnect__block_invoke_2(uint64_t a1)
{
  [BSXPCServiceConnectionPeer invalidateConnection:?];
  v2 = *(a1 + 32);

  xpc_connection_cancel(v2);
}

- (id)activeMessageBatch
{
  if (self)
  {
    os_unfair_recursive_lock_lock_with_options();
    v2 = *(self + 120);
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)activatedConnectionQueue
{
  if (self)
  {
    os_unfair_lock_lock((self + 160));
    if (*(self + 174) == 1)
    {
      v2 = *(self + 40);
    }

    else
    {
      v2 = 0;
    }

    v3 = v2;
    os_unfair_lock_unlock((self + 160));
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)childrenGeneration
{
  if (!self)
  {
    return 0;
  }

  os_unfair_lock_lock(self + 40);
  os_unfair_lock_opaque = self[42]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(self + 40);
  return os_unfair_lock_opaque;
}

- (BSXPCServiceConnection)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BSXPCServiceConnection"];
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
    v17 = @"BSXPCServiceConnection.m";
    v18 = 1024;
    v19 = 120;
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

- (id)_initWithContext:(void *)context assertionTarget:
{
  selfCopy = self;
  v36 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (!a2)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"context"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(sel__initWithContext_assertionTarget_);
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138544642;
        v25 = v19;
        v26 = 2114;
        v27 = v21;
        v28 = 2048;
        v29 = selfCopy;
        v30 = 2114;
        v31 = @"BSXPCServiceConnection.m";
        v32 = 1024;
        v33 = 125;
        v34 = 2114;
        v35 = v18;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v22 = v18;
      [v18 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A871F10);
    }

    v23.receiver = self;
    v23.super_class = BSXPCServiceConnection;
    v6 = objc_msgSendSuper2(&v23, sel_init);
    selfCopy = v6;
    if (v6)
    {
      objc_storeStrong(v6 + 24, a2);
      v7 = [context copy];
      v8 = selfCopy[23];
      selfCopy[23] = v7;

      v9 = selfCopy[24];
      if (v9)
      {
        v10 = v9[1];
      }

      else
      {
        v10 = 0;
      }

      objc_storeStrong(selfCopy + 1, v10);
      *(selfCopy + 40) = 0;
      selfCopy[19] = 0;
      v11 = [[BSXPCServiceConnectionEventHandler alloc] initWithAssertionTarget:?];
      v12 = selfCopy[16];
      selfCopy[16] = v11;

      if ([selfCopy[24] isRoot])
      {
        BSServiceXPCErrorsLog();
      }

      else
      {
        BSServiceXPCLog();
      }
      v13 = ;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = selfCopy[1];
        endpointDescription = [selfCopy[24] endpointDescription];
        *buf = 138543618;
        v25 = v14;
        v26 = 2112;
        v27 = endpointDescription;
        _os_log_impl(&dword_19A821000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Alloc %@", buf, 0x16u);
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

+ (id)nullConnection
{
  objc_opt_self();
  v0 = +[BSXPCServiceConnectionEndpoint nullEndpoint];
  v1 = [BSXPCServiceConnection connectionWithEndpoint:v0];

  return v1;
}

+ (id)connectionWithEndpoint:(uint64_t)endpoint
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v4 = a2;
  if (!v4)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"endpoint", v13];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(sel_connectionWithEndpoint_);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138544642;
      v30 = v15;
      v31 = 2114;
      v32 = v17;
      v33 = 2048;
      v34 = v3;
      v35 = 2114;
      v36 = @"BSXPCServiceConnection.m";
      v37 = 1024;
      v38 = 155;
      v39 = 2114;
      v40 = v14;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v18 = v14;
    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A87220CLL);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = MEMORY[0x1E696AEC0];
    classForCoder = [v4 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v21 = NSStringFromClass(classForCoder);
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = [v19 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"endpoint", v21, v23];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(sel_connectionWithEndpoint_);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138544642;
      v30 = v25;
      v31 = 2114;
      v32 = v27;
      v33 = 2048;
      v34 = v3;
      v35 = 2114;
      v36 = @"BSXPCServiceConnection.m";
      v37 = 1024;
      v38 = 155;
      v39 = 2114;
      v40 = v24;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v28 = v24;
    [v24 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A872354);
  }

  v5 = [BSXPCServiceConnection alloc];
  v6 = [BSXPCServiceConnectionRootClientContext uniqueClientContextWithEndpoint:v4];
  rBSTarget = [(BSXPCServiceConnectionEndpoint *)v4 RBSTarget];
  v8 = [(BSXPCServiceConnection *)&v5->super.isa _initWithContext:v6 assertionTarget:rBSTarget];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)connectionWithConnection:(uint64_t)connection
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v4 = a2;
  NSClassFromString(&cfstr_Bsxpcserviceco.isa);
  if (!v4)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(sel_connectionWithConnection_);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v27 = v12;
      v28 = 2114;
      v29 = v14;
      v30 = 2048;
      v31 = v3;
      v32 = 2114;
      v33 = @"BSXPCServiceConnection.m";
      v34 = 1024;
      v35 = 160;
      v36 = 2114;
      v37 = v11;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v15 = v11;
    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A87260CLL);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSXPCServiceConnectionClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(sel_connectionWithConnection_);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138544642;
      v27 = v17;
      v28 = 2114;
      v29 = v19;
      v30 = 2048;
      v31 = v3;
      v32 = 2114;
      v33 = @"BSXPCServiceConnection.m";
      v34 = 1024;
      v35 = 160;
      v36 = 2114;
      v37 = v16;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v20 = v16;
    [v16 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A872710);
  }

  v5 = *(v4 + 24);
  if (([v5 isRoot] & 1) == 0)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this connection (%@) is not a valid type for a parent connection", v5];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(sel_connectionWithConnection_);
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138544642;
      v27 = v22;
      v28 = 2114;
      v29 = v24;
      v30 = 2048;
      v31 = v3;
      v32 = 2114;
      v33 = @"BSXPCServiceConnection.m";
      v34 = 1024;
      v35 = 162;
      v36 = 2114;
      v37 = v21;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v25 = v21;
    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A87280CLL);
  }

  v6 = [BSXPCServiceConnection alloc];
  uniqueChildContext = [(BSXPCServiceConnectionRootContext *)v5 uniqueChildContext];
  v8 = [(BSXPCServiceConnection *)&v6->super.isa _initWithContext:uniqueChildContext assertionTarget:*(v4 + 23)];

  os_unfair_lock_lock(v4 + 40);
  [(BSXPCServiceConnection *)v4 _lock_associateNewChildConnection:v8];
  os_unfair_lock_unlock(v4 + 40);

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)_lock_associateNewChildConnection:(uint64_t)connection
{
  v59 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner((connection + 160));
  if ((*(connection + 174) & 1) == 0)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Parent connection must be configured before associating children"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(sel__lock_associateNewChildConnection_);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138544642;
      v48 = v25;
      v49 = 2114;
      v50 = v27;
      v51 = 2048;
      connectionCopy5 = connection;
      v53 = 2114;
      v54 = @"BSXPCServiceConnection.m";
      v55 = 1024;
      v56 = 1078;
      v57 = 2114;
      v58 = v24;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v28 = v24;
    [v24 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A872D10);
  }

  objc_storeStrong((a2 + 32), *(connection + 32));
  if (*(connection + 173) == 1)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot associate a child connection with an invalidated root connection"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v30 = NSStringFromSelector(sel__lock_associateNewChildConnection_);
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      *buf = 138544642;
      v48 = v30;
      v49 = 2114;
      v50 = v32;
      v51 = 2048;
      connectionCopy5 = connection;
      v53 = 2114;
      v54 = @"BSXPCServiceConnection.m";
      v55 = 1024;
      v56 = 1080;
      v57 = 2114;
      v58 = v29;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v33 = v29;
    [v29 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A872E08);
  }

  v4 = *(a2 + 192);
  if (([v4 isChild] & 1) == 0)
  {
    v34 = MEMORY[0x1E696AEC0];
    v35 = [a2 description];
    v36 = [v34 stringWithFormat:@"attempt to add a child connection that wasn't a child : %s", objc_msgSend(v35, "UTF8String")];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v37 = NSStringFromSelector(sel__lock_associateNewChildConnection_);
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      *buf = 138544642;
      v48 = v37;
      v49 = 2114;
      v50 = v39;
      v51 = 2048;
      connectionCopy5 = connection;
      v53 = 2114;
      v54 = @"BSXPCServiceConnection.m";
      v55 = 1024;
      v56 = 1082;
      v57 = 2114;
      v58 = v36;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v40 = v36;
    [v36 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A872F24);
  }

  if ([v4 isServer])
  {
    objc_storeStrong((a2 + 56), *(connection + 56));
  }

  v5 = *(connection + 179);
  v6 = BSServiceXPCLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 == 1)
  {
    if (v7)
    {
      v8 = *(connection + 8);
      *buf = 138543618;
      v48 = v8;
      v49 = 2114;
      v50 = v4;
      _os_log_impl(&dword_19A821000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Auto-invalidating new child: %{public}@", buf, 0x16u);
    }

    v46 = 0;
    [(BSXPCServiceConnection *)a2 _handleParentDisconnectWithMessage:&v46 outRevocations:?];
    if (v46)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"how could we have revocation observers if we're not done adding the child? : self=%@ child=%@", connection, a2];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(sel__lock_associateNewChildConnection_);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138544642;
        v48 = v10;
        v49 = 2114;
        v50 = v12;
        v51 = 2048;
        connectionCopy5 = connection;
        v53 = 2114;
        v54 = @"BSXPCServiceConnection.m";
        v55 = 1024;
        v56 = 1092;
        v57 = 2114;
        v58 = v9;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v13 = v9;
      [v9 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A872AE0);
    }

    goto LABEL_26;
  }

  if (v7)
  {
    v14 = *(connection + 8);
    *buf = 138543618;
    v48 = v14;
    v49 = 2114;
    v50 = v4;
    _os_log_impl(&dword_19A821000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Adding child: %{public}@", buf, 0x16u);
  }

  v15 = *(connection + 72);
  if (!v15)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = *(connection + 72);
    *(connection + 72) = v16;

LABEL_19:
    ++*(connection + 168);
    goto LABEL_20;
  }

  if (![v15 count])
  {
    goto LABEL_19;
  }

LABEL_20:
  if ([*(connection + 72) containsObject:a2])
  {
    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"we are already tracking this child"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v42 = NSStringFromSelector(sel__lock_associateNewChildConnection_);
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      *buf = 138544642;
      v48 = v42;
      v49 = 2114;
      v50 = v44;
      v51 = 2048;
      connectionCopy5 = connection;
      v53 = 2114;
      v54 = @"BSXPCServiceConnection.m";
      v55 = 1024;
      v56 = 1103;
      v57 = 2114;
      v58 = v41;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v45 = v41;
    [v41 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A87301CLL);
  }

  [*(connection + 72) addObject:a2];
  [(BSXPCServiceConnection *)a2 _setParent:connection];
  v18 = [BSXPCServiceConnection _invalidationMessageForXPCConnection:?];
  v19 = v18;
  if (v4)
  {
    v20 = v4[4];
  }

  else
  {
    v20 = 0;
  }

  [(BSXPCServiceConnectionMessage *)v18 setChildIdentifier:v20];
  if (v4)
  {
    v21 = *(v4 + 24);
  }

  else
  {
    v21 = 0;
  }

  [(BSXPCServiceConnectionMessage *)v19 setChildIdentifierIsRemotelyDefined:?];
  v22 = *(a2 + 112);
  *(a2 + 112) = v19;

LABEL_26:
  v23 = *MEMORY[0x1E69E9840];
}

- (void)configure:(uint64_t)configure
{
  v33 = *MEMORY[0x1E69E9840];
  if (configure)
  {
    if (!a2)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"API misuse: handler block not specified"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v6 = NSStringFromSelector(sel_configure_);
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v21 = 138544642;
        v22 = v6;
        v23 = 2114;
        v24 = v8;
        v25 = 2048;
        configureCopy3 = configure;
        v27 = 2114;
        v28 = @"BSXPCServiceConnection.m";
        v29 = 1024;
        v30 = 180;
        v31 = 2114;
        v32 = v5;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v21, 0x3Au);
      }

      v9 = v5;
      [v5 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8732B4);
    }

    os_unfair_lock_lock((configure + 160));
    if (*(configure + 174) == 1)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"API misuse: connection cannot be mutated once activated"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(sel_configure_);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v21 = 138544642;
        v22 = v11;
        v23 = 2114;
        v24 = v13;
        v25 = 2048;
        configureCopy3 = configure;
        v27 = 2114;
        v28 = @"BSXPCServiceConnection.m";
        v29 = 1024;
        v30 = 183;
        v31 = 2114;
        v32 = v10;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v21, 0x3Au);
      }

      v14 = v10;
      [v10 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8733ACLL);
    }

    if (*(configure + 173) == 1)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"API misuse: connection cannot be mutated once invalidated"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v16 = NSStringFromSelector(sel_configure_);
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v21 = 138544642;
        v22 = v16;
        v23 = 2114;
        v24 = v18;
        v25 = 2048;
        configureCopy3 = configure;
        v27 = 2114;
        v28 = @"BSXPCServiceConnection.m";
        v29 = 1024;
        v30 = 184;
        v31 = 2114;
        v32 = v15;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v21, 0x3Au);
      }

      v19 = v15;
      [v15 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8734A4);
    }

    if (*(configure + 128))
    {
      (*(a2 + 16))(a2);
    }

    v4 = *MEMORY[0x1E69E9840];

    os_unfair_lock_unlock((configure + 160));
  }

  else
  {
    v20 = *MEMORY[0x1E69E9840];
  }
}

- (uint64_t)activateNowOrWhenReady:(uint64_t)ready
{
  if (!ready)
  {
    return 0;
  }

  os_unfair_lock_lock((ready + 160));
  if (![*(ready + 192) isChild])
  {
    v4 = 0;
    goto LABEL_6;
  }

  v4 = *(ready + 144);
  if (!v4)
  {
LABEL_6:
    v5 = 1;
    goto LABEL_7;
  }

  os_unfair_lock_unlock((ready + 160));
  os_unfair_lock_lock(v4 + 40);
  os_unfair_lock_lock((ready + 160));
  v5 = 0;
LABEL_7:
  v6 = [(BSXPCServiceConnection *)ready _lock_activateNowOrWhenReady:a2];
  os_unfair_lock_unlock((ready + 160));
  if ((v5 & 1) == 0)
  {
    os_unfair_lock_unlock(v4 + 40);
  }

  return v6;
}

- (uint64_t)_lock_activateNowOrWhenReady:(uint64_t)ready
{
  v210 = *MEMORY[0x1E69E9840];
  if (!ready)
  {
    v147 = 0;
    goto LABEL_175;
  }

  os_unfair_lock_assert_owner((ready + 160));
  if ([*(ready + 192) isChild])
  {
    v4 = *(ready + 144);
    v5 = v4;
    if (v4)
    {
      os_unfair_lock_assert_owner(v4 + 40);
      v6 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 1;
LABEL_7:
  if (*(ready + 174))
  {
    goto LABEL_48;
  }

  if (*(ready + 173) == 1)
  {
    v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"API misuse: connection cannot be activated once invalidated"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v88 = NSStringFromSelector(sel__lock_activateNowOrWhenReady_);
      v89 = objc_opt_class();
      v90 = NSStringFromClass(v89);
      *buf = 138544642;
      *&buf[4] = v88;
      *&buf[12] = 2114;
      *&buf[14] = v90;
      v202 = 2048;
      readyCopy14 = ready;
      v204 = 2114;
      v205 = @"BSXPCServiceConnection.m";
      v206 = 1024;
      v207 = 698;
      v208 = 2114;
      v209 = v87;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v91 = v87;
    [v87 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8740A4);
  }

  v7 = *(ready + 128);
  if (!v7)
  {
    v92 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_lock_eventHandler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v93 = NSStringFromSelector(sel__lock_activateNowOrWhenReady_);
      v94 = objc_opt_class();
      v95 = NSStringFromClass(v94);
      *buf = 138544642;
      *&buf[4] = v93;
      *&buf[12] = 2114;
      *&buf[14] = v95;
      v202 = 2048;
      readyCopy14 = ready;
      v204 = 2114;
      v205 = @"BSXPCServiceConnection.m";
      v206 = 1024;
      v207 = 700;
      v208 = 2114;
      v209 = v92;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v96 = v92;
    [v92 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8741ACLL);
  }

  if (!*(v7 + 104) && !*(v7 + 80))
  {
    v102 = [MEMORY[0x1E696AEC0] stringWithFormat:@"we must have an error or invalidation handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v103 = NSStringFromSelector(sel__lock_activateNowOrWhenReady_);
      v104 = objc_opt_class();
      v105 = NSStringFromClass(v104);
      *buf = 138544642;
      *&buf[4] = v103;
      *&buf[12] = 2114;
      *&buf[14] = v105;
      v202 = 2048;
      readyCopy14 = ready;
      v204 = 2114;
      v205 = @"BSXPCServiceConnection.m";
      v206 = 1024;
      v207 = 701;
      v208 = 2114;
      v209 = v102;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v106 = v102;
    [v102 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8743A4);
  }

  *(ready + 174) = 1;
  [(BSXPCServiceConnectionEventObservers *)*(ready + 136) clearRevocations];
  v8 = *(ready + 128);
  if (!v8 || (v9 = *(v8 + 152)) == 0)
  {
    v13 = *(ready + 128);
    if (v13 && (v14 = *(v13 + 144)) != 0)
    {
      v15 = v14;
      v12 = v15;
    }

    else
    {
      v12 = [(BSXPCServiceConnection *)ready _defaultNameWithClientLoggingProem:0 as:1 onLock:?];
      v15 = 0;
    }

    if ([*(ready + 192) isRoot])
    {
      v18 = [BSServiceDispatchQueue queueWithName:v12];
      v19 = *(ready + 32);
      *(ready + 32) = v18;

      v20 = v18;
    }

    else
    {
      v20 = [BSServiceDispatchQueue queueWithName:v12];
    }

    v10 = v20;
    [(BSXPCServiceConnectionEventHandler *)*(ready + 128) setQueue:v20];
LABEL_27:

    goto LABEL_28;
  }

  v10 = v9;
  if ([*(ready + 192) isRoot])
  {
    v11 = v10;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v107 = MEMORY[0x1E696AEC0];
      classForCoder = [v11 classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v109 = NSStringFromClass(classForCoder);
      v110 = objc_opt_class();
      v111 = NSStringFromClass(v110);
      v111 = [v107 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"queue", v109, v111];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v113 = NSStringFromSelector(sel__lock_activateNowOrWhenReady_);
        v114 = objc_opt_class();
        v115 = NSStringFromClass(v114);
        *buf = 138544642;
        *&buf[4] = v113;
        *&buf[12] = 2114;
        *&buf[14] = v115;
        v202 = 2048;
        readyCopy14 = ready;
        v204 = 2114;
        v205 = @"BSXPCServiceConnection.m";
        v206 = 1024;
        v207 = 708;
        v208 = 2114;
        v209 = v111;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v116 = v111;
      [v111 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8744F0);
    }

    v10 = v11;
    v12 = *(ready + 32);
    *(ready + 32) = v10;
    goto LABEL_27;
  }

  _xpcReplyQueue = [v10 _xpcReplyQueue];

  if (!_xpcReplyQueue)
  {
    v17 = [BSServiceReplyFallbackQueue _queueWithReplyQueue:v10 serviceQueue:?];

    [(BSXPCServiceConnectionEventHandler *)*(ready + 128) setQueue:v17];
    v10 = v17;
  }

LABEL_28:
  objc_storeStrong((ready + 40), v10);
  v21 = *(ready + 128);
  if (v21)
  {
    v22 = *(v21 + 112);
  }

  else
  {
    v22 = 0;
  }

  objc_storeStrong((ready + 48), v22);
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_47;
  }

  v23 = *(ready + 32);
  v24 = *(ready + 40);
  if (v23 == v24)
  {
    goto LABEL_47;
  }

  if (!v23 || (v25 = *(v23 + 8)) == 0)
  {
    v117 = [MEMORY[0x1E696AEC0] stringWithFormat:@"the underlying queue must always know if its user-interactive priority : %@", *(ready + 32)];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v118 = NSStringFromSelector(sel__lock_activateNowOrWhenReady_);
      v119 = objc_opt_class();
      v120 = NSStringFromClass(v119);
      *buf = 138544642;
      *&buf[4] = v118;
      *&buf[12] = 2114;
      *&buf[14] = v120;
      v202 = 2048;
      readyCopy14 = ready;
      v204 = 2114;
      v205 = @"BSXPCServiceConnection.m";
      v206 = 1024;
      v207 = 733;
      v208 = 2114;
      v209 = v117;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v121 = v117;
    [v117 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8745F0);
  }

  if (v24)
  {
    v26 = *(v24 + 8);
  }

  else
  {
    v26 = 0;
  }

  if (!CFBooleanGetValue(v25))
  {
    if (!v26 || !CFBooleanGetValue(v26))
    {
      goto LABEL_47;
    }

    v27 = BSServiceBootstrapLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(ready + 8);
      v34 = *(ready + 32);
      v33 = *(ready + 40);
      *buf = 138543874;
      *&buf[4] = v32;
      *&buf[12] = 2114;
      *&buf[14] = v33;
      v202 = 2114;
      readyCopy14 = v34;
      _os_log_impl(&dword_19A821000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ Queue is user-interactive on a default demuxer. If an incoming message is sent from a user-interactive context then this may lead to a priority drop in the demuxer. queue=%{public}@ demuxer=%{public}@", buf, 0x20u);
    }

    goto LABEL_46;
  }

  if (!v26)
  {
    v27 = BSServiceBootstrapLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v84 = *(ready + 8);
      v86 = *(ready + 32);
      v85 = *(ready + 40);
      *buf = 138543874;
      *&buf[4] = v84;
      *&buf[12] = 2114;
      *&buf[14] = v85;
      v202 = 2114;
      readyCopy14 = v86;
      goto LABEL_102;
    }

LABEL_46:

    goto LABEL_47;
  }

  if (!CFBooleanGetValue(v26))
  {
    v27 = BSServiceBootstrapLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = *(ready + 8);
      v30 = *(ready + 32);
      v29 = *(ready + 40);
      *buf = 138543874;
      *&buf[4] = v28;
      *&buf[12] = 2114;
      *&buf[14] = v29;
      v202 = 2114;
      readyCopy14 = v30;
      v31 = "%{public}@ Queue is misconfigured. The user-interactive demuxer will hand-off to a queue that is not user-interactive. queue=%{public}@ demuxer=%{public}@";
LABEL_102:
      _os_log_error_impl(&dword_19A821000, v27, OS_LOG_TYPE_ERROR, v31, buf, 0x20u);
      goto LABEL_46;
    }

    goto LABEL_46;
  }

LABEL_47:

LABEL_48:
  if ((*(ready + 175) & 1) == 0)
  {
    v35 = *(ready + 128);
    if (v35)
    {
      v36 = *(v35 + 144);

      v37 = BSServiceXPCLog();
      v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
      if (v36)
      {
        if (v38)
        {
          v39 = *(ready + 8);
          v40 = *(ready + 128);
          if (v40)
          {
            v40 = v40[18];
          }

          v41 = v40;
          *buf = 138543618;
          *&buf[4] = v39;
          *&buf[12] = 2114;
          *&buf[14] = v41;
          _os_log_impl(&dword_19A821000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ Client activate (%{public}@).", buf, 0x16u);
        }
      }

      else if (v38)
      {
        v44 = *(ready + 8);
        *buf = 138543362;
        *&buf[4] = v44;
        _os_log_impl(&dword_19A821000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ Client activate.", buf, 0xCu);
      }

      *(ready + 175) = 1;
      ++*(ready + 164);
    }

    else
    {
      if ((*(ready + 179) & 1) == 0)
      {
        v97 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must be invalidated if there is no event handler"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v98 = NSStringFromSelector(sel__lock_activateNowOrWhenReady_);
          v99 = objc_opt_class();
          v100 = NSStringFromClass(v99);
          *buf = 138544642;
          *&buf[4] = v98;
          *&buf[12] = 2114;
          *&buf[14] = v100;
          v202 = 2048;
          readyCopy14 = ready;
          v204 = 2114;
          v205 = @"BSXPCServiceConnection.m";
          v206 = 1024;
          v207 = 765;
          v208 = 2114;
          v209 = v97;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v101 = v97;
        [v97 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A8742A8);
      }

      v42 = BSServiceXPCLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = *(ready + 8);
        *buf = 138543362;
        *&buf[4] = v43;
        _os_log_impl(&dword_19A821000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ Ignoring client re-activate after invalidation.", buf, 0xCu);
      }
    }

    if ((*(ready + 179) & 1) == 0)
    {
      if (![*(ready + 192) isRoot])
      {
        if (v6)
        {
          *(ready + 176) = 0;
        }

        else
        {
          v199[0] = MEMORY[0x1E69E9820];
          v199[1] = 3221225472;
          v199[2] = __55__BSXPCServiceConnection__lock_activateNowOrWhenReady___block_invoke_212;
          v199[3] = &unk_1E7520E40;
          v199[4] = ready;
          *(ready + 176) = [(BSXPCServiceConnection *)v5 _lock_activateNowOrWhenReady:v199]^ 1;
          if ([*(ready + 192) isClient])
          {
            objc_storeStrong((ready + 56), v5[7]);
          }

          else
          {
            v65 = *(ready + 56);
            if (!v65)
            {
              v137 = [MEMORY[0x1E696AEC0] stringWithFormat:@"server connection must already posess a last known xpc connection"];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v138 = NSStringFromSelector(sel__lock_activateNowOrWhenReady_);
                v139 = objc_opt_class();
                v140 = NSStringFromClass(v139);
                *buf = 138544642;
                *&buf[4] = v138;
                *&buf[12] = 2114;
                *&buf[14] = v140;
                v202 = 2048;
                readyCopy14 = ready;
                v204 = 2114;
                v205 = @"BSXPCServiceConnection.m";
                v206 = 1024;
                v207 = 823;
                v208 = 2114;
                v209 = v137;
                _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
              }

              v141 = v137;
              [v137 UTF8String];
              _bs_set_crash_log_message();
              __break(0);
              JUMPOUT(0x19A8749E0);
            }

            if (v65 != v5[7])
            {
              v142 = [MEMORY[0x1E696AEC0] stringWithFormat:@"lastKnownConnection must be the same as the parent's lastKnownConnection for child server peers"];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v143 = NSStringFromSelector(sel__lock_activateNowOrWhenReady_);
                v144 = objc_opt_class();
                v145 = NSStringFromClass(v144);
                *buf = 138544642;
                *&buf[4] = v143;
                *&buf[12] = 2114;
                *&buf[14] = v145;
                v202 = 2048;
                readyCopy14 = ready;
                v204 = 2114;
                v205 = @"BSXPCServiceConnection.m";
                v206 = 1024;
                v207 = 824;
                v208 = 2114;
                v209 = v142;
                _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
              }

              v146 = v142;
              [v142 UTF8String];
              _bs_set_crash_log_message();
              __break(0);
              JUMPOUT(0x19A874ADCLL);
            }
          }
        }

        v66 = *(ready + 192);
        v49 = v66;
        if (!v66 || (v66[3] & 1) == 0)
        {
          v67 = [BSXPCServiceConnectionMessage messageWithXPCConnection:*(ready + 32) targetQueue:0 handshake:0 activationGeneration:0 delegate:?];
          [(BSXPCServiceConnectionMessage *)v67 setMessageID:?];
          if (v49)
          {
            v68 = v49[4];
          }

          else
          {
            v68 = 0;
          }

          [(BSXPCServiceConnectionMessage *)v67 setChildIdentifier:v68];
          if (v49)
          {
            v69 = *(v49 + 24);
          }

          else
          {
            v69 = 0;
          }

          [(BSXPCServiceConnectionMessage *)v67 setChildIdentifierIsRemotelyDefined:?];
          v70 = [[BSXPCServiceConnectionActivationMessage alloc] initWithMessage:v67];
          v71 = *(ready + 96);
          *(ready + 96) = v70;
        }

        if ([v49 isClient] && !*(ready + 112))
        {
          v72 = [BSXPCServiceConnection _invalidationMessageForXPCConnection:?];
          v73 = *(ready + 112);
          *(ready + 112) = v72;

          if (v49)
          {
            v74 = v49[4];
          }

          else
          {
            v74 = 0;
          }

          [(BSXPCServiceConnectionMessage *)*(ready + 112) setChildIdentifier:v74];
          if (v49)
          {
            v75 = *(v49 + 24);
          }

          else
          {
            v75 = 0;
          }

          [(BSXPCServiceConnectionMessage *)*(ready + 112) setChildIdentifierIsRemotelyDefined:?];
        }

        goto LABEL_146;
      }

      if ([*(ready + 192) isClient])
      {
        v45 = *(ready + 192);
        v46 = objc_opt_class();
        if (v46 != objc_opt_class())
        {
          v76 = MEMORY[0x1E696AEC0];
          v77 = [*(ready + 192) description];
          v78 = v77;
          v79 = [v76 stringWithFormat:@"unknown root context %s", objc_msgSend(v77, "UTF8String")];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v80 = NSStringFromSelector(sel__lock_activateNowOrWhenReady_);
            v81 = objc_opt_class();
            v82 = NSStringFromClass(v81);
            *buf = 138544642;
            *&buf[4] = v80;
            *&buf[12] = 2114;
            *&buf[14] = v82;
            v202 = 2048;
            readyCopy14 = ready;
            v204 = 2114;
            v205 = @"BSXPCServiceConnection.m";
            v206 = 1024;
            v207 = 801;
            v208 = 2114;
            v209 = v79;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v83 = v79;
          [v79 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A873F50);
        }

        v47 = *(ready + 192);
        if (v47 && (v48 = *(v47 + 40)) != 0)
        {
          v49 = v48;
          v50 = v48[2];
          if (v50)
          {
            v51 = v50;
            v52 = xpc_connection_create_from_endpoint(v50);
            v53 = *(ready + 64);
            *(ready + 64) = v52;

            v54 = *(ready + 64);
            *(v49 + 8);
            xpc_connection_set_bs_type();
            v55 = v49[3];
            v56 = v55;
            if (v55)
            {
              *buf = 0;
              *&buf[8] = 0;
              [v55 getUUIDBytes:buf];
              v57 = *(ready + 64);
              xpc_connection_set_oneshot_instance();
            }

            objc_storeStrong((ready + 56), *(ready + 64));
            v58 = [BSXPCServiceConnectionMessage messageWithXPCConnection:*(ready + 32) targetQueue:0 handshake:0 activationGeneration:0 delegate:?];
            [(BSXPCServiceConnectionMessage *)v58 setMessageID:?];
            v59 = [[BSXPCServiceConnectionActivationMessage alloc] initWithMessage:v58];
            v60 = *(ready + 96);
            *(ready + 96) = v59;

            v61 = *(ready + 112);
            *(ready + 112) = 0;

            goto LABEL_145;
          }
        }

        else
        {
          v49 = 0;
        }

        v148 = *(ready + 40);
        v200[0] = MEMORY[0x1E69E9820];
        v200[1] = 3221225472;
        v200[2] = __55__BSXPCServiceConnection__lock_activateNowOrWhenReady___block_invoke;
        v200[3] = &unk_1E75205D0;
        v200[4] = ready;
        [v148 performAsync:v200];
        v51 = 0;
LABEL_145:

        goto LABEL_146;
      }

      v62 = *(ready + 64);
      if (!v62)
      {
        v122 = [MEMORY[0x1E696AEC0] stringWithFormat:@"server connection must already posess an xpc connection"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v123 = NSStringFromSelector(sel__lock_activateNowOrWhenReady_);
          v124 = objc_opt_class();
          v125 = NSStringFromClass(v124);
          *buf = 138544642;
          *&buf[4] = v123;
          *&buf[12] = 2114;
          *&buf[14] = v125;
          v202 = 2048;
          readyCopy14 = ready;
          v204 = 2114;
          v205 = @"BSXPCServiceConnection.m";
          v206 = 1024;
          v207 = 804;
          v208 = 2114;
          v209 = v122;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v126 = v122;
        [v122 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A8746ECLL);
      }

      v63 = *(ready + 56);
      if (!v63)
      {
        v127 = [MEMORY[0x1E696AEC0] stringWithFormat:@"server connection must already posess a last known xpc connection"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v128 = NSStringFromSelector(sel__lock_activateNowOrWhenReady_);
          v129 = objc_opt_class();
          v130 = NSStringFromClass(v129);
          *buf = 138544642;
          *&buf[4] = v128;
          *&buf[12] = 2114;
          *&buf[14] = v130;
          v202 = 2048;
          readyCopy14 = ready;
          v204 = 2114;
          v205 = @"BSXPCServiceConnection.m";
          v206 = 1024;
          v207 = 805;
          v208 = 2114;
          v209 = v127;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v131 = v127;
        [v127 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A8747E8);
      }

      if (v62 != v63)
      {
        v132 = [MEMORY[0x1E696AEC0] stringWithFormat:@"connection and lastKnownConnection must be the same for server peers"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v133 = NSStringFromSelector(sel__lock_activateNowOrWhenReady_);
          v134 = objc_opt_class();
          v135 = NSStringFromClass(v134);
          *buf = 138544642;
          *&buf[4] = v133;
          *&buf[12] = 2114;
          *&buf[14] = v135;
          v202 = 2048;
          readyCopy14 = ready;
          v204 = 2114;
          v205 = @"BSXPCServiceConnection.m";
          v206 = 1024;
          v207 = 806;
          v208 = 2114;
          v209 = v132;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v136 = v132;
        [v132 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A8748E4);
      }

      if (!*(ready + 112))
      {
        v64 = [BSXPCServiceConnection _invalidationMessageForXPCConnection:v63];
        v49 = *(ready + 112);
        *(ready + 112) = v64;
LABEL_146:
      }
    }

    v149 = *(ready + 64);
    if (v149)
    {
      queue = [*(ready + 32) queue];
      xpc_connection_set_target_queue(v149, queue);

      v151 = *(ready + 64);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __55__BSXPCServiceConnection__lock_activateNowOrWhenReady___block_invoke_217;
      handler[3] = &unk_1E75212A8;
      handler[4] = ready;
      xpc_connection_set_event_handler(v151, handler);
      if (!xpc_connection_get_context(*(ready + 64)))
      {
        xpc_connection_set_context(*(ready + 64), *(ready + 192));
        xpc_connection_set_finalizer_f(*(ready + 64), CFBridgingRelease);
      }
    }

    [(BSXPCServiceConnectionEventHandler *)*(ready + 128) connectionInitialized:ready withActivationGeneration:*(ready + 164) activeXPCConnection:*(ready + 56) xpcConnectionTargetQueue:*(ready + 32)];
    if (*(ready + 96))
    {
      v152 = *(ready + 8);
      readyCopy13 = ready;
      v154 = *(ready + 164);
      [(BSXPCServiceConnectionMessage *)*(*(ready + 96) + 8) setReplyQueue:?];
      v155 = *(*(ready + 96) + 8);
      v156 = *(ready + 128);
      if (v156)
      {
        v156 = v156[21];
      }

      v157 = v156;
      [v155 encodeObject:v157 forKey:@"bsxpc_context"];

      v158 = *(*(ready + 96) + 8);
      newValue[0] = MEMORY[0x1E69E9820];
      newValue[1] = 3221225472;
      newValue[2] = __55__BSXPCServiceConnection__lock_activateNowOrWhenReady___block_invoke_2;
      newValue[3] = &unk_1E75212D0;
      newValue[4] = readyCopy13;
      newValue[5] = readyCopy13;
      v197 = v154;
      v160 = v152;
      v196 = v160;
      v161 = v160;
      if (v158)
      {
        objc_setProperty_nonatomic_copy(v158, v159, newValue, 80);
        v161 = v196;
      }
    }

    if (*(ready + 104))
    {
      *(ready + 177) = 1;
      v162 = *(ready + 40);
      v194[0] = MEMORY[0x1E69E9820];
      v194[1] = 3221225472;
      v194[2] = __55__BSXPCServiceConnection__lock_activateNowOrWhenReady___block_invoke_225;
      v194[3] = &unk_1E75205D0;
      v194[4] = ready;
      [v162 performAsync:v194];
    }

    v163 = *(ready + 64);
    if (!v163)
    {
      goto LABEL_166;
    }

    xpc_connection_activate(v163);
    v164 = *(ready + 64);
    if (xpc_connection_get_bs_type() == 3)
    {
      *(ready + 176) = 1;
    }

    else if ((*(ready + 176) & 1) == 0)
    {
      goto LABEL_166;
    }

    v165 = *(ready + 128);
    if (!v165)
    {
      goto LABEL_165;
    }

    if ((*(v165 + 128) & 1) == 0)
    {
      v165 = *(v165 + 160);
LABEL_165:
      v166 = v165;
      v167 = [v166 clientMessagingExpectation] == 1;

      if (!v167)
      {
        v182 = [MEMORY[0x1E696AEC0] stringWithFormat:@"non-launching ports can only be used with services that are explicitly non-launching aware or whose interface supports BSServiceInterfaceMessagingExpectationAfterHandshake"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v183 = NSStringFromSelector(sel__lock_activateNowOrWhenReady_);
          v184 = objc_opt_class();
          v185 = NSStringFromClass(v184);
          *buf = 138544642;
          *&buf[4] = v183;
          *&buf[12] = 2114;
          *&buf[14] = v185;
          v202 = 2048;
          readyCopy14 = ready;
          v204 = 2114;
          v205 = @"BSXPCServiceConnection.m";
          v206 = 1024;
          v207 = 911;
          v208 = 2114;
          v209 = v182;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v186 = v182;
        [v182 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A875084);
      }
    }

LABEL_166:
    if (([*(ready + 192) isRoot] & 1) != 0 || (*(ready + 176) & 1) == 0)
    {
      [*(ready + 96) sendIfNecessary];
      v168 = *(ready + 96);
      *(ready + 96) = 0;
    }

    [*(ready + 104) send];
    v169 = *(ready + 104);
    *(ready + 104) = 0;

    v170 = *(ready + 128);
    v191[0] = MEMORY[0x1E69E9820];
    v191[1] = 3221225472;
    v191[2] = __55__BSXPCServiceConnection__lock_activateNowOrWhenReady___block_invoke_229;
    v191[3] = &unk_1E7520B68;
    v192 = v170;
    v193 = a2;
    v191[4] = ready;
    v171 = v170;
    [(BSXPCServiceConnection *)ready _lock_enqueueConnectionEstablishedEvent:v191];

    goto LABEL_170;
  }

  v190[0] = MEMORY[0x1E69E9820];
  v190[1] = 3221225472;
  v190[2] = __55__BSXPCServiceConnection__lock_activateNowOrWhenReady___block_invoke_230;
  v190[3] = &unk_1E75211C0;
  v190[4] = ready;
  v190[5] = a2;
  [(BSXPCServiceConnection *)ready _lock_enqueueConnectionEstablishedEvent:v190];
LABEL_170:
  if (*(ready + 179) == 1)
  {
    v172 = *(ready + 128);
    v173 = v172;
    if (v172)
    {
      v174 = *(ready + 40);
      v187[0] = MEMORY[0x1E69E9820];
      v187[1] = 3221225472;
      v187[2] = __55__BSXPCServiceConnection__lock_activateNowOrWhenReady___block_invoke_2_231;
      v187[3] = &unk_1E75209E8;
      v188 = v172;
      readyCopy15 = ready;
      [v174 performAsync:v187];
    }

    v175 = *(ready + 128);
    *(ready + 128) = 0;

    v176 = *(ready + 48);
    *(ready + 48) = 0;

    v177 = *(ready + 80);
    *(ready + 80) = 0;

    v178 = *(ready + 88);
    *(ready + 88) = 0;
  }

  v179 = *(ready + 176);

  v147 = v179 ^ 1;
LABEL_175:
  v180 = *MEMORY[0x1E69E9840];
  return v147 & 1;
}

- (id)remoteTargetWithAssertionAttributes:(int)attributes enforcingLaunchConstraints:
{
  v39 = *MEMORY[0x1E69E9840];
  if (self)
  {
    os_unfair_lock_lock((self + 160));
    if (*(self + 174) == 1)
    {
      if (attributes)
      {
        if (*(self + 176))
        {
          if (![a2 count])
          {
            v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"empty launch attributes"];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v24 = NSStringFromSelector(sel_remoteTargetWithAssertionAttributes_enforcingLaunchConstraints_);
              v25 = objc_opt_class();
              v26 = NSStringFromClass(v25);
              *buf = 138544642;
              *&buf[4] = v24;
              *&buf[12] = 2114;
              *&buf[14] = v26;
              *&buf[22] = 2048;
              selfCopy2 = self;
              *v34 = 2114;
              *&v34[2] = @"BSXPCServiceConnection.m";
              v35 = 1024;
              v36 = 224;
              v37 = 2114;
              v38 = v23;
              _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            v27 = v23;
            [v23 UTF8String];
            _bs_set_crash_log_message();
            __break(0);
            JUMPOUT(0x19A8757B4);
          }

          v28 = 0;
          v29 = &v28;
          v30 = 0x2050000000;
          v6 = getRBSConstraintsAttributeClass_softClass_0;
          v31 = getRBSConstraintsAttributeClass_softClass_0;
          if (!getRBSConstraintsAttributeClass_softClass_0)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __getRBSConstraintsAttributeClass_block_invoke_0;
            selfCopy2 = &unk_1E75200F8;
            *v34 = &v28;
            __getRBSConstraintsAttributeClass_block_invoke_0(buf);
            v6 = v29[3];
          }

          v7 = v6;
          _Block_object_dispose(&v28, 8);
          v8 = [v6 attributeWithConstraints:{7, v28}];
          v9 = *(self + 128);
          v10 = *(self + 96);
          v11 = [a2 arrayByAddingObject:v8];
          v12 = [(BSXPCServiceConnectionEventHandler *)v9 remoteTargetWithHandshake:v10 assertionAttributes:v11];

          goto LABEL_17;
        }
      }

      else
      {
        if (*(self + 176))
        {
          goto LABEL_15;
        }

        v13 = *(self + 128);
        if (v13)
        {
          v13 = v13[20];
        }

        v14 = v13;
        clientMessagingExpectation = [v14 clientMessagingExpectation];

        if (clientMessagingExpectation == 1)
        {
LABEL_15:
          if (*(self + 175) == 1 && (*(self + 177) & 1) == 0)
          {
            v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot send a message before handshake has finished"];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v19 = NSStringFromSelector(sel_remoteTargetWithAssertionAttributes_enforcingLaunchConstraints_);
              v20 = objc_opt_class();
              v21 = NSStringFromClass(v20);
              *buf = 138544642;
              *&buf[4] = v19;
              *&buf[12] = 2114;
              *&buf[14] = v21;
              *&buf[22] = 2048;
              selfCopy2 = self;
              *v34 = 2114;
              *&v34[2] = @"BSXPCServiceConnection.m";
              v35 = 1024;
              v36 = 234;
              v37 = 2114;
              v38 = v18;
              _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            v22 = v18;
            [v18 UTF8String];
            _bs_set_crash_log_message();
            __break(0);
            JUMPOUT(0x19A8756BCLL);
          }
        }
      }

      v12 = [(BSXPCServiceConnectionEventHandler *)*(self + 128) remoteTargetWithHandshake:a2 assertionAttributes:?];
    }

    else
    {
      v12 = 0;
    }

LABEL_17:
    os_unfair_lock_unlock((self + 160));
    goto LABEL_18;
  }

  v12 = 0;
LABEL_18:
  v16 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)createMessageWithOptions:(uint64_t)options
{
  v33 = *MEMORY[0x1E69E9840];
  if (options)
  {
    os_unfair_lock_lock((options + 160));
    if ((*(options + 174) & 1) == 0)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"can't create a message on %@ before calling activate the first time", *(options + 8)];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = NSStringFromSelector(sel_createMessageWithOptions_);
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138544642;
        v22 = v12;
        v23 = 2114;
        v24 = v14;
        v25 = 2048;
        optionsCopy2 = options;
        v27 = 2114;
        v28 = @"BSXPCServiceConnection.m";
        v29 = 1024;
        v30 = 249;
        v31 = 2114;
        v32 = v11;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v15 = v11;
      [v11 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A875A88);
    }

    if (*(options + 176) == 1 && *(options + 175) == 1 && (a2 & 1) == 0 && (*(options + 177) & 1) == 0)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot create a message before handshake has finished"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v17 = NSStringFromSelector(sel_createMessageWithOptions_);
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        *buf = 138544642;
        v22 = v17;
        v23 = 2114;
        v24 = v19;
        v25 = 2048;
        optionsCopy2 = options;
        v27 = 2114;
        v28 = @"BSXPCServiceConnection.m";
        v29 = 1024;
        v30 = 252;
        v31 = 2114;
        v32 = v16;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v20 = v16;
      [v16 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A875B80);
    }

    if (*(options + 179))
    {
      v4 = 0;
    }

    else
    {
      v4 = *(options + 56);
    }

    v5 = [BSXPCServiceConnectionMessage messageWithXPCConnection:v4 targetQueue:*(options + 32) handshake:*(options + 96) activationGeneration:*(options + 164) delegate:options];
    if ([*(options + 192) isChild])
    {
      v6 = *(options + 192);
      if (v6)
      {
        v7 = *(v6 + 32);
      }

      else
      {
        v7 = 0;
      }

      [(BSXPCServiceConnectionMessage *)v5 setChildIdentifier:v7];
      v8 = *(options + 192);
      if (v8)
      {
        LOBYTE(v8) = *(v8 + 24);
      }

      [(BSXPCServiceConnectionMessage *)v5 setChildIdentifierIsRemotelyDefined:?];
    }

    [(BSXPCServiceConnectionMessage *)v5 setReplyQueue:?];
    os_unfair_lock_unlock((options + 160));
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)sendBarrierBlock:(uint64_t)block
{
  v34 = *MEMORY[0x1E69E9840];
  if (block)
  {
    if (!a2)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"block"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(sel_sendBarrierBlock_);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138544642;
        v23 = v10;
        v24 = 2114;
        v25 = v12;
        v26 = 2048;
        blockCopy2 = block;
        v28 = 2114;
        v29 = @"BSXPCServiceConnection.m";
        v30 = 1024;
        v31 = 269;
        v32 = 2114;
        v33 = v9;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v13 = v9;
      [v9 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A875E24);
    }

    os_unfair_recursive_lock_lock_with_options();
    [*(block + 120) commitWithReason:@"send-barrier"];
    v4 = *(block + 120);
    *(block + 120) = 0;

    os_unfair_recursive_lock_unlock();
    os_unfair_lock_lock((block + 160));
    if ((*(block + 174) & 1) == 0)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"can't use a sendBarrier on %@ before calling activate the first time", *(block + 8)];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = NSStringFromSelector(sel_sendBarrierBlock_);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138544642;
        v23 = v15;
        v24 = 2114;
        v25 = v17;
        v26 = 2048;
        blockCopy2 = block;
        v28 = 2114;
        v29 = @"BSXPCServiceConnection.m";
        v30 = 1024;
        v31 = 277;
        v32 = 2114;
        v33 = v14;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v18 = v14;
      [v14 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A875F24);
    }

    v5 = *(block + 56);
    if (v5)
    {
      xpc_connection_send_barrier(v5, a2);
    }

    else
    {
      v6 = *(block + 40);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __43__BSXPCServiceConnection_sendBarrierBlock___block_invoke;
      v19[3] = &unk_1E7520648;
      v20 = v6;
      v21 = a2;
      v7 = v6;
      [v7 performAsync:v19];
    }

    os_unfair_lock_unlock((block + 160));
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __43__BSXPCServiceConnection_sendBarrierBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) assertBarrierOnQueue];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_clientInvalidateWithType:(uint64_t)type
{
  v44 = *MEMORY[0x1E69E9840];
  if (type)
  {
    if (!a2)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"clientInvalidation must be a concrete type"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = NSStringFromSelector(sel__clientInvalidateWithType_);
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        *buf = 138544642;
        v33 = v22;
        v34 = 2114;
        v35 = v24;
        v36 = 2048;
        typeCopy = type;
        v38 = 2114;
        v39 = @"BSXPCServiceConnection.m";
        v40 = 1024;
        v41 = 955;
        v42 = 2114;
        v43 = v21;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v25 = v21;
      [v21 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A876378);
    }

    v4 = a2 != 1;
    os_unfair_lock_lock((type + 160));
    v5 = *(type + 144);
    if ((*(type + 172) & 3) != 0)
    {
      if (a2 == 1 || (*(type + 173) & 1) != 0)
      {
        v6 = 0;
      }

      else
      {
        v10 = BSServiceXPCLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(type + 8);
          *buf = 138543618;
          v33 = v11;
          v34 = 1024;
          LODWORD(v35) = a2;
          _os_log_impl(&dword_19A821000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Trailing client invalidation explicitly signaled. (type=%i)", buf, 0x12u);
        }

        v6 = 0;
        *(type + 173) = 1;
      }
    }

    else
    {
      v7 = BSServiceXPCLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(type + 8);
        *buf = 138543618;
        v33 = v8;
        v34 = 1024;
        LODWORD(v35) = a2;
        _os_log_impl(&dword_19A821000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Client invalidation signaled. (type=%i)", buf, 0x12u);
      }

      *(type + 172) = *(type + 172) & 0xFC | a2 & 3;
      *(type + 173) = v4;
      if (a2 == 1)
      {
        v9 = 0;
      }

      else if (a2 == 3)
      {
        if ([*(type + 192) isServer])
        {
          v9 = 2;
        }

        else
        {
          v9 = 1;
        }
      }

      else
      {
        v9 = 1;
      }

      v30 = 0;
      [(BSXPCServiceConnection *)type _lock_invalidateWithDisconnectMessage:v9 outChildRevocations:&v30];
      v6 = v30;
      v12 = *(type + 128);
      *(type + 128) = 0;

      v13 = *(type + 48);
      *(type + 48) = 0;

      v14 = *(type + 80);
      *(type + 80) = 0;

      v15 = *(type + 88);
      *(type + 88) = 0;
    }

    os_unfair_lock_unlock((type + 160));
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = v6;
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v17)
    {
      v18 = *v27;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v16);
          }

          (*(*(*(&v26 + 1) + 8 * i) + 16))(*(*(&v26 + 1) + 8 * i));
        }

        v17 = [v16 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v17);
    }

    [v5 _noteChildConnectionDidInvalidate:{type, v26}];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (uint64_t)isValid
{
  if (self)
  {
    os_unfair_lock_lock((self + 160));
    v2 = *(self + 179) ^ 1;
    os_unfair_lock_unlock((self + 160));
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (id)addObserverWithReason:(uint64_t)reason forRevocation:
{
  v50 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v5 = a2;
    v6 = MEMORY[0x1E696AEC0];
    if (!v5)
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"reason", v20];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = NSStringFromSelector(sel_addObserverWithReason_forRevocation_);
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        *buf = 138544642;
        *&buf[4] = v22;
        *&buf[12] = 2114;
        *&buf[14] = v24;
        *&buf[22] = 2048;
        selfCopy3 = self;
        v44 = 2114;
        v45 = @"BSXPCServiceConnection.m";
        v46 = 1024;
        v47 = 327;
        v48 = 2114;
        v49 = v21;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v25 = v21;
      [v21 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A876730);
    }

    v7 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = MEMORY[0x1E696AEC0];
      classForCoder = [v7 classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v28 = NSStringFromClass(classForCoder);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = [v26 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"reason", v28, v30];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v32 = NSStringFromSelector(sel_addObserverWithReason_forRevocation_);
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        *buf = 138544642;
        *&buf[4] = v32;
        *&buf[12] = 2114;
        *&buf[14] = v34;
        *&buf[22] = 2048;
        selfCopy3 = self;
        v44 = 2114;
        v45 = @"BSXPCServiceConnection.m";
        v46 = 1024;
        v47 = 327;
        v48 = 2114;
        v49 = v31;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v35 = v31;
      [v31 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A876874);
    }

    if (!reason)
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"block"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v37 = NSStringFromSelector(sel_addObserverWithReason_forRevocation_);
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        *buf = 138544642;
        *&buf[4] = v37;
        *&buf[12] = 2114;
        *&buf[14] = v39;
        *&buf[22] = 2048;
        selfCopy3 = self;
        v44 = 2114;
        v45 = @"BSXPCServiceConnection.m";
        v46 = 1024;
        v47 = 328;
        v48 = 2114;
        v49 = v36;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v40 = v36;
      [v36 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A876974);
    }

    os_unfair_lock_lock((self + 160));
    if ((*(self + 179) & 1) != 0 || (*(self + 174) & 1) != 0 || (v9 = *(self + 136)) == 0 && (v10 = objc_opt_new(), v11 = *(self + 136), *(self + 136) = v10, v11, (v9 = *(self + 136)) == 0))
    {
      v8 = 0;
    }

    else
    {
      objc_initWeak(&location, v9);
      v12 = objc_alloc(MEMORY[0x1E698E778]);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __69__BSXPCServiceConnectionEventObservers_addRevocationBlock_forReason___block_invoke;
      selfCopy3 = &unk_1E75212F8;
      objc_copyWeak(&v44, &location);
      v8 = [v12 initWithReason:v7 invalidatedWithContextBlock:buf];
      os_unfair_lock_lock((v9 + 16));
      v13 = *(v9 + 8);
      if (!v13)
      {
        v14 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:517 valueOptions:512];
        v15 = *(v9 + 8);
        *(v9 + 8) = v14;

        v13 = *(v9 + 8);
      }

      v16 = MEMORY[0x19A908200](reason);
      [v13 setObject:v16 forKey:v8];

      os_unfair_lock_unlock((v9 + 16));
      objc_destroyWeak(&v44);
      objc_destroyWeak(&location);
    }

    os_unfair_lock_unlock((self + 160));
  }

  else
  {
    v8 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)hasChildren
{
  if (!self)
  {
    return 0;
  }

  os_unfair_lock_lock((self + 160));
  v2 = [*(self + 72) count] != 0;
  os_unfair_lock_unlock((self + 160));
  return v2;
}

- (id)_underlyingServerPeerConnection
{
  v27 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (([*(self + 192) isServer] & 1) == 0)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_underlyingServerPeer can only be called on a server peer : context = %@", *(self + 192)];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v6 = NSStringFromSelector(sel__underlyingServerPeerConnection);
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        *buf = 138544642;
        v16 = v6;
        v17 = 2114;
        v18 = v8;
        v19 = 2048;
        selfCopy2 = self;
        v21 = 2114;
        v22 = @"BSXPCServiceConnection.m";
        v23 = 1024;
        v24 = 413;
        v25 = 2114;
        v26 = v5;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v9 = v5;
      [v5 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A876C58);
    }

    os_unfair_lock_lock((self + 160));
    v2 = *(self + 56);
    os_unfair_lock_unlock((self + 160));
    if (!v2)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"server peer is somehow missing its underlying connection"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(sel__underlyingServerPeerConnection);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138544642;
        v16 = v11;
        v17 = 2114;
        v18 = v13;
        v19 = 2048;
        selfCopy2 = self;
        v21 = 2114;
        v22 = @"BSXPCServiceConnection.m";
        v23 = 1024;
        v24 = 417;
        v25 = 2114;
        v26 = v10;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v14 = v10;
      [v10 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A876D50);
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)defaultNameWithClientLoggingProem:(uint64_t)proem as:
{
  if (self)
  {
    self = [(BSXPCServiceConnection *)self _defaultNameWithClientLoggingProem:a2 as:proem onLock:0];
    v3 = vars8;
  }

  return self;
}

- (id)_defaultNameWithClientLoggingProem:(uint64_t)proem as:(int)as onLock:
{
  if (self)
  {
    endpointDescription = [*(self + 192) endpointDescription];
    v9 = *(self + 192);
    if (v9)
    {
      v9 = v9[1];
    }

    v10 = v9;
    if (![*(self + 192) isServer])
    {
      if (proem)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"BSXPC(%@%@)-as(%@)", endpointDescription, v10, proem];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"BSXPC(%@%@)", endpointDescription, v10];
      }
      proem = ;
      goto LABEL_20;
    }

    if (as)
    {
      os_unfair_lock_assert_owner((self + 160));
      v11 = [*(self + 24) pid];
    }

    else
    {
      auditToken = [(BSXPCServiceConnection *)self auditToken];
      v11 = [auditToken pid];
    }

    if (a2)
    {
      if (proem)
      {
        proem = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSXPC(%@%@)-from(%d:%@)-as(%@)", endpointDescription, v10, v11, a2, proem];
LABEL_20:
        v15 = proem;

        goto LABEL_21;
      }

      v14 = @"BSXPC(%@%@)-from(%d:%@)";
    }

    else
    {
      if (!proem)
      {
        proem = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSXPC(%@%@)-from(%d)", endpointDescription, v10, v11];
        goto LABEL_20;
      }

      v14 = @"BSXPC(%@%@)-from(%d)-as(%@)";
      a2 = proem;
    }

    proem = [MEMORY[0x1E696AEC0] stringWithFormat:v14, endpointDescription, v10, v11, a2];
    goto LABEL_20;
  }

  v15 = 0;
LABEL_21:

  return v15;
}

- (id)stateDump
{
  if (self)
  {
    os_unfair_lock_lock((self + 160));
    v2 = *(self + 144);
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: p=<%@:%p> ch=%lu c=%i a=%i w=%i e=%i ri=%i ci=%i cie=%i i=%i eh=%p>", *(self + 192), objc_opt_class(), v2, objc_msgSend(*(self + 72), "count"), *(self + 174), *(self + 175), *(self + 176), *(self + 177), *(self + 178), *(self + 172) & 3, *(self + 173), *(self + 179), *(self + 128)];
    os_unfair_lock_unlock((self + 160));
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (void)_invalidateIncomingXPCConnection:(int)connection withDisconnectMessage:
{
  objc_opt_self();
  if (connection)
  {
    v5 = [BSXPCServiceConnection _invalidationMessageForXPCConnection:a2];
    v6 = v5;
    if (connection == 2)
    {
      [(BSXPCServiceConnectionMessage *)v5 setMessageID:?];
    }
  }

  else
  {
    v6 = 0;
  }

  xpc_connection_set_event_handler(a2, &__block_literal_global_14);
  xpc_connection_activate(a2);
  [v6 send];
  barrier[0] = MEMORY[0x1E69E9820];
  barrier[1] = 3221225472;
  barrier[2] = __81__BSXPCServiceConnection__invalidateIncomingXPCConnection_withDisconnectMessage___block_invoke_2;
  barrier[3] = &unk_1E75205D0;
  barrier[4] = a2;
  xpc_connection_send_barrier(a2, barrier);
}

+ (id)_invalidationMessageForXPCConnection:(uint64_t)connection
{
  objc_opt_self();
  v3 = [BSXPCServiceConnectionMessage messageWithXPCConnection:a2 targetQueue:0 handshake:0 activationGeneration:0 delegate:0];
  [(BSXPCServiceConnectionMessage *)v3 setMessageID:?];

  return v3;
}

+ (id)_connectionWithIncomingXPCConnection:(void *)connection endpointDescription:
{
  objc_opt_self();
  v5 = [BSXPCServiceConnectionPeer peerOfConnection:a2];
  BSStoreTokenFromXPCConnectionToVar();
  v6 = [0 pid];
  if (v6 < 1)
  {
    v9 = 0;
  }

  else
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v7 = getRBSTargetClass_softClass_0;
    v20 = getRBSTargetClass_softClass_0;
    if (!getRBSTargetClass_softClass_0)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __getRBSTargetClass_block_invoke_1;
      v16[3] = &unk_1E75200F8;
      v16[4] = &v17;
      __getRBSTargetClass_block_invoke_1(v16);
      v7 = v18[3];
    }

    v8 = v7;
    _Block_object_dispose(&v17, 8);
    v9 = [v7 targetWithPid:v6];
  }

  v10 = [BSXPCServiceConnection alloc];
  v11 = [BSXPCServiceConnectionRootServerContext uniqueServerContextWithEndpointDescription:connection];
  v12 = [(BSXPCServiceConnection *)&v10->super.isa _initWithContext:v11 assertionTarget:v9];

  objc_storeStrong(v12 + 7, a2);
  objc_storeStrong(v12 + 8, a2);
  objc_storeStrong(v12 + 2, v5);
  objc_storeStrong(v12 + 3, 0);
  v13 = [BSXPCServiceConnection _invalidationMessageForXPCConnection:a2];
  v14 = v12[14];
  v12[14] = v13;

  return v12;
}

- (void)_setParent:(uint64_t)parent
{
  if (parent)
  {
    os_unfair_lock_lock((parent + 160));
    objc_storeStrong((parent + 144), a2);

    os_unfair_lock_unlock((parent + 160));
  }
}

- (void)_handleParentDisconnectWithMessage:(void *)message outRevocations:
{
  v38 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_16;
  }

  if (!message)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"outRevocations"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(sel__handleParentDisconnectWithMessage_outRevocations_);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138544642;
      v27 = v15;
      v28 = 2114;
      v29 = v17;
      v30 = 2048;
      selfCopy2 = self;
      v32 = 2114;
      v33 = @"BSXPCServiceConnection.m";
      v34 = 1024;
      v35 = 509;
      v36 = 2114;
      v37 = v14;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v18 = v14;
    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A877760);
  }

  if (a2 == 2)
  {
    if (([*(self + 192) isServer] & 1) == 0)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"parent interrupt is only supported on server connections"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = NSStringFromSelector(sel__handleParentDisconnectWithMessage_outRevocations_);
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *buf = 138544642;
        v27 = v20;
        v28 = 2114;
        v29 = v22;
        v30 = 2048;
        selfCopy2 = self;
        v32 = 2114;
        v33 = @"BSXPCServiceConnection.m";
        v34 = 1024;
        v35 = 511;
        v36 = 2114;
        v37 = v19;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v23 = v19;
      [v19 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A877858);
    }

    v6 = BSServiceXPCLog();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v7 = *(self + 8);
    *buf = 138543362;
    v27 = v7;
    v8 = "%{public}@ Parent simulated interrupt";
    goto LABEL_9;
  }

  v6 = BSServiceXPCLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(self + 8);
    *buf = 138543362;
    v27 = v9;
    v8 = "%{public}@ Parent invalidated";
LABEL_9:
    _os_log_impl(&dword_19A821000, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
  }

LABEL_10:

  os_unfair_lock_lock((self + 160));
  if ((*(self + 179) & 1) == 0)
  {
    *(self + 178) = 1;
    if (*(self + 174) == 1)
    {
      v10 = *(self + 128);
      v11 = *(self + 40);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __76__BSXPCServiceConnection__handleParentDisconnectWithMessage_outRevocations___block_invoke;
      v24[3] = &unk_1E75209E8;
      v24[4] = self;
      v25 = v10;
      v12 = v10;
      [v11 performAsync:v24];
    }

    else
    {
      [(BSXPCServiceConnectionEventObservers *)*(self + 136) consumeRevocations:message];
    }

    [(BSXPCServiceConnection *)self _lock_invalidateWithDisconnectMessage:a2 outChildRevocations:message];
  }

  os_unfair_lock_unlock((self + 160));
LABEL_16:
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __76__BSXPCServiceConnection__handleParentDisconnectWithMessage_outRevocations___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 160));
  os_unfair_lock_unlock((*(a1 + 32) + 160));
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = BSServiceConnectionErrorCreate(2uLL, MEMORY[0x1E69E9E20], 0);
  [(BSXPCServiceConnectionEventHandler *)v2 connection:v3 handleError:v4];

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(a1 + 32);

    return [BSXPCServiceConnectionEventHandler _connectionInvalidated:];
  }

  return result;
}

- (void)_lock_invalidateWithDisconnectMessage:(void *)message outChildRevocations:
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(self + 179))
  {
    goto LABEL_26;
  }

  v6 = BSServiceXPCLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(self + 8);
    *buf = 138543618;
    v29 = v7;
    v30 = 1024;
    v31 = a2;
    _os_log_impl(&dword_19A821000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Invalidating. (message=%i)", buf, 0x12u);
  }

  *(self + 179) = 1;
  v8 = *(self + 112);
  if (v8)
  {
    if (!a2)
    {
LABEL_13:
      *(self + 112) = 0;

      goto LABEL_14;
    }

    if (a2 == 2)
    {
      [(BSXPCServiceConnectionMessage *)v8 setMessageID:?];
      v9 = BSServiceXPCLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(self + 8);
        *buf = 138543362;
        v29 = v10;
        v11 = "%{public}@ Sending interruption message";
LABEL_11:
        _os_log_impl(&dword_19A821000, v9, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
      }
    }

    else
    {
      v9 = BSServiceXPCLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(self + 8);
        *buf = 138543362;
        v29 = v12;
        v11 = "%{public}@ Sending invalidation message";
        goto LABEL_11;
      }
    }

    [*(self + 112) send];
    v8 = *(self + 112);
    goto LABEL_13;
  }

LABEL_14:
  if ([*(self + 72) count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = *(self + 72);
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v13);
          }

          [(BSXPCServiceConnection *)*(*(&v23 + 1) + 8 * i) _handleParentDisconnectWithMessage:message outRevocations:?];
        }

        v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }
  }

  [(BSXPCServiceConnection *)self _lock_disconnect];
  v17 = *(self + 144);
  *(self + 144) = 0;

  v18 = *(self + 72);
  *(self + 72) = 0;

  if (*(self + 174) == 1)
  {
    v19 = *(self + 128);
    *(self + 128) = 0;

    v20 = *(self + 48);
    *(self + 48) = 0;
  }

  [(BSXPCServiceConnectionEventObservers *)*(self + 136) clearRevocations];
  v21 = *(self + 136);
  *(self + 136) = 0;

LABEL_26:
  v22 = *MEMORY[0x1E69E9840];
}

- (void)_makingInterruptCallout
{
  if (self)
  {
    os_unfair_lock_lock(self + 40);
    BSClearTokenVar();

    os_unfair_lock_unlock(self + 40);
  }
}

- (void)_noteChildConnectionDidInvalidate:(id)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableArray *)self->_lock_childConnections containsObject:invalidate])
  {
    [(NSMutableArray *)self->_lock_childConnections removeObjectIdenticalTo:invalidate];
    [(BSXPCServiceConnection *)invalidate _setParent:?];
    if (![(NSMutableArray *)self->_lock_childConnections count]&& self->_lock_configured)
    {
      v5 = self->_lock_eventHandler;
      lock_childrenGeneration = self->_lock_childrenGeneration;
      configured_connectionQueue = self->_configured_connectionQueue;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __60__BSXPCServiceConnection__noteChildConnectionDidInvalidate___block_invoke;
      v9[3] = &unk_1E7520A10;
      v10 = v5;
      selfCopy = self;
      v12 = lock_childrenGeneration;
      v8 = v5;
      [(BSServiceQueue *)configured_connectionQueue performAsync:v9];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)shouldSendMessage:(id)message
{
  v43 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  if (message && self->_configured_batchingHandler && *(message + 60) == 1)
  {
    if (![(BSXPCServiceConnectionMessageBatch *)self->_batchLock_batchMessage appendMessage:message])
    {
      batchLock_batchMessage = self->_batchLock_batchMessage;
      if (batchLock_batchMessage && ![(BSXPCServiceConnectionMessageBatch *)batchLock_batchMessage didCommit])
      {
        v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"previous batch message was not comitted"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v27 = NSStringFromSelector(a2);
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          *buf = 138544642;
          v32 = v27;
          v33 = 2114;
          v34 = v29;
          v35 = 2048;
          selfCopy2 = self;
          v37 = 2114;
          v38 = @"BSXPCServiceConnection.m";
          v39 = 1024;
          v40 = 597;
          v41 = 2114;
          v42 = v26;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v30 = v26;
        [v26 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A878448);
      }

      connection = [(BSXPCServiceConnectionMessage *)message connection];
      v8 = *(message + 9);
      v9 = [BSXPCServiceConnectionMessageBatch messageWithXPCConnection:connection targetQueue:v8 handshake:0 activationGeneration:*(message + 16) delegate:self];
      v10 = self->_batchLock_batchMessage;
      self->_batchLock_batchMessage = v9;

      [(BSXPCServiceConnectionMessage *)self->_batchLock_batchMessage setReplyQueue:?];
      [(BSXPCServiceConnectionMessageBatch *)self->_batchLock_batchMessage setBatchHandler:self->_configured_batchingHandler];
      if ([(BSXPCServiceConnectionContext *)self->_context isChild])
      {
        v11 = self->_context;
        v12 = v11;
        if (v11)
        {
          isa = v11[2].super.isa;
        }

        else
        {
          isa = 0;
        }

        [(BSXPCServiceConnectionMessage *)self->_batchLock_batchMessage setChildIdentifier:?];
        if (v12)
        {
          proem = v12[1]._proem;
        }

        else
        {
          proem = 0;
        }

        [(BSXPCServiceConnectionMessage *)self->_batchLock_batchMessage setChildIdentifierIsRemotelyDefined:?];
      }

      if (![(BSXPCServiceConnectionMessageBatch *)self->_batchLock_batchMessage appendMessage:message])
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"batched"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v22 = NSStringFromSelector(a2);
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          *buf = 138544642;
          v32 = v22;
          v33 = 2114;
          v34 = v24;
          v35 = 2048;
          selfCopy2 = self;
          v37 = 2114;
          v38 = @"BSXPCServiceConnection.m";
          v39 = 1024;
          v40 = 611;
          v41 = 2114;
          v42 = v21;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v25 = v21;
        [v21 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A878350);
      }
    }

    os_unfair_recursive_lock_unlock();
    result = 0;
  }

  else
  {
    v16 = self->_batchLock_batchMessage;
    if (v16)
    {
      if (v16 == message)
      {
        self->_batchLock_batchMessage = 0;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if ([(BSXPCServiceConnectionMessageBatch *)self->_batchLock_batchMessage commitWithReason:@"non-batching-message"])
          {
            v17 = BSServiceXPCBatchLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              selectorName = [(BSXPCServiceConnectionMessage *)message selectorName];
              *buf = 138543362;
              v32 = selectorName;
              _os_log_impl(&dword_19A821000, v17, OS_LOG_TYPE_DEFAULT, "force-commit batched message due to non-batching message: %{public}@", buf, 0xCu);
            }
          }

          v19 = self->_batchLock_batchMessage;
          self->_batchLock_batchMessage = 0;
        }
      }
    }

    os_unfair_recursive_lock_unlock();
    result = 1;
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)updateAuditTokenFromReplyMessage:(id)message fromActivationGeneration:(unsigned int)generation
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_activated && self->_lock_activationGeneration == generation)
  {
    message = [message message];
    BSStoreTokenFromMessageToVar();
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_connection_consumeLock_handleError:(int)error notYetLocked:
{
  v82 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v5 = (self + 160);
    if (error)
    {
      os_unfair_lock_lock(v5);
    }

    else
    {
      os_unfair_lock_assert_owner(v5);
    }

    if ((*(self + 174) & 1) == 0)
    {
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"we should never get here if we've never set up the connection queue"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v50 = NSStringFromSelector(sel__connection_consumeLock_handleError_notYetLocked_);
        v51 = objc_opt_class();
        v52 = NSStringFromClass(v51);
        *buf = 138544642;
        v71 = v50;
        v72 = 2114;
        v73 = v52;
        v74 = 2048;
        selfCopy = self;
        v76 = 2114;
        v77 = @"BSXPCServiceConnection.m";
        v78 = 1024;
        v79 = 1386;
        v80 = 2114;
        v81 = v49;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v53 = v49;
      [v49 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A878EE0);
    }

    [*(self + 40) assertBarrierOnQueue];
    if (*(self + 179) == 1)
    {
      os_unfair_lock_unlock((self + 160));
      v6 = BSServiceXPCLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(self + 8);
        *buf = 138543362;
        v71 = v7;
        _os_log_impl(&dword_19A821000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Ignoring error received because the connection was invalidated", buf, 0xCu);
      }

LABEL_70:

      goto LABEL_71;
    }

    if (*(self + 178) == 1)
    {
      if ([*(self + 192) isRoot])
      {
        BSServiceXPCErrorsLog();
      }

      else
      {
        BSServiceXPCLog();
      }
      v10 = ;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v31 = *(self + 8);
        *buf = 138543362;
        v71 = v31;
        _os_log_error_impl(&dword_19A821000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Error received: Invalidated by remote connection.", buf, 0xCu);
      }

      v6 = BSServiceConnectionErrorCreate(2uLL, a2, @"Invalidated by an external connection");

      goto LABEL_47;
    }

    if (a2 == MEMORY[0x1E69E9E18])
    {
      if ([*(self + 192) isServer])
      {
        v11 = BSServiceXPCErrorsLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v45 = *(self + 8);
          *buf = 138543362;
          v71 = v45;
          _os_log_error_impl(&dword_19A821000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Error received: Connection interrupted but that's not possible on a server.", buf, 0xCu);
        }

        v9 = BSServiceConnectionErrorCreate(2uLL, MEMORY[0x1E69E9E20], 0);
        goto LABEL_25;
      }

      v12 = *(self + 128);
      if (v12 && (*(v12 + 96) || *(v12 + 80)))
      {
        if ([*(self + 192) isRoot])
        {
          BSServiceXPCErrorsLog();
        }

        else
        {
          BSServiceXPCLog();
        }
        v14 = ;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v47 = *(self + 8);
          *buf = 138543362;
          v71 = v47;
          _os_log_error_impl(&dword_19A821000, v14, OS_LOG_TYPE_ERROR, "%{public}@ Error received: Connection interrupted.", buf, 0xCu);
        }

        v6 = BSServiceConnectionErrorCreate(1uLL, MEMORY[0x1E69E9E18], 0);

        v15 = 1;
        goto LABEL_48;
      }

      if ([*(self + 192) isRoot])
      {
        BSServiceXPCErrorsLog();
      }

      else
      {
        BSServiceXPCLog();
      }
      v13 = ;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v54 = *(self + 8);
        *buf = 138543362;
        v71 = v54;
        _os_log_error_impl(&dword_19A821000, v13, OS_LOG_TYPE_ERROR, "%{public}@ Error received: Connection interrupted but there's no handler for it so sending invalidate instead.", buf, 0xCu);
      }
    }

    else
    {
      if (a2 != MEMORY[0x1E69E9E20])
      {
        if (a2 == MEMORY[0x1E69E9E38])
        {
          if ([*(self + 192) isRoot])
          {
            BSServiceXPCErrorsLog();
          }

          else
          {
            BSServiceXPCLog();
          }
          v16 = ;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v48 = *(self + 8);
            *buf = 138543362;
            v71 = v48;
            _os_log_error_impl(&dword_19A821000, v16, OS_LOG_TYPE_ERROR, "%{public}@ Error received: Termination imminent.", buf, 0xCu);
          }

          v6 = BSServiceConnectionErrorCreate(2uLL, MEMORY[0x1E69E9E38], 0);

          goto LABEL_47;
        }

        v8 = BSServiceXPCErrorsLog();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        v32 = *(self + 8);
        v33 = *MEMORY[0x1E69E9E28];
        v34 = a2;
        if (!v33)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"xpc_object_t  _Nullable BSXPCDictionaryGetValue(xpc_object_t  _Nullable __strong, const char * _Nonnull, xpc_type_t _Nullable)"}];
          [currentHandler handleFailureInFunction:v56 file:@"BSXPCObjectUtilities.h" lineNumber:50 description:@"key must not be nil"];
        }

        v35 = v34;
        v36 = v35;
        if (v35 && (v37 = MEMORY[0x19A908710](v35), v38 = MEMORY[0x1E69E9E80], v36, v36, v37 == v38))
        {
          v39 = xpc_dictionary_get_value(v36, v33);
          v40 = v39;
          if (v39)
          {
            v41 = MEMORY[0x19A908710](v39);
            v42 = MEMORY[0x1E69E9F10];

            if (v41 == v42)
            {
              v43 = v40;
            }

            else
            {
              v43 = 0;
            }

            goto LABEL_88;
          }
        }

        else
        {
          v40 = 0;
        }

        v43 = 0;
LABEL_88:
        v46 = v43;

        *buf = 138543618;
        v71 = v32;
        v72 = 2112;
        v73 = v46;
        _os_log_error_impl(&dword_19A821000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Error received: Unknown: %@.", buf, 0x16u);

LABEL_16:
        v9 = BSServiceConnectionErrorCreate(2uLL, a2, 0);
LABEL_25:
        v6 = v9;
LABEL_47:
        v15 = 0;
LABEL_48:
        v17 = *(self + 128);
        [*(self + 112) invalidate];
        v18 = *(self + 112);
        *(self + 112) = 0;

        if (v15)
        {
          [(BSXPCServiceConnection *)self _lock_disconnect];
          v57 = v17;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v19 = *(self + 72);
          v20 = [v19 countByEnumeratingWithState:&v64 objects:v69 count:16];
          if (v20)
          {
            v21 = *v65;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v65 != v21)
                {
                  objc_enumerationMutation(v19);
                }

                v23 = *(*(&v64 + 1) + 8 * i);
                os_unfair_lock_lock(v23 + 40);
                v63[0] = MEMORY[0x1E69E9820];
                v63[1] = 3221225472;
                v63[2] = __75__BSXPCServiceConnection__connection_consumeLock_handleError_notYetLocked___block_invoke;
                v63[3] = &unk_1E75205D0;
                v63[4] = v23;
                [(BSXPCServiceConnection *)v23 _lock_enqueueChildActivateEvent:v63 forHandoff:0];
                os_unfair_lock_unlock(v23 + 40);
              }

              v20 = [v19 countByEnumeratingWithState:&v64 objects:v69 count:16];
            }

            while (v20);
          }

          v17 = v57;
          v24 = 0;
          v25 = 0;
        }

        else
        {
          v25 = *(self + 144);
          v62 = 0;
          [(BSXPCServiceConnection *)self _lock_invalidateWithDisconnectMessage:&v62 outChildRevocations:?];
          v24 = v62;
        }

        os_unfair_lock_unlock((self + 160));
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v26 = v24;
        v27 = [v26 countByEnumeratingWithState:&v58 objects:v68 count:16];
        if (v27)
        {
          v28 = *v59;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v59 != v28)
              {
                objc_enumerationMutation(v26);
              }

              (*(*(*(&v58 + 1) + 8 * j) + 16))();
            }

            v27 = [v26 countByEnumeratingWithState:&v58 objects:v68 count:16];
          }

          while (v27);
        }

        [(BSXPCServiceConnectionEventHandler *)v17 connection:self handleError:v6];
        if (v15)
        {
          [(BSXPCServiceConnectionEventHandler *)v17 connectionInterruptedFromXPCError:self];
        }

        else if (v17)
        {
          [(BSXPCServiceConnectionEventHandler *)v17 _connectionInvalidated:self];
        }

        [v25 _noteChildConnectionDidInvalidate:self];

        goto LABEL_70;
      }

      if ([*(self + 192) isRoot])
      {
        BSServiceXPCErrorsLog();
      }

      else
      {
        BSServiceXPCLog();
      }
      v13 = ;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v44 = *(self + 8);
        *buf = 138543362;
        v71 = v44;
        _os_log_error_impl(&dword_19A821000, v13, OS_LOG_TYPE_ERROR, "%{public}@ Error received: Connection invalidated.", buf, 0xCu);
      }
    }

    v6 = BSServiceConnectionErrorCreate(2uLL, MEMORY[0x1E69E9E20], 0);

    goto LABEL_47;
  }

LABEL_71:
  v30 = *MEMORY[0x1E69E9840];
}

void __55__BSXPCServiceConnection__lock_activateNowOrWhenReady___block_invoke_212(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 160));
  [*(*(a1 + 32) + 96) sendIfNecessary];
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  *(v2 + 96) = 0;

  v4 = (*(a1 + 32) + 160);

  os_unfair_lock_unlock(v4);
}

void __55__BSXPCServiceConnection__lock_activateNowOrWhenReady___block_invoke_217(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_40;
  }

  [*(v2 + 40) assertBarrierOnQueue];
  v4 = MEMORY[0x19A908710](a2);
  if (v4 == MEMORY[0x1E69E9E80])
  {
    v6 = [[BSXPCServiceConnectionMessage alloc] initWithMessage:a2];
    if (xpc_dictionary_expects_reply())
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = [(BSXPCServiceConnectionMessage *)v6 messageID];
    v10 = v9;
    if (!v9)
    {
      v11 = [(BSXPCCoder *)v6 XPCConnection];
      v12 = [BSXPCServiceConnectionPeer peerOfConnection:v11];
      [(BSXPCServiceConnection *)v2 _connection_handleMessage:v6 fromPeer:v12 withHandoff:v8];
LABEL_38:

LABEL_39:
LABEL_40:
      v38 = *MEMORY[0x1E69E9840];
      return;
    }

    if (![v9 isEqualToString:@"connect"])
    {
      if (([v10 isEqualToString:@"invalidate"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"interrupt"))
      {
        [(BSXPCServiceConnection *)v2 _connection_handleInvalidateMessage:v6 withHandoff:v8];
      }

      else
      {
        v28 = BSServiceXPCErrorsLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v39 = *(v2 + 8);
          *buf = 138543618;
          *&buf[4] = v39;
          v43 = 2112;
          v44 = v10;
          _os_log_error_impl(&dword_19A821000, v28, OS_LOG_TYPE_ERROR, "%{public}@ Ignoring message with unknown messageID : %@", buf, 0x16u);
        }
      }

      goto LABEL_39;
    }

    v11 = [(BSXPCCoder *)v6 XPCConnection];
    v12 = [BSXPCServiceConnectionPeer peerOfConnection:v11];
    [*(v2 + 40) assertBarrierOnQueue];
    os_unfair_lock_lock((v2 + 160));
    if (*(v2 + 179) == 1)
    {
      os_unfair_lock_unlock((v2 + 160));
      v14 = BSServiceXPCLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(v2 + 8);
        *buf = 138543362;
        *&buf[4] = v15;
        _os_log_impl(&dword_19A821000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Ignoring activation message because this connection has been invalidated", buf, 0xCu);
      }

      goto LABEL_37;
    }

    v16 = [(BSXPCServiceConnectionMessage *)v6 childIdentifier];
    v14 = *(v2 + 128);
    obj = [(BSXPCServiceConnectionMessage *)v6 createReply];
    if (!v16)
    {
      v29 = BSServiceXPCLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(v2 + 8);
        *buf = 138543362;
        *&buf[4] = v30;
        _os_log_impl(&dword_19A821000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ Activation message received.", buf, 0xCu);
      }

      [obj send];
      v31 = [(BSXPCCoder *)v6 decodeObjectOfClass:objc_opt_class() forKey:@"bsxpc_context"];
      [(BSXPCServiceConnectionEventHandler *)v14 setInitiatingContext:v31];

      [(BSXPCServiceConnection *)v2 _connection_consumeLock_didActivateWithMessage:v6 fromPeer:v12];
      goto LABEL_36;
    }

    v18 = [(BSXPCServiceConnectionMessage *)v6 childIdentifierIsRemotelyDefined];
    if (!(v18 & 1 | (([*(v2 + 192) isRoot] & 1) == 0)))
    {
      *buf = 0;
      v32 = [(BSXPCCoder *)v6 message];
      BSStoreTokenFromMessageToVar();

      v33 = [BSXPCServiceConnection alloc];
      v34 = [(BSXPCServiceConnectionRootContext *)*(v2 + 192) childContextWithRemoteIdentifier:v16];
      v35 = [(BSXPCServiceConnection *)&v33->super.isa _initWithContext:v34 assertionTarget:*(v2 + 184)];

      v36 = [(BSXPCServiceConnection *)v35 _eventHandler];
      v37 = [(BSXPCCoder *)v6 decodeObjectOfClass:objc_opt_class() forKey:@"bsxpc_context"];
      [(BSXPCServiceConnectionEventHandler *)v36 setInitiatingContext:v37];

      objc_storeStrong(v35 + 2, v12);
      objc_storeStrong(v35 + 3, 0);
      objc_storeStrong(v35 + 13, obj);
      [(BSXPCServiceConnection *)v2 _lock_associateNewChildConnection:v35];
      os_unfair_lock_unlock((v2 + 160));
      [(BSXPCServiceConnectionEventHandler *)v14 connection:v2 handleConnection:v35];

LABEL_36:
LABEL_37:

      goto LABEL_38;
    }

    v19 = BSServiceXPCErrorsLog();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (v18)
    {
      if (v20)
      {
        v21 = *(v2 + 8);
        *buf = 138543618;
        *&buf[4] = v21;
        v43 = 2048;
        v44 = v16;
        v22 = "%{public}@ new children must have remotely defined identifiers : %llx";
LABEL_42:
        _os_log_error_impl(&dword_19A821000, v19, OS_LOG_TYPE_ERROR, v22, buf, 0x16u);
      }
    }

    else if (v20)
    {
      v40 = *(v2 + 8);
      *buf = 138543618;
      *&buf[4] = v40;
      v43 = 2048;
      v44 = v16;
      v22 = "%{public}@ we don't support grandchildren %llx";
      goto LABEL_42;
    }

    os_unfair_lock_unlock((v2 + 160));
    goto LABEL_36;
  }

  if (v4 != MEMORY[0x1E69E9E98])
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this should never happen. unknown message: %@", a2];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(sel__connection_handleEvent_);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138544642;
      *&buf[4] = v24;
      v43 = 2114;
      v44 = v26;
      v45 = 2048;
      v46 = v2;
      v47 = 2114;
      v48 = @"BSXPCServiceConnection.m";
      v49 = 1024;
      v50 = 1221;
      v51 = 2114;
      v52 = v23;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v27 = v23;
    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8794B8);
  }

  v5 = *MEMORY[0x1E69E9840];

  [(BSXPCServiceConnection *)v2 _connection_consumeLock_handleError:a2 notYetLocked:1];
}

void __55__BSXPCServiceConnection__lock_activateNowOrWhenReady___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    os_unfair_lock_lock((*(a1 + 32) + 160));
    v6 = *(a1 + 40);
    if (*(v6 + 175) == 1 && *(a1 + 56) == *(v6 + 164))
    {
      v7 = [a2 XPCConnection];
      v8 = [BSXPCServiceConnectionPeer peerOfConnection:v7];

      v9 = BSServiceXPCLog();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

      if (!v10)
      {
LABEL_22:
        [(BSXPCServiceConnection *)*(a1 + 32) _connection_consumeLock_didActivateWithMessage:a2 fromPeer:v8];

        goto LABEL_23;
      }

      if (v8)
      {
        v11 = v8[4];
        v12 = v11;
        if (v11)
        {
          v13 = MEMORY[0x1E696AEC0];
          v14 = [v11 name];
          v15 = v14;
          if (!v14)
          {
            v16 = [v12 bundleIdentifier];
            v3 = v16;
            if (v16)
            {
              v15 = v16;
            }

            else
            {
              v15 = @"?";
            }
          }

          v17 = [v13 stringWithFormat:@"%@:%d", v15, objc_msgSend(v12, "pid")];
          if (!v14)
          {
          }

          goto LABEL_19;
        }
      }

      else
      {
        v12 = 0;
      }

      v17 = 0;
LABEL_19:
      v20 = BSServiceXPCLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 48);
        *buf = 138543618;
        v24 = v21;
        v25 = 2114;
        v26 = v17;
        _os_log_impl(&dword_19A821000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Got activation reply from server %{public}@", buf, 0x16u);
      }

      goto LABEL_22;
    }

    v18 = BSServiceXPCLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 48);
      *buf = 138543362;
      v24 = v19;
      _os_log_impl(&dword_19A821000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Dropping activation reply because it is out of date", buf, 0xCu);
    }

    os_unfair_lock_unlock((*(a1 + 32) + 160));
  }

LABEL_23:
  v22 = *MEMORY[0x1E69E9840];
}

- (void)_connection_consumeLock_didActivateWithMessage:(void *)message fromPeer:
{
  v26 = *MEMORY[0x1E69E9840];
  if (self)
  {
    os_unfair_lock_assert_owner((self + 160));
    if ((*(self + 174) & 1) == 0)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"we should never get here if we've never set up the connection queue"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(sel__connection_consumeLock_didActivateWithMessage_fromPeer_);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v14 = 138544642;
        v15 = v9;
        v16 = 2114;
        v17 = v11;
        v18 = 2048;
        selfCopy = self;
        v20 = 2114;
        v21 = @"BSXPCServiceConnection.m";
        v22 = 1024;
        v23 = 1227;
        v24 = 2114;
        v25 = v8;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v14, 0x3Au);
      }

      v12 = v8;
      [v8 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A879CC0);
    }

    [*(self + 40) assertBarrierOnQueue];
    *(self + 177) = 1;
    message = [a2 message];
    BSStoreTokenFromMessageToVar();

    if (!*(self + 16))
    {
      objc_storeStrong((self + 16), message);
    }

    v7 = *MEMORY[0x1E69E9840];

    [(BSXPCServiceConnection *)self _connection_consumeLock_runPendedEventsIfAppropriate];
  }

  else
  {
    v13 = *MEMORY[0x1E69E9840];
  }
}

void __55__BSXPCServiceConnection__lock_activateNowOrWhenReady___block_invoke_225(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 160));
  v2 = *(a1 + 32);

  [(BSXPCServiceConnection *)v2 _connection_consumeLock_runPendedEventsIfAppropriate];
}

void __55__BSXPCServiceConnection__lock_activateNowOrWhenReady___block_invoke_229(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = BSServiceXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 8);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_19A821000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Established.", &v6, 0xCu);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, *(a1 + 32));
  }

  [(BSXPCServiceConnectionEventHandler *)*(a1 + 40) connectionActivated:?];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_lock_enqueueConnectionEstablishedEvent:(uint64_t)event
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"block"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(sel__lock_enqueueConnectionEstablishedEvent_);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138544642;
      v21 = v16;
      v22 = 2114;
      v23 = v18;
      v24 = 2048;
      eventCopy = event;
      v26 = 2114;
      v27 = @"BSXPCServiceConnection.m";
      v28 = 1024;
      v29 = 1140;
      v30 = 2114;
      v31 = v15;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v19 = v15;
    [v15 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A87A100);
  }

  os_unfair_lock_assert_owner((event + 160));
  if (*(event + 179))
  {
    v4 = BSServiceXPCLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(event + 8);
      *buf = 138543362;
      v21 = v5;
      _os_log_impl(&dword_19A821000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Dropping established event because we have been invalidated.", buf, 0xCu);
    }

LABEL_15:

    v14 = *MEMORY[0x1E69E9840];
    return;
  }

  if (*(event + 174) != 1 || *(event + 177) != 1)
  {
    v8 = *(event + 88);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v10 = *(event + 88);
      *(event + 88) = v9;

      v8 = *(event + 88);
    }

    v11 = [a2 copy];
    v12 = MEMORY[0x19A908200]();
    [v8 addObject:v12];

    v4 = BSServiceXPCLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(event + 8);
      *buf = 138543362;
      v21 = v13;
      _os_log_impl(&dword_19A821000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Pending event until connection established.", buf, 0xCu);
    }

    goto LABEL_15;
  }

  v6 = *(event + 40);
  v7 = *MEMORY[0x1E69E9840];

  [v6 performAsync:a2];
}

uint64_t __55__BSXPCServiceConnection__lock_activateNowOrWhenReady___block_invoke_230(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __55__BSXPCServiceConnection__lock_activateNowOrWhenReady___block_invoke_2_231(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = BSServiceConnectionErrorCreate(2uLL, MEMORY[0x1E69E9E20], 0);
  [(BSXPCServiceConnectionEventHandler *)v2 connection:v3 handleError:v4];

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(a1 + 40);

    [(BSXPCServiceConnectionEventHandler *)v5 _connectionInvalidated:v6];
  }
}

- (void)_lock_enqueueChildActivateEvent:(uint64_t)event forHandoff:
{
  v40 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_19;
  }

  if (!a2)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"block"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(sel__lock_enqueueChildActivateEvent_forHandoff_);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138544642;
      v29 = v19;
      v30 = 2114;
      v31 = v21;
      v32 = 2048;
      selfCopy2 = self;
      v34 = 2114;
      v35 = @"BSXPCServiceConnection.m";
      v36 = 1024;
      v37 = 1115;
      v38 = 2114;
      v39 = v18;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v22 = v18;
    [v18 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A87A524);
  }

  os_unfair_lock_assert_owner((self + 160));
  if (([*(self + 192) isChild] & 1) == 0)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"may only be called on children"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(sel__lock_enqueueChildActivateEvent_forHandoff_);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138544642;
      v29 = v24;
      v30 = 2114;
      v31 = v26;
      v32 = 2048;
      selfCopy2 = self;
      v34 = 2114;
      v35 = @"BSXPCServiceConnection.m";
      v36 = 1024;
      v37 = 1118;
      v38 = 2114;
      v39 = v23;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v27 = v23;
    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A87A61CLL);
  }

  if (*(self + 179))
  {
    v6 = BSServiceXPCLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(self + 8);
      *buf = 138543362;
      v29 = v7;
      _os_log_impl(&dword_19A821000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Dropping child activate event because we have been invalidated.", buf, 0xCu);
    }

LABEL_18:

LABEL_19:
    v16 = *MEMORY[0x1E69E9840];
    return;
  }

  if (*(self + 174) != 1 || *(self + 175) != 1)
  {
    v10 = *(self + 80);
    if (!v10)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v12 = *(self + 80);
      *(self + 80) = v11;

      v10 = *(self + 80);
    }

    v13 = [a2 copy];
    v14 = MEMORY[0x19A908200]();
    [v10 addObject:v14];

    v6 = BSServiceXPCLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(self + 8);
      *buf = 138543362;
      v29 = v15;
      _os_log_impl(&dword_19A821000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Pending event until connection activated.", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v8 = *(self + 40);
  if (event)
  {
    v9 = *MEMORY[0x1E69E9840];

    [v8 _performAsync:a2 withHandoff:event];
  }

  else
  {
    v17 = *MEMORY[0x1E69E9840];

    [v8 performAsync:a2];
  }
}

- (void)_connection_handleMessage:(void *)message fromPeer:(uint64_t)peer withHandoff:
{
  v48 = *MEMORY[0x1E69E9840];
  if (!self)
  {
LABEL_32:
    v27 = *MEMORY[0x1E69E9840];
    return;
  }

  [*(self + 40) assertBarrierOnQueue];
  os_unfair_lock_lock((self + 160));
  if (*(self + 179) == 1)
  {
    os_unfair_lock_unlock((self + 160));
    v9 = BSServiceXPCLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(self + 8);
      *buf = 138543362;
      v42 = v10;
      _os_log_impl(&dword_19A821000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Ignoring message because the connection has been invalidated", buf, 0xCu);
    }

    goto LABEL_32;
  }

  childIdentifier = [(BSXPCServiceConnectionMessage *)a2 childIdentifier];
  selfCopy = self;
  if ([*(self + 192) isRoot] && childIdentifier)
  {
    v30 = a2;
    childIdentifierIsRemotelyDefined = [(BSXPCServiceConnectionMessage *)a2 childIdentifierIsRemotelyDefined];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v14 = *(self + 72);
    v15 = [v14 countByEnumeratingWithState:&v37 objects:v47 count:16];
    if (!v15)
    {
LABEL_23:

LABEL_29:
      v26 = BSServiceXPCLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v28 = *(selfCopy + 8);
        v29 = @"r";
        *buf = 138543874;
        if (childIdentifierIsRemotelyDefined)
        {
          v29 = &stru_1F0DFE210;
        }

        v42 = v28;
        v43 = 2050;
        v44 = childIdentifier;
        v45 = 2114;
        v46 = v29;
        _os_log_error_impl(&dword_19A821000, v26, OS_LOG_TYPE_ERROR, "%{public}@ Ignoring connection message because no connection exists for %{public}llx%{public}@", buf, 0x20u);
      }

      v25 = 0;
LABEL_31:

      os_unfair_lock_unlock((selfCopy + 160));
      goto LABEL_32;
    }

    v16 = *v38;
LABEL_10:
    v17 = 0;
    while (1)
    {
      if (*v38 != v16)
      {
        objc_enumerationMutation(v14);
      }

      v18 = *(*(&v37 + 1) + 8 * v17);
      if (v18 && (v19 = v18[24]) != 0)
      {
        v20 = v19;
        if (childIdentifierIsRemotelyDefined != v19[24])
        {
          v21 = *(v19 + 4);
LABEL_17:
          if (v21 == childIdentifier)
          {
            v24 = v18;

            if (!v18)
            {
              goto LABEL_29;
            }

            os_unfair_lock_lock(v24 + 40);
            v33[0] = MEMORY[0x1E69E9820];
            v33[1] = 3221225472;
            v33[2] = __73__BSXPCServiceConnection__connection_handleMessage_fromPeer_withHandoff___block_invoke;
            v33[3] = &unk_1E75205A8;
            v25 = v24;
            v34 = v25;
            v35 = v30;
            messageCopy = message;
            [(BSXPCServiceConnection *)v25 _lock_enqueueChildActivateEvent:v33 forHandoff:peer];
            os_unfair_lock_unlock(v24 + 40);
            v26 = v34;
            goto LABEL_31;
          }
        }
      }

      else
      {
        v20 = 0;
        v21 = 0;
        if (childIdentifierIsRemotelyDefined)
        {
          goto LABEL_17;
        }
      }

      if (v15 == ++v17)
      {
        v22 = [v14 countByEnumeratingWithState:&v37 objects:v47 count:16];
        v15 = v22;
        if (v22)
        {
          goto LABEL_10;
        }

        goto LABEL_23;
      }
    }
  }

  v31 = *(self + 128);
  [(BSXPCServiceConnection *)self _connection_consumeLock_didActivateWithMessage:a2 fromPeer:message];
  [(BSXPCServiceConnectionEventHandler *)v31 connection:self handleMessage:a2];
  v23 = *MEMORY[0x1E69E9840];
}

- (void)_connection_handleInvalidateMessage:(uint64_t)message withHandoff:
{
  v60 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_52;
  }

  [*(self + 40) assertBarrierOnQueue];
  os_unfair_lock_lock((self + 160));
  if (*(self + 179) == 1)
  {
    os_unfair_lock_unlock((self + 160));
    v6 = BSServiceXPCLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(self + 8);
      *buf = 138543362;
      v54 = v7;
      _os_log_impl(&dword_19A821000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Ignoring invalidate because this connection has been invalidated", buf, 0xCu);
    }

    goto LABEL_52;
  }

  childIdentifier = [(BSXPCServiceConnectionMessage *)a2 childIdentifier];
  if ([*(self + 192) isRoot] && childIdentifier)
  {
    messageCopy = message;
    childIdentifierIsRemotelyDefined = [(BSXPCServiceConnectionMessage *)a2 childIdentifierIsRemotelyDefined];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v11 = *(self + 72);
    v12 = [v11 countByEnumeratingWithState:&v48 objects:v59 count:16];
    selfCopy = self;
    if (v12)
    {
      v13 = *v49;
LABEL_10:
      v14 = 0;
      while (1)
      {
        if (*v49 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v48 + 1) + 8 * v14);
        if (v15 && (v16 = v15[24]) != 0)
        {
          v17 = v16;
          if (childIdentifierIsRemotelyDefined != v16[24])
          {
            v18 = *(v16 + 4);
LABEL_17:
            if (v18 == childIdentifier)
            {
              v24 = v15;

              if (!v15)
              {
                goto LABEL_33;
              }

              os_unfair_lock_lock(v24 + 40);
              if (*(v24 + 179))
              {
                v25 = BSServiceXPCLog();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  v26 = *(selfCopy + 8);
                  *buf = 138543362;
                  v54 = v26;
                  _os_log_impl(&dword_19A821000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ Dropping child activate event (for invalidation message) because we have already been invalidated.", buf, 0xCu);
                }

                v27 = 0;
              }

              else
              {
                if (*(v24 + 174))
                {
                  v27 = 0;
                }

                else
                {
                  *(v24 + 180) = 1;
                  v31 = v24[17];
                  v47 = 0;
                  [(BSXPCServiceConnectionEventObservers *)v31 consumeRevocations:?];
                  v27 = v47;
                }

                v44[0] = MEMORY[0x1E69E9820];
                v44[1] = 3221225472;
                v44[2] = __74__BSXPCServiceConnection__connection_handleInvalidateMessage_withHandoff___block_invoke;
                v44[3] = &unk_1E75209E8;
                v45 = v24;
                v46 = a2;
                [(BSXPCServiceConnection *)v45 _lock_enqueueChildActivateEvent:v44 forHandoff:messageCopy];
                v25 = v45;
              }

              os_unfair_lock_unlock(v24 + 40);
              goto LABEL_44;
            }
          }
        }

        else
        {
          v17 = 0;
          v18 = 0;
          if (childIdentifierIsRemotelyDefined)
          {
            goto LABEL_17;
          }
        }

        if (v12 == ++v14)
        {
          v19 = [v11 countByEnumeratingWithState:&v48 objects:v59 count:16];
          v12 = v19;
          if (v19)
          {
            goto LABEL_10;
          }

          break;
        }
      }
    }

LABEL_33:
    v28 = BSServiceXPCLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(selfCopy + 8);
      v30 = @"r";
      *buf = 138543874;
      if (childIdentifierIsRemotelyDefined)
      {
        v30 = &stru_1F0DFE210;
      }

      v54 = v29;
      v55 = 2050;
      v56 = childIdentifier;
      v57 = 2114;
      v58 = v30;
      _os_log_impl(&dword_19A821000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ Ignoring invalidation message; no child found for %{public}llx%{public}@", buf, 0x20u);
    }

    v24 = 0;
    v27 = 0;
LABEL_44:
    os_unfair_lock_unlock((selfCopy + 160));
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v32 = v27;
    v33 = [v32 countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v33)
    {
      v34 = *v41;
      do
      {
        v35 = 0;
        do
        {
          if (*v41 != v34)
          {
            objc_enumerationMutation(v32);
          }

          (*(*(*(&v40 + 1) + 8 * v35++) + 16))();
        }

        while (v33 != v35);
        v33 = [v32 countByEnumeratingWithState:&v40 objects:v52 count:16];
      }

      while (v33);
    }
  }

  else
  {
    v20 = BSServiceXPCLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(self + 8);
      *buf = 138543362;
      v54 = v21;
      _os_log_impl(&dword_19A821000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Invalidation message received.", buf, 0xCu);
    }

    messageID = [(BSXPCServiceConnectionMessage *)a2 messageID];
    v23 = [messageID isEqualToString:@"interrupt"];

    if (v23)
    {
      [(BSXPCServiceConnection *)self _connection_consumeLock_handleError:0 notYetLocked:?];
    }

    else
    {
      *(self + 178) = 1;
      [(BSXPCServiceConnection *)self _connection_consumeLock_handleError:0 notYetLocked:?];
    }
  }

LABEL_52:
  v36 = *MEMORY[0x1E69E9840];
}

uint64_t __75__BSXPCServiceConnection__connection_consumeLock_handleError_notYetLocked___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 192);
    if (v2)
    {
      *(v2 + 24);
    }
  }

  return [BSXPCServiceConnection _connection_consumeLock_handleError:notYetLocked:];
}

- (NSString)description
{
  os_unfair_lock_lock(&self->_lock);
  lock_peer = self->_lock_peer;
  if (lock_peer)
  {
    lock_peer = lock_peer->_processHandle;
  }

  v4 = lock_peer;
  os_unfair_lock_unlock(&self->_lock);
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  context = self->_context;
  if (context)
  {
    context = context->_proem;
  }

  v7 = MEMORY[0x1E696AEC0];
  name = context;
  endpointDescription = [(BSXPCServiceConnectionContext *)self->_context endpointDescription];
  v10 = [v7 stringWithFormat:@"%@ (%@)", name, endpointDescription];
  [v5 appendString:v10 withName:0];

  if (v4)
  {
    v11 = MEMORY[0x1E696AEC0];
    name = [(BSXPCServiceConnectionPeer *)v4 name];
    v12 = name == 0;
    v13 = name;
    if (!name)
    {
      bundleIdentifier = [(BSXPCServiceConnectionPeer *)v4 bundleIdentifier];
      endpointDescription = bundleIdentifier;
      if (bundleIdentifier)
      {
        v13 = bundleIdentifier;
      }

      else
      {
        v13 = @"?";
      }
    }

    v15 = [v11 stringWithFormat:@"%@:%d", v13, -[BSXPCServiceConnectionPeer pid](v4, "pid")];
  }

  else
  {
    v12 = 0;
    v15 = @"TBD";
  }

  [v5 appendString:v15 withName:@"peer"];
  if (v4)
  {
  }

  if (v12)
  {
  }

  if (v4)
  {
  }

  build = [v5 build];

  return build;
}

@end