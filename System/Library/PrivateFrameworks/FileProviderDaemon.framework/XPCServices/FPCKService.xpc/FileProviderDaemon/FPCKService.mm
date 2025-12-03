@interface FPCKService
- (BOOL)isInvalidated;
- (FPCKService)initWithConnection:(id)connection;
- (void)prepareFPCKForDomain:(id)domain domainUserInfo:(id)info domainRootURL:(id)l databaseBackupPath:(id)path accessingPaths:(id)paths urls:(id)urls volumeRole:(unsigned int)role options:(unint64_t)self0 reason:(unint64_t)self1 fpfs:(BOOL)self2 iCDPackageDetection:(BOOL)self3 completionHandler:(id)self4;
- (void)runFPCKWithPauseHandler:(id)handler contentBarrier:(int64_t)barrier completionHandler:(id)completionHandler;
@end

@implementation FPCKService

- (FPCKService)initWithConnection:(id)connection
{
  connectionCopy = connection;
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
    [connectionCopy setInvalidationHandler:v20];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)prepareFPCKForDomain:(id)domain domainUserInfo:(id)info domainRootURL:(id)l databaseBackupPath:(id)path accessingPaths:(id)paths urls:(id)urls volumeRole:(unsigned int)role options:(unint64_t)self0 reason:(unint64_t)self1 fpfs:(BOOL)self2 iCDPackageDetection:(BOOL)self3 completionHandler:(id)self4
{
  domainCopy = domain;
  infoCopy = info;
  lCopy = l;
  pathCopy = path;
  pathsCopy = paths;
  urlsCopy = urls;
  if (self->_hasBeenPrepared)
  {
    (*(handler + 2))(handler, 0);
  }

  else
  {
    objc_storeStrong(&self->_domainID, domain);
    handlerCopy = handler;
    objc_storeStrong(&self->_domainUserInfo, info);
    objc_storeStrong(&self->_domainRootURL, l);
    objc_storeStrong(&self->_databaseBackupPath, path);
    objc_storeStrong(&self->_accessingPaths, paths);
    objc_storeStrong(&self->_urls, urls);
    self->_volumeRole = role;
    self->_options = options;
    self->_reason = reason;
    self->_fpfs = fpfs;
    self->_iCDPackageDetection = detection;
    self->_hasBeenPrepared = 1;
    fp_obfuscatedProviderDomainID = [(NSString *)self->_domainID fp_obfuscatedProviderDomainID];
    [fp_obfuscatedProviderDomainID UTF8String];
    v24 = fpfs_create_log_for_provider();
    log = self->_log;
    self->_log = v24;

    handlerCopy[2](handlerCopy, 0);
  }
}

- (BOOL)isInvalidated
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  invalidated = selfCopy->_invalidated;
  objc_sync_exit(selfCopy);

  return invalidated;
}

- (void)runFPCKWithPauseHandler:(id)handler contentBarrier:(int64_t)barrier completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  runQueue = self->_runQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100001790;
  v13[3] = &unk_100008418;
  v13[4] = self;
  v14 = handlerCopy;
  v15 = completionHandlerCopy;
  barrierCopy = barrier;
  v11 = handlerCopy;
  v12 = completionHandlerCopy;
  dispatch_async(runQueue, v13);
}

@end