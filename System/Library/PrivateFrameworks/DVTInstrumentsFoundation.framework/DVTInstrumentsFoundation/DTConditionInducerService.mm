@interface DTConditionInducerService
+ (void)registerCapabilities:(id)a3;
- (DTConditionInducerService)initWithChannel:(id)a3;
- (id)availableConditionInducers;
- (id)disableActiveCondition;
- (id)disableConditionWithIdentifier:(id)a3;
- (id)enableConditionWithIdentifier:(id)a3 profileIdentifier:(id)a4;
- (void)_disconnectServiceConnection;
- (void)_requestAvailableConditionInducersWithCompletion:(id)a3;
- (void)_requestDisableActiveConditionInducerWithCompletion:(id)a3;
- (void)_requestDisableConditionInducerWithIdentifier:(id)a3 completion:(id)a4;
- (void)_requestEnableConditionInducerWithIdentifier:(id)a3 profileIdentifier:(id)a4 completion:(id)a5;
- (void)activeConditionsDidStop;
- (void)activeConditionsWillStop;
- (void)dealloc;
@end

@implementation DTConditionInducerService

- (DTConditionInducerService)initWithChannel:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DTConditionInducerService;
  v5 = [(DTXService *)&v15 initWithChannel:v4];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.dt.DTConditionInducerSupportService"];
    connectionToService = v5->_connectionToService;
    v5->_connectionToService = v6;

    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285A4DD68];
    [(NSXPCConnection *)v5->_connectionToService setRemoteObjectInterface:v8];

    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285A41AF8];
    [(NSXPCConnection *)v5->_connectionToService setExportedInterface:v9];

    [(NSXPCConnection *)v5->_connectionToService setExportedObject:v5];
    [(NSXPCConnection *)v5->_connectionToService resume];
    objc_initWeak(&location, v5);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_247FB3BF0;
    v11[3] = &unk_278EF2D88;
    v12 = v5;
    objc_copyWeak(&v13, &location);
    [v4 registerDisconnectHandler:v11];
    objc_destroyWeak(&v13);

    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)dealloc
{
  [(DTConditionInducerService *)self _disconnectServiceConnection];
  v3.receiver = self;
  v3.super_class = DTConditionInducerService;
  [(DTConditionInducerService *)&v3 dealloc];
}

- (void)_disconnectServiceConnection
{
  [(NSXPCConnection *)self->_connectionToService invalidate];
  connectionToService = self->_connectionToService;
  self->_connectionToService = 0;
}

+ (void)registerCapabilities:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v7 = 138412290;
    *&v7[4] = objc_opt_class();
    v5 = *&v7[4];
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Registering service %@", v7, 0xCu);
  }

  [v4 publishCapability:@"com.apple.instruments.server.services.ConditionInducer" withVersion:1 forClass:{a1, *v7}];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)availableConditionInducers
{
  v3 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_247FB3ED4;
  v8[3] = &unk_278EF2DB0;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(DTConditionInducerService *)self _requestAvailableConditionInducersWithCompletion:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

- (id)disableActiveCondition
{
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v13 = objc_opt_class();
    v3 = v13;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%@: disable active condition", buf, 0xCu);
  }

  v4 = objc_opt_new();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_247FB4184;
  v10[3] = &unk_278EF2DD8;
  v10[4] = self;
  v5 = v4;
  v11 = v5;
  [(DTConditionInducerService *)self _requestDisableActiveConditionInducerWithCompletion:v10];
  v6 = v11;
  v7 = v5;

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)disableConditionWithIdentifier:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v17 = objc_opt_class();
    v18 = 2112;
    v19 = v4;
    v5 = v17;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%@: disable condition with identifier: %@", buf, 0x16u);
  }

  v6 = objc_opt_new();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_247FB44E8;
  v13[3] = &unk_278EF2E00;
  v13[4] = self;
  v14 = v4;
  v7 = v6;
  v15 = v7;
  v8 = v4;
  [(DTConditionInducerService *)self _requestDisableConditionInducerWithIdentifier:v8 completion:v13];
  v9 = v15;
  v10 = v7;

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)enableConditionWithIdentifier:(id)a3 profileIdentifier:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v22 = objc_opt_class();
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v7;
    v8 = v22;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%@: enable condition with identifier '%@' profile '%@'", buf, 0x20u);
  }

  v9 = objc_opt_new();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_247FB48A0;
  v17[3] = &unk_278EF2E28;
  v17[4] = self;
  v18 = v6;
  v19 = v7;
  v10 = v9;
  v20 = v10;
  v11 = v7;
  v12 = v6;
  [(DTConditionInducerService *)self _requestEnableConditionInducerWithIdentifier:v12 profileIdentifier:v11 completion:v17];
  v13 = v20;
  v14 = v10;

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_requestAvailableConditionInducersWithCompletion:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DTConditionInducerService *)self connectionToService];

  if (v5)
  {
    v6 = [(DTConditionInducerService *)self connectionToService];
    v7 = [v6 remoteObjectProxy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_247FB4C50;
    v12[3] = &unk_278EF2E50;
    v13 = v4;
    [v7 listAvailableConditionInducersWithReply:v12];

    v8 = v13;
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA450];
    v15[0] = @"The Condition Inducer service is not available.";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v8 = [v9 errorWithDomain:@"DTConditionInducerService" code:2 userInfo:v10];

    (*(v4 + 2))(v4, 0, v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_requestEnableConditionInducerWithIdentifier:(id)a3 profileIdentifier:(id)a4 completion:(id)a5
{
  v21[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(DTConditionInducerService *)self connectionToService];

  if (v11)
  {
    v12 = [(DTConditionInducerService *)self connectionToService];
    v13 = [v12 remoteObjectProxy];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_247FB4E1C;
    v18[3] = &unk_278EF2E78;
    v19 = v10;
    [v13 enableConditionInducerWithIdentifier:v8 profileIdentifier:v9 reply:v18];

    v14 = v19;
  }

  else
  {
    v15 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA450];
    v21[0] = @"The Condition Inducer service is not available.";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v14 = [v15 errorWithDomain:@"DTConditionInducerService" code:2 userInfo:v16];

    (*(v10 + 2))(v10, 0, v14);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_requestDisableConditionInducerWithIdentifier:(id)a3 completion:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(DTConditionInducerService *)self connectionToService];

  if (v8)
  {
    v9 = [(DTConditionInducerService *)self connectionToService];
    v10 = [v9 remoteObjectProxy];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_247FB50A8;
    v15[3] = &unk_278EF2E78;
    v16 = v7;
    [v10 disableConditionInducerWithIdentifier:v6 reply:v15];

    v11 = v16;
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"The Condition Inducer service is not available.";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v11 = [v12 errorWithDomain:@"DTConditionInducerService" code:2 userInfo:v13];

    (*(v7 + 2))(v7, 0, v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_requestDisableActiveConditionInducerWithCompletion:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DTConditionInducerService *)self connectionToService];

  if (v5)
  {
    v6 = [(DTConditionInducerService *)self connectionToService];
    v7 = [v6 remoteObjectProxy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_247FB5320;
    v12[3] = &unk_278EF2E78;
    v13 = v4;
    [v7 disableActiveConditionInducerWithReply:v12];

    v8 = v13;
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA450];
    v15[0] = @"The Condition Inducer service is not available.";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v8 = [v9 errorWithDomain:@"DTConditionInducerService" code:2 userInfo:v10];

    (*(v4 + 2))(v4, 0, v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)activeConditionsWillStop
{
  v4 = [MEMORY[0x277D03668] message];
  [v4 setInteger:1 forMessageKey:@"ActiveConditionsWillStop"];
  v3 = [(DTXService *)self channel];
  [v3 sendControlAsync:v4 replyHandler:0];
}

- (void)activeConditionsDidStop
{
  v4 = [MEMORY[0x277D03668] message];
  [v4 setInteger:1 forMessageKey:@"ActiveConditionsDidStop"];
  v3 = [(DTXService *)self channel];
  [v3 sendControlAsync:v4 replyHandler:0];
}

@end