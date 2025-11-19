@interface BSXPCServiceConnectionMessage
+ (id)messageWithXPCConnection:(void *)a3 targetQueue:(void *)a4 handshake:(int)a5 activationGeneration:(void *)a6 delegate:;
- (BOOL)_sendWithMode:(uint64_t)a1;
- (BOOL)expectsReply;
- (BSXPCServiceConnectionMessage)initWithMessage:(id)a3;
- (char)connection;
- (id)_subMessages;
- (id)createReply;
- (id)messageID;
- (id)selectorName;
- (id)sendSynchronouslyWithError:(id *)a3;
- (uint64_t)_initWithXPCConnection:(void *)a3 targetQueue:(void *)a4 handshake:(int)a5 activationGeneration:(void *)a6 delegate:;
- (void)childIdentifier;
- (void)childIdentifierIsRemotelyDefined;
- (void)invalidate;
- (void)setChildIdentifier:(void *)result;
- (void)setChildIdentifierIsRemotelyDefined:(void *)a1;
- (void)setMessageID:(void *)a1;
- (void)setReplyQueue:(uint64_t)a1;
- (void)setSelectorName:(void *)a1;
@end

@implementation BSXPCServiceConnectionMessage

- (id)messageID
{
  if (a1)
  {
    a1 = [a1 decodeStringForKey:@"bsxpc"];
    v1 = vars8;
  }

  return a1;
}

- (void)childIdentifier
{
  if (a1)
  {
    return [a1 decodeUInt64ForKey:@"bsxpc_CID"];
  }

  return a1;
}

- (void)childIdentifierIsRemotelyDefined
{
  if (a1)
  {
    return [a1 decodeBoolForKey:@"bsxpc_CIDr"];
  }

  return a1;
}

- (id)_subMessages
{
  if (a1 && [a1 containsValueForKey:@"bsxpc_BATCH"])
  {
    v2 = [a1 decodeXPCObjectOfType:MEMORY[0x1E69E9E50] forKey:@"bsxpc_BATCH"];
    if (v2)
    {
      v3 = [MEMORY[0x1E695DF70] array];
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __45__BSXPCServiceConnectionMessage__subMessages__block_invoke;
      applier[3] = &unk_1E7521210;
      v4 = v3;
      v7 = v4;
      xpc_array_apply(v2, applier);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)selectorName
{
  if (a1)
  {
    a1 = [a1 decodeStringForKey:@"bsxpc_SEL"];
    v1 = vars8;
  }

  return a1;
}

- (void)invalidate
{
  v3 = *MEMORY[0x1E698E7C0];
  v4 = *(&self->super.super.isa + v3);
  *(&self->super.super.isa + v3) = 0;

  completion = self->_completion;
  self->_completion = 0;

  v6 = *MEMORY[0x1E698E7C8];
  v7 = *(&self->super.super.isa + v6);
  *(&self->super.super.isa + v6) = 0;

  handshake = self->_handshake;
  self->_handshake = 0;

  delegate = self->_delegate;
  self->_delegate = 0;
}

- (BOOL)expectsReply
{
  v2 = *(&self->super.super.isa + *MEMORY[0x1E698E7C0]);
  if (v2)
  {
    LOBYTE(v2) = xpc_dictionary_expects_reply();
  }

  return v2;
}

- (id)createReply
{
  if ([(BSXPCServiceConnectionMessage *)self expectsReply])
  {
    v3 = [BSXPCServiceConnectionMessageReply alloc];
    v4 = [(BSXPCServiceConnectionMessageReply *)v3 initWithMessage:*(&self->super.super.isa + *MEMORY[0x1E698E7C0])];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (char)connection
{
  if (a1)
  {
    a1 = *&a1[*MEMORY[0x1E698E7C8]];
    v1 = vars8;
  }

  return a1;
}

uint64_t __45__BSXPCServiceConnectionMessage__subMessages__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = [[BSXPCServiceConnectionMessage alloc] initWithMessage:v4];
  [v5 addObject:v6];

  return 1;
}

- (BSXPCServiceConnectionMessage)initWithMessage:(id)a3
{
  v4.receiver = self;
  v4.super_class = BSXPCServiceConnectionMessage;
  result = [(BSXPCCoder *)&v4 initWithMessage:a3];
  if (result)
  {
    result->_sendFlag = 0;
  }

  return result;
}

- (uint64_t)_initWithXPCConnection:(void *)a3 targetQueue:(void *)a4 handshake:(int)a5 activationGeneration:(void *)a6 delegate:
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  if (a1)
  {
    v16 = [a1 initWithMessage:0];
    a1 = v16;
    if (v16)
    {
      objc_storeStrong((v16 + *MEMORY[0x1E698E7C8]), a2);
      objc_storeStrong((a1 + 72), a3);
      objc_storeStrong((a1 + 40), a4);
      *(a1 + 64) = a5;
      objc_storeStrong((a1 + 48), a6);
    }
  }

  return a1;
}

+ (id)messageWithXPCConnection:(void *)a3 targetQueue:(void *)a4 handshake:(int)a5 activationGeneration:(void *)a6 delegate:
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = objc_alloc(objc_opt_self());
  v15 = [(BSXPCServiceConnectionMessage *)v14 _initWithXPCConnection:v10 targetQueue:v11 handshake:v12 activationGeneration:a5 delegate:v13];

  return v15;
}

- (BOOL)_sendWithMode:(uint64_t)a1
{
  v57 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((BSAtomicSetFlag() & 1) == 0)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"can not send the same message twice"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v21 = NSStringFromSelector(sel__sendWithMode_);
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        *handler = 138544642;
        *&handler[4] = v21;
        *&handler[12] = 2114;
        *&handler[14] = v23;
        *&handler[22] = 2048;
        v53 = a1;
        LOWORD(v54) = 2114;
        *(&v54 + 2) = @"BSXPCServiceConnectionMessage.m";
        WORD5(v54) = 1024;
        HIDWORD(v54) = 145;
        v55 = 2114;
        v56 = v20;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", handler, 0x3Au);
      }

      v24 = v20;
      [v20 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A86FE30);
    }

    if (a2 == 1)
    {
      if (!*(a1 + 80))
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"only messages with a reply can be sent synchronously"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v26 = NSStringFromSelector(sel__sendWithMode_);
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          *handler = 138544642;
          *&handler[4] = v26;
          *&handler[12] = 2114;
          *&handler[14] = v28;
          *&handler[22] = 2048;
          v53 = a1;
          LOWORD(v54) = 2114;
          *(&v54 + 2) = @"BSXPCServiceConnectionMessage.m";
          WORD5(v54) = 1024;
          HIDWORD(v54) = 146;
          v55 = 2114;
          v56 = v25;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", handler, 0x3Au);
        }

        v29 = v25;
        [v25 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A86FF28);
      }

      if (*(a1 + 60) == 1)
      {
        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"only async messages are batchable"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v31 = NSStringFromSelector(sel__sendWithMode_);
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          *handler = 138544642;
          *&handler[4] = v31;
          *&handler[12] = 2114;
          *&handler[14] = v33;
          *&handler[22] = 2048;
          v53 = a1;
          LOWORD(v54) = 2114;
          *(&v54 + 2) = @"BSXPCServiceConnectionMessage.m";
          WORD5(v54) = 1024;
          HIDWORD(v54) = 147;
          v55 = 2114;
          v56 = v30;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", handler, 0x3Au);
        }

        v34 = v30;
        [v30 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A870020);
      }
    }

    [*(a1 + 40) sendIfNecessary];
    v4 = *(a1 + 48);
    if (!v4 || [v4 shouldSendMessage:a1])
    {
      v5 = [a1 createMessage];
      v6 = *(a1 + 88);
      v7 = MEMORY[0x19A908200](*(a1 + 80));
      v8 = *(a1 + 48);
      if (v7)
      {
        v9 = *(a1 + 64);
        v10 = v48;
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __55__BSXPCServiceConnectionMessage__actuallySendWithMode___block_invoke;
        v48[3] = &unk_1E7521198;
        v46 = &v50;
        v50 = v7;
        v47 = &v49;
        v49 = v8;
        v51 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = MEMORY[0x19A908200](v10);
      v12 = MEMORY[0x1E698E7C8];
      v13 = *(a1 + *MEMORY[0x1E698E7C8]);
      if (v13)
      {
        if (!v11)
        {
          if (*(a1 + 61) == 1)
          {
            xpc_connection_send_notification();
          }

          else
          {
            xpc_connection_send_message(v13, v5);
          }

          goto LABEL_26;
        }

        if (a2 == 1)
        {
          v14 = xpc_connection_send_message_with_reply_sync(v13, v5);
          (v11)[2](v11, v14);
LABEL_25:

          goto LABEL_26;
        }

        v15 = [v6 _xpcReplyQueue];
        v14 = v15;
        if (!v15)
        {
          v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Must have a connection replyQueue that understands how to schedule replies : %@", v6];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v36 = NSStringFromSelector(sel__actuallySendWithMode_);
            v37 = objc_opt_class();
            v38 = NSStringFromClass(v37);
            *handler = 138544642;
            *&handler[4] = v36;
            *&handler[12] = 2114;
            v39 = v38;
            *&handler[14] = v38;
            *&handler[22] = 2048;
            v53 = a1;
            LOWORD(v54) = 2114;
            *(&v54 + 2) = @"BSXPCServiceConnectionMessage.m";
            WORD5(v54) = 1024;
            HIDWORD(v54) = 193;
            v55 = 2114;
            v56 = v35;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", handler, 0x3Au);
          }

          v40 = v35;
          [v35 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A87011CLL);
        }

        v16 = *(a1 + *v12);
        v17 = [v15 queue];
        *handler = MEMORY[0x1E69E9820];
        *&handler[8] = 3221225472;
        *&handler[16] = __55__BSXPCServiceConnectionMessage__actuallySendWithMode___block_invoke_45;
        v53 = &unk_1E75211E8;
        *&v54 = v6;
        *(&v54 + 1) = v11;
        xpc_connection_send_message_with_reply(v16, v5, v17, handler);

LABEL_24:
        goto LABEL_25;
      }

      if (v11)
      {
        if (a2 != 1)
        {
          v14 = [v6 _xpcReplyQueue];
          if (!v14)
          {
            v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Must have a connection replyQueue that understands how to schedule replies : %@", v6];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v42 = NSStringFromSelector(sel__actuallySendWithMode_);
              v43 = objc_opt_class();
              v44 = NSStringFromClass(v43);
              *handler = 138544642;
              *&handler[4] = v42;
              *&handler[12] = 2114;
              *&handler[14] = v44;
              *&handler[22] = 2048;
              v53 = a1;
              LOWORD(v54) = 2114;
              *(&v54 + 2) = @"BSXPCServiceConnectionMessage.m";
              WORD5(v54) = 1024;
              HIDWORD(v54) = 207;
              v55 = 2114;
              v56 = v41;
              _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", handler, 0x3Au);
            }

            v45 = v41;
            [v41 UTF8String];
            _bs_set_crash_log_message();
            __break(0);
            JUMPOUT(0x19A870218);
          }

          *handler = MEMORY[0x1E69E9820];
          *&handler[8] = 3221225472;
          *&handler[16] = __55__BSXPCServiceConnectionMessage__actuallySendWithMode___block_invoke_47;
          v53 = &unk_1E7520648;
          *&v54 = v6;
          *(&v54 + 1) = v11;
          [v14 performAsync:handler];
          goto LABEL_24;
        }

        v11[2](v11, MEMORY[0x1E69E9E20]);
      }

LABEL_26:
      [a1 invalidate];

      if (v7)
      {
      }
    }
  }

  result = a1 != 0;
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setMessageID:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    if (v3)
    {
      [a1 encodeObject:v3 forKey:@"bsxpc"];
    }

    else
    {
      [a1 _removeValueForKey:@"bsxpc"];
    }
  }
}

- (void)setChildIdentifier:(void *)result
{
  v22 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    if (!a2)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"childIdentifier > 0"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = NSStringFromSelector(sel_setChildIdentifier_);
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        *buf = 138544642;
        v11 = v5;
        v12 = 2114;
        v13 = v7;
        v14 = 2048;
        v15 = v2;
        v16 = 2114;
        v17 = @"BSXPCServiceConnectionMessage.m";
        v18 = 1024;
        v19 = 117;
        v20 = 2114;
        v21 = v4;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v8 = v4;
      [v4 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A870558);
    }

    v3 = *MEMORY[0x1E69E9840];

    return [result encodeUInt64:a2 forKey:@"bsxpc_CID"];
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];
  }

  return result;
}

- (void)setChildIdentifierIsRemotelyDefined:(void *)a1
{
  if (a1)
  {
    return [a1 encodeBool:a2 forKey:@"bsxpc_CIDr"];
  }

  return a1;
}

- (void)setSelectorName:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    if (v3)
    {
      [a1 encodeObject:v3 forKey:@"bsxpc_SEL"];
    }

    else
    {
      [a1 _removeValueForKey:@"bsxpc_SEL"];
    }
  }
}

void __55__BSXPCServiceConnectionMessage__actuallySendWithMode___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7 && (v3 = MEMORY[0x19A908710](), v4 = MEMORY[0x1E69E9E98], v7, v7, v3 == v4))
  {
    v6 = *(a1 + 40);
    v5 = BSServiceConnectionErrorCreate(3uLL, 0, @"XPC error received on message reply handler");
    (*(v6 + 16))(v6, 0, v5);
  }

  else
  {
    v5 = [[BSXPCServiceConnectionMessage alloc] initWithMessage:v7];
    [*(a1 + 32) updateAuditTokenFromReplyMessage:v5 fromActivationGeneration:*(a1 + 48)];
    (*(*(a1 + 40) + 16))();
  }
}

void __55__BSXPCServiceConnectionMessage__actuallySendWithMode___block_invoke_45(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__BSXPCServiceConnectionMessage__actuallySendWithMode___block_invoke_2;
  v7[3] = &unk_1E75211C0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 _xpcReplyQueue_performReply:v7];
}

void __55__BSXPCServiceConnectionMessage__actuallySendWithMode___block_invoke_47(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __55__BSXPCServiceConnectionMessage__actuallySendWithMode___block_invoke_2_48;
  v2[3] = &unk_1E7520620;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _xpcReplyQueue_performReply:v2];
}

- (id)sendSynchronouslyWithError:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__BSXPCServiceConnectionMessage_sendSynchronouslyWithError___block_invoke;
  v9[3] = &unk_1E7521238;
  v9[4] = &v10;
  v9[5] = &v16;
  v5 = MEMORY[0x19A908200](v9, a2);
  completion = self->_completion;
  self->_completion = v5;

  [(BSXPCServiceConnectionMessage *)self sendSynchronously];
  if (a3)
  {
    *a3 = v17[5];
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v7;
}

void __60__BSXPCServiceConnectionMessage_sendSynchronouslyWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)setReplyQueue:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 88), a2);
  }
}

@end