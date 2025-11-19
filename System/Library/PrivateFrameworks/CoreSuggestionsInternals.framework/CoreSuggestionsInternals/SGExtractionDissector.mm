@interface SGExtractionDissector
- (SGExtractionDissector)init;
- (void)dealloc;
@end

@implementation SGExtractionDissector

- (SGExtractionDissector)init
{
  v21.receiver = self;
  v21.super_class = SGExtractionDissector;
  v2 = [(SGExtractionDissector *)&v21 init];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = objc_opt_class();
  objc_sync_enter(v3);
  WeakRetained = objc_loadWeakRetained(&sharedInstance_28115);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284765E08];
    v9 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.reversetemplated" options:0];
    objc_storeStrong(&v2->_xpcConnection, v9);
    [v9 setRemoteObjectInterface:v8];
    [v9 resume];

    objc_autoreleasePoolPop(v7);
    v10 = objc_alloc(MEMORY[0x277D425F8]);
    v11 = objc_opt_new();
    v12 = [v10 initWithGuardedData:v11];
    classifierCache = v2->_classifierCache;
    v2->_classifierCache = v12;

    v14 = objc_alloc(MEMORY[0x277D425F8]);
    v15 = objc_opt_new();
    v16 = [v14 initWithGuardedData:v15];
    ddScannerLock = v2->_ddScannerLock;
    v2->_ddScannerLock = v16;

    objc_storeWeak(&sharedInstance_28115, v2);
    v2->shouldExtractFromFwdMail = _os_feature_enabled_impl();
  }

  objc_sync_exit(v3);
  if (!v5)
  {
    v18 = objc_opt_new();
    knosisService = v2->knosisService;
    v2->knosisService = v18;

LABEL_7:
    v5 = v2;
  }

  return v5;
}

- (void)dealloc
{
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection invalidate];
    v4 = self->_xpcConnection;
    self->_xpcConnection = 0;
  }

  v5.receiver = self;
  v5.super_class = SGExtractionDissector;
  [(SGExtractionDissector *)&v5 dealloc];
}

@end