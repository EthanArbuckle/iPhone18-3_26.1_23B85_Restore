@interface OTATaskingAgentClient
+ (id)sharedClient;
- (BOOL)deletePreference:(id)a3 forUser:(id)a4 inDomain:(id)a5;
- (BOOL)setPreference:(id)a3 forUser:(id)a4 inDomain:(id)a5 toValue:(void *)a6;
- (OTATaskingAgentClient)init;
- (id)awdKey;
- (id)crashreporterKey;
- (unsigned)uidForUser:(id)a3;
@end

@implementation OTATaskingAgentClient

+ (id)sharedClient
{
  if (sharedClient_onceToken != -1)
  {
    +[OTATaskingAgentClient sharedClient];
  }

  v3 = sharedClient__sharedInstance;

  return v3;
}

uint64_t __37__OTATaskingAgentClient_sharedClient__block_invoke()
{
  sharedClient__sharedInstance = objc_alloc_init(OTATaskingAgentClient);

  return MEMORY[0x2821F96F8]();
}

- (OTATaskingAgentClient)init
{
  v9.receiver = self;
  v9.super_class = OTATaskingAgentClient;
  v2 = [(OTATaskingAgentClient *)&v9 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.OTATaskingAgent" options:4096];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2859EDC80];
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->_connection resume];
    v6 = [(NSXPCConnection *)v2->_connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_57];
    synchRemoteObjectProxy = v2->_synchRemoteObjectProxy;
    v2->_synchRemoteObjectProxy = v6;
  }

  return v2;
}

void __29__OTATaskingAgentClient_init__block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Connection error to OTATaskingAgent. Error: %@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (BOOL)setPreference:(id)a3 forUser:(id)a4 inDomain:(id)a5 toValue:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v13 = [(OTATaskingAgentClient *)self uidForUser:v11];
  if (v13)
  {
    synchRemoteObjectProxy = self->_synchRemoteObjectProxy;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __64__OTATaskingAgentClient_setPreference_forUser_inDomain_toValue___block_invoke;
    v17[3] = &unk_278EDF500;
    v17[4] = &v18;
    [(OTATaskingAgent *)synchRemoteObjectProxy setPreferenceForDomain:v12 preference:v10 value:a6 UID:v13 withReply:v17];
  }

  v15 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return v15;
}

- (BOOL)deletePreference:(id)a3 forUser:(id)a4 inDomain:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v11 = [(OTATaskingAgentClient *)self uidForUser:v9];
  if (v11)
  {
    synchRemoteObjectProxy = self->_synchRemoteObjectProxy;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __59__OTATaskingAgentClient_deletePreference_forUser_inDomain___block_invoke;
    v15[3] = &unk_278EDF500;
    v15[4] = &v16;
    [(OTATaskingAgent *)synchRemoteObjectProxy deletePreferenceForDomain:v10 preference:v8 UID:v11 withReply:v15];
  }

  v13 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v13;
}

- (id)crashreporterKey
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  synchRemoteObjectProxy = self->_synchRemoteObjectProxy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__OTATaskingAgentClient_crashreporterKey__block_invoke;
  v7[3] = &unk_278EDF528;
  v7[4] = &v8;
  [(OTATaskingAgent *)synchRemoteObjectProxy crashreporterKeyWithReply:v7];
  if ([v9[5] isEqualToString:@"<no_entitlement>"])
  {
    v3 = v9[5];
    v9[5] = 0;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Error while retrieving crashreporterKey. Does this process have the entitlement - com.apple.osanalytics.otatasking-service-access ?", v6, 2u);
    }

    if (crashreporterKey_onceToken != -1)
    {
      [OTATaskingAgentClient crashreporterKey];
    }
  }

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __41__OTATaskingAgentClient_crashreporterKey__block_invoke_63()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    __41__OTATaskingAgentClient_crashreporterKey__block_invoke_63_cold_1();
  }
}

- (id)awdKey
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  synchRemoteObjectProxy = self->_synchRemoteObjectProxy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__OTATaskingAgentClient_awdKey__block_invoke;
  v7[3] = &unk_278EDF528;
  v7[4] = &v8;
  [(OTATaskingAgent *)synchRemoteObjectProxy awdKeyWithReply:v7];
  if ([v9[5] isEqualToString:@"<no_entitlement>"])
  {
    v3 = v9[5];
    v9[5] = 0;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Error while retrieving awdKey. Does this process have the entitlement - com.apple.osanalytics.otatasking-service-access ?", v6, 2u);
    }

    if (awdKey_onceToken != -1)
    {
      [OTATaskingAgentClient awdKey];
    }
  }

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __31__OTATaskingAgentClient_awdKey__block_invoke_66()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    __41__OTATaskingAgentClient_crashreporterKey__block_invoke_63_cold_1();
  }
}

- (unsigned)uidForUser:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = getpwnam([v3 UTF8String]);
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v3;
      v6 = MEMORY[0x277D86220];
      v7 = "Unknown user '%@', skipping request";
      v8 = 12;
      goto LABEL_7;
    }

LABEL_8:
    pw_uid = 0;
    goto LABEL_9;
  }

  pw_uid = v4->pw_uid;
  if (!pw_uid)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      v6 = MEMORY[0x277D86220];
      v7 = "Modifying defaults as root is not allowed, skipping request";
      v8 = 2;
LABEL_7:
      _os_log_impl(&dword_247DE9000, v6, OS_LOG_TYPE_DEFAULT, v7, &v11, v8);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:

  v9 = *MEMORY[0x277D85DE8];
  return pw_uid;
}

@end