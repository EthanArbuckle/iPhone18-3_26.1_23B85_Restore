@interface CDPDAuthObserver
- (CDPDAuthObserver)init;
- (void)eventReceived:(const char *)a3 eventInfo:(id)a4;
@end

@implementation CDPDAuthObserver

- (CDPDAuthObserver)init
{
  v6.receiver = self;
  v6.super_class = CDPDAuthObserver;
  v2 = [(CDPDAuthObserver *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    authListeners = v2->_authListeners;
    v2->_authListeners = v3;
  }

  return v2;
}

- (void)eventReceived:(const char *)a3 eventInfo:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = a3;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Received Auth Notification %s, with userInfo %@", buf, 0x16u);
  }

  if (!strcmp([*MEMORY[0x277CF0120] UTF8String], a3))
  {
    v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277CF0118]];
    v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277CF0128]];
    v10 = _CDPLogSystem();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 141558274;
        v18 = 1752392040;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&dword_24510B000, v11, OS_LOG_TYPE_DEFAULT, "Detected security level change for %{mask.hash}@", buf, 0x16u);
      }

      v12 = [MEMORY[0x277CFD4A8] contextForAccountWithAltDSID:v8];
      authListeners = self->_authListeners;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __44__CDPDAuthObserver_eventReceived_eventInfo___block_invoke;
      v15[3] = &unk_278E25488;
      v16 = v12;
      v11 = v12;
      [(NSMutableArray *)authListeners enumerateObjectsUsingBlock:v15];
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [CDPDAuthObserver eventReceived:a3 eventInfo:v11];
    }
  }

  else
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CDPDAuthObserver eventReceived:a3 eventInfo:v8];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)eventReceived:(uint64_t)a1 eventInfo:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = a1;
  _os_log_debug_impl(&dword_24510B000, a2, OS_LOG_TYPE_DEBUG, "Auth observer ignoring: %s", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)eventReceived:(uint64_t)a1 eventInfo:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = a1;
  v5 = 2112;
  v6 = 0;
  _os_log_debug_impl(&dword_24510B000, a2, OS_LOG_TYPE_DEBUG, "Auth observer ignoring %s, securityLevel %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end