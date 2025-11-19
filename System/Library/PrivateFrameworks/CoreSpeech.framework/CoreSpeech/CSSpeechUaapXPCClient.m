@interface CSSpeechUaapXPCClient
- (CSSpeechUaapXPCClient)init;
- (void)_handleConnectionError:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)registerDatapackUpdate;
- (void)registerMultilingualUaapApp:(id)a3 withAssetFiles:(id)a4 completion:(id)a5;
- (void)registerUaapApp:(id)a3 forLocale:(id)a4 withAssetFiles:(id)a5 completion:(id)a6;
- (void)registerUaapApp:(id)a3 withAssetFiles:(id)a4 completion:(id)a5;
@end

@implementation CSSpeechUaapXPCClient

- (void)dealloc
{
  [(CSSpeechUaapXPCClient *)self invalidate];
  v3.receiver = self;
  v3.super_class = CSSpeechUaapXPCClient;
  [(CSSpeechUaapXPCClient *)&v3 dealloc];
}

- (void)invalidate
{
  v9 = *MEMORY[0x277D85DE8];
  connection = self->_connection;
  if (connection)
  {
    v4 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[CSSpeechUaapXPCClient invalidate]";
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s Invalidating CSSpeechUaapXPCClient", &v7, 0xCu);
      connection = self->_connection;
    }

    xpc_connection_cancel(connection);
    v5 = self->_connection;
    self->_connection = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)registerDatapackUpdate
{
  keys[1] = *MEMORY[0x277D85DE8];
  keys[0] = "messageType";
  values = xpc_uint64_create(4uLL);
  v3 = xpc_dictionary_create(keys, &values, 1uLL);
  xpc_connection_send_message(self->_connection, v3);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)registerMultilingualUaapApp:(id)a3 withAssetFiles:(id)a4 completion:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  empty = xpc_dictionary_create_empty();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __79__CSSpeechUaapXPCClient_registerMultilingualUaapApp_withAssetFiles_completion___block_invoke;
  v24[3] = &unk_2784C4A28;
  v12 = empty;
  v25 = v12;
  [v9 enumerateKeysAndObjectsUsingBlock:v24];
  *keys = xmmword_2784C4A48;
  v13 = v8;
  values[0] = xpc_string_create([v8 UTF8String]);
  v14 = v12;
  values[1] = v14;
  *v27 = xmmword_2784C4A58;
  v26[0] = xpc_uint64_create(3uLL);
  v26[1] = xpc_dictionary_create(keys, values, 2uLL);
  v15 = xpc_dictionary_create(v27, v26, 2uLL);
  connection = self->_connection;
  queue = self->_queue;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __79__CSSpeechUaapXPCClient_registerMultilingualUaapApp_withAssetFiles_completion___block_invoke_3;
  v22[3] = &unk_2784C6A48;
  v18 = v10;
  v23 = v18;
  xpc_connection_send_message_with_reply(connection, v15, queue, v22);

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __79__CSSpeechUaapXPCClient_registerMultilingualUaapApp_withAssetFiles_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  empty = xpc_array_create_empty();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__CSSpeechUaapXPCClient_registerMultilingualUaapApp_withAssetFiles_completion___block_invoke_2;
  v11[3] = &unk_2784C49E8;
  v12 = empty;
  v8 = empty;
  [v5 enumerateObjectsUsingBlock:v11];

  v9 = *(a1 + 32);
  v10 = [v6 UTF8String];

  xpc_dictionary_set_value(v9, v10, v8);
}

void __79__CSSpeechUaapXPCClient_registerMultilingualUaapApp_withAssetFiles_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  string = xpc_dictionary_get_string(v3, "errorDomain");
  if (string)
  {
    int64 = xpc_dictionary_get_int64(v3, "errorCode");
    v6 = xpc_dictionary_get_string(v3, "errorMessage");
    v7 = MEMORY[0x277CCA9B8];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    v13 = *MEMORY[0x277CCA450];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    v14[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    string = [v7 errorWithDomain:v8 code:int64 userInfo:v10];
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, string);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __79__CSSpeechUaapXPCClient_registerMultilingualUaapApp_withAssetFiles_completion___block_invoke_2(uint64_t a1, id a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = xpc_string_create([a2 UTF8String]);
  xpc_array_append_value(v3, v5);
}

- (void)registerUaapApp:(id)a3 forLocale:(id)a4 withAssetFiles:(id)a5 completion:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  empty = xpc_array_create_empty();
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __77__CSSpeechUaapXPCClient_registerUaapApp_forLocale_withAssetFiles_completion___block_invoke;
  v28[3] = &unk_2784C49E8;
  v15 = empty;
  v29 = v15;
  [v12 enumerateObjectsUsingBlock:v28];
  *keys = xmmword_2784C4A08;
  v34 = "locale";
  v16 = v10;
  values[0] = xpc_string_create([v10 UTF8String]);
  v17 = v15;
  values[1] = v17;
  v18 = v11;
  values[2] = xpc_string_create([v11 UTF8String]);
  *v31 = xmmword_2784C4A58;
  v30[0] = xpc_uint64_create(2uLL);
  v30[1] = xpc_dictionary_create(keys, values, 3uLL);
  v19 = xpc_dictionary_create(v31, v30, 2uLL);
  connection = self->_connection;
  queue = self->_queue;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __77__CSSpeechUaapXPCClient_registerUaapApp_forLocale_withAssetFiles_completion___block_invoke_2;
  v26[3] = &unk_2784C6A48;
  v22 = v13;
  v27 = v22;
  xpc_connection_send_message_with_reply(connection, v19, queue, v26);

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 2; j != -1; --j)
  {
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __77__CSSpeechUaapXPCClient_registerUaapApp_forLocale_withAssetFiles_completion___block_invoke(uint64_t a1, id a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = xpc_string_create([a2 UTF8String]);
  xpc_array_append_value(v3, v5);
}

void __77__CSSpeechUaapXPCClient_registerUaapApp_forLocale_withAssetFiles_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  string = xpc_dictionary_get_string(v3, "errorDomain");
  if (string)
  {
    int64 = xpc_dictionary_get_int64(v3, "errorCode");
    v6 = xpc_dictionary_get_string(v3, "errorMessage");
    v7 = MEMORY[0x277CCA9B8];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    v13 = *MEMORY[0x277CCA450];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    v14[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    string = [v7 errorWithDomain:v8 code:int64 userInfo:v10];
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, string);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)registerUaapApp:(id)a3 withAssetFiles:(id)a4 completion:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  empty = xpc_array_create_empty();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __67__CSSpeechUaapXPCClient_registerUaapApp_withAssetFiles_completion___block_invoke;
  v24[3] = &unk_2784C49E8;
  v12 = empty;
  v25 = v12;
  [v9 enumerateObjectsUsingBlock:v24];
  *keys = xmmword_2784C4A48;
  v13 = v8;
  values[0] = xpc_string_create([v8 UTF8String]);
  v14 = v12;
  values[1] = v14;
  *v27 = xmmword_2784C4A58;
  v26[0] = xpc_uint64_create(1uLL);
  v26[1] = xpc_dictionary_create(keys, values, 2uLL);
  v15 = xpc_dictionary_create(v27, v26, 2uLL);
  connection = self->_connection;
  queue = self->_queue;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __67__CSSpeechUaapXPCClient_registerUaapApp_withAssetFiles_completion___block_invoke_2;
  v22[3] = &unk_2784C6A48;
  v18 = v10;
  v23 = v18;
  xpc_connection_send_message_with_reply(connection, v15, queue, v22);

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __67__CSSpeechUaapXPCClient_registerUaapApp_withAssetFiles_completion___block_invoke(uint64_t a1, id a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = xpc_string_create([a2 UTF8String]);
  xpc_array_append_value(v3, v5);
}

void __67__CSSpeechUaapXPCClient_registerUaapApp_withAssetFiles_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  string = xpc_dictionary_get_string(v3, "errorDomain");
  if (string)
  {
    int64 = xpc_dictionary_get_int64(v3, "errorCode");
    v6 = xpc_dictionary_get_string(v3, "errorMessage");
    v7 = MEMORY[0x277CCA9B8];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    v13 = *MEMORY[0x277CCA450];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    v14[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    string = [v7 errorWithDomain:v8 code:int64 userInfo:v10];
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, string);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleConnectionError:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = MEMORY[0x277D863F8];
    v5 = *MEMORY[0x277D015D8];
    v6 = os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR);
    if (v3 == v4 || v3 == MEMORY[0x277D863F0])
    {
      if (v6)
      {
        v11 = 136315138;
        v12 = "[CSSpeechUaapXPCClient _handleConnectionError:]";
        _os_log_error_impl(&dword_222E4D000, v5, OS_LOG_TYPE_ERROR, "%s CSSpeechUaapXPCClient listener disconnected", &v11, 0xCu);
      }
    }

    else if (v6)
    {
      v9 = *MEMORY[0x277D86400];
      v10 = v5;
      v11 = 136315394;
      v12 = "[CSSpeechUaapXPCClient _handleConnectionError:]";
      v13 = 2080;
      string = xpc_dictionary_get_string(v3, v9);
      _os_log_error_impl(&dword_222E4D000, v10, OS_LOG_TYPE_ERROR, "%s CSSpeechUaapXPCConnection error: %s", &v11, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (CSSpeechUaapXPCClient)init
{
  v12.receiver = self;
  v12.super_class = CSSpeechUaapXPCClient;
  v2 = [(CSSpeechUaapXPCClient *)&v12 init];
  if (v2)
  {
    CSLogInitIfNeeded();
    mach_service = xpc_connection_create_mach_service("com.apple.corespeech.corespeechd.uaapservice", 0, 0);
    v4 = *(v2 + 1);
    *(v2 + 1) = mach_service;

    v5 = dispatch_queue_create("CSSpeechUaapXPCClient", 0);
    v6 = *(v2 + 2);
    *(v2 + 2) = v5;

    xpc_connection_set_target_queue(*(v2 + 1), *(v2 + 2));
    objc_initWeak(&location, v2);
    v7 = *(v2 + 1);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __29__CSSpeechUaapXPCClient_init__block_invoke;
    v9[3] = &unk_2784C69C0;
    objc_copyWeak(&v10, &location);
    xpc_connection_set_event_handler(v7, v9);
    xpc_connection_activate(*(v2 + 1));
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __29__CSSpeechUaapXPCClient_init__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (MEMORY[0x223DD2E40](v3) == MEMORY[0x277D86480])
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      [WeakRetained _handleConnectionError:v4];

      goto LABEL_9;
    }

    v5 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[CSSpeechUaapXPCClient init]_block_invoke";
      v6 = "%s CSSpeechUaapXPCClient got an event it can't handle";
LABEL_7:
      _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, v6, &v9, 0xCu);
    }
  }

  else
  {
    v5 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[CSSpeechUaapXPCClient init]_block_invoke";
      v6 = "%s CSSpeechUaapXPCClient received an empty connection event";
      goto LABEL_7;
    }
  }

LABEL_9:

  v8 = *MEMORY[0x277D85DE8];
}

@end