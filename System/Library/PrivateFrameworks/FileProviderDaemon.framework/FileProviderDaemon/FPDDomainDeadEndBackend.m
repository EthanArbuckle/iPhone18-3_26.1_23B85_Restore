@interface FPDDomainDeadEndBackend
- (BOOL)isProviderForRealPathURL:(id)a3;
- (FPDDomainDeadEndBackend)initWithDomain:(id)a3;
- (FPDDomainDeadEndBackend)initWithDomain:(id)a3 materializationError:(id)a4;
- (NSArray)checkableURLs;
- (NSArray)coordinationRootURLs;
- (NSArray)rootURLs;
- (id)createRootByImportingURL:(id)a3 knownFolders:(id)a4 error:(id *)a5;
- (id)startProvidingItemAtURL:(id)a3 readerID:(id)a4 readingOptions:(unint64_t)a5 request:(id)a6 completionHandler:(id)a7;
- (void)URLForItemID:(id)a3 creatingPlaceholderIfMissing:(BOOL)a4 ignoreAlternateContentsURL:(BOOL)a5 forBookmarkResolution:(BOOL)a6 request:(id)a7 completionHandler:(id)a8;
- (void)clearDiagnosticState:(id)a3;
- (void)copyDatabaseToURL:(id)a3 completionHandler:(id)a4;
- (void)didUpdateAlternateContentsDocumentForDocumentWithURL:(id)a3 request:(id)a4 completionHandler:(id)a5;
- (void)enumerateSearchResultForRequest:(id)a3 lifetimeExtender:(id)a4 completionHandler:(id)a5;
- (void)fetchOperationServiceOrEndpointWithRequest:(id)a3 completionHandler:(id)a4;
- (void)fetchServicesForItemID:(id)a3 allowRestrictedSources:(BOOL)a4 request:(id)a5 completionHandler:(id)a6;
- (void)fetchTelemetryReportWithAlwaysFetchExpandedUsageStats:(BOOL)a3 completionHandler:(id)a4;
- (void)fetchThumbnailsAtURL:(id)a3 versions:(id)a4 size:(CGSize)a5 perThumbnailCompletionHandler:(id)a6 completionHandler:(id)a7;
- (void)fetchVendorEndpointWithRequest:(id)a3 completionHandler:(id)a4;
- (void)forceUpdateBlockedProcessNamesFromDomain:(id)a3 completionHandler:(id)a4;
- (void)getSavedDiagnostics:(id)a3;
- (void)hasNonUploadedFilesWithCompletionHandler:(id)a3;
- (void)hierarchyForURL:(id)a3 request:(id)a4 completionHandler:(id)a5;
- (void)launchFeedbackForDomain:(id)a3 itemIdentifier:(id)a4 triggeringError:(id)a5 when:(id)a6 useDiagnostic:(BOOL)a7 completionHandler:(id)a8;
- (void)listRemoteVersionsOfItemAtURL:(id)a3 includeCachedVersions:(BOOL)a4 request:(id)a5 completionHandler:(id)a6;
- (void)movingItemAtURL:(id)a3 withInfo:(id)a4 completionHandler:(id)a5;
- (void)reimportItemsBelowItemWithID:(id)a3 markItemDataless:(BOOL)a4 completionHandler:(id)a5;
- (void)reindexAllItemsWithDropReason:(unint64_t)a3 completionHandler:(id)a4;
- (void)reindexItemsWithIndexReason:(int64_t)a3 identifiers:(id)a4 completionHandler:(id)a5;
- (void)requestDiagnosticCollectionForItemWithID:(id)a3 errorReason:(id)a4 completionHandler:(id)a5;
- (void)resolveConflictAtURL:(id)a3 request:(id)a4 completionHandler:(id)a5;
- (void)stateWithCompletionHandler:(id)a3;
- (void)trashItemAtURL:(id)a3 request:(id)a4 completionHandler:(id)a5;
- (void)triggerFeedbackApprovalRequestForItemURL:(id)a3 domain:(id)a4 uiOnly:(BOOL)a5 completionHandler:(id)a6;
- (void)wakeForPushWithCompletionHandler:(id)a3;
@end

@implementation FPDDomainDeadEndBackend

- (FPDDomainDeadEndBackend)initWithDomain:(id)a3
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E6967190];
  v6 = a3;
  v7 = [v4 errorWithDomain:v5 code:-1004 userInfo:0];
  v8 = [(FPDDomainDeadEndBackend *)self initWithDomain:v6 materializationError:v7];

  return v8;
}

- (FPDDomainDeadEndBackend)initWithDomain:(id)a3 materializationError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 providerDomainID];
  v9 = [v8 fp_toProviderID];

  if ([v6 unableToStartup] && +[FPDynamicErrorDecider shouldSendFor:](_TtC18FileProviderDaemon21FPDynamicErrorDecider, "shouldSendFor:", v9))
  {
    v10 = [MEMORY[0x1E699C730] defaultManager];
    v11 = [v6 provider];
    v12 = [v11 bundleVersion];
    v13 = [v10 sessionForProviderID:v9 version:v12];

    [v13 postReportWithCategory:1 type:1 payload:&unk_1F4C62AA8 error:v7];
  }

  if ([v7 fp_isPOSIXErrorCode:28])
  {
    v14 = [v6 volume];
    v15 = [v14 isDiskSpaceMonitorRunning];

    if ((v15 & 1) == 0)
    {
      v16 = objc_alloc_init(FPDTapToRadarManager);
      v17 = MEMORY[0x1E696AEC0];
      v18 = [v6 volume];
      v19 = [v17 stringWithFormat:@"Domain was disconnected due to low disk space, but the disk space monitor wasn't triggered for the volume\n\ndomain: %@\nvolume: %@\n", v6, v18];

      LOBYTE(v23) = 1;
      [(FPDTapToRadarManager *)v16 requestTapToRadarWithTitle:@"Disk space monitor not running for low disk domain" description:v19 keywords:MEMORY[0x1E695E0F0] attachments:MEMORY[0x1E695E0F0] displayReason:@"disconnecting a domain found an issue" providerID:v9 skipSysdiagnose:v23];
    }
  }

  v24.receiver = self;
  v24.super_class = FPDDomainDeadEndBackend;
  v20 = [(FPDDomainDeadEndBackend *)&v24 init];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_domain, v6);
    objc_storeStrong(&v21->_materializationError, a4);
  }

  return v21;
}

- (BOOL)isProviderForRealPathURL:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_domain);
  v6 = [WeakRetained deactivatedBackend];
  v7 = [v6 isProviderForRealPathURL:v4];

  return v7;
}

- (NSArray)rootURLs
{
  WeakRetained = objc_loadWeakRetained(&self->_domain);
  v3 = [WeakRetained deactivatedBackend];
  v4 = [v3 rootURLs];

  return v4;
}

- (NSArray)coordinationRootURLs
{
  WeakRetained = objc_loadWeakRetained(&self->_domain);
  v3 = [WeakRetained deactivatedBackend];
  v4 = [v3 coordinationRootURLs];

  return v4;
}

- (NSArray)checkableURLs
{
  WeakRetained = objc_loadWeakRetained(&self->_domain);
  v3 = [WeakRetained deactivatedBackend];
  v4 = [v3 checkableURLs];

  return v4;
}

- (id)startProvidingItemAtURL:(id)a3 readerID:(id)a4 readingOptions:(unint64_t)a5 request:(id)a6 completionHandler:(id)a7
{
  v9 = a7;
  v10 = [a3 fp_isDatalessWithError:0];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    v9[2](v9, self->_materializationError);
  }

  v9[2](v9, 0);

  return 0;
}

- (void)URLForItemID:(id)a3 creatingPlaceholderIfMissing:(BOOL)a4 ignoreAlternateContentsURL:(BOOL)a5 forBookmarkResolution:(BOOL)a6 request:(id)a7 completionHandler:(id)a8
{
  v15 = a8;
  v10 = [a3 identifier];
  v11 = [v10 isEqualToString:*MEMORY[0x1E6967258]];

  if (v11 && (-[FPDDomainDeadEndBackend rootURLs](self, "rootURLs"), v12 = objc_claimAutoreleasedReturnValue(), [v12 firstObject], v13 = objc_claimAutoreleasedReturnValue(), v12, v13))
  {
    v14 = [MEMORY[0x1E6967408] wrapperWithURL:v13 readonly:1 error:0];
    (*(v15 + 2))(v15, 0, v14, 0);
  }

  else
  {
    (*(v15 + 2))(v15, 0, 0, 0);
  }
}

- (void)fetchTelemetryReportWithAlwaysFetchExpandedUsageStats:(BOOL)a3 completionHandler:(id)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
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
    v5[2](v5, v10, 0);
  }

  else
  {
    v5[2](v5, 0, 0);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)copyDatabaseToURL:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = FPNotSupportedError();
  (*(a4 + 2))(v5, v6);
}

- (void)reimportItemsBelowItemWithID:(id)a3 markItemDataless:(BOOL)a4 completionHandler:(id)a5
{
  if (self->_materializationError)
  {
    v6 = *(a5 + 2);
    v8 = a5;
    v6();
  }

  else
  {
    v7 = a5;
    v8 = FPNotSupportedError();
    (*(a5 + 2))(v7);
  }
}

- (id)createRootByImportingURL:(id)a3 knownFolders:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = FPNotSupportedError();
  }

  return 0;
}

- (void)fetchOperationServiceOrEndpointWithRequest:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = FPDomainUnavailableError();
  (*(a4 + 2))(v5, 0, 0, v6);
}

- (void)forceUpdateBlockedProcessNamesFromDomain:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = FPDomainUnavailableError();
  (*(a4 + 2))(v5, v6);
}

- (void)fetchServicesForItemID:(id)a3 allowRestrictedSources:(BOOL)a4 request:(id)a5 completionHandler:(id)a6
{
  v7 = a6;
  v8 = FPDomainUnavailableError();
  (*(a6 + 2))(v7, 0, 0, v8);
}

- (void)fetchVendorEndpointWithRequest:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = FPDomainUnavailableError();
  (*(a4 + 2))(v5, 0, v6);
}

- (void)trashItemAtURL:(id)a3 request:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = FPNotSupportedError();
  (*(a5 + 2))(v6, 0, v7);
}

- (void)movingItemAtURL:(id)a3 withInfo:(id)a4 completionHandler:(id)a5
{
  v6 = MEMORY[0x1E696AC10];
  v7 = a5;
  v8 = [v6 providingRequiredResponse];
  (*(a5 + 2))(v7, v8);
}

- (void)stateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = FPNotSupportedError();
  (*(a3 + 2))(v4, 0, v5);
}

- (void)wakeForPushWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = FPDomainUnavailableError();
  (*(a3 + 2))(v4, v5);
}

- (void)resolveConflictAtURL:(id)a3 request:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = FPNotSupportedError();
  (*(a5 + 2))(v6, v7);
}

- (void)listRemoteVersionsOfItemAtURL:(id)a3 includeCachedVersions:(BOOL)a4 request:(id)a5 completionHandler:(id)a6
{
  v7 = a6;
  v8 = FPNotSupportedError();
  (*(a6 + 2))(v7, 0, MEMORY[0x1E695E0F0], v8);
}

- (void)fetchThumbnailsAtURL:(id)a3 versions:(id)a4 size:(CGSize)a5 perThumbnailCompletionHandler:(id)a6 completionHandler:(id)a7
{
  v8 = a7;
  v9 = FPNotSupportedError();
  (*(a7 + 2))(v8, v9);
}

- (void)hasNonUploadedFilesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = FPNotSupportedError();
  (*(a3 + 2))(v4, 0, v5);
}

- (void)hierarchyForURL:(id)a3 request:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = FPNotSupportedError();
  (*(a5 + 2))(v6, MEMORY[0x1E695E0F0], v7);
}

- (void)didUpdateAlternateContentsDocumentForDocumentWithURL:(id)a3 request:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = FPNotSupportedError();
  (*(a5 + 2))(v6, v7);
}

- (void)reindexAllItemsWithDropReason:(unint64_t)a3 completionHandler:(id)a4
{
  v4 = a4;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [FPDDomainDeadEndBackend reindexAllItemsWithDropReason:completionHandler:];
  }

  v6 = FPNotSupportedError();
  v4[2](v4, v6);
}

- (void)reindexItemsWithIndexReason:(int64_t)a3 identifiers:(id)a4 completionHandler:(id)a5
{
  v5 = a5;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [FPDDomainDeadEndBackend reindexItemsWithIndexReason:identifiers:completionHandler:];
  }

  v7 = FPNotSupportedError();
  v5[2](v5, v7);
}

- (void)triggerFeedbackApprovalRequestForItemURL:(id)a3 domain:(id)a4 uiOnly:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a6;
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [FPDDomainDeadEndBackend triggerFeedbackApprovalRequestForItemURL:domain:uiOnly:completionHandler:];
  }

  v6[2](v6, 0);
}

- (void)launchFeedbackForDomain:(id)a3 itemIdentifier:(id)a4 triggeringError:(id)a5 when:(id)a6 useDiagnostic:(BOOL)a7 completionHandler:(id)a8
{
  v8 = a8;
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [FPDDomainDeadEndBackend launchFeedbackForDomain:itemIdentifier:triggeringError:when:useDiagnostic:completionHandler:];
  }

  v10 = FPNotSupportedError();
  v8[2](v8, v10);
}

- (void)getSavedDiagnostics:(id)a3
{
  v3 = a3;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [FPDDomainDeadEndBackend getSavedDiagnostics:];
  }

  v5 = FPNotSupportedError();
  v3[2](v3, 0, v5);
}

- (void)clearDiagnosticState:(id)a3
{
  v3 = a3;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [FPDDomainDeadEndBackend clearDiagnosticState:];
  }

  v5 = FPNotSupportedError();
  v3[2](v3, v5);
}

- (void)requestDiagnosticCollectionForItemWithID:(id)a3 errorReason:(id)a4 completionHandler:(id)a5
{
  v5 = a5;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [FPDDomainDeadEndBackend requestDiagnosticCollectionForItemWithID:errorReason:completionHandler:];
  }

  v7 = FPNotSupportedError();
  v5[2](v5, v7);
}

- (void)enumerateSearchResultForRequest:(id)a3 lifetimeExtender:(id)a4 completionHandler:(id)a5
{
  v5 = a5;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [FPDDomainDeadEndBackend enumerateSearchResultForRequest:lifetimeExtender:completionHandler:];
  }

  v7 = FPNotSupportedError();
  v5[2](v5, 0, v7);
}

@end