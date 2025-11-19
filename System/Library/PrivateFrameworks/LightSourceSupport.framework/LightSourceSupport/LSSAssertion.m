@interface LSSAssertion
+ (id)acquire:(unsigned __int8)a3 reason:(id)a4;
- (void)dealloc;
- (void)invalidate;
- (xpc_connection_t)initWithType:(void *)a3 reason:;
@end

@implementation LSSAssertion

- (xpc_connection_t)initWithType:(void *)a3 reason:
{
  v5 = a3;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = LSSAssertion;
    a1 = [(xpc_connection_t *)&v19 init];
    if (a1)
    {
      if (qword_280D2F600 == -1)
      {
        v6 = _MergedGlobals_14;
        if (!os_log_type_enabled(_MergedGlobals_14, OS_LOG_TYPE_DEBUG))
        {
LABEL_5:
          mach_service = xpc_connection_create_mach_service([@"com.apple.lightsourcesupport.lightstate" UTF8String], 0, 0);
          v8 = a1[1];
          a1[1] = mach_service;

          objc_initWeak(&location, a1);
          v9 = a1[1];
          v13 = MEMORY[0x277D85DD0];
          v14 = 3221225472;
          v15 = __36__LSSAssertion_initWithType_reason___block_invoke;
          v16 = &unk_279812A60;
          objc_copyWeak(&v17, &location);
          xpc_connection_set_event_handler(v9, &v13);
          xpc_connection_activate(a1[1]);
          empty = xpc_dictionary_create_empty();
          xpc_dictionary_set_int64(empty, "assert", a2);
          v11 = v5;
          xpc_dictionary_set_string(empty, "reason", [v11 UTF8String]);
          xpc_connection_send_message(a1[1], empty);

          objc_destroyWeak(&v17);
          objc_destroyWeak(&location);
          goto LABEL_6;
        }
      }

      else
      {
        [LSSAssertion initWithType:reason:];
        v6 = _MergedGlobals_14;
        if (!os_log_type_enabled(_MergedGlobals_14, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_5;
        }
      }

      [LSSXPCClient initWithDelegate:v6];
      goto LABEL_5;
    }
  }

LABEL_6:

  return a1;
}

void __36__LSSAssertion_initWithType_reason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3 == MEMORY[0x277D863F0])
  {
    if (qword_280D2F600 == -1)
    {
      v12 = _MergedGlobals_14;
      if (!os_log_type_enabled(_MergedGlobals_14, OS_LOG_TYPE_ERROR))
      {
LABEL_8:
        v20 = [WeakRetained delegate];
        [v20 assertionConnectionInterrupted:WeakRetained];

        return;
      }
    }

    else
    {
      __36__LSSAssertion_initWithType_reason___block_invoke_cold_1();
      v12 = _MergedGlobals_14;
      if (!os_log_type_enabled(_MergedGlobals_14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }
    }

    __33__LSSXPCClient_initWithDelegate___block_invoke_cold_9(v12, v13, v14, v15, v16, v17, v18, v19);
    goto LABEL_8;
  }

  if (v3 == MEMORY[0x277D863F8])
  {
    if (qword_280D2F600 == -1)
    {
      v21 = _MergedGlobals_14;
      if (!os_log_type_enabled(_MergedGlobals_14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }
    }

    else
    {
      __36__LSSAssertion_initWithType_reason___block_invoke_cold_1();
      v21 = _MergedGlobals_14;
      if (!os_log_type_enabled(_MergedGlobals_14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }
    }

    __33__LSSXPCClient_initWithDelegate___block_invoke_cold_7(v21, v22, v23, v24, v25, v26, v27, v28);
  }

  else
  {
    if (qword_280D2F600 == -1)
    {
      v5 = _MergedGlobals_14;
      if (!os_log_type_enabled(_MergedGlobals_14, OS_LOG_TYPE_ERROR))
      {
LABEL_5:

        return;
      }
    }

    else
    {
      __36__LSSAssertion_initWithType_reason___block_invoke_cold_1();
      v5 = _MergedGlobals_14;
      if (!os_log_type_enabled(_MergedGlobals_14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }
    }

    __33__LSSXPCClient_initWithDelegate___block_invoke_cold_2(v3, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = LSSAssertion;
  [(LSSAssertion *)&v2 dealloc];
}

- (void)invalidate
{
  xpc_connection_cancel(self->_connection);
  connection = self->_connection;
  self->_connection = 0;
}

+ (id)acquire:(unsigned __int8)a3 reason:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = [[LSSAssertion alloc] initWithType:v5 reason:?];

  return v6;
}

@end