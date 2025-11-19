@interface DTGameKitService
- (DTGameKitService)initWithChannel:(id)a3;
- (void)messageReceived:(id)a3;
@end

@implementation DTGameKitService

- (DTGameKitService)initWithChannel:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = DTGameKitService;
  v5 = [(DTXService *)&v14 initWithChannel:v4];
  if (v5)
  {
    v6 = +[GCFGameServicesClient daemonProxy];
    client = v5->_client;
    v5->_client = v6;

    v8 = objc_alloc_init(DTServiceHubDaemonProxyUpdateDelegate);
    daemonProxyUpdateDelegate = v5->_daemonProxyUpdateDelegate;
    v5->_daemonProxyUpdateDelegate = v8;

    [(DTServiceHubDaemonProxyUpdateDelegate *)v5->_daemonProxyUpdateDelegate setChannel:v4];
    [(GCFGameServicesClient *)v5->_client setDataUpdateDelegate:v5->_daemonProxyUpdateDelegate];
    objc_initWeak(&location, v5);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_247FE24D4;
    v11[3] = &unk_278EF1238;
    objc_copyWeak(&v12, &location);
    [v4 registerDisconnectHandler:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)messageReceived:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v25 = objc_opt_class();
    v26 = 2114;
    v27 = v4;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[%{public}@] Message received: %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  if (*MEMORY[0x277D03698] != v4)
  {
    v5 = [v4 stringForMessageKey:@"command"];
    v6 = [v4 data];
    if ([v5 isEqualToString:@"gameServicesRemoteCall"])
    {
      if (v6)
      {
        client = self->_client;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = sub_247FE2874;
        v21[3] = &unk_278EF3C90;
        v22 = v4;
        objc_copyWeak(&v23, buf);
        [(GCFGameServicesClient *)client gameServicesRemoteCall:v6 completionHandler:v21];
        objc_destroyWeak(&v23);
        v8 = v22;
LABEL_9:
      }
    }

    else if ([v5 isEqualToString:@"enableDebugMode"])
    {
      v20 = 0;
      v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:1 error:&v20];
      v10 = v20;
      v15 = [v9 objectForKeyedSubscript:@"value"];
      v11 = [v9 objectForKeyedSubscript:@"bundleID"];
      v12 = self->_client;
      v13 = [v15 BOOLValue];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = sub_247FE295C;
      v16[3] = &unk_278EF3CB8;
      v8 = v10;
      v17 = v8;
      v18 = v4;
      objc_copyWeak(&v19, buf);
      [(GCFGameServicesClient *)v12 setDebugMode:v13 bundleID:v11 reply:v16];
      objc_destroyWeak(&v19);

      goto LABEL_9;
    }
  }

  objc_destroyWeak(buf);

  v14 = *MEMORY[0x277D85DE8];
}

@end