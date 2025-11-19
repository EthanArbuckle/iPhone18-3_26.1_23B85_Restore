@interface CSVoiceTriggerXPCClient
- (CSVoiceTriggerXPCClient)init;
- (CSVoiceTriggerXPCClientDelegate)delegate;
- (id)fetchVoiceTriggerStats;
- (void)_handleListenerDisconnectedError:(id)a3;
- (void)_handleListenerError:(id)a3;
- (void)_handleListenerEvent:(id)a3;
- (void)_sendMessage:(id)a3 connection:(id)a4 completion:(id)a5;
- (void)connect;
- (void)dealloc;
- (void)enableVoiceTrigger:(BOOL)a3 withAssertion:(id)a4 timestamp:(double)a5;
- (void)notifyVoiceTriggeredSiriSessionCancelled;
- (void)setPhraseSpotterBypassing:(BOOL)a3 timeout:(double)a4;
- (void)setRaiseToSpeakBypassing:(BOOL)a3 timeout:(double)a4;
@end

@implementation CSVoiceTriggerXPCClient

- (CSVoiceTriggerXPCClient)init
{
  v6.receiver = self;
  v6.super_class = CSVoiceTriggerXPCClient;
  v2 = [(CSVoiceTriggerXPCClient *)&v6 init];
  if (v2)
  {
    CSLogInitIfNeeded();
    mach_service = xpc_connection_create_mach_service("com.apple.corespeech.voicetriggerservice", 0, 0);
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = mach_service;
  }

  return v2;
}

- (void)connect
{
  objc_initWeak(&location, self);
  xpcConnection = self->_xpcConnection;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__CSVoiceTriggerXPCClient_connect__block_invoke;
  v4[3] = &unk_2784C69C0;
  objc_copyWeak(&v5, &location);
  xpc_connection_set_event_handler(xpcConnection, v4);
  xpc_connection_activate(self->_xpcConnection);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    v4 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[CSVoiceTriggerXPCClient dealloc]";
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s disconnect VoiceTriggerXPCClient", buf, 0xCu);
      xpcConnection = self->_xpcConnection;
    }

    xpc_connection_cancel(xpcConnection);
    v5 = self->_xpcConnection;
    self->_xpcConnection = 0;
  }

  v7.receiver = self;
  v7.super_class = CSVoiceTriggerXPCClient;
  [(CSVoiceTriggerXPCClient *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

void __34__CSVoiceTriggerXPCClient_connect__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleListenerEvent:v3];
}

- (CSVoiceTriggerXPCClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_sendMessage:(id)a3 connection:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7 && v8)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __62__CSVoiceTriggerXPCClient__sendMessage_connection_completion___block_invoke;
    handler[3] = &unk_2784C6A48;
    v12 = v9;
    xpc_connection_send_message_with_reply(v8, v7, 0, handler);
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, 0, 0);
  }
}

void __62__CSVoiceTriggerXPCClient__sendMessage_connection_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = xpc_dictionary_get_BOOL(v3, "result");
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v4, 0);
  }
}

- (id)fetchVoiceTriggerStats
{
  keys[1] = *MEMORY[0x277D85DE8];
  keys[0] = "type";
  values = xpc_int64_create(5);
  v3 = xpc_dictionary_create(keys, &values, 1uLL);
  *v19 = xmmword_2784C6A30;
  v18[0] = xpc_int64_create(2);
  v4 = v3;
  v18[1] = v4;
  v5 = xpc_dictionary_create(v19, v18, 2uLL);
  v6 = xpc_connection_send_message_with_reply_sync(self->_xpcConnection, v5);
  v7 = v6;
  if (v6)
  {
    if (xpc_dictionary_get_BOOL(v6, "result"))
    {
      v8 = xpc_dictionary_get_dictionary(v7, "triggerStats");
      if (v8)
      {
        v9 = objc_alloc(MEMORY[0x277CBEAC0]);
        v10 = [v9 _cs_initWithXPCObject:v8];
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_10;
    }

    v11 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      v16 = 136315138;
      v17 = "[CSVoiceTriggerXPCClient fetchVoiceTriggerStats]";
      _os_log_error_impl(&dword_222E4D000, v11, OS_LOG_TYPE_ERROR, "%s ERR: failed to get response !", &v16, 0xCu);
    }
  }

  v10 = 0;
LABEL_10:
  v12 = v10;

  for (i = 1; i != -1; --i)
  {
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)setRaiseToSpeakBypassing:(BOOL)a3 timeout:(double)a4
{
  v18 = *MEMORY[0x277D85DE8];
  *keys = xmmword_2784C6A18;
  v17 = "bypassTimeout";
  values[0] = xpc_int64_create(4);
  values[1] = xpc_BOOL_create(a3);
  values[2] = xpc_double_create(a4);
  v7 = xpc_dictionary_create(keys, values, 3uLL);
  *v14 = xmmword_2784C6A30;
  v13[0] = xpc_int64_create(2);
  v8 = v7;
  v13[1] = v8;
  v9 = xpc_dictionary_create(v14, v13, 2uLL);
  [(CSVoiceTriggerXPCClient *)self _sendMessage:v9 connection:self->_xpcConnection completion:0, v13[0]];

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 2; j != -1; --j)
  {
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)notifyVoiceTriggeredSiriSessionCancelled
{
  keys[1] = *MEMORY[0x277D85DE8];
  keys[0] = "type";
  values = xpc_int64_create(2);
  v3 = xpc_dictionary_create(keys, &values, 1uLL);
  *v9 = xmmword_2784C6A30;
  v8[0] = xpc_int64_create(2);
  v4 = v3;
  v8[1] = v4;
  v5 = xpc_dictionary_create(v9, v8, 2uLL);
  [(CSVoiceTriggerXPCClient *)self _sendMessage:v5 connection:self->_xpcConnection completion:0, v8[0]];

  for (i = 1; i != -1; --i)
  {
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setPhraseSpotterBypassing:(BOOL)a3 timeout:(double)a4
{
  v18 = *MEMORY[0x277D85DE8];
  *keys = xmmword_2784C6A00;
  v17 = "bypassTimeout";
  values[0] = xpc_int64_create(1);
  values[1] = xpc_BOOL_create(a3);
  values[2] = xpc_double_create(a4);
  v7 = xpc_dictionary_create(keys, values, 3uLL);
  *v14 = xmmword_2784C6A30;
  v13[0] = xpc_int64_create(2);
  v8 = v7;
  v13[1] = v8;
  v9 = xpc_dictionary_create(v14, v13, 2uLL);
  [(CSVoiceTriggerXPCClient *)self _sendMessage:v9 connection:self->_xpcConnection completion:0, v13[0]];

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 2; j != -1; --j)
  {
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)enableVoiceTrigger:(BOOL)a3 withAssertion:(id)a4 timestamp:(double)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a4;
  *keys = xmmword_2784C69E0;
  v19 = *&off_2784C69F0;
  values[0] = xpc_int64_create(3);
  values[1] = xpc_BOOL_create(a3);
  values[2] = xpc_string_create([v8 UTF8String]);
  values[3] = xpc_double_create(a5);
  v9 = xpc_dictionary_create(keys, values, 4uLL);
  *v16 = xmmword_2784C6A30;
  v15[0] = xpc_int64_create(2);
  v10 = v9;
  v15[1] = v10;
  v11 = xpc_dictionary_create(v16, v15, 2uLL);
  [(CSVoiceTriggerXPCClient *)self _sendMessage:v11 connection:self->_xpcConnection completion:0, v15[0]];

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 3; j != -1; --j)
  {
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleListenerDisconnectedError:(id)a3
{
  v4 = [(CSVoiceTriggerXPCClient *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained voiceTriggerXPCClient:self didDisconnect:1];
  }
}

- (void)_handleListenerError:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v10 = *MEMORY[0x277D015D8];
    if (!os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v13 = 136315394;
    v14 = "[CSVoiceTriggerXPCClient _handleListenerError:]";
    v15 = 2050;
    v16 = 0;
    v8 = "%s cannot handle error : error = %{public}p";
    goto LABEL_15;
  }

  if (v4 != MEMORY[0x277D863F8] && v4 != MEMORY[0x277D863F0])
  {
    string = xpc_dictionary_get_string(v4, *MEMORY[0x277D86400]);
    v10 = *MEMORY[0x277D015D8];
    if (!os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v13 = 136315394;
    v14 = "[CSVoiceTriggerXPCClient _handleListenerError:]";
    v15 = 2082;
    v16 = string;
    v8 = "%s connection error: %{public}s";
LABEL_15:
    _os_log_error_impl(&dword_222E4D000, v10, OS_LOG_TYPE_ERROR, v8, &v13, 0x16u);
    goto LABEL_13;
  }

  v7 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[CSVoiceTriggerXPCClient _handleListenerError:]";
    _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_DEFAULT, "%s Listener connection disconnected", &v13, 0xCu);
  }

  [(CSVoiceTriggerXPCClient *)self _handleListenerDisconnectedError:v5];
LABEL_13:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleListenerEvent:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (MEMORY[0x223DD2E40](v4) == MEMORY[0x277D86480])
    {
      [(CSVoiceTriggerXPCClient *)self _handleListenerError:v5];
      goto LABEL_9;
    }

    v6 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[CSVoiceTriggerXPCClient _handleListenerEvent:]";
      v7 = "%s ignore unknown types of message ";
      v8 = v6;
      v9 = 12;
LABEL_7:
      _os_log_error_impl(&dword_222E4D000, v8, OS_LOG_TYPE_ERROR, v7, &v12, v9);
    }
  }

  else
  {
    v10 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[CSVoiceTriggerXPCClient _handleListenerEvent:]";
      v14 = 2050;
      v15 = 0;
      v7 = "%s cannot handle event : event = %{public}p";
      v8 = v10;
      v9 = 22;
      goto LABEL_7;
    }
  }

LABEL_9:

  v11 = *MEMORY[0x277D85DE8];
}

@end