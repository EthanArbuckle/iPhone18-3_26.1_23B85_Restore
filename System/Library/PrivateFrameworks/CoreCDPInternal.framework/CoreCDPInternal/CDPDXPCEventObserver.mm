@interface CDPDXPCEventObserver
+ (id)sharedObserver;
- (void)_setupDarwinListener;
- (void)_setupDistributedListener;
- (void)start;
@end

@implementation CDPDXPCEventObserver

+ (id)sharedObserver
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__CDPDXPCEventObserver_sharedObserver__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedObserver_onceToken != -1)
  {
    dispatch_once(&sharedObserver_onceToken, block);
  }

  v2 = sharedObserver_observer;

  return v2;
}

uint64_t __38__CDPDXPCEventObserver_sharedObserver__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedObserver_observer;
  sharedObserver_observer = v1;

  v3 = [MEMORY[0x277CBEB18] array];
  v4 = *(sharedObserver_observer + 8);
  *(sharedObserver_observer + 8) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)start
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24510B000, v3, OS_LOG_TYPE_DEFAULT, "Starting to listen for XPC events...", v4, 2u);
  }

  [(CDPDXPCEventObserver *)self _setupDarwinListener];
  [(CDPDXPCEventObserver *)self _setupDistributedListener];
}

- (void)_setupDarwinListener
{
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __44__CDPDXPCEventObserver__setupDarwinListener__block_invoke;
  handler[3] = &unk_278E25AD8;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", MEMORY[0x277D85CD0], handler);
}

void __44__CDPDXPCEventObserver__setupDarwinListener__block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v15 = *MEMORY[0x277D85DE8];
  string = xpc_dictionary_get_string(xdict, *MEMORY[0x277D86430]);
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = string;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Darwin XPC event stream handler called: %s", buf, 0xCu);
  }

  out_token = -1;
  if (notify_register_check(string, &out_token))
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __44__CDPDXPCEventObserver__setupDarwinListener__block_invoke_cold_1(string, v5);
    }

LABEL_6:

    goto LABEL_7;
  }

  if (out_token == -1)
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __44__CDPDXPCEventObserver__setupDarwinListener__block_invoke_cold_3(string, v5);
    }

    goto LABEL_6;
  }

  state64 = 0;
  if (notify_get_state(out_token, &state64))
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __44__CDPDXPCEventObserver__setupDarwinListener__block_invoke_cold_2(v7);
    }
  }

  else
  {
    if (out_token != -1)
    {
      notify_cancel(out_token);
    }

    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = state64;
      _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "XPC event value is: %llu", buf, 0xCu);
    }

    v9 = *(*(a1 + 32) + 8);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44__CDPDXPCEventObserver__setupDarwinListener__block_invoke_2;
    v10[3] = &__block_descriptor_48_e15_v32__0_8Q16_B24l;
    v10[4] = string;
    v10[5] = state64;
    [v9 enumerateObjectsUsingBlock:v10];
  }

LABEL_7:
  v6 = *MEMORY[0x277D85DE8];
}

void __44__CDPDXPCEventObserver__setupDarwinListener__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __44__CDPDXPCEventObserver__setupDarwinListener__block_invoke_2_cold_1(v3, a1);
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 eventReceived:*(a1 + 32) eventValue:*(a1 + 40)];
  }
}

- (void)_setupDistributedListener
{
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __49__CDPDXPCEventObserver__setupDistributedListener__block_invoke;
  handler[3] = &unk_278E25AD8;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.distnoted.matching", MEMORY[0x277D85CD0], handler);
}

void __49__CDPDXPCEventObserver__setupDistributedListener__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D86430];
  v4 = a2;
  string = xpc_dictionary_get_string(v4, v3);
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = string;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Distributed XPC event stream handler called: %s", buf, 0xCu);
  }

  v7 = xpc_dictionary_get_value(v4, "UserInfo");

  if (v7)
  {
    v8 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v8 = 0;
  }

  v9 = _CDPLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v8;
    _os_log_impl(&dword_24510B000, v9, OS_LOG_TYPE_DEFAULT, "User Info: %@", buf, 0xCu);
  }

  v10 = *(*(a1 + 32) + 8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__CDPDXPCEventObserver__setupDistributedListener__block_invoke_8;
  v13[3] = &unk_278E25B00;
  v14 = v8;
  v15 = string;
  v11 = v8;
  [v10 enumerateObjectsUsingBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __49__CDPDXPCEventObserver__setupDistributedListener__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __49__CDPDXPCEventObserver__setupDistributedListener__block_invoke_8_cold_1(v3, a1);
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 eventReceived:*(a1 + 40) eventInfo:*(a1 + 32)];
  }
}

void __44__CDPDXPCEventObserver__setupDarwinListener__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = a1;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "Error during notify_register_check for event - %s", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __44__CDPDXPCEventObserver__setupDarwinListener__block_invoke_cold_3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = a1;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "Cannot get the state using invalid token for event - %s", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __44__CDPDXPCEventObserver__setupDarwinListener__block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_5(&dword_24510B000, v3, v4, "Notifying listener %@ of %s");
  v5 = *MEMORY[0x277D85DE8];
}

void __49__CDPDXPCEventObserver__setupDistributedListener__block_invoke_8_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 40);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_5(&dword_24510B000, v3, v4, "Notifying listener %@ of %s");
  v5 = *MEMORY[0x277D85DE8];
}

@end