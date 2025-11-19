@interface BRLTTranslationService
+ (NSMutableDictionary)connections;
+ (id)connectionForLoopbackService:(id)a3;
+ (id)connectionForServiceIdentifier:(id)a3;
+ (id)connectionsLock;
+ (id)serviceForIdentifier:(id)a3 input:(BOOL)a4 loopback:(BOOL)a5;
- (BRLTTranslationService)initWithServiceIdentifier:(id)a3 connection:(id)a4;
- (id)_queue_serviceProxy;
- (id)description;
- (void)_queue_invalidate;
- (void)_queue_loadBundle;
- (void)_queue_resume;
- (void)brailleForText:(id)a3 parameters:(id)a4 withReply:(id)a5;
- (void)textForBraille:(id)a3 parameters:(id)a4 withReply:(id)a5;
@end

@implementation BRLTTranslationService

+ (id)serviceForIdentifier:(id)a3 input:(BOOL)a4 loopback:(BOOL)a5
{
  v6 = a4;
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    v11 = v10;
    if (v6)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.input", v10];
    }

    v12 = [a1 connectionsLock];
    [v12 lock];

    v13 = [a1 connections];
    v14 = [v13 objectForKeyedSubscript:v11];

    v15 = [a1 connectionsLock];
    [v15 unlock];

    if (!v14 || [v14 isInvalid])
    {
      if (a5)
      {
        v16 = objc_alloc_init(BRLTSLoopbackTranslationService);
        v17 = [a1 connectionForLoopbackService:v16];
        v18 = [[BRLTLoopbackTranslationService alloc] initWithServiceIdentifier:v10 connection:v17 loopbackService:v16];

        v14 = v17;
      }

      else
      {
        v16 = [a1 connectionForServiceIdentifier:v10];
        v18 = [[a1 alloc] initWithServiceIdentifier:v10 connection:v16];
      }

      v20 = [a1 connectionsLock];
      [v20 lock];

      v21 = [a1 connections];
      [v21 setObject:v18 forKeyedSubscript:v11];

      v22 = [a1 connectionsLock];
      [v22 unlock];

      v14 = v18;
    }
  }

  else
  {
    v19 = BRLTLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [BRLTTranslationService serviceForIdentifier:v19 input:? loopback:?];
    }

    v14 = 0;
  }

  return v14;
}

+ (id)connectionForServiceIdentifier:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.accessibility.BrailleTranslation.BrailleTranslationService"];
  v5 = BRLTTranslationServiceInterface();
  [v4 setRemoteObjectInterface:v5];

  v6 = BRLTTranslationServiceClientInterface();
  [v4 setExportedInterface:v6];

  [v4 setExportedObject:a1];

  return v4;
}

+ (id)connectionForLoopbackService:(id)a3
{
  v4 = MEMORY[0x277CCAE80];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 listener];

  v8 = [v7 endpoint];
  v9 = [v6 initWithListenerEndpoint:v8];

  v10 = +[BRLTSTranslationService exportedInterface];
  [v9 setRemoteObjectInterface:v10];

  v11 = BRLTTranslationServiceClientInterface();
  [v9 setExportedInterface:v11];

  [v9 setExportedObject:a1];

  return v9;
}

+ (NSMutableDictionary)connections
{
  if (connections_onceToken != -1)
  {
    +[BRLTTranslationService connections];
  }

  v3 = connections__Connections;

  return v3;
}

uint64_t __37__BRLTTranslationService_connections__block_invoke()
{
  connections__Connections = [MEMORY[0x277CBEB38] dictionary];

  return MEMORY[0x2821F96F8]();
}

+ (id)connectionsLock
{
  if (connectionsLock_onceToken != -1)
  {
    +[BRLTTranslationService connectionsLock];
  }

  v3 = connectionsLock__connectionsLock;

  return v3;
}

uint64_t __41__BRLTTranslationService_connectionsLock__block_invoke()
{
  connectionsLock__connectionsLock = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (BRLTTranslationService)initWithServiceIdentifier:(id)a3 connection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = BRLTTranslationService;
  v9 = [(BRLTTranslationService *)&v18 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.serviceQueue", v7];
    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v12 = dispatch_queue_create([v10 UTF8String], v11);
    queue = v9->_queue;
    v9->_queue = v12;

    objc_storeStrong(&v9->_queue_connection, a4);
    objc_storeStrong(&v9->_serviceIdentifier, a3);
    v14 = v9->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__BRLTTranslationService_initWithServiceIdentifier_connection___block_invoke;
    block[3] = &unk_278D209F0;
    v17 = v9;
    dispatch_async(v14, block);
  }

  return v9;
}

uint64_t __63__BRLTTranslationService_initWithServiceIdentifier_connection___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_resume];
  v2 = *(a1 + 32);

  return [v2 _queue_loadBundle];
}

- (void)_queue_resume
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(BRLTTranslationService *)self queue];
  dispatch_assert_queue_V2(v3);

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__BRLTTranslationService__queue_resume__block_invoke;
  v11[3] = &unk_278D20A18;
  objc_copyWeak(&v12, &location);
  v4 = [(BRLTTranslationService *)self queue_connection];
  [v4 setInterruptionHandler:v11];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__BRLTTranslationService__queue_resume__block_invoke_19;
  v9[3] = &unk_278D20A18;
  objc_copyWeak(&v10, &location);
  v5 = [(BRLTTranslationService *)self queue_connection];
  [v5 setInvalidationHandler:v9];

  v6 = BRLTLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = self;
    _os_log_impl(&dword_241DFD000, v6, OS_LOG_TYPE_DEFAULT, "Resuming connection to BrailleTranslationService. service:%@", buf, 0xCu);
  }

  v7 = [(BRLTTranslationService *)self queue_connection];
  [v7 resume];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  v8 = *MEMORY[0x277D85DE8];
}

void __39__BRLTTranslationService__queue_resume__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = BRLTLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = 138412290;
    v7 = WeakRetained;
    _os_log_impl(&dword_241DFD000, v2, OS_LOG_TYPE_DEFAULT, "Connection to service interrupted. service:%@", &v6, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setInterrupted:1];

  v5 = *MEMORY[0x277D85DE8];
}

void __39__BRLTTranslationService__queue_resume__block_invoke_19(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v2 = BRLTLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __39__BRLTTranslationService__queue_resume__block_invoke_19_cold_1(&to, v2);
  }

  v3 = objc_loadWeakRetained(&to);
  v4 = [v3 queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__BRLTTranslationService__queue_resume__block_invoke_20;
  v5[3] = &unk_278D20A18;
  objc_copyWeak(&v6, (a1 + 32));
  dispatch_async(v4, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&to);
}

void __39__BRLTTranslationService__queue_resume__block_invoke_20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_invalidate];
}

- (void)_queue_invalidate
{
  v3 = [(BRLTTranslationService *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(BRLTTranslationService *)self queue_connection];
  [v4 invalidate];

  [(BRLTTranslationService *)self setQueue_connection:0];
  [(BRLTTranslationService *)self setInvalid:1];
  v5 = [(BRLTTranslationService *)self invalidationHandler];

  if (v5)
  {
    v6 = [(BRLTTranslationService *)self invalidationHandler];
    v6[2]();
  }
}

- (id)_queue_serviceProxy
{
  v3 = [(BRLTTranslationService *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(BRLTTranslationService *)self interrupted])
  {
    [(BRLTTranslationService *)self setInterrupted:0];
    [(BRLTTranslationService *)self _queue_loadBundle];
  }

  v4 = [(BRLTTranslationService *)self queue_connection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__BRLTTranslationService__queue_serviceProxy__block_invoke;
  v7[3] = &unk_278D20A40;
  v7[4] = self;
  v5 = [v4 remoteObjectProxyWithErrorHandler:v7];

  return v5;
}

void __45__BRLTTranslationService__queue_serviceProxy__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BRLTLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __45__BRLTTranslationService__queue_serviceProxy__block_invoke_cold_1(a1, v3, v4);
  }
}

- (void)_queue_loadBundle
{
  v3 = [(BRLTTranslationService *)self queue];
  dispatch_assert_queue_V2(v3);

  v5 = [(BRLTTranslationService *)self _queue_serviceProxy];
  v4 = [(BRLTTranslationService *)self serviceIdentifier];
  [v5 loadBrailleBundleForIdentifier:v4];
}

- (void)brailleForText:(id)a3 parameters:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = VOTLogBraille();
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_241DFD000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Print-to-Braille Translation", "", buf, 2u);
  }

  v12 = [(BRLTTranslationService *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__BRLTTranslationService_brailleForText_parameters_withReply___block_invoke;
  v16[3] = &unk_278D20A90;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(v12, v16);
}

void __62__BRLTTranslationService_brailleForText_parameters_withReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_serviceProxy];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__BRLTTranslationService_brailleForText_parameters_withReply___block_invoke_2;
  v5[3] = &unk_278D20A68;
  v6 = *(a1 + 56);
  [v2 brailleForText:v3 parameters:v4 withReply:v5];
}

void __62__BRLTTranslationService_brailleForText_parameters_withReply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = VOTLogBraille();
  if (os_signpost_enabled(v7))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_241DFD000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Print-to-Braille Translation", "", v9, 2u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }
}

- (void)textForBraille:(id)a3 parameters:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = VOTLogBraille();
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_241DFD000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Braille-to-Print Back-Translation", "", buf, 2u);
  }

  v12 = [(BRLTTranslationService *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__BRLTTranslationService_textForBraille_parameters_withReply___block_invoke;
  v16[3] = &unk_278D20A90;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(v12, v16);
}

void __62__BRLTTranslationService_textForBraille_parameters_withReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_serviceProxy];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__BRLTTranslationService_textForBraille_parameters_withReply___block_invoke_2;
  v5[3] = &unk_278D20A68;
  v6 = *(a1 + 56);
  [v2 textForBraille:v3 parameters:v4 withReply:v5];
}

void __62__BRLTTranslationService_textForBraille_parameters_withReply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = VOTLogBraille();
  if (os_signpost_enabled(v7))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_241DFD000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Braille-to-Print Back-Translation", "", v9, 2u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v8.receiver = self;
  v8.super_class = BRLTTranslationService;
  v4 = [(BRLTTranslationService *)&v8 description];
  v5 = [(BRLTTranslationService *)self serviceIdentifier];
  v6 = [v3 stringWithFormat:@"<%@ service:%@", v4, v5];

  if ([(BRLTTranslationService *)self isInvalid])
  {
    [v6 appendString:@" INVALID"];
  }

  [v6 appendString:@">"];

  return v6;
}

void __39__BRLTTranslationService__queue_resume__block_invoke_19_cold_1(id *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1);
  v5 = 138412290;
  v6 = WeakRetained;
  _os_log_error_impl(&dword_241DFD000, a2, OS_LOG_TYPE_ERROR, "Connection to service invalidated. service:%@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __45__BRLTTranslationService__queue_serviceProxy__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_241DFD000, log, OS_LOG_TYPE_ERROR, "Couldn't get remote object proxy. service:%@ / %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end