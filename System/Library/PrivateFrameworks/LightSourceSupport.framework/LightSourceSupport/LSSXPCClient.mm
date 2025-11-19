@interface LSSXPCClient
- (id)setDelegate:(id *)result;
- (void)dealloc;
- (void)setOptions:(uint64_t)a1;
- (xpc_connection_t)initWithDelegate:(xpc_connection_t *)a1;
@end

@implementation LSSXPCClient

- (xpc_connection_t)initWithDelegate:(xpc_connection_t *)a1
{
  v3 = a2;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = LSSXPCClient;
    v4 = [(xpc_connection_t *)&v13 init];
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 3, v3);
      if (qword_280D2F5F0 == -1)
      {
        v5 = _MergedGlobals_13;
        if (!os_log_type_enabled(_MergedGlobals_13, OS_LOG_TYPE_DEBUG))
        {
LABEL_5:
          mach_service = xpc_connection_create_mach_service([@"com.apple.lightsourcesupport.lightstate" UTF8String], 0, 0);
          v7 = a1[1];
          a1[1] = mach_service;

          objc_initWeak(&location, a1);
          v8 = a1[1];
          v10[0] = MEMORY[0x277D85DD0];
          v10[1] = 3221225472;
          v10[2] = __33__LSSXPCClient_initWithDelegate___block_invoke;
          v10[3] = &unk_279812A60;
          objc_copyWeak(&v11, &location);
          xpc_connection_set_event_handler(v8, v10);
          xpc_connection_activate(a1[1]);
          objc_destroyWeak(&v11);
          objc_destroyWeak(&location);
          goto LABEL_6;
        }
      }

      else
      {
        [LSSXPCClient initWithDelegate:];
        v5 = _MergedGlobals_13;
        if (!os_log_type_enabled(_MergedGlobals_13, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_5;
        }
      }

      [LSSXPCClient initWithDelegate:v5];
      goto LABEL_5;
    }
  }

LABEL_6:

  return a1;
}

void __33__LSSXPCClient_initWithDelegate___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x277D863F0])
  {
    if (qword_280D2F5F0 == -1)
    {
      v12 = _MergedGlobals_13;
      if (!os_log_type_enabled(_MergedGlobals_13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }
    }

    else
    {
      __33__LSSXPCClient_initWithDelegate___block_invoke_cold_1();
      v12 = _MergedGlobals_13;
      if (!os_log_type_enabled(_MergedGlobals_13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }
    }

    __33__LSSXPCClient_initWithDelegate___block_invoke_cold_9(v12, v13, v14, v15, v16, v17, v18, v19);
    goto LABEL_18;
  }

  if (v3 == MEMORY[0x277D863F8])
  {
    if (qword_280D2F5F0 == -1)
    {
      v20 = _MergedGlobals_13;
      if (!os_log_type_enabled(_MergedGlobals_13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }
    }

    else
    {
      __33__LSSXPCClient_initWithDelegate___block_invoke_cold_1();
      v20 = _MergedGlobals_13;
      if (!os_log_type_enabled(_MergedGlobals_13, OS_LOG_TYPE_ERROR))
      {
LABEL_12:
        WeakRetained = objc_loadWeakRetained((a1 + 32));
        if (WeakRetained)
        {
LABEL_13:
          v29 = objc_loadWeakRetained(WeakRetained + 3);
LABEL_14:
          [v29 clientInvalidated:WeakRetained];

          goto LABEL_18;
        }

LABEL_26:
        v29 = 0;
        goto LABEL_14;
      }
    }

    __33__LSSXPCClient_initWithDelegate___block_invoke_cold_7(v20, v21, v22, v23, v24, v25, v26, v27);
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

  if (MEMORY[0x259C502B0](v3) == MEMORY[0x277D86468])
  {
    length = 0;
    data = xpc_dictionary_get_data(v4, "s", &length);
    if (length == 96)
    {
      __33__LSSXPCClient_initWithDelegate___block_invoke_cold_5(v40, data, a1);
      goto LABEL_18;
    }

    if (qword_280D2F5F0 == -1)
    {
      v31 = _MergedGlobals_13;
      if (!os_log_type_enabled(_MergedGlobals_13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }
    }

    else
    {
      [LSSXPCClient initWithDelegate:];
      v31 = _MergedGlobals_13;
      if (!os_log_type_enabled(_MergedGlobals_13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }
    }

    __33__LSSXPCClient_initWithDelegate___block_invoke_cold_4(&length, v31, v32, v33, v34, v35, v36, v37);
    goto LABEL_18;
  }

  if (qword_280D2F5F0 != -1)
  {
    __33__LSSXPCClient_initWithDelegate___block_invoke_cold_1();
    v5 = _MergedGlobals_13;
    if (!os_log_type_enabled(_MergedGlobals_13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    goto LABEL_6;
  }

  v5 = _MergedGlobals_13;
  if (os_log_type_enabled(_MergedGlobals_13, OS_LOG_TYPE_ERROR))
  {
LABEL_6:
    __33__LSSXPCClient_initWithDelegate___block_invoke_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
  }

LABEL_18:

  v38 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    xpc_connection_cancel(connection);
    v4 = self->_connection;
    self->_connection = 0;
  }

  v5.receiver = self;
  v5.super_class = LSSXPCClient;
  [(LSSXPCClient *)&v5 dealloc];
}

- (void)setOptions:(uint64_t)a1
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (*(a1 + 16) != a2)
    {
      *(a1 + 16) = a2;
      if (*(a1 + 8))
      {
        if (qword_280D2F5F0 != -1)
        {
          dispatch_once(&qword_280D2F5F0, &__block_literal_global_13);
        }

        v4 = _MergedGlobals_13;
        if (os_log_type_enabled(_MergedGlobals_13, OS_LOG_TYPE_DEFAULT))
        {
          v7[0] = 67109120;
          v7[1] = a2;
          _os_log_impl(&dword_255E8B000, v4, OS_LOG_TYPE_DEFAULT, "update options: %u", v7, 8u);
        }

        empty = xpc_dictionary_create_empty();
        xpc_dictionary_set_int64(empty, "options", *(a1 + 16));
        xpc_connection_send_message(*(a1 + 8), empty);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)setDelegate:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 3, a2);
  }

  return result;
}

void __33__LSSXPCClient_initWithDelegate___block_invoke_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5(&dword_255E8B000, a2, a3, "unknown message: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __33__LSSXPCClient_initWithDelegate___block_invoke_cold_4(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_5(&dword_255E8B000, a2, a3, "unexpected light state size: %lu", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

void __33__LSSXPCClient_initWithDelegate___block_invoke_cold_5(void *a1, const void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  memcpy(a1, a2, 0x60uLL);
  WeakRetained = objc_loadWeakRetained((a3 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(WeakRetained + 3);
  }

  else
  {
    v7 = 0;
  }

  memcpy(v9, a1, 0x60uLL);
  [v7 client:v6 recievedUpdate:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __33__LSSXPCClient_initWithDelegate___block_invoke_cold_7(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5(&dword_255E8B000, a1, a3, "The connection invalidated: %@.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __33__LSSXPCClient_initWithDelegate___block_invoke_cold_9(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5(&dword_255E8B000, a1, a3, "Connection interrupted: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end