@interface DNDXPCEventObserver
+ (void)_registerEventHandler:(id)handler forStream:(const char *)stream;
+ (void)_subscribeToStream:(const char *)stream clientIdentifier:(const char *)identifier;
+ (void)setFocusConfigurationStreamEventHandler:(id)handler;
@end

@implementation DNDXPCEventObserver

+ (void)setFocusConfigurationStreamEventHandler:(id)handler
{
  handlerCopy = handler;
  atomic_exchange(_hasRegisteredFocusConfigurationHandler, 1u);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__DNDXPCEventObserver_setFocusConfigurationStreamEventHandler___block_invoke;
  v6[3] = &unk_27843A970;
  v7 = handlerCopy;
  v4 = DNDFocusConfigurationEventStream;
  v5 = handlerCopy;
  [DNDXPCEventObserver _registerEventHandler:v6 forStream:v4];
}

uint64_t __63__DNDXPCEventObserver_setFocusConfigurationStreamEventHandler___block_invoke(uint64_t a1, xpc_object_t xdict)
{
  xpc_dictionary_get_string(xdict, DNDFocusConfigurationEventBundleIdentifierKey);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

+ (void)_registerEventHandler:(id)handler forStream:(const char *)stream
{
  handlerCopy = handler;
  Serial = BSDispatchQueueCreateSerial();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__DNDXPCEventObserver__registerEventHandler_forStream___block_invoke;
  v8[3] = &unk_27843A998;
  v9 = handlerCopy;
  streamCopy = stream;
  v7 = handlerCopy;
  xpc_set_event_stream_handler(stream, Serial, v8);
}

void __55__DNDXPCEventObserver__registerEventHandler_forStream___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DNDLogXPCEventObserver;
  if (os_log_type_enabled(DNDLogXPCEventObserver, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 40);
    v12 = 136315138;
    v13 = v5;
    _os_log_impl(&dword_22002F000, v4, OS_LOG_TYPE_INFO, "Received XPC event for %s", &v12, 0xCu);
  }

  v6 = MEMORY[0x223D764A0](v3);
  if (v6 == MEMORY[0x277D86468])
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = v6;
    v8 = MEMORY[0x277D86480];
    v9 = DNDLogXPCEventObserver;
    v10 = os_log_type_enabled(DNDLogXPCEventObserver, OS_LOG_TYPE_ERROR);
    if (v7 == v8)
    {
      if (v10)
      {
        __55__DNDXPCEventObserver__registerEventHandler_forStream___block_invoke_cold_2(v9, v3);
      }
    }

    else if (v10)
    {
      __55__DNDXPCEventObserver__registerEventHandler_forStream___block_invoke_cold_1(v9, v7);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)_subscribeToStream:(const char *)stream clientIdentifier:(const char *)identifier
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_set_event();
}

void __55__DNDXPCEventObserver__registerEventHandler_forStream___block_invoke_cold_1(void *a1, const _xpc_type_s *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v5 = 136315138;
  name = xpc_type_get_name(a2);
  _os_log_error_impl(&dword_22002F000, v3, OS_LOG_TYPE_ERROR, "XPC events subscriber received event of unexpected type %s", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __55__DNDXPCEventObserver__registerEventHandler_forStream___block_invoke_cold_2(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D86400];
  v4 = a1;
  v6 = 136315138;
  string = xpc_dictionary_get_string(a2, v3);
  _os_log_error_impl(&dword_22002F000, v4, OS_LOG_TYPE_ERROR, "XPC events subscriber received error: %s", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end