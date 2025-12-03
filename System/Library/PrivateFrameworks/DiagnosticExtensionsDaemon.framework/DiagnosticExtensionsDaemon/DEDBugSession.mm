@interface DEDBugSession
+ (id)archivedClasses;
+ (id)testingInstance;
- (BOOL)hasCapability:(id)capability;
- (BOOL)hasDirectory;
- (BOOL)hasStaleDirectory;
- (BOOL)isCancelling;
- (BOOL)isRunningDE:(id)e;
- (BOOL)isTarget;
- (BOOL)readyToCancel;
- (BOOL)readyToFinish;
- (BOOL)readyToNotify;
- (BOOL)shouldCollectDiagnosticWithId:(id)id;
- (DEDBugSession)initWithCoder:(id)coder;
- (DEDBugSession)initWithConfiguration:(id)configuration;
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
- (id)hashExtensions:(id)extensions;
- (id)knownExtensions;
- (id)nextCompletionBlockForIdentifier:(id)identifier;
- (id)notifier;
- (id)ongoingCollectOperationsWithOperations:(id)operations;
- (id)ongoingExtensionCollectionOperations;
- (id)prettyDescription;
- (id)scheduledDeferredExtensionCollectionOperations;
- (id)shortDescription;
- (id)startDiagnosticExtensionWithIdentifier:(id)identifier parameters:(id)parameters completion:(id)completion;
- (id)startDiagnosticExtensionWithIdentifier:(id)identifier parameters:(id)parameters deferRunUntil:(id)until completion:(id)completion;
- (id)stateInfo;
- (int64_t)instanceType;
- (int64_t)state;
- (void)_addSessionData:(id)data filename:(id)filename;
- (void)_cancel;
- (void)_logOperationQueue;
- (void)_prepareForStartDiagnosticExtensionWithDEDIdentifier:(id)identifier parameters:(id)parameters newCollectRemovedPendingKill:(BOOL *)kill completion:(id)completion;
- (void)_streamOperationQueue;
- (void)_terminateExtensionWithIdentifier:(id)identifier info:(id)info;
- (void)addData:(id)data withFilename:(id)filename;
- (void)adoptFiles:(id)files withCompletion:(id)completion;
- (void)attachCompletionHandlerForDEDExtensionIdentifier:(id)identifier handler:(id)handler;
- (void)attachCompletionHandlerForOngoingOperation:(id)operation handler:(id)handler;
- (void)cancel;
- (void)cancelDiagnosticExtension:(id)extension;
- (void)cancelDiagnosticExtensionWithDEDExtensionIdentifier:(id)identifier;
- (void)cancelDiagnosticExtensionWithIdentifier:(id)identifier;
- (void)cancelDiagnosticExtensionWithIdentifier:(id)identifier invocationNumber:(int64_t)number;
- (void)cleanupFinishedUploads:(BOOL)uploads;
- (void)clearNotification;
- (void)clearNotificationOnFilingDevice;
- (void)commit;
- (void)compressionProgress:(unint64_t)progress total:(unint64_t)total;
- (void)didAdoptFilesWithError:(id)error;
- (void)didAdoptGroup:(id)group;
- (void)didCancel;
- (void)didCommit;
- (void)didFinishAllUploads;
- (void)didFinishOperation:(int64_t)operation withIdentifier:(id)identifier;
- (void)didFinishUploadingWithError:(id)error;
- (void)didGetState:(int64_t)state info:(id)info;
- (void)didLoadTextDataForExtensions:(id)extensions localization:(id)localization;
- (void)didStart;
- (void)didTerminateDiagnosticExtension:(id)extension info:(id)info;
- (void)encodeWithCoder:(id)coder;
- (void)finallyStartDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters completion:(id)completion;
- (void)finishedDiagnosticWithIdentifier:(id)identifier result:(id)result;
- (void)getSessionStatusWithCompletion:(id)completion;
- (void)getStateWithCompletion:(id)completion;
- (void)hasCollected:(id)collected isCollecting:(id)collecting identifiers:(id)identifiers;
- (void)idsInbound_clearNotificationOnFilingDevice;
- (void)idsInbound_didClearNotificationOnFilingDevice;
- (void)idsInbound_didPresentNotificationOnFilingDevice;
- (void)idsInbound_presentNotificationOnFilingDevice;
- (void)instanceType;
- (void)listDiagnosticExtensionsWithCompletion:(id)completion;
- (void)loadTextDataForExtensions:(id)extensions localization:(id)localization completion:(id)completion;
- (void)notifier;
- (void)notifyPromiseCancellationIfNeeded:(id)needed info:(id)info;
- (void)pingWithCallback:(id)callback;
- (void)pong;
- (void)populateLocalizedTextDataForExtensions:(id)extensions;
- (void)presentNotificationOnFilingDevice;
- (void)removeAttachment:(id)attachment;
- (void)removeFromStore;
- (void)resumePendingOperations;
- (void)save;
- (void)scheduleDiagnosticCollectionForClassBAccessWithIdentifier:(id)identifier parameters:(id)parameters;
- (void)scheduleNotification;
- (void)setConfig:(id)config;
- (void)setUploadDelegate:(id)delegate;
- (void)startDiagnosticExtension:(id)extension parameters:(id)parameters completion:(id)completion;
- (void)startDiagnosticExtensionWithDEDIdentifier:(id)identifier parameters:(id)parameters completion:(id)completion;
- (void)startDiagnosticExtensionWithDEDIdentifier:(id)identifier parameters:(id)parameters deferRunUntil:(id)until completion:(id)completion;
- (void)storeCollectionCompletion:(id)completion forIdentifier:(id)identifier;
- (void)supportsDiagnostics:(id)diagnostics;
- (void)synchronizeSessionStatusWithCompletion:(id)completion;
- (void)terminateExtension:(id)extension withInfo:(id)info;
- (void)updateCachedExtensionsWithLocalizedTextData:(id)data;
- (void)uploadProgress:(unint64_t)progress total:(unint64_t)total;
- (void)willPerformOperationWithID:(id)d type:(int64_t)type options:(id)options;
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

- (DEDBugSession)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
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

    objc_storeStrong(&v7->_config, configuration);
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
    _finisher2 = 0;
    goto LABEL_14;
  }

  _finisher = [(DEDBugSession *)self _finisher];

  if (!_finisher)
  {
    config = [(DEDBugSession *)self config];
    finishingMove = [config finishingMove];

    if (finishingMove == 1)
    {
      v6 = off_278F64CA0;
LABEL_12:
      v14 = objc_alloc(*v6);
      config2 = [(DEDBugSession *)self config];
      v16 = [v14 initWithConfiguration:config2 session:self];
      [(DEDBugSession *)self set_finisher:v16];

      goto LABEL_13;
    }

    config3 = [(DEDBugSession *)self config];
    finishingMove2 = [config3 finishingMove];

    if (finishingMove2 == 2)
    {
      v6 = off_278F64C68;
      goto LABEL_12;
    }

    config4 = [(DEDBugSession *)self config];
    finishingMove3 = [config4 finishingMove];

    if (finishingMove3 == 3)
    {
      v6 = off_278F64B70;
      goto LABEL_12;
    }

    config5 = [(DEDBugSession *)self config];
    finishingMove4 = [config5 finishingMove];

    if (finishingMove4 == 4)
    {
      v6 = off_278F64CC8;
      goto LABEL_12;
    }
  }

LABEL_13:
  _finisher2 = [(DEDBugSession *)self _finisher];
LABEL_14:

  return _finisher2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(DEDBugSession *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  deviceIdentifier = [(DEDBugSession *)self deviceIdentifier];
  [coderCopy encodeObject:deviceIdentifier forKey:@"deviceIdentifier"];

  config = [(DEDBugSession *)self config];
  [coderCopy encodeObject:config forKey:@"config"];

  client = [(DEDBugSession *)self client];
  [coderCopy encodeInteger:objc_msgSend(client forKey:{"transportType"), @"clientTransportType"}];

  client2 = [(DEDBugSession *)self client];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    client3 = [(DEDBugSession *)self client];
    clientAddress = [client3 clientAddress];
    [coderCopy encodeObject:clientAddress forKey:@"clientAddress"];
  }

  worker = [(DEDBugSession *)self worker];
  [coderCopy encodeInteger:objc_msgSend(worker forKey:{"transportType"), @"workerTransportType"}];

  identifierManager = [(DEDBugSession *)self identifierManager];
  [coderCopy encodeObject:identifierManager forKey:@"identifierManager"];

  [coderCopy encodeBool:-[DEDBugSession finisherDidCommit](self forKey:{"finisherDidCommit"), @"didCommit"}];
  pendingOperations = [(DEDBugSession *)self pendingOperations];
  objc_sync_enter(pendingOperations);
  pendingOperations2 = [(DEDBugSession *)self pendingOperations];
  [coderCopy encodeObject:pendingOperations2 forKey:@"operations"];

  objc_sync_exit(pendingOperations);
  _finisher = [(DEDBugSession *)self _finisher];

  if (_finisher)
  {
    _finisher2 = [(DEDBugSession *)self _finisher];
    [coderCopy encodeObject:_finisher2 forKey:@"finisher"];
  }

  _notifier = [(DEDBugSession *)self _notifier];
  if (_notifier)
  {
    v19 = _notifier;
    _notifier2 = [(DEDBugSession *)self _notifier];
    v21 = [_notifier2 conformsToProtocol:&unk_285B8AAE0];

    if (v21)
    {
      _notifier3 = [(DEDBugSession *)self _notifier];
      [coderCopy encodeObject:_notifier3 forKey:@"notifier"];
    }
  }
}

- (DEDBugSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = DEDBugSession;
  v5 = [(DEDBugSession *)&v31 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v8;

    v10 = +[DEDBugSessionConfiguration archivedClasses];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"config"];
    config = v5->_config;
    v5->_config = v11;

    v5->_priorClientTransportType = [coderCopy decodeIntegerForKey:@"clientTransportType"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientAddress"];
    priorClientAddress = v5->_priorClientAddress;
    v5->_priorClientAddress = v13;

    v5->_priorWorkerTransportType = [coderCopy decodeIntegerForKey:@"workerTransportType"];
    archivedClasses = [objc_opt_class() archivedClasses];
    v16 = [coderCopy decodeObjectOfClasses:archivedClasses forKey:@"operations"];
    pendingOperations = v5->_pendingOperations;
    v5->_pendingOperations = v16;

    archivedClasses2 = [objc_opt_class() archivedClasses];
    v19 = [coderCopy decodeObjectOfClasses:archivedClasses2 forKey:@"finisher"];
    finisher = v5->__finisher;
    v5->__finisher = v19;

    v21 = +[DEDExtensionIdentifierManager archivedClasses];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"identifierManager"];
    identifierManager = v5->_identifierManager;
    v5->_identifierManager = v22;

    if (!v5->_identifierManager)
    {
      v24 = objc_opt_new();
      v25 = v5->_identifierManager;
      v5->_identifierManager = v24;
    }

    archivedClasses3 = [objc_opt_class() archivedClasses];
    v27 = [coderCopy decodeObjectOfClasses:archivedClasses3 forKey:@"notifier"];
    notifier = v5->__notifier;
    v5->__notifier = v27;

    v29 = [coderCopy containsValueForKey:@"didCommit"];
    if (v29)
    {
      LOBYTE(v29) = [coderCopy decodeBoolForKey:@"didCommit"];
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
  identifier = [(DEDBugSession *)self identifier];
  state = [(DEDBugSession *)self state];
  if ((state + 1) > 9)
  {
    v6 = "Unknown";
  }

  else
  {
    v6 = off_278F65598[state + 1];
  }

  v7 = [v3 stringWithFormat:@"BugSession identifier: %@ state: %s", identifier, v6];

  return v7;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DEDBugSession;
  v4 = [(DEDBugSession *)&v8 description];
  identifier = [(DEDBugSession *)self identifier];
  v6 = [v3 stringWithFormat:@"%@: ID: %@", v4, identifier];

  return v6;
}

+ (id)archivedClasses
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__DEDBugSession_archivedClasses__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  config = [(DEDBugSession *)self config];

  if (config)
  {
    config2 = [(DEDBugSession *)self config];
    v5 = [config2 copy];
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

- (void)attachCompletionHandlerForOngoingOperation:(id)operation handler:(id)handler
{
  handlerCopy = handler;
  operationCopy = operation;
  v8 = [(DEDBugSession *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "attaching completion handler to ongoing operation", v13, 2u);
  }

  v9 = [handlerCopy copy];
  v10 = MEMORY[0x24C1E5320](v9);
  ongoingCompletionHandlers = [(DEDBugSession *)self ongoingCompletionHandlers];
  identifier = [operationCopy identifier];

  [ongoingCompletionHandlers setObject:v10 forKeyedSubscript:identifier];
}

- (void)attachCompletionHandlerForDEDExtensionIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  identifierManager = [(DEDBugSession *)self identifierManager];
  v9 = [identifierManager isKnownIdentifier:identifierCopy];

  if ((v9 & 1) == 0)
  {
    v10 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DEDBugSession attachCompletionHandlerForDEDExtensionIdentifier:identifierCopy handler:self];
    }
  }

  v11 = [handlerCopy copy];
  v12 = MEMORY[0x24C1E5320]();
  ongoingCompletionHandlers = [(DEDBugSession *)self ongoingCompletionHandlers];
  stringValue = [identifierCopy stringValue];
  [ongoingCompletionHandlers setObject:v12 forKeyedSubscript:stringValue];
}

- (id)knownExtensions
{
  cachedExtensions = [(DEDBugSession *)self cachedExtensions];

  if (cachedExtensions)
  {
    cachedExtensions2 = [(DEDBugSession *)self cachedExtensions];
    v5 = [cachedExtensions2 copy];
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
  *(buf + 4) = self;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_248AD7000, log, OS_LOG_TYPE_DEBUG, "BS [%@] will resume %@", buf, 0x16u);
}

- (NSArray)allExtensionIdentifiers
{
  identifierManager = [(DEDBugSession *)self identifierManager];
  allIdentifiers = [identifierManager allIdentifiers];

  return allIdentifiers;
}

- (void)pingWithCallback:(id)callback
{
  callbackCopy = callback;
  v5 = [(DEDBugSession *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(DEDBugSession *)callbackCopy pingWithCallback:?];
  }

  [(DEDBugSession *)self setPingHandler:callbackCopy];
  worker = self->_worker;
  identifier = [(DEDBugSession *)self identifier];
  [(DEDWorkerProtocol *)worker pingSession:identifier];
}

- (void)listDiagnosticExtensionsWithCompletion:(id)completion
{
  completionCopy = completion;
  cachedExtensions = [(DEDBugSession *)self cachedExtensions];

  if (cachedExtensions)
  {
    cachedExtensions2 = [(DEDBugSession *)self cachedExtensions];
    allValues = [cachedExtensions2 allValues];
    completionCopy[2](completionCopy, allValues);
  }

  else
  {
    if (completionCopy)
    {
      deListCompletions = [(DEDBugSession *)self deListCompletions];
      v8 = [completionCopy copy];
      v9 = MEMORY[0x24C1E5320]();
      [deListCompletions addObject:v9];
    }

    worker = self->_worker;
    cachedExtensions2 = [(DEDBugSession *)self identifier];
    [(DEDWorkerProtocol *)worker listAvailableExtensionsForSession:cachedExtensions2];
  }
}

- (void)getStateWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = DEDSessionStateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    identifier = [(DEDBugSession *)self identifier];
    *buf = 138543362;
    v16 = identifier;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_INFO, "Getting session state on [%{public}@]", buf, 0xCu);
  }

  if ([(DEDBugSession *)self hasCapability:@"session-state"])
  {
    [(DEDBugSession *)self setSessionStateCompletionBlock:completionCopy];
    worker = self->_worker;
    identifier2 = [(DEDBugSession *)self identifier];
    [(DEDWorkerProtocol *)worker getSessionStateWithSession:identifier2];
  }

  else
  {
    v9 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DEDBugSession getStateWithCompletion:?];
    }

    v10 = MEMORY[0x24C1E5320](completionCopy);
    [(DEDBugSession *)self setSessionStateCompletionBlock:0];
    callbackQueue = [(DEDBugSession *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__DEDBugSession_getStateWithCompletion___block_invoke;
    block[3] = &unk_278F653A8;
    v14 = v10;
    identifier2 = v10;
    dispatch_async(callbackQueue, block);
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

- (void)addData:(id)data withFilename:(id)filename
{
  dataCopy = data;
  filenameCopy = filename;
  if ([(DEDBugSession *)self hasCapability:@"enhanced-execution-v2"])
  {
    worker = self->_worker;
    identifier = [(DEDBugSession *)self identifier];
    [(DEDWorkerProtocol *)worker addSessionData:dataCopy withFilename:filenameCopy forSession:identifier];
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

- (void)_addSessionData:(id)data filename:(id)filename
{
  dataCopy = data;
  filenameCopy = filename;
  finisher = [(DEDBugSession *)self finisher];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    finisher2 = [(DEDBugSession *)self finisher];
    [finisher2 writeData:dataCopy filename:filenameCopy];
  }

  else
  {
    finisher2 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(finisher2, OS_LOG_TYPE_ERROR))
    {
      [DEDBugSession _addSessionData:filename:];
    }
  }
}

- (void)getSessionStatusWithCompletion:(id)completion
{
  [(DEDBugSession *)self setStatusCompletionBlock:completion];
  worker = self->_worker;
  identifier = [(DEDBugSession *)self identifier];
  [(DEDWorkerProtocol *)worker getSessionStatusWithSession:identifier];
}

- (void)synchronizeSessionStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(DEDBugSession *)self hasCapability:@"enhanced-execution"])
  {
    [(DEDBugSession *)self setSyncCompletionBlock:completionCopy];
    worker = self->_worker;
    identifier = [(DEDBugSession *)self identifier];
    [(DEDWorkerProtocol *)worker syncSessionStatusWithSession:identifier];
  }

  else
  {
    identifier = [(DEDBugSession *)self log];
    if (os_log_type_enabled(identifier, OS_LOG_TYPE_ERROR))
    {
      [DEDBugSession synchronizeSessionStatusWithCompletion:];
    }
  }
}

- (void)startDiagnosticExtensionWithDEDIdentifier:(id)identifier parameters:(id)parameters deferRunUntil:(id)until completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  parametersCopy = parameters;
  untilCopy = until;
  completionCopy = completion;
  if (!untilCopy)
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

  filePromises = [(DEDBugSession *)self filePromises];
  stringValue = [identifierCopy stringValue];
  [filePromises addObject:stringValue];

  if (completionCopy)
  {
    stringValue2 = [identifierCopy stringValue];
    [(DEDBugSession *)self storeCollectionCompletion:completionCopy forIdentifier:stringValue2];
  }

  if (![(DEDBugSession *)self isTarget])
  {
    goto LABEL_20;
  }

  date = [MEMORY[0x277CBEAA8] date];
  v18 = [untilCopy earlierDate:date];

  if (v18 != untilCopy)
  {
    identifier = [(DEDBugSession *)self identifier];
    worker = [DEDDeferredExtensionInfo activityStringForBugSessionIdentifier:identifier dedIdentifier:identifierCopy];

    v21 = +[DEDDeferredExtensionInfo allInfo];
    stringValue3 = [v21 objectForKey:worker];

    [(DEDBugSession *)self willPerformOperationWithID:worker type:2 options:parametersCopy];
    [(DEDBugSession *)self save];
    if (stringValue3)
    {
      v23 = [(DEDBugSession *)self log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&dword_248AD7000, v23, OS_LOG_TYPE_DEFAULT, "Rescheduling an existing collect operation.", &v28, 2u);
      }

      [stringValue3 schedule];
      goto LABEL_21;
    }

LABEL_20:
    worker = [(DEDBugSession *)self worker];
    stringValue3 = [identifierCopy stringValue];
    identifier2 = [(DEDBugSession *)self identifier];
    [worker startDiagnosticWithIdentifier:stringValue3 parameters:parametersCopy deferRunUntil:untilCopy session:identifier2];

LABEL_21:
    goto LABEL_22;
  }

  v25 = [(DEDBugSession *)self log];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138543362;
    v29 = untilCopy;
    _os_log_impl(&dword_248AD7000, v25, OS_LOG_TYPE_DEFAULT, "Deferred execution was scheduled in past (%{public}@), running immediately.", &v28, 0xCu);
  }

  [(DEDBugSession *)self finallyStartDiagnosticWithIdentifier:identifierCopy parameters:parametersCopy completion:completionCopy];
LABEL_22:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)startDiagnosticExtension:(id)extension parameters:(id)parameters completion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  identifier = [extension identifier];
  v10 = [(DEDBugSession *)self startDiagnosticExtensionWithIdentifier:identifier parameters:parametersCopy completion:completionCopy];
}

- (id)startDiagnosticExtensionWithIdentifier:(id)identifier parameters:(id)parameters deferRunUntil:(id)until completion:(id)completion
{
  identifierCopy = identifier;
  parametersCopy = parameters;
  untilCopy = until;
  completionCopy = completion;
  if ([(DEDBugSession *)self hasCapability:@"enhanced-execution"])
  {
    date = [MEMORY[0x277CBEAA8] date];
    v15 = [untilCopy earlierDate:date];

    if (v15 == untilCopy)
    {
      v19 = [(DEDBugSession *)self log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_248AD7000, v19, OS_LOG_TYPE_DEFAULT, "Deferred execution was scheduled in past, running immediately.", v21, 2u);
      }

      v17 = [(DEDBugSession *)self startDiagnosticExtensionWithIdentifier:identifierCopy parameters:parametersCopy completion:completionCopy];
    }

    else
    {
      identifierManager = [(DEDBugSession *)self identifierManager];
      v17 = [identifierManager identifierForExtensionIdentifier:identifierCopy];

      [(DEDBugSession *)self startDiagnosticExtensionWithDEDIdentifier:v17 parameters:parametersCopy deferRunUntil:untilCopy completion:completionCopy];
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

- (id)startDiagnosticExtensionWithIdentifier:(id)identifier parameters:(id)parameters completion:(id)completion
{
  completionCopy = completion;
  parametersCopy = parameters;
  identifierCopy = identifier;
  identifierManager = [(DEDBugSession *)self identifierManager];
  v12 = [identifierManager identifierForExtensionIdentifier:identifierCopy];

  [(DEDBugSession *)self startDiagnosticExtensionWithDEDIdentifier:v12 parameters:parametersCopy completion:completionCopy];

  return v12;
}

- (void)startDiagnosticExtensionWithDEDIdentifier:(id)identifier parameters:(id)parameters completion:(id)completion
{
  identifierCopy = identifier;
  parametersCopy = parameters;
  v13 = 0;
  [(DEDBugSession *)self _prepareForStartDiagnosticExtensionWithDEDIdentifier:identifierCopy parameters:parametersCopy newCollectRemovedPendingKill:&v13 completion:completion];
  if ((v13 & 1) == 0)
  {
    worker = self->_worker;
    stringValue = [identifierCopy stringValue];
    identifier = [(DEDBugSession *)self identifier];
    [(DEDWorkerProtocol *)worker startDiagnosticWithIdentifier:stringValue parameters:parametersCopy session:identifier];
  }
}

- (void)_prepareForStartDiagnosticExtensionWithDEDIdentifier:(id)identifier parameters:(id)parameters newCollectRemovedPendingKill:(BOOL *)kill completion:(id)completion
{
  v46 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  parametersCopy = parameters;
  completionCopy = completion;
  if ([identifierCopy invocationNumber] < 1 || -[DEDBugSession hasCapability:](self, "hasCapability:", @"enhanced-execution"))
  {
    filePromises = [(DEDBugSession *)self filePromises];
    stringValue = [identifierCopy stringValue];
    [filePromises addObject:stringValue];

    if (completionCopy)
    {
      stringValue2 = [identifierCopy stringValue];
      [(DEDBugSession *)self storeCollectionCompletion:completionCopy forIdentifier:stringValue2];
    }

    if ([(DEDBugSession *)self isTarget])
    {
      if ([(DEDBugSession *)self hasCapability:@"enhanced-execution"])
      {
        LODWORD(pendingOperations5) = 0;
      }

      else
      {
        extensionIdentifier = [identifierCopy extensionIdentifier];
        v42 = [DEDBugSessionOperation hashingKeyWithId:extensionIdentifier type:0];

        extensionIdentifier2 = [identifierCopy extensionIdentifier];
        v41 = [DEDBugSessionOperation hashingKeyWithId:extensionIdentifier2 type:1];

        pendingOperations = [(DEDBugSession *)self pendingOperations];
        objc_sync_enter(pendingOperations);
        pendingOperations2 = [(DEDBugSession *)self pendingOperations];
        v22 = [pendingOperations2 objectForKeyedSubscript:v42];
        if (v22)
        {
          pendingOperations3 = [(DEDBugSession *)self pendingOperations];
          pendingOperations5 = [pendingOperations3 objectForKeyedSubscript:v41];

          if (pendingOperations5)
          {
            v24 = [(DEDBugSession *)self log];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              stringValue3 = [identifierCopy stringValue];
              *buf = 138543362;
              v45 = stringValue3;
              _os_log_impl(&dword_248AD7000, v24, OS_LOG_TYPE_DEFAULT, "Found matching kill operation for new requested DE [%{public}@], will let it finish", buf, 0xCu);
            }

            v26 = [(DEDBugSession *)self log];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              pendingOperations4 = [(DEDBugSession *)self pendingOperations];
              v28 = [pendingOperations4 objectForKeyedSubscript:v42];
              *buf = 138412290;
              v45 = v28;
              _os_log_impl(&dword_248AD7000, v26, OS_LOG_TYPE_INFO, "Removing matching kill operation: %@", buf, 0xCu);
            }

            pendingOperations5 = [(DEDBugSession *)self pendingOperations];
            [pendingOperations5 removeObjectForKey:v42];

            LODWORD(pendingOperations5) = 1;
          }
        }

        else
        {

          LODWORD(pendingOperations5) = 0;
        }

        objc_sync_exit(pendingOperations);
      }

      if (kill)
      {
        *kill = pendingOperations5;
      }

      if (pendingOperations5)
      {
        v29 = [(DEDBugSession *)self log];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          identifier = [(DEDBugSession *)self identifier];
          *buf = 138543362;
          v45 = identifier;
          _os_log_impl(&dword_248AD7000, v29, OS_LOG_TYPE_DEFAULT, "Start collection command found matching cancel on DE: [%{public}@]", buf, 0xCu);
        }
      }

      else
      {
        client = [(DEDBugSession *)self client];
        if (objc_opt_respondsToSelector())
        {
          client2 = [(DEDBugSession *)self client];
          transportType = [client2 transportType];
        }

        else
        {
          transportType = 0;
        }

        if ([DEDCollectionNotification shouldFireNotificationForTransport:transportType])
        {
          v34 = _os_activity_create(&dword_248AD7000, "Collect Notify", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __121__DEDBugSession__prepareForStartDiagnosticExtensionWithDEDIdentifier_parameters_newCollectRemovedPendingKill_completion___block_invoke;
          block[3] = &unk_278F653D0;
          block[4] = self;
          os_activity_apply(v34, block);
        }

        finisher = [(DEDBugSession *)self finisher];
        v36 = objc_opt_respondsToSelector();

        if (v36)
        {
          finisher2 = [(DEDBugSession *)self finisher];
          stringValue4 = [identifierCopy stringValue];
          [finisher2 didStartCollectingDiagnosticExtensionWithIdentifier:stringValue4];
        }

        stringValue5 = [identifierCopy stringValue];
        [(DEDBugSession *)self willPerformOperationWithID:stringValue5 type:1 options:parametersCopy];

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

- (void)finallyStartDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  parametersCopy = parameters;
  completionCopy = completion;
  if ([(DEDBugSession *)self isTarget])
  {
    identifier = [(DEDBugSession *)self identifier];
    v12 = [DEDDeferredExtensionInfo activityStringForBugSessionIdentifier:identifier dedIdentifier:identifierCopy];

    v13 = +[DEDDeferredExtensionInfo allInfo];
    v14 = [v13 objectForKey:v12];

    [v14 unschedule];
    [(DEDBugSession *)self didFinishOperation:2 withIdentifier:v12];
    [(DEDBugSession *)self save];
    [(DEDBugSession *)self _prepareForStartDiagnosticExtensionWithDEDIdentifier:identifierCopy parameters:parametersCopy newCollectRemovedPendingKill:0 completion:completionCopy];
    v15 = +[DEDDaemon sharedInstance];
    stringValue = [identifierCopy stringValue];
    identifier2 = [(DEDBugSession *)self identifier];
    [v15 finallyStartDiagnosticWithIdentifier:stringValue parameters:parametersCopy session:identifier2];
  }

  else
  {
    v12 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      identifier3 = [(DEDBugSession *)self identifier];
      v20 = 136446466;
      v21 = "[DEDBugSession finallyStartDiagnosticWithIdentifier:parameters:completion:]";
      v22 = 2114;
      v23 = identifier3;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}s] called on non target instance of [%{public}@]", &v20, 0x16u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)scheduleDiagnosticCollectionForClassBAccessWithIdentifier:(id)identifier parameters:(id)parameters
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  parametersCopy = parameters;
  v8 = [(DEDBugSession *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v17 = 138543362;
    v18 = identifierCopy;
    _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_INFO, "Will reschedule attachment collection for Class B availability for extension [%{public}@]", &v17, 0xCu);
  }

  v9 = [[DEDExtensionIdentifier alloc] initWithString:identifierCopy];
  identifier = [(DEDBugSession *)self identifier];
  v11 = [DEDDeferredExtensionInfo activityStringForBugSessionIdentifier:identifier dedIdentifier:v9];

  [(DEDBugSession *)self willPerformOperationWithID:v11 type:2 options:parametersCopy];
  v12 = [DEDDeferredExtensionInfo alloc];
  identifier2 = [(DEDBugSession *)self identifier];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v15 = [(DEDDeferredExtensionInfo *)v12 initWithBugSessionIdentifier:identifier2 dedIdentifier:v9 runOnDate:distantFuture withGracePeriod:0.0];

  [(DEDDeferredExtensionInfo *)v15 setRequiresClassBDataAccess:1];
  [(DEDDeferredExtensionInfo *)v15 setParameters:parametersCopy];

  [(DEDDeferredExtensionInfo *)v15 schedule];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeAttachment:(id)attachment
{
  attachmentCopy = attachment;
  extensionID = [attachmentCopy extensionID];

  if (extensionID)
  {
    rootURL = [attachmentCopy rootURL];
    lastPathComponent = [rootURL lastPathComponent];
    [(DEDBugSession *)self terminateExtension:lastPathComponent withInfo:0];
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

- (void)cancelDiagnosticExtension:(id)extension
{
  extensionCopy = extension;
  identifier = [extensionCopy identifier];

  if (identifier)
  {
    identifier2 = [extensionCopy identifier];
    [(DEDBugSession *)self cancelDiagnosticExtensionWithIdentifier:identifier2];
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

- (void)cancelDiagnosticExtensionWithIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  identifierManager = [(DEDBugSession *)self identifierManager];
  v6 = [identifierManager knownIdentifiersForExtensionIdentifier:identifierCopy];

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
        stringValue = [v12 stringValue];
        [(DEDBugSession *)self terminateExtension:stringValue withInfo:0];

        identifierManager2 = [(DEDBugSession *)self identifierManager];
        [identifierManager2 revokeIdentifier:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  [(DEDBugSession *)self save];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)cancelDiagnosticExtensionWithIdentifier:(id)identifier invocationNumber:(int64_t)number
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (number && ![(DEDBugSession *)self hasCapability:@"enhanced-execution"])
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
    identifierManager = [(DEDBugSession *)self identifierManager];
    v8 = [identifierManager knownIdentifiersForExtensionIdentifier:identifierCopy];

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
          if ([v14 invocationNumber] == number)
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

- (void)cancelDiagnosticExtensionWithDEDExtensionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(DEDBugSession *)self hasCapability:@"enhanced-execution"])
  {
    identifierManager = [(DEDBugSession *)self identifierManager];
    v6 = [identifierManager isKnownIdentifier:identifierCopy];

    if (v6)
    {
      stringValue = [identifierCopy stringValue];
      [(DEDBugSession *)self terminateExtension:stringValue withInfo:0];

      identifierManager2 = [(DEDBugSession *)self identifierManager];
      [identifierManager2 revokeIdentifier:identifierCopy];

      [(DEDBugSession *)self save];
    }

    else
    {
      v10 = [(DEDBugSession *)self log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(DEDBugSession *)identifierCopy cancelDiagnosticExtensionWithDEDExtensionIdentifier:?];
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

- (void)_terminateExtensionWithIdentifier:(id)identifier info:(id)info
{
  identifierCopy = identifier;
  infoCopy = info;
  if (!identifierCopy)
  {
    v8 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [DEDBugSession _terminateExtensionWithIdentifier:info:];
    }
  }

  worker = self->_worker;
  identifier = [(DEDBugSession *)self identifier];
  [(DEDWorkerProtocol *)worker terminateExtension:identifierCopy info:infoCopy session:identifier];
}

- (void)commit
{
  if ([(DEDBugSession *)self isTarget])
  {
    [(DEDBugSession *)self clearNotification];
    pendingOperations = [(DEDBugSession *)self pendingOperations];
    objc_sync_enter(pendingOperations);
    pendingOperations2 = [(DEDBugSession *)self pendingOperations];
    v5 = [DEDBugSessionOperation hashingKeyWithId:@"finishOperation" type:1000];
    v6 = [pendingOperations2 objectForKey:v5];

    objc_sync_exit(pendingOperations);
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
  identifier = [(DEDBugSession *)self identifier];
  [(DEDWorkerProtocol *)worker commitSession:identifier];
}

- (void)cancel
{
  v33 = *MEMORY[0x277D85DE8];
  if ([(DEDBugSession *)self isTarget])
  {
    [(DEDBugSession *)self clearNotification];
    [(DEDBugSession *)self willPerformOperationWithID:@"cancelOperation" type:2000 options:MEMORY[0x277CBEC10]];
    [(DEDBugSession *)self save];
    ongoingExtensionCollectionOperations = [(DEDBugSession *)self ongoingExtensionCollectionOperations];
    scheduledDeferredExtensionCollectionOperations = [(DEDBugSession *)self scheduledDeferredExtensionCollectionOperations];
    if ([ongoingExtensionCollectionOperations count] || objc_msgSend(scheduledDeferredExtensionCollectionOperations, "count"))
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v5 = ongoingExtensionCollectionOperations;
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
      v11 = scheduledDeferredExtensionCollectionOperations;
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
              dedIdentifier = [v16 dedIdentifier];
              [(DEDBugSession *)self cancelDiagnosticExtensionWithDEDExtensionIdentifier:dedIdentifier];

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
    worker = [(DEDBugSession *)self worker];
    identifier = [(DEDBugSession *)self identifier];
    [worker cancelSession:identifier];

    [(DEDBugSession *)self cleanup];
  }

  identifierManager = [(DEDBugSession *)self identifierManager];
  [identifierManager reset];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)adoptFiles:(id)files withCompletion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  filesCopy = files;
  completionCopy = completion;
  if (completionCopy)
  {
    adoptFilesCompletions = [(DEDBugSession *)self adoptFilesCompletions];
    v9 = MEMORY[0x24C1E5320](completionCopy);
    [adoptFilesCompletions insertObject:v9 atIndex:0];
  }

  v10 = objc_alloc_init(DEDAttachmentHandler);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = filesCopy;
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
          filePromises = [(DEDBugSession *)self filePromises];
          [filePromises addObject:v16];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  worker = self->_worker;
  identifier = [(DEDBugSession *)self identifier];
  [(DEDWorkerProtocol *)worker adoptFiles:v11 forSession:identifier];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)scheduleNotification
{
  v8 = *MEMORY[0x277D85DE8];
  deviceIdentifier = [self deviceIdentifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)clearNotification
{
  v8 = *MEMORY[0x277D85DE8];
  deviceIdentifier = [self deviceIdentifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)loadTextDataForExtensions:(id)extensions localization:(id)localization completion:(id)completion
{
  v22[1] = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  localizationCopy = localization;
  completionCopy = completion;
  if ([(DEDBugSession *)self hasCapability:@"enhanced-execution-v2"])
  {
    if (completionCopy)
    {
      [(DEDBugSession *)self setDeTextDataLoadCompletion:completionCopy];
    }

    worker = self->_worker;
    identifier = [(DEDBugSession *)self identifier];
    [(DEDWorkerProtocol *)worker loadTextDataForExtensions:extensionsCopy localization:localizationCopy sessionID:identifier];
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
    identifier = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

    v15 = MEMORY[0x277CCA9B8];
    v16 = +[DEDConfiguration sharedInstance];
    errorDomain = [v16 errorDomain];
    v18 = [v15 errorWithDomain:errorDomain code:103 userInfo:identifier];

    v19 = [MEMORY[0x277CBEB98] set];
    completionCopy[2](completionCopy, v19, v18);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)didLoadTextDataForExtensions:(id)extensions localization:(id)localization
{
  extensionsCopy = extensions;
  localizationCopy = localization;
  allObjects = [extensionsCopy allObjects];
  [(DEDBugSession *)self updateCachedExtensionsWithLocalizedTextData:allObjects];

  deTextDataLoadCompletion = [(DEDBugSession *)self deTextDataLoadCompletion];

  if (deTextDataLoadCompletion)
  {
    deTextDataLoadCompletion2 = [(DEDBugSession *)self deTextDataLoadCompletion];
    v11 = [deTextDataLoadCompletion2 copy];

    [(DEDBugSession *)self setDeTextDataLoadCompletion:0];
    callbackQueue = [(DEDBugSession *)self callbackQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __59__DEDBugSession_didLoadTextDataForExtensions_localization___block_invoke;
    v16[3] = &unk_278F653F8;
    v18 = v11;
    v17 = extensionsCopy;
    v13 = v11;
    dispatch_async(callbackQueue, v16);
  }

  else
  {
    client = self->_client;
    identifier = [(DEDBugSession *)self identifier];
    [(DEDClientProtocol *)client didLoadTextDataForExtensions:extensionsCopy localization:localizationCopy session:identifier];
  }
}

- (void)pong
{
  v8 = *MEMORY[0x277D85DE8];
  shortDescription = [self shortDescription];
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

- (void)supportsDiagnostics:(id)diagnostics
{
  diagnosticsCopy = diagnostics;
  v5 = [(DEDBugSession *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DEDBugSession supportsDiagnostics:?];
  }

  [(DEDBugSession *)self populateLocalizedTextDataForExtensions:diagnosticsCopy];
  deListCompletions = [(DEDBugSession *)self deListCompletions];
  lastObject = [deListCompletions lastObject];

  if (lastObject)
  {
    deListCompletions2 = [(DEDBugSession *)self deListCompletions];
    [deListCompletions2 removeLastObject];

    v9 = [(DEDBugSession *)self hashExtensions:diagnosticsCopy];
    [(DEDBugSession *)self setCachedExtensions:v9];

    callbackQueue = [(DEDBugSession *)self callbackQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __37__DEDBugSession_supportsDiagnostics___block_invoke;
    v13[3] = &unk_278F653F8;
    v15 = lastObject;
    v14 = diagnosticsCopy;
    dispatch_async(callbackQueue, v13);

    identifier = v15;
  }

  else
  {
    client = self->_client;
    identifier = [(DEDBugSession *)self identifier];
    [(DEDClientProtocol *)client deviceSupportsDiagnosticExtensions:diagnosticsCopy session:identifier];
  }
}

- (void)didAdoptFilesWithError:(id)error
{
  errorCopy = error;
  adoptFilesCompletions = [(DEDBugSession *)self adoptFilesCompletions];
  v6 = [adoptFilesCompletions count];

  if (v6)
  {
    adoptFilesCompletions2 = [(DEDBugSession *)self adoptFilesCompletions];
    lastObject = [adoptFilesCompletions2 lastObject];

    adoptFilesCompletions3 = [(DEDBugSession *)self adoptFilesCompletions];
    [adoptFilesCompletions3 removeLastObject];

    callbackQueue = [(DEDBugSession *)self callbackQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __40__DEDBugSession_didAdoptFilesWithError___block_invoke;
    v14[3] = &unk_278F653F8;
    v16 = lastObject;
    v15 = errorCopy;
    v11 = lastObject;
    dispatch_async(callbackQueue, v14);
  }

  else
  {
    client = self->_client;
    identifier = [(DEDBugSession *)self identifier];
    [(DEDClientProtocol *)client didAdoptFilesWithError:errorCopy forSession:identifier];
  }
}

- (void)compressionProgress:(unint64_t)progress total:(unint64_t)total
{
  client = self->_client;
  identifier = [(DEDBugSession *)self identifier];
  [(DEDClientProtocol *)client compressionProgress:progress total:total sessionID:identifier];

  uploadDelegate = [(DEDBugSession *)self uploadDelegate];
  if (uploadDelegate)
  {
    v10 = uploadDelegate;
    uploadDelegate2 = [(DEDBugSession *)self uploadDelegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      callbackQueue = [(DEDBugSession *)self callbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __43__DEDBugSession_compressionProgress_total___block_invoke;
      block[3] = &unk_278F65420;
      block[4] = self;
      block[5] = progress;
      block[6] = total;
      dispatch_async(callbackQueue, block);
    }
  }
}

void __43__DEDBugSession_compressionProgress_total___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uploadDelegate];
  [v2 compressionProgress:*(a1 + 40) total:*(a1 + 48) session:*(a1 + 32)];
}

- (void)uploadProgress:(unint64_t)progress total:(unint64_t)total
{
  client = self->_client;
  identifier = [(DEDBugSession *)self identifier];
  [(DEDClientProtocol *)client uploadProgress:progress total:total sessionID:identifier];

  uploadDelegate = [(DEDBugSession *)self uploadDelegate];

  if (uploadDelegate)
  {
    callbackQueue = [(DEDBugSession *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__DEDBugSession_uploadProgress_total___block_invoke;
    block[3] = &unk_278F65420;
    block[4] = self;
    block[5] = progress;
    block[6] = total;
    dispatch_async(callbackQueue, block);
  }
}

void __38__DEDBugSession_uploadProgress_total___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uploadDelegate];
  [v2 uploadProgress:*(a1 + 40) total:*(a1 + 48) session:*(a1 + 32)];
}

- (void)didFinishUploadingWithError:(id)error
{
  errorCopy = error;
  client = self->_client;
  identifier = [(DEDBugSession *)self identifier];
  [(DEDClientProtocol *)client didFinishUploadingWithError:errorCopy sessionID:identifier];

  uploadDelegate = [(DEDBugSession *)self uploadDelegate];
  if (uploadDelegate)
  {
    v8 = uploadDelegate;
    uploadDelegate2 = [(DEDBugSession *)self uploadDelegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      callbackQueue = [(DEDBugSession *)self callbackQueue];
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __45__DEDBugSession_didFinishUploadingWithError___block_invoke;
      v15 = &unk_278F65448;
      selfCopy = self;
      v17 = errorCopy;
      dispatch_async(callbackQueue, &v12);
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
  identifier = [(DEDBugSession *)self identifier];
  [(DEDClientProtocol *)client didCommitSession:identifier];

  [(DEDBugSession *)self setFinisherDidCommit:1];
}

- (void)finishedDiagnosticWithIdentifier:(id)identifier result:(id)result
{
  identifierCopy = identifier;
  resultCopy = result;
  if (!self->_client)
  {
    v8 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "_finishedDiagnosticWithIdentifier without client", buf, 2u);
    }
  }

  [resultCopy setFromBugSession:self];
  [(DEDBugSession *)self didFinishOperation:1 withIdentifier:identifierCopy];
  if ([(DEDBugSession *)self shouldCollectDiagnosticWithId:identifierCopy])
  {
    ongoingCompletionHandlers = [(DEDBugSession *)self ongoingCompletionHandlers];
    v10 = [ongoingCompletionHandlers objectForKeyedSubscript:identifierCopy];

    ongoingCompletionHandlers2 = [(DEDBugSession *)self ongoingCompletionHandlers];
    [ongoingCompletionHandlers2 removeObjectForKey:identifierCopy];

    v12 = [(DEDBugSession *)self nextCompletionBlockForIdentifier:identifierCopy];
    finisher = [(DEDBugSession *)self finisher];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      finisher2 = [(DEDBugSession *)self finisher];
      [finisher2 didCollectAttachmentGroup:resultCopy];
    }

    if (v12 | v10)
    {
      callbackQueue = [(DEDBugSession *)self callbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__DEDBugSession_finishedDiagnosticWithIdentifier_result___block_invoke;
      block[3] = &unk_278F65470;
      v28 = v12;
      v27 = resultCopy;
      v29 = v10;
      dispatch_async(callbackQueue, block);

      identifier = v28;
    }

    else
    {
      client = self->_client;
      identifier = [(DEDBugSession *)self identifier];
      [(DEDClientProtocol *)client finishedDiagnosticWithIdentifier:identifierCopy result:resultCopy session:identifier];
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

    [(DEDBugSession *)self _terminateExtensionWithIdentifier:identifierCopy info:0];
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
        identifier2 = [(DEDBugSession *)self identifier];
        [(DEDWorkerProtocol *)worker scheduleNotificationForSession:identifier2];
      }

      else
      {
        if (![(DEDBugSession *)self readyToFinish])
        {
          goto LABEL_24;
        }

        v22 = self->_worker;
        identifier2 = [(DEDBugSession *)self identifier];
        [(DEDWorkerProtocol *)v22 commitSession:identifier2];
      }

      finisher3 = [(DEDBugSession *)self finisher];
      v24 = objc_opt_respondsToSelector();

      if (v24)
      {
        finisher4 = [(DEDBugSession *)self finisher];
        [finisher4 didFinishAllCollections];
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

- (void)didGetState:(int64_t)state info:(id)info
{
  infoCopy = info;
  sessionStateCompletionBlock = [(DEDBugSession *)self sessionStateCompletionBlock];

  if (sessionStateCompletionBlock)
  {
    sessionStateCompletionBlock2 = [(DEDBugSession *)self sessionStateCompletionBlock];
    v9 = [sessionStateCompletionBlock2 copy];

    [(DEDBugSession *)self setSessionStateCompletionBlock:0];
    callbackQueue = [(DEDBugSession *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__DEDBugSession_didGetState_info___block_invoke;
    block[3] = &unk_278F65498;
    v16 = v9;
    stateCopy = state;
    v15 = infoCopy;
    v11 = v9;
    dispatch_async(callbackQueue, block);
  }

  else
  {
    client = [(DEDBugSession *)self client];
    identifier = [(DEDBugSession *)self identifier];
    [client didGetState:state info:infoCopy sessionID:identifier];
  }
}

- (void)hasCollected:(id)collected isCollecting:(id)collecting identifiers:(id)identifiers
{
  v67 = *MEMORY[0x277D85DE8];
  collectedCopy = collected;
  collectingCopy = collecting;
  identifiersCopy = identifiers;
  v11 = [(DEDBugSession *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [DEDBugSession hasCollected:collectedCopy isCollecting:? identifiers:?];
  }

  v44 = identifiersCopy;

  v12 = [(DEDBugSession *)self log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [DEDBugSession hasCollected:collectingCopy isCollecting:? identifiers:?];
  }

  [(DEDBugSession *)self populateLocalizedTextDataForExtensions:collectingCopy];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v13 = collectedCopy;
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
        extensionID = [v18 extensionID];

        if (extensionID)
        {
          filePromises = [(DEDBugSession *)self filePromises];
          rootURL = [v18 rootURL];
          lastPathComponent = [rootURL lastPathComponent];
          [filePromises addObject:lastPathComponent];
        }

        else
        {
          filePromises = [(DEDBugSession *)self log];
          if (os_log_type_enabled(filePromises, OS_LOG_TYPE_ERROR))
          {
            [DEDBugSession hasCollected:v60 isCollecting:filePromises identifiers:?];
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
  v23 = collectingCopy;
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
        filePromises2 = [(DEDBugSession *)self filePromises];
        identifier = [v28 identifier];
        [filePromises2 addObject:identifier];
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

  statusCompletionBlock = [(DEDBugSession *)self statusCompletionBlock];
  if (statusCompletionBlock)
  {
  }

  else
  {
    syncCompletionBlock = [(DEDBugSession *)self syncCompletionBlock];

    if (!syncCompletionBlock)
    {
      client = self->_client;
      identifier2 = [(DEDBugSession *)self identifier];
      if (v44)
      {
        [(DEDClientProtocol *)client hasCollected:v13 isCollecting:v23 withIdentifiers:v44 inSession:identifier2];
      }

      else
      {
        [(DEDClientProtocol *)client hasCollected:v13 isCollecting:v23 inSession:identifier2];
      }

      goto LABEL_32;
    }
  }

  statusCompletionBlock2 = [(DEDBugSession *)self statusCompletionBlock];

  if (statusCompletionBlock2)
  {
    statusCompletionBlock3 = [(DEDBugSession *)self statusCompletionBlock];
    [(DEDBugSession *)self setStatusCompletionBlock:0];
    callbackQueue = [(DEDBugSession *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__DEDBugSession_hasCollected_isCollecting_identifiers___block_invoke_2;
    block[3] = &unk_278F654E8;
    v53 = statusCompletionBlock3;
    v51 = v13;
    v52 = v23;
    v37 = statusCompletionBlock3;
    dispatch_async(callbackQueue, block);
  }

  syncCompletionBlock2 = [(DEDBugSession *)self syncCompletionBlock];

  if (syncCompletionBlock2)
  {
    syncCompletionBlock3 = [(DEDBugSession *)self syncCompletionBlock];
    [(DEDBugSession *)self setSyncCompletionBlock:0];
    callbackQueue2 = [(DEDBugSession *)self callbackQueue];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __55__DEDBugSession_hasCollected_isCollecting_identifiers___block_invoke_3;
    v45[3] = &unk_278F65510;
    v49 = syncCompletionBlock3;
    v46 = v13;
    v47 = v23;
    v48 = v44;
    identifier2 = syncCompletionBlock3;
    dispatch_async(callbackQueue2, v45);

LABEL_32:
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)terminateExtension:(id)extension withInfo:(id)info
{
  v37 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  infoCopy = info;
  v7 = [(DEDBugSession *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = extensionCopy;
    _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "Will terminate extension [%{public}@]", buf, 0xCu);
  }

  v8 = [[DEDExtensionIdentifier alloc] initWithString:extensionCopy];
  v9 = +[DEDDeferredExtensionInfo allInfo];
  allValues = [v9 allValues];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __45__DEDBugSession_terminateExtension_withInfo___block_invoke;
  v31[3] = &unk_278F65538;
  v25 = v8;
  v32 = v25;
  selfCopy = self;
  v11 = [allValues ded_selectItemsPassingTest:v31];

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
        scheduledDeferredExtensionCollectionOperations = [(DEDBugSession *)self scheduledDeferredExtensionCollectionOperations];
        activityString = [v17 activityString];
        v20 = [scheduledDeferredExtensionCollectionOperations containsObject:activityString];

        if (v20)
        {
          activityString2 = [v17 activityString];
          [(DEDBugSession *)self didFinishOperation:2 withIdentifier:activityString2];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v14);
  }

  identifierManager = [(DEDBugSession *)self identifierManager];
  [identifierManager revokeIdentifier:v25];

  filePromises = [(DEDBugSession *)self filePromises];
  [filePromises removeObject:extensionCopy];

  [(DEDBugSession *)self willPerformOperationWithID:extensionCopy type:0 options:infoCopy];
  [(DEDBugSession *)self save];
  [(DEDBugSession *)self _terminateExtensionWithIdentifier:extensionCopy info:infoCopy];

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
  identifier = [(DEDBugSession *)self identifier];
  [(DEDClientProtocol *)client didCancelSession:identifier];

  if ([(DEDBugSession *)self isTarget])
  {

    [(DEDBugSession *)self didFinishOperation:2000 withIdentifier:@"cancelOperation"];
  }
}

- (OS_dispatch_queue)diskAccessQueue
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _diskAccessQueue = [(DEDBugSession *)selfCopy _diskAccessQueue];

  if (!_diskAccessQueue)
  {
    v4 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v7 = [v4 stringWithFormat:@"com.apple.ded.disk-access-queue-%@", uUIDString];

    v8 = [(DEDBugSession *)selfCopy log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(DEDBugSession *)selfCopy identifier];
      *buf = 138543618;
      v16 = v7;
      v17 = 2114;
      v18 = identifier;
      _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "Creating diskAccessQueue [%{public}@] for session [%{public}@]", buf, 0x16u);
    }

    v10 = v7;
    v11 = dispatch_queue_create([v7 UTF8String], 0);
    [(DEDBugSession *)selfCopy set_diskAccessQueue:v11];
  }

  objc_sync_exit(selfCopy);

  _diskAccessQueue2 = [(DEDBugSession *)selfCopy _diskAccessQueue];
  v13 = *MEMORY[0x277D85DE8];

  return _diskAccessQueue2;
}

- (void)_cancel
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [(DEDBugSession *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(DEDBugSession *)self identifier];
    v6 = 138543362;
    v7 = identifier;
    _os_log_impl(&dword_248AD7000, v3, OS_LOG_TYPE_DEFAULT, "will cancel session [%{public}@]", &v6, 0xCu);
  }

  [(DEDBugSession *)self cleanup];
  [(DEDBugSession *)self didCancel];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setConfig:(id)config
{
  v12 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v5 = [(DEDBugSession *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(DEDBugSession *)self identifier];
    v10 = 138543362;
    v11 = identifier;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] setConfig", &v10, 0xCu);
  }

  if ([(DEDBugSession *)self hasCapability:@"mutable-bug-session"])
  {
    if ([configCopy finishingMove])
    {
      [(DEDBugSession *)self set_finisher:0];
      [(DEDBugSession *)self set_notifier:0];
      v7 = configCopy;
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
    identifier = [(DEDBugSession *)self identifier];
    v13 = 138543362;
    v14 = identifier;
    _os_log_impl(&dword_248AD7000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] did start", &v13, 0xCu);
  }

  if ([(DEDBugSession *)self isTarget])
  {
    pendingOperations = [(DEDBugSession *)self pendingOperations];
    objc_sync_enter(pendingOperations);
    v6 = [DEDBugSessionOperation hashingKeyWithId:@"cancelOperation" type:2000];
    pendingOperations2 = [(DEDBugSession *)self pendingOperations];
    v8 = [pendingOperations2 objectForKeyedSubscript:v6];

    if (v8)
    {
      v9 = [(DEDBugSession *)self log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [(DEDBugSession *)self identifier];
        v13 = 138543362;
        v14 = identifier2;
        _os_log_impl(&dword_248AD7000, v9, OS_LOG_TYPE_DEFAULT, "found cancel operation for restarted session [%{public}@], will remove", &v13, 0xCu);
      }

      pendingOperations3 = [(DEDBugSession *)self pendingOperations];
      [pendingOperations3 removeObjectForKey:v6];
    }

    objc_sync_exit(pendingOperations);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)cleanupFinishedUploads:(BOOL)uploads
{
  uploadsCopy = uploads;
  v55 = *MEMORY[0x277D85DE8];
  v5 = [(DEDBugSession *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(DEDBugSession *)self identifier];
    *buf = 138543362;
    v49 = identifier;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "will cleanup session [%{public}@]", buf, 0xCu);
  }

  if ([(DEDBugSession *)self isTarget])
  {
    v42 = uploadsCopy;
    [(DEDBugSession *)self removeFromStore];
    v7 = objc_alloc_init(DEDAttachmentHandler);
    identifier2 = [(DEDBugSession *)self identifier];
    [(DEDAttachmentHandler *)v7 removeDirectoryForBugSessionIdentifier:identifier2];

    finisher = [(DEDBugSession *)self finisher];
    if (finisher)
    {
      v10 = finisher;
      finisher2 = [(DEDBugSession *)self finisher];
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
    allValues = [v14 allValues];

    v16 = [allValues countByEnumeratingWithState:&v43 objects:v54 count:16];
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
            objc_enumerationMutation(allValues);
          }

          v20 = *(*(&v43 + 1) + 8 * i);
          bugSessionIdentifier = [v20 bugSessionIdentifier];
          identifier3 = [(DEDBugSession *)self identifier];
          v23 = [bugSessionIdentifier isEqualToString:identifier3];

          if (v23)
          {
            [v20 unschedule];
          }
        }

        v17 = [allValues countByEnumeratingWithState:&v43 objects:v54 count:16];
      }

      while (v17);
    }

    uploadsCopy = v42;
  }

  if ([(DEDBugSession *)self isTarget])
  {
    goto LABEL_21;
  }

  worker = [(DEDBugSession *)self worker];
  if ([worker transportType] == 3)
  {

LABEL_21:
    v27 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [DEDBugSession cleanupFinishedUploads:];
    }

    v28 = +[DEDDaemon sharedInstance];
    controller = [v28 controller];

    goto LABEL_24;
  }

  worker2 = [(DEDBugSession *)self worker];
  transportType = [worker2 transportType];

  if (transportType == 4)
  {
    goto LABEL_21;
  }

  worker3 = [(DEDBugSession *)self worker];
  transportType2 = [worker3 transportType];

  if (transportType2 == 2)
  {
    v41 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v41, OS_LOG_TYPE_INFO, "Cleaning up app side", buf, 2u);
    }

    controller = +[DEDManager sharedInstance];
  }

  else
  {
    controller = 0;
  }

LABEL_24:
  if (uploadsCopy)
  {
    identifier4 = [(DEDBugSession *)self identifier];
    [controller didFinishSessionWithIdentifier:identifier4];
  }

  identifier5 = [(DEDBugSession *)self identifier];
  [controller removeSessionWithIdentifier:identifier5];

  v32 = [(DEDBugSession *)self log];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    identifier6 = [(DEDBugSession *)self identifier];
    sessions = [controller sessions];
    v35 = [sessions count];
    sessions2 = [controller sessions];
    allKeys = [sessions2 allKeys];
    *buf = 138543874;
    v49 = identifier6;
    v50 = 2048;
    v51 = v35;
    v52 = 2114;
    v53 = allKeys;
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
    date = [MEMORY[0x277CBEAA8] date];
    uploadStartTime = [(DEDBugSession *)self uploadStartTime];
    [date timeIntervalSinceDate:uploadStartTime];
    v6 = v5;

    [(DEDBugSession *)self setUploadStartTime:0];
    v7 = objc_opt_new();
    identifier = [(DEDBugSession *)self identifier];
    v9 = [v7 directoryForBugSessionIdentifier:identifier];

    v10 = [MEMORY[0x277D051E0] getDirectorySize:v9];
    config = [(DEDBugSession *)self config];
    +[DEDAnalytics finisherDidCompleteWithDuration:uploadedByteCount:usingFinishingMove:withState:](DEDAnalytics, "finisherDidCompleteWithDuration:uploadedByteCount:usingFinishingMove:withState:", v6, v10, [config finishingMove], 1);

    [DEDAnalytics didCompleteBugSessionWithState:1];
  }

  [(DEDBugSession *)self cleanupFinishedUploads:1];
}

- (BOOL)readyToCancel
{
  pendingOperations = [(DEDBugSession *)self pendingOperations];
  objc_sync_enter(pendingOperations);
  pendingOperations2 = [(DEDBugSession *)self pendingOperations];
  allValues = [pendingOperations2 allValues];
  if ([allValues count] == 1)
  {
    pendingOperations3 = [(DEDBugSession *)self pendingOperations];
    allValues2 = [pendingOperations3 allValues];
    firstObject = [allValues2 firstObject];
    v9 = [firstObject type] == 2000;
  }

  else
  {
    v9 = 0;
  }

  objc_sync_exit(pendingOperations);
  return v9;
}

- (BOOL)readyToFinish
{
  pendingOperations = [(DEDBugSession *)self pendingOperations];
  objc_sync_enter(pendingOperations);
  pendingOperations2 = [(DEDBugSession *)self pendingOperations];
  allValues = [pendingOperations2 allValues];
  if ([allValues count] == 1)
  {
    pendingOperations3 = [(DEDBugSession *)self pendingOperations];
    allValues2 = [pendingOperations3 allValues];
    firstObject = [allValues2 firstObject];
    v9 = [firstObject type] == 1000;
  }

  else
  {
    v9 = 0;
  }

  objc_sync_exit(pendingOperations);
  return v9;
}

- (BOOL)isRunningDE:(id)e
{
  eCopy = e;
  if ([(DEDBugSession *)self isTarget])
  {
    pendingOperations = [(DEDBugSession *)self pendingOperations];
    objc_sync_enter(pendingOperations);
    pendingOperations2 = [(DEDBugSession *)self pendingOperations];
    v7 = [DEDBugSessionOperation hashingKeyWithId:eCopy type:1];
    v8 = [pendingOperations2 objectForKey:v7];

    v9 = v8 != 0;
    objc_sync_exit(pendingOperations);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldCollectDiagnosticWithId:(id)id
{
  v16 = *MEMORY[0x277D85DE8];
  idCopy = id;
  if (![(DEDBugSession *)self isTarget])
  {
    goto LABEL_6;
  }

  pendingOperations = [(DEDBugSession *)self pendingOperations];
  objc_sync_enter(pendingOperations);
  pendingOperations2 = [(DEDBugSession *)self pendingOperations];
  v7 = [DEDBugSessionOperation hashingKeyWithId:idCopy type:0];
  v8 = [pendingOperations2 objectForKey:v7];

  objc_sync_exit(pendingOperations);
  if (v8)
  {
    v9 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      hashingKey = [v8 hashingKey];
      v14 = 138543362;
      v15 = hashingKey;
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

- (void)didTerminateDiagnosticExtension:(id)extension info:(id)info
{
  infoCopy = info;
  extensionCopy = extension;
  [(DEDBugSession *)self didFinishOperation:0 withIdentifier:extensionCopy];
  v12 = [[DEDExtensionIdentifier alloc] initWithString:extensionCopy];
  identifierManager = [(DEDBugSession *)self identifierManager];
  [identifierManager revokeIdentifier:v12];

  [(DEDBugSession *)self save];
  [(DEDBugSession *)self notifyPromiseCancellationIfNeeded:extensionCopy info:infoCopy];

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
      identifier = [(DEDBugSession *)self identifier];
      [(DEDWorkerProtocol *)worker scheduleNotificationForSession:identifier];
    }

    else
    {
      if (![(DEDBugSession *)self readyToFinish])
      {
        goto LABEL_9;
      }

      v11 = self->_worker;
      identifier = [(DEDBugSession *)self identifier];
      [(DEDWorkerProtocol *)v11 commitSession:identifier];
    }
  }

LABEL_9:
}

- (void)notifyPromiseCancellationIfNeeded:(id)needed info:(id)info
{
  neededCopy = needed;
  infoCopy = info;
  if ([(DEDBugSession *)self isTarget])
  {
    finisher = [(DEDBugSession *)self finisher];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      finisher2 = [(DEDBugSession *)self finisher];
      [finisher2 didCancelCollectionOnExtension:neededCopy];
    }

    v11 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [DEDBugSession notifyPromiseCancellationIfNeeded:neededCopy info:self];
    }

    v12 = +[DEDDaemon sharedInstance];
    identifier = [(DEDBugSession *)self identifier];
    [v12 teardownDeferredDiagnosticsWithIdentifier:neededCopy parameters:infoCopy session:identifier];
  }
}

- (id)ongoingCollectOperationsWithOperations:(id)operations
{
  v24 = *MEMORY[0x277D85DE8];
  operationsCopy = operations;
  v5 = [operationsCopy ded_selectItemsPassingTest:&__block_literal_global_138];
  v6 = [v5 ded_mapWithBlock:&__block_literal_global_141];
  v7 = [(DEDBugSession *)self log];
  v8 = [(DEDBugSession *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    identifier = [(DEDBugSession *)self identifier];
    *buf = 138412802;
    v19 = identifier;
    v20 = 2112;
    v21 = operationsCopy;
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
  v11 = [operationsCopy ded_rejectItemsPassingTest:v15];

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
  pendingOperations = [(DEDBugSession *)self pendingOperations];
  objc_sync_enter(pendingOperations);
  pendingOperations2 = [(DEDBugSession *)self pendingOperations];
  allValues = [pendingOperations2 allValues];
  v6 = [(DEDBugSession *)self ongoingCollectOperationsWithOperations:allValues];
  v7 = [v6 ded_selectItemsPassingTest:&__block_literal_global_144];
  v8 = [v7 valueForKeyPath:@"identifier"];

  objc_sync_exit(pendingOperations);

  return v8;
}

- (id)scheduledDeferredExtensionCollectionOperations
{
  pendingOperations = [(DEDBugSession *)self pendingOperations];
  objc_sync_enter(pendingOperations);
  pendingOperations2 = [(DEDBugSession *)self pendingOperations];
  allValues = [pendingOperations2 allValues];
  v6 = [(DEDBugSession *)self ongoingCollectOperationsWithOperations:allValues];
  v7 = [v6 ded_selectItemsPassingTest:&__block_literal_global_146];
  v8 = [v7 valueForKeyPath:@"identifier"];

  objc_sync_exit(pendingOperations);

  return v8;
}

- (void)didAdoptGroup:(id)group
{
  groupCopy = group;
  finisher = [(DEDBugSession *)self finisher];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    finisher2 = [(DEDBugSession *)self finisher];
    [finisher2 didAdoptAttachmentGroup:groupCopy];
  }
}

- (int64_t)instanceType
{
  client = [(DEDBugSession *)self client];
  if (client)
  {
  }

  else
  {
    worker = [(DEDBugSession *)self worker];

    if (!worker)
    {
      v11 = [(DEDBugSession *)self log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [DEDBugSession instanceType];
      }

      return 0;
    }
  }

  client2 = [(DEDBugSession *)self client];
  if ([client2 transportType] == 4)
  {

    return 4;
  }

  client3 = [(DEDBugSession *)self client];
  transportType = [client3 transportType];

  if (transportType == 3)
  {
    return 4;
  }

  worker2 = [(DEDBugSession *)self worker];
  transportType2 = [worker2 transportType];

  if (transportType2 == 1)
  {
    return 3;
  }

  worker3 = [(DEDBugSession *)self worker];
  if ([worker3 transportType] == 3)
  {

    return 2;
  }

  worker4 = [(DEDBugSession *)self worker];
  transportType3 = [worker4 transportType];

  if (transportType3 == 4)
  {
    return 2;
  }

  worker5 = [(DEDBugSession *)self worker];
  transportType4 = [worker5 transportType];

  if (transportType4 != 2)
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
  worker = [(DEDBugSession *)self worker];
  v3 = [worker transportType] == 1;

  return v3;
}

- (void)populateLocalizedTextDataForExtensions:(id)extensions
{
  v28 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  if (![(DEDBugSession *)self hasLocalizedTextDataInCache])
  {
    v6 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [DEDBugSession populateLocalizedTextDataForExtensions:];
    }

    goto LABEL_17;
  }

  cachedExtensions = [(DEDBugSession *)self cachedExtensions];

  if (cachedExtensions)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = extensionsCopy;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v21 = extensionsCopy;
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
          cachedExtensions2 = [(DEDBugSession *)self cachedExtensions];
          identifier = [v11 identifier];
          v14 = [cachedExtensions2 objectForKeyedSubscript:identifier];

          if (v14)
          {
            v15 = [(DEDBugSession *)self log];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              [(DEDBugSession *)v26 populateLocalizedTextDataForExtensions:v11];
            }

            localizedConsentText = [v14 localizedConsentText];
            [v11 setLocalizedConsentText:localizedConsentText];

            localizedCustomerConsentText = [v14 localizedCustomerConsentText];
            [v11 setLocalizedCustomerConsentText:localizedCustomerConsentText];

            localizedDataCollectedExplanation = [v14 localizedDataCollectedExplanation];
            [v11 setLocalizedDataCollectedExplanation:localizedDataCollectedExplanation];

            localizedDataCollectedSummary = [v14 localizedDataCollectedSummary];
            [v11 setLocalizedDataCollectedSummary:localizedDataCollectedSummary];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v8);
      extensionsCopy = v21;
    }

LABEL_17:
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)updateCachedExtensionsWithLocalizedTextData:(id)data
{
  v29 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  cachedExtensions = [(DEDBugSession *)self cachedExtensions];

  if (cachedExtensions)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = dataCopy;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v22 = dataCopy;
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
          cachedExtensions2 = [(DEDBugSession *)self cachedExtensions];
          identifier = [v12 identifier];
          v15 = [cachedExtensions2 objectForKeyedSubscript:identifier];

          if (v15)
          {
            v16 = [(DEDBugSession *)self log];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              [(DEDBugSession *)v27 updateCachedExtensionsWithLocalizedTextData:v15];
            }

            localizedConsentText = [v12 localizedConsentText];
            [v15 setLocalizedConsentText:localizedConsentText];

            localizedCustomerConsentText = [v12 localizedCustomerConsentText];
            [v15 setLocalizedCustomerConsentText:localizedCustomerConsentText];

            localizedDataCollectedExplanation = [v12 localizedDataCollectedExplanation];
            [v15 setLocalizedDataCollectedExplanation:localizedDataCollectedExplanation];

            localizedDataCollectedSummary = [v12 localizedDataCollectedSummary];
            [v15 setLocalizedDataCollectedSummary:localizedDataCollectedSummary];

            v9 = 1;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);

      dataCopy = v22;
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

- (id)hashExtensions:(id)extensions
{
  v20 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(extensionsCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = extensionsCopy;
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
        identifier = [v10 identifier];
        [v4 setObject:v10 forKey:identifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)nextCompletionBlockForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  deCompletions = [(DEDBugSession *)self deCompletions];
  v6 = [deCompletions objectForKey:identifierCopy];

  if (v6)
  {
    lastObject = [v6 lastObject];
    if (lastObject)
    {
      [v6 removeLastObject];
      v8 = MEMORY[0x24C1E5320](lastObject);
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

- (void)storeCollectionCompletion:(id)completion forIdentifier:(id)identifier
{
  completionCopy = completion;
  identifierCopy = identifier;
  deCompletions = [(DEDBugSession *)self deCompletions];
  v8 = [deCompletions objectForKey:identifierCopy];

  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
  }

  v9 = [completionCopy copy];
  v10 = MEMORY[0x24C1E5320]();
  [v8 addObject:v10];

  deCompletions2 = [(DEDBugSession *)self deCompletions];
  [deCompletions2 setObject:v8 forKey:identifierCopy];
}

- (BOOL)hasCapability:(id)capability
{
  capabilityCopy = capability;
  config = [(DEDBugSession *)self config];
  requestedCapabilities = [config requestedCapabilities];
  v7 = [requestedCapabilities containsObject:capabilityCopy];

  return v7;
}

- (id)notifier
{
  v25 = *MEMORY[0x277D85DE8];
  _notifier = [(DEDBugSession *)self _notifier];

  if (_notifier)
  {
    goto LABEL_25;
  }

  instanceType = [(DEDBugSession *)self instanceType];
  if (instanceType < 2)
  {
    p_super = [(DEDBugSession *)self log];
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [(DEDBugSession *)self notifier];
    }

    goto LABEL_20;
  }

  if (instanceType - 2 >= 2)
  {
    if (instanceType != 4)
    {
      goto LABEL_21;
    }

    p_super = [(DEDBugSession *)self client];
    if (([p_super conformsToProtocol:&unk_285B8EFF8]& 1) == 0)
    {
      goto LABEL_20;
    }

    client = [(DEDBugSession *)self client];
    v10 = [client conformsToProtocol:&unk_285B8A958];

    if (!v10)
    {
      goto LABEL_21;
    }

    client2 = [(DEDBugSession *)self client];
    goto LABEL_15;
  }

  config = [(DEDBugSession *)self config];
  notifyingMove = [config notifyingMove];

  switch(notifyingMove)
  {
    case 1:
      v7 = DEDUserNotificationNotifier;
      goto LABEL_17;
    case 3:
      client2 = objc_alloc_init(DEDEnhancedLoggingNotifier);
LABEL_15:
      p_super = &client2->super;
      [(DEDBugSession *)self set_notifier:client2];
      goto LABEL_20;
    case 2:
      v7 = DEDFollowUpNotifier;
LABEL_17:
      v12 = [v7 alloc];
      config2 = [(DEDBugSession *)self config];
      v14 = [v12 initWithConfiguration:config2 session:self];
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
  _notifier2 = [(DEDBugSession *)self _notifier];

  if (_notifier2)
  {
    v16 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      _notifier3 = [(DEDBugSession *)self _notifier];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v23 = 138543362;
      v24 = v19;
      _os_log_impl(&dword_248AD7000, v16, OS_LOG_TYPE_DEFAULT, "Using notifier [%{public}@]", &v23, 0xCu);
    }
  }

LABEL_25:
  _notifier4 = [(DEDBugSession *)self _notifier];
  v21 = *MEMORY[0x277D85DE8];

  return _notifier4;
}

- (BOOL)readyToNotify
{
  pendingOperations = [(DEDBugSession *)self pendingOperations];
  objc_sync_enter(pendingOperations);
  pendingOperations2 = [(DEDBugSession *)self pendingOperations];
  allValues = [pendingOperations2 allValues];
  if ([allValues count] == 1)
  {
    pendingOperations3 = [(DEDBugSession *)self pendingOperations];
    allValues2 = [pendingOperations3 allValues];
    firstObject = [allValues2 firstObject];
    v9 = [firstObject type] == 100;
  }

  else
  {
    v9 = 0;
  }

  objc_sync_exit(pendingOperations);
  return v9;
}

- (void)presentNotificationOnFilingDevice
{
  notifier = [(DEDBugSession *)self notifier];
  identifier = [(DEDBugSession *)self identifier];
  [notifier presentNotificationForSession:identifier];

  if ([(DEDBugSession *)self instanceType]== 3)
  {

    [(DEDBugSession *)self didFinishOperation:100 withIdentifier:@"notifyOperation"];
  }
}

- (void)idsInbound_presentNotificationOnFilingDevice
{
  v7 = *MEMORY[0x277D85DE8];
  [self instanceType];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)idsInbound_didPresentNotificationOnFilingDevice
{
  v7 = *MEMORY[0x277D85DE8];
  [self instanceType];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)clearNotificationOnFilingDevice
{
  notifier = [(DEDBugSession *)self notifier];
  identifier = [(DEDBugSession *)self identifier];
  [notifier removeNotificationForSession:identifier];

  if ([(DEDBugSession *)self instanceType]== 3)
  {

    [(DEDBugSession *)self didFinishOperation:100 withIdentifier:@"notifyOperation"];
  }
}

- (void)idsInbound_clearNotificationOnFilingDevice
{
  v7 = *MEMORY[0x277D85DE8];
  [self instanceType];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)idsInbound_didClearNotificationOnFilingDevice
{
  v7 = *MEMORY[0x277D85DE8];
  [self instanceType];
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

- (void)willPerformOperationWithID:(id)d type:(int64_t)type options:(id)options
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  optionsCopy = options;
  if ([(DEDBugSession *)self isTarget])
  {
    pendingOperations = [(DEDBugSession *)self pendingOperations];
    objc_sync_enter(pendingOperations);
    v11 = objc_opt_new();
    [v11 setIdentifier:dCopy];
    [v11 setType:type];
    [v11 setOptions:optionsCopy];
    pendingOperations2 = [(DEDBugSession *)self pendingOperations];
    hashingKey = [v11 hashingKey];
    [pendingOperations2 setObject:v11 forKey:hashingKey];

    v14 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      hashingKey2 = [v11 hashingKey];
      v17 = 138543362;
      v18 = hashingKey2;
      _os_log_impl(&dword_248AD7000, v14, OS_LOG_TYPE_INFO, "will persist operation [%{public}@]", &v17, 0xCu);
    }

    objc_sync_exit(pendingOperations);
  }

  [(DEDBugSession *)self _logOperationQueue];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)didFinishOperation:(int64_t)operation withIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([(DEDBugSession *)self isTarget])
  {
    pendingOperations = [(DEDBugSession *)self pendingOperations];
    objc_sync_enter(pendingOperations);
    pendingOperations2 = [(DEDBugSession *)self pendingOperations];
    v9 = [DEDBugSessionOperation hashingKeyWithId:identifierCopy type:operation];
    [pendingOperations2 removeObjectForKey:v9];

    objc_sync_exit(pendingOperations);
    if (operation == 2000)
    {
      v10 = [(DEDBugSession *)self log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [(DEDBugSession *)self identifier];
        v13 = 138543362;
        v14 = identifier;
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

- (void)setUploadDelegate:(id)delegate
{
  v13 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  if ([(DEDBugSession *)self instanceType]== 1)
  {
    v5 = [(DEDBugSession *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(DEDBugSession *)self identifier];
      v9 = 138543618;
      v10 = delegateCopy;
      v11 = 2114;
      v12 = identifier;
      _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "Setting uploadDelegate: [%{public}@] session [%{public}@]", &v9, 0x16u);
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(DEDBugSession *)selfCopy set__uploadDelegate:delegateCopy];
  objc_sync_exit(selfCopy);

  v8 = *MEMORY[0x277D85DE8];
}

- (DEDUploadStatusDelegate)uploadDelegate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  __uploadDelegate = [(DEDBugSession *)selfCopy __uploadDelegate];
  objc_sync_exit(selfCopy);

  return __uploadDelegate;
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
    pendingOperations = [(DEDBugSession *)self pendingOperations];
    objc_sync_enter(pendingOperations);
    v4 = _logOperationQueue_opDebugLog;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(DEDBugSession *)self identifier];
      pendingOperations2 = [(DEDBugSession *)self pendingOperations];
      allKeys = [pendingOperations2 allKeys];
      v9 = 138412546;
      v10 = identifier;
      v11 = 2112;
      v12 = allKeys;
      _os_log_debug_impl(&dword_248AD7000, v4, OS_LOG_TYPE_DEBUG, "BS [%@] Operations %@", &v9, 0x16u);
    }

    objc_sync_exit(pendingOperations);
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
  finisherWithState = [(DEDBugSession *)self finisherWithState];
  additionalStateInfo = [finisherWithState additionalStateInfo];
  v4 = additionalStateInfo;
  if (additionalStateInfo)
  {
    v5 = additionalStateInfo;
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
  pendingOperations = [(DEDBugSession *)self pendingOperations];
  objc_sync_enter(pendingOperations);
  if ([(DEDBugSession *)self readyToFinish])
  {
    finisherWithState = [(DEDBugSession *)self finisherWithState];
    isUploading = [finisherWithState isUploading];

    if ((isUploading & 1) == 0)
    {
      finisherWithState2 = [(DEDBugSession *)self finisherWithState];
      isCompressing = [finisherWithState2 isCompressing];

      if ((isCompressing & 1) == 0)
      {
        finisherWithState3 = [(DEDBugSession *)self finisherWithState];
        isUploading2 = [finisherWithState3 isUploading];

        if (isUploading2)
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
    pendingOperations2 = [(DEDBugSession *)self pendingOperations];
    objc_sync_enter(pendingOperations2);
    ongoingExtensionCollectionOperations = [(DEDBugSession *)self ongoingExtensionCollectionOperations];
    v9 = [ongoingExtensionCollectionOperations count];

    scheduledDeferredExtensionCollectionOperations = [(DEDBugSession *)self scheduledDeferredExtensionCollectionOperations];
    v11 = [scheduledDeferredExtensionCollectionOperations count];

    pendingOperations3 = [(DEDBugSession *)self pendingOperations];
    v13 = [pendingOperations3 count];

    isCancelling = [(DEDBugSession *)self isCancelling];
    pendingOperations4 = [(DEDBugSession *)self pendingOperations];
    v16 = [DEDBugSessionOperation hashingKeyWithId:@"notifyOperation" type:100];
    v17 = [pendingOperations4 objectForKey:v16];

    objc_sync_exit(pendingOperations2);
    hasDirectory = [(DEDBugSession *)self hasDirectory];
    hasStaleDirectory = [(DEDBugSession *)self hasStaleDirectory];
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
      v39 = hasDirectory;
      v40 = 1024;
      v41 = hasStaleDirectory;
      v42 = 1024;
      v43 = isCancelling;
      v44 = 1024;
      v45 = v17 != 0;
      _os_log_debug_impl(&dword_248AD7000, v20, OS_LOG_TYPE_DEBUG, "IC: [%i] HDCO: [%i] HPO: [%i] HDIR: [%i] HSDIR [%i] IC [%i] HNO [%i]", v33, 0x2Cu);
    }

    v21 = v9 != 0;

    v22 = isCancelling || v21 || v11 != 0;
    v23 = 3;
    if (v21)
    {
      v23 = 4;
    }

    if (isCancelling)
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
        if (hasStaleDirectory)
        {
          v29 = -1;
        }

        if (hasDirectory)
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
  objc_sync_exit(pendingOperations);

  v31 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isCancelling
{
  pendingOperations = [(DEDBugSession *)self pendingOperations];
  v4 = [pendingOperations count];

  if (!v4)
  {
    return 0;
  }

  pendingOperations2 = [(DEDBugSession *)self pendingOperations];
  v6 = [DEDBugSessionOperation hashingKeyWithId:@"cancelOperation" type:2000];
  v7 = [pendingOperations2 objectForKeyedSubscript:v6];

  if (!v7)
  {
    pendingOperations3 = [(DEDBugSession *)self pendingOperations];
    allValues = [pendingOperations3 allValues];
    v11 = [allValues ded_selectItemsPassingTest:&__block_literal_global_26];
    v12 = [v11 count];

    pendingOperations4 = [(DEDBugSession *)self pendingOperations];
    allValues2 = [pendingOperations4 allValues];
    v15 = [allValues2 ded_selectItemsPassingTest:&__block_literal_global_12_0];
    v16 = [v15 count];

    if (v12 == v16)
    {
      pendingOperations5 = [(DEDBugSession *)self pendingOperations];
      allValues3 = [pendingOperations5 allValues];
      v8 = [allValues3 count] == 2 * v12;

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
  finisher = [(DEDBugSession *)self finisher];
  if ([finisher conformsToProtocol:&unk_285B8E298])
  {
    v3 = finisher;
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
  identifier = [(DEDBugSession *)self identifier];
  v5 = [(DEDAttachmentHandler *)v3 directoryForBugSessionIdentifier:identifier];

  LOBYTE(identifier) = [v5 checkResourceIsReachableAndReturnError:0];
  return identifier;
}

- (BOOL)hasStaleDirectory
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(DEDAttachmentHandler);
  identifier = [(DEDBugSession *)self identifier];
  v5 = [(DEDAttachmentHandler *)v3 directoryForBugSessionIdentifier:identifier];

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
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      v16 = objc_alloc_init(MEMORY[0x277CBEAA8]);
      v17 = [currentCalendar dateByAddingComponents:v14 toDate:v16 options:0];

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
  identifier = [self identifier];
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
  [self instanceType];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

@end