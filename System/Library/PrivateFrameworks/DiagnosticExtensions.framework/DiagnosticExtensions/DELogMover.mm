@interface DELogMover
+ (void)moveSystemLogsWithExtensions:(id)extensions;
- (BOOL)sendRequestReturningBooleanResponse:(id)response withSuccessKey:(char *)key;
- (DELogMover)initWithServiceName:(id)name;
@end

@implementation DELogMover

- (DELogMover)initWithServiceName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = DELogMover;
  v5 = [(DELogMover *)&v10 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    serviceName = v5->_serviceName;
    v5->_serviceName = v6;

    conn = v5->_conn;
    v5->_conn = 0;
  }

  return v5;
}

- (BOOL)sendRequestReturningBooleanResponse:(id)response withSuccessKey:(char *)key
{
  responseCopy = response;
  conn = self->_conn;
  if (!conn)
  {
    mach_service = xpc_connection_create_mach_service([(NSString *)self->_serviceName UTF8String], 0, 0);
    v12 = self->_conn;
    self->_conn = mach_service;

    if (!self->_conn)
    {
      v19 = +[DELogging fwHandle];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [DELogMover sendRequestReturningBooleanResponse:v19 withSuccessKey:?];
      }

      value = 0;
      goto LABEL_19;
    }

    v13 = [MEMORY[0x277CCACA8] stringWithString:self->_serviceName];
    v14 = self->_conn;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __65__DELogMover_sendRequestReturningBooleanResponse_withSuccessKey___block_invoke;
    handler[3] = &unk_278F63AB0;
    v23 = v13;
    v15 = v13;
    xpc_connection_set_event_handler(v14, handler);
    xpc_connection_resume(self->_conn);

    conn = self->_conn;
    if (!conn)
    {
      value = 0;
      goto LABEL_20;
    }
  }

  v8 = xpc_connection_send_message_with_reply_sync(conn, responseCopy);
  v9 = MEMORY[0x24C1E4A40]();
  if (v9 == MEMORY[0x277D86480])
  {
    v16 = +[DELogging fwHandle];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [DELogMover sendRequestReturningBooleanResponse:v8 withSuccessKey:v16];
    }
  }

  else
  {
    if (v9 != MEMORY[0x277D86468])
    {
      value = 0;
      goto LABEL_14;
    }

    v17 = xpc_dictionary_get_value(v8, key);
    v16 = v17;
    if (v17)
    {
      value = xpc_BOOL_get_value(v17);
      goto LABEL_13;
    }

    v21 = +[DELogging fwHandle];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [DELogMover sendRequestReturningBooleanResponse:v21 withSuccessKey:?];
    }
  }

  value = 0;
LABEL_13:

LABEL_14:
  v18 = self->_conn;
  if (v18)
  {
    xpc_connection_cancel(v18);
    v19 = self->_conn;
    self->_conn = 0;
LABEL_19:
  }

LABEL_20:

  return value;
}

void __65__DELogMover_sendRequestReturningBooleanResponse_withSuccessKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x24C1E4A40]() == MEMORY[0x277D86480] && v3 != MEMORY[0x277D863F8] && v3 != MEMORY[0x277D863F0])
  {
    v6 = +[DELogging fwHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __65__DELogMover_sendRequestReturningBooleanResponse_withSuccessKey___block_invoke_cold_1(a1, v3, v6);
    }
  }
}

+ (void)moveSystemLogsWithExtensions:(id)extensions
{
  extensionsCopy = extensions;
  if (extensionsCopy)
  {
    v4 = extensionsCopy;
  }

  else
  {
    v4 = &unk_285B71010;
  }

  v5 = extensionsCopy;
  v6 = dispatch_queue_create("com.apple.DiagnosticExtensions.log_mover", 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__DELogMover_moveSystemLogsWithExtensions___block_invoke;
  block[3] = &unk_278F63768;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, block);
}

void __43__DELogMover_moveSystemLogsWithExtensions___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [[DELogMover alloc] initWithServiceName:@"com.apple.crash_mover"];
  v3 = *(a1 + 32);
  v7 = @"Extensions";
  v8[0] = v3;
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = _CFXPCCreateXPCObjectFromCFObject();
  if (![(DELogMover *)v2 sendRequestReturningBooleanResponse:v4 withSuccessKey:"Success"])
  {
    v5 = +[DELogging fwHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __43__DELogMover_moveSystemLogsWithExtensions___block_invoke_cold_1(v5);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendRequestReturningBooleanResponse:(void *)a1 withSuccessKey:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  string = xpc_dictionary_get_string(a1, *MEMORY[0x277D86400]);
  v5 = 136315138;
  v6 = string;
  _os_log_error_impl(&dword_248AB3000, a2, OS_LOG_TYPE_ERROR, "Error in response from XPC: %s", &v5, 0xCu);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)sendRequestReturningBooleanResponse:(uint64_t *)a1 withSuccessKey:(NSObject *)a2 .cold.3(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_248AB3000, a2, OS_LOG_TYPE_ERROR, "Failed to create client connection to service '%@'", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __65__DELogMover_sendRequestReturningBooleanResponse_withSuccessKey___block_invoke_cold_1(uint64_t a1, xpc_object_t xdict, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  string = xpc_dictionary_get_string(xdict, *MEMORY[0x277D86400]);
  v7 = 138412546;
  v8 = v4;
  v9 = 2080;
  v10 = string;
  _os_log_error_impl(&dword_248AB3000, a3, OS_LOG_TYPE_ERROR, "Got unexpected XPC error on connection to service '%@': %s.", &v7, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __43__DELogMover_moveSystemLogsWithExtensions___block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = 0;
  _os_log_error_impl(&dword_248AB3000, log, OS_LOG_TYPE_ERROR, "Moving logs failed %d", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

@end