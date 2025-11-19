@interface CMCaptureFrameSenderClient
- (CMCaptureFrameSenderClient)initWithConnection:(id)a3 queue:(id)a4;
- (int)sendXCPSampleBuffer:(id)a3;
- (void)_invalidate;
- (void)dealloc;
@end

@implementation CMCaptureFrameSenderClient

- (CMCaptureFrameSenderClient)initWithConnection:(id)a3 queue:(id)a4
{
  if (!a3 || !a4)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Need a connection and a queue" userInfo:0]);
  }

  v26.receiver = self;
  v26.super_class = CMCaptureFrameSenderClient;
  v5 = [(CMCaptureFrameSenderClient *)&v26 init];
  if (v5)
  {
    memset(&error[1], 0, 32);
    xpc_connection_get_audit_token();
    pid = xpc_connection_get_pid(a3);
    v7 = *MEMORY[0x1E695E480];
    token = *&error[1];
    v8 = SecTaskCreateWithAuditToken(v7, &token);
    if (!v8)
    {
      v15 = 0;
LABEL_23:
      if (dword_1ED8441D0)
      {
        v27 = 0;
        LOBYTE(error[0]) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v19 = v27;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, error[0]))
        {
          v20 = v19;
        }

        else
        {
          v20 = v19 & 0xFFFFFFFE;
        }

        if (v20)
        {
          v21 = xpc_connection_get_pid(a3);
          LODWORD(error[1]) = 136315651;
          *(&error[1] + 4) = "[CMCaptureFrameSenderClient initWithConnection:queue:]";
          if (v15)
          {
            v22 = 84;
          }

          else
          {
            v22 = 70;
          }

          WORD2(error[2]) = 1025;
          *(&error[2] + 6) = v21;
          WORD1(error[3]) = 1025;
          HIDWORD(error[3]) = v22;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (v15)
      {
        v5->_connection = a3;
        v5->_queue = v5->_queue;
        v5->_pid = xpc_connection_get_pid(a3);
        v5->_connectionIsValid = 1;
        objc_initWeak(&token, v5);
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __55__CMCaptureFrameSenderClient_initWithConnection_queue___block_invoke;
        handler[3] = &unk_1E798F8E8;
        objc_copyWeak(&v25, &token);
        handler[4] = a3;
        xpc_connection_set_event_handler(a3, handler);
        xpc_connection_activate(a3);
        objc_destroyWeak(&v25);
        objc_destroyWeak(&token);
      }

      else
      {

        return 0;
      }

      return v5;
    }

    v9 = v8;
    error[0] = 0;
    v10 = SecTaskCopyValueForEntitlement(v8, @"com.apple.private.cmcapture.frame-receiver", error);
    v11 = error[0];
    if (error[0])
    {
      if (dword_1ED8441D0)
      {
        v35 = 0;
        v34 = OS_LOG_TYPE_DEFAULT;
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v13 = v35;
        if (os_log_type_enabled(v12, v34))
        {
          v14 = v13;
        }

        else
        {
          v14 = v13 & 0xFFFFFFFE;
        }

        if (v14)
        {
          v27 = 136315651;
          v28 = "_cfs_connectionHasEntitlement";
          v29 = 1025;
          v30 = pid;
          v31 = 2112;
          v32 = error[0];
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v11 = error[0];
      }

      CFRelease(v11);
      v17 = 0;
      v15 = 0;
      error[0] = 0;
      if (!v10)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (!v10)
      {
        v15 = 0;
LABEL_22:
        CFRelease(v9);
        goto LABEL_23;
      }

      v16 = CFGetTypeID(v10);
      v17 = v16 == CFBooleanGetTypeID() && CFBooleanGetValue(v10) != 0;
    }

    CFRelease(v10);
    v15 = v17;
    goto LABEL_22;
  }

  return v5;
}

void __55__CMCaptureFrameSenderClient_initWithConnection_queue___block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = MEMORY[0x1B26F2E20](a2);
  if (v5 == MEMORY[0x1E69E9E98])
  {
    if (a2 == MEMORY[0x1E69E9E18])
    {
      xpc_connection_cancel(*(a1 + 32));
    }

    else
    {
      v7 = a2 != MEMORY[0x1E69E9E20] || WeakRetained == 0;
      if (!v7 && WeakRetained[28] == 1)
      {
        if (dword_1ED8441D0)
        {
          v12 = 0;
          v11 = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [WeakRetained _invalidate];
      }
    }
  }

  else if (v5 == MEMORY[0x1E69E9E80])
  {
    reply = xpc_dictionary_create_reply(a2);
    xpc_dictionary_set_int64(reply, "errorReturn", 0);
    xpc_connection_send_message(*(a1 + 32), reply);
    xpc_release(reply);
  }
}

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    xpc_connection_cancel(connection);
  }

  v4.receiver = self;
  v4.super_class = CMCaptureFrameSenderClient;
  [(CMCaptureFrameSenderClient *)&v4 dealloc];
}

- (void)_invalidate
{
  if (self->_connectionIsValid)
  {
    xpc_connection_cancel(self->_connection);
    self->_connectionIsValid = 0;
  }
}

- (int)sendXCPSampleBuffer:(id)a3
{
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "call", "frame-output-notification");
  if (a3)
  {
    xpc_dictionary_set_value(v5, "sample-buffer", a3);
  }

  v6 = xpc_connection_send_message_with_reply_sync(self->_connection, v5);
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x1B26F2E20]();
    int64 = 0;
    if (a3 && MEMORY[0x1E69E9E98] != MEMORY[0x1E69E9E80] && v8 == MEMORY[0x1E69E9E80])
    {
      int64 = xpc_dictionary_get_int64(v7, "errorReturn");
    }

    xpc_release(v7);
  }

  else
  {
    int64 = 0;
  }

  xpc_release(v5);
  return int64;
}

@end