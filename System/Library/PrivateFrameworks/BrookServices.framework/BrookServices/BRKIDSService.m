@interface BRKIDSService
+ (id)sharedInstance;
- (BRKIDSService)init;
- (BRKIDSServiceCompanionContextManagerDelegate)companionContextManagerDelegate;
- (BRKIDSServiceCompanionDataCollectionDelegate)dataCollectionDelegate;
- (BRKIDSServiceContextManagerDelegate)contextManagerDelegate;
- (id)sendResourceAtURL:(id)a3 metadata:(id)a4 priority:(int64_t)a5 completionHandler:(id)a6 withTimeout:(double)a7;
- (void)locationManagerDidEnterRegion:(id)a3;
- (void)locationManagerDidExitRegion:(id)a3;
- (void)locationManagerStartMonitoringForRegion:(id)a3;
- (void)locationManagerStopMonitoringForRegion:(id)a3;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
@end

@implementation BRKIDSService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[BRKIDSService sharedInstance];
  }

  v3 = sharedInstance_idsService;

  return v3;
}

uint64_t __31__BRKIDSService_sharedInstance__block_invoke()
{
  sharedInstance_idsService = objc_alloc_init(BRKIDSService);

  return MEMORY[0x2821F96F8]();
}

- (BRKIDSService)init
{
  v9.receiver = self;
  v9.super_class = BRKIDSService;
  v2 = [(BRKIDSService *)&v9 init];
  if (v2)
  {
    v3 = dispatch_get_global_queue(21, 0);
    v4 = dispatch_queue_create_with_target_V2("com.apple.brook.ids", 0, v3);
    idsQueue = v2->_idsQueue;
    v2->_idsQueue = v4;

    v6 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.brook"];
    idsService = v2->_idsService;
    v2->_idsService = v6;

    [(IDSService *)v2->_idsService setProtobufAction:sel_locationManagerDidEnterRegion_ forIncomingRequestsOfType:5];
    [(IDSService *)v2->_idsService setProtobufAction:sel_locationManagerDidExitRegion_ forIncomingRequestsOfType:6];
    [(IDSService *)v2->_idsService setProtobufAction:sel_locationManagerStartMonitoringForRegion_ forIncomingRequestsOfType:3];
    [(IDSService *)v2->_idsService setProtobufAction:sel_locationManagerStopMonitoringForRegion_ forIncomingRequestsOfType:4];
    [(IDSService *)v2->_idsService addDelegate:v2 queue:v2->_idsQueue];
  }

  return v2;
}

- (void)locationManagerDidEnterRegion:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [BRKIDSMessage alloc];
  v6 = [v4 data];

  v7 = [(BRKIDSMessage *)v5 initWithData:v6];
  v8 = BRKLoggingObjectForDomain(11);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315394;
    v25 = "[BRKIDSService locationManagerDidEnterRegion:]";
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&dword_241EE4000, v8, OS_LOG_TYPE_DEFAULT, "%s %@", &v24, 0x16u);
  }

  [(BRKIDSMessage *)v7 latitude];
  v10 = v9;
  [(BRKIDSMessage *)v7 longitude];
  v29 = CLLocationCoordinate2DMake(v10, v11);
  latitude = v29.latitude;
  longitude = v29.longitude;
  if (CLLocationCoordinate2DIsValid(v29) && [(BRKIDSMessage *)v7 hasIdentifier]&& [(BRKIDSMessage *)v7 hasRadius])
  {
    v14 = objc_alloc(MEMORY[0x277CBFBC8]);
    [(BRKIDSMessage *)v7 radius];
    v16 = v15;
    v17 = [(BRKIDSMessage *)v7 identifier];
    v18 = [v14 initWithCenter:v17 radius:latitude identifier:{longitude, v16}];

    v19 = BRKLoggingObjectForDomain(11);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315394;
      v25 = "[BRKIDSService locationManagerDidEnterRegion:]";
      v26 = 2112;
      v27 = v18;
      _os_log_impl(&dword_241EE4000, v19, OS_LOG_TYPE_DEFAULT, "%s locationManagerDidEnterRegion: %@", &v24, 0x16u);
    }

    v20 = [(BRKIDSService *)self contextManagerDelegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = [(BRKIDSService *)self contextManagerDelegate];
      [v22 didEnter:self forRegion:v18];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)locationManagerDidExitRegion:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = BRKLoggingObjectForDomain(11);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[BRKIDSService locationManagerDidExitRegion:]";
    _os_log_impl(&dword_241EE4000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v12, 0xCu);
  }

  v5 = [BRKIDSMessage alloc];
  v6 = [v3 data];

  v7 = [(BRKIDSMessage *)v5 initWithData:v6];
  [(BRKIDSMessage *)v7 latitude];
  v9 = v8;
  [(BRKIDSMessage *)v7 longitude];
  v15 = CLLocationCoordinate2DMake(v9, v10);
  if (CLLocationCoordinate2DIsValid(v15))
  {
    [(BRKIDSMessage *)v7 hasIdentifier];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)locationManagerStartMonitoringForRegion:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = BRKLoggingObjectForDomain(11);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315138;
    v25 = "[BRKIDSService locationManagerStartMonitoringForRegion:]";
    _os_log_impl(&dword_241EE4000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v24, 0xCu);
  }

  v6 = [BRKIDSMessage alloc];
  v7 = [v4 data];

  v8 = [(BRKIDSMessage *)v6 initWithData:v7];
  [(BRKIDSMessage *)v8 latitude];
  v10 = v9;
  [(BRKIDSMessage *)v8 longitude];
  v29 = CLLocationCoordinate2DMake(v10, v11);
  latitude = v29.latitude;
  longitude = v29.longitude;
  if (CLLocationCoordinate2DIsValid(v29) && [(BRKIDSMessage *)v8 hasIdentifier])
  {
    v14 = objc_alloc(MEMORY[0x277CBFBC8]);
    [(BRKIDSMessage *)v8 radius];
    v16 = v15;
    v17 = [(BRKIDSMessage *)v8 identifier];
    v18 = [v14 initWithCenter:v17 radius:latitude identifier:{longitude, v16}];

    v19 = BRKLoggingObjectForDomain(11);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315394;
      v25 = "[BRKIDSService locationManagerStartMonitoringForRegion:]";
      v26 = 2112;
      v27 = v18;
      _os_log_impl(&dword_241EE4000, v19, OS_LOG_TYPE_DEFAULT, "%s startMonitoringForRegion: %@", &v24, 0x16u);
    }

    v20 = [(BRKIDSService *)self companionContextManagerDelegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = [(BRKIDSService *)self companionContextManagerDelegate];
      [v22 startMonitoring:self forRegion:v18];
    }
  }

  else
  {
    v18 = BRKLoggingObjectForDomain(11);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315394;
      v25 = "[BRKIDSService locationManagerStartMonitoringForRegion:]";
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&dword_241EE4000, v18, OS_LOG_TYPE_DEFAULT, "%s error startMonitoringForRegion: n/a message: %@", &v24, 0x16u);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)locationManagerStopMonitoringForRegion:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = BRKLoggingObjectForDomain(11);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[BRKIDSService locationManagerStopMonitoringForRegion:]";
    _os_log_impl(&dword_241EE4000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v16, 0xCu);
  }

  v6 = [BRKIDSMessage alloc];
  v7 = [v4 data];

  v8 = [(BRKIDSMessage *)v6 initWithData:v7];
  LODWORD(v7) = [(BRKIDSMessage *)v8 hasIdentifier];
  v9 = BRKLoggingObjectForDomain(11);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (v10)
    {
      v16 = 136315394;
      v17 = "[BRKIDSService locationManagerStopMonitoringForRegion:]";
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_241EE4000, v9, OS_LOG_TYPE_DEFAULT, "%s error stopMonitoringForRegion: n/a message: %@", &v16, 0x16u);
    }

    goto LABEL_10;
  }

  if (v10)
  {
    v11 = [(BRKIDSMessage *)v8 identifier];
    v16 = 136315394;
    v17 = "[BRKIDSService locationManagerStopMonitoringForRegion:]";
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_241EE4000, v9, OS_LOG_TYPE_DEFAULT, "%s stopMonitoringForRegionIdentifier: %@", &v16, 0x16u);
  }

  v12 = [(BRKIDSService *)self companionContextManagerDelegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v9 = [(BRKIDSService *)self companionContextManagerDelegate];
    v14 = [(BRKIDSMessage *)v8 identifier];
    [v9 stopMonitoring:self forRegionIdentifier:v14];

LABEL_10:
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = BRKLoggingObjectForDomain(11);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_241EE4000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: IDS service accounts changed: %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = BRKLoggingObjectForDomain(11);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_241EE4000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: IDS service devices changed: %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v31 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = BRKLoggingObjectForDomain(11);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v19 = 138544642;
    v20 = v17;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    v27 = 1024;
    v28 = v8;
    v29 = 2112;
    v30 = v14;
    _os_log_impl(&dword_241EE4000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: IDS service did send with success: %@ %@ %@ %d %@", &v19, 0x3Au);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = BRKLoggingObjectForDomain(11);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[BRKIDSService service:account:incomingUnhandledProtobuf:fromID:context:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_241EE4000, v8, OS_LOG_TYPE_DEFAULT, "%s incomingUnhandledProtobuf: %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 fromID:(id)a6 context:(id)a7
{
  v36 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = BRKLoggingObjectForDomain(11);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v24 = 138544642;
    v25 = v19;
    v26 = 2112;
    v27 = v12;
    v28 = 2112;
    v29 = v13;
    v30 = 2112;
    v31 = v14;
    v32 = 2112;
    v33 = v15;
    v34 = 2112;
    v35 = v16;
    _os_log_impl(&dword_241EE4000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: IDS service did receive url: %@ %@ %@ %@ %@", &v24, 0x3Eu);
  }

  v20 = [(BRKIDSService *)self dataCollectionDelegate];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v22 = [(BRKIDSService *)self dataCollectionDelegate];
    [v22 service:self didReceiveResourceURL:v14];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)sendResourceAtURL:(id)a3 metadata:(id)a4 priority:(int64_t)a5 completionHandler:(id)a6 withTimeout:(double)a7
{
  v37[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v36 = *MEMORY[0x277D18650];
  v14 = MEMORY[0x277CCABB0];
  v15 = a4;
  v16 = [v14 numberWithDouble:a7];
  v37[0] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];

  idsService = self->_idsService;
  if (v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = MEMORY[0x277CBEC10];
  }

  v20 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D187E8]];
  v30 = 0;
  v31 = 0;
  v21 = [(IDSService *)idsService sendResourceAtURL:v12 metadata:v19 toDestinations:v20 priority:a5 options:v17 identifier:&v31 error:&v30];

  v22 = v31;
  v23 = v30;

  v24 = BRKLoggingObjectForDomain(11);
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    if (!v25)
    {
      goto LABEL_10;
    }

    *buf = 138412546;
    v33 = v12;
    v34 = 2112;
    v35 = v22;
    v26 = "IDS Sent: %@ resource, identifier %@";
  }

  else
  {
    if (!v25)
    {
      goto LABEL_10;
    }

    *buf = 138412546;
    v33 = v12;
    v34 = 2112;
    v35 = v22;
    v26 = "IDS Failed to Send: %@ resource, identifier %@";
  }

  _os_log_impl(&dword_241EE4000, v24, OS_LOG_TYPE_DEFAULT, v26, buf, 0x16u);
LABEL_10:

  if (v13)
  {
    v13[2](v13, v23);
  }

  v27 = v22;

  v28 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BRKIDSServiceContextManagerDelegate)contextManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contextManagerDelegate);

  return WeakRetained;
}

- (BRKIDSServiceCompanionContextManagerDelegate)companionContextManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_companionContextManagerDelegate);

  return WeakRetained;
}

- (BRKIDSServiceCompanionDataCollectionDelegate)dataCollectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dataCollectionDelegate);

  return WeakRetained;
}

@end