@interface FPCKService
- (BOOL)isInvalidated;
- (FPCKService)initWithConnection:(id)a3;
- (void)prepareFPCKForDomain:(id)a3 domainUserInfo:(id)a4 domainRootURL:(id)a5 databaseBackupPath:(id)a6 accessingPaths:(id)a7 urls:(id)a8 volumeRole:(unsigned int)a9 options:(unint64_t)a10 reason:(unint64_t)a11 fpfs:(BOOL)a12 iCDPackageDetection:(BOOL)a13 completionHandler:(id)a14;
- (void)runFPCKWithPauseHandler:(id)a3 contentBarrier:(int64_t)a4 completionHandler:(id)a5;
@end

@implementation FPCKService

- (FPCKService)initWithConnection:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = FPCKService;
  v5 = [(FPCKService *)&v23 init];
  v6 = v5;
  if (v5)
  {
    v5->_hasBeenPrepared = 0;
    v7 = dispatch_semaphore_create(0);
    semaphore = v6->_semaphore;
    v6->_semaphore = v7;

    v6->_invalidated = 0;
    domainID = v6->_domainID;
    v6->_domainID = &stru_100008468;

    domainUserInfo = v6->_domainUserInfo;
    v6->_domainUserInfo = 0;

    domainRootURL = v6->_domainRootURL;
    v6->_domainRootURL = 0;

    databaseBackupPath = v6->_databaseBackupPath;
    v6->_databaseBackupPath = 0;

    urls = v6->_urls;
    v6->_urls = 0;

    v6->_volumeRole = 0;
    *&v6->_options = xmmword_1000031A0;
    *&v6->_fpfs = 257;
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("FPCKService run queue", v14);
    runQueue = v6->_runQueue;
    v6->_runQueue = v15;

    v17 = fpfs_current_or_default_log();
    log = v6->_log;
    v6->_log = v17;

    objc_initWeak(&location, v6);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000144C;
    v20[3] = &unk_100008280;
    objc_copyWeak(&v21, &location);
    [v4 setInvalidationHandler:v20];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)prepareFPCKForDomain:(id)a3 domainUserInfo:(id)a4 domainRootURL:(id)a5 databaseBackupPath:(id)a6 accessingPaths:(id)a7 urls:(id)a8 volumeRole:(unsigned int)a9 options:(unint64_t)a10 reason:(unint64_t)a11 fpfs:(BOOL)a12 iCDPackageDetection:(BOOL)a13 completionHandler:(id)a14
{
  v30 = a3;
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v26 = a7;
  v21 = a8;
  if (self->_hasBeenPrepared)
  {
    (*(a14 + 2))(a14, 0);
  }

  else
  {
    objc_storeStrong(&self->_domainID, a3);
    v22 = a14;
    objc_storeStrong(&self->_domainUserInfo, a4);
    objc_storeStrong(&self->_domainRootURL, a5);
    objc_storeStrong(&self->_databaseBackupPath, a6);
    objc_storeStrong(&self->_accessingPaths, a7);
    objc_storeStrong(&self->_urls, a8);
    self->_volumeRole = a9;
    self->_options = a10;
    self->_reason = a11;
    self->_fpfs = a12;
    self->_iCDPackageDetection = a13;
    self->_hasBeenPrepared = 1;
    v23 = [(NSString *)self->_domainID fp_obfuscatedProviderDomainID];
    [v23 UTF8String];
    v24 = fpfs_create_log_for_provider();
    log = self->_log;
    self->_log = v24;

    v22[2](v22, 0);
  }
}

- (BOOL)isInvalidated
{
  v2 = self;
  objc_sync_enter(v2);
  invalidated = v2->_invalidated;
  objc_sync_exit(v2);

  return invalidated;
}

- (void)runFPCKWithPauseHandler:(id)a3 contentBarrier:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  runQueue = self->_runQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100001790;
  v13[3] = &unk_100008418;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v8;
  v12 = v9;
  dispatch_async(runQueue, v13);
}

@end