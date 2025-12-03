@interface FPDDomainDeadEndBackend
- (BOOL)isProviderForRealPathURL:(id)l;
- (FPDDomainDeadEndBackend)initWithDomain:(id)domain;
- (FPDDomainDeadEndBackend)initWithDomain:(id)domain materializationError:(id)error;
- (NSArray)checkableURLs;
- (NSArray)coordinationRootURLs;
- (NSArray)rootURLs;
- (id)createRootByImportingURL:(id)l knownFolders:(id)folders error:(id *)error;
- (id)startProvidingItemAtURL:(id)l readerID:(id)d readingOptions:(unint64_t)options request:(id)request completionHandler:(id)handler;
- (void)URLForItemID:(id)d creatingPlaceholderIfMissing:(BOOL)missing ignoreAlternateContentsURL:(BOOL)l forBookmarkResolution:(BOOL)resolution request:(id)request completionHandler:(id)handler;
- (void)clearDiagnosticState:(id)state;
- (void)copyDatabaseToURL:(id)l completionHandler:(id)handler;
- (void)didUpdateAlternateContentsDocumentForDocumentWithURL:(id)l request:(id)request completionHandler:(id)handler;
- (void)enumerateSearchResultForRequest:(id)request lifetimeExtender:(id)extender completionHandler:(id)handler;
- (void)fetchOperationServiceOrEndpointWithRequest:(id)request completionHandler:(id)handler;
- (void)fetchServicesForItemID:(id)d allowRestrictedSources:(BOOL)sources request:(id)request completionHandler:(id)handler;
- (void)fetchTelemetryReportWithAlwaysFetchExpandedUsageStats:(BOOL)stats completionHandler:(id)handler;
- (void)fetchThumbnailsAtURL:(id)l versions:(id)versions size:(CGSize)size perThumbnailCompletionHandler:(id)handler completionHandler:(id)completionHandler;
- (void)fetchVendorEndpointWithRequest:(id)request completionHandler:(id)handler;
- (void)forceUpdateBlockedProcessNamesFromDomain:(id)domain completionHandler:(id)handler;
- (void)getSavedDiagnostics:(id)diagnostics;
- (void)hasNonUploadedFilesWithCompletionHandler:(id)handler;
- (void)hierarchyForURL:(id)l request:(id)request completionHandler:(id)handler;
- (void)launchFeedbackForDomain:(id)domain itemIdentifier:(id)identifier triggeringError:(id)error when:(id)when useDiagnostic:(BOOL)diagnostic completionHandler:(id)handler;
- (void)listRemoteVersionsOfItemAtURL:(id)l includeCachedVersions:(BOOL)versions request:(id)request completionHandler:(id)handler;
- (void)movingItemAtURL:(id)l withInfo:(id)info completionHandler:(id)handler;
- (void)reimportItemsBelowItemWithID:(id)d markItemDataless:(BOOL)dataless completionHandler:(id)handler;
- (void)reindexAllItemsWithDropReason:(unint64_t)reason completionHandler:(id)handler;
- (void)reindexItemsWithIndexReason:(int64_t)reason identifiers:(id)identifiers completionHandler:(id)handler;
- (void)requestDiagnosticCollectionForItemWithID:(id)d errorReason:(id)reason completionHandler:(id)handler;
- (void)resolveConflictAtURL:(id)l request:(id)request completionHandler:(id)handler;
- (void)stateWithCompletionHandler:(id)handler;
- (void)trashItemAtURL:(id)l request:(id)request completionHandler:(id)handler;
- (void)triggerFeedbackApprovalRequestForItemURL:(id)l domain:(id)domain uiOnly:(BOOL)only completionHandler:(id)handler;
- (void)wakeForPushWithCompletionHandler:(id)handler;
@end

@implementation FPDDomainDeadEndBackend

- (FPDDomainDeadEndBackend)initWithDomain:(id)domain
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E6967190];
  domainCopy = domain;
  v7 = [v4 errorWithDomain:v5 code:-1004 userInfo:0];
  v8 = [(FPDDomainDeadEndBackend *)self initWithDomain:domainCopy materializationError:v7];

  return v8;
}

- (FPDDomainDeadEndBackend)initWithDomain:(id)domain materializationError:(id)error
{
  domainCopy = domain;
  errorCopy = error;
  providerDomainID = [domainCopy providerDomainID];
  fp_toProviderID = [providerDomainID fp_toProviderID];

  if ([domainCopy unableToStartup] && +[FPDynamicErrorDecider shouldSendFor:](_TtC18FileProviderDaemon21FPDynamicErrorDecider, "shouldSendFor:", fp_toProviderID))
  {
    defaultManager = [MEMORY[0x1E699C730] defaultManager];
    provider = [domainCopy provider];
    bundleVersion = [provider bundleVersion];
    v13 = [defaultManager sessionForProviderID:fp_toProviderID version:bundleVersion];

    [v13 postReportWithCategory:1 type:1 payload:&unk_1F4C62AA8 error:errorCopy];
  }

  if ([errorCopy fp_isPOSIXErrorCode:28])
  {
    volume = [domainCopy volume];
    isDiskSpaceMonitorRunning = [volume isDiskSpaceMonitorRunning];

    if ((isDiskSpaceMonitorRunning & 1) == 0)
    {
      v16 = objc_alloc_init(FPDTapToRadarManager);
      v17 = MEMORY[0x1E696AEC0];
      volume2 = [domainCopy volume];
      v19 = [v17 stringWithFormat:@"Domain was disconnected due to low disk space, but the disk space monitor wasn't triggered for the volume\n\ndomain: %@\nvolume: %@\n", domainCopy, volume2];

      LOBYTE(v23) = 1;
      [(FPDTapToRadarManager *)v16 requestTapToRadarWithTitle:@"Disk space monitor not running for low disk domain" description:v19 keywords:MEMORY[0x1E695E0F0] attachments:MEMORY[0x1E695E0F0] displayReason:@"disconnecting a domain found an issue" providerID:fp_toProviderID skipSysdiagnose:v23];
    }
  }

  v24.receiver = self;
  v24.super_class = FPDDomainDeadEndBackend;
  v20 = [(FPDDomainDeadEndBackend *)&v24 init];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_domain, domainCopy);
    objc_storeStrong(&v21->_materializationError, error);
  }

  return v21;
}

- (BOOL)isProviderForRealPathURL:(id)l
{
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_domain);
  deactivatedBackend = [WeakRetained deactivatedBackend];
  v7 = [deactivatedBackend isProviderForRealPathURL:lCopy];

  return v7;
}

- (NSArray)rootURLs
{
  WeakRetained = objc_loadWeakRetained(&self->_domain);
  deactivatedBackend = [WeakRetained deactivatedBackend];
  rootURLs = [deactivatedBackend rootURLs];

  return rootURLs;
}

- (NSArray)coordinationRootURLs
{
  WeakRetained = objc_loadWeakRetained(&self->_domain);
  deactivatedBackend = [WeakRetained deactivatedBackend];
  coordinationRootURLs = [deactivatedBackend coordinationRootURLs];

  return coordinationRootURLs;
}

- (NSArray)checkableURLs
{
  WeakRetained = objc_loadWeakRetained(&self->_domain);
  deactivatedBackend = [WeakRetained deactivatedBackend];
  checkableURLs = [deactivatedBackend checkableURLs];

  return checkableURLs;
}

- (id)startProvidingItemAtURL:(id)l readerID:(id)d readingOptions:(unint64_t)options request:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v10 = [l fp_isDatalessWithError:0];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    handlerCopy[2](handlerCopy, self->_materializationError);
  }

  handlerCopy[2](handlerCopy, 0);

  return 0;
}

- (void)URLForItemID:(id)d creatingPlaceholderIfMissing:(BOOL)missing ignoreAlternateContentsURL:(BOOL)l forBookmarkResolution:(BOOL)resolution request:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  identifier = [d identifier];
  v11 = [identifier isEqualToString:*MEMORY[0x1E6967258]];

  if (v11 && (-[FPDDomainDeadEndBackend rootURLs](self, "rootURLs"), v12 = objc_claimAutoreleasedReturnValue(), [v12 firstObject], v13 = objc_claimAutoreleasedReturnValue(), v12, v13))
  {
    v14 = [MEMORY[0x1E6967408] wrapperWithURL:v13 readonly:1 error:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v14, 0);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
  }
}

- (void)fetchTelemetryReportWithAlwaysFetchExpandedUsageStats:(BOOL)stats completionHandler:(id)handler
{
  v13[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_domain);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v12[0] = @"enabled";
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(WeakRetained, "userEnabled")}];
    v12[1] = @"disconnection_state";
    v13[0] = v8;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "disconnectionState")}];
    v13[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    handlerCopy[2](handlerCopy, v10, 0);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, 0);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)copyDatabaseToURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, v6);
}

- (void)reimportItemsBelowItemWithID:(id)d markItemDataless:(BOOL)dataless completionHandler:(id)handler
{
  if (self->_materializationError)
  {
    v6 = *(handler + 2);
    handlerCopy = handler;
    v6();
  }

  else
  {
    handlerCopy2 = handler;
    handlerCopy = FPNotSupportedError();
    (*(handler + 2))(handlerCopy2);
  }
}

- (id)createRootByImportingURL:(id)l knownFolders:(id)folders error:(id *)error
{
  if (error)
  {
    *error = FPNotSupportedError();
  }

  return 0;
}

- (void)fetchOperationServiceOrEndpointWithRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = FPDomainUnavailableError();
  (*(handler + 2))(handlerCopy, 0, 0, v6);
}

- (void)forceUpdateBlockedProcessNamesFromDomain:(id)domain completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = FPDomainUnavailableError();
  (*(handler + 2))(handlerCopy, v6);
}

- (void)fetchServicesForItemID:(id)d allowRestrictedSources:(BOOL)sources request:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = FPDomainUnavailableError();
  (*(handler + 2))(handlerCopy, 0, 0, v8);
}

- (void)fetchVendorEndpointWithRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = FPDomainUnavailableError();
  (*(handler + 2))(handlerCopy, 0, v6);
}

- (void)trashItemAtURL:(id)l request:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, 0, v7);
}

- (void)movingItemAtURL:(id)l withInfo:(id)info completionHandler:(id)handler
{
  v6 = MEMORY[0x1E696AC10];
  handlerCopy = handler;
  providingRequiredResponse = [v6 providingRequiredResponse];
  (*(handler + 2))(handlerCopy, providingRequiredResponse);
}

- (void)stateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, 0, v5);
}

- (void)wakeForPushWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = FPDomainUnavailableError();
  (*(handler + 2))(handlerCopy, v5);
}

- (void)resolveConflictAtURL:(id)l request:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, v7);
}

- (void)listRemoteVersionsOfItemAtURL:(id)l includeCachedVersions:(BOOL)versions request:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, 0, MEMORY[0x1E695E0F0], v8);
}

- (void)fetchThumbnailsAtURL:(id)l versions:(id)versions size:(CGSize)size perThumbnailCompletionHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  v9 = FPNotSupportedError();
  (*(completionHandler + 2))(completionHandlerCopy, v9);
}

- (void)hasNonUploadedFilesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, 0, v5);
}

- (void)hierarchyForURL:(id)l request:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, MEMORY[0x1E695E0F0], v7);
}

- (void)didUpdateAlternateContentsDocumentForDocumentWithURL:(id)l request:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, v7);
}

- (void)reindexAllItemsWithDropReason:(unint64_t)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [FPDDomainDeadEndBackend reindexAllItemsWithDropReason:completionHandler:];
  }

  v6 = FPNotSupportedError();
  handlerCopy[2](handlerCopy, v6);
}

- (void)reindexItemsWithIndexReason:(int64_t)reason identifiers:(id)identifiers completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [FPDDomainDeadEndBackend reindexItemsWithIndexReason:identifiers:completionHandler:];
  }

  v7 = FPNotSupportedError();
  handlerCopy[2](handlerCopy, v7);
}

- (void)triggerFeedbackApprovalRequestForItemURL:(id)l domain:(id)domain uiOnly:(BOOL)only completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [FPDDomainDeadEndBackend triggerFeedbackApprovalRequestForItemURL:domain:uiOnly:completionHandler:];
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)launchFeedbackForDomain:(id)domain itemIdentifier:(id)identifier triggeringError:(id)error when:(id)when useDiagnostic:(BOOL)diagnostic completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [FPDDomainDeadEndBackend launchFeedbackForDomain:itemIdentifier:triggeringError:when:useDiagnostic:completionHandler:];
  }

  v10 = FPNotSupportedError();
  handlerCopy[2](handlerCopy, v10);
}

- (void)getSavedDiagnostics:(id)diagnostics
{
  diagnosticsCopy = diagnostics;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [FPDDomainDeadEndBackend getSavedDiagnostics:];
  }

  v5 = FPNotSupportedError();
  diagnosticsCopy[2](diagnosticsCopy, 0, v5);
}

- (void)clearDiagnosticState:(id)state
{
  stateCopy = state;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [FPDDomainDeadEndBackend clearDiagnosticState:];
  }

  v5 = FPNotSupportedError();
  stateCopy[2](stateCopy, v5);
}

- (void)requestDiagnosticCollectionForItemWithID:(id)d errorReason:(id)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [FPDDomainDeadEndBackend requestDiagnosticCollectionForItemWithID:errorReason:completionHandler:];
  }

  v7 = FPNotSupportedError();
  handlerCopy[2](handlerCopy, v7);
}

- (void)enumerateSearchResultForRequest:(id)request lifetimeExtender:(id)extender completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [FPDDomainDeadEndBackend enumerateSearchResultForRequest:lifetimeExtender:completionHandler:];
  }

  v7 = FPNotSupportedError();
  handlerCopy[2](handlerCopy, 0, v7);
}

@end