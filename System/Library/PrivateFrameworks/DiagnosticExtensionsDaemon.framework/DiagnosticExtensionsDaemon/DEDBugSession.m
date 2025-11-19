@interface DEDBugSession
+ (id)archivedClasses;
+ (id)testingInstance;
- (BOOL)hasCapability:(id)a3;
- (BOOL)hasDirectory;
- (BOOL)hasStaleDirectory;
- (BOOL)isCancelling;
- (BOOL)isRunningDE:(id)a3;
- (BOOL)isTarget;
- (BOOL)readyToCancel;
- (BOOL)readyToFinish;
- (BOOL)readyToNotify;
- (BOOL)shouldCollectDiagnosticWithId:(id)a3;
- (DEDBugSession)initWithCoder:(id)a3;
- (DEDBugSession)initWithConfiguration:(id)a3;
- (DEDUploadStatusDelegate)__uploadDelegate;
- (DEDUploadStatusDelegate)uploadDelegate;
- (NSArray)allExtensionIdentifiers;
- (NSString)description;
- (OS_dispatch_queue)callbackQueue;
- (OS_dispatch_queue)diskAccessQueue;
- (OS_os_log)log;
- (id)configuration;
- (id)finisher;
- (id)finisherWithState;
- (id)hashExtensions:(id)a3;
- (id)knownExtensions;
- (id)nextCompletionBlockForIdentifier:(id)a3;
- (id)notifier;
- (id)ongoingCollectOperationsWithOperations:(id)a3;
- (id)ongoingExtensionCollectionOperations;
- (id)prettyDescription;
- (id)scheduledDeferredExtensionCollectionOperations;
- (id)shortDescription;
- (id)startDiagnosticExtensionWithIdentifier:(id)a3 parameters:(id)a4 completion:(id)a5;
- (id)startDiagnosticExtensionWithIdentifier:(id)a3 parameters:(id)a4 deferRunUntil:(id)a5 completion:(id)a6;
- (id)stateInfo;
- (int64_t)instanceType;
- (int64_t)state;
- (void)_addSessionData:(id)a3 filename:(id)a4;
- (void)_cancel;
- (void)_logOperationQueue;
- (void)_prepareForStartDiagnosticExtensionWithDEDIdentifier:(id)a3 parameters:(id)a4 newCollectRemovedPendingKill:(BOOL *)a5 completion:(id)a6;
- (void)_streamOperationQueue;
- (void)_terminateExtensionWithIdentifier:(id)a3 info:(id)a4;
- (void)addData:(id)a3 withFilename:(id)a4;
- (void)adoptFiles:(id)a3 withCompletion:(id)a4;
- (void)attachCompletionHandlerForDEDExtensionIdentifier:(id)a3 handler:(id)a4;
- (void)attachCompletionHandlerForOngoingOperation:(id)a3 handler:(id)a4;
- (void)cancel;
- (void)cancelDiagnosticExtension:(id)a3;
- (void)cancelDiagnosticExtensionWithDEDExtensionIdentifier:(id)a3;
- (void)cancelDiagnosticExtensionWithIdentifier:(id)a3;
- (void)cancelDiagnosticExtensionWithIdentifier:(id)a3 invocationNumber:(int64_t)a4;
- (void)cleanupFinishedUploads:(BOOL)a3;
- (void)clearNotification;
- (void)clearNotificationOnFilingDevice;
- (void)commit;
- (void)compressionProgress:(unint64_t)a3 total:(unint64_t)a4;
- (void)didAdoptFilesWithError:(id)a3;
- (void)didAdoptGroup:(id)a3;
- (void)didCancel;
- (void)didCommit;
- (void)didFinishAllUploads;
- (void)didFinishOperation:(int64_t)a3 withIdentifier:(id)a4;
- (void)didFinishUploadingWithError:(id)a3;
- (void)didGetState:(int64_t)a3 info:(id)a4;
- (void)didLoadTextDataForExtensions:(id)a3 localization:(id)a4;
- (void)didStart;
- (void)didTerminateDiagnosticExtension:(id)a3 info:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)finallyStartDiagnosticWithIdentifier:(id)a3 parameters:(id)a4 completion:(id)a5;
- (void)finishedDiagnosticWithIdentifier:(id)a3 result:(id)a4;
- (void)getSessionStatusWithCompletion:(id)a3;
- (void)getStateWithCompletion:(id)a3;
- (void)hasCollected:(id)a3 isCollecting:(id)a4 identifiers:(id)a5;
- (void)idsInbound_clearNotificationOnFilingDevice;
- (void)idsInbound_didClearNotificationOnFilingDevice;
- (void)idsInbound_didPresentNotificationOnFilingDevice;
- (void)idsInbound_presentNotificationOnFilingDevice;
- (void)instanceType;
- (void)listDiagnosticExtensionsWithCompletion:(id)a3;
- (void)loadTextDataForExtensions:(id)a3 localization:(id)a4 completion:(id)a5;
- (void)notifier;
- (void)notifyPromiseCancellationIfNeeded:(id)a3 info:(id)a4;
- (void)pingWithCallback:(id)a3;
- (void)pong;
- (void)populateLocalizedTextDataForExtensions:(id)a3;
- (void)presentNotificationOnFilingDevice;
- (void)removeAttachment:(id)a3;
- (void)removeFromStore;
- (void)resumePendingOperations;
- (void)save;
- (void)scheduleDiagnosticCollectionForClassBAccessWithIdentifier:(id)a3 parameters:(id)a4;
- (void)scheduleNotification;
- (void)setConfig:(id)a3;
- (void)setUploadDelegate:(id)a3;
- (void)startDiagnosticExtension:(id)a3 parameters:(id)a4 completion:(id)a5;
- (void)startDiagnosticExtensionWithDEDIdentifier:(id)a3 parameters:(id)a4 completion:(id)a5;
- (void)startDiagnosticExtensionWithDEDIdentifier:(id)a3 parameters:(id)a4 deferRunUntil:(id)a5 completion:(id)a6;
- (void)storeCollectionCompletion:(id)a3 forIdentifier:(id)a4;
- (void)supportsDiagnostics:(id)a3;
- (void)synchronizeSessionStatusWithCompletion:(id)a3;
- (void)terminateExtension:(id)a3 withInfo:(id)a4;
- (void)updateCachedExtensionsWithLocalizedTextData:(id)a3;
- (void)uploadProgress:(unint64_t)a3 total:(unint64_t)a4;
- (void)willPerformOperationWithID:(id)a3 type:(int64_t)a4 options:(id)a5;
@end

@implementation DEDBugSession

- (OS_os_log)log
{
  if (log_onceToken != -1)
  {
    [DEDBugSession log];
  }

  v3 = log_log;

  return v3;
}

void __20__DEDBugSession_log__block_invoke()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "ded-bs");
  v1 = log_log;
  log_log = v0;
}

- (OS_dispatch_queue)callbackQueue
{
  p_callbackQueue = &self->_callbackQueue;
  callbackQueue = self->_callbackQueue;
  if (!callbackQueue)
  {
    objc_storeStrong(p_callbackQueue, MEMORY[0x277D85CD0]);
    callbackQueue = *p_callbackQueue;
  }

  return callbackQueue;
}

- (DEDBugSession)initWithConfiguration:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = DEDBugSession;
  v6 = [(DEDBugSession *)&v16 init];
  v7 = v6;
  if (v6)
  {
    [(DEDBugSession *)v6 setFinisherDidCommit:0];
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
    [(DEDBugSession *)v7 setDeListCompletions:v8];

    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    [(DEDBugSession *)v7 setDeCompletions:v9];

    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
    [(DEDBugSession *)v7 setAdoptFilesCompletions:v10];

    v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    [(DEDBugSession *)v7 setPendingOperations:v11];

    v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    [(DEDBugSession *)v7 setOngoingCompletionHandlers:v12];

    [(DEDBugSession *)v7 setPriorClientTransportType:0];
    [(DEDBugSession *)v7 setPriorWorkerTransportType:0];
    v13 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:2];
    [(DEDBugSession *)v7 setFilePromises:v13];

    objc_storeStrong(&v7->_config, a3);
    [(DEDBugSession *)v7 set_finisher:0];
    v14 = objc_opt_new();
    [(DEDBugSession *)v7 setIdentifierManager:v14];

    [(DEDBugSession *)v7 setHasLocalizedTextDataInCache:0];
    [(DEDBugSession *)v7 _logOperationQueue];
  }

  return v7;
}

- (id)finisher
{
  if (![(DEDBugSession *)self isTarget])
  {
    v7 = 0;
    goto LABEL_14;
  }

  v3 = [(DEDBugSession *)self _finisher];

  if (!v3)
  {
    v4 = [(DEDBugSession *)self config];
    v5 = [v4 finishingMove];

    if (v5 == 1)
    {
      v6 = off_278F64CA0;
LABEL_12:
      v14 = objc_alloc(*v6);
      v15 = [(DEDBugSession *)self config];
      v16 = [v14 initWithConfiguration:v15 session:self];
      [(DEDBugSession *)self set_finisher:v16];

      goto LABEL_13;
    }

    v8 = [(DEDBugSession *)self config];
    v9 = [v8 finishingMove];

    if (v9 == 2)
    {
      v6 = off_278F64C68;
      goto LABEL_12;
    }

    v10 = [(DEDBugSession *)self config];
    v11 = [v10 finishingMove];

    if (v11 == 3)
    {
      v6 = off_278F64B70;
      goto LABEL_12;
    }

    v12 = [(DEDBugSession *)self config];
    v13 = [v12 finishingMove];

    if (v13 == 4)
    {
      v6 = off_278F64CC8;
      goto LABEL_12;
    }
  }

LABEL_13:
  v7 = [(DEDBugSession *)self _finisher];
LABEL_14:

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v23 = a3;
  v4 = [(DEDBugSession *)self identifier];
  [v23 encodeObject:v4 forKey:@"identifier"];

  v5 = [(DEDBugSession *)self deviceIdentifier];
  [v23 encodeObject:v5 forKey:@"deviceIdentifier"];

  v6 = [(DEDBugSession *)self config];
  [v23 encodeObject:v6 forKey:@"config"];

  v7 = [(DEDBugSession *)self client];
  [v23 encodeInteger:objc_msgSend(v7 forKey:{"transportType"), @"clientTransportType"}];

  v8 = [(DEDBugSession *)self client];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(DEDBugSession *)self client];
    v11 = [v10 clientAddress];
    [v23 encodeObject:v11 forKey:@"clientAddress"];
  }

  v12 = [(DEDBugSession *)self worker];
  [v23 encodeInteger:objc_msgSend(v12 forKey:{"transportType"), @"workerTransportType"}];

  v13 = [(DEDBugSession *)self identifierManager];
  [v23 encodeObject:v13 forKey:@"identifierManager"];

  [v23 encodeBool:-[DEDBugSession finisherDidCommit](self forKey:{"finisherDidCommit"), @"didCommit"}];
  v14 = [(DEDBugSession *)self pendingOperations];
  objc_sync_enter(v14);
  v15 = [(DEDBugSession *)self pendingOperations];
  [v23 encodeObject:v15 forKey:@"operations"];

  objc_sync_exit(v14);
  v16 = [(DEDBugSession *)self _finisher];

  if (v16)
  {
    v17 = [(DEDBugSession *)self _finisher];
    [v23 encodeObject:v17 forKey:@"finisher"];
  }

  v18 = [(DEDBugSession *)self _notifier];
  if (v18)
  {
    v19 = v18;
    v20 = [(DEDBugSession *)self _notifier];
    v21 = [v20 conformsToProtocol:&unk_285B8AAE0];

    if (v21)
    {
      v22 = [(DEDBugSession *)self _notifier];
      [v23 encodeObject:v22 forKey:@"notifier"];
    }
  }
}

- (DEDBugSession)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = DEDBugSession;
  v5 = [(DEDBugSession *)&v31 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v8;

    v10 = +[DEDBugSessionConfiguration archivedClasses];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"config"];
    config = v5->_config;
    v5->_config = v11;

    v5->_priorClientTransportType = [v4 decodeIntegerForKey:@"clientTransportType"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientAddress"];
    priorClientAddress = v5->_priorClientAddress;
    v5->_priorClientAddress = v13;

    v5->_priorWorkerTransportType = [v4 decodeIntegerForKey:@"workerTransportType"];
    v15 = [objc_opt_class() archivedClasses];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"operations"];
    pendingOperations = v5->_pendingOperations;
    v5->_pendingOperations = v16;

    v18 = [objc_opt_class() archivedClasses];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"finisher"];
    finisher = v5->__finisher;
    v5->__finisher = v19;

    v21 = +[DEDExtensionIdentifierManager archivedClasses];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"identifierManager"];
    identifierManager = v5->_identifierManager;
    v5->_identifierManager = v22;

    if (!v5->_identifierManager)
    {
      v24 = objc_opt_new();
      v25 = v5->_identifierManager;
      v5->_identifierManager = v24;
    }

    v26 = [objc_opt_class() archivedClasses];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"notifier"];
    notifier = v5->__notifier;
    v5->__notifier = v27;

    v29 = [v4 containsValueForKey:@"didCommit"];
    if (v29)
    {
      LOBYTE(v29) = [v4 decodeBoolForKey:@"didCommit"];
    }

    v5->_finisherDidCommit = v29;
    [(DEDBugSession *)v5 setHasLocalizedTextDataInCache:0];
    [(DEDBugSession *)v5 _logOperationQueue];
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DEDBugSession;
  v4 = [(DEDBugSession *)&v8 description];
  client = self->_client;
  v6 = [v3 stringWithFormat:@"%@ - identifier: [%@] - client: [%@] - worker: [%@]", v4, self->_identifier, client, self->_worker];

  return v6;
}

- (id)prettyDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(DEDBugSession *)self identifier];
  v5 = [(DEDBugSession *)self state];
  if ((v5 + 1) > 9)
  {
    v6 = "Unknown";
  }

  else
  {
    v6 = off_278F65598[v5 + 1];
  }

  v7 = [v3 stringWithFormat:@"BugSession identifier: %@ state: %s", v4, v6];

  return v7;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DEDBugSession;
  v4 = [(DEDBugSession *)&v8 description];
  v5 = [(DEDBugSession *)self identifier];
  v6 = [v3 stringWithFormat:@"%@: ID: %@", v4, v5];

  return v6;
}

+ (id)archivedClasses
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__DEDBugSession_archivedClasses__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (archivedClasses_onceToken_0 != -1)
  {
    dispatch_once(&archivedClasses_onceToken_0, block);
  }

  v2 = archivedClasses__classes;

  return v2;
}

void __32__DEDBugSession_archivedClasses__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CBEB58];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v20 = [v1 setWithObjects:{v3, v4, v5, v6, v7, objc_opt_class(), 0}];
  v8 = +[DEDBugSessionConfiguration archivedClasses];
  [v20 unionSet:v8];

  v9 = +[DEDNotifierConfiguration archivedClasses];
  [v20 unionSet:v9];

  v10 = +[DEDBugSessionOperation archivedClasses];
  [v20 unionSet:v10];

  v11 = +[DEDSeedingFinisher archivedClasses];
  [v20 unionSet:v11];

  v12 = +[DEDRadarFinisher archivedClasses];
  [v20 unionSet:v12];

  v13 = +[DEDCloudKitFinisher archivedClasses];
  [v20 unionSet:v13];

  v14 = +[DEDTestingFinisher archivedClasses];
  [v20 unionSet:v14];

  v15 = +[DEDExtensionIdentifierManager archivedClasses];
  [v20 unionSet:v15];

  v16 = +[DEDUserNotificationNotifier archivedClasses];
  [v20 unionSet:v16];

  v17 = +[DEDFollowUpNotifier archivedClasses];
  [v20 unionSet:v17];

  v18 = [MEMORY[0x277CBEB98] setWithSet:v20];
  v19 = archivedClasses__classes;
  archivedClasses__classes = v18;
}

- (id)configuration
{
  v3 = [(DEDBugSession *)self config];

  if (v3)
  {
    v4 = [(DEDBugSession *)self config];
    v5 = [v4 copy];
  }

  else
  {
    v6 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [DEDBugSession configuration];
    }

    v5 = 0;
  }

  return v5;
}

- (void)attachCompletionHandlerForOngoingOperation:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DEDBugSession *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "attaching completion handler to ongoing operation", v13, 2u);
  }

  v9 = [v6 copy];
  v10 = MEMORY[0x24C1E5320](v9);
  v11 = [(DEDBugSession *)self ongoingCompletionHandlers];
  v12 = [v7 identifier];

  [v11 setObject:v10 forKeyedSubscript:v12];
}

- (void)attachCompletionHandlerForDEDExtensionIdentifier:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DEDBugSession *)self identifierManager];
  v9 = [v8 isKnownIdentifier:v6];

  if ((v9 & 1) == 0)
  {
    v10 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DEDBugSession attachCompletionHandlerForDEDExtensionIdentifier:v6 handler:self];
    }
  }

  v11 = [v7 copy];
  v12 = MEMORY[0x24C1E5320]();
  v13 = [(DEDBugSession *)self ongoingCompletionHandlers];
  v14 = [v6 stringValue];
  [v13 setObject:v12 forKeyedSubscript:v14];
}

- (id)knownExtensions
{
  v3 = [(DEDBugSession *)self cachedExtensions];

  if (v3)
  {
    v4 = [(DEDBugSession *)self cachedExtensions];
    v5 = [v4 copy];
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  return v5;
}

- (void)resumePendingOperations
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_248AD7000, log, OS_LOG_TYPE_DEBUG, "BS [%@] will resume %@", buf, 0x16u);
}

- (NSArray)allExtensionIdentifiers
{
  v2 = [(DEDBugSession *)self identifierManager];
  v3 = [v2 allIdentifiers];

  return v3;
}

- (void)pingWithCallback:(id)a3
{
  v4 = a3;
  v5 = [(DEDBugSession *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(DEDBugSession *)v4 pingWithCallback:?];
  }

  [(DEDBugSession *)self setPingHandler:v4];
  worker = self->_worker;
  v7 = [(DEDBugSession *)self identifier];
  [(DEDWorkerProtocol *)worker pingSession:v7];
}

- (void)listDiagnosticExtensionsWithCompletion:(id)a3
{
  v11 = a3;
  v4 = [(DEDBugSession *)self cachedExtensions];

  if (v4)
  {
    v5 = [(DEDBugSession *)self cachedExtensions];
    v6 = [v5 allValues];
    v11[2](v11, v6);
  }

  else
  {
    if (v11)
    {
      v7 = [(DEDBugSession *)self deListCompletions];
      v8 = [v11 copy];
      v9 = MEMORY[0x24C1E5320]();
      [v7 addObject:v9];
    }

    worker = self->_worker;
    v5 = [(DEDBugSession *)self identifier];
    [(DEDWorkerProtocol *)worker listAvailableExtensionsForSession:v5];
  }
}

- (void)getStateWithCompletion:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DEDSessionStateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(DEDBugSession *)self identifier];
    *buf = 138543362;
    v16 = v6;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_INFO, "Getting session state on [%{public}@]", buf, 0xCu);
  }

  if ([(DEDBugSession *)self hasCapability:@"session-state"])
  {
    [(DEDBugSession *)self setSessionStateCompletionBlock:v4];
    worker = self->_worker;
    v8 = [(DEDBugSession *)self identifier];
    [(DEDWorkerProtocol *)worker getSessionStateWithSession:v8];
  }

  else
  {
    v9 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DEDBugSession getStateWithCompletion:?];
    }

    v10 = MEMORY[0x24C1E5320](v4);
    [(DEDBugSession *)self setSessionStateCompletionBlock:0];
    v11 = [(DEDBugSession *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__DEDBugSession_getStateWithCompletion___block_invoke;
    block[3] = &unk_278F653A8;
    v14 = v10;
    v8 = v10;
    dispatch_async(v11, block);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __40__DEDBugSession_getStateWithCompletion___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Device does not have capability %@", @"session-state", *MEMORY[0x277CCA450]];
  v10[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v4 = MEMORY[0x277CCA9B8];
  v5 = +[DEDConfiguration sharedInstance];
  v6 = [v5 errorDomain];
  v7 = [v4 errorWithDomain:v6 code:103 userInfo:v3];

  (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)addData:(id)a3 withFilename:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(DEDBugSession *)self hasCapability:@"enhanced-execution-v2"])
  {
    worker = self->_worker;
    v9 = [(DEDBugSession *)self identifier];
    [(DEDWorkerProtocol *)worker addSessionData:v6 withFilename:v7 forSession:v9];
  }

  else
  {
    v10 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DEDBugSession addData:? withFilename:?];
    }
  }
}

- (void)_addSessionData:(id)a3 filename:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DEDBugSession *)self finisher];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(DEDBugSession *)self finisher];
    [v10 writeData:v6 filename:v7];
  }

  else
  {
    v10 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DEDBugSession _addSessionData:filename:];
    }
  }
}

- (void)getSessionStatusWithCompletion:(id)a3
{
  [(DEDBugSession *)self setStatusCompletionBlock:a3];
  worker = self->_worker;
  v5 = [(DEDBugSession *)self identifier];
  [(DEDWorkerProtocol *)worker getSessionStatusWithSession:v5];
}

- (void)synchronizeSessionStatusWithCompletion:(id)a3
{
  v4 = a3;
  if ([(DEDBugSession *)self hasCapability:@"enhanced-execution"])
  {
    [(DEDBugSession *)self setSyncCompletionBlock:v4];
    worker = self->_worker;
    v6 = [(DEDBugSession *)self identifier];
    [(DEDWorkerProtocol *)worker syncSessionStatusWithSession:v6];
  }

  else
  {
    v6 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [DEDBugSession synchronizeSessionStatusWithCompletion:];
    }
  }
}

- (void)startDiagnosticExtensionWithDEDIdentifier:(id)a3 parameters:(id)a4 deferRunUntil:(id)a5 completion:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v12)
  {
    v24 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [DEDBugSession startDiagnosticExtensionWithDEDIdentifier:parameters:deferRunUntil:completion:];
    }

    goto LABEL_15;
  }

  if (![(DEDBugSession *)self hasCapability:@"enhanced-execution"])
  {
    v24 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [DEDBugSession startDiagnosticExtensionWithDEDIdentifier:parameters:deferRunUntil:completion:];
    }

LABEL_15:

    goto LABEL_22;
  }

  v14 = [(DEDBugSession *)self filePromises];
  v15 = [v10 stringValue];
  [v14 addObject:v15];

  if (v13)
  {
    v16 = [v10 stringValue];
    [(DEDBugSession *)self storeCollectionCompletion:v13 forIdentifier:v16];
  }

  if (![(DEDBugSession *)self isTarget])
  {
    goto LABEL_20;
  }

  v17 = [MEMORY[0x277CBEAA8] date];
  v18 = [v12 earlierDate:v17];

  if (v18 != v12)
  {
    v19 = [(DEDBugSession *)self identifier];
    v20 = [DEDDeferredExtensionInfo activityStringForBugSessionIdentifier:v19 dedIdentifier:v10];

    v21 = +[DEDDeferredExtensionInfo allInfo];
    v22 = [v21 objectForKey:v20];

    [(DEDBugSession *)self willPerformOperationWithID:v20 type:2 options:v11];
    [(DEDBugSession *)self save];
    if (v22)
    {
      v23 = [(DEDBugSession *)self log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&dword_248AD7000, v23, OS_LOG_TYPE_DEFAULT, "Rescheduling an existing collect operation.", &v28, 2u);
      }

      [v22 schedule];
      goto LABEL_21;
    }

LABEL_20:
    v20 = [(DEDBugSession *)self worker];
    v22 = [v10 stringValue];
    v26 = [(DEDBugSession *)self identifier];
    [v20 startDiagnosticWithIdentifier:v22 parameters:v11 deferRunUntil:v12 session:v26];

LABEL_21:
    goto LABEL_22;
  }

  v25 = [(DEDBugSession *)self log];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138543362;
    v29 = v12;
    _os_log_impl(&dword_248AD7000, v25, OS_LOG_TYPE_DEFAULT, "Deferred execution was scheduled in past (%{public}@), running immediately.", &v28, 0xCu);
  }

  [(DEDBugSession *)self finallyStartDiagnosticWithIdentifier:v10 parameters:v11 completion:v13];
LABEL_22:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)startDiagnosticExtension:(id)a3 parameters:(id)a4 completion:(id)a5
{
  v11 = a4;
  v8 = a5;
  v9 = [a3 identifier];
  v10 = [(DEDBugSession *)self startDiagnosticExtensionWithIdentifier:v9 parameters:v11 completion:v8];
}

- (id)startDiagnosticExtensionWithIdentifier:(id)a3 parameters:(id)a4 deferRunUntil:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(DEDBugSession *)self hasCapability:@"enhanced-execution"])
  {
    v14 = [MEMORY[0x277CBEAA8] date];
    v15 = [v12 earlierDate:v14];

    if (v15 == v12)
    {
      v19 = [(DEDBugSession *)self log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_248AD7000, v19, OS_LOG_TYPE_DEFAULT, "Deferred execution was scheduled in past, running immediately.", v21, 2u);
      }

      v17 = [(DEDBugSession *)self startDiagnosticExtensionWithIdentifier:v10 parameters:v11 completion:v13];
    }

    else
    {
      v16 = [(DEDBugSession *)self identifierManager];
      v17 = [v16 identifierForExtensionIdentifier:v10];

      [(DEDBugSession *)self startDiagnosticExtensionWithDEDIdentifier:v17 parameters:v11 deferRunUntil:v12 completion:v13];
    }
  }

  else
  {
    v18 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [DEDBugSession startDiagnosticExtensionWithDEDIdentifier:parameters:deferRunUntil:completion:];
    }

    v17 = 0;
  }

  return v17;
}

- (id)startDiagnosticExtensionWithIdentifier:(id)a3 parameters:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DEDBugSession *)self identifierManager];
  v12 = [v11 identifierForExtensionIdentifier:v10];

  [(DEDBugSession *)self startDiagnosticExtensionWithDEDIdentifier:v12 parameters:v9 completion:v8];

  return v12;
}

- (void)startDiagnosticExtensionWithDEDIdentifier:(id)a3 parameters:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v13 = 0;
  [(DEDBugSession *)self _prepareForStartDiagnosticExtensionWithDEDIdentifier:v8 parameters:v9 newCollectRemovedPendingKill:&v13 completion:a5];
  if ((v13 & 1) == 0)
  {
    worker = self->_worker;
    v11 = [v8 stringValue];
    v12 = [(DEDBugSession *)self identifier];
    [(DEDWorkerProtocol *)worker startDiagnosticWithIdentifier:v11 parameters:v9 session:v12];
  }
}

- (void)_prepareForStartDiagnosticExtensionWithDEDIdentifier:(id)a3 parameters:(id)a4 newCollectRemovedPendingKill:(BOOL *)a5 completion:(id)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([v10 invocationNumber] < 1 || -[DEDBugSession hasCapability:](self, "hasCapability:", @"enhanced-execution"))
  {
    v13 = [(DEDBugSession *)self filePromises];
    v14 = [v10 stringValue];
    [v13 addObject:v14];

    if (v12)
    {
      v15 = [v10 stringValue];
      [(DEDBugSession *)self storeCollectionCompletion:v12 forIdentifier:v15];
    }

    if ([(DEDBugSession *)self isTarget])
    {
      if ([(DEDBugSession *)self hasCapability:@"enhanced-execution"])
      {
        LODWORD(v16) = 0;
      }

      else
      {
        v18 = [v10 extensionIdentifier];
        v42 = [DEDBugSessionOperation hashingKeyWithId:v18 type:0];

        v19 = [v10 extensionIdentifier];
        v41 = [DEDBugSessionOperation hashingKeyWithId:v19 type:1];

        v20 = [(DEDBugSession *)self pendingOperations];
        objc_sync_enter(v20);
        v21 = [(DEDBugSession *)self pendingOperations];
        v22 = [v21 objectForKeyedSubscript:v42];
        if (v22)
        {
          v23 = [(DEDBugSession *)self pendingOperations];
          v16 = [v23 objectForKeyedSubscript:v41];

          if (v16)
          {
            v24 = [(DEDBugSession *)self log];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = [v10 stringValue];
              *buf = 138543362;
              v45 = v25;
              _os_log_impl(&dword_248AD7000, v24, OS_LOG_TYPE_DEFAULT, "Found matching kill operation for new requested DE [%{public}@], will let it finish", buf, 0xCu);
            }

            v26 = [(DEDBugSession *)self log];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              v27 = [(DEDBugSession *)self pendingOperations];
              v28 = [v27 objectForKeyedSubscript:v42];
              *buf = 138412290;
              v45 = v28;
              _os_log_impl(&dword_248AD7000, v26, OS_LOG_TYPE_INFO, "Removing matching kill operation: %@", buf, 0xCu);
            }

            v16 = [(DEDBugSession *)self pendingOperations];
            [v16 removeObjectForKey:v42];

            LODWORD(v16) = 1;
          }
        }

        else
        {

          LODWORD(v16) = 0;
        }

        objc_sync_exit(v20);
      }

      if (a5)
      {
        *a5 = v16;
      }

      if (v16)
      {
        v29 = [(DEDBugSession *)self log];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [(DEDBugSession *)self identifier];
          *buf = 138543362;
          v45 = v30;
          _os_log_impl(&dword_248AD7000, v29, OS_LOG_TYPE_DEFAULT, "Start collection command found matching cancel on DE: [%{public}@]", buf, 0xCu);
        }
      }

      else
      {
        v31 = [(DEDBugSession *)self client];
        if (objc_opt_respondsToSelector())
        {
          v32 = [(DEDBugSession *)self client];
          v33 = [v32 transportType];
        }

        else
        {
          v33 = 0;
        }

        if ([DEDCollectionNotification shouldFireNotificationForTransport:v33])
        {
          v34 = _os_activity_create(&dword_248AD7000, "Collect Notify", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __121__DEDBugSession__prepareForStartDiagnosticExtensionWithDEDIdentifier_parameters_newCollectRemovedPendingKill_completion___block_invoke;
          block[3] = &unk_278F653D0;
          block[4] = self;
          os_activity_apply(v34, block);
        }

        v35 = [(DEDBugSession *)self finisher];
        v36 = objc_opt_respondsToSelector();

        if (v36)
        {
          v37 = [(DEDBugSession *)self finisher];
          v38 = [v10 stringValue];
          [v37 didStartCollectingDiagnosticExtensionWithIdentifier:v38];
        }

        v39 = [v10 stringValue];
        [(DEDBugSession *)self willPerformOperationWithID:v39 type:1 options:v11];

        [(DEDBugSession *)self save];
      }
    }
  }

  else
  {
    v17 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v17, OS_LOG_TYPE_DEFAULT, "Running the same extension multiple times requires enhanced execution.", buf, 2u);
    }
  }

  v40 = *MEMORY[0x277D85DE8];
}

void __121__DEDBugSession__prepareForStartDiagnosticExtensionWithDEDIdentifier_parameters_newCollectRemovedPendingKill_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) identifier];
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_INFO, "will fire collection notification for bug session %{public}@", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) config];
  +[DEDCollectionNotification fireNotificationWithFinishingMove:](DEDCollectionNotification, "fireNotificationWithFinishingMove:", [v4 finishingMove]);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)finallyStartDiagnosticWithIdentifier:(id)a3 parameters:(id)a4 completion:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(DEDBugSession *)self isTarget])
  {
    v11 = [(DEDBugSession *)self identifier];
    v12 = [DEDDeferredExtensionInfo activityStringForBugSessionIdentifier:v11 dedIdentifier:v8];

    v13 = +[DEDDeferredExtensionInfo allInfo];
    v14 = [v13 objectForKey:v12];

    [v14 unschedule];
    [(DEDBugSession *)self didFinishOperation:2 withIdentifier:v12];
    [(DEDBugSession *)self save];
    [(DEDBugSession *)self _prepareForStartDiagnosticExtensionWithDEDIdentifier:v8 parameters:v9 newCollectRemovedPendingKill:0 completion:v10];
    v15 = +[DEDDaemon sharedInstance];
    v16 = [v8 stringValue];
    v17 = [(DEDBugSession *)self identifier];
    [v15 finallyStartDiagnosticWithIdentifier:v16 parameters:v9 session:v17];
  }

  else
  {
    v12 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(DEDBugSession *)self identifier];
      v20 = 136446466;
      v21 = "[DEDBugSession finallyStartDiagnosticWithIdentifier:parameters:completion:]";
      v22 = 2114;
      v23 = v18;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}s] called on non target instance of [%{public}@]", &v20, 0x16u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)scheduleDiagnosticCollectionForClassBAccessWithIdentifier:(id)a3 parameters:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(DEDBugSession *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v17 = 138543362;
    v18 = v6;
    _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_INFO, "Will reschedule attachment collection for Class B availability for extension [%{public}@]", &v17, 0xCu);
  }

  v9 = [[DEDExtensionIdentifier alloc] initWithString:v6];
  v10 = [(DEDBugSession *)self identifier];
  v11 = [DEDDeferredExtensionInfo activityStringForBugSessionIdentifier:v10 dedIdentifier:v9];

  [(DEDBugSession *)self willPerformOperationWithID:v11 type:2 options:v7];
  v12 = [DEDDeferredExtensionInfo alloc];
  v13 = [(DEDBugSession *)self identifier];
  v14 = [MEMORY[0x277CBEAA8] distantFuture];
  v15 = [(DEDDeferredExtensionInfo *)v12 initWithBugSessionIdentifier:v13 dedIdentifier:v9 runOnDate:v14 withGracePeriod:0.0];

  [(DEDDeferredExtensionInfo *)v15 setRequiresClassBDataAccess:1];
  [(DEDDeferredExtensionInfo *)v15 setParameters:v7];

  [(DEDDeferredExtensionInfo *)v15 schedule];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeAttachment:(id)a3
{
  v4 = a3;
  v5 = [v4 extensionID];

  if (v5)
  {
    v6 = [v4 rootURL];
    v7 = [v6 lastPathComponent];
    [(DEDBugSession *)self terminateExtension:v7 withInfo:0];
  }

  else
  {
    v8 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [DEDBugSession removeAttachment:];
    }
  }
}

- (void)cancelDiagnosticExtension:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];

  if (v5)
  {
    v6 = [v4 identifier];
    [(DEDBugSession *)self cancelDiagnosticExtensionWithIdentifier:v6];
  }

  else
  {
    v7 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [DEDBugSession cancelDiagnosticExtension:];
    }
  }
}

- (void)cancelDiagnosticExtensionWithIdentifier:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DEDBugSession *)self identifierManager];
  v6 = [v5 knownIdentifiersForExtensionIdentifier:v4];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 stringValue];
        [(DEDBugSession *)self terminateExtension:v13 withInfo:0];

        v14 = [(DEDBugSession *)self identifierManager];
        [v14 revokeIdentifier:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  [(DEDBugSession *)self save];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)cancelDiagnosticExtensionWithIdentifier:(id)a3 invocationNumber:(int64_t)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4 && ![(DEDBugSession *)self hasCapability:@"enhanced-execution"])
  {
    v9 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v9, OS_LOG_TYPE_DEFAULT, "Cancelling a non-zero invocation requires enhanced execution.", buf, 2u);
    }
  }

  else
  {
    v7 = [(DEDBugSession *)self identifierManager];
    v8 = [v7 knownIdentifiersForExtensionIdentifier:v6];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          if ([v14 invocationNumber] == a4)
          {
            [(DEDBugSession *)self cancelDiagnosticExtensionWithDEDExtensionIdentifier:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v11);
    }

    [(DEDBugSession *)self save];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)cancelDiagnosticExtensionWithDEDExtensionIdentifier:(id)a3
{
  v4 = a3;
  if ([(DEDBugSession *)self hasCapability:@"enhanced-execution"])
  {
    v5 = [(DEDBugSession *)self identifierManager];
    v6 = [v5 isKnownIdentifier:v4];

    if (v6)
    {
      v7 = [v4 stringValue];
      [(DEDBugSession *)self terminateExtension:v7 withInfo:0];

      v8 = [(DEDBugSession *)self identifierManager];
      [v8 revokeIdentifier:v4];

      [(DEDBugSession *)self save];
    }

    else
    {
      v10 = [(DEDBugSession *)self log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(DEDBugSession *)v4 cancelDiagnosticExtensionWithDEDExtensionIdentifier:?];
      }
    }
  }

  else
  {
    v9 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DEDBugSession cancelDiagnosticExtensionWithDEDExtensionIdentifier:];
    }
  }
}

- (void)_terminateExtensionWithIdentifier:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v8 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [DEDBugSession _terminateExtensionWithIdentifier:info:];
    }
  }

  worker = self->_worker;
  v10 = [(DEDBugSession *)self identifier];
  [(DEDWorkerProtocol *)worker terminateExtension:v6 info:v7 session:v10];
}

- (void)commit
{
  if ([(DEDBugSession *)self isTarget])
  {
    [(DEDBugSession *)self clearNotification];
    v3 = [(DEDBugSession *)self pendingOperations];
    objc_sync_enter(v3);
    v4 = [(DEDBugSession *)self pendingOperations];
    v5 = [DEDBugSessionOperation hashingKeyWithId:@"finishOperation" type:1000];
    v6 = [v4 objectForKey:v5];

    objc_sync_exit(v3);
    if (v6)
    {
      v7 = [(DEDBugSession *)self log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "received commit more than once", buf, 2u);
      }

      return;
    }

    [(DEDBugSession *)self willPerformOperationWithID:@"finishOperation" type:1000 options:0];
    [(DEDBugSession *)self save];
  }

  worker = self->_worker;
  v9 = [(DEDBugSession *)self identifier];
  [(DEDWorkerProtocol *)worker commitSession:v9];
}

- (void)cancel
{
  v33 = *MEMORY[0x277D85DE8];
  if ([(DEDBugSession *)self isTarget])
  {
    [(DEDBugSession *)self clearNotification];
    [(DEDBugSession *)self willPerformOperationWithID:@"cancelOperation" type:2000 options:MEMORY[0x277CBEC10]];
    [(DEDBugSession *)self save];
    v3 = [(DEDBugSession *)self ongoingExtensionCollectionOperations];
    v4 = [(DEDBugSession *)self scheduledDeferredExtensionCollectionOperations];
    if ([v3 count] || objc_msgSend(v4, "count"))
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v5 = v3;
      v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v28;
        do
        {
          v9 = 0;
          do
          {
            if (*v28 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [(DEDBugSession *)self cancelDiagnosticExtensionWithIdentifier:*(*(&v27 + 1) + 8 * v9++)];
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v7);
      }

      v10 = +[DEDDeferredExtensionInfo allInfo];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = v4;
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        do
        {
          v15 = 0;
          do
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [v10 objectForKey:{*(*(&v23 + 1) + 8 * v15), v23}];
            v17 = v16;
            if (v16)
            {
              v18 = [v16 dedIdentifier];
              [(DEDBugSession *)self cancelDiagnosticExtensionWithDEDExtensionIdentifier:v18];

              [v17 unschedule];
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
        }

        while (v13);
      }
    }

    else
    {
      [(DEDBugSession *)self _cancel];
    }
  }

  else
  {
    v19 = [(DEDBugSession *)self worker];
    v20 = [(DEDBugSession *)self identifier];
    [v19 cancelSession:v20];

    [(DEDBugSession *)self cleanup];
  }

  v21 = [(DEDBugSession *)self identifierManager];
  [v21 reset];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)adoptFiles:(id)a3 withCompletion:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(DEDBugSession *)self adoptFilesCompletions];
    v9 = MEMORY[0x24C1E5320](v7);
    [v8 insertObject:v9 atIndex:0];
  }

  v10 = objc_alloc_init(DEDAttachmentHandler);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(DEDAttachmentHandler *)v10 identifierForAdoptingFile:*(*(&v21 + 1) + 8 * v15), v21];
        if (v16)
        {
          v17 = [(DEDBugSession *)self filePromises];
          [v17 addObject:v16];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  worker = self->_worker;
  v19 = [(DEDBugSession *)self identifier];
  [(DEDWorkerProtocol *)worker adoptFiles:v11 forSession:v19];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)scheduleNotification
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 deviceIdentifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)clearNotification
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 deviceIdentifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)loadTextDataForExtensions:(id)a3 localization:(id)a4 completion:(id)a5
{
  v22[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(DEDBugSession *)self hasCapability:@"enhanced-execution-v2"])
  {
    if (v10)
    {
      [(DEDBugSession *)self setDeTextDataLoadCompletion:v10];
    }

    worker = self->_worker;
    v12 = [(DEDBugSession *)self identifier];
    [(DEDWorkerProtocol *)worker loadTextDataForExtensions:v8 localization:v9 sessionID:v12];
  }

  else
  {
    v13 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [DEDBugSession loadTextDataForExtensions:? localization:? completion:?];
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Session does not have capability %@", @"enhanced-execution-v2", *MEMORY[0x277CCA450]];
    v22[0] = v14;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

    v15 = MEMORY[0x277CCA9B8];
    v16 = +[DEDConfiguration sharedInstance];
    v17 = [v16 errorDomain];
    v18 = [v15 errorWithDomain:v17 code:103 userInfo:v12];

    v19 = [MEMORY[0x277CBEB98] set];
    v10[2](v10, v19, v18);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)didLoadTextDataForExtensions:(id)a3 localization:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 allObjects];
  [(DEDBugSession *)self updateCachedExtensionsWithLocalizedTextData:v8];

  v9 = [(DEDBugSession *)self deTextDataLoadCompletion];

  if (v9)
  {
    v10 = [(DEDBugSession *)self deTextDataLoadCompletion];
    v11 = [v10 copy];

    [(DEDBugSession *)self setDeTextDataLoadCompletion:0];
    v12 = [(DEDBugSession *)self callbackQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __59__DEDBugSession_didLoadTextDataForExtensions_localization___block_invoke;
    v16[3] = &unk_278F653F8;
    v18 = v11;
    v17 = v6;
    v13 = v11;
    dispatch_async(v12, v16);
  }

  else
  {
    client = self->_client;
    v15 = [(DEDBugSession *)self identifier];
    [(DEDClientProtocol *)client didLoadTextDataForExtensions:v6 localization:v7 session:v15];
  }
}

- (void)pong
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 shortDescription];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __21__DEDBugSession_pong__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) identifier];
  (*(v1 + 16))(v1, v2);
}

- (void)supportsDiagnostics:(id)a3
{
  v4 = a3;
  v5 = [(DEDBugSession *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DEDBugSession supportsDiagnostics:?];
  }

  [(DEDBugSession *)self populateLocalizedTextDataForExtensions:v4];
  v6 = [(DEDBugSession *)self deListCompletions];
  v7 = [v6 lastObject];

  if (v7)
  {
    v8 = [(DEDBugSession *)self deListCompletions];
    [v8 removeLastObject];

    v9 = [(DEDBugSession *)self hashExtensions:v4];
    [(DEDBugSession *)self setCachedExtensions:v9];

    v10 = [(DEDBugSession *)self callbackQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __37__DEDBugSession_supportsDiagnostics___block_invoke;
    v13[3] = &unk_278F653F8;
    v15 = v7;
    v14 = v4;
    dispatch_async(v10, v13);

    v11 = v15;
  }

  else
  {
    client = self->_client;
    v11 = [(DEDBugSession *)self identifier];
    [(DEDClientProtocol *)client deviceSupportsDiagnosticExtensions:v4 session:v11];
  }
}

- (void)didAdoptFilesWithError:(id)a3
{
  v4 = a3;
  v5 = [(DEDBugSession *)self adoptFilesCompletions];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(DEDBugSession *)self adoptFilesCompletions];
    v8 = [v7 lastObject];

    v9 = [(DEDBugSession *)self adoptFilesCompletions];
    [v9 removeLastObject];

    v10 = [(DEDBugSession *)self callbackQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __40__DEDBugSession_didAdoptFilesWithError___block_invoke;
    v14[3] = &unk_278F653F8;
    v16 = v8;
    v15 = v4;
    v11 = v8;
    dispatch_async(v10, v14);
  }

  else
  {
    client = self->_client;
    v13 = [(DEDBugSession *)self identifier];
    [(DEDClientProtocol *)client didAdoptFilesWithError:v4 forSession:v13];
  }
}

- (void)compressionProgress:(unint64_t)a3 total:(unint64_t)a4
{
  client = self->_client;
  v8 = [(DEDBugSession *)self identifier];
  [(DEDClientProtocol *)client compressionProgress:a3 total:a4 sessionID:v8];

  v9 = [(DEDBugSession *)self uploadDelegate];
  if (v9)
  {
    v10 = v9;
    v11 = [(DEDBugSession *)self uploadDelegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(DEDBugSession *)self callbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __43__DEDBugSession_compressionProgress_total___block_invoke;
      block[3] = &unk_278F65420;
      block[4] = self;
      block[5] = a3;
      block[6] = a4;
      dispatch_async(v13, block);
    }
  }
}

void __43__DEDBugSession_compressionProgress_total___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uploadDelegate];
  [v2 compressionProgress:*(a1 + 40) total:*(a1 + 48) session:*(a1 + 32)];
}

- (void)uploadProgress:(unint64_t)a3 total:(unint64_t)a4
{
  client = self->_client;
  v8 = [(DEDBugSession *)self identifier];
  [(DEDClientProtocol *)client uploadProgress:a3 total:a4 sessionID:v8];

  v9 = [(DEDBugSession *)self uploadDelegate];

  if (v9)
  {
    v10 = [(DEDBugSession *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__DEDBugSession_uploadProgress_total___block_invoke;
    block[3] = &unk_278F65420;
    block[4] = self;
    block[5] = a3;
    block[6] = a4;
    dispatch_async(v10, block);
  }
}

void __38__DEDBugSession_uploadProgress_total___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uploadDelegate];
  [v2 uploadProgress:*(a1 + 40) total:*(a1 + 48) session:*(a1 + 32)];
}

- (void)didFinishUploadingWithError:(id)a3
{
  v4 = a3;
  client = self->_client;
  v6 = [(DEDBugSession *)self identifier];
  [(DEDClientProtocol *)client didFinishUploadingWithError:v4 sessionID:v6];

  v7 = [(DEDBugSession *)self uploadDelegate];
  if (v7)
  {
    v8 = v7;
    v9 = [(DEDBugSession *)self uploadDelegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(DEDBugSession *)self callbackQueue];
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __45__DEDBugSession_didFinishUploadingWithError___block_invoke;
      v15 = &unk_278F65448;
      v16 = self;
      v17 = v4;
      dispatch_async(v11, &v12);
    }
  }

  [(DEDBugSession *)self didFinishAllUploads:v12];
}

void __45__DEDBugSession_didFinishUploadingWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uploadDelegate];
  [v2 bugSession:*(a1 + 32) didFinishUploadingWithError:*(a1 + 40)];
}

- (void)didCommit
{
  client = self->_client;
  v4 = [(DEDBugSession *)self identifier];
  [(DEDClientProtocol *)client didCommitSession:v4];

  [(DEDBugSession *)self setFinisherDidCommit:1];
}

- (void)finishedDiagnosticWithIdentifier:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_client)
  {
    v8 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "_finishedDiagnosticWithIdentifier without client", buf, 2u);
    }
  }

  [v7 setFromBugSession:self];
  [(DEDBugSession *)self didFinishOperation:1 withIdentifier:v6];
  if ([(DEDBugSession *)self shouldCollectDiagnosticWithId:v6])
  {
    v9 = [(DEDBugSession *)self ongoingCompletionHandlers];
    v10 = [v9 objectForKeyedSubscript:v6];

    v11 = [(DEDBugSession *)self ongoingCompletionHandlers];
    [v11 removeObjectForKey:v6];

    v12 = [(DEDBugSession *)self nextCompletionBlockForIdentifier:v6];
    v13 = [(DEDBugSession *)self finisher];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [(DEDBugSession *)self finisher];
      [v15 didCollectAttachmentGroup:v7];
    }

    if (v12 | v10)
    {
      v16 = [(DEDBugSession *)self callbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__DEDBugSession_finishedDiagnosticWithIdentifier_result___block_invoke;
      block[3] = &unk_278F65470;
      v28 = v12;
      v27 = v7;
      v29 = v10;
      dispatch_async(v16, block);

      v17 = v28;
    }

    else
    {
      client = self->_client;
      v17 = [(DEDBugSession *)self identifier];
      [(DEDClientProtocol *)client finishedDiagnosticWithIdentifier:v6 result:v7 session:v17];
    }
  }

  else
  {
    v18 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v18, OS_LOG_TYPE_DEFAULT, "DE has finished but should be aborted, will delete all files", buf, 2u);
    }

    [(DEDBugSession *)self _terminateExtensionWithIdentifier:v6 info:0];
  }

  if ([(DEDBugSession *)self isTarget])
  {
    if ([(DEDBugSession *)self readyToCancel])
    {
      [(DEDBugSession *)self _cancel];
    }

    else
    {
      if ([(DEDBugSession *)self readyToNotify])
      {
        worker = self->_worker;
        v21 = [(DEDBugSession *)self identifier];
        [(DEDWorkerProtocol *)worker scheduleNotificationForSession:v21];
      }

      else
      {
        if (![(DEDBugSession *)self readyToFinish])
        {
          goto LABEL_24;
        }

        v22 = self->_worker;
        v21 = [(DEDBugSession *)self identifier];
        [(DEDWorkerProtocol *)v22 commitSession:v21];
      }

      v23 = [(DEDBugSession *)self finisher];
      v24 = objc_opt_respondsToSelector();

      if (v24)
      {
        v25 = [(DEDBugSession *)self finisher];
        [v25 didFinishAllCollections];
      }
    }
  }

LABEL_24:
}

uint64_t __57__DEDBugSession_finishedDiagnosticWithIdentifier_result___block_invoke(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4]);
  }

  result = a1[6];
  if (result)
  {
    v4 = a1[4];
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)didGetState:(int64_t)a3 info:(id)a4
{
  v6 = a4;
  v7 = [(DEDBugSession *)self sessionStateCompletionBlock];

  if (v7)
  {
    v8 = [(DEDBugSession *)self sessionStateCompletionBlock];
    v9 = [v8 copy];

    [(DEDBugSession *)self setSessionStateCompletionBlock:0];
    v10 = [(DEDBugSession *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__DEDBugSession_didGetState_info___block_invoke;
    block[3] = &unk_278F65498;
    v16 = v9;
    v17 = a3;
    v15 = v6;
    v11 = v9;
    dispatch_async(v10, block);
  }

  else
  {
    v12 = [(DEDBugSession *)self client];
    v13 = [(DEDBugSession *)self identifier];
    [v12 didGetState:a3 info:v6 sessionID:v13];
  }
}

- (void)hasCollected:(id)a3 isCollecting:(id)a4 identifiers:(id)a5
{
  v67 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(DEDBugSession *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [DEDBugSession hasCollected:v8 isCollecting:? identifiers:?];
  }

  v44 = v10;

  v12 = [(DEDBugSession *)self log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [DEDBugSession hasCollected:v9 isCollecting:? identifiers:?];
  }

  [(DEDBugSession *)self populateLocalizedTextDataForExtensions:v9];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v62;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v62 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v61 + 1) + 8 * i);
        v19 = [v18 extensionID];

        if (v19)
        {
          v20 = [(DEDBugSession *)self filePromises];
          v21 = [v18 rootURL];
          v22 = [v21 lastPathComponent];
          [v20 addObject:v22];
        }

        else
        {
          v20 = [(DEDBugSession *)self log];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [DEDBugSession hasCollected:v60 isCollecting:v20 identifiers:?];
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v61 objects:v66 count:16];
    }

    while (v15);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v23 = v9;
  v24 = [v23 countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v56;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v56 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v55 + 1) + 8 * j);
        v29 = [(DEDBugSession *)self filePromises];
        v30 = [v28 identifier];
        [v29 addObject:v30];
      }

      v25 = [v23 countByEnumeratingWithState:&v55 objects:v65 count:16];
    }

    while (v25);
  }

  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __55__DEDBugSession_hasCollected_isCollecting_identifiers___block_invoke;
  v54[3] = &unk_278F654C0;
  v54[4] = self;
  [v13 enumerateObjectsUsingBlock:v54];
  if (v44)
  {
    v31 = [[DEDExtensionIdentifierManager alloc] initWithExtensionIdentifiers:v44];
    [(DEDBugSession *)self setIdentifierManager:v31];
  }

  v32 = [(DEDBugSession *)self statusCompletionBlock];
  if (v32)
  {
  }

  else
  {
    v33 = [(DEDBugSession *)self syncCompletionBlock];

    if (!v33)
    {
      client = self->_client;
      v41 = [(DEDBugSession *)self identifier];
      if (v44)
      {
        [(DEDClientProtocol *)client hasCollected:v13 isCollecting:v23 withIdentifiers:v44 inSession:v41];
      }

      else
      {
        [(DEDClientProtocol *)client hasCollected:v13 isCollecting:v23 inSession:v41];
      }

      goto LABEL_32;
    }
  }

  v34 = [(DEDBugSession *)self statusCompletionBlock];

  if (v34)
  {
    v35 = [(DEDBugSession *)self statusCompletionBlock];
    [(DEDBugSession *)self setStatusCompletionBlock:0];
    v36 = [(DEDBugSession *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__DEDBugSession_hasCollected_isCollecting_identifiers___block_invoke_2;
    block[3] = &unk_278F654E8;
    v53 = v35;
    v51 = v13;
    v52 = v23;
    v37 = v35;
    dispatch_async(v36, block);
  }

  v38 = [(DEDBugSession *)self syncCompletionBlock];

  if (v38)
  {
    v39 = [(DEDBugSession *)self syncCompletionBlock];
    [(DEDBugSession *)self setSyncCompletionBlock:0];
    v40 = [(DEDBugSession *)self callbackQueue];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __55__DEDBugSession_hasCollected_isCollecting_identifiers___block_invoke_3;
    v45[3] = &unk_278F65510;
    v49 = v39;
    v46 = v13;
    v47 = v23;
    v48 = v44;
    v41 = v39;
    dispatch_async(v40, v45);

LABEL_32:
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)terminateExtension:(id)a3 withInfo:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v26 = a4;
  v7 = [(DEDBugSession *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = v6;
    _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "Will terminate extension [%{public}@]", buf, 0xCu);
  }

  v8 = [[DEDExtensionIdentifier alloc] initWithString:v6];
  v9 = +[DEDDeferredExtensionInfo allInfo];
  v10 = [v9 allValues];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __45__DEDBugSession_terminateExtension_withInfo___block_invoke;
  v31[3] = &unk_278F65538;
  v25 = v8;
  v32 = v25;
  v33 = self;
  v11 = [v10 ded_selectItemsPassingTest:v31];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        [v17 unschedule];
        v18 = [(DEDBugSession *)self scheduledDeferredExtensionCollectionOperations];
        v19 = [v17 activityString];
        v20 = [v18 containsObject:v19];

        if (v20)
        {
          v21 = [v17 activityString];
          [(DEDBugSession *)self didFinishOperation:2 withIdentifier:v21];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v14);
  }

  v22 = [(DEDBugSession *)self identifierManager];
  [v22 revokeIdentifier:v25];

  v23 = [(DEDBugSession *)self filePromises];
  [v23 removeObject:v6];

  [(DEDBugSession *)self willPerformOperationWithID:v6 type:0 options:v26];
  [(DEDBugSession *)self save];
  [(DEDBugSession *)self _terminateExtensionWithIdentifier:v6 info:v26];

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __45__DEDBugSession_terminateExtension_withInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 dedIdentifier];
  if ([v4 isEqual:*(a1 + 32)])
  {
    v5 = [v3 bugSessionIdentifier];
    v6 = [*(a1 + 40) identifier];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)didCancel
{
  client = self->_client;
  v4 = [(DEDBugSession *)self identifier];
  [(DEDClientProtocol *)client didCancelSession:v4];

  if ([(DEDBugSession *)self isTarget])
  {

    [(DEDBugSession *)self didFinishOperation:2000 withIdentifier:@"cancelOperation"];
  }
}

- (OS_dispatch_queue)diskAccessQueue
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(DEDBugSession *)v2 _diskAccessQueue];

  if (!v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCAD78] UUID];
    v6 = [v5 UUIDString];
    v7 = [v4 stringWithFormat:@"com.apple.ded.disk-access-queue-%@", v6];

    v8 = [(DEDBugSession *)v2 log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(DEDBugSession *)v2 identifier];
      *buf = 138543618;
      v16 = v7;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "Creating diskAccessQueue [%{public}@] for session [%{public}@]", buf, 0x16u);
    }

    v10 = v7;
    v11 = dispatch_queue_create([v7 UTF8String], 0);
    [(DEDBugSession *)v2 set_diskAccessQueue:v11];
  }

  objc_sync_exit(v2);

  v12 = [(DEDBugSession *)v2 _diskAccessQueue];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_cancel
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [(DEDBugSession *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(DEDBugSession *)self identifier];
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_248AD7000, v3, OS_LOG_TYPE_DEFAULT, "will cancel session [%{public}@]", &v6, 0xCu);
  }

  [(DEDBugSession *)self cleanup];
  [(DEDBugSession *)self didCancel];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setConfig:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DEDBugSession *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(DEDBugSession *)self identifier];
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] setConfig", &v10, 0xCu);
  }

  if ([(DEDBugSession *)self hasCapability:@"mutable-bug-session"])
  {
    if ([v4 finishingMove])
    {
      [(DEDBugSession *)self set_finisher:0];
      [(DEDBugSession *)self set_notifier:0];
      v7 = v4;
      p_super = &self->_config->super;
      self->_config = v7;
    }

    else
    {
      p_super = [(DEDBugSession *)self log];
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_248AD7000, p_super, OS_LOG_TYPE_INFO, "BugSession configuration has unset Finishing Move. Will not reset finisher", &v10, 2u);
      }
    }
  }

  else
  {
    p_super = [(DEDBugSession *)self log];
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [DEDBugSession setConfig:?];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didStart
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(DEDBugSession *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(DEDBugSession *)self identifier];
    v13 = 138543362;
    v14 = v4;
    _os_log_impl(&dword_248AD7000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] did start", &v13, 0xCu);
  }

  if ([(DEDBugSession *)self isTarget])
  {
    v5 = [(DEDBugSession *)self pendingOperations];
    objc_sync_enter(v5);
    v6 = [DEDBugSessionOperation hashingKeyWithId:@"cancelOperation" type:2000];
    v7 = [(DEDBugSession *)self pendingOperations];
    v8 = [v7 objectForKeyedSubscript:v6];

    if (v8)
    {
      v9 = [(DEDBugSession *)self log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(DEDBugSession *)self identifier];
        v13 = 138543362;
        v14 = v10;
        _os_log_impl(&dword_248AD7000, v9, OS_LOG_TYPE_DEFAULT, "found cancel operation for restarted session [%{public}@], will remove", &v13, 0xCu);
      }

      v11 = [(DEDBugSession *)self pendingOperations];
      [v11 removeObjectForKey:v6];
    }

    objc_sync_exit(v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)cleanupFinishedUploads:(BOOL)a3
{
  v3 = a3;
  v55 = *MEMORY[0x277D85DE8];
  v5 = [(DEDBugSession *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(DEDBugSession *)self identifier];
    *buf = 138543362;
    v49 = v6;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "will cleanup session [%{public}@]", buf, 0xCu);
  }

  if ([(DEDBugSession *)self isTarget])
  {
    v42 = v3;
    [(DEDBugSession *)self removeFromStore];
    v7 = objc_alloc_init(DEDAttachmentHandler);
    v8 = [(DEDBugSession *)self identifier];
    [(DEDAttachmentHandler *)v7 removeDirectoryForBugSessionIdentifier:v8];

    v9 = [(DEDBugSession *)self finisher];
    if (v9)
    {
      v10 = v9;
      v11 = [(DEDBugSession *)self finisher];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __40__DEDBugSession_cleanupFinishedUploads___block_invoke;
        block[3] = &unk_278F653D0;
        block[4] = self;
        dispatch_async(v13, block);
      }
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v14 = +[DEDDeferredExtensionInfo allInfo];
    v15 = [v14 allValues];

    v16 = [v15 countByEnumeratingWithState:&v43 objects:v54 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v44;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v44 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v43 + 1) + 8 * i);
          v21 = [v20 bugSessionIdentifier];
          v22 = [(DEDBugSession *)self identifier];
          v23 = [v21 isEqualToString:v22];

          if (v23)
          {
            [v20 unschedule];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v43 objects:v54 count:16];
      }

      while (v17);
    }

    v3 = v42;
  }

  if ([(DEDBugSession *)self isTarget])
  {
    goto LABEL_21;
  }

  v24 = [(DEDBugSession *)self worker];
  if ([v24 transportType] == 3)
  {

LABEL_21:
    v27 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [DEDBugSession cleanupFinishedUploads:];
    }

    v28 = +[DEDDaemon sharedInstance];
    v29 = [v28 controller];

    goto LABEL_24;
  }

  v25 = [(DEDBugSession *)self worker];
  v26 = [v25 transportType];

  if (v26 == 4)
  {
    goto LABEL_21;
  }

  v39 = [(DEDBugSession *)self worker];
  v40 = [v39 transportType];

  if (v40 == 2)
  {
    v41 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v41, OS_LOG_TYPE_INFO, "Cleaning up app side", buf, 2u);
    }

    v29 = +[DEDManager sharedInstance];
  }

  else
  {
    v29 = 0;
  }

LABEL_24:
  if (v3)
  {
    v30 = [(DEDBugSession *)self identifier];
    [v29 didFinishSessionWithIdentifier:v30];
  }

  v31 = [(DEDBugSession *)self identifier];
  [v29 removeSessionWithIdentifier:v31];

  v32 = [(DEDBugSession *)self log];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [(DEDBugSession *)self identifier];
    v34 = [v29 sessions];
    v35 = [v34 count];
    v36 = [v29 sessions];
    v37 = [v36 allKeys];
    *buf = 138543874;
    v49 = v33;
    v50 = 2048;
    v51 = v35;
    v52 = 2114;
    v53 = v37;
    _os_log_impl(&dword_248AD7000, v32, OS_LOG_TYPE_DEFAULT, "Removed bug session from memory (%{public}@), [%lu] remaining sessions: %{public}@", buf, 0x20u);
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __40__DEDBugSession_cleanupFinishedUploads___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) finisher];
  [v1 cleanup];
}

- (void)didFinishAllUploads
{
  if ([(DEDBugSession *)self isTarget])
  {
    [(DEDBugSession *)self didFinishOperation:1000 withIdentifier:@"finishOperation"];
    v3 = [MEMORY[0x277CBEAA8] date];
    v4 = [(DEDBugSession *)self uploadStartTime];
    [v3 timeIntervalSinceDate:v4];
    v6 = v5;

    [(DEDBugSession *)self setUploadStartTime:0];
    v7 = objc_opt_new();
    v8 = [(DEDBugSession *)self identifier];
    v9 = [v7 directoryForBugSessionIdentifier:v8];

    v10 = [MEMORY[0x277D051E0] getDirectorySize:v9];
    v11 = [(DEDBugSession *)self config];
    +[DEDAnalytics finisherDidCompleteWithDuration:uploadedByteCount:usingFinishingMove:withState:](DEDAnalytics, "finisherDidCompleteWithDuration:uploadedByteCount:usingFinishingMove:withState:", v6, v10, [v11 finishingMove], 1);

    [DEDAnalytics didCompleteBugSessionWithState:1];
  }

  [(DEDBugSession *)self cleanupFinishedUploads:1];
}

- (BOOL)readyToCancel
{
  v3 = [(DEDBugSession *)self pendingOperations];
  objc_sync_enter(v3);
  v4 = [(DEDBugSession *)self pendingOperations];
  v5 = [v4 allValues];
  if ([v5 count] == 1)
  {
    v6 = [(DEDBugSession *)self pendingOperations];
    v7 = [v6 allValues];
    v8 = [v7 firstObject];
    v9 = [v8 type] == 2000;
  }

  else
  {
    v9 = 0;
  }

  objc_sync_exit(v3);
  return v9;
}

- (BOOL)readyToFinish
{
  v3 = [(DEDBugSession *)self pendingOperations];
  objc_sync_enter(v3);
  v4 = [(DEDBugSession *)self pendingOperations];
  v5 = [v4 allValues];
  if ([v5 count] == 1)
  {
    v6 = [(DEDBugSession *)self pendingOperations];
    v7 = [v6 allValues];
    v8 = [v7 firstObject];
    v9 = [v8 type] == 1000;
  }

  else
  {
    v9 = 0;
  }

  objc_sync_exit(v3);
  return v9;
}

- (BOOL)isRunningDE:(id)a3
{
  v4 = a3;
  if ([(DEDBugSession *)self isTarget])
  {
    v5 = [(DEDBugSession *)self pendingOperations];
    objc_sync_enter(v5);
    v6 = [(DEDBugSession *)self pendingOperations];
    v7 = [DEDBugSessionOperation hashingKeyWithId:v4 type:1];
    v8 = [v6 objectForKey:v7];

    v9 = v8 != 0;
    objc_sync_exit(v5);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldCollectDiagnosticWithId:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(DEDBugSession *)self isTarget])
  {
    goto LABEL_6;
  }

  v5 = [(DEDBugSession *)self pendingOperations];
  objc_sync_enter(v5);
  v6 = [(DEDBugSession *)self pendingOperations];
  v7 = [DEDBugSessionOperation hashingKeyWithId:v4 type:0];
  v8 = [v6 objectForKey:v7];

  objc_sync_exit(v5);
  if (v8)
  {
    v9 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 hashingKey];
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&dword_248AD7000, v9, OS_LOG_TYPE_DEFAULT, "found kill DE operation [%{public}@]", &v14, 0xCu);
    }

    v11 = 0;
  }

  else
  {
LABEL_6:
    v11 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)didTerminateDiagnosticExtension:(id)a3 info:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(DEDBugSession *)self didFinishOperation:0 withIdentifier:v7];
  v12 = [[DEDExtensionIdentifier alloc] initWithString:v7];
  v8 = [(DEDBugSession *)self identifierManager];
  [v8 revokeIdentifier:v12];

  [(DEDBugSession *)self save];
  [(DEDBugSession *)self notifyPromiseCancellationIfNeeded:v7 info:v6];

  if ([(DEDBugSession *)self isTarget])
  {
    if ([(DEDBugSession *)self readyToCancel])
    {
      [(DEDBugSession *)self _cancel];
      goto LABEL_9;
    }

    if ([(DEDBugSession *)self readyToNotify])
    {
      worker = self->_worker;
      v10 = [(DEDBugSession *)self identifier];
      [(DEDWorkerProtocol *)worker scheduleNotificationForSession:v10];
    }

    else
    {
      if (![(DEDBugSession *)self readyToFinish])
      {
        goto LABEL_9;
      }

      v11 = self->_worker;
      v10 = [(DEDBugSession *)self identifier];
      [(DEDWorkerProtocol *)v11 commitSession:v10];
    }
  }

LABEL_9:
}

- (void)notifyPromiseCancellationIfNeeded:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(DEDBugSession *)self isTarget])
  {
    v8 = [(DEDBugSession *)self finisher];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(DEDBugSession *)self finisher];
      [v10 didCancelCollectionOnExtension:v6];
    }

    v11 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [DEDBugSession notifyPromiseCancellationIfNeeded:v6 info:self];
    }

    v12 = +[DEDDaemon sharedInstance];
    v13 = [(DEDBugSession *)self identifier];
    [v12 teardownDeferredDiagnosticsWithIdentifier:v6 parameters:v7 session:v13];
  }
}

- (id)ongoingCollectOperationsWithOperations:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 ded_selectItemsPassingTest:&__block_literal_global_138];
  v6 = [v5 ded_mapWithBlock:&__block_literal_global_141];
  v7 = [(DEDBugSession *)self log];
  v8 = [(DEDBugSession *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v14 = [(DEDBugSession *)self identifier];
    *buf = 138412802;
    v19 = v14;
    v20 = 2112;
    v21 = v4;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEBUG, "BS [%@] Pending operations %@, to kill %@", buf, 0x20u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__DEDBugSession_ongoingCollectOperationsWithOperations___block_invoke_142;
  v15[3] = &unk_278F65538;
  v16 = v6;
  v17 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v4 ded_rejectItemsPassingTest:v15];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __56__DEDBugSession_ongoingCollectOperationsWithOperations___block_invoke_142(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 type] == 1 || objc_msgSend(v3, "type") == 2) && (v4 = *(a1 + 32), objc_msgSend(v3, "identifier"), v5 = objc_claimAutoreleasedReturnValue(), LODWORD(v4) = objc_msgSend(v4, "containsObject:", v5), v5, v4))
  {
    v6 = *(a1 + 40);
    v7 = 1;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = v6;
      v9 = [v3 description];
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_INFO, "Found collect operation [%{public}@] marked for deletion", &v12, 0xCu);
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)ongoingExtensionCollectionOperations
{
  v3 = [(DEDBugSession *)self pendingOperations];
  objc_sync_enter(v3);
  v4 = [(DEDBugSession *)self pendingOperations];
  v5 = [v4 allValues];
  v6 = [(DEDBugSession *)self ongoingCollectOperationsWithOperations:v5];
  v7 = [v6 ded_selectItemsPassingTest:&__block_literal_global_144];
  v8 = [v7 valueForKeyPath:@"identifier"];

  objc_sync_exit(v3);

  return v8;
}

- (id)scheduledDeferredExtensionCollectionOperations
{
  v3 = [(DEDBugSession *)self pendingOperations];
  objc_sync_enter(v3);
  v4 = [(DEDBugSession *)self pendingOperations];
  v5 = [v4 allValues];
  v6 = [(DEDBugSession *)self ongoingCollectOperationsWithOperations:v5];
  v7 = [v6 ded_selectItemsPassingTest:&__block_literal_global_146];
  v8 = [v7 valueForKeyPath:@"identifier"];

  objc_sync_exit(v3);

  return v8;
}

- (void)didAdoptGroup:(id)a3
{
  v7 = a3;
  v4 = [(DEDBugSession *)self finisher];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(DEDBugSession *)self finisher];
    [v6 didAdoptAttachmentGroup:v7];
  }
}

- (int64_t)instanceType
{
  v3 = [(DEDBugSession *)self client];
  if (v3)
  {
  }

  else
  {
    v4 = [(DEDBugSession *)self worker];

    if (!v4)
    {
      v11 = [(DEDBugSession *)self log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [DEDBugSession instanceType];
      }

      return 0;
    }
  }

  v5 = [(DEDBugSession *)self client];
  if ([v5 transportType] == 4)
  {

    return 4;
  }

  v6 = [(DEDBugSession *)self client];
  v7 = [v6 transportType];

  if (v7 == 3)
  {
    return 4;
  }

  v9 = [(DEDBugSession *)self worker];
  v10 = [v9 transportType];

  if (v10 == 1)
  {
    return 3;
  }

  v12 = [(DEDBugSession *)self worker];
  if ([v12 transportType] == 3)
  {

    return 2;
  }

  v13 = [(DEDBugSession *)self worker];
  v14 = [v13 transportType];

  if (v14 == 4)
  {
    return 2;
  }

  v15 = [(DEDBugSession *)self worker];
  v16 = [v15 transportType];

  if (v16 != 2)
  {
    v17 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(DEDBugSession *)self instanceType];
    }

    return 0;
  }

  return 1;
}

- (BOOL)isTarget
{
  v2 = [(DEDBugSession *)self worker];
  v3 = [v2 transportType] == 1;

  return v3;
}

- (void)populateLocalizedTextDataForExtensions:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(DEDBugSession *)self hasLocalizedTextDataInCache])
  {
    v6 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [DEDBugSession populateLocalizedTextDataForExtensions:];
    }

    goto LABEL_17;
  }

  v5 = [(DEDBugSession *)self cachedExtensions];

  if (v5)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v21 = v4;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          v12 = [(DEDBugSession *)self cachedExtensions];
          v13 = [v11 identifier];
          v14 = [v12 objectForKeyedSubscript:v13];

          if (v14)
          {
            v15 = [(DEDBugSession *)self log];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              [(DEDBugSession *)v26 populateLocalizedTextDataForExtensions:v11];
            }

            v16 = [v14 localizedConsentText];
            [v11 setLocalizedConsentText:v16];

            v17 = [v14 localizedCustomerConsentText];
            [v11 setLocalizedCustomerConsentText:v17];

            v18 = [v14 localizedDataCollectedExplanation];
            [v11 setLocalizedDataCollectedExplanation:v18];

            v19 = [v14 localizedDataCollectedSummary];
            [v11 setLocalizedDataCollectedSummary:v19];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v8);
      v4 = v21;
    }

LABEL_17:
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)updateCachedExtensionsWithLocalizedTextData:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DEDBugSession *)self cachedExtensions];

  if (v5)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v22 = v4;
      v9 = 0;
      v10 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          v13 = [(DEDBugSession *)self cachedExtensions];
          v14 = [v12 identifier];
          v15 = [v13 objectForKeyedSubscript:v14];

          if (v15)
          {
            v16 = [(DEDBugSession *)self log];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              [(DEDBugSession *)v27 updateCachedExtensionsWithLocalizedTextData:v15];
            }

            v17 = [v12 localizedConsentText];
            [v15 setLocalizedConsentText:v17];

            v18 = [v12 localizedCustomerConsentText];
            [v15 setLocalizedCustomerConsentText:v18];

            v19 = [v12 localizedDataCollectedExplanation];
            [v15 setLocalizedDataCollectedExplanation:v19];

            v20 = [v12 localizedDataCollectedSummary];
            [v15 setLocalizedDataCollectedSummary:v20];

            v9 = 1;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);

      v4 = v22;
      if (v9)
      {
        [(DEDBugSession *)self setHasLocalizedTextDataInCache:1];
      }
    }

    else
    {
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)hashExtensions:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 identifier];
        [v4 setObject:v10 forKey:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)nextCompletionBlockForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DEDBugSession *)self deCompletions];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [v6 lastObject];
    if (v7)
    {
      [v6 removeLastObject];
      v8 = MEMORY[0x24C1E5320](v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)storeCollectionCompletion:(id)a3 forIdentifier:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(DEDBugSession *)self deCompletions];
  v8 = [v7 objectForKey:v6];

  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
  }

  v9 = [v12 copy];
  v10 = MEMORY[0x24C1E5320]();
  [v8 addObject:v10];

  v11 = [(DEDBugSession *)self deCompletions];
  [v11 setObject:v8 forKey:v6];
}

- (BOOL)hasCapability:(id)a3
{
  v4 = a3;
  v5 = [(DEDBugSession *)self config];
  v6 = [v5 requestedCapabilities];
  v7 = [v6 containsObject:v4];

  return v7;
}

- (id)notifier
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(DEDBugSession *)self _notifier];

  if (v3)
  {
    goto LABEL_25;
  }

  v4 = [(DEDBugSession *)self instanceType];
  if (v4 < 2)
  {
    p_super = [(DEDBugSession *)self log];
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [(DEDBugSession *)self notifier];
    }

    goto LABEL_20;
  }

  if (v4 - 2 >= 2)
  {
    if (v4 != 4)
    {
      goto LABEL_21;
    }

    p_super = [(DEDBugSession *)self client];
    if (([p_super conformsToProtocol:&unk_285B8EFF8]& 1) == 0)
    {
      goto LABEL_20;
    }

    v9 = [(DEDBugSession *)self client];
    v10 = [v9 conformsToProtocol:&unk_285B8A958];

    if (!v10)
    {
      goto LABEL_21;
    }

    v11 = [(DEDBugSession *)self client];
    goto LABEL_15;
  }

  v5 = [(DEDBugSession *)self config];
  v6 = [v5 notifyingMove];

  switch(v6)
  {
    case 1:
      v7 = DEDUserNotificationNotifier;
      goto LABEL_17;
    case 3:
      v11 = objc_alloc_init(DEDEnhancedLoggingNotifier);
LABEL_15:
      p_super = &v11->super;
      [(DEDBugSession *)self set_notifier:v11];
      goto LABEL_20;
    case 2:
      v7 = DEDFollowUpNotifier;
LABEL_17:
      v12 = [v7 alloc];
      v13 = [(DEDBugSession *)self config];
      v14 = [v12 initWithConfiguration:v13 session:self];
      [(DEDBugSession *)self set_notifier:v14];

      goto LABEL_21;
  }

  p_super = [(DEDBugSession *)self log];
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_248AD7000, p_super, OS_LOG_TYPE_DEFAULT, "Unknown notifier specified.", &v23, 2u);
  }

LABEL_20:

LABEL_21:
  v15 = [(DEDBugSession *)self _notifier];

  if (v15)
  {
    v16 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(DEDBugSession *)self _notifier];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v23 = 138543362;
      v24 = v19;
      _os_log_impl(&dword_248AD7000, v16, OS_LOG_TYPE_DEFAULT, "Using notifier [%{public}@]", &v23, 0xCu);
    }
  }

LABEL_25:
  v20 = [(DEDBugSession *)self _notifier];
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (BOOL)readyToNotify
{
  v3 = [(DEDBugSession *)self pendingOperations];
  objc_sync_enter(v3);
  v4 = [(DEDBugSession *)self pendingOperations];
  v5 = [v4 allValues];
  if ([v5 count] == 1)
  {
    v6 = [(DEDBugSession *)self pendingOperations];
    v7 = [v6 allValues];
    v8 = [v7 firstObject];
    v9 = [v8 type] == 100;
  }

  else
  {
    v9 = 0;
  }

  objc_sync_exit(v3);
  return v9;
}

- (void)presentNotificationOnFilingDevice
{
  v3 = [(DEDBugSession *)self notifier];
  v4 = [(DEDBugSession *)self identifier];
  [v3 presentNotificationForSession:v4];

  if ([(DEDBugSession *)self instanceType]== 3)
  {

    [(DEDBugSession *)self didFinishOperation:100 withIdentifier:@"notifyOperation"];
  }
}

- (void)idsInbound_presentNotificationOnFilingDevice
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 instanceType];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)idsInbound_didPresentNotificationOnFilingDevice
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 instanceType];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)clearNotificationOnFilingDevice
{
  v3 = [(DEDBugSession *)self notifier];
  v4 = [(DEDBugSession *)self identifier];
  [v3 removeNotificationForSession:v4];

  if ([(DEDBugSession *)self instanceType]== 3)
  {

    [(DEDBugSession *)self didFinishOperation:100 withIdentifier:@"notifyOperation"];
  }
}

- (void)idsInbound_clearNotificationOnFilingDevice
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 instanceType];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)idsInbound_didClearNotificationOnFilingDevice
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 instanceType];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeFromStore
{
  if ([(DEDBugSession *)self isTarget])
  {
    v3 = +[DEDPersistence sharedInstance];
    [v3 removeBugSession:self];
  }
}

- (void)save
{
  if ([(DEDBugSession *)self isTarget])
  {
    v3 = +[DEDPersistence sharedInstance];
    [v3 updateBugSession:self];
  }
}

- (void)willPerformOperationWithID:(id)a3 type:(int64_t)a4 options:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if ([(DEDBugSession *)self isTarget])
  {
    v10 = [(DEDBugSession *)self pendingOperations];
    objc_sync_enter(v10);
    v11 = objc_opt_new();
    [v11 setIdentifier:v8];
    [v11 setType:a4];
    [v11 setOptions:v9];
    v12 = [(DEDBugSession *)self pendingOperations];
    v13 = [v11 hashingKey];
    [v12 setObject:v11 forKey:v13];

    v14 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v11 hashingKey];
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_248AD7000, v14, OS_LOG_TYPE_INFO, "will persist operation [%{public}@]", &v17, 0xCu);
    }

    objc_sync_exit(v10);
  }

  [(DEDBugSession *)self _logOperationQueue];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)didFinishOperation:(int64_t)a3 withIdentifier:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([(DEDBugSession *)self isTarget])
  {
    v7 = [(DEDBugSession *)self pendingOperations];
    objc_sync_enter(v7);
    v8 = [(DEDBugSession *)self pendingOperations];
    v9 = [DEDBugSessionOperation hashingKeyWithId:v6 type:a3];
    [v8 removeObjectForKey:v9];

    objc_sync_exit(v7);
    if (a3 == 2000)
    {
      v10 = [(DEDBugSession *)self log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(DEDBugSession *)self identifier];
        v13 = 138543362;
        v14 = v11;
        _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_DEFAULT, "Did finish cancel operation on [%{public}@]", &v13, 0xCu);
      }
    }

    else
    {
      [(DEDBugSession *)self save];
    }
  }

  [(DEDBugSession *)self _logOperationQueue];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setUploadDelegate:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(DEDBugSession *)self instanceType]== 1)
  {
    v5 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(DEDBugSession *)self identifier];
      v9 = 138543618;
      v10 = v4;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "Setting uploadDelegate: [%{public}@] session [%{public}@]", &v9, 0x16u);
    }
  }

  v7 = self;
  objc_sync_enter(v7);
  [(DEDBugSession *)v7 set__uploadDelegate:v4];
  objc_sync_exit(v7);

  v8 = *MEMORY[0x277D85DE8];
}

- (DEDUploadStatusDelegate)uploadDelegate
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(DEDBugSession *)v2 __uploadDelegate];
  objc_sync_exit(v2);

  return v3;
}

- (void)_streamOperationQueue
{
  v3 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__DEDBugSession__streamOperationQueue__block_invoke;
  block[3] = &unk_278F653D0;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

uint64_t __38__DEDBugSession__streamOperationQueue__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _logOperationQueue];
  v2 = *(a1 + 32);

  return [v2 _streamOperationQueue];
}

- (void)_logOperationQueue
{
  v13 = *MEMORY[0x277D85DE8];
  if (_logOperationQueue_onceToken != -1)
  {
    [DEDBugSession _logOperationQueue];
  }

  if ([(DEDBugSession *)self isTarget])
  {
    v3 = [(DEDBugSession *)self pendingOperations];
    objc_sync_enter(v3);
    v4 = _logOperationQueue_opDebugLog;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = [(DEDBugSession *)self identifier];
      v7 = [(DEDBugSession *)self pendingOperations];
      v8 = [v7 allKeys];
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v8;
      _os_log_debug_impl(&dword_248AD7000, v4, OS_LOG_TYPE_DEBUG, "BS [%@] Operations %@", &v9, 0x16u);
    }

    objc_sync_exit(v3);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __35__DEDBugSession__logOperationQueue__block_invoke()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "ded-op-watch");
  v1 = _logOperationQueue_opDebugLog;
  _logOperationQueue_opDebugLog = v0;
}

+ (id)testingInstance
{
  v2 = objc_opt_new();

  return v2;
}

- (DEDUploadStatusDelegate)__uploadDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->___uploadDelegate);

  return WeakRetained;
}

- (id)stateInfo
{
  v2 = [(DEDBugSession *)self finisherWithState];
  v3 = [v2 additionalStateInfo];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  v6 = v5;

  return v5;
}

- (int64_t)state
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = [(DEDBugSession *)self pendingOperations];
  objc_sync_enter(v3);
  if ([(DEDBugSession *)self readyToFinish])
  {
    v4 = [(DEDBugSession *)self finisherWithState];
    v5 = [v4 isUploading];

    if ((v5 & 1) == 0)
    {
      v25 = [(DEDBugSession *)self finisherWithState];
      v26 = [v25 isCompressing];

      if ((v26 & 1) == 0)
      {
        v27 = [(DEDBugSession *)self finisherWithState];
        v28 = [v27 isUploading];

        if (v28)
        {
          v6 = 7;
          goto LABEL_29;
        }

        v30 = Log_4();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v33[0]) = 0;
          _os_log_impl(&dword_248AD7000, v30, OS_LOG_TYPE_DEFAULT, "Finisher not compressing, uploading or finished but session is ready to finish", v33, 2u);
        }
      }

      v6 = 5;
      goto LABEL_29;
    }

    v6 = 6;
  }

  else
  {
    v7 = [(DEDBugSession *)self pendingOperations];
    objc_sync_enter(v7);
    v8 = [(DEDBugSession *)self ongoingExtensionCollectionOperations];
    v9 = [v8 count];

    v10 = [(DEDBugSession *)self scheduledDeferredExtensionCollectionOperations];
    v11 = [v10 count];

    v12 = [(DEDBugSession *)self pendingOperations];
    v13 = [v12 count];

    v14 = [(DEDBugSession *)self isCancelling];
    v15 = [(DEDBugSession *)self pendingOperations];
    v16 = [DEDBugSessionOperation hashingKeyWithId:@"notifyOperation" type:100];
    v17 = [v15 objectForKey:v16];

    objc_sync_exit(v7);
    v18 = [(DEDBugSession *)self hasDirectory];
    v19 = [(DEDBugSession *)self hasStaleDirectory];
    v20 = DEDSessionStateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v33[0] = 67110656;
      v33[1] = v9 != 0;
      v34 = 1024;
      v35 = v11 != 0;
      v36 = 1024;
      v37 = v13 != 0;
      v38 = 1024;
      v39 = v18;
      v40 = 1024;
      v41 = v19;
      v42 = 1024;
      v43 = v14;
      v44 = 1024;
      v45 = v17 != 0;
      _os_log_debug_impl(&dword_248AD7000, v20, OS_LOG_TYPE_DEBUG, "IC: [%i] HDCO: [%i] HPO: [%i] HDIR: [%i] HSDIR [%i] IC [%i] HNO [%i]", v33, 0x2Cu);
    }

    v21 = v9 != 0;

    v22 = v14 || v21 || v11 != 0;
    v23 = 3;
    if (v21)
    {
      v23 = 4;
    }

    if (v14)
    {
      v6 = 8;
    }

    else
    {
      v6 = v23;
    }

    if (!v22)
    {
      if (!v13 || v17)
      {
        v29 = 2;
        if (v19)
        {
          v29 = -1;
        }

        if (v18)
        {
          v6 = v29;
        }

        else
        {
          v6 = 1;
        }
      }

      else
      {
        v24 = Log_4();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [(DEDBugSession(DaemonTasks) *)v24 state];
        }

        v6 = -2;
      }
    }
  }

LABEL_29:
  objc_sync_exit(v3);

  v31 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isCancelling
{
  v3 = [(DEDBugSession *)self pendingOperations];
  v4 = [v3 count];

  if (!v4)
  {
    return 0;
  }

  v5 = [(DEDBugSession *)self pendingOperations];
  v6 = [DEDBugSessionOperation hashingKeyWithId:@"cancelOperation" type:2000];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v9 = [(DEDBugSession *)self pendingOperations];
    v10 = [v9 allValues];
    v11 = [v10 ded_selectItemsPassingTest:&__block_literal_global_26];
    v12 = [v11 count];

    v13 = [(DEDBugSession *)self pendingOperations];
    v14 = [v13 allValues];
    v15 = [v14 ded_selectItemsPassingTest:&__block_literal_global_12_0];
    v16 = [v15 count];

    if (v12 == v16)
    {
      v17 = [(DEDBugSession *)self pendingOperations];
      v18 = [v17 allValues];
      v8 = [v18 count] == 2 * v12;

      return v8;
    }

    return 0;
  }

  return 1;
}

BOOL __42__DEDBugSession_DaemonTasks__isCancelling__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type] == 1 || objc_msgSend(v2, "type") == 2;

  return v3;
}

- (id)finisherWithState
{
  v2 = [(DEDBugSession *)self finisher];
  if ([v2 conformsToProtocol:&unk_285B8E298])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)hasDirectory
{
  v3 = objc_alloc_init(DEDAttachmentHandler);
  v4 = [(DEDBugSession *)self identifier];
  v5 = [(DEDAttachmentHandler *)v3 directoryForBugSessionIdentifier:v4];

  LOBYTE(v4) = [v5 checkResourceIsReachableAndReturnError:0];
  return v4;
}

- (BOOL)hasStaleDirectory
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(DEDAttachmentHandler);
  v4 = [(DEDBugSession *)self identifier];
  v5 = [(DEDAttachmentHandler *)v3 directoryForBugSessionIdentifier:v4];

  if ([(DEDBugSession *)self hasDirectory])
  {
    v6 = *MEMORY[0x277CBE7B0];
    v7 = *MEMORY[0x277CBE7C0];
    v21[0] = *MEMORY[0x277CBE7B0];
    v21[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v20 = 0;
    v9 = [v5 resourceValuesForKeys:v8 error:&v20];
    v10 = v20;

    if (v10)
    {
      v11 = Log_4();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(DEDBugSession(DaemonTasks) *)self hasStaleDirectory];
      }

      v12 = 0;
    }

    else
    {
      v11 = [v9 objectForKeyedSubscript:v6];
      v13 = [v9 objectForKeyedSubscript:v7];
      v14 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      [v14 setDay:-7];
      v15 = [MEMORY[0x277CBEA80] currentCalendar];
      v16 = objc_alloc_init(MEMORY[0x277CBEAA8]);
      v17 = [v15 dateByAddingComponents:v14 toDate:v16 options:0];

      if (v11 && [v11 compare:v17]== -1)
      {
        v12 = 1;
      }

      else if (v13)
      {
        v12 = [v13 compare:v17] == -1;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)attachCompletionHandlerForDEDExtensionIdentifier:(uint64_t)a1 handler:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [a2 identifier];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)pingWithCallback:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x24C1E5320]();
  v4 = [a2 shortDescription];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)getStateWithCompletion:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addData:(void *)a1 withFilename:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_addSessionData:filename:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_248AD7000, v0, OS_LOG_TYPE_ERROR, "Finisher does not handle writeData:filename:. Will drop [%{public}@]", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)cancelDiagnosticExtensionWithDEDExtensionIdentifier:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [a2 identifier];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)loadTextDataForExtensions:(void *)a1 localization:completion:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)supportsDiagnostics:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 shortDescription];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)hasCollected:(void *)a1 isCollecting:identifiers:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 valueForKeyPath:@"rootURL"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)hasCollected:(void *)a1 isCollecting:identifiers:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 valueForKeyPath:@"identifier"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)hasCollected:(uint8_t *)buf isCollecting:(_BYTE *)a2 identifiers:(os_log_t)log .cold.3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_248AD7000, log, OS_LOG_TYPE_ERROR, "group extensions id is nil, will not track file promise", buf, 2u);
}

- (void)setConfig:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)notifyPromiseCancellationIfNeeded:(uint64_t)a1 info:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [a2 identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)instanceType
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)populateLocalizedTextDataForExtensions:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_3(a1 a2)];
  *v3 = 138543362;
  *v2 = v4;
  OUTLINED_FUNCTION_10(&dword_248AD7000, v5, v6, "Populating localized text data for extension [%{public}@] from cache");
}

- (void)updateCachedExtensionsWithLocalizedTextData:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_3(a1 a2)];
  *v3 = 138543362;
  *v2 = v4;
  OUTLINED_FUNCTION_10(&dword_248AD7000, v5, v6, "Updating DE text on extension [%{public}@]");
}

- (void)notifier
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 instanceType];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

@end