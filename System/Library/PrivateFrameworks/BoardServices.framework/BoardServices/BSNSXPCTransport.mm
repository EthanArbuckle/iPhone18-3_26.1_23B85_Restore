@interface BSNSXPCTransport
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (id)_auditToken;
- (id)newExternalMessageSessionWithReason:(id)a3;
- (id)sendMessageWithReplySync:(id)a3;
- (int)auditSessionIdentifier;
- (int)processIdentifier;
- (unsigned)effectiveGroupIdentifier;
- (unsigned)effectiveUserIdentifier;
- (void)_newAcquiredAssertionWithAttributes:(void *)a1;
- (void)_newMessageSessionWithReason:(void *)a1;
- (void)_sendMessage:(int)a3 asNotification:;
- (void)_setSendingQueue:(id)a3;
- (void)activate;
- (void)cancel;
- (void)dealloc;
- (void)resume;
- (void)sendBarrierBlock:(id)a3;
- (void)sendMessage:(id)a3;
- (void)sendMessageWithReply:(id)a3 onQueue:(id)a4 replyHandler:(id)a5;
- (void)sendNotification:(id)a3;
- (void)setErrorHandler:(id)a3;
- (void)setEventObserver:(id)a3;
- (void)setMessageHandler:(id)a3;
- (void)setPerMessageAssertionAttributes:(id)a3;
- (void)setRefCountedAssertionAttributes:(id)a3;
- (void)setSendingQueue:(id)a3;
- (void)setTargetQueue:(id)a3;
- (void)suspend;
@end

@implementation BSNSXPCTransport

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v4 = [(BSNSXPCTransport *)self _auditToken];
  v6 = v4;
  if (v4)
  {
    [v4 realToken];
  }

  else
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
  }

  return result;
}

- (id)_auditToken
{
  if (a1)
  {
    v1 = [(BSXPCServiceConnection *)*(a1 + 8) auditToken];
    v2 = v1;
    if (v1)
    {
      v3 = v1;
    }

    else
    {
      v3 = [MEMORY[0x1E698E620] invalidToken];
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)resume
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self->_activateOnResume)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"resume is not supported on a wrapped BSServiceConnection"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v10 = 138544642;
      v11 = v6;
      v12 = 2114;
      v13 = v8;
      v14 = 2048;
      v15 = self;
      v16 = 2114;
      v17 = @"BSNSXPCTransport.m";
      v18 = 1024;
      v19 = 720;
      v20 = 2114;
      v21 = v5;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
    }

    v9 = v5;
    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82DCA8);
  }

  v3 = *MEMORY[0x1E69E9840];

  [(BSNSXPCTransport *)self activate];
}

- (void)activate
{
  v22 = *MEMORY[0x1E69E9840];
  [(_BSNSXPCCallbackTracking *)self->_callbackTracking captureConnection];
  [(BSXPCServiceConnection *)self->_connection activateNowOrWhenReady:?];
  if (!self->_queue)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setTargetQueue not called before activate"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v10 = 138544642;
      v11 = v6;
      v12 = 2114;
      v13 = v8;
      v14 = 2048;
      v15 = self;
      v16 = 2114;
      v17 = @"BSNSXPCTransport.m";
      v18 = 1024;
      v19 = 696;
      v20 = 2114;
      v21 = v5;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
    }

    v9 = v5;
    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82E16CLL);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  [(_BSNSXPCCallbackTracking *)self->_callbackTracking captureConnection];
  os_unfair_lock_lock(&self->_lock);
  self->_lock_cancelEnqueued = 1;
  sendingQueue = self->_sendingQueue;
  if (sendingQueue)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __26__BSNSXPCTransport_cancel__block_invoke;
    v10[3] = &unk_1E75205D0;
    v10[4] = self;
    [(BSNSXPCSending *)sendingQueue performAsync:v10];
  }

  else
  {
    self->_lock_cancelProcessed = 1;
    [(BSXPCServiceConnection *)self->_connection invalidate];
  }

  os_unfair_lock_unlock(&self->_lock);
  if ([(_BSNSXPCCallbackTracking *)self->_callbackTracking isInvalidationStillPending])
  {
    v4 = [(BSXPCServiceConnection *)self->_connection activatedConnectionQueue];
    callbackTracking = self->_callbackTracking;
    if (v4)
    {
      v6 = callbackTracking;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __26__BSNSXPCTransport_cancel__block_invoke_2;
      v8[3] = &unk_1E75205D0;
      v9 = v6;
      v7 = v6;
      [v4 performAsync:v8];
    }

    else
    {
      [(_BSNSXPCCallbackTracking *)callbackTracking sendError:0 isOnQueue:?];
    }
  }
}

- (void)dealloc
{
  [(BSCompoundAssertion *)self->_refCounter invalidate];
  [(RBSAssertion *)self->_refCountedAssertion invalidate];
  v3.receiver = self;
  v3.super_class = BSNSXPCTransport;
  [(BSNSXPCTransport *)&v3 dealloc];
}

- (int)processIdentifier
{
  v2 = [(BSNSXPCTransport *)self _auditToken];
  v3 = [v2 pid];

  return v3;
}

void __92__BSNSXPCTransport__initWithConnection_configurator_assertionProvider_outWrappedConnection___block_invoke(uint64_t a1, uint64_t a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__BSNSXPCTransport__initWithConnection_configurator_assertionProvider_outWrappedConnection___block_invoke_2;
  v7[3] = &unk_1E7520378;
  v10 = *(a1 + 48);
  v8 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = v4;
  if (a2)
  {
    v5 = [v7 copy];
    v6 = *(a2 + 80);
    *(a2 + 80) = v5;

    v4 = v9;
  }
}

void __92__BSNSXPCTransport__initWithConnection_configurator_assertionProvider_outWrappedConnection___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v21 = a2;
  v5 = a3;
  v6 = [v5 domain];
  v7 = BSEqualObjects();

  if ((v7 & 1) == 0)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = [v5 domain];
    v14 = [v12 stringWithFormat:@"unexpected error domain: %@", v13];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(*(a1 + 48));
      v16 = *(a1 + 32);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = *(a1 + 32);
      *buf = 138544642;
      v23 = v15;
      v24 = 2114;
      v25 = v18;
      v26 = 2048;
      v27 = v19;
      v28 = 2114;
      v29 = @"BSNSXPCTransport.m";
      v30 = 1024;
      v31 = 278;
      v32 = 2114;
      v33 = v14;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v20 = v14;
    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A838A2CLL);
  }

  v8 = [v5 code];
  v9 = *(a1 + 40);
  if (v8 == 1)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  [(_BSNSXPCCallbackTracking *)*(a1 + 40) sendError:v10 isOnQueue:1];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_newAcquiredAssertionWithAttributes:(void *)a1
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"attributes"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(sel__newAcquiredAssertionWithAttributes_);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138544642;
      *&buf[4] = v23;
      *&buf[12] = 2114;
      *&buf[14] = v25;
      *&buf[22] = 2048;
      v43 = a1;
      *v44 = 2114;
      *&v44[2] = @"BSNSXPCTransport.m";
      v45 = 1024;
      v46 = 303;
      v47 = 2114;
      v48 = v22;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v26 = v22;
    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A838ED4);
  }

  v4 = a1[1];
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = *(v4 + 184);
  if (!v5)
  {
LABEL_30:
    v10 = 0;
    goto LABEL_31;
  }

  v6 = a1[6];
  if (v6)
  {
    v7 = (*(v6 + 16))(v6, a1[2], v5, v3);
  }

  else
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x2050000000;
    v8 = _MergedGlobals_4;
    v41 = _MergedGlobals_4;
    if (!_MergedGlobals_4)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getRBSAssertionClass_block_invoke_1;
      v43 = &unk_1E75200F8;
      *v44 = &v38;
      __getRBSAssertionClass_block_invoke_1(buf);
      v8 = v39[3];
    }

    v9 = v8;
    _Block_object_dispose(&v38, 8);
    v7 = [[v8 alloc] initWithExplanation:a1[2] target:v5 attributes:v3];
  }

  v10 = v7;
  if (!v7)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ failed to create assertion : attributes=%@", a1[2], v3];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(sel__newAcquiredAssertionWithAttributes_);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138544642;
      *&buf[4] = v28;
      *&buf[12] = 2114;
      *&buf[14] = v30;
      *&buf[22] = 2048;
      v43 = a1;
      *v44 = 2114;
      *&v44[2] = @"BSNSXPCTransport.m";
      v45 = 1024;
      v46 = 314;
      v47 = 2114;
      v48 = v27;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v31 = v27;
    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A838FD4);
  }

  v37 = 0;
  v11 = [v7 acquireWithError:&v37];
  v12 = v37;
  v13 = v12;
  if (v11)
  {
    goto LABEL_21;
  }

  v14 = [v12 domain];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v15 = qword_1ED4A7BC8;
  v41 = qword_1ED4A7BC8;
  if (!qword_1ED4A7BC8)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getRBSAssertionErrorDomainSymbolLoc_block_invoke_0;
    v43 = &unk_1E75200F8;
    *v44 = &v38;
    v16 = RunningBoardServicesLibrary_1();
    v17 = dlsym(v16, "RBSAssertionErrorDomain");
    *(*(*v44 + 8) + 24) = v17;
    qword_1ED4A7BC8 = *(*(*v44 + 8) + 24);
    v15 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (!v15)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getRBSAssertionErrorDomain(void)"];
    [v32 handleFailureInFunction:v33 file:@"BSNSXPCTransport.m" lineNumber:41 description:{@"%s", dlerror()}];

    __break(1u);
LABEL_29:
    v5 = 0;
    goto LABEL_30;
  }

  v18 = *v15;
  if ([v14 isEqualToString:v18])
  {
    v19 = [v13 code] == 4;

    if (v19)
    {
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __56__BSNSXPCTransport__newAcquiredAssertionWithAttributes___block_invoke;
      v36[3] = &unk_1E75205F8;
      v36[4] = a1;
      v36[5] = v13;
      v36[6] = v3;
      v36[7] = sel__newAcquiredAssertionWithAttributes_;
      __56__BSNSXPCTransport__newAcquiredAssertionWithAttributes___block_invoke(v36);
    }
  }

  else
  {
  }

  v20 = BSServiceXPCErrorsLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = a1[2];
    *buf = 138543874;
    *&buf[4] = v21;
    *&buf[12] = 2114;
    *&buf[14] = v13;
    *&buf[22] = 2114;
    v43 = v3;
    _os_log_error_impl(&dword_19A821000, v20, OS_LOG_TYPE_ERROR, "%{public}@ failed to acquire assertion : error=%{public}@ attributes=%{public}@", buf, 0x20u);
  }

LABEL_21:
LABEL_31:

  v34 = *MEMORY[0x1E69E9840];
  return v10;
}

void __56__BSNSXPCTransport__newAcquiredAssertionWithAttributes___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ failed to acquire assertion : error=%@  attributes=%@", *(*(a1 + 32) + 16), *(a1 + 40), *(a1 + 48)];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a1 + 56));
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = *(a1 + 32);
    *buf = 138544642;
    v11 = v4;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    v15 = v8;
    v16 = 2114;
    v17 = @"BSNSXPCTransport.m";
    v18 = 1024;
    v19 = 320;
    v20 = 2114;
    v21 = v3;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v9 = v3;
  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_newMessageSessionWithReason:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = a1[3];
    if (v4)
    {
      v5 = [(BSNSXPCTransport *)a1 _newAcquiredAssertionWithAttributes:v4];
    }

    else
    {
      v5 = 0;
    }

    v6 = a1[4];
    if (v6)
    {
      v7 = [v6 acquireForReason:v3];
      v8 = v7;
      v9 = v5 != 0;
      if (v5 && v7)
      {
        v10 = objc_alloc(MEMORY[0x1E698E778]);
        v11 = a1[2];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __49__BSNSXPCTransport__newMessageSessionWithReason___block_invoke;
        v14[3] = &unk_1E75203C8;
        v15 = v5;
        v8 = v8;
        v16 = v8;
        a1 = [v10 initWithIdentifier:v11 forReason:@"combiner" invalidationBlock:v14];

LABEL_14:
        goto LABEL_15;
      }
    }

    else
    {
      v8 = 0;
      v9 = v5 != 0;
    }

    if (v9)
    {
      v12 = v5;
    }

    else
    {
      v12 = v8;
    }

    a1 = v12;
    goto LABEL_14;
  }

LABEL_15:

  return a1;
}

uint64_t __49__BSNSXPCTransport__newMessageSessionWithReason___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

- (void)_sendMessage:(int)a3 asNotification:
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    v6 = *(a1 + 8);
    if (v6 && [*(v6 + 192) isNonLaunching] && (*(a1 + 84) & 1) == 0)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot send to non-launching services without specifying launching attributes"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v16 = NSStringFromSelector(sel__sendMessage_asNotification_);
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138544642;
        v26 = v16;
        v27 = 2114;
        v28 = v18;
        v29 = 2048;
        v30 = a1;
        v31 = 2114;
        v32 = @"BSNSXPCTransport.m";
        v33 = 1024;
        v34 = 355;
        v35 = 2114;
        v36 = v15;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v19 = v15;
      [v15 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8397C4);
    }

    os_unfair_lock_lock((a1 + 80));
    v7 = *(a1 + 88);
    os_unfair_lock_unlock((a1 + 80));
    if ((v7 & 1) == 0)
    {
      v8 = [(BSXPCServiceConnection *)*(a1 + 8) createMessageWithOptions:?];
      [v8 encodeXPCObject:v5 forKey:@"BSNSXPCMessage"];
      if (a3)
      {
        v9 = @"per-notification";
      }

      else
      {
        v9 = @"per-async-message";
      }

      v10 = [(BSNSXPCTransport *)a1 _newMessageSessionWithReason:v9];
      if (v10)
      {
        [v8 encodeBool:1 forKey:@"BSNSXPCReplyIsInternal"];
        newValue[0] = MEMORY[0x1E69E9820];
        newValue[1] = 3221225472;
        newValue[2] = __48__BSNSXPCTransport__sendMessage_asNotification___block_invoke;
        newValue[3] = &unk_1E75203F0;
        v11 = v10;
        v24 = v11;
        if (v8)
        {
          objc_setProperty_nonatomic_copy(v8, v12, newValue, 80);
          v11 = v24;
        }
      }

      else if (a3 && v8)
      {
        v8[61] = 1;
      }

      v13 = *(a1 + 56);
      if (v13)
      {
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __48__BSNSXPCTransport__sendMessage_asNotification___block_invoke_2;
        v20[3] = &unk_1E75205A8;
        v20[4] = a1;
        v21 = v8;
        v22 = v10;
        [v13 performAsync:v20];
      }

      else
      {
        [v8 send];
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __48__BSNSXPCTransport__sendMessage_asNotification___block_invoke_2(void *a1)
{
  os_unfair_lock_lock((a1[4] + 80));
  v2 = a1[4];
  v3 = *(v2 + 89);
  os_unfair_lock_unlock((v2 + 80));
  v4 = a1[5];
  if (v3)
  {
    [v4 invalidate];
    v5 = a1[6];

    return [v5 invalidate];
  }

  else
  {

    return [v4 send];
  }
}

- (void)setPerMessageAssertionAttributes:(id)a3
{
  v9 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if ([v9 count])
  {
    connection = self->_connection;
    if (connection && [(BSXPCServiceConnectionContext *)connection->_context isNonLaunching])
    {
      v5 = [getRBSConstraintsAttributeClass() attributeWithConstraints:7];
      v6 = [v9 arrayByAddingObject:v5];
      perMessageAttributes = self->_perMessageAttributes;
      self->_perMessageAttributes = v6;
    }

    else
    {
      v8 = [v9 copy];
      v5 = self->_perMessageAttributes;
      self->_perMessageAttributes = v8;
    }
  }

  else
  {
    v5 = self->_perMessageAttributes;
    self->_perMessageAttributes = 0;
  }
}

- (void)setRefCountedAssertionAttributes:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if ([v4 count])
  {
    connection = self->_connection;
    if (connection && [(BSXPCServiceConnectionContext *)connection->_context isNonLaunching])
    {
      v6 = [getRBSConstraintsAttributeClass() attributeWithConstraints:7];
      v7 = [v4 arrayByAddingObject:v6];
    }

    else
    {
      v6 = [getRBSConstraintsAttributeClass() attributeWithConstraints:4];
      v7 = [v4 arrayByAddingObject:v6];
    }

    v9 = v7;

    objc_initWeak(&location, self);
    v10 = MEMORY[0x1E698E658];
    explanation = self->_explanation;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__BSNSXPCTransport_setRefCountedAssertionAttributes___block_invoke;
    v14[3] = &unk_1E7520418;
    objc_copyWeak(&v16, &location);
    v4 = v9;
    v15 = v4;
    v12 = [v10 assertionWithIdentifier:explanation stateDidChangeHandler:v14];
    refCounter = self->_refCounter;
    self->_refCounter = v12;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    [(BSCompoundAssertion *)self->_refCounter invalidate];
    v8 = self->_refCounter;
    self->_refCounter = 0;
  }
}

void __53__BSNSXPCTransport_setRefCountedAssertionAttributes___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = [v8 isActive];
    v5 = WeakRetained[5];
    if (v4)
    {
      if (v5)
      {
        goto LABEL_8;
      }

      v6 = [(BSNSXPCTransport *)WeakRetained _newAcquiredAssertionWithAttributes:?];
    }

    else
    {
      if (!v5)
      {
        goto LABEL_8;
      }

      [v5 invalidate];
      v6 = 0;
    }

    v7 = WeakRetained[5];
    WeakRetained[5] = v6;
  }

LABEL_8:
}

- (void)setSendingQueue:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v24 = a3;
  if (!v24)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"sendingQueue", v8];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v26 = v10;
      v27 = 2114;
      v28 = v12;
      v29 = 2048;
      v30 = self;
      v31 = 2114;
      v32 = @"BSNSXPCTransport.m";
      v33 = 1024;
      v34 = 459;
      v35 = 2114;
      v36 = v9;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v13 = v9;
    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A839DFCLL);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = [v24 classForCoder];
    if (!v15)
    {
      v15 = objc_opt_class();
    }

    v16 = NSStringFromClass(v15);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v14 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"sendingQueue", v16, v18];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138544642;
      v26 = v20;
      v27 = 2114;
      v28 = v22;
      v29 = 2048;
      v30 = self;
      v31 = 2114;
      v32 = @"BSNSXPCTransport.m";
      v33 = 1024;
      v34 = 459;
      v35 = 2114;
      v36 = v19;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v23 = v19;
    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A839F44);
  }

  [(BSNSXPCTransport *)self _setSendingQueue:v24];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setEventObserver:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  callbackTracking = self->_callbackTracking;
  v6 = v4;
  obj = v6;
  if (callbackTracking)
  {
    if (!v6)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"observer"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(sel_setEventObserver_);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138544642;
        v15 = v9;
        v16 = 2114;
        v17 = v11;
        v18 = 2048;
        v19 = callbackTracking;
        v20 = 2114;
        v21 = @"BSNSXPCTransport.m";
        v22 = 1024;
        v23 = 161;
        v24 = 2114;
        v25 = v8;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v12 = v8;
      [v8 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A83A19CLL);
    }

    os_unfair_lock_lock(&callbackTracking->_lock);
    if (!callbackTracking->_lock_invalidated)
    {
      objc_storeWeak(&callbackTracking->_lock_observer, obj);
    }

    os_unfair_lock_unlock(&callbackTracking->_lock);
    v6 = obj;
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_setSendingQueue:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"sendingQueue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v15 = v10;
      v16 = 2114;
      v17 = v12;
      v18 = 2048;
      v19 = self;
      v20 = 2114;
      v21 = @"BSNSXPCTransport.m";
      v22 = 1024;
      v23 = 471;
      v24 = 2114;
      v25 = v9;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v13 = v9;
    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83A360);
  }

  v6 = v5;
  os_unfair_lock_assert_owner(&self->_lock);
  sendingQueue = self->_sendingQueue;
  self->_sendingQueue = v6;
  v8 = *MEMORY[0x1E69E9840];
}

- (id)newExternalMessageSessionWithReason:(id)a3
{
  v4 = a3;
  v5 = [(BSNSXPCTransport *)self _newMessageSessionWithReason:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E698E778]) initWithIdentifier:self->_explanation forReason:v4 invalidationBlock:&__block_literal_global_0];
  }

  v8 = v7;

  return v8;
}

- (void)setMessageHandler:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BSNSXPCTransport setMessageHandler:]"];
      *buf = 138544130;
      v14 = v9;
      v15 = 2114;
      v16 = @"BSNSXPCTransport.m";
      v17 = 1024;
      v18 = 490;
      v19 = 2114;
      v20 = v8;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    v10 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83A5D0);
  }

  connection = self->_connection;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__BSNSXPCTransport_setMessageHandler___block_invoke;
  v11[3] = &unk_1E7520488;
  v11[4] = self;
  v6 = v4;
  v12 = v6;
  [(BSXPCServiceConnection *)connection configure:v11];

  v7 = *MEMORY[0x1E69E9840];
}

void __38__BSNSXPCTransport_setMessageHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__BSNSXPCTransport_setMessageHandler___block_invoke_2;
  v7[3] = &unk_1E7520460;
  v3 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v4 = v3;
  v8 = v4;
  if (a2)
  {
    v5 = [v7 copy];
    v6 = *(a2 + 72);
    *(a2 + 72) = v5;

    v4 = v8;
  }
}

void __38__BSNSXPCTransport_setMessageHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 createReply];
  v6 = [v4 decodeBoolForKey:@"BSNSXPCReplyIsInternal"];
  if ([(_BSNSXPCCallbackTracking *)*(*(a1 + 32) + 72) isInvalidationStillPending])
  {
    v7 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"BSNSXPCMessage"];
    if (v7)
    {
      v8 = *(a1 + 40);
      if (v6)
      {
        (*(v8 + 16))(v8, v7, 0);
        [v5 send];
      }

      else
      {
        v12 = [v5 message];
        (*(v8 + 16))(v8, v7, v12);
      }
    }

    else
    {
      v11 = BSServiceXPCErrorsLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = *(*(a1 + 32) + 16);
        v15 = [v4 message];
        v16 = 138543618;
        v17 = v14;
        v18 = 2112;
        v19 = v15;
        _os_log_error_impl(&dword_19A821000, v11, OS_LOG_TYPE_ERROR, "%{public}@ failed to decode underlying message : message=%@", &v16, 0x16u);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = BSServiceXPCLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(*(a1 + 32) + 16);
      v10 = [v4 message];
      v16 = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      _os_log_debug_impl(&dword_19A821000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ dropping message received after invalidation callback : message=%@", &v16, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setErrorHandler:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BSNSXPCTransport setErrorHandler:]"];
      *buf = 138544130;
      v14 = v9;
      v15 = 2114;
      v16 = @"BSNSXPCTransport.m";
      v17 = 1024;
      v18 = 516;
      v19 = 2114;
      v20 = v8;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    v10 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83AACCLL);
  }

  connection = self->_connection;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__BSNSXPCTransport_setErrorHandler___block_invoke;
  v11[3] = &unk_1E7520488;
  v11[4] = self;
  v6 = v4;
  v12 = v6;
  [(BSXPCServiceConnection *)connection configure:v11];

  v7 = *MEMORY[0x1E69E9840];
}

void __36__BSNSXPCTransport_setErrorHandler___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 72);
  v2 = *(a1 + 40);
  if (v1)
  {
    v11 = v2;
    if (!v2)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7 = NSStringFromSelector(sel_setErrorHandler_);
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        *buf = 138544642;
        v13 = v7;
        v14 = 2114;
        v15 = v9;
        v16 = 2048;
        v17 = v1;
        v18 = 2114;
        v19 = @"BSNSXPCTransport.m";
        v20 = 1024;
        v21 = 153;
        v22 = 2114;
        v23 = v6;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v10 = v6;
      [v6 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A83ACB8);
    }

    os_unfair_lock_lock((v1 + 40));
    if ((*(v1 + 44) & 1) == 0)
    {
      v3 = [v11 copy];
      v4 = *(v1 + 24);
      *(v1 + 24) = v3;
    }

    os_unfair_lock_unlock((v1 + 40));
    v2 = v11;
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)sendMessage:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  xdict = v5;
  if (!v5 || (v7 = MEMORY[0x19A908710](v5), v6 = xdict, v7 != MEMORY[0x1E69E9E80]))
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"xMessage was invalid : %@", v6];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v18 = v12;
      v19 = 2114;
      v20 = v14;
      v21 = 2048;
      v22 = self;
      v23 = 2114;
      v24 = @"BSNSXPCTransport.m";
      v25 = 1024;
      v26 = 524;
      v27 = 2114;
      v28 = v11;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v15 = v11;
    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83AECCLL);
  }

  v8 = xpc_dictionary_get_remote_connection(xdict);
  v9 = v8;
  if (v8)
  {
    xpc_connection_send_message(v8, xdict);
  }

  else
  {
    [(BSNSXPCTransport *)self _sendMessage:0 asNotification:?];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)sendMessageWithReplySync:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!v5 || MEMORY[0x19A908710](v5) != MEMORY[0x1E69E9E80])
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"xMessage was invalid : %@", v6];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = NSStringFromSelector(a2);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138544642;
      *&buf[4] = v29;
      *&buf[12] = 2114;
      *&buf[14] = v31;
      *&buf[22] = 2048;
      v48 = self;
      LOWORD(v49) = 2114;
      *(&v49 + 2) = @"BSNSXPCTransport.m";
      WORD5(v49) = 1024;
      HIDWORD(v49) = 535;
      v50 = 2114;
      v51 = v28;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v32 = v28;
    [v28 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83B2CCLL);
  }

  v7 = xpc_dictionary_get_remote_connection(v6);

  if (v7)
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot send a reply via sendMessageWithReplySync:"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v34 = NSStringFromSelector(a2);
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      *buf = 138544642;
      *&buf[4] = v34;
      *&buf[12] = 2114;
      *&buf[14] = v36;
      *&buf[22] = 2048;
      v48 = self;
      LOWORD(v49) = 2114;
      *(&v49 + 2) = @"BSNSXPCTransport.m";
      WORD5(v49) = 1024;
      HIDWORD(v49) = 536;
      v50 = 2114;
      v51 = v33;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v37 = v33;
    [v33 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83B3C4);
  }

  connection = self->_connection;
  if (connection && [(BSXPCServiceConnectionContext *)connection->_context isNonLaunching]&& (self->_messageOptions & 1) == 0)
  {
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot send to non-launching services without specifying launching attributes"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(a2);
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      *buf = 138544642;
      *&buf[4] = v39;
      *&buf[12] = 2114;
      *&buf[14] = v41;
      *&buf[22] = 2048;
      v48 = self;
      LOWORD(v49) = 2114;
      *(&v49 + 2) = @"BSNSXPCTransport.m";
      WORD5(v49) = 1024;
      HIDWORD(v49) = 537;
      v50 = 2114;
      v51 = v38;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v42 = v38;
    [v38 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83B4BCLL);
  }

  os_unfair_lock_lock(&self->_lock);
  lock_cancelEnqueued = self->_lock_cancelEnqueued;
  os_unfair_lock_unlock(&self->_lock);
  if (!lock_cancelEnqueued)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v48 = __Block_byref_object_copy__0;
    *&v49 = __Block_byref_object_dispose__0;
    *(&v49 + 1) = 0;
    v13 = [(BSXPCServiceConnection *)self->_connection createMessageWithOptions:?];
    [v13 encodeXPCObject:v6 forKey:@"BSNSXPCMessage"];
    v14 = [(BSNSXPCTransport *)self _newMessageSessionWithReason:?];
    sendingQueue = self->_sendingQueue;
    if (sendingQueue)
    {
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __45__BSNSXPCTransport_sendMessageWithReplySync___block_invoke_207;
      v44[3] = &unk_1E75204B0;
      v44[4] = self;
      v45 = v13;
      v46 = buf;
      [(BSNSXPCSending *)sendingQueue performAsyncAndWait:v44];

LABEL_19:
      [v14 invalidate];
      v24 = *(*&buf[8] + 40);
      if (v24)
      {
        empty = v24;
      }

      else
      {
        empty = xpc_dictionary_create_empty();
      }

      v11 = empty;

      _Block_object_dispose(buf, 8);
      goto LABEL_23;
    }

    v43 = 0;
    v16 = [v13 sendSynchronouslyWithError:&v43];
    v17 = v43;
    v18 = v17;
    if (v16)
    {
      v19 = [v16 message];
      v20 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v19;
    }

    else
    {
      if (!v17)
      {
LABEL_18:

        goto LABEL_19;
      }

      v21 = *&buf[8];
      v22 = MEMORY[0x1E69E9E20];
      v23 = MEMORY[0x1E69E9E20];
      v20 = *(v21 + 40);
      *(v21 + 40) = v22;
    }

    goto LABEL_18;
  }

  v10 = self->_sendingQueue;
  if (v10)
  {
    [(BSNSXPCSending *)v10 performAsyncAndWait:&__block_literal_global_203];
  }

  v11 = MEMORY[0x1E69E9E20];
  v12 = MEMORY[0x1E69E9E20];
LABEL_23:

  v26 = *MEMORY[0x1E69E9840];

  return v11;
}

void __45__BSNSXPCTransport_sendMessageWithReplySync___block_invoke_207(void *a1)
{
  os_unfair_lock_lock((a1[4] + 80));
  v2 = a1[4];
  v3 = *(v2 + 89);
  os_unfair_lock_unlock((v2 + 80));
  if (v3)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), MEMORY[0x1E69E9E20]);
    return;
  }

  v4 = a1[5];
  v14 = 0;
  v5 = [v4 sendSynchronouslyWithError:&v14];
  v6 = v14;
  v7 = v6;
  if (v5)
  {
    v8 = [v5 message];
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
LABEL_7:

    goto LABEL_8;
  }

  if (v6)
  {
    v11 = *(a1[6] + 8);
    v12 = MEMORY[0x1E69E9E20];
    v13 = MEMORY[0x1E69E9E20];
    v10 = *(v11 + 40);
    *(v11 + 40) = v12;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)sendMessageWithReply:(id)a3 onQueue:(id)a4 replyHandler:(id)a5
{
  v79 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9 || MEMORY[0x19A908710](v9) != MEMORY[0x1E69E9E80])
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"xMessage was invalid : %@", v9];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(a2);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138544642;
      v68 = v25;
      v69 = 2114;
      v70 = v27;
      v71 = 2048;
      v72 = self;
      v73 = 2114;
      v74 = @"BSNSXPCTransport.m";
      v75 = 1024;
      v76 = 596;
      v77 = 2114;
      v78 = v24;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v28 = v24;
    [v24 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83BB10);
  }

  v12 = xpc_dictionary_get_remote_connection(v9);

  if (v12)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot send a reply via sendMessageWithReply:onQueue:replyHandler:"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v30 = NSStringFromSelector(a2);
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      *buf = 138544642;
      v68 = v30;
      v69 = 2114;
      v70 = v32;
      v71 = 2048;
      v72 = self;
      v73 = 2114;
      v74 = @"BSNSXPCTransport.m";
      v75 = 1024;
      v76 = 597;
      v77 = 2114;
      v78 = v29;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v33 = v29;
    [v29 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83BC08);
  }

  if (!v10)
  {
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"queue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v35 = NSStringFromSelector(a2);
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      *buf = 138544642;
      v68 = v35;
      v69 = 2114;
      v70 = v37;
      v71 = 2048;
      v72 = self;
      v73 = 2114;
      v74 = @"BSNSXPCTransport.m";
      v75 = 1024;
      v76 = 598;
      v77 = 2114;
      v78 = v34;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v38 = v34;
    [v34 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83BD0CLL);
  }

  if (!v11)
  {
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v40 = NSStringFromSelector(a2);
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      *buf = 138544642;
      v68 = v40;
      v69 = 2114;
      v70 = v42;
      v71 = 2048;
      v72 = self;
      v73 = 2114;
      v74 = @"BSNSXPCTransport.m";
      v75 = 1024;
      v76 = 599;
      v77 = 2114;
      v78 = v39;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v43 = v39;
    [v39 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83BE10);
  }

  connection = self->_connection;
  if (connection && [(BSXPCServiceConnectionContext *)connection->_context isNonLaunching]&& (self->_messageOptions & 1) == 0)
  {
    v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot send to non-launching services without specifying launching attributes"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v50 = NSStringFromSelector(a2);
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      *buf = 138544642;
      v68 = v50;
      v69 = 2114;
      v70 = v52;
      v71 = 2048;
      v72 = self;
      v73 = 2114;
      v74 = @"BSNSXPCTransport.m";
      v75 = 1024;
      v76 = 600;
      v77 = 2114;
      v78 = v49;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v53 = v49;
    [v49 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83C008);
  }

  v14 = [(BSServiceDispatchQueue *)self->_queue queue];

  if (v14 != v10)
  {
    v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"queue does not match configured queue : param=%@ config=%@", v10, self->_queue];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v45 = NSStringFromSelector(a2);
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      *buf = 138544642;
      v68 = v45;
      v69 = 2114;
      v70 = v47;
      v71 = 2048;
      v72 = self;
      v73 = 2114;
      v74 = @"BSNSXPCTransport.m";
      v75 = 1024;
      v76 = 602;
      v77 = 2114;
      v78 = v44;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v48 = v44;
    [v44 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83BF10);
  }

  os_unfair_lock_lock(&self->_lock);
  lock_cancelEnqueued = self->_lock_cancelEnqueued;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_cancelEnqueued)
  {
    sendingQueue = self->_sendingQueue;
    if (sendingQueue)
    {
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __62__BSNSXPCTransport_sendMessageWithReply_onQueue_replyHandler___block_invoke;
      v64[3] = &unk_1E7520648;
      v65 = v10;
      v66 = v11;
      [(BSNSXPCSending *)sendingQueue performAsync:v64];

      v17 = v65;
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__BSNSXPCTransport_sendMessageWithReply_onQueue_replyHandler___block_invoke_3;
      block[3] = &unk_1E7520620;
      v63 = v11;
      dispatch_async(v10, block);
      v17 = v63;
    }
  }

  else
  {
    v17 = [(BSXPCServiceConnection *)self->_connection createMessageWithOptions:?];
    [v17 encodeXPCObject:v9 forKey:@"BSNSXPCMessage"];
    v18 = [(BSNSXPCTransport *)self _newMessageSessionWithReason:?];
    newValue[0] = MEMORY[0x1E69E9820];
    newValue[1] = 3221225472;
    newValue[2] = __62__BSNSXPCTransport_sendMessageWithReply_onQueue_replyHandler___block_invoke_4;
    newValue[3] = &unk_1E7520670;
    v19 = v18;
    v60 = v19;
    v21 = v11;
    v61 = v21;
    if (v17)
    {
      objc_setProperty_nonatomic_copy(v17, v20, newValue, 80);
    }

    v22 = self->_sendingQueue;
    if (v22)
    {
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __62__BSNSXPCTransport_sendMessageWithReply_onQueue_replyHandler___block_invoke_5;
      v54[3] = &unk_1E75204D8;
      v54[4] = self;
      v55 = v17;
      v56 = v19;
      v57 = v10;
      v58 = v21;
      [(BSNSXPCSending *)v22 performAsync:v54];
    }

    else
    {
      [v17 send];
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __62__BSNSXPCTransport_sendMessageWithReply_onQueue_replyHandler___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__BSNSXPCTransport_sendMessageWithReply_onQueue_replyHandler___block_invoke_2;
  block[3] = &unk_1E7520620;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

void __62__BSNSXPCTransport_sendMessageWithReply_onQueue_replyHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  [*(a1 + 32) invalidate];
  if (v6)
  {
    a3 = [v6 message];
  }

  else if (a3)
  {
    a3 = MEMORY[0x1E69E9E20];
    v5 = MEMORY[0x1E69E9E20];
  }

  (*(*(a1 + 40) + 16))();
}

void __62__BSNSXPCTransport_sendMessageWithReply_onQueue_replyHandler___block_invoke_5(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 80));
  v2 = *(a1 + 32);
  v3 = *(v2 + 89);
  os_unfair_lock_unlock((v2 + 80));
  v4 = *(a1 + 40);
  if (v3)
  {
    [v4 invalidate];
    [*(a1 + 48) invalidate];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__BSNSXPCTransport_sendMessageWithReply_onQueue_replyHandler___block_invoke_6;
    block[3] = &unk_1E7520620;
    v5 = *(a1 + 56);
    v7 = *(a1 + 64);
    dispatch_async(v5, block);
  }

  else
  {

    [v4 send];
  }
}

- (void)sendNotification:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  xdict = v5;
  if (!v5 || (v7 = MEMORY[0x19A908710](v5), v6 = xdict, v7 != MEMORY[0x1E69E9E80]))
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"xMessage was invalid : %@", v6];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544642;
      v22 = v11;
      v23 = 2114;
      v24 = v13;
      v25 = 2048;
      v26 = self;
      v27 = 2114;
      v28 = @"BSNSXPCTransport.m";
      v29 = 1024;
      v30 = 661;
      v31 = 2114;
      v32 = v10;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v14 = v10;
    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83C598);
  }

  v8 = xpc_dictionary_get_remote_connection(xdict);

  if (v8)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot send a reply via sendNotification:"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(a2);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138544642;
      v22 = v16;
      v23 = 2114;
      v24 = v18;
      v25 = 2048;
      v26 = self;
      v27 = 2114;
      v28 = @"BSNSXPCTransport.m";
      v29 = 1024;
      v30 = 662;
      v31 = 2114;
      v32 = v15;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v19 = v15;
    [v15 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83C690);
  }

  [(BSNSXPCTransport *)self _sendMessage:1 asNotification:?];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)sendBarrierBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  sendingQueue = self->_sendingQueue;
  if (sendingQueue)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__BSNSXPCTransport_sendBarrierBlock___block_invoke;
    v7[3] = &unk_1E7520648;
    v7[4] = self;
    v8 = v4;
    [(BSNSXPCSending *)sendingQueue performAsync:v7];
  }

  else
  {
    [(BSXPCServiceConnection *)self->_connection sendBarrierBlock:v4];
  }
}

- (void)setTargetQueue:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"targetQueue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v21 = v12;
      v22 = 2114;
      v23 = v14;
      v24 = 2048;
      v25 = self;
      v26 = 2114;
      v27 = @"BSNSXPCTransport.m";
      v28 = 1024;
      v29 = 677;
      v30 = 2114;
      v31 = v11;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v15 = v11;
    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83CA4CLL);
  }

  v6 = [BSServiceDispatchQueue _queueOfDispatchQueue:v5];
  if (!v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__BSNSXPCTransport_setTargetQueue___block_invoke;
    block[3] = &unk_1E75205D0;
    v7 = v5;
    v19 = v7;
    dispatch_async(v7, block);
    v6 = [BSServiceDispatchQueue _queueWithDispatchQueue:v7];
  }

  connection = self->_connection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __35__BSNSXPCTransport_setTargetQueue___block_invoke_2;
  v16[3] = &unk_1E7520500;
  v16[4] = self;
  v17 = v6;
  v9 = v6;
  [(BSXPCServiceConnection *)connection configure:v16];

  v10 = *MEMORY[0x1E69E9840];
}

void __35__BSNSXPCTransport_setTargetQueue___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  v4 = a2;
  [(BSXPCServiceConnectionEventHandler *)v4 setQueue:?];
}

- (void)suspend
{
  v25 = *MEMORY[0x1E69E9840];
  if (!self->_faultOnSuspend)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"suspend is not supported on a wrapped BSServiceConnection"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v13 = 138544642;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      v17 = 2048;
      v18 = self;
      v19 = 2114;
      v20 = @"BSNSXPCTransport.m";
      v21 = 1024;
      v22 = 712;
      v23 = 2114;
      v24 = v8;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83CCF0);
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_faultedOnSuspend)
  {
    v3 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    self->_lock_faultedOnSuspend = 1;
    v3 = OS_LOG_TYPE_FAULT;
  }

  os_unfair_lock_unlock(&self->_lock);
  v4 = BSServiceXPCErrorsLog();
  if (os_log_type_enabled(v4, v3))
  {
    explanation = self->_explanation;
    v13 = 138543362;
    v14 = explanation;
    _os_log_impl(&dword_19A821000, v4, v3, "%{public}@ cannot suspend this type of transport", &v13, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __26__BSNSXPCTransport_cancel__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 80));
  *(*(a1 + 32) + 89) = 1;
  [*(*(a1 + 32) + 8) invalidate];
  v2 = (*(a1 + 32) + 80);

  os_unfair_lock_unlock(v2);
}

- (int)auditSessionIdentifier
{
  v2 = [(BSNSXPCTransport *)self _auditToken];
  v3 = [v2 asid];

  return v3;
}

- (unsigned)effectiveUserIdentifier
{
  v2 = [(BSNSXPCTransport *)self _auditToken];
  v3 = [v2 euid];

  return v3;
}

- (unsigned)effectiveGroupIdentifier
{
  v2 = [(BSNSXPCTransport *)self _auditToken];
  v3 = [v2 egid];

  return v3;
}

@end