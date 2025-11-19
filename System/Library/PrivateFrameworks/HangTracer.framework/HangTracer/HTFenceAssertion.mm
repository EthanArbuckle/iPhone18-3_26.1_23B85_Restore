@interface HTFenceAssertion
- (HTFenceAssertion)initWithFenceName:(unint64_t)a3;
- (void)blown;
- (void)invalidate;
@end

@implementation HTFenceAssertion

- (HTFenceAssertion)initWithFenceName:(unint64_t)a3
{
  v16.receiver = self;
  v16.super_class = HTFenceAssertion;
  v4 = [(HTFenceAssertion *)&v16 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  v4->__name = a3;
  v4->__startTime = mach_absolute_time();
  if (setupPrefs_onceToken != -1)
  {
    [HTFenceAssertion initWithFenceName:];
  }

  v6 = +[HTPrefs sharedPrefs];
  v7 = [v6 hangtracerDaemonEnabled];

  if ((v7 & 1) == 0)
  {
    v12 = shared_ht_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [HTFenceAssertion initWithFenceName:];
    }

    goto LABEL_12;
  }

  v8 = +[HTPrefs sharedPrefs];
  v9 = [v8 fenceTrackingEnabled];

  if ((v9 & 1) == 0)
  {
    v12 = shared_ht_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [HTFenceAssertion initWithFenceName:];
    }

LABEL_12:

    v11 = 0;
    goto LABEL_13;
  }

  connectToHangTracer();
  v10 = HTConnectionQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__HTFenceAssertion_initWithFenceName___block_invoke;
  block[3] = &unk_1E83021E8;
  v15 = v5;
  dispatch_async(v10, block);

LABEL_7:
  v11 = v5;
LABEL_13:

  return v11;
}

void __38__HTFenceAssertion_initWithFenceName___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (hangTracerConnection)
  {
    *keys = xmmword_1E83021C8;
    v7 = "startTime";
    values[0] = xpc_int64_create(6);
    values[1] = xpc_uint64_create(*(*(a1 + 32) + 8));
    values[2] = xpc_uint64_create(*(*(a1 + 32) + 16));
    v2 = xpc_dictionary_create(keys, values, 3uLL);
    xpc_connection_send_message(hangTracerConnection, v2);

    for (i = 2; i != -1; --i)
    {
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v3 = mach_absolute_time();
  v4 = HTConnectionQueue();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__HTFenceAssertion_invalidate__block_invoke;
  v5[3] = &unk_1E8302210;
  v5[4] = self;
  v5[5] = v3;
  dispatch_async(v4, v5);
}

void __30__HTFenceAssertion_invalidate__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (hangTracerConnection)
  {
    *keys = xmmword_1E8302230;
    v7 = *off_1E8302240;
    v5[0] = xpc_int64_create(7);
    v5[1] = xpc_uint64_create(*(*(a1 + 32) + 8));
    v5[2] = xpc_uint64_create(*(*(a1 + 32) + 16));
    v5[3] = xpc_uint64_create(*(a1 + 40));
    v2 = xpc_dictionary_create(keys, v5, 4uLL);
    xpc_connection_send_message(hangTracerConnection, v2);

    for (i = 3; i != -1; --i)
    {
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)blown
{
  v3 = mach_absolute_time();
  v4 = HTConnectionQueue();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__HTFenceAssertion_blown__block_invoke;
  v5[3] = &unk_1E8302210;
  v5[4] = self;
  v5[5] = v3;
  dispatch_async(v4, v5);
}

void __25__HTFenceAssertion_blown__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (hangTracerConnection)
  {
    *keys = xmmword_1E8302230;
    v7 = *off_1E8302240;
    v5[0] = xpc_int64_create(8);
    v5[1] = xpc_uint64_create(*(*(a1 + 32) + 8));
    v5[2] = xpc_uint64_create(*(*(a1 + 32) + 16));
    v5[3] = xpc_uint64_create(*(a1 + 40));
    v2 = xpc_dictionary_create(keys, v5, 4uLL);
    xpc_connection_send_message(hangTracerConnection, v2);

    for (i = 3; i != -1; --i)
    {
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end