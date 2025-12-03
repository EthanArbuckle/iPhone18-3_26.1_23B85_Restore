@interface FPDXPCServicer
- (BOOL)_canBundleIDTriggerTTRForFailure:(id)failure;
- (BOOL)_isNonSandboxedConnection;
- (BOOL)clientHasSandboxAccessToFile:(id)file;
- (FPDServer)server;
- (FPDXPCServicer)init;
- (NSString)description;
- (NSXPCConnection)connection;
- (id)_providerForIdentifier:(id)identifier enumerateEntitlementRequired:(BOOL)required error:(id *)error;
- (id)defaultProviderForCurrentConnection:(id *)connection;
- (id)evictItemAtURL:(id)l evenIfEnumeratingFP:(BOOL)p andClearACLForConsumer:(id)consumer evictionReason:(unsigned int)reason completionHandler:(id)handler;
- (id)getSyncPausedXattrForURL:(id)l;
- (id)providersForCurrentConnection;
- (id)tryTransformItemIDAfterMigration:(id)migration;
- (int)pid;
- (void)_forceIngestionForItemID:(id)d completionHandler:(id)handler;
- (void)_performWithCheckedEnumerationAttributes:(id)attributes completionHandler:(id)handler;
- (void)_selectNewProviderDomain:(id)domain knownFolders:(unint64_t)folders skipReleasePrompt:(BOOL)prompt completionHandler:(id)handler;
- (void)_test_callFileProviderManagerAPIs:(id)is;
- (void)_test_callRemoveTrashedItemsOlderThanDate:(id)date completionHandler:(id)handler;
- (void)_test_disableDBQueryStatistics:(id)statistics completionHandler:(id)handler;
- (void)_test_getCountersArray:(id)array completionHandler:(id)handler;
- (void)_test_getDBOptions:(id)options completionHandler:(id)handler;
- (void)_test_getNeedsIndexingStateForRootURL:(id)l completionHandler:(id)handler;
- (void)_test_getRootSupportDirURLForDomainURL:(id)l completionHandler:(id)handler;
- (void)_test_importItemsPendingReconciliationProgressForDomainWithID:(id)d completionHandler:(id)handler;
- (void)_test_importItemsPendingScanningDiskProgressForDomainWithID:(id)d completionHandler:(id)handler;
- (void)_test_importItemsPendingScanningProviderProgressForDomainWithID:(id)d completionHandler:(id)handler;
- (void)_test_isDiskSpaceMonitorRunningForDomain:(id)domain completionHandler:(id)handler;
- (void)_test_purgerBarrierWithCompletionHandler:(id)handler;
- (void)_test_queryDiskImportSchedulerLabel:(id)label completionHandler:(id)handler;
- (void)_test_resetCounters:(id)counters completionHandler:(id)handler;
- (void)_test_resetDBQueryStatistics:(id)statistics completionHandler:(id)handler;
- (void)_test_retrieveItemWithName:(id)name completionHandler:(id)handler;
- (void)_test_setDocIDResolutionPolicy:(BOOL)policy completionHandler:(id)handler;
- (void)_test_simulateInstallOfBundleID:(id)d completionHandler:(id)handler;
- (void)_test_simulateUninstallOfBundleID:(id)d completionHandler:(id)handler;
- (void)_test_triggerDatabaseError:(id)error domain:(id)domain completionHandler:(id)handler;
- (void)accumulatedSizeOfItemsInDomain:(id)domain completion:(id)completion;
- (void)accumulatedSizeOfPinnedItemsInDomain:(id)domain completion:(id)completion;
- (void)addDomain:(id)domain forProviderIdentifier:(id)identifier byImportingDirectoryAtURL:(id)l nonWrappedURL:(id)rL userAllowedDBDrop:(BOOL)drop knownFolders:(id)folders completionHandler:(id)handler;
- (void)appHasNonUploadedFiles:(id)files completionHandler:(id)handler;
- (void)attachKnownFolders:(id)folders options:(unint64_t)options completionHandler:(id)handler;
- (void)backUpUserURL:(id)l outputUserURL:(id)rL completionHandler:(id)handler;
- (void)bookmarkableStringFromDocumentURL:(id)l options:(int64_t)options completionHandler:(id)handler;
- (void)calculateNonPurgeableSpaceUsageOfDomain:(id)domain completionHandler:(id)handler;
- (void)checkErrorAgainstDiagnosticsJson:(id)json inputError:(id)error errorDirection:(id)direction jobCode:(id)code underlying:(id)underlying completionHandler:(id)handler;
- (void)checkLocationEligibilityForDomain:(id)domain completionHandler:(id)handler;
- (void)clearDiagnosticsState:(id)state completionHandler:(id)handler;
- (void)copyDatabaseForFPCKStartingAtPath:(id)path completionHandler:(id)handler;
- (void)createDatabaseCopyOutputPathForDomain:(id)domain completionHandler:(id)handler;
- (void)createItemBasedOnTemplate:(id)template fields:(unint64_t)fields urlWrapper:(id)wrapper options:(unint64_t)options bounceOnCollision:(BOOL)collision completionHandler:(id)handler;
- (void)detachKnownFolders:(id)folders completionHandler:(id)handler;
- (void)didUpdateAlternateContentsDocumentForDocumentAtURL:(id)l completionHandler:(id)handler;
- (void)documentURLFromItemID:(id)d creatingPlaceholderIfMissing:(BOOL)missing ignoreAlternateContentsURL:(BOOL)l completionHandler:(id)handler;
- (void)dumpDatabaseAt:(id)at fullDump:(BOOL)dump writeTo:(id)to completionHandler:(id)handler;
- (void)dumpIndexerInfoFor:(id)for withName:(id)name to:(id)to completionHandler:(id)handler;
- (void)dumpPlistTelemetryForProviders:(id)providers result:(id)result providerFilter:(id)filter completionHandler:(id)handler;
- (void)dumpProviders:(id)providers dumper:(id)dumper auditToken:(id *)token request:(id)request providerFilter:(id)filter options:(unint64_t)options completionHandler:(id)handler;
- (void)dumpStateTo:(id)to providerFilter:(id)filter options:(unint64_t)options completionHandler:(id)handler;
- (void)dumpTelemetryTo:(id)to providerFilter:(id)filter completionHandler:(id)handler;
- (void)enumerateSearchResultForRequest:(id)request providerDomainID:(id)d completionHandler:(id)handler;
- (void)evictItemWithID:(id)d evictionReason:(unsigned int)reason completionHandler:(id)handler;
- (void)extendBookmarkForFileURL:(id)l toConsumerID:(id)d options:(int64_t)options completionHandler:(id)handler;
- (void)extendBookmarkForItemID:(id)d consumerID:(id)iD completionHandler:(id)handler;
- (void)extendSandboxForFileURL:(id)l fromProviderID:(id)d toConsumerID:(id)iD completionHandler:(id)handler;
- (void)fetchAccessServicer:(id)servicer;
- (void)fetchAlternateContentsURLForDocumentURL:(id)l completionHandler:(id)handler;
- (void)fetchAndStartEnumeratingWithSettings:(id)settings observer:(id)observer completionHandler:(id)handler;
- (void)fetchDaemonOperationIDsWithCompletionHandler:(id)handler;
- (void)fetchDaemonOperationWithID:(id)d completionHandler:(id)handler;
- (void)fetchDomainServicerForProviderDomainID:(id)d handler:(id)handler;
- (void)fetchFSItemsForItemIdentifiers:(id)identifiers providerIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier materializingIfNeeded:(BOOL)needed completionHandler:(id)handler;
- (void)fetchLatestVersionForItemAtURL:(id)l bundleID:(id)d completionHandler:(id)handler;
- (void)fetchListOfMonitoredApps:(id)apps;
- (void)fetchPathComponentsForURL:(id)l completionHandler:(id)handler;
- (void)fetchProviderForShareURL:(id)l fallbackIdentifier:(id)identifier completionHandler:(id)handler;
- (void)forceIngestionForItemID:(id)d completionHandler:(id)handler;
- (void)forceIngestionForItemIDs:(id)ds completionHandler:(id)handler;
- (void)forceLatestVersionOnDiskForItemID:(id)d completionHandler:(id)handler;
- (void)forceUpdateBlockedProcessNamesFromDomain:(id)domain completionHandler:(id)handler;
- (void)getDomainsForProviderIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getNumberOfNonMaterializedFilesInDomain:(id)domain withCompletionHandler:(id)handler;
- (void)getPersonaForProvider:(id)provider completionHandler:(id)handler;
- (void)getSavedDiagnosticsFor:(id)for completionHandler:(id)handler;
- (void)getURLForContainerWithItemID:(id)d inDataScopeDomainWithIdentifier:(id)identifier documentsScopeDomainIdentifier:(id)domainIdentifier documentsFolderItemIdentifier:(id)itemIdentifier completionHandler:(id)handler;
- (void)importProgressForDomainWithID:(id)d completionHandler:(id)handler;
- (void)invalidate;
- (void)itemForURL:(id)l options:(unint64_t)options completionHandler:(id)handler;
- (void)listPausedURLsWithBundleID:(id)d completionHandler:(id)handler;
- (void)materializeURL:(id)l completionHandler:(id)handler;
- (void)pauseIndexingFor:(id)for completionHandler:(id)handler;
- (void)pauseSyncForItemAtURL:(id)l behavior:(unint64_t)behavior bundleID:(id)d completionHandler:(id)handler;
- (void)pinItemWithID:(id)d completionHandler:(id)handler;
- (void)providerDomainForIdentifier:(id)identifier completionHandler:(id)handler;
- (void)providerDomainForURL:(id)l completionHandler:(id)handler;
- (void)providerDomainsCompletionHandler:(id)handler;
- (void)providerItemIDForURL:(id)l completionHandler:(id)handler;
- (void)putBackURLForTrashedItemAtURL:(id)l completionHandler:(id)handler;
- (void)reimportItemsBelowItemWithID:(id)d markItemDataless:(BOOL)dataless completionHandler:(id)handler;
- (void)removeAllDomainsForProviderIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeDomain:(id)domain completionHandler:(id)handler;
- (void)removeDomain:(id)domain mode:(unint64_t)mode completionHandler:(id)handler;
- (void)removeDomainAndPreserveDataWithID:(id)d mode:(unint64_t)mode completionHandler:(id)handler;
- (void)removeDomainWithID:(id)d mode:(unint64_t)mode completionHandler:(id)handler;
- (void)resolveConflictAtURL:(id)l completionHandler:(id)handler;
- (void)resumeIndexingFor:(id)for completionHandler:(id)handler;
- (void)resumeSyncForItemAtURL:(id)l behavior:(unint64_t)behavior bundleID:(id)d completionHandler:(id)handler;
- (void)runFPCKForDomainWithID:(id)d domainRootURL:(id)l databaseBackupPath:(id)path options:(unint64_t)options reason:(unint64_t)reason launchType:(unint64_t)type contentBarrier:(int64_t)barrier completionHandler:(id)self0;
- (void)scheduleActionOperationWithInfo:(id)info completionHandler:(id)handler;
- (void)setAlternateContentsURL:(id)l onDocumentURL:(id)rL completionHandler:(id)handler;
- (void)setIndexingEnabled:(BOOL)enabled forDomainIdentifier:(id)identifier providerIdentifier:(id)providerIdentifier completionHandler:(id)handler;
- (void)setPutBackInfoOnItemAtURL:(id)l completionHandler:(id)handler;
- (void)signalReindexCSIdentifiersByProviderDomainID:(id)d indexReason:(int64_t)reason completionHandler:(id)handler;
- (void)spotlightReindexAllItemsForBundleID:(id)d protectionClass:(id)class completionHandler:(id)handler;
- (void)spotlightReindexItemsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class completionHandler:(id)handler;
- (void)startAccessingExtensionForProviderDomainID:(id)d handler:(id)handler;
- (void)startAccessingOperationServiceForProviderDomainID:(id)d handler:(id)handler;
- (void)startAccessingServiceForItemID:(id)d completionHandler:(id)handler;
- (void)startAccessingServiceWithName:(id)name itemURL:(id)l completionHandler:(id)handler;
- (void)startDownloadingItemAtURL:(id)l completionHandler:(id)handler;
- (void)startOperation:(id)operation toFetchIconsForAppBundleIDs:(id)ds requestedSize:(CGSize)size scale:(double)scale completionHandler:(id)handler;
- (void)startProvidingItemAtURL:(id)l fromProviderID:(id)d forConsumerID:(id)iD completionHandler:(id)handler;
- (void)stateForDomainWithID:(id)d completionHandler:(id)handler;
- (void)trashItemAtURL:(id)l completionHandler:(id)handler;
- (void)triggerDiagnosticsFor:(id)for triggeringError:(id)error uiOnly:(BOOL)only useDiagnostic:(BOOL)diagnostic completionHandler:(id)handler;
- (void)unpinItemWithID:(id)d completionHandler:(id)handler;
- (void)updateBlockedProcessNamesForProvider:(id)provider processNames:(id)names completionHandler:(id)handler;
- (void)updateLastUsedDate:(id)date completionHandler:(id)handler;
- (void)uploadLocalVersionOfItemAtURL:(id)l bundleID:(id)d conflictResolutionPolicy:(int64_t)policy completionHandler:(id)handler;
- (void)validateDiagnosticsJson:(id)json completionHandler:(id)handler;
- (void)valuesForAttributes:(id)attributes forItemAtURL:(id)l completionHandler:(id)handler;
- (void)waitForChangesOnItemsBelowItemWithID:(id)d completionHandler:(id)handler;
- (void)waitForStabilizationOfDomainWithID:(id)d mode:(unint64_t)mode completionHandler:(id)handler;
- (void)wakeUpForURL:(id)l completionHandler:(id)handler;
- (void)wakeUpForURLFixed:(id)fixed completionHandler:(id)handler;
@end

@implementation FPDXPCServicer

- (FPDXPCServicer)init
{
  v9.receiver = self;
  v9.super_class = FPDXPCServicer;
  v2 = [(FPDXPCServicer *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("servicer", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = fp_default_log();
    log = v2->_log;
    v2->_log = v6;
  }

  return v2;
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (FPDServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

- (id)providersForCurrentConnection
{
  v22[1] = *MEMORY[0x1E69E9840];
  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];

  WeakRetained = objc_loadWeakRetained(&self->_connection);
  fp_bundleIdentifier = [WeakRetained fp_bundleIdentifier];

  if (fp_bundleIdentifier)
  {
    v7 = [extensionManager defaultProviderWithTopLevelBundleIdentifier:fp_bundleIdentifier];
    if (!v7)
    {
      v7 = [extensionManager providerWithIdentifier:fp_bundleIdentifier reason:0];
      if (!v7)
      {
        v15 = objc_loadWeakRetained(&self->_connection);
        fp_bundleRecord = [v15 fp_bundleRecord];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([fp_bundleRecord containingBundleRecord], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "bundleIdentifier"), v18 = objc_claimAutoreleasedReturnValue(), v17, v18))
        {
          firstObject = [extensionManager defaultProviderWithTopLevelBundleIdentifier:v18];

          if (firstObject)
          {
            goto LABEL_6;
          }
        }

        else
        {
        }

        v19 = objc_loadWeakRetained(&self->_connection);
        fp_applicationGroups = [v19 fp_applicationGroups];
        v21 = [extensionManager providersWithGroupContainers:fp_applicationGroups bundleIdentifier:fp_bundleIdentifier];
        firstObject = [v21 firstObject];

        goto LABEL_6;
      }
    }

    firstObject = v7;
  }

  else
  {
    firstObject = 0;
  }

LABEL_6:
  descriptor = [firstObject descriptor];
  topLevelBundleIdentifier = [descriptor topLevelBundleIdentifier];

  if (topLevelBundleIdentifier || ![firstObject isAppExtensionReachable])
  {
    v12 = [extensionManager providersWithTopLevelBundleIdentifier:topLevelBundleIdentifier];
  }

  else
  {
    asAppExtensionBackedProvider = [firstObject asAppExtensionBackedProvider];
    v22[0] = asAppExtensionBackedProvider;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (int)pid
{
  connection = [(FPDXPCServicer *)self connection];
  processIdentifier = [connection processIdentifier];

  return processIdentifier;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained processIdentifier];
  v6 = FPExecutableNameForProcessIdentifier();
  v7 = objc_loadWeakRetained(&self->_connection);
  v8 = [v3 stringWithFormat:@"<%@:%p %@[%d]>", v4, self, v6, objc_msgSend(v7, "processIdentifier")];

  return v8;
}

- (void)invalidate
{
  v13 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = selfCopy->_providerServicers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  objc_sync_exit(selfCopy);
  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isNonSandboxedConnection
{
  connection = [(FPDXPCServicer *)self connection];
  fp_isNonSandboxedConnection = [connection fp_isNonSandboxedConnection];

  return fp_isNonSandboxedConnection;
}

- (BOOL)clientHasSandboxAccessToFile:(id)file
{
  fileCopy = file;
  connection = [(FPDXPCServicer *)self connection];
  v6 = [connection fp_hasSandboxAccessToFile:fileCopy logLevel:2];

  return v6;
}

- (id)defaultProviderForCurrentConnection:(id *)connection
{
  v39 = *MEMORY[0x1E69E9840];
  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];

  WeakRetained = objc_loadWeakRetained(&self->_connection);
  fp_bundleRecord = [WeakRetained fp_bundleRecord];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    containingBundleRecord = [fp_bundleRecord containingBundleRecord];

    fp_bundleRecord = containingBundleRecord;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = fp_bundleRecord;
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_loadWeakRetained(&self->_connection);
  fp_bundleIdentifier = [v11 fp_bundleIdentifier];

  if (fp_bundleIdentifier)
  {
    v13 = [extensionManager defaultProviderWithTopLevelBundleIdentifier:fp_bundleIdentifier];
    if (v13 || ([extensionManager providerWithIdentifier:fp_bundleIdentifier reason:0], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      firstObject = v13;
    }

    else
    {
      bundleIdentifier = [v10 bundleIdentifier];
      if (!bundleIdentifier || (v26 = bundleIdentifier, [extensionManager defaultProviderWithTopLevelBundleIdentifier:bundleIdentifier], firstObject = objc_claimAutoreleasedReturnValue(), v26, !firstObject))
      {
        v27 = objc_loadWeakRetained(&self->_connection);
        fp_applicationGroups = [v27 fp_applicationGroups];
        v29 = [extensionManager providersWithGroupContainers:fp_applicationGroups bundleIdentifier:fp_bundleIdentifier];

        if ([v29 count] >= 2)
        {
          v30 = fp_current_or_default_log();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v35 = 138543618;
            v36 = fp_bundleIdentifier;
            v37 = 2114;
            v38 = v29;
            _os_log_impl(&dword_1CEFC7000, v30, OS_LOG_TYPE_DEFAULT, "[WARNING] Caller %{public}@ has multiple candidates for associated provider (%{public}@)", &v35, 0x16u);
          }
        }

        firstObject = [v29 firstObject];
      }
    }
  }

  else
  {
    firstObject = 0;
  }

  if (![firstObject isAppExtensionReachable])
  {
    if (connection)
    {
      FPProviderNotRegistered();
      *connection = asAppExtensionBackedProvider = 0;
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (!firstObject || !v10)
  {
LABEL_25:
    asAppExtensionBackedProvider = [firstObject asAppExtensionBackedProvider];
    goto LABEL_40;
  }

  asAppExtensionBackedProvider2 = [firstObject asAppExtensionBackedProvider];
  extensionRecord = [asAppExtensionBackedProvider2 extensionRecord];

  containingBundleRecord2 = [extensionRecord containingBundleRecord];
  v18 = FPGetRelation(v10, containingBundleRecord2);

  if (!v18)
  {

    goto LABEL_25;
  }

  v19 = fp_current_or_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v35) = 0;
    _os_log_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] Called from a process with a different version than the provider currently in use", &v35, 2u);
  }

  if (v18 == 1)
  {
    if (connection)
    {
      containingBundleRecord3 = [extensionRecord containingBundleRecord];
      v21 = [containingBundleRecord3 URL];
      *connection = FPProviderOlderVersionRunningError();
    }

    v22 = fp_current_or_default_log();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_38;
    }

    LOWORD(v35) = 0;
    v23 = "[INFO] Calling application is newer";
  }

  else
  {
    if (connection)
    {
      containingBundleRecord4 = [extensionRecord containingBundleRecord];
      v32 = [containingBundleRecord4 URL];
      *connection = FPProviderNewerVersionFoundError();
    }

    v22 = fp_current_or_default_log();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_38;
    }

    LOWORD(v35) = 0;
    v23 = "[INFO] Calling application is older";
  }

  _os_log_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_INFO, v23, &v35, 2u);
LABEL_38:

LABEL_39:
  asAppExtensionBackedProvider = 0;
LABEL_40:

  v33 = *MEMORY[0x1E69E9840];

  return asAppExtensionBackedProvider;
}

- (id)_providerForIdentifier:(id)identifier enumerateEntitlementRequired:(BOOL)required error:(id *)error
{
  requiredCopy = required;
  v53 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v9 = [(FPDXPCServicer *)self defaultProviderForCurrentConnection:error];
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  fp_bundleIdentifier = [WeakRetained fp_bundleIdentifier];

  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];

  if (!identifierCopy)
  {
    if (v9)
    {
      v17 = v9;
LABEL_24:
      v16 = v17;
      goto LABEL_25;
    }

    v29 = fp_current_or_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer _providerForIdentifier:enumerateEntitlementRequired:error:];
    }

    if (!error || *error)
    {
LABEL_42:
      v16 = 0;
      goto LABEL_43;
    }

    v30 = FPProviderNotFoundError();
LABEL_41:
    v16 = 0;
    *error = v30;
    goto LABEL_43;
  }

  identifier = [v9 identifier];
  v15 = [identifier isEqualToString:identifierCopy];

  if (v15)
  {
    v16 = v9;
    if (!error)
    {
      goto LABEL_20;
    }

LABEL_19:
    *error = 0;
    goto LABEL_20;
  }

  [(FPDXPCServicer *)self providersForCurrentConnection];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v18 = v45 = 0u;
  v16 = [v18 countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v16)
  {
    v38 = requiredCopy;
    v39 = extensionManager;
    v40 = fp_bundleIdentifier;
    v41 = v9;
    v19 = *v43;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v43 != v19)
        {
          objc_enumerationMutation(v18);
        }

        v21 = *(*(&v42 + 1) + 8 * i);
        identifier2 = [v21 identifier];
        v23 = [identifier2 isEqualToString:identifierCopy];

        if (v23)
        {
          v16 = v21;
          goto LABEL_17;
        }
      }

      v16 = [v18 countByEnumeratingWithState:&v42 objects:v52 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }

LABEL_17:
    fp_bundleIdentifier = v40;
    v9 = v41;
    extensionManager = v39;
    requiredCopy = v38;
  }

  if (error)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (!v16)
  {
    if (!requiredCopy)
    {
      goto LABEL_23;
    }

    connection = [(FPDXPCServicer *)self connection];
    v51 = *MEMORY[0x1E6967560];
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
    v26 = v25 = extensionManager;
    v27 = [connection fp_hasOneOfEntitlements:v26];

    extensionManager = v25;
    if (v27)
    {
LABEL_23:
      *buf = 0;
      v17 = [extensionManager providerWithIdentifier:identifierCopy reason:buf];
      if (v17)
      {
        goto LABEL_24;
      }

      v31 = fp_current_or_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer _providerForIdentifier:enumerateEntitlementRequired:error:];
      }

      if (error)
      {
        *error = FPProviderNotFoundError();
      }

      goto LABEL_42;
    }

    v32 = fp_current_or_default_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [FPDXPCServicer _providerForIdentifier:enumerateEntitlementRequired:error:];
    }

    if (!error)
    {
      goto LABEL_42;
    }

    v30 = FPNotPermittedError();
    goto LABEL_41;
  }

LABEL_25:
  v28 = fp_current_or_default_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v35 = objc_loadWeakRetained(&self->_connection);
    [v16 identifier];
    v37 = v36 = extensionManager;
    *buf = 138412802;
    *&buf[4] = v35;
    v47 = 2112;
    v48 = identifierCopy;
    v49 = 2112;
    v50 = v37;
    _os_log_debug_impl(&dword_1CEFC7000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ is allowed to access %@, resolved to %@", buf, 0x20u);

    extensionManager = v36;
  }

LABEL_43:
  v33 = *MEMORY[0x1E69E9840];

  return v16;
}

void __120__FPDXPCServicer_startAccessingServiceWithName_itemID_domain_connection_enumerateEntitlementRequired_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v7)
  {
    v11 = [*(a1 + 32) fp_isNonSandboxedConnection];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __120__FPDXPCServicer_startAccessingServiceWithName_itemID_domain_connection_enumerateEntitlementRequired_completionHandler___block_invoke_106;
    v21[3] = &unk_1E83C0098;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v24 = *(a1 + 72);
    v21[4] = v12;
    v22 = v13;
    v25 = v11;
    v23 = *(a1 + 32);
    v14 = [v8 fp_map:v21];
    v15 = v14;
    if (*(a1 + 48) && ![v14 count])
    {
      v20 = *(a1 + 64);
      v18 = FPNotSupportedError();
      (*(v20 + 16))(v20, 0, 0, 0, 0, v18);
    }

    else
    {
      [*(a1 + 56) startExtendingLifetime];
      v17 = *(a1 + 56);
      v16 = *(a1 + 64);
      v18 = [v17 providerDomainID];
      (*(v16 + 16))(v16, v7, v17, v18, v15, v10);
    }
  }

  else
  {
    if (!v9)
    {
      v19 = fp_current_or_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __120__FPDXPCServicer_startAccessingServiceWithName_itemID_domain_connection_enumerateEntitlementRequired_completionHandler___block_invoke_cold_1();
      }

      v10 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:@"error"];
    }

    (*(*(a1 + 64) + 16))();
  }
}

id __120__FPDXPCServicer_startAccessingServiceWithName_itemID_domain_connection_enumerateEntitlementRequired_completionHandler___block_invoke_106(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 serviceName];
  if (!v4)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ nil message interface name"];
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_5();
    }

    __assert_rtn("-[FPDXPCServicer startAccessingServiceWithName:itemID:domain:connection:enumerateEntitlementRequired:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDXPCServicer.m", 765, [v17 UTF8String]);
  }

  v5 = v4;
  if (*(a1 + 40) && ![v4 isEqualToString:?])
  {
    goto LABEL_11;
  }

  v6 = [v3 requiredEntitlement];

  if (v6)
  {
    if (*(a1 + 64))
    {
LABEL_11:
      v12 = 0;
      goto LABEL_16;
    }

    v7 = *(a1 + 48);
    v8 = [v3 requiredEntitlement];
    v21[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v10 = [v7 fp_hasOneOfEntitlements:v9 logLevel:0];
  }

  else
  {
    if (![v5 hasPrefix:@"com.apple.iWork"])
    {
      if ([v5 hasPrefix:@"com.apple.CloudDocs.AccountManagement"])
      {
        if ((*(a1 + 64) & 1) == 0)
        {
          v13 = *(a1 + 48);
          v19 = *MEMORY[0x1E6967550];
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
          LODWORD(v13) = [v13 fp_hasOneOfEntitlements:v14 logLevel:0];

          if (!v13)
          {
            goto LABEL_11;
          }
        }
      }

      goto LABEL_15;
    }

    if (*(a1 + 64))
    {
      goto LABEL_15;
    }

    v11 = *(a1 + 48);
    v20 = *MEMORY[0x1E69675E0];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    v10 = [v11 fp_hasOneOfEntitlements:v8 logLevel:0];
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v12 = [v3 serviceName];
LABEL_16:

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)wakeUpForURL:(id)l completionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FPDXPCServicer wakeUpForURL:completionHandler:];
  }

  log = self->_log;
  v15 = fpfs_adopt_log();
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = FPPopLogSectionForBlock();
    v14 = objc_opt_new();
    *buf = 134219010;
    v17 = v13;
    v18 = 2112;
    selfCopy = self;
    v20 = 2080;
    v21 = "[FPDXPCServicer wakeUpForURL:completionHandler:]";
    v22 = 2112;
    v23 = 0;
    v24 = 2112;
    v25 = v14;
    _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s error:%@, transaction:%@", buf, 0x34u);
  }

  v11 = objc_opt_new();
  handlerCopy[2](handlerCopy, 0, v11);

  __fp_pop_log();
  v12 = *MEMORY[0x1E69E9840];
}

- (void)wakeUpForURLFixed:(id)fixed completionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  fixedCopy = fixed;
  handlerCopy = handler;
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FPDXPCServicer wakeUpForURLFixed:completionHandler:];
  }

  log = self->_log;
  v15 = fpfs_adopt_log();
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = FPPopLogSectionForBlock();
    v14 = objc_opt_new();
    *buf = 134219010;
    v17 = v13;
    v18 = 2112;
    selfCopy = self;
    v20 = 2080;
    v21 = "[FPDXPCServicer wakeUpForURLFixed:completionHandler:]";
    v22 = 2112;
    v23 = v14;
    v24 = 2112;
    v25 = 0;
    _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s error:%@, transaction:%@", buf, 0x34u);
  }

  v11 = objc_opt_new();
  handlerCopy[2](handlerCopy, v11, 0);

  __fp_pop_log();
  v12 = *MEMORY[0x1E69E9840];
}

- (void)extendBookmarkForItemID:(id)d consumerID:(id)iD completionHandler:(id)handler
{
  v52[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  v52[0] = *MEMORY[0x1E6967540];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v37 = __71__FPDXPCServicer_extendBookmarkForItemID_consumerID_completionHandler___block_invoke;
  v38 = &unk_1E83BFA20;
  selfCopy = self;
  v12 = dCopy;
  v40 = v12;
  v13 = handlerCopy;
  v41 = v13;
  v14 = v11;
  v15 = v36;
  connection = [(FPDXPCServicer *)self connection];
  v17 = [connection fp_hasOneOfEntitlements:v14];

  if (v17)
  {

    WeakRetained = objc_loadWeakRetained(&self->_connection);
    fp_bundleIdentifier = [WeakRetained fp_bundleIdentifier];

    v20 = fp_current_or_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v43 = v12;
      v44 = 2112;
      selfCopy3 = fp_bundleIdentifier;
      v46 = 2112;
      v47 = iDCopy;
      _os_log_debug_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] Extending bookmark privileges for: “%@” from bundle %@ to %@.", buf, 0x20u);
    }

    if (iDCopy)
    {
      v21 = +[FPDAccessControlStore sharedStore];
      v22 = [v21 bookmarkForItemID:v12 consumerIdentifier:iDCopy];

      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer extendBookmarkForItemID:consumerID:completionHandler:];
      }

      log = self->_log;
      v34 = fpfs_adopt_log();
      v25 = fp_current_or_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v31 = FPPopLogSectionForBlock();
        *buf = 134219010;
        v43 = v31;
        v44 = 2112;
        selfCopy3 = self;
        v46 = 2080;
        v47 = "[FPDXPCServicer extendBookmarkForItemID:consumerID:completionHandler:]";
        v48 = 2112;
        v49 = v22;
        v50 = 2112;
        v51 = 0;
        _os_log_debug_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      (*(v13 + 2))(v13, v22, 0);
      __fp_pop_log();
    }

    else
    {
      v27 = self->_log;
      v35 = fpfs_adopt_log();
      v28 = fp_current_or_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v32 = FPPopLogSectionForBlock();
        v33 = FPNotPermittedWriteError();
        *buf = 134219010;
        v43 = v32;
        v44 = 2112;
        selfCopy3 = self;
        v46 = 2080;
        v47 = "[FPDXPCServicer extendBookmarkForItemID:consumerID:completionHandler:]";
        v48 = 2112;
        v49 = 0;
        v50 = 2112;
        v51 = v33;
        _os_log_debug_impl(&dword_1CEFC7000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v29 = FPNotPermittedWriteError();
      (*(v13 + 2))(v13, 0, v29);

      __fp_pop_log();
    }
  }

  else
  {
    v26 = FPNotPermittedError();
    v37(v15, v26);
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __71__FPDXPCServicer_extendBookmarkForItemID_consumerID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __71__FPDXPCServicer_extendBookmarkForItemID_consumerID_completionHandler___block_invoke_cold_1(a1, v4);
  }

  v5 = *(*(a1 + 32) + 24);
  v11 = fpfs_adopt_log();
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 48);
    v9 = FPPopLogSectionForBlock();
    v10 = *(a1 + 32);
    *buf = 134219010;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2080;
    v17 = "[FPDXPCServicer extendBookmarkForItemID:consumerID:completionHandler:]_block_invoke";
    v18 = 2112;
    v19 = 0;
    v20 = 2112;
    v21 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log();

  v7 = *MEMORY[0x1E69E9840];
}

- (void)extendSandboxForFileURL:(id)l fromProviderID:(id)d toConsumerID:(id)iD completionHandler:(id)handler
{
  v52[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  v15 = fp_current_or_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [FPDXPCServicer extendSandboxForFileURL:a2 fromProviderID:? toConsumerID:? completionHandler:?];
  }

  connection = [(FPDXPCServicer *)self connection];
  v52[0] = *MEMORY[0x1E6967540];
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
  v18 = [connection fp_hasOneOfEntitlements:v17 logLevel:2];

  if (v18)
  {
    if (!lCopy || !dCopy || !iDCopy)
    {
      v22 = FPInvalidParameterError();
      if (v22)
      {
        v23 = 0;
LABEL_18:
        v27 = fp_current_or_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          fp_shortDescription = [lCopy fp_shortDescription];
          *buf = 138413058;
          *&buf[4] = fp_shortDescription;
          v44 = 2112;
          selfCopy2 = dCopy;
          v46 = 2112;
          v47 = iDCopy;
          v48 = 2112;
          v49 = v22;
          _os_log_error_impl(&dword_1CEFC7000, v27, OS_LOG_TYPE_ERROR, "[ERROR] Could not extend sandbox for %@ from provider ID %@ to consumer ID %@, error: %@", buf, 0x2Au);
        }

        log = self->_log;
        v42 = fpfs_adopt_log();
        v29 = fp_current_or_default_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v36 = FPPopLogSectionForBlock();
          *buf = 134219010;
          *&buf[4] = v36;
          v44 = 2112;
          selfCopy2 = self;
          v46 = 2080;
          v47 = "[FPDXPCServicer extendSandboxForFileURL:fromProviderID:toConsumerID:completionHandler:]";
          v48 = 2112;
          v49 = 0;
          v50 = 2112;
          v51 = v22;
          _os_log_debug_impl(&dword_1CEFC7000, v29, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s url: %@, error: %@", buf, 0x34u);
        }

        handlerCopy[2](handlerCopy, 0, v22);
        __fp_pop_log();

        goto LABEL_24;
      }
    }

    *buf = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v23 = [extensionManager providerWithIdentifier:dCopy reason:buf];

    if (v23)
    {
      v22 = [v23 domainForURL:lCopy];
      if (v22)
      {
        goto LABEL_23;
      }

      v26 = FPProviderNotFoundErrorForURL();
    }

    else
    {
      v26 = FPProviderNotFoundError();
    }

    v22 = v26;
    if (v26)
    {
      goto LABEL_18;
    }

LABEL_23:
    defaultBackend = [v22 defaultBackend];
    v31 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __88__FPDXPCServicer_extendSandboxForFileURL_fromProviderID_toConsumerID_completionHandler___block_invoke;
    v37[3] = &unk_1E83BE8F0;
    v37[4] = self;
    v41 = handlerCopy;
    v38 = lCopy;
    v39 = dCopy;
    v40 = iDCopy;
    [defaultBackend itemIDForURL:v38 requireProviderItemID:0 request:v31 completionHandler:v37];

LABEL_24:
    goto LABEL_25;
  }

  v19 = self->_log;
  v42 = fpfs_adopt_log();
  v20 = fp_current_or_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v33 = FPPopLogSectionForBlock();
    v34 = FPClientLacksEntitlement();
    *buf = 134219010;
    *&buf[4] = v33;
    v44 = 2112;
    selfCopy2 = self;
    v46 = 2080;
    v47 = "[FPDXPCServicer extendSandboxForFileURL:fromProviderID:toConsumerID:completionHandler:]";
    v48 = 2112;
    v49 = 0;
    v50 = 2112;
    v51 = v34;
    _os_log_debug_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s url: %@, error: %@", buf, 0x34u);
  }

  v21 = FPClientLacksEntitlement();
  handlerCopy[2](handlerCopy, 0, v21);

  __fp_pop_log();
LABEL_25:

  v32 = *MEMORY[0x1E69E9840];
}

void __88__FPDXPCServicer_extendSandboxForFileURL_fromProviderID_toConsumerID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = *(*(a1 + 32) + 24);
    v29 = fpfs_adopt_log();
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 64);
      v22 = FPPopLogSectionForBlock();
      v23 = *(a1 + 32);
      v24 = FPPluginOperationFailedError();
      *buf = 134219010;
      v31 = v22;
      v32 = 2112;
      v33 = v23;
      v34 = 2080;
      v35 = "[FPDXPCServicer extendSandboxForFileURL:fromProviderID:toConsumerID:completionHandler:]_block_invoke";
      v36 = 2112;
      v37 = 0;
      v38 = 2112;
      v39 = v24;
      _os_log_debug_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s url: %@, error: %@", buf, 0x34u);
    }

    v10 = *(a1 + 64);
    v11 = FPPluginOperationFailedError();
    (*(v10 + 16))(v10, 0, v11);

    __fp_pop_log();
  }

  else
  {
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [*(a1 + 40) fp_shortDescription];
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      *buf = 138412802;
      v31 = v13;
      v32 = 2112;
      v33 = v14;
      v34 = 2112;
      v35 = v15;
      _os_log_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_INFO, "[INFO] Successfully extended sandbox for %@ from provider ID %@ to consumer ID %@.", buf, 0x20u);
    }

    v16 = *(a1 + 40);
    v28 = 0;
    v17 = [MEMORY[0x1E6967408] wrapperWithURL:v16 readonly:0 error:&v28];
    v7 = v28;
    v18 = *(*(a1 + 32) + 24);
    v29 = fpfs_adopt_log();
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v25 = *(a1 + 64);
      v26 = FPPopLogSectionForBlock();
      v27 = *(a1 + 32);
      *buf = 134219010;
      v31 = v26;
      v32 = 2112;
      v33 = v27;
      v34 = 2080;
      v35 = "[FPDXPCServicer extendSandboxForFileURL:fromProviderID:toConsumerID:completionHandler:]_block_invoke";
      v36 = 2112;
      v37 = v17;
      v38 = 2112;
      v39 = v7;
      _os_log_debug_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s url: %@, error: %@", buf, 0x34u);
    }

    (*(*(a1 + 64) + 16))();
    __fp_pop_log();
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)startProvidingItemAtURL:(id)l fromProviderID:(id)d forConsumerID:(id)iD completionHandler:(id)handler
{
  v71[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v60 = __89__FPDXPCServicer_startProvidingItemAtURL_fromProviderID_forConsumerID_completionHandler___block_invoke;
  v61 = &unk_1E83BE1A8;
  selfCopy = self;
  v13 = handlerCopy;
  v63 = v13;
  selfCopy2 = self;
  v15 = lCopy;
  v16 = v59;
  if (!v15)
  {
    v26 = FPInvalidParameterError();
LABEL_13:
    v30 = v26;
    v60(v16, v26);

    goto LABEL_26;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v18 = [connection fp_hasSandboxAccessToFile:v15 accessType:*MEMORY[0x1E6966DA8] logLevel:0];

  if ((v18 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    *buf = *MEMORY[0x1E6967560];
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v21 = [connection2 fp_hasOneOfEntitlements:v20 nonSandboxedAccess:0 logLevel:0];

    if ((v21 & 1) == 0)
    {
      v26 = FPNotPermittedError();
      goto LABEL_13;
    }
  }

  connection3 = [(FPDXPCServicer *)selfCopy2 connection];
  v23 = *MEMORY[0x1E6967540];
  v71[0] = *MEMORY[0x1E6967538];
  v71[1] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
  v25 = [connection3 fp_hasOneOfEntitlements:v24 logLevel:2];

  if (v25)
  {
    if (dCopy && iDCopy || (FPInvalidParameterError(), (v31 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      *buf = 0;
      server = [(FPDXPCServicer *)selfCopy2 server];
      extensionManager = [server extensionManager];
      v34 = [extensionManager domainForURL:v15 reason:buf];

      if (v34)
      {
        provider = [v34 provider];
        identifier = [provider identifier];
        v37 = [identifier isEqualToString:dCopy];

        if (v37)
        {
          defaultBackend = [v34 defaultBackend];
          v39 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 3221225472;
          v52[2] = __89__FPDXPCServicer_startProvidingItemAtURL_fromProviderID_forConsumerID_completionHandler___block_invoke_124;
          v52[3] = &unk_1E83C0110;
          v53 = v34;
          v54 = selfCopy2;
          v57 = v13;
          v55 = v15;
          v56 = iDCopy;
          v40 = v34;
          [defaultBackend itemIDForURL:v55 requireProviderItemID:0 request:v39 completionHandler:v52];

          goto LABEL_26;
        }

        v31 = FPInvalidParameterError();
      }

      else
      {
        v31 = FPProviderNotFoundError();
      }

      if (!v31)
      {
        goto LABEL_26;
      }
    }

    v41 = fp_current_or_default_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      fp_shortDescription = [v15 fp_shortDescription];
      *buf = 138413058;
      *&buf[4] = fp_shortDescription;
      v65 = 2112;
      v66 = dCopy;
      v67 = 2112;
      v68 = iDCopy;
      v69 = 2112;
      v70 = v31;
      _os_log_error_impl(&dword_1CEFC7000, v41, OS_LOG_TYPE_ERROR, "[ERROR] Cannot provide item at %@ from provider ID %@ to consumer ID %@. Error: %@", buf, 0x2Au);
    }

    log = selfCopy2->_log;
    v58 = fpfs_adopt_log();
    v43 = fp_current_or_default_log();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      v49 = FPPopLogSectionForBlock();
      v50 = FPProviderNotFoundError();
      *buf = 134218754;
      *&buf[4] = v49;
      v65 = 2112;
      v66 = selfCopy2;
      v67 = 2080;
      v68 = "[FPDXPCServicer startProvidingItemAtURL:fromProviderID:forConsumerID:completionHandler:]";
      v69 = 2112;
      v70 = v50;
      _os_log_debug_impl(&dword_1CEFC7000, v43, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s error: %@", buf, 0x2Au);
    }

    v44 = FPProviderNotFoundError();
    (*(v13 + 2))(v13, v44);

    __fp_pop_log();
  }

  else
  {
    v27 = selfCopy2->_log;
    v58 = fpfs_adopt_log();
    v28 = fp_current_or_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v46 = FPPopLogSectionForBlock();
      v47 = FPClientLacksEntitlement();
      *buf = 134218754;
      *&buf[4] = v46;
      v65 = 2112;
      v66 = selfCopy2;
      v67 = 2080;
      v68 = "[FPDXPCServicer startProvidingItemAtURL:fromProviderID:forConsumerID:completionHandler:]";
      v69 = 2112;
      v70 = v47;
      _os_log_debug_impl(&dword_1CEFC7000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s error: %@", buf, 0x2Au);
    }

    v29 = FPClientLacksEntitlement();
    (*(v13 + 2))(v13, v29);

    __fp_pop_log();
  }

LABEL_26:

  v45 = *MEMORY[0x1E69E9840];
}

void __89__FPDXPCServicer_startProvidingItemAtURL_fromProviderID_forConsumerID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer startProvidingItemAtURL:fromProviderID:forConsumerID:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __89__FPDXPCServicer_startProvidingItemAtURL_fromProviderID_forConsumerID_completionHandler___block_invoke_124(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__FPDXPCServicer_startProvidingItemAtURL_fromProviderID_forConsumerID_completionHandler___block_invoke_2;
  block[3] = &unk_1E83C00E8;
  v14 = v4;
  v12 = *(a1 + 40);
  v17 = *(a1 + 64);
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v12;
  *(&v10 + 1) = v6;
  v15 = v10;
  v16 = v9;
  v11 = v4;
  dispatch_async(v5, block);
}

void __89__FPDXPCServicer_startProvidingItemAtURL_fromProviderID_forConsumerID_completionHandler___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 40) + 24);
    v19 = fpfs_adopt_log();
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 72);
      v14 = FPPopLogSectionForBlock();
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v17 = FPPluginOperationFailedError();
      *buf = 134218754;
      v21 = v14;
      v22 = 2112;
      v23 = v16;
      v24 = 2080;
      v25 = "[FPDXPCServicer startProvidingItemAtURL:fromProviderID:forConsumerID:completionHandler:]_block_invoke_2";
      v26 = 2112;
      v27 = v17;
      _os_log_debug_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v4 = *(a1 + 72);
    v5 = *(a1 + 32);
    v6 = FPPluginOperationFailedError();
    (*(v4 + 16))(v4, v6);

    __fp_pop_log();
    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v18 = [*(a1 + 48) defaultBackend];
    v8 = *(a1 + 56);
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"consumer %@", *(a1 + 64)];
    v10 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [*(a1 + 40) pid]);
    v11 = [v18 startProvidingItemAtURL:v8 readerID:v9 readingOptions:0 request:v10 completionHandler:*(a1 + 72)];

    v12 = *MEMORY[0x1E69E9840];
  }
}

- (void)startDownloadingItemAtURL:(id)l completionHandler:(id)handler
{
  v50 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v39 = __62__FPDXPCServicer_startDownloadingItemAtURL_completionHandler___block_invoke;
  v40 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v42 = v8;
  selfCopy2 = self;
  v10 = lCopy;
  v11 = v38;
  if (!v10)
  {
    v23 = FPInvalidParameterError();
LABEL_12:
    v27 = v23;
    v39(v11, v23);

    goto LABEL_13;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v13 = [connection fp_hasSandboxAccessToFile:v10 accessType:*MEMORY[0x1E6966DA8] logLevel:0];

  if ((v13 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    *buf = *MEMORY[0x1E6967560];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v16 = [connection2 fp_hasOneOfEntitlements:v15 nonSandboxedAccess:0 logLevel:0];

    if ((v16 & 1) == 0)
    {
      v23 = FPNotPermittedError();
      goto LABEL_12;
    }
  }

  server = [(FPDXPCServicer *)selfCopy2 server];
  extensionManager = [server extensionManager];
  v19 = [extensionManager domainForURL:v10 reason:0];

  if (v19)
  {
    v20 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
    defaultBackend = [v19 defaultBackend];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __62__FPDXPCServicer_startDownloadingItemAtURL_completionHandler___block_invoke_128;
    v31[3] = &unk_1E83C0110;
    v32 = v19;
    v33 = selfCopy2;
    v36 = v8;
    v34 = v10;
    v35 = v20;
    v22 = v20;
    [defaultBackend itemIDForURL:v34 requireProviderItemID:0 request:v22 completionHandler:v31];
  }

  else
  {
    log = selfCopy2->_log;
    v37 = fpfs_adopt_log();
    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v29 = FPPopLogSectionForBlock();
      v30 = FPProviderNotFoundErrorForURL();
      *buf = 134218754;
      *&buf[4] = v29;
      v44 = 2112;
      v45 = selfCopy2;
      v46 = 2080;
      v47 = "[FPDXPCServicer startDownloadingItemAtURL:completionHandler:]";
      v48 = 2112;
      v49 = v30;
      _os_log_debug_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v26 = FPProviderNotFoundErrorForURL();
    (*(v8 + 2))(v8, v26);

    __fp_pop_log();
  }

LABEL_13:
  v28 = *MEMORY[0x1E69E9840];
}

void __62__FPDXPCServicer_startDownloadingItemAtURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer startDownloadingItemAtURL:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __62__FPDXPCServicer_startDownloadingItemAtURL_completionHandler___block_invoke_128(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__FPDXPCServicer_startDownloadingItemAtURL_completionHandler___block_invoke_2;
  block[3] = &unk_1E83C0138;
  v8 = *(a1 + 40);
  v12 = v6;
  v13 = v8;
  v18 = *(a1 + 64);
  v14 = v5;
  v15 = *(a1 + 48);
  v16 = *(a1 + 32);
  v17 = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

void __62__FPDXPCServicer_startDownloadingItemAtURL_completionHandler___block_invoke_2(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 40) + 24);
    v28 = fpfs_adopt_log();
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 80);
      v19 = FPPopLogSectionForBlock();
      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      v22 = FPPluginOperationFailedError();
      *buf = 134218754;
      v32 = v19;
      v33 = 2112;
      v34 = v21;
      v35 = 2080;
      v36 = "[FPDXPCServicer startDownloadingItemAtURL:completionHandler:]_block_invoke_2";
      v37 = 2112;
      v38 = v22;
      _os_log_debug_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v4 = *(a1 + 80);
    v5 = *(a1 + 32);
    v6 = FPPluginOperationFailedError();
    (*(v4 + 16))(v4, v6);

    __fp_pop_log();
  }

  else if (*(a1 + 48))
  {
    v7 = [*(a1 + 64) defaultBackend];
    v8 = [v7 startProvidingItemAtURL:*(a1 + 56) readerID:@"startDownloadingItemAtURL" readingOptions:0 request:*(a1 + 72) completionHandler:&__block_literal_global_134];

    v9 = *(*(a1 + 40) + 24);
    v29 = fpfs_adopt_log();
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 80);
      FPPopLogSectionForBlock();
      __62__FPDXPCServicer_startDownloadingItemAtURL_completionHandler___block_invoke_2_cold_1((a1 + 40));
    }

    (*(*(a1 + 80) + 16))();
    __fp_pop_log();
  }

  else
  {
    v12 = *(*(a1 + 40) + 24);
    v30 = fpfs_adopt_log();
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 80);
      v24 = FPPopLogSectionForBlock();
      v25 = *(a1 + 40);
      v26 = *(a1 + 56);
      v27 = FPItemNotFoundErrorAtURL();
      *buf = 134218754;
      v32 = v24;
      v33 = 2112;
      v34 = v25;
      v35 = 2080;
      v36 = "[FPDXPCServicer startDownloadingItemAtURL:completionHandler:]_block_invoke";
      v37 = 2112;
      v38 = v27;
      _os_log_debug_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v14 = *(a1 + 80);
    v15 = *(a1 + 56);
    v16 = FPItemNotFoundErrorAtURL();
    (*(v14 + 16))(v14, v16);

    __fp_pop_log();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)evictItemAtURL:(id)l evenIfEnumeratingFP:(BOOL)p andClearACLForConsumer:(id)consumer evictionReason:(unsigned int)reason completionHandler:(id)handler
{
  pCopy = p;
  v54[6] = *MEMORY[0x1E69E9840];
  lCopy = l;
  consumerCopy = consumer;
  handlerCopy = handler;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v50 = __109__FPDXPCServicer_evictItemAtURL_evenIfEnumeratingFP_andClearACLForConsumer_evictionReason_completionHandler___block_invoke;
  v51 = &unk_1E83BE1A8;
  selfCopy = self;
  v14 = handlerCopy;
  v53 = v14;
  selfCopy2 = self;
  v16 = lCopy;
  v17 = v49;
  if (!v16)
  {
    v32 = FPInvalidParameterError();
LABEL_20:
    v36 = v32;
    v50(v17, v32);

    v35 = 0;
    goto LABEL_23;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v19 = [connection fp_hasSandboxAccessToFile:v16 accessType:*MEMORY[0x1E6966DA8] logLevel:0];

  if ((v19 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    v54[0] = *MEMORY[0x1E6967560];
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
    v22 = [connection2 fp_hasOneOfEntitlements:v21 nonSandboxedAccess:0 logLevel:0];

    if ((v22 & 1) == 0)
    {
      v32 = FPNotPermittedError();
      goto LABEL_20;
    }
  }

  v23 = fp_current_or_default_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [FPDXPCServicer evictItemAtURL:a2 evenIfEnumeratingFP:? andClearACLForConsumer:? evictionReason:? completionHandler:?];
  }

  server = [(FPDXPCServicer *)selfCopy2 server];
  extensionManager = [server extensionManager];
  v26 = [extensionManager domainForURL:v16 reason:0];

  if (v26)
  {
    provider = [v26 provider];
    supportsEnumeration = [provider supportsEnumeration];

    if ((supportsEnumeration & !pCopy) == 0)
    {
      defaultBackend = [v26 defaultBackend];
      v38 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __109__FPDXPCServicer_evictItemAtURL_evenIfEnumeratingFP_andClearACLForConsumer_evictionReason_completionHandler___block_invoke_135;
      v43[3] = &unk_1E83C0160;
      v44 = v26;
      v45 = v16;
      v46 = selfCopy2;
      v47 = v14;
      v35 = [defaultBackend evictItemAtURL:v45 evictionReason:reason request:v38 completionHandler:v43];

      goto LABEL_22;
    }

    v29 = fp_current_or_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [FPDXPCServicer evictItemAtURL:evenIfEnumeratingFP:andClearACLForConsumer:evictionReason:completionHandler:];
    }

    log = selfCopy2->_log;
    v48 = fpfs_adopt_log();
    v31 = fp_current_or_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer evictItemAtURL:evenIfEnumeratingFP:andClearACLForConsumer:evictionReason:completionHandler:];
    }
  }

  else
  {
    v33 = fp_current_or_default_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer evictItemAtURL:v16 evenIfEnumeratingFP:? andClearACLForConsumer:? evictionReason:? completionHandler:?];
    }

    v34 = selfCopy2->_log;
    v48 = fpfs_adopt_log();
    v31 = fp_current_or_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer evictItemAtURL:evenIfEnumeratingFP:andClearACLForConsumer:evictionReason:completionHandler:];
    }
  }

  (*(v14 + 2))(v14, 0);
  __fp_pop_log();

  v35 = 0;
LABEL_22:

LABEL_23:
  v39 = *MEMORY[0x1E69E9840];

  return v35;
}

void __109__FPDXPCServicer_evictItemAtURL_evenIfEnumeratingFP_andClearACLForConsumer_evictionReason_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer evictItemAtURL:evenIfEnumeratingFP:andClearACLForConsumer:evictionReason:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __109__FPDXPCServicer_evictItemAtURL_evenIfEnumeratingFP_andClearACLForConsumer_evictionReason_completionHandler___block_invoke_135(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __109__FPDXPCServicer_evictItemAtURL_evenIfEnumeratingFP_andClearACLForConsumer_evictionReason_completionHandler___block_invoke_135_cold_1();
    }

    v8 = *(*(a1 + 48) + 24);
    v20 = fpfs_adopt_log();
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 56);
      v17 = FPPopLogSectionForBlock();
      v18 = *(a1 + 48);
      v19 = FPPluginOperationFailedError();
      *buf = 134218754;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2080;
      v27 = "[FPDXPCServicer evictItemAtURL:evenIfEnumeratingFP:andClearACLForConsumer:evictionReason:completionHandler:]_block_invoke";
      v28 = 2112;
      v29 = v19;
      _os_log_debug_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s error: %@", buf, 0x2Au);
    }

    v10 = *(a1 + 56);
    v11 = FPPluginOperationFailedError();
    (*(v10 + 16))(v10, v11);

    __fp_pop_log();
  }

  else
  {
    v12 = *(*(a1 + 48) + 24);
    v21 = fpfs_adopt_log();
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 56);
      FPPopLogSectionForBlock();
      __109__FPDXPCServicer_evictItemAtURL_evenIfEnumeratingFP_andClearACLForConsumer_evictionReason_completionHandler___block_invoke_135_cold_2((a1 + 48));
    }

    (*(*(a1 + 56) + 16))();
    __fp_pop_log();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)evictItemWithID:(id)d evictionReason:(unsigned int)reason completionHandler:(id)handler
{
  v52 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  providerID = [dCopy providerID];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v39 = __67__FPDXPCServicer_evictItemWithID_evictionReason_completionHandler___block_invoke;
  v40 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v42 = v10;
  selfCopy2 = self;
  v12 = v38;
  v43 = 0;
  v13 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:providerID enumerateEntitlementRequired:1 error:&v43];
  v14 = v43;
  if (!v13)
  {
    v39(v12, v14);
LABEL_7:
    v20 = 0;
    goto LABEL_9;
  }

  if ([v13 invalidated])
  {
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v13;
      _os_log_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
    }

    v16 = MEMORY[0x1E696AEC0];
    identifier = [v13 identifier];
    v18 = [v16 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

    v19 = FPProviderNotRegistered();
    v39(v12, v19);

    goto LABEL_7;
  }

  v20 = v13;
LABEL_9:

  if (v20)
  {
    v43 = 0;
    server = [(FPDXPCServicer *)selfCopy2 server];
    extensionManager = [server extensionManager];
    v23 = [extensionManager domainFromItemID:dCopy reason:&v43];

    if (v23)
    {
      defaultBackend = [v23 defaultBackend];
      v25 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __67__FPDXPCServicer_evictItemWithID_evictionReason_completionHandler___block_invoke_136;
      v35[3] = &unk_1E83BE1A8;
      v35[4] = selfCopy2;
      v36 = v10;
      [defaultBackend evictItemWithID:dCopy evictionReason:reason request:v25 completionHandler:v35];
    }

    else
    {
      log = selfCopy2->_log;
      v37 = fpfs_adopt_log();
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v31 = FPPopLogSectionForBlock();
        providerID2 = [dCopy providerID];
        v33 = FPProviderNotFoundError();
        *buf = 134218754;
        v45 = v31;
        v46 = 2112;
        v47 = selfCopy2;
        v48 = 2080;
        v49 = "[FPDXPCServicer evictItemWithID:evictionReason:completionHandler:]";
        v50 = 2112;
        v51 = v33;
        _os_log_debug_impl(&dword_1CEFC7000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      providerID3 = [dCopy providerID];
      v29 = FPProviderNotFoundError();
      (*(v10 + 2))(v10, v29);

      __fp_pop_log();
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __67__FPDXPCServicer_evictItemWithID_evictionReason_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer evictItemWithID:evictionReason:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __67__FPDXPCServicer_evictItemWithID_evictionReason_completionHandler___block_invoke_136(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer evictItemWithID:evictionReason:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)pinItemWithID:(id)d completionHandler:(id)handler
{
  v59 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  providerID = [dCopy providerID];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v44 = __50__FPDXPCServicer_pinItemWithID_completionHandler___block_invoke;
  v45 = &unk_1E83BE1A8;
  selfCopy = self;
  v9 = handlerCopy;
  v47 = v9;
  selfCopy2 = self;
  v11 = v43;
  v48 = 0;
  v12 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:providerID enumerateEntitlementRequired:1 error:&v48];
  v13 = v48;
  if (!v12)
  {
    v44(v11, v13);
LABEL_7:
    v19 = 0;
    goto LABEL_9;
  }

  if ([v12 invalidated])
  {
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = v12;
      _os_log_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
    }

    v15 = MEMORY[0x1E696AEC0];
    identifier = [v12 identifier];
    v17 = [v15 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

    v18 = FPProviderNotRegistered();
    v44(v11, v18);

    goto LABEL_7;
  }

  v19 = v12;
LABEL_9:

  if (v19)
  {
    v48 = 0;
    server = [(FPDXPCServicer *)selfCopy2 server];
    extensionManager = [server extensionManager];
    v22 = [extensionManager domainFromItemID:dCopy reason:&v48];

    if (v22)
    {
      defaultBackend = [v22 defaultBackend];
      v24 = objc_opt_respondsToSelector();

      if (v24)
      {
        defaultBackend2 = [v22 defaultBackend];
        v26 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __50__FPDXPCServicer_pinItemWithID_completionHandler___block_invoke_139;
        v40[3] = &unk_1E83C0188;
        v40[4] = selfCopy2;
        v41 = v9;
        [defaultBackend2 pinItemWithID:dCopy request:v26 completionHandler:v40];
      }

      else
      {
        log = selfCopy2->_log;
        v42 = fpfs_adopt_log();
        v32 = fp_current_or_default_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v38 = FPPopLogSectionForBlock();
          v39 = FPNotSupportedError();
          *buf = 134219010;
          v50 = v38;
          v51 = 2112;
          v52 = selfCopy2;
          v53 = 2080;
          v54 = "[FPDXPCServicer pinItemWithID:completionHandler:]";
          v55 = 2112;
          v56 = 0;
          v57 = 2112;
          v58 = v39;
          _os_log_debug_impl(&dword_1CEFC7000, v32, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        v33 = FPNotSupportedError();
        (*(v9 + 2))(v9, 0, v33);

        __fp_pop_log();
      }
    }

    else
    {
      v27 = selfCopy2->_log;
      v42 = fpfs_adopt_log();
      v28 = fp_current_or_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v35 = FPPopLogSectionForBlock();
        providerID2 = [dCopy providerID];
        v37 = FPProviderNotFoundError();
        *buf = 134219010;
        v50 = v35;
        v51 = 2112;
        v52 = selfCopy2;
        v53 = 2080;
        v54 = "[FPDXPCServicer pinItemWithID:completionHandler:]";
        v55 = 2112;
        v56 = 0;
        v57 = 2112;
        v58 = v37;
        _os_log_debug_impl(&dword_1CEFC7000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      providerID3 = [dCopy providerID];
      v30 = FPProviderNotFoundError();
      (*(v9 + 2))(v9, 0, v30);

      __fp_pop_log();
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

void __50__FPDXPCServicer_pinItemWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer pinItemWithID:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __50__FPDXPCServicer_pinItemWithID_completionHandler___block_invoke_139(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v13 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    v11 = FPPopLogSectionForBlock();
    v12 = *(a1 + 32);
    *buf = 134219010;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2080;
    v19 = "[FPDXPCServicer pinItemWithID:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)unpinItemWithID:(id)d completionHandler:(id)handler
{
  v59 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  providerID = [dCopy providerID];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v44 = __52__FPDXPCServicer_unpinItemWithID_completionHandler___block_invoke;
  v45 = &unk_1E83BE1A8;
  selfCopy = self;
  v9 = handlerCopy;
  v47 = v9;
  selfCopy2 = self;
  v11 = v43;
  v48 = 0;
  v12 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:providerID enumerateEntitlementRequired:1 error:&v48];
  v13 = v48;
  if (!v12)
  {
    v44(v11, v13);
LABEL_7:
    v19 = 0;
    goto LABEL_9;
  }

  if ([v12 invalidated])
  {
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = v12;
      _os_log_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
    }

    v15 = MEMORY[0x1E696AEC0];
    identifier = [v12 identifier];
    v17 = [v15 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

    v18 = FPProviderNotRegistered();
    v44(v11, v18);

    goto LABEL_7;
  }

  v19 = v12;
LABEL_9:

  if (v19)
  {
    v48 = 0;
    server = [(FPDXPCServicer *)selfCopy2 server];
    extensionManager = [server extensionManager];
    v22 = [extensionManager domainFromItemID:dCopy reason:&v48];

    if (v22)
    {
      defaultBackend = [v22 defaultBackend];
      v24 = objc_opt_respondsToSelector();

      if (v24)
      {
        defaultBackend2 = [v22 defaultBackend];
        v26 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __52__FPDXPCServicer_unpinItemWithID_completionHandler___block_invoke_143;
        v40[3] = &unk_1E83C0188;
        v40[4] = selfCopy2;
        v41 = v9;
        [defaultBackend2 unpinItemWithID:dCopy request:v26 completionHandler:v40];
      }

      else
      {
        log = selfCopy2->_log;
        v42 = fpfs_adopt_log();
        v32 = fp_current_or_default_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v38 = FPPopLogSectionForBlock();
          v39 = FPNotSupportedError();
          *buf = 134219010;
          v50 = v38;
          v51 = 2112;
          v52 = selfCopy2;
          v53 = 2080;
          v54 = "[FPDXPCServicer unpinItemWithID:completionHandler:]";
          v55 = 2112;
          v56 = 0;
          v57 = 2112;
          v58 = v39;
          _os_log_debug_impl(&dword_1CEFC7000, v32, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        v33 = FPNotSupportedError();
        (*(v9 + 2))(v9, 0, v33);

        __fp_pop_log();
      }
    }

    else
    {
      v27 = selfCopy2->_log;
      v42 = fpfs_adopt_log();
      v28 = fp_current_or_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v35 = FPPopLogSectionForBlock();
        providerID2 = [dCopy providerID];
        v37 = FPProviderNotFoundError();
        *buf = 134219010;
        v50 = v35;
        v51 = 2112;
        v52 = selfCopy2;
        v53 = 2080;
        v54 = "[FPDXPCServicer unpinItemWithID:completionHandler:]";
        v55 = 2112;
        v56 = 0;
        v57 = 2112;
        v58 = v37;
        _os_log_debug_impl(&dword_1CEFC7000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      providerID3 = [dCopy providerID];
      v30 = FPProviderNotFoundError();
      (*(v9 + 2))(v9, 0, v30);

      __fp_pop_log();
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

void __52__FPDXPCServicer_unpinItemWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer unpinItemWithID:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __52__FPDXPCServicer_unpinItemWithID_completionHandler___block_invoke_143(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v13 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    v11 = FPPopLogSectionForBlock();
    v12 = *(a1 + 32);
    *buf = 134219010;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2080;
    v19 = "[FPDXPCServicer unpinItemWithID:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)detachKnownFolders:(id)folders completionHandler:(id)handler
{
  v36[2] = *MEMORY[0x1E69E9840];
  foldersCopy = folders;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E69675D0];
  v36[0] = *MEMORY[0x1E6967558];
  v36[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v24 = __55__FPDXPCServicer_detachKnownFolders_completionHandler___block_invoke;
  v25 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v27 = v10;
  v11 = v9;
  v12 = v23;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    log = self->_log;
    v22 = fpfs_adopt_log();
    v16 = fp_current_or_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v20 = FPPopLogSectionForBlock();
      v21 = FPNotSupportedError();
      *buf = 134218754;
      v29 = v20;
      v30 = 2112;
      selfCopy2 = self;
      v32 = 2080;
      v33 = "[FPDXPCServicer detachKnownFolders:completionHandler:]";
      v34 = 2112;
      v35 = v21;
      _os_log_debug_impl(&dword_1CEFC7000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v17 = FPNotSupportedError();
    (*(v10 + 2))(v10, v17);

    __fp_pop_log();
  }

  else
  {
    v18 = FPNotPermittedError();
    v24(v12, v18);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __55__FPDXPCServicer_detachKnownFolders_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer detachKnownFolders:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)attachKnownFolders:(id)folders options:(unint64_t)options completionHandler:(id)handler
{
  v37[2] = *MEMORY[0x1E69E9840];
  foldersCopy = folders;
  handlerCopy = handler;
  v9 = *MEMORY[0x1E69675D0];
  v37[0] = *MEMORY[0x1E6967558];
  v37[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v25 = __63__FPDXPCServicer_attachKnownFolders_options_completionHandler___block_invoke;
  v26 = &unk_1E83BE1A8;
  selfCopy = self;
  v11 = handlerCopy;
  v28 = v11;
  v12 = v10;
  v13 = v24;
  connection = [(FPDXPCServicer *)self connection];
  v15 = [connection fp_hasOneOfEntitlements:v12];

  if (v15)
  {

    log = self->_log;
    v23 = fpfs_adopt_log();
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v21 = FPPopLogSectionForBlock();
      v22 = FPNotSupportedError();
      *buf = 134218754;
      v30 = v21;
      v31 = 2112;
      selfCopy2 = self;
      v33 = 2080;
      v34 = "[FPDXPCServicer attachKnownFolders:options:completionHandler:]";
      v35 = 2112;
      v36 = v22;
      _os_log_debug_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v18 = FPNotSupportedError();
    (*(v11 + 2))(v11, v18);

    __fp_pop_log();
  }

  else
  {
    v19 = FPNotPermittedError();
    v25(v13, v19);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __63__FPDXPCServicer_attachKnownFolders_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer attachKnownFolders:options:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_selectNewProviderDomain:(id)domain knownFolders:(unint64_t)folders skipReleasePrompt:(BOOL)prompt completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, v8);
}

void __91__FPDXPCServicer_selectNewProviderDomain_knownFolders_skipReleasePrompt_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer selectNewProviderDomain:knownFolders:skipReleasePrompt:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __91__FPDXPCServicer_selectNewProviderDomain_knownFolders_skipReleasePrompt_completionHandler___block_invoke_144(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) fp_toProviderID];
  v5 = v4;
  v6 = @"no provider";
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [MEMORY[0x1E699C730] defaultManager];
  v9 = [v8 sessionForProviderID:v7 version:0];

  [v9 postReportWithCategory:1 type:1 payload:&unk_1F4C62AF8 error:v3];
  v10 = *(*(a1 + 40) + 24);
  v16 = fpfs_adopt_log();
  v11 = fp_current_or_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 48);
    v14 = FPPopLogSectionForBlock();
    v15 = *(a1 + 40);
    *buf = 134218754;
    v18 = v14;
    v19 = 2112;
    v20 = v15;
    v21 = 2080;
    v22 = "[FPDXPCServicer selectNewProviderDomain:knownFolders:skipReleasePrompt:completionHandler:]_block_invoke";
    v23 = 2112;
    v24 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log();

  v12 = *MEMORY[0x1E69E9840];
}

- (void)providerDomainsCompletionHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v23 = __51__FPDXPCServicer_providerDomainsCompletionHandler___block_invoke;
  v24 = &unk_1E83BE1A8;
  selfCopy = self;
  v5 = handlerCopy;
  v26 = v5;
  v6 = v22;
  selfCopy2 = self;
  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v9 = *MEMORY[0x1E6967540];
  *buf = *MEMORY[0x1E6967538];
  *&buf[8] = v9;
  *&buf[16] = *MEMORY[0x1E6967560];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:3];

  v11 = [connection fp_hasOneOfEntitlements:v10];
  if (v11)
  {

    server = [(FPDXPCServicer *)selfCopy2 server];
    extensionManager = [server extensionManager];
    providerDomainsByID = [extensionManager providerDomainsByID];

    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer providerDomainsCompletionHandler:];
    }

    log = selfCopy2->_log;
    v21 = fpfs_adopt_log();
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v20 = FPPopLogSectionForBlock();
      *buf = 134219010;
      *&buf[4] = v20;
      *&buf[12] = 2112;
      *&buf[14] = selfCopy2;
      *&buf[22] = 2080;
      v28 = "[FPDXPCServicer providerDomainsCompletionHandler:]";
      v29 = 2112;
      v30 = providerDomainsByID;
      v31 = 2112;
      v32 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s domains: %@, error: %@", buf, 0x34u);
    }

    (*(v5 + 2))(v5, providerDomainsByID, 0);
    __fp_pop_log();
  }

  else
  {
    v18 = FPNotPermittedError();
    v23(v6, v18);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __51__FPDXPCServicer_providerDomainsCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer providerDomainsCompletionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s domains: %@, error: %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)providerDomainForIdentifier:(id)identifier completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v26 = __64__FPDXPCServicer_providerDomainForIdentifier_completionHandler___block_invoke;
  v27 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v29 = v8;
  v9 = v25;
  selfCopy2 = self;
  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v12 = *MEMORY[0x1E6967540];
  *buf = *MEMORY[0x1E6967538];
  *&buf[8] = v12;
  *&buf[16] = *MEMORY[0x1E6967560];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:3];

  v14 = [connection fp_hasOneOfEntitlements:v13];
  if (v14)
  {

    server = [(FPDXPCServicer *)selfCopy2 server];
    extensionManager = [server extensionManager];

    [extensionManager updateProvidersIfNecessary];
    providerDomainsByID = [extensionManager providerDomainsByID];
    v18 = [providerDomainsByID objectForKeyedSubscript:identifierCopy];
    log = selfCopy2->_log;
    v24 = fpfs_adopt_log();
    v20 = fp_current_or_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v23 = FPPopLogSectionForBlock();
      *buf = 134219010;
      *&buf[4] = v23;
      *&buf[12] = 2112;
      *&buf[14] = selfCopy2;
      *&buf[22] = 2080;
      v31 = "[FPDXPCServicer providerDomainForIdentifier:completionHandler:]";
      v32 = 2112;
      v33 = v18;
      v34 = 2112;
      v35 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s domain: %@, error: %@", buf, 0x34u);
    }

    (*(v8 + 2))(v8, v18, 0);
    __fp_pop_log();
  }

  else
  {
    v21 = FPNotPermittedError();
    v26(v9, v21);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __64__FPDXPCServicer_providerDomainForIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer providerDomainForIdentifier:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s domain: %@, error: %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)providerDomainForURL:(id)l completionHandler:(id)handler
{
  v48 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v35 = __57__FPDXPCServicer_providerDomainForURL_completionHandler___block_invoke;
  v36 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v38 = v8;
  selfCopy2 = self;
  v10 = lCopy;
  v11 = v34;
  if (!v10)
  {
    v25 = FPInvalidParameterError();
LABEL_17:
    v29 = v25;
    v35(v11, v25);

    goto LABEL_18;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v13 = [connection fp_hasSandboxAccessToFile:v10 accessType:*MEMORY[0x1E6966DA8] logLevel:0];

  if ((v13 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    *buf = *MEMORY[0x1E6967560];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v16 = [connection2 fp_hasOneOfEntitlements:v15 nonSandboxedAccess:0 logLevel:0];

    if ((v16 & 1) == 0)
    {
      v25 = FPNotPermittedError();
      goto LABEL_17;
    }
  }

  server = [(FPDXPCServicer *)selfCopy2 server];
  extensionManager = [server extensionManager];

  [extensionManager updateProvidersIfNecessary];
  v19 = [extensionManager domainForURL:v10 reason:0];
  provider = [v19 provider];
  v21 = provider;
  if (v19 && provider)
  {
    v22 = [provider providerDomainForDomain:v19];
    [v22 setShouldHideDomainDisplayName:{objc_msgSend(v21, "shouldHideDomainDisplayName")}];
    log = selfCopy2->_log;
    v32 = fpfs_adopt_log();
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v31 = FPPopLogSectionForBlock();
      *buf = 134219010;
      *&buf[4] = v31;
      v40 = 2112;
      v41 = selfCopy2;
      v42 = 2080;
      v43 = "[FPDXPCServicer providerDomainForURL:completionHandler:]";
      v44 = 2112;
      v45 = v22;
      v46 = 2112;
      v47 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(v8 + 2))(v8, v22, 0);
    __fp_pop_log();
  }

  else
  {
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer providerDomainForURL:v10 completionHandler:?];
    }

    v27 = selfCopy2->_log;
    v33 = fpfs_adopt_log();
    v28 = fp_current_or_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer providerDomainForURL:completionHandler:];
    }

    (*(v8 + 2))(v8, 0, 0);
    __fp_pop_log();
  }

LABEL_18:
  v30 = *MEMORY[0x1E69E9840];
}

void __57__FPDXPCServicer_providerDomainForURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer providerDomainForURL:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (id)tryTransformItemIDAfterMigration:(id)migration
{
  migrationCopy = migration;
  providerID = [migrationCopy providerID];
  if ([providerID isEqual:@"com.apple.CloudDocs.MobileDocumentsFileProvider"])
  {
  }

  else
  {
    providerID2 = [migrationCopy providerID];
    v7 = [providerID2 isEqual:@"com.apple.CloudDocs.MobileDocumentsFileProviderManaged"];

    if (!v7)
    {
      goto LABEL_11;
    }
  }

  providerID3 = [migrationCopy providerID];
  v9 = [providerID3 isEqual:@"com.apple.CloudDocs.MobileDocumentsFileProvider"];

  if (v9)
  {
    v10 = @"com.apple.CloudDocs.iCloudDriveFileProvider";
  }

  else
  {
    providerID4 = [migrationCopy providerID];
    v12 = [providerID4 isEqual:@"com.apple.CloudDocs.MobileDocumentsFileProviderManaged"];

    if (v12)
    {
      v10 = @"com.apple.CloudDocs.iCloudDriveFileProviderManaged";
    }

    else
    {
      v10 = 0;
    }
  }

  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];
  v15 = [extensionManager domainsForAppBundleIdentifier:v10];
  v16 = [v15 fp_filter:&__block_literal_global_170_0];
  firstObject = [v16 firstObject];

  if (firstObject)
  {
    providerDomainID = [firstObject providerDomainID];
    v19 = [migrationCopy transformForMigratedCloudDocsProviderDomainIdentifier:providerDomainID];

    goto LABEL_12;
  }

LABEL_11:
  v19 = migrationCopy;
LABEL_12:

  return v19;
}

uint64_t __51__FPDXPCServicer_tryTransformItemIDAfterMigration___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqual:*MEMORY[0x1E6967178]];

  return v3 ^ 1u;
}

void __126__FPDXPCServicer_documentURLFromBookmarkableString_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = fp_resolver_log();
  v17 = fpfs_adopt_log();

  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = a1[4];
    *buf = 138412802;
    v19 = v12;
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] [%@] Did resolve URL:%@ error:%@.", buf, 0x20u);
  }

  v9 = *(a1[5] + 24);
  v16 = fpfs_adopt_log();
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = a1[6];
    v14 = FPPopLogSectionForBlock();
    v15 = a1[5];
    *buf = 134219266;
    v19 = v14;
    v20 = 2112;
    v21 = v15;
    v22 = 2080;
    v23 = "[FPDXPCServicer documentURLFromBookmarkableString:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]_block_invoke";
    v24 = 2112;
    v25 = v5;
    v26 = 2112;
    v27 = 0;
    v28 = 2112;
    v29 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  (*(a1[6] + 16))();
  __fp_pop_log();

  __fp_pop_log();
  v11 = *MEMORY[0x1E69E9840];
}

void __126__FPDXPCServicer_documentURLFromBookmarkableString_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_completionHandler___block_invoke_176(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = *(*(a1 + 32) + 24);
    v20 = fpfs_adopt_log();
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 40);
      v15 = FPPopLogSectionForBlock();
      v16 = *(a1 + 32);
      *buf = 134219266;
      v22 = v15;
      v23 = 2112;
      v24 = v16;
      v25 = 2080;
      v26 = "[FPDXPCServicer documentURLFromBookmarkableString:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]_block_invoke";
      v27 = 2112;
      v28 = 0;
      v29 = 2112;
      v30 = 0;
      v31 = 2112;
      v32 = v7;
      _os_log_debug_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }
  }

  else
  {
    v12 = *(*(a1 + 32) + 24);
    v20 = fpfs_adopt_log();
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 40);
      v18 = FPPopLogSectionForBlock();
      v19 = *(a1 + 32);
      *buf = 134219266;
      v22 = v18;
      v23 = 2112;
      v24 = v19;
      v25 = 2080;
      v26 = "[FPDXPCServicer documentURLFromBookmarkableString:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]_block_invoke";
      v27 = 2112;
      v28 = v8;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v13 = *MEMORY[0x1E69E9840];
}

- (void)documentURLFromItemID:(id)d creatingPlaceholderIfMissing:(BOOL)missing ignoreAlternateContentsURL:(BOOL)l completionHandler:(id)handler
{
  missingCopy = missing;
  lCopy = l;
  v90[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [FPDXPCServicer documentURLFromItemID:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:];
  }

  connection = [(FPDXPCServicer *)self connection];
  v90[0] = *MEMORY[0x1E6967580];
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:1];
  v13 = [connection fp_hasOneOfEntitlements:v12 logLevel:0];

  if (v13)
  {
    goto LABEL_19;
  }

  connection2 = [(FPDXPCServicer *)self connection];
  fp_bundleIdentifier = [connection2 fp_bundleIdentifier];
  providerID = [dCopy providerID];
  v17 = [fp_bundleIdentifier isEqual:providerID];

  if (v17)
  {
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [FPDXPCServicer documentURLFromItemID:? creatingPlaceholderIfMissing:? ignoreAlternateContentsURL:? completionHandler:?];
    }

    log = self->_log;
    v77 = fpfs_adopt_log();
    v20 = fp_current_or_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v54 = FPPopLogSectionForBlock();
      v55 = FPNotPermittedError();
      *buf = 134219266;
      v79 = v54;
      v80 = 2112;
      selfCopy6 = self;
      v82 = 2080;
      v83 = "[FPDXPCServicer documentURLFromItemID:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]";
      v84 = 2112;
      v85 = 0;
      v86 = 2112;
      v87 = 0;
      v88 = 2112;
      v89 = v55;
      _os_log_debug_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }

    v21 = FPNotPermittedError();
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v21);

    __fp_pop_log();
    goto LABEL_33;
  }

  providerID2 = [dCopy providerID];
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v72 = __114__FPDXPCServicer_documentURLFromItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_completionHandler___block_invoke;
  v73 = &unk_1E83BFA20;
  selfCopy2 = self;
  v64 = dCopy;
  v75 = v64;
  v76 = handlerCopy;
  selfCopy3 = self;
  v23 = v71;
  v77 = 0;
  v24 = [(FPDXPCServicer *)selfCopy3 providerForIdentifier:providerID2 enumerateEntitlementRequired:1 error:&v77];
  v25 = v77;
  if (!v24)
  {
    v72(v23, v25);
LABEL_16:
    v31 = 0;
    goto LABEL_18;
  }

  if ([v24 invalidated])
  {
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v79 = v24;
      _os_log_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
    }

    v27 = MEMORY[0x1E696AEC0];
    identifier = [v24 identifier];
    v29 = [v27 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

    v30 = FPProviderNotRegistered();
    v72(v23, v30);

    goto LABEL_16;
  }

  v31 = v24;
LABEL_18:

  if (!v31)
  {
    dCopy = v64;
    goto LABEL_33;
  }

LABEL_19:
  if (dCopy)
  {
    identifier2 = [dCopy identifier];
    v33 = [identifier2 length] == 0;

    if (!v33)
    {
      v77 = 0;
      server = [(FPDXPCServicer *)self server];
      extensionManager = [server extensionManager];
      v36 = [extensionManager domainFromItemID:dCopy checkInvalidation:1 reason:&v77];

      if (v36)
      {
        v37 = dCopy;
      }

      else
      {
        v37 = [(FPDXPCServicer *)self tryTransformItemIDAfterMigration:dCopy];

        server2 = [(FPDXPCServicer *)self server];
        extensionManager2 = [server2 extensionManager];
        v36 = [extensionManager2 domainFromItemID:v37 checkInvalidation:1 reason:&v77];

        if (!v36)
        {
          v50 = self->_log;
          v68 = fpfs_adopt_log();
          v51 = fp_current_or_default_log();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            v61 = FPPopLogSectionForBlock();
            providerDomainID = [v37 providerDomainID];
            v63 = FPProviderNotFoundError();
            *buf = 134219266;
            v79 = v61;
            v80 = 2112;
            selfCopy6 = self;
            v82 = 2080;
            v83 = "[FPDXPCServicer documentURLFromItemID:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]";
            v84 = 2112;
            v85 = 0;
            v86 = 2112;
            v87 = 0;
            v88 = 2112;
            v89 = v63;
            _os_log_debug_impl(&dword_1CEFC7000, v51, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
          }

          providerDomainID2 = [v37 providerDomainID];
          v53 = FPProviderNotFoundError();
          (*(handlerCopy + 2))(handlerCopy, 0, 0, v53);

          __fp_pop_log();
          goto LABEL_31;
        }
      }

      defaultBackend = [v36 defaultBackend];
      v48 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __114__FPDXPCServicer_documentURLFromItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_completionHandler___block_invoke_184;
      v69[3] = &unk_1E83BE220;
      v69[4] = self;
      v70 = handlerCopy;
      [defaultBackend URLForItemID:v37 creatingPlaceholderIfMissing:missingCopy ignoreAlternateContentsURL:lCopy forBookmarkResolution:0 request:v48 completionHandler:v69];

LABEL_31:
      dCopy = v37;
      goto LABEL_33;
    }

    v41 = self->_log;
    v77 = fpfs_adopt_log();
    v42 = fp_current_or_default_log();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v58 = FPPopLogSectionForBlock();
      identifier3 = [dCopy identifier];
      v60 = FPItemNotFoundError();
      *buf = 134219266;
      v79 = v58;
      v80 = 2112;
      selfCopy6 = self;
      v82 = 2080;
      v83 = "[FPDXPCServicer documentURLFromItemID:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]";
      v84 = 2112;
      v85 = 0;
      v86 = 2112;
      v87 = 0;
      v88 = 2112;
      v89 = v60;
      _os_log_debug_impl(&dword_1CEFC7000, v42, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }

    identifier4 = [dCopy identifier];
    v44 = FPItemNotFoundError();
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v44);

    __fp_pop_log();
  }

  else
  {
    v38 = self->_log;
    v77 = fpfs_adopt_log();
    v39 = fp_current_or_default_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      v56 = FPPopLogSectionForBlock();
      v57 = FPInvalidParameterError();
      *buf = 134219266;
      v79 = v56;
      v80 = 2112;
      selfCopy6 = self;
      v82 = 2080;
      v83 = "[FPDXPCServicer documentURLFromItemID:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]";
      v84 = 2112;
      v85 = 0;
      v86 = 2112;
      v87 = 0;
      v88 = 2112;
      v89 = v57;
      _os_log_debug_impl(&dword_1CEFC7000, v39, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }

    v40 = FPInvalidParameterError();
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v40);

    __fp_pop_log();
    dCopy = 0;
  }

LABEL_33:

  v49 = *MEMORY[0x1E69E9840];
}

void __114__FPDXPCServicer_documentURLFromItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v5 = [v4 fp_bundleIdentifier];

  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __114__FPDXPCServicer_documentURLFromItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_completionHandler___block_invoke_cold_1();
  }

  v7 = *(*(a1 + 32) + 24);
  v16 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 48);
    v13 = FPPopLogSectionForBlock();
    v14 = *(a1 + 32);
    v15 = FPNotPermittedError();
    *buf = 134219266;
    v18 = v13;
    v19 = 2112;
    v20 = v14;
    v21 = 2080;
    v22 = "[FPDXPCServicer documentURLFromItemID:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]_block_invoke";
    v23 = 2112;
    v24 = 0;
    v25 = 2112;
    v26 = 0;
    v27 = 2112;
    v28 = v15;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  v9 = *(a1 + 48);
  v10 = FPNotPermittedError();
  (*(v9 + 16))(v9, 0, 0, v10);

  __fp_pop_log();
  v11 = *MEMORY[0x1E69E9840];
}

void __114__FPDXPCServicer_documentURLFromItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_completionHandler___block_invoke_184(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = *(*(a1 + 32) + 24);
    v20 = fpfs_adopt_log();
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 40);
      v15 = FPPopLogSectionForBlock();
      v16 = *(a1 + 32);
      *buf = 134219266;
      v22 = v15;
      v23 = 2112;
      v24 = v16;
      v25 = 2080;
      v26 = "[FPDXPCServicer documentURLFromItemID:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]_block_invoke";
      v27 = 2112;
      v28 = 0;
      v29 = 2112;
      v30 = 0;
      v31 = 2112;
      v32 = v7;
      _os_log_debug_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }
  }

  else
  {
    v12 = *(*(a1 + 32) + 24);
    v20 = fpfs_adopt_log();
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 40);
      v18 = FPPopLogSectionForBlock();
      v19 = *(a1 + 32);
      *buf = 134219266;
      v22 = v18;
      v23 = 2112;
      v24 = v19;
      v25 = 2080;
      v26 = "[FPDXPCServicer documentURLFromItemID:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]_block_invoke";
      v27 = 2112;
      v28 = v8;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_forceIngestionForItemID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];
  v10 = [extensionManager domainFromItemID:dCopy reason:0];

  if (v10)
  {
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer _forceIngestionForItemID:completionHandler:];
    }

    v12 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61__FPDXPCServicer__forceIngestionForItemID_completionHandler___block_invoke;
    v14[3] = &unk_1E83C01F8;
    v15 = handlerCopy;
    [v10 forceIngestionForItemID:dCopy request:v12 completionHandler:v14];
  }

  else
  {
    v13 = FPNotSupportedError();
    (*(handlerCopy + 2))(handlerCopy, v13);
  }
}

- (void)forceIngestionForItemID:(id)d completionHandler:(id)handler
{
  v23[3] = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __60__FPDXPCServicer_forceIngestionForItemID_completionHandler___block_invoke;
  v20 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v22 = v8;
  v9 = &v17;
  selfCopy2 = self;
  v11 = [(FPDXPCServicer *)selfCopy2 connection:v17];
  v12 = *MEMORY[0x1E6967540];
  v23[0] = *MEMORY[0x1E6967538];
  v23[1] = v12;
  v23[2] = *MEMORY[0x1E6967560];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];

  v14 = [v11 fp_hasOneOfEntitlements:v13];
  if (v14)
  {

    [(FPDXPCServicer *)selfCopy2 _forceIngestionForItemID:dCopy completionHandler:v8];
  }

  else
  {
    v15 = FPNotPermittedError();
    v19(v9, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __60__FPDXPCServicer_forceIngestionForItemID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer forceIngestionForItemID:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)forceIngestionForItemIDs:(id)ds completionHandler:(id)handler
{
  v46[3] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  handlerCopy = handler;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v41 = __61__FPDXPCServicer_forceIngestionForItemIDs_completionHandler___block_invoke;
  v42 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v44 = v8;
  v9 = v40;
  selfCopy2 = self;
  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v12 = *MEMORY[0x1E6967540];
  v46[0] = *MEMORY[0x1E6967538];
  v46[1] = v12;
  v46[2] = *MEMORY[0x1E6967560];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:3];

  v14 = [connection fp_hasOneOfEntitlements:v13];
  if (v14)
  {

    if ([dsCopy count])
    {
      v26 = v8;
      v15 = dispatch_group_create();
      v16 = objc_opt_new();
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v27 = dsCopy;
      obj = dsCopy;
      v17 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v37;
        do
        {
          v20 = 0;
          do
          {
            if (*v37 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v36 + 1) + 8 * v20);
            dispatch_group_enter(v15);
            v32[0] = MEMORY[0x1E69E9820];
            v32[1] = 3221225472;
            v32[2] = __61__FPDXPCServicer_forceIngestionForItemIDs_completionHandler___block_invoke_186;
            v32[3] = &unk_1E83BDF78;
            v33 = v16;
            v34 = v21;
            v35 = v15;
            [(FPDXPCServicer *)selfCopy2 _forceIngestionForItemID:v21 completionHandler:v32];

            ++v20;
          }

          while (v18 != v20);
          v18 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
        }

        while (v18);
      }

      queue = selfCopy2->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__FPDXPCServicer_forceIngestionForItemIDs_completionHandler___block_invoke_2;
      block[3] = &unk_1E83BF450;
      v8 = v26;
      v30 = v16;
      v31 = v26;
      v23 = v16;
      dispatch_group_notify(v15, queue, block);

      dsCopy = v27;
    }

    else
    {
      (*(v8 + 2))(v8, 0, 0);
    }
  }

  else
  {
    v24 = FPNotPermittedError();
    v41(v9, v24);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __61__FPDXPCServicer_forceIngestionForItemIDs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer forceIngestionForItemIDs:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __61__FPDXPCServicer_forceIngestionForItemIDs_completionHandler___block_invoke_186(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = *(a1 + 32);
    objc_sync_enter(v3);
    [*(a1 + 32) setObject:v4 forKey:*(a1 + 40)];
    objc_sync_exit(v3);
  }

  dispatch_group_leave(*(a1 + 48));
}

void __61__FPDXPCServicer_forceIngestionForItemIDs_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)forceLatestVersionOnDiskForItemID:(id)d completionHandler:(id)handler
{
  v50 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v40 = __70__FPDXPCServicer_forceLatestVersionOnDiskForItemID_completionHandler___block_invoke;
  v41 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v43 = v8;
  v9 = v39;
  selfCopy2 = self;
  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v12 = *MEMORY[0x1E6967540];
  *buf = *MEMORY[0x1E6967538];
  *&buf[8] = v12;
  *&buf[16] = *MEMORY[0x1E6967560];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:3];

  v14 = [connection fp_hasOneOfEntitlements:v13];
  if (v14)
  {

    server = [(FPDXPCServicer *)selfCopy2 server];
    extensionManager = [server extensionManager];
    v17 = [extensionManager domainFromItemID:dCopy reason:0];

    if (v17)
    {
      defaultBackend = [v17 defaultBackend];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        defaultBackend2 = [v17 defaultBackend];
        v21 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __70__FPDXPCServicer_forceLatestVersionOnDiskForItemID_completionHandler___block_invoke_189;
        v36[3] = &unk_1E83C0188;
        v36[4] = selfCopy2;
        v37 = v8;
        [defaultBackend2 forceIngestionForItemID:dCopy request:v21 openFD:1 completionHandler:v36];
      }

      else
      {
        log = selfCopy2->_log;
        v38 = fpfs_adopt_log();
        v28 = fp_current_or_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v34 = FPPopLogSectionForBlock();
          v35 = FPNotSupportedError();
          *buf = 134219010;
          *&buf[4] = v34;
          *&buf[12] = 2112;
          *&buf[14] = selfCopy2;
          *&buf[22] = 2080;
          v45 = "[FPDXPCServicer forceLatestVersionOnDiskForItemID:completionHandler:]";
          v46 = 2112;
          v47 = 0;
          v48 = 2112;
          v49 = v35;
          _os_log_debug_impl(&dword_1CEFC7000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        v29 = FPNotSupportedError();
        (*(v8 + 2))(v8, 0, v29);

        __fp_pop_log();
      }
    }

    else
    {
      v23 = selfCopy2->_log;
      v38 = fpfs_adopt_log();
      v24 = fp_current_or_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v31 = FPPopLogSectionForBlock();
        providerID = [dCopy providerID];
        v33 = FPProviderNotFoundError();
        *buf = 134219010;
        *&buf[4] = v31;
        *&buf[12] = 2112;
        *&buf[14] = selfCopy2;
        *&buf[22] = 2080;
        v45 = "[FPDXPCServicer forceLatestVersionOnDiskForItemID:completionHandler:]";
        v46 = 2112;
        v47 = 0;
        v48 = 2112;
        v49 = v33;
        _os_log_debug_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      providerID2 = [dCopy providerID];
      v26 = FPProviderNotFoundError();
      (*(v8 + 2))(v8, 0, v26);

      __fp_pop_log();
    }
  }

  else
  {
    v22 = FPNotPermittedError();
    v40(v9, v22);
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __70__FPDXPCServicer_forceLatestVersionOnDiskForItemID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer forceLatestVersionOnDiskForItemID:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __70__FPDXPCServicer_forceLatestVersionOnDiskForItemID_completionHandler___block_invoke_189(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 itemVersion];
  v8 = *(*(a1 + 32) + 24);
  v14 = fpfs_adopt_log();
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 40);
    v12 = FPPopLogSectionForBlock();
    v13 = *(a1 + 32);
    *buf = 134219010;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    v19 = 2080;
    v20 = "[FPDXPCServicer forceLatestVersionOnDiskForItemID:completionHandler:]_block_invoke";
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v10 = *MEMORY[0x1E69E9840];
}

- (void)createItemBasedOnTemplate:(id)template fields:(unint64_t)fields urlWrapper:(id)wrapper options:(unint64_t)options bounceOnCollision:(BOOL)collision completionHandler:(id)handler
{
  collisionCopy = collision;
  v52 = *MEMORY[0x1E69E9840];
  templateCopy = template;
  wrapperCopy = wrapper;
  handlerCopy = handler;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v42 = __106__FPDXPCServicer_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_completionHandler___block_invoke;
  v43 = &unk_1E83BE1A8;
  selfCopy = self;
  v15 = handlerCopy;
  v45 = v15;
  v16 = v41;
  selfCopy2 = self;
  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v19 = *MEMORY[0x1E6967540];
  *buf = *MEMORY[0x1E6967538];
  *&buf[8] = v19;
  *&buf[16] = *MEMORY[0x1E6967560];
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:3];

  LOBYTE(handler) = [connection fp_hasOneOfEntitlements:v20];
  if (handler)
  {

    server = [(FPDXPCServicer *)selfCopy2 server];
    extensionManager = [server extensionManager];
    itemID = [templateCopy itemID];
    v24 = [extensionManager domainFromItemID:itemID reason:0];

    if (v24)
    {
      defaultBackend = [v24 defaultBackend];
      v26 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __106__FPDXPCServicer_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_completionHandler___block_invoke_190;
      v36[3] = &unk_1E83BE530;
      v37 = templateCopy;
      v38 = selfCopy2;
      v39 = v15;
      [defaultBackend createItemBasedOnTemplate:v37 fields:fields urlWrapper:wrapperCopy options:options bounceOnCollision:collisionCopy request:v26 completionHandler:v36];
    }

    else
    {
      log = selfCopy2->_log;
      v40 = fpfs_adopt_log();
      v29 = fp_current_or_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v32 = FPPopLogSectionForBlock();
        v33 = FPNotSupportedError();
        *buf = 134219010;
        *&buf[4] = v32;
        *&buf[12] = 2112;
        *&buf[14] = selfCopy2;
        *&buf[22] = 2080;
        v47 = "[FPDXPCServicer createItemBasedOnTemplate:fields:urlWrapper:options:bounceOnCollision:completionHandler:]";
        v48 = 2112;
        v49 = 0;
        v50 = 2112;
        v51 = v33;
        _os_log_debug_impl(&dword_1CEFC7000, v29, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v30 = FPNotSupportedError();
      (*(v15 + 2))(v15, 0, v30);

      __fp_pop_log();
    }
  }

  else
  {
    v27 = FPNotPermittedError();
    v42(v16, v27);
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __106__FPDXPCServicer_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer createItemBasedOnTemplate:fields:urlWrapper:options:bounceOnCollision:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __106__FPDXPCServicer_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_completionHandler___block_invoke_190(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = fp_current_or_default_log();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __106__FPDXPCServicer_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_completionHandler___block_invoke_190_cold_1();
    }

    v9 = *(*(a1 + 40) + 24);
    v19 = fpfs_adopt_log();
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 48);
      v14 = FPPopLogSectionForBlock();
      v15 = *(a1 + 40);
      *buf = 134219010;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      v24 = 2080;
      v25 = "[FPDXPCServicer createItemBasedOnTemplate:fields:urlWrapper:options:bounceOnCollision:completionHandler:]_block_invoke";
      v26 = 2112;
      v27 = 0;
      v28 = 2112;
      v29 = v6;
      _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __106__FPDXPCServicer_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_completionHandler___block_invoke_190_cold_2();
    }

    v11 = *(*(a1 + 40) + 24);
    v19 = fpfs_adopt_log();
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 48);
      v17 = FPPopLogSectionForBlock();
      v18 = *(a1 + 40);
      *buf = 134219010;
      v21 = v17;
      v22 = 2112;
      v23 = v18;
      v24 = 2080;
      v25 = "[FPDXPCServicer createItemBasedOnTemplate:fields:urlWrapper:options:bounceOnCollision:completionHandler:]_block_invoke";
      v26 = 2112;
      v27 = v5;
      v28 = 2112;
      v29 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log();

  v12 = *MEMORY[0x1E69E9840];
}

- (void)bookmarkableStringFromDocumentURL:(id)l options:(int64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  connection = [(FPDXPCServicer *)self connection];
  fp_bundleIdentifier = [connection fp_bundleIdentifier];
  [(FPDXPCServicer *)self extendBookmarkForFileURL:lCopy toConsumerID:fp_bundleIdentifier options:options completionHandler:handlerCopy];
}

- (void)extendBookmarkForFileURL:(id)l toConsumerID:(id)d options:(int64_t)options completionHandler:(id)handler
{
  optionsCopy = options;
  v61[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  handlerCopy = handler;
  connection = [(FPDXPCServicer *)self connection];
  v13 = [FPDAccessRight alloc];
  v14 = *MEMORY[0x1E6967580];
  v15 = *MEMORY[0x1E6967540];
  v61[0] = *MEMORY[0x1E6967580];
  v61[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];
  v19 = [(FPDAccessRight *)v13 initWithURL:lCopy entitlements:v16 connection:connection manager:extensionManager];

  LODWORD(server) = [(FPDAccessRight *)v19 level]== 0;
  v20 = fp_current_or_default_log();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
  if (server)
  {
    if (v21)
    {
      processIdentifier = [connection processIdentifier];
      [connection processIdentifier];
      v40 = FPExecutableNameForProcessIdentifier();
      fp_shortDescription = [lCopy fp_shortDescription];
      *buf = 67109890;
      *v58 = processIdentifier;
      *&v58[4] = 2112;
      *&v58[6] = v40;
      *&v58[14] = 2112;
      *&v58[16] = v14;
      *&v58[24] = 2112;
      *&v58[26] = fp_shortDescription;
      _os_log_debug_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] PID %d (%@) has neither sandbox access nor %@ entitlement to get a bookmark for %@", buf, 0x26u);
    }

    log = self->_log;
    v56 = fpfs_adopt_log();
    v28 = fp_current_or_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v42 = FPPopLogSectionForBlock();
      v43 = FPNotPermittedError();
      *buf = 134219010;
      *v58 = v42;
      *&v58[8] = 2112;
      *&v58[10] = self;
      *&v58[18] = 2080;
      *&v58[20] = "[FPDXPCServicer extendBookmarkForFileURL:toConsumerID:options:completionHandler:]";
      *&v58[28] = 2112;
      *&v58[30] = 0;
      v59 = 2112;
      v60 = v43;
      _os_log_debug_impl(&dword_1CEFC7000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    v29 = FPNotPermittedError();
    handlerCopy[2](handlerCopy, 0, v29);

    __fp_pop_log();
  }

  else
  {
    if (v21)
    {
      [FPDXPCServicer extendBookmarkForFileURL:lCopy toConsumerID:? options:? completionHandler:?];
    }

    domain = [(FPDAccessRight *)v19 domain];
    v23 = domain;
    if (domain)
    {
      provider = [domain provider];
      identifier = [provider identifier];
      v26 = [identifier isEqualToString:@"com.apple.FileProvider.LocalStorage"];
    }

    else
    {
      v26 = 1;
    }

    if ((FPFeatureFlagResolverIsEnabled() & v26) == 1 && [MEMORY[0x1E699C718] canResolveURL:lCopy])
    {
      v30 = objc_opt_new();
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __82__FPDXPCServicer_extendBookmarkForFileURL_toConsumerID_options_completionHandler___block_invoke;
      v51[3] = &unk_1E83C0220;
      v52 = dCopy;
      v53 = lCopy;
      selfCopy = self;
      v55 = handlerCopy;
      [v30 itemIDForURL:v53 allowReadOnlyLocations:(optionsCopy & 2) == 0 reply:v51];
    }

    else if (v23)
    {
      defaultBackend = [v23 defaultBackend];
      v32 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __82__FPDXPCServicer_extendBookmarkForFileURL_toConsumerID_options_completionHandler___block_invoke_194;
      v47[3] = &unk_1E83C0248;
      v47[4] = self;
      v50 = handlerCopy;
      v48 = lCopy;
      v49 = dCopy;
      [defaultBackend itemIDForURL:v48 requireProviderItemID:0 request:v32 completionHandler:v47];
    }

    else
    {
      v33 = fp_current_or_default_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        fp_shortDescription2 = [lCopy fp_shortDescription];
        *buf = 138412290;
        *v58 = fp_shortDescription2;
        _os_log_impl(&dword_1CEFC7000, v33, OS_LOG_TYPE_INFO, "[INFO] Could not find the domain for %@", buf, 0xCu);
      }

      v35 = self->_log;
      v56 = fpfs_adopt_log();
      v36 = fp_current_or_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v44 = FPPopLogSectionForBlock();
        v45 = FPProviderNotFoundErrorForURL();
        *buf = 134219010;
        *v58 = v44;
        *&v58[8] = 2112;
        *&v58[10] = self;
        *&v58[18] = 2080;
        *&v58[20] = "[FPDXPCServicer extendBookmarkForFileURL:toConsumerID:options:completionHandler:]";
        *&v58[28] = 2112;
        *&v58[30] = 0;
        v59 = 2112;
        v60 = v45;
        _os_log_debug_impl(&dword_1CEFC7000, v36, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v37 = FPProviderNotFoundErrorForURL();
      handlerCopy[2](handlerCopy, 0, v37);

      __fp_pop_log();
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

void __82__FPDXPCServicer_extendBookmarkForFileURL_toConsumerID_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x1E69673A0]);
  v8 = [v7 initWithProviderID:@"com.apple.FileProvider.LocalStorage" domainIdentifier:*MEMORY[0x1E6967178] itemIdentifier:v5];
  v9 = +[FPDAccessControlStore sharedStore];
  v10 = [v9 bookmarkForItemID:v8 consumerIdentifier:*(a1 + 32)];

  v11 = fp_resolver_log();
  v22 = fpfs_adopt_log();

  v12 = fp_current_or_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v16 = [*(a1 + 40) fp_shortDescription];
    v17 = [v6 fp_prettyDescription];
    *buf = 138412802;
    v24 = v10;
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = v17;
    _os_log_debug_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] Generated bookmarkable string “%@” from %@. Error: %@", buf, 0x20u);
  }

  v13 = *(*(a1 + 48) + 24);
  v21 = fpfs_adopt_log();
  v14 = fp_current_or_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 56);
    v19 = FPPopLogSectionForBlock();
    v20 = *(a1 + 48);
    *buf = 134219010;
    v24 = v19;
    v25 = 2112;
    v26 = v20;
    v27 = 2080;
    v28 = "[FPDXPCServicer extendBookmarkForFileURL:toConsumerID:options:completionHandler:]_block_invoke";
    v29 = 2112;
    v30 = v10;
    v31 = 2112;
    v32 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 56) + 16))();
  __fp_pop_log();

  __fp_pop_log();
  v15 = *MEMORY[0x1E69E9840];
}

void __82__FPDXPCServicer_extendBookmarkForFileURL_toConsumerID_options_completionHandler___block_invoke_194(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 32) + 24);
    v29 = fpfs_adopt_log();
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a1 + 56);
      v23 = FPPopLogSectionForBlock();
      v24 = *(a1 + 32);
      v25 = FPPluginOperationFailedError();
      *buf = 134219010;
      v33 = v23;
      v34 = 2112;
      v35 = v24;
      v36 = 2080;
      v37 = "[FPDXPCServicer extendBookmarkForFileURL:toConsumerID:options:completionHandler:]_block_invoke";
      v38 = 2112;
      v39 = 0;
      v40 = 2112;
      v41 = v25;
      _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    v9 = *(a1 + 56);
    v10 = FPPluginOperationFailedError();
    (*(v9 + 16))(v9, 0, v10);

    __fp_pop_log();
  }

  else if (v5)
  {
    v11 = +[FPDAccessControlStore sharedStore];
    v12 = [v11 bookmarkForItemID:v5 consumerIdentifier:*(a1 + 48)];

    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __82__FPDXPCServicer_extendBookmarkForFileURL_toConsumerID_options_completionHandler___block_invoke_194_cold_1();
    }

    v14 = *(*(a1 + 32) + 24);
    v30 = fpfs_adopt_log();
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v26 = *(a1 + 56);
      v27 = FPPopLogSectionForBlock();
      v28 = *(a1 + 32);
      *buf = 134219010;
      v33 = v27;
      v34 = 2112;
      v35 = v28;
      v36 = 2080;
      v37 = "[FPDXPCServicer extendBookmarkForFileURL:toConsumerID:options:completionHandler:]_block_invoke";
      v38 = 2112;
      v39 = v12;
      v40 = 2112;
      v41 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 56) + 16))();
    __fp_pop_log();
  }

  else
  {
    v16 = fp_current_or_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [*(a1 + 40) fp_shortDescription];
      *buf = 138412290;
      v33 = v17;
      _os_log_impl(&dword_1CEFC7000, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] Could not get Item ID for %@.", buf, 0xCu);
    }

    v18 = *(*(a1 + 32) + 24);
    v31 = fpfs_adopt_log();
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 56);
      FPPopLogSectionForBlock();
      __82__FPDXPCServicer_extendBookmarkForFileURL_toConsumerID_options_completionHandler___block_invoke_194_cold_2((a1 + 32));
    }

    (*(*(a1 + 56) + 16))();
    __fp_pop_log();
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)fetchDomainServicerForProviderDomainID:(id)d handler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v17 = 0;
  v8 = [(FPDXPCServicer *)self createDomainServicerForProviderDomainID:dCopy provider:0 enumerateEntitlementRequired:1 error:&v17];
  v9 = v17;
  log = self->_log;
  v16 = fpfs_adopt_log();
  v11 = fp_current_or_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = FPPopLogSectionForBlock();
    providerDomainID = [v8 providerDomainID];
    *buf = 134219266;
    v19 = v14;
    v20 = 2112;
    selfCopy = self;
    v22 = 2080;
    v23 = "[FPDXPCServicer fetchDomainServicerForProviderDomainID:handler:]";
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = providerDomainID;
    v28 = 2112;
    v29 = v9;
    _os_log_debug_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  providerDomainID2 = [v8 providerDomainID];
  handlerCopy[2](handlerCopy, v8, providerDomainID2, v9);

  __fp_pop_log();
  v13 = *MEMORY[0x1E69E9840];
}

- (void)fetchAccessServicer:(id)servicer
{
  v38[1] = *MEMORY[0x1E69E9840];
  servicerCopy = servicer;
  v38[0] = *MEMORY[0x1E6967540];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v24 = __38__FPDXPCServicer_fetchAccessServicer___block_invoke;
  v25 = &unk_1E83BE1A8;
  selfCopy = self;
  v6 = servicerCopy;
  v27 = v6;
  v7 = v5;
  v8 = v23;
  connection = [(FPDXPCServicer *)self connection];
  v10 = [connection fp_hasOneOfEntitlements:v7];

  if (v10)
  {

    log = self->_log;
    v22 = fpfs_adopt_log();
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v18 = FPPopLogSectionForBlock();
      v19 = [FPDAccessControlServicer alloc];
      v20 = +[FPDAccessControlStore sharedStore];
      v21 = [(FPDAccessControlServicer *)v19 initWithAccessStore:v20];
      *buf = 134219010;
      v29 = v18;
      v30 = 2112;
      selfCopy2 = self;
      v32 = 2080;
      v33 = "[FPDXPCServicer fetchAccessServicer:]";
      v34 = 2112;
      v35 = v21;
      v36 = 2112;
      v37 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    v13 = [FPDAccessControlServicer alloc];
    v14 = +[FPDAccessControlStore sharedStore];
    v15 = [(FPDAccessControlServicer *)v13 initWithAccessStore:v14];
    (*(v6 + 2))(v6, v15, 0);

    __fp_pop_log();
  }

  else
  {
    v16 = FPNotPermittedError();
    v24(v8, v16);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __38__FPDXPCServicer_fetchAccessServicer___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer fetchAccessServicer:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)itemForURL:(id)l options:(unint64_t)options completionHandler:(id)handler
{
  v38[7] = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v34 = __55__FPDXPCServicer_itemForURL_options_completionHandler___block_invoke;
  v35 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v37 = v10;
  selfCopy2 = self;
  v12 = lCopy;
  v13 = v33;
  if (!v12)
  {
    v24 = FPInvalidParameterError();
LABEL_14:
    v28 = v24;
    v34(v13, v24);

    goto LABEL_15;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v15 = [connection fp_hasSandboxAccessToFile:v12 accessType:*MEMORY[0x1E6966DA8] logLevel:0];

  if ((v15 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    v38[0] = *MEMORY[0x1E6967560];
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
    v18 = [connection2 fp_hasOneOfEntitlements:v17 nonSandboxedAccess:0 logLevel:0];

    if ((v18 & 1) == 0)
    {
      v24 = FPNotPermittedError();
      goto LABEL_14;
    }
  }

  server = [(FPDXPCServicer *)selfCopy2 server];
  extensionManager = [server extensionManager];
  v21 = [extensionManager domainForURL:v12 reason:0];

  if (v21)
  {
    defaultBackend = [v21 defaultBackend];
    v23 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __55__FPDXPCServicer_itemForURL_options_completionHandler___block_invoke_197;
    v30[3] = &unk_1E83C0188;
    v30[4] = selfCopy2;
    v31 = v10;
    [defaultBackend itemForURL:v12 options:options request:v23 completionHandler:v30];
  }

  else
  {
    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer itemForURL:v12 options:? completionHandler:?];
    }

    log = selfCopy2->_log;
    v32 = fpfs_adopt_log();
    v27 = fp_current_or_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer itemForURL:options:completionHandler:];
    }

    (*(v10 + 2))(v10, 0, 0);
    __fp_pop_log();
  }

LABEL_15:
  v29 = *MEMORY[0x1E69E9840];
}

void __55__FPDXPCServicer_itemForURL_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer itemForURL:options:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __55__FPDXPCServicer_itemForURL_options_completionHandler___block_invoke_197(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v13 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    v11 = FPPopLogSectionForBlock();
    v12 = *(a1 + 32);
    *buf = 134219010;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2080;
    v19 = "[FPDXPCServicer itemForURL:options:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)providerItemIDForURL:(id)l completionHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];
  v10 = [extensionManager domainForURL:lCopy reason:0];

  if (v10)
  {
    provider = [v10 provider];
    identifier = [provider identifier];
    v27 = 0;
    v13 = [(FPDXPCServicer *)self providerForIdentifier:identifier enumerateEntitlementRequired:1 error:&v27];
    v14 = v27;

    if (v13)
    {
      defaultBackend = [v10 defaultBackend];
      v16 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __57__FPDXPCServicer_providerItemIDForURL_completionHandler___block_invoke;
      v25[3] = &unk_1E83BE6C0;
      v25[4] = self;
      v26 = handlerCopy;
      [defaultBackend itemIDForURL:lCopy requireProviderItemID:1 request:v16 completionHandler:v25];
    }

    else
    {
      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer providerItemIDForURL:v10 completionHandler:v20];
      }

      log = self->_log;
      v28 = fpfs_adopt_log();
      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v24 = FPPopLogSectionForBlock();
        *buf = 134219010;
        v30 = v24;
        v31 = 2112;
        selfCopy = self;
        v33 = 2080;
        v34 = "[FPDXPCServicer providerItemIDForURL:completionHandler:]";
        v35 = 2112;
        v36 = 0;
        v37 = 2112;
        v38 = v14;
        _os_log_debug_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      (*(handlerCopy + 2))(handlerCopy, 0, v14);
      __fp_pop_log();
    }
  }

  else
  {
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer providerItemIDForURL:lCopy completionHandler:?];
    }

    v18 = self->_log;
    v28 = fpfs_adopt_log();
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer providerItemIDForURL:completionHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
    __fp_pop_log();
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __57__FPDXPCServicer_providerItemIDForURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v13 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    v11 = FPPopLogSectionForBlock();
    v12 = *(a1 + 32);
    *buf = 134219010;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2080;
    v19 = "[FPDXPCServicer providerItemIDForURL:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)fetchFSItemsForItemIdentifiers:(id)identifiers providerIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier materializingIfNeeded:(BOOL)needed completionHandler:(id)handler
{
  neededCopy = needed;
  v44 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  domainIdentifierCopy = domainIdentifier;
  handlerCopy = handler;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v37 = __125__FPDXPCServicer_fetchFSItemsForItemIdentifiers_providerIdentifier_domainIdentifier_materializingIfNeeded_completionHandler___block_invoke;
  v38 = &unk_1E83BE1A8;
  selfCopy = self;
  v14 = handlerCopy;
  v40 = v14;
  selfCopy2 = self;
  v16 = v36;
  v41 = 0;
  v17 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:identifierCopy enumerateEntitlementRequired:1 error:&v41];
  v18 = v41;
  if (!v17)
  {
    v37(v16, v18);
LABEL_7:
    v24 = 0;
    goto LABEL_9;
  }

  if ([v17 invalidated])
  {
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v17;
      _os_log_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
    }

    v20 = MEMORY[0x1E696AEC0];
    identifier = [v17 identifier];
    v22 = [v20 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

    v23 = FPProviderNotRegistered();
    v37(v16, v23);

    goto LABEL_7;
  }

  v24 = v17;
LABEL_9:

  if (v24)
  {
    v25 = [v24 domainForIdentifier:domainIdentifierCopy reason:0];
    if (!v25)
    {
      v26 = fp_current_or_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer fetchFSItemsForItemIdentifiers:providerIdentifier:domainIdentifier:materializingIfNeeded:completionHandler:];
      }

      log = selfCopy2->_log;
      v41 = fpfs_adopt_log();
      v28 = fp_current_or_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        FPPopLogSectionForBlock();
        [FPDXPCServicer fetchFSItemsForItemIdentifiers:providerIdentifier:domainIdentifier:materializingIfNeeded:completionHandler:];
      }

      (*(v14 + 2))(v14, 0, 0);
      __fp_pop_log();
    }

    defaultBackend = [v25 defaultBackend];
    v30 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __125__FPDXPCServicer_fetchFSItemsForItemIdentifiers_providerIdentifier_domainIdentifier_materializingIfNeeded_completionHandler___block_invoke_199;
    v34[3] = &unk_1E83BE400;
    v34[4] = selfCopy2;
    v35 = v14;
    [defaultBackend fetchFSItemsForItemIdentifiers:identifiersCopy materializingIfNeeded:neededCopy request:v30 completionHandler:v34];
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __125__FPDXPCServicer_fetchFSItemsForItemIdentifiers_providerIdentifier_domainIdentifier_materializingIfNeeded_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer fetchFSItemsForItemIdentifiers:providerIdentifier:domainIdentifier:materializingIfNeeded:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __125__FPDXPCServicer_fetchFSItemsForItemIdentifiers_providerIdentifier_domainIdentifier_materializingIfNeeded_completionHandler___block_invoke_199(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v13 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    v11 = FPPopLogSectionForBlock();
    v12 = *(a1 + 32);
    *buf = 134219010;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2080;
    v19 = "[FPDXPCServicer fetchFSItemsForItemIdentifiers:providerIdentifier:domainIdentifier:materializingIfNeeded:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)trashItemAtURL:(id)l completionHandler:(id)handler
{
  v46 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v33 = __51__FPDXPCServicer_trashItemAtURL_completionHandler___block_invoke;
  v34 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v36 = v8;
  selfCopy2 = self;
  v10 = lCopy;
  v11 = v32;
  if (!v10)
  {
    v22 = FPInvalidParameterError();
LABEL_14:
    v26 = v22;
    v33(v11, v22);

    goto LABEL_15;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v13 = [connection fp_hasSandboxAccessToFile:v10 logLevel:0];

  if ((v13 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    *buf = *MEMORY[0x1E6967560];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v16 = [connection2 fp_hasOneOfEntitlements:v15 nonSandboxedAccess:0 logLevel:0];

    if ((v16 & 1) == 0)
    {
      v22 = FPNotPermittedWriteError();
      goto LABEL_14;
    }
  }

  server = [(FPDXPCServicer *)selfCopy2 server];
  extensionManager = [server extensionManager];
  v19 = [extensionManager domainForURL:v10 reason:0];

  if (v19)
  {
    v20 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
    defaultBackend = [v19 defaultBackend];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __51__FPDXPCServicer_trashItemAtURL_completionHandler___block_invoke_201;
    v29[3] = &unk_1E83C0270;
    v29[4] = selfCopy2;
    v30 = v8;
    [defaultBackend trashItemAtURL:v10 request:v20 completionHandler:v29];
  }

  else
  {
    v23 = fp_current_or_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer trashItemAtURL:v10 completionHandler:?];
    }

    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
    log = selfCopy2->_log;
    v31 = fpfs_adopt_log();
    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v28 = FPPopLogSectionForBlock();
      *buf = 134219010;
      *&buf[4] = v28;
      v38 = 2112;
      v39 = selfCopy2;
      v40 = 2080;
      v41 = "[FPDXPCServicer trashItemAtURL:completionHandler:]";
      v42 = 2112;
      v43 = 0;
      v44 = 2112;
      v45 = v20;
      _os_log_debug_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(v8 + 2))(v8, 0, v20);
    __fp_pop_log();
  }

LABEL_15:
  v27 = *MEMORY[0x1E69E9840];
}

void __51__FPDXPCServicer_trashItemAtURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer trashItemAtURL:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __51__FPDXPCServicer_trashItemAtURL_completionHandler___block_invoke_201(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v13 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    v11 = FPPopLogSectionForBlock();
    v12 = *(a1 + 32);
    *buf = 134219010;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2080;
    v19 = "[FPDXPCServicer trashItemAtURL:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)putBackURLForTrashedItemAtURL:(id)l completionHandler:(id)handler
{
  v49 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v35 = __66__FPDXPCServicer_putBackURLForTrashedItemAtURL_completionHandler___block_invoke;
  v36 = &unk_1E83BFA20;
  selfCopy = self;
  v38 = lCopy;
  v8 = handlerCopy;
  v39 = v8;
  selfCopy2 = self;
  v10 = v38;
  v11 = v34;
  if (!v10)
  {
    v22 = FPInvalidParameterError();
LABEL_14:
    v27 = v22;
    v35(v11, v22);

    goto LABEL_15;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v13 = [connection fp_hasSandboxAccessToFile:v10 accessType:*MEMORY[0x1E6966DA8] logLevel:0];

  if ((v13 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    *buf = *MEMORY[0x1E6967560];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v16 = [connection2 fp_hasOneOfEntitlements:v15 nonSandboxedAccess:0 logLevel:0];

    if ((v16 & 1) == 0)
    {
      v22 = FPNotPermittedError();
      goto LABEL_14;
    }
  }

  server = [(FPDXPCServicer *)selfCopy2 server];
  extensionManager = [server extensionManager];
  v19 = [extensionManager domainForURL:v10 reason:0];

  if (v19)
  {
    v20 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
    defaultBackend = [v19 defaultBackend];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __66__FPDXPCServicer_putBackURLForTrashedItemAtURL_completionHandler___block_invoke_203;
    v31[3] = &unk_1E83C0270;
    v31[4] = selfCopy2;
    v32 = v8;
    [defaultBackend putBackURLForTrashedItemAtURL:v10 request:v20 completionHandler:v31];
  }

  else
  {
    v23 = fp_current_or_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [FPDXPCServicer putBackURLForTrashedItemAtURL:v10 completionHandler:?];
    }

    log = selfCopy2->_log;
    v33 = fpfs_adopt_log();
    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v29 = FPPopLogSectionForBlock();
      v30 = FPProviderNotFoundErrorForURL();
      *buf = 134219010;
      *&buf[4] = v29;
      v41 = 2112;
      v42 = selfCopy2;
      v43 = 2080;
      v44 = "[FPDXPCServicer putBackURLForTrashedItemAtURL:completionHandler:]";
      v45 = 2112;
      v46 = 0;
      v47 = 2112;
      v48 = v30;
      _os_log_debug_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    v26 = FPProviderNotFoundErrorForURL();
    (*(v8 + 2))(v8, 0, v26);

    __fp_pop_log();
  }

LABEL_15:
  v28 = *MEMORY[0x1E69E9840];
}

void __66__FPDXPCServicer_putBackURLForTrashedItemAtURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __66__FPDXPCServicer_putBackURLForTrashedItemAtURL_completionHandler___block_invoke_cold_1(a1);
  }

  v5 = *(*(a1 + 32) + 24);
  v11 = fpfs_adopt_log();
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 48);
    v9 = FPPopLogSectionForBlock();
    v10 = *(a1 + 32);
    *buf = 134219010;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2080;
    v17 = "[FPDXPCServicer putBackURLForTrashedItemAtURL:completionHandler:]_block_invoke";
    v18 = 2112;
    v19 = 0;
    v20 = 2112;
    v21 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log();

  v7 = *MEMORY[0x1E69E9840];
}

void __66__FPDXPCServicer_putBackURLForTrashedItemAtURL_completionHandler___block_invoke_203(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v13 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    v11 = FPPopLogSectionForBlock();
    v12 = *(a1 + 32);
    *buf = 134219010;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2080;
    v19 = "[FPDXPCServicer putBackURLForTrashedItemAtURL:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@ %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setPutBackInfoOnItemAtURL:(id)l completionHandler:(id)handler
{
  v46 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v35 = __62__FPDXPCServicer_setPutBackInfoOnItemAtURL_completionHandler___block_invoke;
  v36 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v38 = v8;
  selfCopy2 = self;
  v10 = lCopy;
  v11 = v34;
  if (!v10)
  {
    v22 = FPInvalidParameterError();
LABEL_14:
    v27 = v22;
    v35(v11, v22);

    goto LABEL_15;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v13 = [connection fp_hasSandboxAccessToFile:v10 logLevel:0];

  if ((v13 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    *buf = *MEMORY[0x1E6967560];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v16 = [connection2 fp_hasOneOfEntitlements:v15 nonSandboxedAccess:0 logLevel:0];

    if ((v16 & 1) == 0)
    {
      v22 = FPNotPermittedWriteError();
      goto LABEL_14;
    }
  }

  server = [(FPDXPCServicer *)selfCopy2 server];
  extensionManager = [server extensionManager];
  v19 = [extensionManager domainForURL:v10 reason:0];

  if (v19)
  {
    v20 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
    defaultBackend = [v19 defaultBackend];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __62__FPDXPCServicer_setPutBackInfoOnItemAtURL_completionHandler___block_invoke_204;
    v31[3] = &unk_1E83BE1A8;
    v31[4] = selfCopy2;
    v32 = v8;
    [defaultBackend setPutBackInfoOnItemAtURL:v10 completionHandler:v31];
  }

  else
  {
    v23 = fp_current_or_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [FPDXPCServicer setPutBackInfoOnItemAtURL:v10 completionHandler:?];
    }

    log = selfCopy2->_log;
    v33 = fpfs_adopt_log();
    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v29 = FPPopLogSectionForBlock();
      v30 = FPProviderNotFoundErrorForURL();
      *buf = 134218754;
      *&buf[4] = v29;
      v40 = 2112;
      v41 = selfCopy2;
      v42 = 2080;
      v43 = "[FPDXPCServicer setPutBackInfoOnItemAtURL:completionHandler:]";
      v44 = 2112;
      v45 = v30;
      _os_log_debug_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v26 = FPProviderNotFoundErrorForURL();
    (*(v8 + 2))(v8, v26);

    __fp_pop_log();
  }

LABEL_15:
  v28 = *MEMORY[0x1E69E9840];
}

void __62__FPDXPCServicer_setPutBackInfoOnItemAtURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer setPutBackInfoOnItemAtURL:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __62__FPDXPCServicer_setPutBackInfoOnItemAtURL_completionHandler___block_invoke_204(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer setPutBackInfoOnItemAtURL:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchProviderForShareURL:(id)l fallbackIdentifier:(id)identifier completionHandler:(id)handler
{
  v30[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = *MEMORY[0x1E6967558];
  v30[0] = *MEMORY[0x1E69675C8];
  v30[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v26 = __80__FPDXPCServicer_fetchProviderForShareURL_fallbackIdentifier_completionHandler___block_invoke;
  v27 = &unk_1E83BE1A8;
  selfCopy = self;
  v13 = handlerCopy;
  v29 = v13;
  v14 = v12;
  v15 = v25;
  connection = [(FPDXPCServicer *)self connection];
  v17 = [connection fp_hasOneOfEntitlements:v14];

  if (v17)
  {

    v18 = MEMORY[0x1E69635C0];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __80__FPDXPCServicer_fetchProviderForShareURL_fallbackIdentifier_completionHandler___block_invoke_206;
    v22[3] = &unk_1E83C0298;
    v22[4] = self;
    v19 = &v24;
    v24 = v13;
    v23 = identifierCopy;
    [v18 getAppLinksWithURL:lCopy completionHandler:v22];
    v14 = v23;
  }

  else
  {
    v19 = &v29;
    v20 = FPNotPermittedError();
    v26(v15, v20);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __80__FPDXPCServicer_fetchProviderForShareURL_fallbackIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer fetchProviderForShareURL:fallbackIdentifier:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __80__FPDXPCServicer_fetchProviderForShareURL_fallbackIdentifier_completionHandler___block_invoke_206(uint64_t a1, void *a2, void *a3)
{
  v79 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v57 = a3;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v62 objects:v78 count:16];
  if (v6)
  {
    v7 = *v63;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v63 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v62 + 1) + 8 * i);
        v10 = fp_current_or_default_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          __80__FPDXPCServicer_fetchProviderForShareURL_fallbackIdentifier_completionHandler___block_invoke_206_cold_1(v76, v9, &v77, v10);
        }

        v11 = [*(a1 + 32) server];
        v12 = [v11 extensionManager];
        v13 = [v9 targetApplicationRecord];
        v14 = [v13 bundleIdentifier];
        v15 = [v12 defaultProviderWithTopLevelBundleIdentifier:v14];

        if (v15)
        {
          v22 = fp_current_or_default_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            __80__FPDXPCServicer_fetchProviderForShareURL_fallbackIdentifier_completionHandler___block_invoke_206_cold_2();
          }

          v23 = *(*(a1 + 32) + 24);
          v60 = fpfs_adopt_log();
          v24 = fp_current_or_default_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            v40 = *(a1 + 48);
            v41 = FPPopLogSectionForBlock();
            v42 = *(a1 + 32);
            v43 = [v15 identifier];
            *buf = 134219010;
            v67 = v41;
            v68 = 2112;
            v69 = v42;
            v70 = 2080;
            v71 = "[FPDXPCServicer fetchProviderForShareURL:fallbackIdentifier:completionHandler:]_block_invoke";
            v72 = 2112;
            v73 = v43;
            v74 = 2112;
            v75 = 0;
            _os_log_debug_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
          }

          v25 = *(a1 + 48);
          v26 = [v15 identifier];
          (*(v25 + 16))(v25, v26, 0);

          __fp_pop_log();
          goto LABEL_34;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v62 objects:v78 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (*(a1 + 40))
  {
    v16 = [*(a1 + 32) server];
    v17 = [v16 extensionManager];
    v18 = [v17 providerWithIdentifier:*(a1 + 40) reason:0];

    if (v18)
    {
      v19 = fp_current_or_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        __80__FPDXPCServicer_fetchProviderForShareURL_fallbackIdentifier_completionHandler___block_invoke_206_cold_3();
      }

      v20 = *(*(a1 + 32) + 24);
      v59 = fpfs_adopt_log();
      v21 = fp_current_or_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v49 = *(a1 + 48);
        v50 = FPPopLogSectionForBlock();
        v51 = *(a1 + 32);
        v52 = [v18 identifier];
        *buf = 134219010;
        v67 = v50;
        v68 = 2112;
        v69 = v51;
        v70 = 2080;
        v71 = "[FPDXPCServicer fetchProviderForShareURL:fallbackIdentifier:completionHandler:]_block_invoke";
        v72 = 2112;
        v73 = v52;
        v74 = 2112;
        v75 = 0;
        _os_log_debug_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

LABEL_28:

      v31 = *(a1 + 48);
      v32 = [v18 identifier];
      (*(v31 + 16))(v31, v32, 0);

      __fp_pop_log();
      goto LABEL_34;
    }

    v27 = [*(a1 + 32) server];
    v28 = [v27 extensionManager];
    v18 = [v28 defaultProviderWithTopLevelBundleIdentifier:*(a1 + 40)];

    if (v18)
    {
      v29 = fp_current_or_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        __80__FPDXPCServicer_fetchProviderForShareURL_fallbackIdentifier_completionHandler___block_invoke_206_cold_4();
      }

      v30 = *(*(a1 + 32) + 24);
      v59 = fpfs_adopt_log();
      v21 = fp_current_or_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v53 = *(a1 + 48);
        v54 = FPPopLogSectionForBlock();
        v55 = *(a1 + 32);
        v56 = [v18 identifier];
        *buf = 134219010;
        v67 = v54;
        v68 = 2112;
        v69 = v55;
        v70 = 2080;
        v71 = "[FPDXPCServicer fetchProviderForShareURL:fallbackIdentifier:completionHandler:]_block_invoke";
        v72 = 2112;
        v73 = v56;
        v74 = 2112;
        v75 = 0;
        _os_log_debug_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      goto LABEL_28;
    }
  }

  v33 = fp_current_or_default_log();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    __80__FPDXPCServicer_fetchProviderForShareURL_fallbackIdentifier_completionHandler___block_invoke_206_cold_5();
  }

  v34 = *(*(a1 + 32) + 24);
  v61 = fpfs_adopt_log();
  v35 = fp_current_or_default_log();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    v44 = *(a1 + 48);
    v45 = FPPopLogSectionForBlock();
    v47 = *(a1 + 32);
    v46 = *(a1 + 40);
    v48 = FPProviderNotFoundError();
    *buf = 134219010;
    v67 = v45;
    v68 = 2112;
    v69 = v47;
    v70 = 2080;
    v71 = "[FPDXPCServicer fetchProviderForShareURL:fallbackIdentifier:completionHandler:]_block_invoke";
    v72 = 2112;
    v73 = 0;
    v74 = 2112;
    v75 = v48;
    _os_log_debug_impl(&dword_1CEFC7000, v35, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  v36 = *(a1 + 40);
  v37 = *(a1 + 48);
  v38 = FPProviderNotFoundError();
  (*(v37 + 16))(v37, 0, v38);

  __fp_pop_log();
LABEL_34:

  v39 = *MEMORY[0x1E69E9840];
}

- (void)updateLastUsedDate:(id)date completionHandler:(id)handler
{
  v40[7] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  handlerCopy = handler;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v35 = __55__FPDXPCServicer_updateLastUsedDate_completionHandler___block_invoke;
  v36 = &unk_1E83BFA20;
  selfCopy = self;
  v38 = dateCopy;
  v8 = handlerCopy;
  v39 = v8;
  selfCopy2 = self;
  v10 = v38;
  v11 = v34;
  if (!v10)
  {
    v23 = FPInvalidParameterError();
LABEL_14:
    v27 = v23;
    v35(v11, v23);

    goto LABEL_15;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v13 = [connection fp_hasSandboxAccessToFile:v10 logLevel:0];

  if ((v13 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    v40[0] = *MEMORY[0x1E6967560];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    v16 = [connection2 fp_hasOneOfEntitlements:v15 nonSandboxedAccess:0 logLevel:0];

    if ((v16 & 1) == 0)
    {
      v23 = FPNotPermittedWriteError();
      goto LABEL_14;
    }
  }

  server = [(FPDXPCServicer *)selfCopy2 server];
  extensionManager = [server extensionManager];
  v19 = [extensionManager domainForURL:v10 reason:0];

  if (v19)
  {
    v20 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
    defaultBackend = [v19 defaultBackend];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __55__FPDXPCServicer_updateLastUsedDate_completionHandler___block_invoke_208;
    v30[3] = &unk_1E83C02C0;
    v30[4] = selfCopy2;
    v33 = v8;
    v31 = v19;
    v32 = v20;
    v22 = v20;
    [defaultBackend itemForURL:v10 options:0 request:v22 completionHandler:v30];
  }

  else
  {
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer updateLastUsedDate:v10 completionHandler:?];
    }

    log = selfCopy2->_log;
    v29 = fpfs_adopt_log();
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer updateLastUsedDate:completionHandler:];
    }

    (*(v8 + 2))(v8, 0);
    __fp_pop_log();
  }

LABEL_15:
  v28 = *MEMORY[0x1E69E9840];
}

void __55__FPDXPCServicer_updateLastUsedDate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __55__FPDXPCServicer_updateLastUsedDate_completionHandler___block_invoke_cold_1(a1);
  }

  v5 = *(*(a1 + 32) + 24);
  v11 = fpfs_adopt_log();
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 48);
    v9 = FPPopLogSectionForBlock();
    v10 = *(a1 + 32);
    *buf = 134218754;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2080;
    v17 = "[FPDXPCServicer updateLastUsedDate:completionHandler:]_block_invoke";
    v18 = 2112;
    v19 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log();

  v7 = *MEMORY[0x1E69E9840];
}

void __55__FPDXPCServicer_updateLastUsedDate_completionHandler___block_invoke_208(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [MEMORY[0x1E695DF00] date];
    [v5 setLastUsedDate:v7];

    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __55__FPDXPCServicer_updateLastUsedDate_completionHandler___block_invoke_210;
    v16[3] = &unk_1E83C0188;
    v16[4] = *(a1 + 32);
    v17 = *(a1 + 56);
    [v8 daemonSideItemChange:v5 changedFields:8 request:v9 completionHandler:v16];
  }

  else
  {
    v10 = *(*(a1 + 32) + 24);
    v18 = fpfs_adopt_log();
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 56);
      v14 = FPPopLogSectionForBlock();
      v15 = *(a1 + 32);
      *buf = 134218754;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      v23 = 2080;
      v24 = "[FPDXPCServicer updateLastUsedDate:completionHandler:]_block_invoke";
      v25 = 2112;
      v26 = v6;
      _os_log_debug_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    (*(*(a1 + 56) + 16))();
    __fp_pop_log();
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __55__FPDXPCServicer_updateLastUsedDate_completionHandler___block_invoke_210(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v13 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    v11 = FPPopLogSectionForBlock();
    v12 = *(a1 + 32);
    *buf = 134218754;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2080;
    v19 = "[FPDXPCServicer updateLastUsedDate:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)valuesForAttributes:(id)attributes forItemAtURL:(id)l completionHandler:(id)handler
{
  v40[7] = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  lCopy = l;
  handlerCopy = handler;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v35 = __69__FPDXPCServicer_valuesForAttributes_forItemAtURL_completionHandler___block_invoke;
  v36 = &unk_1E83BFA20;
  selfCopy = self;
  v38 = lCopy;
  v11 = handlerCopy;
  v39 = v11;
  selfCopy2 = self;
  v13 = v38;
  v14 = v34;
  if (!v13)
  {
    v25 = FPInvalidParameterError();
LABEL_14:
    v29 = v25;
    v35(v14, v25);

    goto LABEL_15;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v16 = [connection fp_hasSandboxAccessToFile:v13 accessType:*MEMORY[0x1E6966DB0] logLevel:0];

  if ((v16 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    v40[0] = *MEMORY[0x1E6967560];
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    v19 = [connection2 fp_hasOneOfEntitlements:v18 nonSandboxedAccess:0 logLevel:0];

    if ((v19 & 1) == 0)
    {
      v25 = FPNotPermittedError();
      goto LABEL_14;
    }
  }

  server = [(FPDXPCServicer *)selfCopy2 server];
  extensionManager = [server extensionManager];
  v22 = [extensionManager domainForURL:v13 reason:0];

  if (v22)
  {
    defaultBackend = [v22 defaultBackend];
    v24 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __69__FPDXPCServicer_valuesForAttributes_forItemAtURL_completionHandler___block_invoke_211;
    v31[3] = &unk_1E83BE400;
    v31[4] = selfCopy2;
    v32 = v11;
    [defaultBackend valuesForAttributes:attributesCopy forURL:v13 request:v24 completionHandler:v31];
  }

  else
  {
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer valuesForAttributes:v13 forItemAtURL:? completionHandler:?];
    }

    log = selfCopy2->_log;
    v33 = fpfs_adopt_log();
    v28 = fp_current_or_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer valuesForAttributes:forItemAtURL:completionHandler:];
    }

    (*(v11 + 2))(v11, 0, 0);
    __fp_pop_log();
  }

LABEL_15:
  v30 = *MEMORY[0x1E69E9840];
}

void __69__FPDXPCServicer_valuesForAttributes_forItemAtURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __69__FPDXPCServicer_valuesForAttributes_forItemAtURL_completionHandler___block_invoke_cold_1(a1);
  }

  v5 = *(*(a1 + 32) + 24);
  v11 = fpfs_adopt_log();
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 48);
    v9 = FPPopLogSectionForBlock();
    v10 = *(a1 + 32);
    *buf = 134219010;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2080;
    v17 = "[FPDXPCServicer valuesForAttributes:forItemAtURL:completionHandler:]_block_invoke";
    v18 = 2112;
    v19 = 0;
    v20 = 2112;
    v21 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log();

  v7 = *MEMORY[0x1E69E9840];
}

void __69__FPDXPCServicer_valuesForAttributes_forItemAtURL_completionHandler___block_invoke_211(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v13 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    v11 = FPPopLogSectionForBlock();
    v12 = *(a1 + 32);
    *buf = 134219011;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2080;
    v19 = "[FPDXPCServicer valuesForAttributes:forItemAtURL:completionHandler:]_block_invoke";
    v20 = 2117;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %{sensitive}@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)fetchListOfMonitoredApps:(id)apps
{
  v35 = *MEMORY[0x1E69E9840];
  appsCopy = apps;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v25 = __43__FPDXPCServicer_fetchListOfMonitoredApps___block_invoke;
  v26 = &unk_1E83BE1A8;
  selfCopy = self;
  v5 = appsCopy;
  v28 = v5;
  v6 = v24;
  selfCopy2 = self;
  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v9 = *MEMORY[0x1E6967540];
  *buf = *MEMORY[0x1E6967538];
  *&buf[8] = v9;
  *&buf[16] = *MEMORY[0x1E6967560];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:3];

  v11 = [connection fp_hasOneOfEntitlements:v10];
  if (v11)
  {

    WeakRetained = objc_loadWeakRetained(&selfCopy2->_server);
    appMonitor = [WeakRetained appMonitor];

    [appMonitor startMonitoring];
    log = selfCopy2->_log;
    v23 = fpfs_adopt_log();
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v20 = FPPopLogSectionForBlock();
      appRegistry = [appMonitor appRegistry];
      listOfMonitoredApps = [appRegistry listOfMonitoredApps];
      *buf = 134219010;
      *&buf[4] = v20;
      *&buf[12] = 2112;
      *&buf[14] = selfCopy2;
      *&buf[22] = 2080;
      v30 = "[FPDXPCServicer fetchListOfMonitoredApps:]";
      v31 = 2112;
      v32 = listOfMonitoredApps;
      v33 = 2112;
      v34 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    appRegistry2 = [appMonitor appRegistry];
    listOfMonitoredApps2 = [appRegistry2 listOfMonitoredApps];
    (*(v5 + 2))(v5, listOfMonitoredApps2, 0);

    __fp_pop_log();
  }

  else
  {
    v18 = FPNotPermittedError();
    v25(v6, v18);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __43__FPDXPCServicer_fetchListOfMonitoredApps___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer fetchListOfMonitoredApps:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)startOperation:(id)operation toFetchIconsForAppBundleIDs:(id)ds requestedSize:(CGSize)size scale:(double)scale completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v65 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  dsCopy = ds;
  handlerCopy = handler;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v57 = __99__FPDXPCServicer_startOperation_toFetchIconsForAppBundleIDs_requestedSize_scale_completionHandler___block_invoke;
  v58 = &unk_1E83BE1A8;
  selfCopy = self;
  v17 = handlerCopy;
  v60 = v17;
  v18 = v56;
  selfCopy2 = self;
  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v21 = *MEMORY[0x1E6967540];
  *location = *MEMORY[0x1E6967538];
  *&location[8] = v21;
  *&location[16] = *MEMORY[0x1E6967560];
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:location count:3];

  v23 = [connection fp_hasOneOfEntitlements:v22];
  if (v23)
  {

    scale = [[FPDFetchAppLibraryIconOperation alloc] initWithAppBundleIDs:dsCopy desiredSize:width screenScale:height, scale];
    if (scale)
    {
      v25 = dispatch_group_create();
      callbackQueue = [(FPOperation *)scale callbackQueue];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __99__FPDXPCServicer_startOperation_toFetchIconsForAppBundleIDs_requestedSize_scale_completionHandler___block_invoke_216;
      v49[3] = &unk_1E83C02E8;
      v27 = callbackQueue;
      v54 = a2;
      v50 = v27;
      v51 = selfCopy2;
      v28 = v25;
      v52 = v28;
      v29 = operationCopy;
      v53 = v29;
      [(FPDFetchAppLibraryIconOperation *)scale setPerAppBundleCompletion:v49];
      objc_initWeak(location, selfCopy2);
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __99__FPDXPCServicer_startOperation_toFetchIconsForAppBundleIDs_requestedSize_scale_completionHandler___block_invoke_3;
      v43[3] = &unk_1E83C0310;
      v30 = v27;
      v44 = v30;
      objc_copyWeak(&v48, location);
      v31 = v28;
      v45 = v31;
      v46 = selfCopy2;
      v47 = v17;
      [(FPOperation *)scale setFinishedBlock:v43];
      progress = [(FPDFetchAppLibraryIconOperation *)scale progress];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __99__FPDXPCServicer_startOperation_toFetchIconsForAppBundleIDs_requestedSize_scale_completionHandler___block_invoke_231;
      v41[3] = &unk_1E83BDFC8;
      v33 = progress;
      v42 = v33;
      v34 = [v29 remoteObjectProxyWithErrorHandler:v41];
      [v34 setCancellationHandler:v33];
      v35 = +[FPDFetchAppLibraryIconOperation sharedOperationQueue];
      [v35 addOperation:scale];

      objc_destroyWeak(&v48);
      objc_destroyWeak(location);
    }

    else
    {
      v31 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:{@"can't fetch icons for %@", dsCopy}];
      log = selfCopy2->_log;
      v55 = fpfs_adopt_log();
      v38 = fp_current_or_default_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        v40 = FPPopLogSectionForBlock();
        *location = 134218754;
        *&location[4] = v40;
        *&location[12] = 2112;
        *&location[14] = selfCopy2;
        *&location[22] = 2080;
        v62 = "[FPDXPCServicer startOperation:toFetchIconsForAppBundleIDs:requestedSize:scale:completionHandler:]";
        v63 = 2112;
        v64 = v31;
        _os_log_debug_impl(&dword_1CEFC7000, v38, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", location, 0x2Au);
      }

      (*(v17 + 2))(v17, v31);
      __fp_pop_log();
    }
  }

  else
  {
    v36 = FPNotPermittedError();
    v57(v18, v36);
  }

  v39 = *MEMORY[0x1E69E9840];
}

void __99__FPDXPCServicer_startOperation_toFetchIconsForAppBundleIDs_requestedSize_scale_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer startOperation:toFetchIconsForAppBundleIDs:requestedSize:scale:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __99__FPDXPCServicer_startOperation_toFetchIconsForAppBundleIDs_requestedSize_scale_completionHandler___block_invoke_216(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  dispatch_assert_queue_V2(*(a1 + 32));
  if (!v9)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ UNREACHABLE: per app bundle block call without appBundleID"];
    v16 = fp_current_or_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_5();
    }

    __assert_rtn("-[FPDXPCServicer startOperation:toFetchIconsForAppBundleIDs:requestedSize:scale:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDXPCServicer.m", 1900, [v15 UTF8String]);
  }

  dispatch_group_enter(*(a1 + 48));
  v13 = [MEMORY[0x1E695DF90] dictionary];
  [v13 setObject:v9 forKeyedSubscript:@"appBundleID"];
  if (v10)
  {
    [v13 setObject:v10 forKeyedSubscript:@"thumbnailData"];
  }

  if (v11)
  {
    [v13 setObject:v11 forKeyedSubscript:@"contentType"];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __99__FPDXPCServicer_startOperation_toFetchIconsForAppBundleIDs_requestedSize_scale_completionHandler___block_invoke_2;
  v17[3] = &unk_1E83BE068;
  v14 = *(a1 + 56);
  v18 = *(a1 + 48);
  [v14 operationDidProgressWithInfo:v13 error:v12 completionHandler:v17];
}

void __99__FPDXPCServicer_startOperation_toFetchIconsForAppBundleIDs_requestedSize_scale_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  dispatch_assert_queue_V2(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__FPDXPCServicer_startOperation_toFetchIconsForAppBundleIDs_requestedSize_scale_completionHandler___block_invoke_4;
    block[3] = &unk_1E83BE1F8;
    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    block[4] = *(a1 + 48);
    v12 = v9;
    v11 = v4;
    dispatch_group_notify(v8, v7, block);
  }
}

void __99__FPDXPCServicer_startOperation_toFetchIconsForAppBundleIDs_requestedSize_scale_completionHandler___block_invoke_4(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1[4] + 24);
  v10 = fpfs_adopt_log();
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = a1[6];
    v7 = FPPopLogSectionForBlock();
    v8 = a1[4];
    v9 = a1[5];
    *buf = 134218754;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2080;
    v16 = "[FPDXPCServicer startOperation:toFetchIconsForAppBundleIDs:requestedSize:scale:completionHandler:]_block_invoke_4";
    v17 = 2112;
    v18 = v9;
    _os_log_debug_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  v4 = a1[5];
  (*(a1[6] + 16))();
  __fp_pop_log();

  v5 = *MEMORY[0x1E69E9840];
}

void __99__FPDXPCServicer_startOperation_toFetchIconsForAppBundleIDs_requestedSize_scale_completionHandler___block_invoke_231(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __99__FPDXPCServicer_startOperation_toFetchIconsForAppBundleIDs_requestedSize_scale_completionHandler___block_invoke_231_cold_1(v3);
  }

  [*(a1 + 32) cancel];
}

- (void)materializeURL:(id)l completionHandler:(id)handler
{
  v26[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __51__FPDXPCServicer_materializeURL_completionHandler___block_invoke;
  v23 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v25 = v8;
  selfCopy2 = self;
  v10 = &v20;
  if (!lCopy)
  {
    v17 = FPInvalidParameterError();
LABEL_7:
    v18 = v17;
    v22(v10, v17);

    goto LABEL_8;
  }

  v11 = *MEMORY[0x1E6966DA8];
  v12 = [(FPDXPCServicer *)selfCopy2 connection:v20];
  LOBYTE(v11) = [v12 fp_hasSandboxAccessToFile:lCopy accessType:v11 logLevel:0];

  if ((v11 & 1) == 0)
  {
    connection = [(FPDXPCServicer *)selfCopy2 connection];
    v26[0] = *MEMORY[0x1E6967560];
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v15 = [connection fp_hasOneOfEntitlements:v14 nonSandboxedAccess:0 logLevel:0];

    if ((v15 & 1) == 0)
    {
      v17 = FPNotPermittedError();
      goto LABEL_7;
    }
  }

  server = [(FPDXPCServicer *)selfCopy2 server];
  [server materializeURL:lCopy completion:v8];

LABEL_8:
  v19 = *MEMORY[0x1E69E9840];
}

void __51__FPDXPCServicer_materializeURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer materializeURL:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getURLForContainerWithItemID:(id)d inDataScopeDomainWithIdentifier:(id)identifier documentsScopeDomainIdentifier:(id)domainIdentifier documentsFolderItemIdentifier:(id)itemIdentifier completionHandler:(id)handler
{
  v83 = *MEMORY[0x1E69E9840];
  dCopy = d;
  identifierCopy = identifier;
  domainIdentifierCopy = domainIdentifier;
  itemIdentifierCopy = itemIdentifier;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_server);
  extensionManager = [WeakRetained extensionManager];
  clouddocsExtensionIdentifier = [extensionManager clouddocsExtensionIdentifier];

  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v66 = __158__FPDXPCServicer_getURLForContainerWithItemID_inDataScopeDomainWithIdentifier_documentsScopeDomainIdentifier_documentsFolderItemIdentifier_completionHandler___block_invoke;
  v67 = &unk_1E83BE1A8;
  selfCopy = self;
  v16 = handlerCopy;
  v69 = v16;
  selfCopy2 = self;
  v18 = v65;
  v70 = 0;
  v19 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:clouddocsExtensionIdentifier enumerateEntitlementRequired:1 error:&v70];
  v20 = v70;
  if (!v19)
  {
    v66(v18, v20);
LABEL_7:
    v26 = 0;
    goto LABEL_9;
  }

  if ([v19 invalidated])
  {
    v21 = fp_current_or_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v72 = v19;
      _os_log_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
    }

    v22 = MEMORY[0x1E696AEC0];
    identifier = [v19 identifier];
    v24 = [v22 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

    v25 = FPProviderNotRegistered();
    v66(v18, v25);

    goto LABEL_7;
  }

  v26 = v19;
LABEL_9:

  if (v26)
  {
    v27 = [objc_alloc(MEMORY[0x1E69673A0]) initWithProviderID:clouddocsExtensionIdentifier domainIdentifier:identifierCopy itemIdentifier:dCopy];
    v70 = 0;
    server = [(FPDXPCServicer *)selfCopy2 server];
    extensionManager2 = [server extensionManager];
    v55 = [extensionManager2 domainFromItemID:v27 reason:&v70];

    if (v55)
    {
      v30 = objc_alloc(MEMORY[0x1E69673A0]);
      v31 = objc_loadWeakRetained(&self->_server);
      extensionManager3 = [v31 extensionManager];
      clouddocsExtensionIdentifier2 = [extensionManager3 clouddocsExtensionIdentifier];
      v34 = [v30 initWithProviderID:clouddocsExtensionIdentifier2 domainIdentifier:domainIdentifierCopy itemIdentifier:itemIdentifierCopy];

      server2 = [(FPDXPCServicer *)selfCopy2 server];
      extensionManager4 = [server2 extensionManager];
      v37 = [extensionManager4 domainFromItemID:v34 reason:&v70];

      if (v37)
      {
        defaultBackend = [v37 defaultBackend];
        v39 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __158__FPDXPCServicer_getURLForContainerWithItemID_inDataScopeDomainWithIdentifier_documentsScopeDomainIdentifier_documentsFolderItemIdentifier_completionHandler___block_invoke_232;
        v60[3] = &unk_1E83C0360;
        v60[4] = selfCopy2;
        v63 = v16;
        v61 = v55;
        v62 = v27;
        [defaultBackend URLForItemID:v34 creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:1 forBookmarkResolution:0 request:v39 completionHandler:v60];
      }

      else
      {
        log = selfCopy2->_log;
        v64 = fpfs_adopt_log();
        v45 = fp_current_or_default_log();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          v54 = FPPopLogSectionForBlock();
          providerDomainID = [v34 providerDomainID];
          v53 = FPProviderNotFoundError();
          *buf = 134219266;
          v72 = v54;
          v73 = 2112;
          v74 = selfCopy2;
          v75 = 2080;
          v76 = "[FPDXPCServicer getURLForContainerWithItemID:inDataScopeDomainWithIdentifier:documentsScopeDomainIdentifier:documentsFolderItemIdentifier:completionHandler:]";
          v77 = 2112;
          v78 = 0;
          v79 = 2112;
          v80 = 0;
          v81 = 2112;
          v82 = v53;
          _os_log_debug_impl(&dword_1CEFC7000, v45, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
        }

        providerDomainID2 = [v34 providerDomainID];
        v47 = FPProviderNotFoundError();
        (*(v16 + 2))(v16, 0, 0, v47);

        __fp_pop_log();
      }
    }

    else
    {
      v40 = selfCopy2->_log;
      v64 = fpfs_adopt_log();
      v41 = fp_current_or_default_log();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        v49 = FPPopLogSectionForBlock();
        providerDomainID3 = [v27 providerDomainID];
        v51 = FPProviderNotFoundError();
        *buf = 134219266;
        v72 = v49;
        v73 = 2112;
        v74 = selfCopy2;
        v75 = 2080;
        v76 = "[FPDXPCServicer getURLForContainerWithItemID:inDataScopeDomainWithIdentifier:documentsScopeDomainIdentifier:documentsFolderItemIdentifier:completionHandler:]";
        v77 = 2112;
        v78 = 0;
        v79 = 2112;
        v80 = 0;
        v81 = 2112;
        v82 = v51;
        _os_log_debug_impl(&dword_1CEFC7000, v41, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
      }

      providerDomainID4 = [v27 providerDomainID];
      v43 = FPProviderNotFoundError();
      (*(v16 + 2))(v16, 0, 0, v43);

      __fp_pop_log();
    }
  }

  v48 = *MEMORY[0x1E69E9840];
}

void __158__FPDXPCServicer_getURLForContainerWithItemID_inDataScopeDomainWithIdentifier_documentsScopeDomainIdentifier_documentsFolderItemIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219266;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer getURLForContainerWithItemID:inDataScopeDomainWithIdentifier:documentsScopeDomainIdentifier:documentsFolderItemIdentifier:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = 0;
    v21 = 2112;
    v22 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __158__FPDXPCServicer_getURLForContainerWithItemID_inDataScopeDomainWithIdentifier_documentsScopeDomainIdentifier_documentsFolderItemIdentifier_completionHandler___block_invoke_232(uint64_t a1, void *a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = *(*(a1 + 32) + 24);
    v22 = fpfs_adopt_log();
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 56);
      v17 = FPPopLogSectionForBlock();
      v18 = *(a1 + 32);
      *buf = 134219266;
      v24 = v17;
      v25 = 2112;
      v26 = v18;
      v27 = 2080;
      v28 = "[FPDXPCServicer getURLForContainerWithItemID:inDataScopeDomainWithIdentifier:documentsScopeDomainIdentifier:documentsFolderItemIdentifier:completionHandler:]_block_invoke";
      v29 = 2112;
      v30 = 0;
      v31 = 2112;
      v32 = 0;
      v33 = 2112;
      v34 = v7;
      _os_log_debug_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }

    (*(*(a1 + 56) + 16))();
    __fp_pop_log();
  }

  else
  {
    v12 = [*(a1 + 40) defaultBackend];
    v13 = *(a1 + 48);
    v14 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [*(a1 + 32) pid]);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __158__FPDXPCServicer_getURLForContainerWithItemID_inDataScopeDomainWithIdentifier_documentsScopeDomainIdentifier_documentsFolderItemIdentifier_completionHandler___block_invoke_233;
    v19[3] = &unk_1E83C0338;
    v19[4] = *(a1 + 32);
    v21 = *(a1 + 56);
    v20 = v8;
    [v12 URLForItemID:v13 creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:1 forBookmarkResolution:0 request:v14 completionHandler:v19];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __158__FPDXPCServicer_getURLForContainerWithItemID_inDataScopeDomainWithIdentifier_documentsScopeDomainIdentifier_documentsFolderItemIdentifier_completionHandler___block_invoke_233(void *a1, void *a2, void *a3, void *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = *(a1[4] + 24);
    v23 = fpfs_adopt_log();
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v16 = a1[6];
      v17 = FPPopLogSectionForBlock();
      v18 = a1[4];
      *buf = 134219266;
      v26 = v17;
      v27 = 2112;
      v28 = v18;
      v29 = 2080;
      v30 = "[FPDXPCServicer getURLForContainerWithItemID:inDataScopeDomainWithIdentifier:documentsScopeDomainIdentifier:documentsFolderItemIdentifier:completionHandler:]_block_invoke";
      v31 = 2112;
      v32 = 0;
      v33 = 2112;
      v34 = 0;
      v35 = 2112;
      v36 = v7;
      _os_log_debug_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }

    (*(a1[6] + 16))();
    __fp_pop_log();
  }

  else
  {
    v12 = *(a1[4] + 24);
    v24 = fpfs_adopt_log();
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v19 = a1[6];
      v20 = FPPopLogSectionForBlock();
      v21 = a1[4];
      v22 = a1[5];
      *buf = 134219266;
      v26 = v20;
      v27 = 2112;
      v28 = v21;
      v29 = 2080;
      v30 = "[FPDXPCServicer getURLForContainerWithItemID:inDataScopeDomainWithIdentifier:documentsScopeDomainIdentifier:documentsFolderItemIdentifier:completionHandler:]_block_invoke";
      v31 = 2112;
      v32 = v8;
      v33 = 2112;
      v34 = v22;
      v35 = 2112;
      v36 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }

    v14 = a1[5];
    (*(a1[6] + 16))();
    __fp_pop_log();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)updateBlockedProcessNamesForProvider:(id)provider processNames:(id)names completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  namesCopy = names;
  handlerCopy = handler;
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __86__FPDXPCServicer_updateBlockedProcessNamesForProvider_processNames_completionHandler___block_invoke;
  v30 = &unk_1E83BE1A8;
  selfCopy = self;
  v11 = handlerCopy;
  v32 = v11;
  selfCopy2 = self;
  v13 = &v27;
  v33 = 0;
  v14 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:providerCopy enumerateEntitlementRequired:1 error:&v33];
  v15 = v33;
  if (!v14)
  {
    v29(v13, v15);
LABEL_7:
    v21 = 0;
    goto LABEL_9;
  }

  if ([v14 invalidated])
  {
    v16 = fp_current_or_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v14;
      _os_log_impl(&dword_1CEFC7000, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
    }

    v17 = MEMORY[0x1E696AEC0];
    identifier = [v14 identifier];
    v19 = [v17 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier, v27, v28];

    v20 = FPProviderNotRegistered();
    v29(v13, v20);

    goto LABEL_7;
  }

  v21 = v14;
LABEL_9:

  if (v21)
  {
    v22 = v21;
    objc_sync_enter(v22);
    if (namesCopy)
    {
      v23 = [MEMORY[0x1E695DFD8] setWithArray:namesCopy];
      [v22 setBlockedProcessNames:v23];
    }

    else
    {
      [v22 setBlockedProcessNames:0];
    }

    objc_sync_exit(v22);

    log = selfCopy2->_log;
    v33 = fpfs_adopt_log();
    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer updateBlockedProcessNamesForProvider:processNames:completionHandler:];
    }

    (*(v11 + 2))(v11, 0);
    __fp_pop_log();
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __86__FPDXPCServicer_updateBlockedProcessNamesForProvider_processNames_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer updateBlockedProcessNamesForProvider:processNames:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchPathComponentsForURL:(id)l completionHandler:(id)handler
{
  v49 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v36 = __62__FPDXPCServicer_fetchPathComponentsForURL_completionHandler___block_invoke;
  v37 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v39 = v8;
  selfCopy2 = self;
  v10 = lCopy;
  v11 = v35;
  if (!v10)
  {
    v22 = FPInvalidParameterError();
LABEL_14:
    v27 = v22;
    v36(v11, v22);

    goto LABEL_15;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v13 = [connection fp_hasSandboxAccessToFile:v10 accessType:*MEMORY[0x1E6966DB0] logLevel:0];

  if ((v13 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    *buf = *MEMORY[0x1E6967560];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v16 = [connection2 fp_hasOneOfEntitlements:v15 nonSandboxedAccess:0 logLevel:0];

    if ((v16 & 1) == 0)
    {
      v22 = FPNotPermittedError();
      goto LABEL_14;
    }
  }

  server = [(FPDXPCServicer *)selfCopy2 server];
  extensionManager = [server extensionManager];
  v19 = [extensionManager domainForURL:v10 reason:0];

  if (v19)
  {
    v20 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
    defaultBackend = [v19 defaultBackend];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __62__FPDXPCServicer_fetchPathComponentsForURL_completionHandler___block_invoke_235;
    v31[3] = &unk_1E83C0298;
    v31[4] = selfCopy2;
    v33 = v8;
    v32 = v19;
    [defaultBackend hierarchyForURL:v10 request:v20 completionHandler:v31];
  }

  else
  {
    v23 = fp_current_or_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer fetchPathComponentsForURL:v10 completionHandler:?];
    }

    log = selfCopy2->_log;
    v34 = fpfs_adopt_log();
    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v29 = FPPopLogSectionForBlock();
      v30 = FPProviderNotFoundErrorForURL();
      *buf = 134219010;
      *&buf[4] = v29;
      v41 = 2112;
      v42 = selfCopy2;
      v43 = 2080;
      v44 = "[FPDXPCServicer fetchPathComponentsForURL:completionHandler:]";
      v45 = 2112;
      v46 = MEMORY[0x1E695E0F0];
      v47 = 2112;
      v48 = v30;
      _os_log_debug_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    v26 = FPProviderNotFoundErrorForURL();
    (*(v8 + 2))(v8, MEMORY[0x1E695E0F0], v26);

    __fp_pop_log();
  }

LABEL_15:
  v28 = *MEMORY[0x1E69E9840];
}

void __62__FPDXPCServicer_fetchPathComponentsForURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer fetchPathComponentsForURL:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = MEMORY[0x1E695E0F0];
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __62__FPDXPCServicer_fetchPathComponentsForURL_completionHandler___block_invoke_235(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v16 = *(*(a1 + 32) + 24);
    v26 = fpfs_adopt_log();
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 48);
      v20 = FPPopLogSectionForBlock();
      v21 = *(a1 + 32);
      *buf = 134219010;
      v28 = v20;
      v29 = 2112;
      v30 = v21;
      v31 = 2080;
      v32 = "[FPDXPCServicer fetchPathComponentsForURL:completionHandler:]_block_invoke";
      v33 = 2112;
      v34 = MEMORY[0x1E695E0F0];
      v35 = 2112;
      v36 = v7;
      _os_log_debug_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 48) + 16))();
    __fp_pop_log();
  }

  else
  {
    v8 = [*(a1 + 32) server];
    v9 = [v8 extensionManager];
    v10 = [v9 providerDomainsByID];
    v11 = [*(a1 + 40) providerDomainID];
    v12 = [v10 objectForKeyedSubscript:v11];

    v13 = FPPathComponentsForFPItems();
    v14 = *(*(a1 + 32) + 24);
    v25 = fpfs_adopt_log();
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a1 + 48);
      v23 = FPPopLogSectionForBlock();
      v24 = *(a1 + 32);
      *buf = 134219010;
      v28 = v23;
      v29 = 2112;
      v30 = v24;
      v31 = 2080;
      v32 = "[FPDXPCServicer fetchPathComponentsForURL:completionHandler:]_block_invoke";
      v33 = 2112;
      v34 = v13;
      v35 = 2112;
      v36 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 48) + 16))();
    __fp_pop_log();
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)triggerDiagnosticsFor:(id)for triggeringError:(id)error uiOnly:(BOOL)only useDiagnostic:(BOOL)diagnostic completionHandler:(id)handler
{
  v69[1] = *MEMORY[0x1E69E9840];
  forCopy = for;
  errorCopy = error;
  handlerCopy = handler;
  v69[0] = *MEMORY[0x1E6967558];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:1];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v58 = __95__FPDXPCServicer_triggerDiagnosticsFor_triggeringError_uiOnly_useDiagnostic_completionHandler___block_invoke;
  v59 = &unk_1E83BE1A8;
  selfCopy = self;
  v14 = handlerCopy;
  v61 = v14;
  selfCopy2 = self;
  v16 = forCopy;
  v17 = v13;
  v18 = v57;
  if (!v16)
  {
    v33 = FPInvalidParameterError();
LABEL_11:
    v34 = v33;
    v58(v18, v33);

    goto LABEL_12;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v20 = [connection fp_hasSandboxAccessToFile:v16 accessType:*MEMORY[0x1E6966DA8] logLevel:0];

  if ((v20 & 1) == 0)
  {
    goto LABEL_10;
  }

  connection2 = [(FPDXPCServicer *)selfCopy2 connection];
  *buf = *MEMORY[0x1E6967560];
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
  v23 = [connection2 fp_hasOneOfEntitlements:v22 logLevel:0];

  if ((v23 & 1) == 0)
  {
    goto LABEL_10;
  }

  connection3 = [(FPDXPCServicer *)selfCopy2 connection];
  v25 = [connection3 fp_hasOneOfEntitlements:v17 logLevel:0];

  if ((v25 & 1) == 0 || (-[FPDXPCServicer connection](selfCopy2, "connection"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v26 fp_isNonSandboxedConnection], v26, (v27 & 1) == 0))
  {
LABEL_10:
    v33 = FPNotPermittedError();
    goto LABEL_11;
  }

  if (fpfs_supports_tap_to_feedback())
  {
    server = [(FPDXPCServicer *)selfCopy2 server];
    extensionManager = [server extensionManager];
    v30 = [extensionManager domainForURL:v16 reason:0];

    if (v30)
    {
      v31 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
      defaultBackend = [v30 defaultBackend];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __95__FPDXPCServicer_triggerDiagnosticsFor_triggeringError_uiOnly_useDiagnostic_completionHandler___block_invoke_236;
      v49[3] = &unk_1E83C03B0;
      v49[4] = selfCopy2;
      v53 = v14;
      v50 = v16;
      v51 = v30;
      onlyCopy = only;
      v52 = errorCopy;
      diagnosticCopy = diagnostic;
      [defaultBackend itemIDForURL:v50 requireProviderItemID:0 request:v31 completionHandler:v49];
    }

    else
    {
      v39 = fp_current_or_default_log();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer triggerDiagnosticsFor:v16 triggeringError:? uiOnly:? useDiagnostic:? completionHandler:?];
      }

      log = selfCopy2->_log;
      v56 = fpfs_adopt_log();
      v41 = fp_current_or_default_log();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        v45 = FPPopLogSectionForBlock();
        v46 = FPItemNotFoundErrorAtURL();
        *buf = 134218754;
        *&buf[4] = v45;
        v63 = 2112;
        v64 = selfCopy2;
        v65 = 2080;
        v66 = "[FPDXPCServicer triggerDiagnosticsFor:triggeringError:uiOnly:useDiagnostic:completionHandler:]";
        v67 = 2112;
        v68 = v46;
        _os_log_debug_impl(&dword_1CEFC7000, v41, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v42 = FPItemNotFoundErrorAtURL();
      (*(v14 + 2))(v14, v42);

      __fp_pop_log();
    }
  }

  else
  {
    v36 = selfCopy2->_log;
    v56 = fpfs_adopt_log();
    v37 = fp_current_or_default_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v43 = FPPopLogSectionForBlock();
      v44 = FPNotSupportedError();
      *buf = 134218754;
      *&buf[4] = v43;
      v63 = 2112;
      v64 = selfCopy2;
      v65 = 2080;
      v66 = "[FPDXPCServicer triggerDiagnosticsFor:triggeringError:uiOnly:useDiagnostic:completionHandler:]";
      v67 = 2112;
      v68 = v44;
      _os_log_debug_impl(&dword_1CEFC7000, v37, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v38 = FPNotSupportedError();
    (*(v14 + 2))(v14, v38);

    __fp_pop_log();
  }

LABEL_12:

  v35 = *MEMORY[0x1E69E9840];
}

void __95__FPDXPCServicer_triggerDiagnosticsFor_triggeringError_uiOnly_useDiagnostic_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer triggerDiagnosticsFor:triggeringError:uiOnly:useDiagnostic:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __95__FPDXPCServicer_triggerDiagnosticsFor_triggeringError_uiOnly_useDiagnostic_completionHandler___block_invoke_236(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 32) + 24);
    v36 = fpfs_adopt_log();
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 64);
      v22 = FPPopLogSectionForBlock();
      v23 = *(a1 + 32);
      v24 = FPPluginOperationFailedError();
      *buf = 134218754;
      v38 = v22;
      v39 = 2112;
      v40 = v23;
      v41 = 2080;
      v42 = "[FPDXPCServicer triggerDiagnosticsFor:triggeringError:uiOnly:useDiagnostic:completionHandler:]_block_invoke";
      v43 = 2112;
      v44 = v24;
      _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v9 = *(a1 + 64);
    v10 = FPPluginOperationFailedError();
    (*(v9 + 16))(v9, v10);

    __fp_pop_log();
  }

  else if (v5)
  {
    v11 = [*(a1 + 48) defaultBackend];
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 72);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __95__FPDXPCServicer_triggerDiagnosticsFor_triggeringError_uiOnly_useDiagnostic_completionHandler___block_invoke_237;
    v30[3] = &unk_1E83C0388;
    v34 = *(a1 + 64);
    v31 = *(a1 + 48);
    v32 = v5;
    v33 = *(a1 + 56);
    v35 = *(a1 + 73);
    [v11 triggerFeedbackApprovalRequestForItemURL:v12 domain:v13 uiOnly:v14 completionHandler:v30];
  }

  else
  {
    v15 = *(*(a1 + 32) + 24);
    v36 = fpfs_adopt_log();
    v16 = fp_current_or_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v25 = *(a1 + 64);
      v26 = FPPopLogSectionForBlock();
      v28 = *(a1 + 32);
      v27 = *(a1 + 40);
      v29 = FPItemNotFoundErrorAtURL();
      *buf = 134218754;
      v38 = v26;
      v39 = 2112;
      v40 = v28;
      v41 = 2080;
      v42 = "[FPDXPCServicer triggerDiagnosticsFor:triggeringError:uiOnly:useDiagnostic:completionHandler:]_block_invoke";
      v43 = 2112;
      v44 = v29;
      _os_log_debug_impl(&dword_1CEFC7000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v17 = *(a1 + 64);
    v18 = *(a1 + 40);
    v19 = FPItemNotFoundErrorAtURL();
    (*(v17 + 16))(v17, v19);

    __fp_pop_log();
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __95__FPDXPCServicer_triggerDiagnosticsFor_triggeringError_uiOnly_useDiagnostic_completionHandler___block_invoke_237(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) defaultBackend];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) identifier];
    v6 = *(a1 + 48);
    v7 = [MEMORY[0x1E695DF00] now];
    v8 = *(a1 + 64);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __95__FPDXPCServicer_triggerDiagnosticsFor_triggeringError_uiOnly_useDiagnostic_completionHandler___block_invoke_238;
    v10[3] = &unk_1E83BE040;
    v11 = *(a1 + 56);
    [v3 launchFeedbackForDomain:v4 itemIdentifier:v5 triggeringError:v6 when:v7 useDiagnostic:v8 completionHandler:v10];
  }

  else
  {
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __95__FPDXPCServicer_triggerDiagnosticsFor_triggeringError_uiOnly_useDiagnostic_completionHandler___block_invoke_237_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (void)getSavedDiagnosticsFor:(id)for completionHandler:(id)handler
{
  v53[1] = *MEMORY[0x1E69E9840];
  forCopy = for;
  handlerCopy = handler;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v39 = __59__FPDXPCServicer_getSavedDiagnosticsFor_completionHandler___block_invoke;
  v40 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v42 = v8;
  v9 = v38;
  connection = [(FPDXPCServicer *)self connection];
  v11 = [connection fp_hasOneOfEntitlements:&unk_1F4C628F8];

  if ((v11 & 1) == 0)
  {
    v21 = FPNotPermittedError();
    v39(v9, v21);

    goto LABEL_15;
  }

  connection2 = [(FPDXPCServicer *)self connection];
  v53[0] = *MEMORY[0x1E69675D8];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
  if ([connection2 fp_hasOneOfEntitlements:v13])
  {
    v14 = [forCopy isEqualToString:@"test_provider"];

    if (v14)
    {
      fp_supportDirectory = [MEMORY[0x1E695DFF8] fp_supportDirectory];
      v16 = [fp_supportDirectory URLByAppendingPathComponent:@"__test__diagnostic__" isDirectory:1];

      v37 = 0;
      v17 = [MEMORY[0x1E6967408] wrapperWithURL:v16 readonly:0 error:&v37];
      v18 = v37;
      log = self->_log;
      v36 = fpfs_adopt_log();
      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v32 = FPPopLogSectionForBlock();
        *buf = 134219010;
        v44 = v32;
        v45 = 2112;
        selfCopy3 = self;
        v47 = 2080;
        v48 = "[FPDXPCServicer getSavedDiagnosticsFor:completionHandler:]";
        v49 = 2112;
        v50 = v17;
        v51 = 2112;
        v52 = v18;
        _os_log_debug_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      (*(v8 + 2))(v8, v17, v18);
      __fp_pop_log();

      goto LABEL_15;
    }
  }

  else
  {
  }

  v36 = 0;
  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];
  v24 = [extensionManager domainWithID:forCopy reason:&v36];

  if (v24)
  {
    defaultBackend = [v24 defaultBackend];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __59__FPDXPCServicer_getSavedDiagnosticsFor_completionHandler___block_invoke_251;
    v33[3] = &unk_1E83BE9E0;
    v34 = v8;
    [defaultBackend getSavedDiagnostics:v33];
  }

  else
  {
    v26 = self->_log;
    v35 = fpfs_adopt_log();
    v27 = fp_current_or_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v30 = FPPopLogSectionForBlock();
      v31 = FPProviderNotFoundError();
      *buf = 134219010;
      v44 = v30;
      v45 = 2112;
      selfCopy3 = self;
      v47 = 2080;
      v48 = "[FPDXPCServicer getSavedDiagnosticsFor:completionHandler:]";
      v49 = 2112;
      v50 = 0;
      v51 = 2112;
      v52 = v31;
      _os_log_debug_impl(&dword_1CEFC7000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    v28 = FPProviderNotFoundError();
    (*(v8 + 2))(v8, 0, v28);

    __fp_pop_log();
  }

LABEL_15:
  v29 = *MEMORY[0x1E69E9840];
}

void __59__FPDXPCServicer_getSavedDiagnosticsFor_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer getSavedDiagnosticsFor:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)clearDiagnosticsState:(id)state completionHandler:(id)handler
{
  v67[1] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  handlerCopy = handler;
  v67[0] = *MEMORY[0x1E6967558];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:1];
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v62 = __58__FPDXPCServicer_clearDiagnosticsState_completionHandler___block_invoke;
  v63 = &unk_1E83BE1A8;
  selfCopy = self;
  v35 = handlerCopy;
  v65 = v35;
  v8 = v7;
  v9 = v61;
  connection = [(FPDXPCServicer *)self connection];
  v11 = [connection fp_hasOneOfEntitlements:v8];

  if ((v11 & 1) == 0)
  {
    v32 = FPNotPermittedError();
    v62(v9, v32);

    goto LABEL_22;
  }

  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];
  providerDomainsByID = [extensionManager providerDomainsByID];

  v14 = dispatch_group_create();
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__10;
  v59 = __Block_byref_object_dispose__10;
  v60 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  allValues = [providerDomainsByID allValues];
  v16 = [allValues countByEnumeratingWithState:&v47 objects:v66 count:16];
  if (!v16)
  {
    goto LABEL_20;
  }

  v17 = *v48;
  do
  {
    v18 = 0;
    do
    {
      if (*v48 != v17)
      {
        objc_enumerationMutation(allValues);
      }

      v19 = *(*(&v47 + 1) + 8 * v18);
      if (!stateCopy || ([*(*(&v47 + 1) + 8 * v18) identifier], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(stateCopy, "isEqualToString:", v20), v20, (v21 & 1) != 0))
      {
        if ([v19 isUsingFPFS])
        {
          v46 = 0;
          server2 = [(FPDXPCServicer *)self server];
          extensionManager2 = [server2 extensionManager];
          identifier = [v19 identifier];
          v25 = [extensionManager2 domainWithID:identifier reason:&v46];

          if (v25)
          {
            *(v52 + 24) = 1;
            dispatch_group_enter(v14);
            defaultBackend = [v25 defaultBackend];
            v42[0] = MEMORY[0x1E69E9820];
            v42[1] = 3221225472;
            v42[2] = __58__FPDXPCServicer_clearDiagnosticsState_completionHandler___block_invoke_252;
            v42[3] = &unk_1E83C03D8;
            v43 = stateCopy;
            v45 = &v55;
            v44 = v14;
            [defaultBackend clearDiagnosticState:v42];

            v27 = v43;
          }

          else
          {
            if (!stateCopy)
            {
LABEL_17:

              goto LABEL_18;
            }

            v30 = FPProviderNotFoundError();
            v27 = v56[5];
            v56[5] = v30;
          }

          goto LABEL_17;
        }

        if (stateCopy)
        {
          v28 = FPNotSupportedError();
          v29 = v56[5];
          v56[5] = v28;
        }
      }

LABEL_18:
      ++v18;
    }

    while (v16 != v18);
    v16 = [allValues countByEnumeratingWithState:&v47 objects:v66 count:16];
  }

  while (v16);
LABEL_20:

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__FPDXPCServicer_clearDiagnosticsState_completionHandler___block_invoke_2;
  block[3] = &unk_1E83C0400;
  v40 = &v55;
  block[4] = self;
  v39 = v35;
  v38 = stateCopy;
  v41 = &v51;
  dispatch_group_notify(v14, queue, block);

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);

LABEL_22:
  v33 = *MEMORY[0x1E69E9840];
}

void __58__FPDXPCServicer_clearDiagnosticsState_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer clearDiagnosticsState:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __58__FPDXPCServicer_clearDiagnosticsState_completionHandler___block_invoke_252(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4 && (*(a1 + 32) || ([v4 fp_isCocoaErrorCode:3328] & 1) == 0))
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __58__FPDXPCServicer_clearDiagnosticsState_completionHandler___block_invoke_2(void *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*(*(a1[7] + 8) + 40))
  {
    v2 = *(a1[4] + 24);
    v31 = fpfs_adopt_log();
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v18 = a1[6];
      v19 = FPPopLogSectionForBlock();
      v20 = a1[4];
      v21 = *(*(a1[7] + 8) + 40);
      *buf = 134218754;
      v33 = v19;
      v34 = 2112;
      v35 = v20;
      v36 = 2080;
      v37 = "[FPDXPCServicer clearDiagnosticsState:completionHandler:]_block_invoke_2";
      v38 = 2112;
      v39 = v21;
      _os_log_debug_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v4 = *(*(a1[7] + 8) + 40);
    (*(a1[6] + 16))();
    __fp_pop_log();
  }

  else if (a1[5] && (*(*(a1[8] + 8) + 24) & 1) == 0)
  {
    v12 = *(a1[4] + 24);
    v31 = fpfs_adopt_log();
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v25 = a1[6];
      v26 = FPPopLogSectionForBlock();
      v28 = a1[4];
      v27 = a1[5];
      v29 = FPProviderNotFoundError();
      *buf = 134218754;
      v33 = v26;
      v34 = 2112;
      v35 = v28;
      v36 = 2080;
      v37 = "[FPDXPCServicer clearDiagnosticsState:completionHandler:]_block_invoke";
      v38 = 2112;
      v39 = v29;
      _os_log_debug_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v14 = a1[5];
    v15 = a1[6];
    v16 = FPProviderNotFoundError();
    (*(v15 + 16))(v15, v16);

    __fp_pop_log();
  }

  else
  {
    v5 = [MEMORY[0x1E695DFF8] fp_supportDirectory];
    v6 = [v5 URLByAppendingPathComponent:@"resources/FPFeedbackManagerState"];

    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v30 = 0;
    v8 = [v7 removeItemAtURL:v6 error:&v30];
    v9 = v30;

    if ((v8 & 1) == 0 && (([v9 fp_isCocoaErrorCode:4] & 1) != 0 || objc_msgSend(v9, "fp_isCocoaErrorCode:", 260)))
    {

      v9 = 0;
    }

    v10 = *(a1[4] + 24);
    v31 = fpfs_adopt_log();
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v22 = a1[6];
      v23 = FPPopLogSectionForBlock();
      v24 = a1[4];
      *buf = 134218754;
      v33 = v23;
      v34 = 2112;
      v35 = v24;
      v36 = 2080;
      v37 = "[FPDXPCServicer clearDiagnosticsState:completionHandler:]_block_invoke";
      v38 = 2112;
      v39 = v9;
      _os_log_debug_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    (*(a1[6] + 16))();
    __fp_pop_log();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)validateDiagnosticsJson:(id)json completionHandler:(id)handler
{
  v43[2] = *MEMORY[0x1E69E9840];
  jsonCopy = json;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E69675D8];
  v43[0] = *MEMORY[0x1E6967558];
  v43[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v29 = __60__FPDXPCServicer_validateDiagnosticsJson_completionHandler___block_invoke;
  v30 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v32 = v10;
  v11 = v9;
  v12 = v28;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    if (fpfs_is_internal_build())
    {
      v15 = [_TtC18FileProviderDaemon22FPDiagnosticSignatures validateJSONSignaturesWithJsonString:jsonCopy];
      log = self->_log;
      v26 = fpfs_adopt_log();
      v17 = fp_current_or_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v25 = FPPopLogSectionForBlock();
        *buf = 134219010;
        v34 = v25;
        v35 = 2112;
        selfCopy3 = self;
        v37 = 2080;
        v38 = "[FPDXPCServicer validateDiagnosticsJson:completionHandler:]";
        v39 = 2112;
        v40 = v15;
        v41 = 2112;
        v42 = 0;
        _os_log_debug_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      (*(v10 + 2))(v10, v15, 0);
      __fp_pop_log();
    }

    else
    {
      v19 = self->_log;
      v27 = fpfs_adopt_log();
      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v23 = FPPopLogSectionForBlock();
        v24 = FPNotSupportedError();
        *buf = 134219010;
        v34 = v23;
        v35 = 2112;
        selfCopy3 = self;
        v37 = 2080;
        v38 = "[FPDXPCServicer validateDiagnosticsJson:completionHandler:]";
        v39 = 2112;
        v40 = 0;
        v41 = 2112;
        v42 = v24;
        _os_log_debug_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v21 = FPNotSupportedError();
      (*(v10 + 2))(v10, 0, v21);

      __fp_pop_log();
    }
  }

  else
  {
    v18 = FPNotPermittedError();
    v29(v12, v18);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __60__FPDXPCServicer_validateDiagnosticsJson_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer validateDiagnosticsJson:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)checkErrorAgainstDiagnosticsJson:(id)json inputError:(id)error errorDirection:(id)direction jobCode:(id)code underlying:(id)underlying completionHandler:(id)handler
{
  v61[2] = *MEMORY[0x1E69E9840];
  jsonCopy = json;
  errorCopy = error;
  directionCopy = direction;
  codeCopy = code;
  underlyingCopy = underlying;
  handlerCopy = handler;
  v18 = *MEMORY[0x1E69675D8];
  v61[0] = *MEMORY[0x1E6967558];
  v61[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v47 = __114__FPDXPCServicer_checkErrorAgainstDiagnosticsJson_inputError_errorDirection_jobCode_underlying_completionHandler___block_invoke;
  v48 = &unk_1E83BE1A8;
  selfCopy = self;
  v20 = handlerCopy;
  v50 = v20;
  v21 = v19;
  v22 = v46;
  connection = [(FPDXPCServicer *)self connection];
  v24 = [connection fp_hasOneOfEntitlements:v21];

  if (v24)
  {

    if (fpfs_is_internal_build())
    {
      v25 = [_TtC18FileProviderDaemon22FPDiagnosticSignatures validateJSONSignaturesWithJsonString:jsonCopy];
      v26 = [v25 count] == 0;

      if (v26)
      {
        log = self->_log;
        v44 = fpfs_adopt_log();
        v34 = fp_current_or_default_log();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          FPPopLogSectionForBlock();
          [FPDXPCServicer checkErrorAgainstDiagnosticsJson:inputError:errorDirection:jobCode:underlying:completionHandler:];
        }

        (*(v20 + 2))(v20, @"Invalid or empty JSON", 0);
        __fp_pop_log();
      }

      else if ([_TtC18FileProviderDaemon22FPDiagnosticSignatures isErrorMatchingSignaturesWithJsonString:jsonCopy error:errorCopy direction:directionCopy jobCode:codeCopy underlying:underlyingCopy])
      {
        v27 = self->_log;
        v42 = fpfs_adopt_log();
        v28 = fp_current_or_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          FPPopLogSectionForBlock();
          [FPDXPCServicer checkErrorAgainstDiagnosticsJson:inputError:errorDirection:jobCode:underlying:completionHandler:];
        }

        (*(v20 + 2))(v20, @"Error matching", 0);
        __fp_pop_log();
      }

      else
      {
        v35 = self->_log;
        v45 = fpfs_adopt_log();
        v36 = fp_current_or_default_log();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          FPPopLogSectionForBlock();
          [FPDXPCServicer checkErrorAgainstDiagnosticsJson:inputError:errorDirection:jobCode:underlying:completionHandler:];
        }

        (*(v20 + 2))(v20, @"Error not matching", 0);
        __fp_pop_log();
      }
    }

    else
    {
      v30 = self->_log;
      v43 = fpfs_adopt_log();
      v31 = fp_current_or_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v38 = FPPopLogSectionForBlock();
        v39 = FPNotSupportedError();
        *buf = 134219010;
        v52 = v38;
        v53 = 2112;
        selfCopy2 = self;
        v55 = 2080;
        v56 = "[FPDXPCServicer checkErrorAgainstDiagnosticsJson:inputError:errorDirection:jobCode:underlying:completionHandler:]";
        v57 = 2112;
        v58 = 0;
        v59 = 2112;
        v60 = v39;
        _os_log_debug_impl(&dword_1CEFC7000, v31, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v32 = FPNotSupportedError();
      (*(v20 + 2))(v20, 0, v32);

      __fp_pop_log();
    }
  }

  else
  {
    v29 = FPNotPermittedError();
    v47(v22, v29);
  }

  v37 = *MEMORY[0x1E69E9840];
}

void __114__FPDXPCServicer_checkErrorAgainstDiagnosticsJson_inputError_errorDirection_jobCode_underlying_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer checkErrorAgainstDiagnosticsJson:inputError:errorDirection:jobCode:underlying:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)backUpUserURL:(id)l outputUserURL:(id)rL completionHandler:(id)handler
{
  v17[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  handlerCopy = handler;
  connection = [(FPDXPCServicer *)self connection];
  v17[0] = *MEMORY[0x1E6967588];
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v13 = [connection fp_hasOneOfEntitlements:v12 nonSandboxedAccess:0 logLevel:2];

  if (v13)
  {
    server = [(FPDXPCServicer *)self server];
    v15 = [objc_alloc(objc_msgSend(server "fpfsSQLBackupManagerClass"))];

    [v15 backUpWithCompletionHandler:handlerCopy];
  }

  else
  {
    v15 = FPNotPermittedError();
    handlerCopy[2](handlerCopy, 0, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)resolveConflictAtURL:(id)l completionHandler:(id)handler
{
  v47 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v36 = __57__FPDXPCServicer_resolveConflictAtURL_completionHandler___block_invoke;
  v37 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v39 = v8;
  selfCopy2 = self;
  v10 = lCopy;
  v11 = v35;
  if (!v10)
  {
    v23 = FPInvalidParameterError();
LABEL_14:
    v28 = v23;
    v36(v11, v23);

    goto LABEL_15;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v13 = [connection fp_hasSandboxAccessToFile:v10 accessType:*MEMORY[0x1E6966DA8] logLevel:0];

  if ((v13 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    *buf = *MEMORY[0x1E6967560];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v16 = [connection2 fp_hasOneOfEntitlements:v15 nonSandboxedAccess:0 logLevel:0];

    if ((v16 & 1) == 0)
    {
      v23 = FPNotPermittedError();
      goto LABEL_14;
    }
  }

  server = [(FPDXPCServicer *)selfCopy2 server];
  extensionManager = [server extensionManager];
  v19 = [extensionManager domainForURL:v10 reason:0];

  if (v19)
  {
    defaultBackend = [v19 defaultBackend];
    connection3 = [(FPDXPCServicer *)selfCopy2 connection];
    v22 = [FPDRequest requestForXPCConnection:connection3];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __57__FPDXPCServicer_resolveConflictAtURL_completionHandler___block_invoke_267;
    v32[3] = &unk_1E83BE1A8;
    v32[4] = selfCopy2;
    v33 = v8;
    [defaultBackend resolveConflictAtURL:v10 request:v22 completionHandler:v32];
  }

  else
  {
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer resolveConflictAtURL:v10 completionHandler:?];
    }

    log = selfCopy2->_log;
    v34 = fpfs_adopt_log();
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v30 = FPPopLogSectionForBlock();
      v31 = FPProviderNotFoundErrorForURL();
      *buf = 134218754;
      *&buf[4] = v30;
      v41 = 2112;
      v42 = selfCopy2;
      v43 = 2080;
      v44 = "[FPDXPCServicer resolveConflictAtURL:completionHandler:]";
      v45 = 2112;
      v46 = v31;
      _os_log_debug_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v27 = FPProviderNotFoundErrorForURL();
    (*(v8 + 2))(v8, v27);

    __fp_pop_log();
  }

LABEL_15:
  v29 = *MEMORY[0x1E69E9840];
}

void __57__FPDXPCServicer_resolveConflictAtURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer resolveConflictAtURL:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __57__FPDXPCServicer_resolveConflictAtURL_completionHandler___block_invoke_267(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer resolveConflictAtURL:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __88__FPDXPCServicer_listRemoteVersionsOfItemAtURL_includeCachedVersions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219266;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer listRemoteVersionsOfItemAtURL:includeCachedVersions:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = 0;
    v21 = 2112;
    v22 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __88__FPDXPCServicer_listRemoteVersionsOfItemAtURL_includeCachedVersions_completionHandler___block_invoke_268(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 24);
  v16 = fpfs_adopt_log();
  v11 = fp_current_or_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 40);
    v14 = FPPopLogSectionForBlock();
    v15 = *(a1 + 32);
    *buf = 134219266;
    v18 = v14;
    v19 = 2112;
    v20 = v15;
    v21 = 2080;
    v22 = "[FPDXPCServicer listRemoteVersionsOfItemAtURL:includeCachedVersions:completionHandler:]_block_invoke";
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    _os_log_debug_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addDomain:(id)domain forProviderIdentifier:(id)identifier byImportingDirectoryAtURL:(id)l nonWrappedURL:(id)rL userAllowedDBDrop:(BOOL)drop knownFolders:(id)folders completionHandler:(id)handler
{
  dropCopy = drop;
  v192[1] = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  identifierCopy = identifier;
  lCopy = l;
  rLCopy = rL;
  foldersCopy = folders;
  handlerCopy = handler;
  v177[0] = MEMORY[0x1E69E9820];
  v177[1] = 3221225472;
  v178 = __139__FPDXPCServicer_addDomain_forProviderIdentifier_byImportingDirectoryAtURL_nonWrappedURL_userAllowedDBDrop_knownFolders_completionHandler___block_invoke;
  v179 = &unk_1E83BE1A8;
  selfCopy = self;
  v16 = handlerCopy;
  v181 = v16;
  selfCopy2 = self;
  v18 = v177;
  v182 = 0;
  v151 = identifierCopy;
  v19 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:identifierCopy enumerateEntitlementRequired:1 error:&v182];
  v20 = v182;
  if (!v19)
  {
    v178(v18, v20);
LABEL_7:
    v155 = 0;
    goto LABEL_9;
  }

  if ([v19 invalidated])
  {
    v21 = fp_current_or_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v19;
      _os_log_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
    }

    v22 = MEMORY[0x1E696AEC0];
    identifier = [v19 identifier];
    v24 = [v22 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

    v25 = FPProviderNotRegistered();
    v178(v18, v25);

    goto LABEL_7;
  }

  v155 = v19;
LABEL_9:

  if (!v155)
  {
    goto LABEL_86;
  }

  volumeUUID = [domainCopy volumeUUID];
  if (volumeUUID)
  {
    IsEnabled = FPFeatureFlagEbihilIsEnabled();

    if (IsEnabled)
    {
      WeakRetained = objc_loadWeakRetained(&selfCopy2->_server);
      volumeManager = [WeakRetained volumeManager];
      volumeUUID2 = [domainCopy volumeUUID];
      v176 = 0;
      v31 = [volumeManager libraryForVolume:volumeUUID2 createIfNeeded:1 error:&v176];
      v32 = v176;

      if (v31)
      {
        if ([v31 role] != 3)
        {
          goto LABEL_19;
        }

        domainsByID = [v155 domainsByID];
        identifier2 = [domainCopy identifier];
        v35 = [domainsByID objectForKeyedSubscript:identifier2];
        v36 = v35 == 0;

        if (!v36)
        {
          goto LABEL_19;
        }

        rootURL = [v31 rootURL];
        v171[0] = MEMORY[0x1E69E9820];
        v171[1] = 3221225472;
        v172 = __139__FPDXPCServicer_addDomain_forProviderIdentifier_byImportingDirectoryAtURL_nonWrappedURL_userAllowedDBDrop_knownFolders_completionHandler___block_invoke_270;
        v173 = &unk_1E83BE1A8;
        v174 = selfCopy2;
        v175 = v16;
        v37 = selfCopy2;
        v38 = v171;
        if (rootURL)
        {
          connection = [(FPDXPCServicer *)v37 connection];
          v40 = [connection fp_hasSandboxAccessToFile:rootURL logLevel:0];

          if (v40)
          {
            goto LABEL_18;
          }

          connection2 = [(FPDXPCServicer *)v37 connection];
          *buf = *MEMORY[0x1E6967560];
          v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
          v43 = [connection2 fp_hasOneOfEntitlements:v42 nonSandboxedAccess:0 logLevel:0];

          if (v43)
          {
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v124 = FPNotPermittedWriteError();
        }

        else
        {
          v124 = FPInvalidParameterError();
        }

        v129 = v124;
        v172(v38, v124);
      }

      else
      {
        volumeUUID3 = [domainCopy volumeUUID];
        fp_UUID = [volumeUUID3 fp_UUID];
        v77 = [fp_UUID isEqualToString:*MEMORY[0x1E69675C0]];

        if (v77)
        {
          v78 = fp_current_or_default_log();
          if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
          {
            [FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:];
          }
        }

        log = selfCopy2->_log;
        v182 = fpfs_adopt_log();
        v80 = fp_current_or_default_log();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
        {
          v128 = FPPopLogSectionForBlock();
          *buf = 134219010;
          *&buf[4] = v128;
          *&buf[12] = 2112;
          *&buf[14] = selfCopy2;
          *&buf[22] = 2080;
          *&buf[24] = "[FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:]";
          v184 = 2112;
          *v185 = 0;
          *&v185[8] = 2112;
          v186 = v32;
          _os_log_debug_impl(&dword_1CEFC7000, v80, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        (*(v16 + 2))(v16, 0, v32);
        __fp_pop_log();
      }

      goto LABEL_86;
    }
  }

LABEL_20:
  if ([domainCopy testingModes])
  {
    connection3 = [(FPDXPCServicer *)selfCopy2 connection];
    v192[0] = *MEMORY[0x1E69675A8];
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v192 count:1];
    v46 = [connection3 fp_hasOneOfEntitlements:v45 nonSandboxedAccess:0 logLevel:2];

    if ((v46 & 1) == 0)
    {
      v59 = selfCopy2->_log;
      v182 = fpfs_adopt_log();
      v60 = fp_current_or_default_log();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        v122 = FPPopLogSectionForBlock();
        v123 = FPNotPermittedError();
        *buf = 134219010;
        *&buf[4] = v122;
        *&buf[12] = 2112;
        *&buf[14] = selfCopy2;
        *&buf[22] = 2080;
        *&buf[24] = "[FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:]";
        v184 = 2112;
        *v185 = 0;
        *&v185[8] = 2112;
        v186 = v123;
        _os_log_debug_impl(&dword_1CEFC7000, v60, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v61 = FPNotPermittedError();
      (*(v16 + 2))(v16, 0, v61);

      __fp_pop_log();
      goto LABEL_86;
    }
  }

  v47 = [lCopy url];
  startAccessingSecurityScopedResource = [v47 startAccessingSecurityScopedResource];

  if (!lCopy)
  {
    if (rLCopy)
    {
      v62 = MEMORY[0x1E696ABC0];
      v190 = *MEMORY[0x1E696A998];
      v191 = rLCopy;
      v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v191 forKeys:&v190 count:1];
      v58 = [v62 errorWithDomain:*MEMORY[0x1E696A250] code:513 userInfo:v63];

      if (([rLCopy isFileURL] & 1) == 0)
      {
        v92 = fp_current_or_default_log();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          [FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:];
        }

        v93 = selfCopy2->_log;
        v182 = fpfs_adopt_log();
        v73 = fp_current_or_default_log();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
        {
          v130 = FPPopLogSectionForBlock();
          *buf = 134219010;
          *&buf[4] = v130;
          *&buf[12] = 2112;
          *&buf[14] = selfCopy2;
          *&buf[22] = 2080;
          *&buf[24] = "[FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:]";
          v184 = 2112;
          *v185 = 0;
          *&v185[8] = 2112;
          v186 = v58;
          _os_log_debug_impl(&dword_1CEFC7000, v73, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        goto LABEL_73;
      }

      identifier3 = [v155 identifier];
      v65 = [identifier3 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProvider"];

      if ((v65 & 1) == 0)
      {
        v95 = fp_current_or_default_log();
        if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
        {
          [FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:];
        }

        v96 = selfCopy2->_log;
        v182 = fpfs_adopt_log();
        v73 = fp_current_or_default_log();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
        {
          v131 = FPPopLogSectionForBlock();
          *buf = 134219010;
          *&buf[4] = v131;
          *&buf[12] = 2112;
          *&buf[14] = selfCopy2;
          *&buf[22] = 2080;
          *&buf[24] = "[FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:]";
          v184 = 2112;
          *v185 = 0;
          *&v185[8] = 2112;
          v186 = v58;
          _os_log_debug_impl(&dword_1CEFC7000, v73, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        goto LABEL_73;
      }

      getpid();
      path = [rLCopy path];
      v67 = path;
      fileSystemRepresentation = [path fileSystemRepresentation];
      v69 = (*MEMORY[0x1E69E9BD0] | *MEMORY[0x1E69E9BC8]);
      v144 = fileSystemRepresentation;
      v70 = sandbox_check() == 0;

      if (!v70)
      {
        v71 = fp_current_or_default_log();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          [FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:];
        }

        v72 = selfCopy2->_log;
        v182 = fpfs_adopt_log();
        v73 = fp_current_or_default_log();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
        {
          v139 = FPPopLogSectionForBlock();
          *buf = 134219010;
          *&buf[4] = v139;
          *&buf[12] = 2112;
          *&buf[14] = selfCopy2;
          *&buf[22] = 2080;
          *&buf[24] = "[FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:]";
          v184 = 2112;
          *v185 = 0;
          *&v185[8] = 2112;
          v186 = v58;
          _os_log_debug_impl(&dword_1CEFC7000, v73, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

LABEL_73:

        (*(v16 + 2))(v16, 0, v58);
        __fp_pop_log();

LABEL_85:
        goto LABEL_86;
      }

      v125 = rLCopy;

      v58 = v125;
    }

    else
    {
      v58 = 0;
    }

LABEL_49:
    if ([foldersCopy count])
    {
      v81 = fp_current_or_default_log();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        [FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:];
      }

      v82 = selfCopy2->_log;
      v182 = fpfs_adopt_log();
      v83 = fp_current_or_default_log();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
      {
        v126 = FPPopLogSectionForBlock();
        v127 = FPNotSupportedError();
        *buf = 134219010;
        *&buf[4] = v126;
        *&buf[12] = 2112;
        *&buf[14] = selfCopy2;
        *&buf[22] = 2080;
        *&buf[24] = "[FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:]";
        v184 = 2112;
        *v185 = 0;
        *&v185[8] = 2112;
        v186 = v127;
        _os_log_debug_impl(&dword_1CEFC7000, v83, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v84 = FPNotSupportedError();
      (*(v16 + 2))(v16, 0, v84);

      __fp_pop_log();
    }

    else
    {
      if (([v151 isEqualToString:@"com.apple.filesystems.UserFS.FileProvider"] & 1) != 0 || objc_msgSend(v151, "isEqualToString:", @"com.apple.SMBClientProvider.FileProvider"))
      {
        mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
        currentPersona = [mEMORY[0x1E69DF068] currentPersona];

        v163 = 0;
        v146 = [currentPersona copyCurrentPersonaContextWithError:&v163];
        v87 = v163;
        if (v87)
        {
          v88 = fp_current_or_default_log();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            [FPDServer migrateLegacyFPFSLocations];
          }
        }

        descriptor = [v155 descriptor];
        personaIdentifier = [descriptor personaIdentifier];
        v91 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:personaIdentifier];
      }

      else
      {
        v146 = 0;
      }

      mEMORY[0x1E69DF068]2 = [MEMORY[0x1E69DF068] sharedManager];
      currentPersona2 = [mEMORY[0x1E69DF068]2 currentPersona];

      [domainCopy setIsEnterpriseDomain:{objc_msgSend(currentPersona2, "isEnterprisePersona")}];
      [domainCopy setIsDataSeparatedDomain:{objc_msgSend(currentPersona2, "isDataSeparatedPersona")}];
      userPersonaUniqueString = [currentPersona2 userPersonaUniqueString];
      [domainCopy setPersonaIdentifier:userPersonaUniqueString];

      personaIdentifier2 = [domainCopy personaIdentifier];

      if (!personaIdentifier2)
      {
        goto LABEL_77;
      }

      personaIdentifier3 = [domainCopy personaIdentifier];
      descriptor2 = [v155 descriptor];
      personaIdentifier4 = [descriptor2 personaIdentifier];
      v103 = [personaIdentifier3 isEqual:personaIdentifier4];

      if ((v103 & 1) == 0)
      {
        v114 = fp_current_or_default_log();
        if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
        {
          v132 = objc_loadWeakRetained(&selfCopy2->_connection);
          v133 = v132;
          if (v132)
          {
            [v132 auditToken];
          }

          else
          {
            memset(buf, 0, sizeof(buf));
          }

          v140 = FPExecutableNameForAuditToken();
          descriptor3 = [v155 descriptor];
          personaIdentifier5 = [descriptor3 personaIdentifier];
          personaIdentifier6 = [domainCopy personaIdentifier];
          *buf = 138412802;
          *&buf[4] = v140;
          *&buf[12] = 2112;
          *&buf[14] = personaIdentifier5;
          *&buf[22] = 2112;
          *&buf[24] = personaIdentifier6;
          _os_log_error_impl(&dword_1CEFC7000, v114, OS_LOG_TYPE_ERROR, "[ERROR] %@ called fileproviderd to add a domain for an extension with persona %@ while running in persona %@", buf, 0x20u);
        }

        v115 = selfCopy2->_log;
        v182 = fpfs_adopt_log();
        v116 = fp_current_or_default_log();
        if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
        {
          v134 = FPPopLogSectionForBlock();
          personaIdentifier7 = [domainCopy personaIdentifier];
          descriptor4 = [v155 descriptor];
          personaIdentifier8 = [descriptor4 personaIdentifier];
          v138 = FPInvalidParameterErrorWithExpectation();
          *buf = 134219010;
          *&buf[4] = v134;
          *&buf[12] = 2112;
          *&buf[14] = selfCopy2;
          *&buf[22] = 2080;
          *&buf[24] = "[FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:]";
          v184 = 2112;
          *v185 = 0;
          *&v185[8] = 2112;
          v186 = v138;
          _os_log_debug_impl(&dword_1CEFC7000, v116, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        personaIdentifier9 = [domainCopy personaIdentifier];
        descriptor5 = [v155 descriptor];
        personaIdentifier10 = [descriptor5 personaIdentifier];
        v120 = FPInvalidParameterErrorWithExpectation();
        (*(v16 + 2))(v16, 0, v120);

        __fp_pop_log();
      }

      else
      {
LABEL_77:
        v104 = fp_current_or_default_log();
        if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
        {
          v105 = [domainCopy description];
          fp_shortDescription = [v58 fp_shortDescription];
          personaIdentifier11 = [domainCopy personaIdentifier];
          isPersonalPersona = [currentPersona2 isPersonalPersona];
          isEnterprisePersona = [currentPersona2 isEnterprisePersona];
          isDefaultPersona = [currentPersona2 isDefaultPersona];
          isSystemPersona = [currentPersona2 isSystemPersona];
          userPersonaType = [currentPersona2 userPersonaType];
          *buf = 138414082;
          *&buf[4] = v105;
          *&buf[12] = 2112;
          *&buf[14] = fp_shortDescription;
          *&buf[22] = 2112;
          *&buf[24] = personaIdentifier11;
          v184 = 1024;
          *v185 = isPersonalPersona;
          *&v185[4] = 1024;
          *&v185[6] = isEnterprisePersona;
          LOWORD(v186) = 1024;
          *(&v186 + 2) = isDefaultPersona;
          HIWORD(v186) = 1024;
          v187 = isSystemPersona;
          v188 = 2048;
          v189 = userPersonaType;
          _os_log_impl(&dword_1CEFC7000, v104, OS_LOG_TYPE_INFO, "[INFO] Adding domain %@ at URL %@ with persona unique string:'%@', perso:%{BOOL}d ent:%{BOOL}d def:%{BOOL}d sys:%{BOOL}d type:%lu", buf, 0x42u);
        }

        v162 = v146;
        _FPRestorePersona();
        v112 = v146;

        v113 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
        v157[0] = MEMORY[0x1E69E9820];
        v157[1] = 3221225472;
        v157[2] = __139__FPDXPCServicer_addDomain_forProviderIdentifier_byImportingDirectoryAtURL_nonWrappedURL_userAllowedDBDrop_knownFolders_completionHandler___block_invoke_284;
        v157[3] = &unk_1E83C0478;
        v161 = startAccessingSecurityScopedResource;
        v158 = lCopy;
        v159 = selfCopy2;
        v160 = v16;
        [v155 addDomain:domainCopy byImportingDirectoryAtURL:v58 userAllowedDBDrop:dropCopy knownFolders:foldersCopy request:v113 completionHandler:v157];

        v146 = v112;
      }
    }

    goto LABEL_85;
  }

  v48 = [lCopy url];
  v164[0] = MEMORY[0x1E69E9820];
  v164[1] = 3221225472;
  v165 = __139__FPDXPCServicer_addDomain_forProviderIdentifier_byImportingDirectoryAtURL_nonWrappedURL_userAllowedDBDrop_knownFolders_completionHandler___block_invoke_271;
  v166 = &unk_1E83C0450;
  v170 = startAccessingSecurityScopedResource;
  v49 = lCopy;
  v167 = v49;
  v168 = selfCopy2;
  v169 = v16;
  v50 = selfCopy2;
  v51 = v48;
  v52 = v164;
  if (v51)
  {
    connection4 = [(FPDXPCServicer *)v50 connection];
    v54 = [connection4 fp_hasSandboxAccessToFile:v51 logLevel:0];

    if (v54)
    {
      goto LABEL_26;
    }

    connection5 = [(FPDXPCServicer *)v50 connection];
    *buf = *MEMORY[0x1E6967560];
    v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v57 = [connection5 fp_hasOneOfEntitlements:v56 nonSandboxedAccess:0 logLevel:0];

    if (v57)
    {
LABEL_26:

      v58 = [v49 url];
      goto LABEL_49;
    }

    v74 = FPNotPermittedWriteError();
  }

  else
  {
    v74 = FPInvalidParameterError();
  }

  v94 = v74;
  v165(v52, v74);

LABEL_86:
  v121 = *MEMORY[0x1E69E9840];
}

void __139__FPDXPCServicer_addDomain_forProviderIdentifier_byImportingDirectoryAtURL_nonWrappedURL_userAllowedDBDrop_knownFolders_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __139__FPDXPCServicer_addDomain_forProviderIdentifier_byImportingDirectoryAtURL_nonWrappedURL_userAllowedDBDrop_knownFolders_completionHandler___block_invoke_270(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __139__FPDXPCServicer_addDomain_forProviderIdentifier_byImportingDirectoryAtURL_nonWrappedURL_userAllowedDBDrop_knownFolders_completionHandler___block_invoke_271(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 56) == 1)
  {
    v4 = [*(a1 + 32) url];
    [v4 stopAccessingSecurityScopedResource];
  }

  v5 = *(*(a1 + 40) + 24);
  v11 = fpfs_adopt_log();
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 48);
    v9 = FPPopLogSectionForBlock();
    v10 = *(a1 + 40);
    *buf = 134219010;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2080;
    v17 = "[FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:]_block_invoke";
    v18 = 2112;
    v19 = 0;
    v20 = 2112;
    v21 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log();

  v7 = *MEMORY[0x1E69E9840];
}

void __139__FPDXPCServicer_addDomain_forProviderIdentifier_byImportingDirectoryAtURL_nonWrappedURL_userAllowedDBDrop_knownFolders_completionHandler___block_invoke_284(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 56) == 1)
  {
    v7 = [*(a1 + 32) url];
    [v7 stopAccessingSecurityScopedResource];
  }

  if (!v6)
  {
    v8 = [*(a1 + 40) server];
    [v8 signalProviderChanges];
  }

  v9 = *(*(a1 + 40) + 24);
  v15 = fpfs_adopt_log();
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 48);
    v13 = FPPopLogSectionForBlock();
    v14 = *(a1 + 40);
    *buf = 134219010;
    v17 = v13;
    v18 = 2112;
    v19 = v14;
    v20 = 2080;
    v21 = "[FPDXPCServicer addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:]_block_invoke";
    v22 = 2112;
    v23 = v5;
    v24 = 2112;
    v25 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log();

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeDomainAndPreserveDataWithID:(id)d mode:(unint64_t)mode completionHandler:(id)handler
{
  v41 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  fp_toProviderID = [dCopy fp_toProviderID];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v34 = __75__FPDXPCServicer_removeDomainAndPreserveDataWithID_mode_completionHandler___block_invoke;
  v35 = &unk_1E83BE1A8;
  selfCopy = self;
  v11 = handlerCopy;
  v37 = v11;
  selfCopy2 = self;
  v13 = v33;
  v38 = 0;
  v14 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:fp_toProviderID enumerateEntitlementRequired:1 error:&v38];
  v15 = v38;
  if (v14)
  {
    if ([v14 invalidated])
    {
      modeCopy = mode;
      v16 = fp_current_or_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v40 = v14;
        _os_log_impl(&dword_1CEFC7000, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
      }

      v17 = MEMORY[0x1E696AEC0];
      identifier = [v14 identifier];
      v19 = [v17 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

      v20 = FPProviderNotRegistered();
      v34(v13, v20);

      v21 = 0;
      mode = modeCopy;
    }

    else
    {
      v21 = v14;
    }
  }

  else
  {
    v34(v13, v15);
    v21 = 0;
  }

  if (v21)
  {
    v22 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
    fp_toDomainIdentifier = [dCopy fp_toDomainIdentifier];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __75__FPDXPCServicer_removeDomainAndPreserveDataWithID_mode_completionHandler___block_invoke_285;
    v27[3] = &unk_1E83C04A0;
    v27[4] = selfCopy2;
    v31 = v11;
    v28 = v21;
    modeCopy2 = mode;
    v29 = dCopy;
    v30 = v22;
    v24 = v22;
    [(FPDXPCServicer *)selfCopy2 prepareRemovalOfDomainWithIdentifier:fp_toDomainIdentifier provider:v28 request:v24 completionHandler:v27];
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __75__FPDXPCServicer_removeDomainAndPreserveDataWithID_mode_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer removeDomainAndPreserveDataWithID:mode:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __75__FPDXPCServicer_removeDomainAndPreserveDataWithID_mode_completionHandler___block_invoke_285(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 24);
    v16 = fpfs_adopt_log();
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 64);
      v12 = FPPopLogSectionForBlock();
      v13 = *(a1 + 32);
      *buf = 134219010;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2080;
      v22 = "[FPDXPCServicer removeDomainAndPreserveDataWithID:mode:completionHandler:]_block_invoke";
      v23 = 2112;
      v24 = 0;
      v25 = 2112;
      v26 = v3;
      _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 64) + 16))();
    __fp_pop_log();
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) fp_toDomainIdentifier];
    v8 = *(a1 + 56);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __75__FPDXPCServicer_removeDomainAndPreserveDataWithID_mode_completionHandler___block_invoke_286;
    v14[3] = &unk_1E83C0270;
    v14[4] = *(a1 + 32);
    v9 = *(a1 + 72);
    v15 = *(a1 + 64);
    [v6 removeDomain:v7 mode:v9 request:v8 completionHandler:v14];
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __75__FPDXPCServicer_removeDomainAndPreserveDataWithID_mode_completionHandler___block_invoke_286(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = *(*(a1 + 32) + 24);
    v22 = fpfs_adopt_log();
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 40);
      v16 = FPPopLogSectionForBlock();
      v17 = *(a1 + 32);
      *buf = 134219010;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      v27 = 2080;
      v28 = "[FPDXPCServicer removeDomainAndPreserveDataWithID:mode:completionHandler:]_block_invoke";
      v29 = 2112;
      v30 = 0;
      v31 = 2112;
      v32 = v7;
      _os_log_debug_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log();
  }

  else
  {
    if (v5)
    {
      v21 = 0;
      v10 = [MEMORY[0x1E6967408] wrapperWithURL:v5 readonly:0 error:&v21];
      v7 = v21;
    }

    else
    {
      v10 = 0;
      v7 = 0;
    }

    v11 = [*(a1 + 32) server];
    [v11 signalProviderChanges];

    v12 = *(*(a1 + 32) + 24);
    v22 = fpfs_adopt_log();
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 40);
      v19 = FPPopLogSectionForBlock();
      v20 = *(a1 + 32);
      *buf = 134219010;
      v24 = v19;
      v25 = 2112;
      v26 = v20;
      v27 = 2080;
      v28 = "[FPDXPCServicer removeDomainAndPreserveDataWithID:mode:completionHandler:]_block_invoke";
      v29 = 2112;
      v30 = v10;
      v31 = 2112;
      v32 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)removeDomainWithID:(id)d mode:(unint64_t)mode completionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__FPDXPCServicer_removeDomainWithID_mode_completionHandler___block_invoke;
  v10[3] = &unk_1E83C04C8;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(FPDXPCServicer *)self removeDomainAndPreserveDataWithID:d mode:mode completionHandler:v10];
}

void __60__FPDXPCServicer_removeDomainWithID_mode_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v13 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    v11 = FPPopLogSectionForBlock();
    v12 = *(a1 + 32);
    *buf = 134218754;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2080;
    v19 = "[FPDXPCServicer removeDomainWithID:mode:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeDomain:(id)domain mode:(unint64_t)mode completionHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  handlerCopy = handler;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v32 = __54__FPDXPCServicer_removeDomain_mode_completionHandler___block_invoke;
  v33 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v35 = v10;
  selfCopy2 = self;
  v12 = v31;
  v36 = 0;
  v13 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:0 enumerateEntitlementRequired:1 error:&v36];
  v14 = v36;
  if (!v13)
  {
    v32(v12, v14);
LABEL_7:
    v20 = 0;
    goto LABEL_9;
  }

  if ([v13 invalidated])
  {
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v13;
      _os_log_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
    }

    v16 = MEMORY[0x1E696AEC0];
    identifier = [v13 identifier];
    v18 = [v16 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

    v19 = FPProviderNotRegistered();
    v32(v12, v19);

    goto LABEL_7;
  }

  v20 = v13;
LABEL_9:

  if (v20)
  {
    v21 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
    identifier2 = [domainCopy identifier];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __54__FPDXPCServicer_removeDomain_mode_completionHandler___block_invoke_287;
    v25[3] = &unk_1E83C04A0;
    v25[4] = selfCopy2;
    v29 = v10;
    v26 = v20;
    modeCopy = mode;
    v27 = domainCopy;
    v28 = v21;
    v23 = v21;
    [(FPDXPCServicer *)selfCopy2 prepareRemovalOfDomainWithIdentifier:identifier2 provider:v26 request:v23 completionHandler:v25];
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __54__FPDXPCServicer_removeDomain_mode_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer removeDomain:mode:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __54__FPDXPCServicer_removeDomain_mode_completionHandler___block_invoke_287(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 24);
    v16 = fpfs_adopt_log();
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 64);
      v12 = FPPopLogSectionForBlock();
      v13 = *(a1 + 32);
      *buf = 134219010;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2080;
      v22 = "[FPDXPCServicer removeDomain:mode:completionHandler:]_block_invoke";
      v23 = 2112;
      v24 = 0;
      v25 = 2112;
      v26 = v3;
      _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 64) + 16))();
    __fp_pop_log();
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) identifier];
    v8 = *(a1 + 56);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__FPDXPCServicer_removeDomain_mode_completionHandler___block_invoke_288;
    v14[3] = &unk_1E83C0270;
    v14[4] = *(a1 + 32);
    v9 = *(a1 + 72);
    v15 = *(a1 + 64);
    [v6 removeDomain:v7 mode:v9 request:v8 completionHandler:v14];
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __54__FPDXPCServicer_removeDomain_mode_completionHandler___block_invoke_288(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = *(*(a1 + 32) + 24);
    v22 = fpfs_adopt_log();
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 40);
      v16 = FPPopLogSectionForBlock();
      v17 = *(a1 + 32);
      *buf = 134219010;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      v27 = 2080;
      v28 = "[FPDXPCServicer removeDomain:mode:completionHandler:]_block_invoke";
      v29 = 2112;
      v30 = 0;
      v31 = 2112;
      v32 = v7;
      _os_log_debug_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log();
  }

  else
  {
    if (v5)
    {
      v21 = 0;
      v10 = [MEMORY[0x1E6967408] wrapperWithURL:v5 readonly:0 error:&v21];
      v7 = v21;
    }

    else
    {
      v10 = 0;
      v7 = 0;
    }

    v11 = [*(a1 + 32) server];
    [v11 signalProviderChanges];

    v12 = *(*(a1 + 32) + 24);
    v22 = fpfs_adopt_log();
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 40);
      v19 = FPPopLogSectionForBlock();
      v20 = *(a1 + 32);
      *buf = 134219010;
      v24 = v19;
      v25 = 2112;
      v26 = v20;
      v27 = 2080;
      v28 = "[FPDXPCServicer removeDomain:mode:completionHandler:]_block_invoke";
      v29 = 2112;
      v30 = v10;
      v31 = 2112;
      v32 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)removeDomain:(id)domain completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__FPDXPCServicer_removeDomain_completionHandler___block_invoke;
  v8[3] = &unk_1E83C04C8;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(FPDXPCServicer *)self removeDomain:domain mode:0 completionHandler:v8];
}

void __49__FPDXPCServicer_removeDomain_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v13 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    v11 = FPPopLogSectionForBlock();
    v12 = *(a1 + 32);
    *buf = 134218754;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2080;
    v19 = "[FPDXPCServicer removeDomain:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeAllDomainsForProviderIdentifier:(id)identifier completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v23 = __74__FPDXPCServicer_removeAllDomainsForProviderIdentifier_completionHandler___block_invoke;
  v24 = &unk_1E83BE1A8;
  selfCopy = self;
  v7 = handlerCopy;
  v26 = v7;
  selfCopy2 = self;
  v9 = v22;
  v27 = 0;
  v10 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:identifier enumerateEntitlementRequired:1 error:&v27];
  v11 = v27;
  if (!v10)
  {
    v23(v9, v11);
LABEL_7:
    v17 = 0;
    goto LABEL_9;
  }

  if ([v10 invalidated])
  {
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v10;
      _os_log_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
    }

    v13 = MEMORY[0x1E696AEC0];
    identifier = [v10 identifier];
    v15 = [v13 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

    v16 = FPProviderNotRegistered();
    v23(v9, v16);

    goto LABEL_7;
  }

  v17 = v10;
LABEL_9:

  if (v17)
  {
    v18 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __74__FPDXPCServicer_removeAllDomainsForProviderIdentifier_completionHandler___block_invoke_289;
    v20[3] = &unk_1E83BE1A8;
    v20[4] = selfCopy2;
    v21 = v7;
    [v17 removeAllDomainsForRequest:v18 completionHandler:v20];
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __74__FPDXPCServicer_removeAllDomainsForProviderIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer removeAllDomainsForProviderIdentifier:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __74__FPDXPCServicer_removeAllDomainsForProviderIdentifier_completionHandler___block_invoke_289(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 24);
    v14 = fpfs_adopt_log();
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 40);
      v12 = FPPopLogSectionForBlock();
      v13 = *(a1 + 32);
      *buf = 134218754;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2080;
      v21 = "[FPDXPCServicer removeAllDomainsForProviderIdentifier:completionHandler:]_block_invoke";
      v22 = 2112;
      v23 = v3;
      _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log();
  }

  else
  {
    v6 = [*(a1 + 32) server];
    [v6 signalProviderChanges];

    v7 = *(*(a1 + 32) + 24);
    v15 = fpfs_adopt_log();
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      FPPopLogSectionForBlock();
      __74__FPDXPCServicer_removeAllDomainsForProviderIdentifier_completionHandler___block_invoke_289_cold_1((a1 + 32));
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log();
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)_canBundleIDTriggerTTRForFailure:(id)failure
{
  failureCopy = failure;
  if (_canBundleIDTriggerTTRForFailure__onceToken != -1)
  {
    [FPDXPCServicer _canBundleIDTriggerTTRForFailure:];
  }

  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];
  updating = [extensionManager updating];

  if (updating)
  {
    LOBYTE(server2) = 0;
  }

  else
  {
    server2 = [(FPDXPCServicer *)self server];
    userIsLoggingOut = [server2 userIsLoggingOut];

    LOBYTE(server2) = 0;
    if (failureCopy && (userIsLoggingOut & 1) == 0)
    {
      LODWORD(server2) = [_canBundleIDTriggerTTRForFailure__expectedFailures containsObject:failureCopy] ^ 1;
    }
  }

  return server2;
}

void __51__FPDXPCServicer__canBundleIDTriggerTTRForFailure___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F4C62910];
  v1 = _canBundleIDTriggerTTRForFailure__expectedFailures;
  _canBundleIDTriggerTTRForFailure__expectedFailures = v0;
}

- (void)getDomainsForProviderIdentifier:(id)identifier completionHandler:(id)handler
{
  v47 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v31 = __68__FPDXPCServicer_getDomainsForProviderIdentifier_completionHandler___block_invoke;
  v32 = &unk_1E83BFA20;
  v33 = identifierCopy;
  selfCopy = self;
  v8 = handlerCopy;
  v35 = v8;
  selfCopy2 = self;
  v10 = v33;
  v11 = v30;
  v36 = 0;
  v12 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:v10 enumerateEntitlementRequired:1 error:&v36];
  v13 = v36;
  if (!v12)
  {
    v31(v11, v13);
LABEL_7:
    v19 = 0;
    goto LABEL_9;
  }

  if ([v12 invalidated])
  {
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v12;
      _os_log_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
    }

    v15 = MEMORY[0x1E696AEC0];
    identifier = [v12 identifier];
    v17 = [v15 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

    v18 = FPProviderNotRegistered();
    v31(v11, v18);

    goto LABEL_7;
  }

  v19 = v12;
LABEL_9:

  if (v19)
  {
    log = selfCopy2->_log;
    v36 = fpfs_adopt_log();
    v21 = fp_current_or_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v26 = FPPopLogSectionForBlock();
      identifier2 = [v19 identifier];
      nsDomainsByID = [v19 nsDomainsByID];
      allValues = [nsDomainsByID allValues];
      *buf = 134219010;
      v38 = v26;
      v39 = 2112;
      v40 = selfCopy2;
      v41 = 2080;
      v42 = "[FPDXPCServicer getDomainsForProviderIdentifier:completionHandler:]";
      v43 = 2112;
      v44 = identifier2;
      v45 = 2112;
      v46 = allValues;
      _os_log_debug_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    identifier3 = [v19 identifier];
    nsDomainsByID2 = [v19 nsDomainsByID];
    allValues2 = [nsDomainsByID2 allValues];
    (*(v8 + 2))(v8, identifier3, allValues2, 0);

    __fp_pop_log();
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __68__FPDXPCServicer_getDomainsForProviderIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__FPDXPCServicer_getDomainsForProviderIdentifier_completionHandler___block_invoke_cold_1(a1, v3);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
  v6 = [WeakRetained fp_bundleIdentifier];

  if (!*(a1 + 32) && [v3 fp_isFileProviderError:-2001] && objc_msgSend(*(a1 + 40), "_canBundleIDTriggerTTRForFailure:", v6))
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"A call from %@ to getDomainsForProviderIdentifier failed: %@", v6, v3];
    v8 = objc_opt_new();
    [v8 requestTapToRadarWithTitle:@"FileProvider API Issue: getDomainsForProviderIdentifier failed" description:v7 keywords:MEMORY[0x1E695E0F0] attachments:MEMORY[0x1E695E0F0] displayReason:@"a problem gathering domains occured" providerID:0];
  }

  v9 = *(*(a1 + 40) + 24);
  v15 = fpfs_adopt_log();
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 48);
    v13 = FPPopLogSectionForBlock();
    v14 = *(a1 + 40);
    *buf = 134219266;
    v17 = v13;
    v18 = 2112;
    v19 = v14;
    v20 = 2080;
    v21 = "[FPDXPCServicer getDomainsForProviderIdentifier:completionHandler:]_block_invoke";
    v22 = 2112;
    v23 = 0;
    v24 = 2112;
    v25 = 0;
    v26 = 2112;
    v27 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log();

  v11 = *MEMORY[0x1E69E9840];
}

void __86__FPDXPCServicer_setEnabled_forDomainIdentifier_providerIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer setEnabled:forDomainIdentifier:providerIdentifier:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __86__FPDXPCServicer_setEnabled_forDomainIdentifier_providerIdentifier_completionHandler___block_invoke_311(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) server];
  [v4 signalProviderChanges];

  v5 = *(*(a1 + 32) + 24);
  v11 = fpfs_adopt_log();
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 40);
    v9 = FPPopLogSectionForBlock();
    v10 = *(a1 + 32);
    *buf = 134218754;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2080;
    v17 = "[FPDXPCServicer setEnabled:forDomainIdentifier:providerIdentifier:completionHandler:]_block_invoke";
    v18 = 2112;
    v19 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v7 = *MEMORY[0x1E69E9840];
}

void __91__FPDXPCServicer_setHiddenByUser_forDomainIdentifier_providerIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer setHiddenByUser:forDomainIdentifier:providerIdentifier:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __91__FPDXPCServicer_setHiddenByUser_forDomainIdentifier_providerIdentifier_completionHandler___block_invoke_312(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) server];
  [v4 signalProviderChanges];

  v5 = *(*(a1 + 32) + 24);
  v11 = fpfs_adopt_log();
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 40);
    v9 = FPPopLogSectionForBlock();
    v10 = *(a1 + 32);
    *buf = 134218754;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2080;
    v17 = "[FPDXPCServicer setHiddenByUser:forDomainIdentifier:providerIdentifier:completionHandler:]_block_invoke";
    v18 = 2112;
    v19 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setIndexingEnabled:(BOOL)enabled forDomainIdentifier:(id)identifier providerIdentifier:(id)providerIdentifier completionHandler:(id)handler
{
  enabledCopy = enabled;
  v57 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  providerIdentifierCopy = providerIdentifier;
  handlerCopy = handler;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v44 = __94__FPDXPCServicer_setIndexingEnabled_forDomainIdentifier_providerIdentifier_completionHandler___block_invoke;
  v45 = &unk_1E83BE1A8;
  selfCopy = self;
  v12 = handlerCopy;
  v47 = v12;
  selfCopy2 = self;
  v14 = v43;
  v48 = 0;
  v15 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:providerIdentifierCopy enumerateEntitlementRequired:1 error:&v48];
  v16 = v48;
  if (!v15)
  {
    v44(v14, v16);
LABEL_7:
    v22 = 0;
    goto LABEL_9;
  }

  if ([v15 invalidated])
  {
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = v15;
      _os_log_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
    }

    v18 = MEMORY[0x1E696AEC0];
    identifier = [v15 identifier];
    v20 = [v18 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

    v21 = FPProviderNotRegistered();
    v44(v14, v21);

    goto LABEL_7;
  }

  v22 = v15;
LABEL_9:

  if (v22)
  {
    v48 = 0;
    v23 = [v22 domainForIdentifier:identifierCopy reason:&v48];
    v24 = v23;
    if (v23)
    {
      indexer = [v23 indexer];
      v26 = indexer == 0;

      if (v26)
      {
        log = selfCopy2->_log;
        v42 = fpfs_adopt_log();
        v32 = fp_current_or_default_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v37 = FPPopLogSectionForBlock();
          v38 = FPNotSupportedError();
          *buf = 134218754;
          v50 = v37;
          v51 = 2112;
          v52 = selfCopy2;
          v53 = 2080;
          v54 = "[FPDXPCServicer setIndexingEnabled:forDomainIdentifier:providerIdentifier:completionHandler:]";
          v55 = 2112;
          v56 = v38;
          _os_log_debug_impl(&dword_1CEFC7000, v32, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
        }

        v33 = FPNotSupportedError();
        (*(v12 + 2))(v12, v33);

        __fp_pop_log();
      }

      else
      {
        indexer2 = [v24 indexer];
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __94__FPDXPCServicer_setIndexingEnabled_forDomainIdentifier_providerIdentifier_completionHandler___block_invoke_313;
        v40[3] = &unk_1E83BE1A8;
        v40[4] = selfCopy2;
        v41 = v12;
        [indexer2 setIndexingEnabled:enabledCopy completionHandler:v40];
      }
    }

    else
    {
      v28 = selfCopy2->_log;
      v42 = fpfs_adopt_log();
      v29 = fp_current_or_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v35 = FPPopLogSectionForBlock();
        v36 = FPProviderNotFoundError();
        *buf = 134218754;
        v50 = v35;
        v51 = 2112;
        v52 = selfCopy2;
        v53 = 2080;
        v54 = "[FPDXPCServicer setIndexingEnabled:forDomainIdentifier:providerIdentifier:completionHandler:]";
        v55 = 2112;
        v56 = v36;
        _os_log_debug_impl(&dword_1CEFC7000, v29, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v30 = FPProviderNotFoundError();
      (*(v12 + 2))(v12, v30);

      __fp_pop_log();
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

void __94__FPDXPCServicer_setIndexingEnabled_forDomainIdentifier_providerIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer setIndexingEnabled:forDomainIdentifier:providerIdentifier:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __94__FPDXPCServicer_setIndexingEnabled_forDomainIdentifier_providerIdentifier_completionHandler___block_invoke_313(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer setIndexingEnabled:forDomainIdentifier:providerIdentifier:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)reimportItemsBelowItemWithID:(id)d markItemDataless:(BOOL)dataless completionHandler:(id)handler
{
  datalessCopy = dataless;
  v51 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  providerID = [dCopy providerID];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v38 = __82__FPDXPCServicer_reimportItemsBelowItemWithID_markItemDataless_completionHandler___block_invoke;
  v39 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v41 = v10;
  selfCopy2 = self;
  v12 = v37;
  v42 = 0;
  v13 = [(FPDXPCServicer *)selfCopy2 providerForIdentifier:providerID enumerateEntitlementRequired:1 error:&v42];
  v14 = v42;
  if (!v13)
  {
    v38(v12, v14);
LABEL_7:
    v20 = 0;
    goto LABEL_9;
  }

  if ([v13 invalidated])
  {
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = v13;
      _os_log_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] Provider %@ is invalidated.", buf, 0xCu);
    }

    v16 = MEMORY[0x1E696AEC0];
    identifier = [v13 identifier];
    v18 = [v16 stringWithFormat:@"A provider with ID %@ was found, but is in the process of being invalidated. Retry later.", identifier];

    v19 = FPProviderNotRegistered();
    v38(v12, v19);

    goto LABEL_7;
  }

  v20 = v13;
LABEL_9:

  if (v20)
  {
    v42 = 0;
    server = [(FPDXPCServicer *)selfCopy2 server];
    extensionManager = [server extensionManager];
    v23 = [extensionManager domainFromItemID:dCopy reason:&v42];

    if (v23)
    {
      defaultBackend = [v23 defaultBackend];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __82__FPDXPCServicer_reimportItemsBelowItemWithID_markItemDataless_completionHandler___block_invoke_314;
      v34[3] = &unk_1E83BE1A8;
      v34[4] = selfCopy2;
      v35 = v10;
      [defaultBackend reimportItemsBelowItemWithID:dCopy markItemDataless:datalessCopy completionHandler:v34];
    }

    else
    {
      log = selfCopy2->_log;
      v36 = fpfs_adopt_log();
      v26 = fp_current_or_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v30 = FPPopLogSectionForBlock();
        providerID2 = [dCopy providerID];
        v32 = FPProviderNotFoundError();
        *buf = 134218754;
        v44 = v30;
        v45 = 2112;
        v46 = selfCopy2;
        v47 = 2080;
        v48 = "[FPDXPCServicer reimportItemsBelowItemWithID:markItemDataless:completionHandler:]";
        v49 = 2112;
        v50 = v32;
        _os_log_debug_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      providerID3 = [dCopy providerID];
      v28 = FPProviderNotFoundError();
      (*(v10 + 2))(v10, v28);

      __fp_pop_log();
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __82__FPDXPCServicer_reimportItemsBelowItemWithID_markItemDataless_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer reimportItemsBelowItemWithID:markItemDataless:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __82__FPDXPCServicer_reimportItemsBelowItemWithID_markItemDataless_completionHandler___block_invoke_314(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer reimportItemsBelowItemWithID:markItemDataless:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)forceUpdateBlockedProcessNamesFromDomain:(id)domain completionHandler:(id)handler
{
  v42[1] = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  handlerCopy = handler;
  v42[0] = *MEMORY[0x1E6967558];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v30 = __77__FPDXPCServicer_forceUpdateBlockedProcessNamesFromDomain_completionHandler___block_invoke;
  v31 = &unk_1E83BE1A8;
  selfCopy = self;
  v9 = handlerCopy;
  v33 = v9;
  v10 = v8;
  v11 = v29;
  connection = [(FPDXPCServicer *)self connection];
  v13 = [connection fp_hasOneOfEntitlements:v10];

  if (v13)
  {

    v28 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v16 = [extensionManager domainWithID:domainCopy reason:&v28];

    if (v16)
    {
      defaultBackend = [v16 defaultBackend];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __77__FPDXPCServicer_forceUpdateBlockedProcessNamesFromDomain_completionHandler___block_invoke_315;
      v25[3] = &unk_1E83BE1A8;
      v25[4] = self;
      v26 = v9;
      [defaultBackend forceUpdateBlockedProcessNamesFromDomain:domainCopy completionHandler:v25];
    }

    else
    {
      log = self->_log;
      v27 = fpfs_adopt_log();
      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v23 = FPPopLogSectionForBlock();
        v24 = FPProviderNotFoundError();
        *buf = 134218754;
        v35 = v23;
        v36 = 2112;
        selfCopy2 = self;
        v38 = 2080;
        v39 = "[FPDXPCServicer forceUpdateBlockedProcessNamesFromDomain:completionHandler:]";
        v40 = 2112;
        v41 = v24;
        _os_log_debug_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v21 = FPProviderNotFoundError();
      (*(v9 + 2))(v9, v21);

      __fp_pop_log();
    }
  }

  else
  {
    v18 = FPNotPermittedError();
    v30(v11, v18);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __77__FPDXPCServicer_forceUpdateBlockedProcessNamesFromDomain_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer forceUpdateBlockedProcessNamesFromDomain:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __77__FPDXPCServicer_forceUpdateBlockedProcessNamesFromDomain_completionHandler___block_invoke_315(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer forceUpdateBlockedProcessNamesFromDomain:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)importProgressForDomainWithID:(id)d completionHandler:(id)handler
{
  v52[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E69675B0];
  v52[0] = *MEMORY[0x1E6967558];
  v52[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v38 = __66__FPDXPCServicer_importProgressForDomainWithID_completionHandler___block_invoke;
  v39 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v41 = v10;
  v11 = v9;
  v12 = v37;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    v36 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v17 = [extensionManager domainWithID:dCopy reason:&v36];

    if (v17)
    {
      defaultBackend = [v17 defaultBackend];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        defaultBackend2 = [v17 defaultBackend];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __66__FPDXPCServicer_importProgressForDomainWithID_completionHandler___block_invoke_318;
        v33[3] = &unk_1E83C04F0;
        v33[4] = self;
        v34 = v10;
        [defaultBackend2 importProgressWithCompletionHandler:v33];
      }

      else
      {
        log = self->_log;
        v35 = fpfs_adopt_log();
        v26 = fp_current_or_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v31 = FPPopLogSectionForBlock();
          v32 = FPNotSupportedError();
          *buf = 134219010;
          v43 = v31;
          v44 = 2112;
          selfCopy3 = self;
          v46 = 2080;
          v47 = "[FPDXPCServicer importProgressForDomainWithID:completionHandler:]";
          v48 = 2112;
          v49 = 0;
          v50 = 2112;
          v51 = v32;
          _os_log_debug_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        v27 = FPNotSupportedError();
        (*(v10 + 2))(v10, 0, v27);

        __fp_pop_log();
      }
    }

    else
    {
      v22 = self->_log;
      v35 = fpfs_adopt_log();
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v29 = FPPopLogSectionForBlock();
        v30 = FPProviderNotFoundError();
        *buf = 134219010;
        v43 = v29;
        v44 = 2112;
        selfCopy3 = self;
        v46 = 2080;
        v47 = "[FPDXPCServicer importProgressForDomainWithID:completionHandler:]";
        v48 = 2112;
        v49 = 0;
        v50 = 2112;
        v51 = v30;
        _os_log_debug_impl(&dword_1CEFC7000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v24 = FPProviderNotFoundError();
      (*(v10 + 2))(v10, 0, v24);

      __fp_pop_log();
    }
  }

  else
  {
    v21 = FPNotPermittedError();
    v38(v12, v21);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __66__FPDXPCServicer_importProgressForDomainWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer importProgressForDomainWithID:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __66__FPDXPCServicer_importProgressForDomainWithID_completionHandler___block_invoke_318(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v13 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    v11 = FPPopLogSectionForBlock();
    v12 = *(a1 + 32);
    *buf = 134219010;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2080;
    v19 = "[FPDXPCServicer importProgressForDomainWithID:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)checkLocationEligibilityForDomain:(id)domain completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, 0, 0, v6);
}

- (void)stateForDomainWithID:(id)d completionHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v29 = __57__FPDXPCServicer_stateForDomainWithID_completionHandler___block_invoke;
  v30 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v32 = v8;
  v9 = v28;
  selfCopy2 = self;
  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v12 = *MEMORY[0x1E6967540];
  *buf = *MEMORY[0x1E6967538];
  *&buf[8] = v12;
  *&buf[16] = *MEMORY[0x1E6967560];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:3];

  v14 = [connection fp_hasOneOfEntitlements:v13];
  if (v14)
  {

    server = [(FPDXPCServicer *)selfCopy2 server];
    extensionManager = [server extensionManager];
    v17 = [extensionManager domainWithID:dCopy reason:0];

    if (v17)
    {
      defaultBackend = [v17 defaultBackend];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __57__FPDXPCServicer_stateForDomainWithID_completionHandler___block_invoke_320;
      v25[3] = &unk_1E83C0518;
      v25[4] = selfCopy2;
      v26 = v8;
      [defaultBackend stateWithCompletionHandler:v25];
    }

    else
    {
      v20 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6967210] code:12 userInfo:0];
      log = selfCopy2->_log;
      v27 = fpfs_adopt_log();
      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v24 = FPPopLogSectionForBlock();
        *buf = 134219010;
        *&buf[4] = v24;
        *&buf[12] = 2112;
        *&buf[14] = selfCopy2;
        *&buf[22] = 2080;
        v34 = "[FPDXPCServicer stateForDomainWithID:completionHandler:]";
        v35 = 2048;
        v36 = 0;
        v37 = 2112;
        v38 = v20;
        _os_log_debug_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %llu, %@", buf, 0x34u);
      }

      (*(v8 + 2))(v8, 0, v20);
      __fp_pop_log();
    }
  }

  else
  {
    v19 = FPNotPermittedError();
    v29(v9, v19);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __57__FPDXPCServicer_stateForDomainWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer stateForDomainWithID:completionHandler:]_block_invoke";
    v17 = 2048;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %llu, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __57__FPDXPCServicer_stateForDomainWithID_completionHandler___block_invoke_320(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(*(a1 + 32) + 24);
  v12 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 40);
    v10 = FPPopLogSectionForBlock();
    v11 = *(a1 + 32);
    *buf = 134219010;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2080;
    v18 = "[FPDXPCServicer stateForDomainWithID:completionHandler:]_block_invoke";
    v19 = 2048;
    v20 = a2;
    v21 = 2112;
    v22 = v5;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %llu, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v8 = *MEMORY[0x1E69E9840];
}

- (void)runFPCKForDomainWithID:(id)d domainRootURL:(id)l databaseBackupPath:(id)path options:(unint64_t)options reason:(unint64_t)reason launchType:(unint64_t)type contentBarrier:(int64_t)barrier completionHandler:(id)self0
{
  v86[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  lCopy = l;
  pathCopy = path;
  handlerCopy = handler;
  v16 = *MEMORY[0x1E6967568];
  v86[0] = *MEMORY[0x1E6967558];
  v86[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:2];
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v68 = __133__FPDXPCServicer_runFPCKForDomainWithID_domainRootURL_databaseBackupPath_options_reason_launchType_contentBarrier_completionHandler___block_invoke;
  v69 = &unk_1E83BE1A8;
  selfCopy = self;
  v54 = handlerCopy;
  v71 = v54;
  v18 = v17;
  v19 = v67;
  connection = [(FPDXPCServicer *)self connection];
  v21 = [connection fp_hasOneOfEntitlements:v18];

  if (v21)
  {

    v22 = fp_current_or_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_INFO, "[INFO] 🧹 FPCK launched from XPC", buf, 2u);
    }

    v23 = fp_current_or_default_log();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
    if (type == 1)
    {
      if (v24)
      {
        [FPDXPCServicer runFPCKForDomainWithID:domainRootURL:databaseBackupPath:options:reason:launchType:contentBarrier:completionHandler:];
      }
    }

    else if (type)
    {
      if (v24)
      {
        [FPDXPCServicer runFPCKForDomainWithID:domainRootURL:databaseBackupPath:options:reason:launchType:contentBarrier:completionHandler:];
      }
    }

    else if (v24)
    {
      [FPDXPCServicer runFPCKForDomainWithID:domainRootURL:databaseBackupPath:options:reason:launchType:contentBarrier:completionHandler:];
    }

    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v28 = [extensionManager domainWithID:dCopy reason:0];

    if (v28)
    {
      server2 = [(FPDXPCServicer *)self server];
      v30 = [objc_msgSend(server2 "fpckTaskClass")];
      nsDomain = [v28 nsDomain];
      userInfo = [nsDomain userInfo];
      checkableURLs = [v28 checkableURLs];
      volume = [v28 volume];
      role = [volume role];
      nsDomain2 = [v28 nsDomain];
      personaIdentifier = [nsDomain2 personaIdentifier];
      reasonCopy = 128;
      if (reason)
      {
        reasonCopy = reason;
      }

      v44 = reasonCopy;
      isUsingFPFS = [v28 isUsingFPFS];
      provider = [v28 provider];
      descriptor = [provider descriptor];
      wantsBundleBitOnlyPackageDetection = [descriptor wantsBundleBitOnlyPackageDetection];
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __133__FPDXPCServicer_runFPCKForDomainWithID_domainRootURL_databaseBackupPath_options_reason_launchType_contentBarrier_completionHandler___block_invoke_322;
      v56[3] = &unk_1E83C0568;
      v56[4] = self;
      v61 = v54;
      optionsCopy = options;
      v57 = v28;
      v58 = dCopy;
      v59 = lCopy;
      v60 = pathCopy;
      reasonCopy2 = reason;
      typeCopy = type;
      barrierCopy = barrier;
      LOBYTE(v41) = 1;
      BYTE1(v40) = wantsBundleBitOnlyPackageDetection;
      LOBYTE(v40) = isUsingFPFS;
      [v30 prepareFPCKRun:v58 domainUserInfo:userInfo domainRootURL:v59 databaseBackupPath:v60 urls:checkableURLs volumeRole:role personaIdentifier:personaIdentifier options:options reason:v44 fpfs:v40 iCDPackageDetection:type launchType:v41 runOnWorkQueue:v56 completionHandler:?];
    }

    else
    {
      v35 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6967210] code:12 userInfo:0];
      log = self->_log;
      v66 = fpfs_adopt_log();
      v37 = fp_current_or_default_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v39 = FPPopLogSectionForBlock();
        *buf = 134219522;
        v73 = v39;
        v74 = 2112;
        selfCopy2 = self;
        v76 = 2080;
        v77 = "[FPDXPCServicer runFPCKForDomainWithID:domainRootURL:databaseBackupPath:options:reason:launchType:contentBarrier:completionHandler:]";
        v78 = 2112;
        v79 = 0;
        v80 = 2112;
        v81 = 0;
        v82 = 2112;
        v83 = 0;
        v84 = 2112;
        v85 = v35;
        _os_log_debug_impl(&dword_1CEFC7000, v37, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@", buf, 0x48u);
      }

      (*(v54 + 2))(v54, 0, 0, 0, v35);
      __fp_pop_log();
    }
  }

  else
  {
    v25 = FPNotPermittedError();
    v68(v19, v25);
  }

  v38 = *MEMORY[0x1E69E9840];
}

void __133__FPDXPCServicer_runFPCKForDomainWithID_domainRootURL_databaseBackupPath_options_reason_launchType_contentBarrier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219522;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer runFPCKForDomainWithID:domainRootURL:databaseBackupPath:options:reason:launchType:contentBarrier:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = 0;
    v21 = 2112;
    v22 = 0;
    v23 = 2112;
    v24 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@", buf, 0x48u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __133__FPDXPCServicer_runFPCKForDomainWithID_domainRootURL_databaseBackupPath_options_reason_launchType_contentBarrier_completionHandler___block_invoke_322(uint64_t a1, void *a2, void *a3, void *a4)
{
  v67 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __133__FPDXPCServicer_runFPCKForDomainWithID_domainRootURL_databaseBackupPath_options_reason_launchType_contentBarrier_completionHandler___block_invoke_2;
  v51[3] = &unk_1E83BE068;
  v46 = v8;
  v52 = v46;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained setInvalidationHandler:v51];

  if (v9)
  {
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __133__FPDXPCServicer_runFPCKForDomainWithID_domainRootURL_databaseBackupPath_options_reason_launchType_contentBarrier_completionHandler___block_invoke_322_cold_1(v9);
    }

    v12 = *(*(a1 + 32) + 24);
    v50 = fpfs_adopt_log();
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v28 = *(a1 + 72);
      v29 = FPPopLogSectionForBlock();
      v30 = *(a1 + 32);
      *buf = 134219522;
      v54 = v29;
      v55 = 2112;
      v56 = v30;
      v57 = 2080;
      v58 = "[FPDXPCServicer runFPCKForDomainWithID:domainRootURL:databaseBackupPath:options:reason:launchType:contentBarrier:completionHandler:]_block_invoke";
      v59 = 2112;
      v60 = 0;
      v61 = 2112;
      v62 = 0;
      v63 = 2112;
      v64 = 0;
      v65 = 2112;
      v66 = v9;
      _os_log_debug_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@", buf, 0x48u);
    }

    (*(*(a1 + 72) + 16))();
    __fp_pop_log();

    v14 = [MEMORY[0x1E696B0B8] currentConnection];
    [(FPCKOnDemandUpdateReceiver *)v14 invalidate];
  }

  else
  {
    v15 = *(a1 + 80);
    v16 = [_TtC18FileProviderDaemon26FPCKOnDemandUpdateReceiver alloc];
    v17 = (a1 + 40);
    v18 = [*(a1 + 40) defaultBackend];
    v40 = [(FPCKOnDemandUpdateReceiver *)v16 initWithDomainBackend:v18 persistUpdates:(v15 >> 8) & 1];

    v19 = [*(a1 + 32) server];
    v43 = [objc_msgSend(v19 "fpckTaskClass")];
    v39 = *(a1 + 48);
    v45 = [*(a1 + 40) nsDomain];
    v42 = [v45 userInfo];
    v37 = *(a1 + 64);
    v38 = *(a1 + 56);
    v41 = [*(a1 + 40) checkableURLs];
    v44 = [*(a1 + 40) volume];
    v36 = [v44 role];
    v20 = *(a1 + 88);
    if (!v20)
    {
      v20 = 128;
    }

    v34 = v20;
    v35 = *(a1 + 80);
    v33 = [*v17 isUsingFPFS];
    v21 = [*v17 provider];
    v22 = [v21 descriptor];
    v23 = [v22 wantsBundleBitOnlyPackageDetection];
    v25 = *(a1 + 96);
    v24 = *(a1 + 104);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __133__FPDXPCServicer_runFPCKForDomainWithID_domainRootURL_databaseBackupPath_options_reason_launchType_contentBarrier_completionHandler___block_invoke_325;
    v47[3] = &unk_1E83C0540;
    v47[4] = *(a1 + 32);
    v26 = *(a1 + 72);
    v48 = v40;
    v49 = v26;
    v14 = v40;
    v32 = v24;
    v9 = 0;
    BYTE1(v31) = v23;
    LOBYTE(v31) = v33;
    [v43 scheduleFPCKRun:v39 domainUserInfo:v42 domainRootURL:v38 databaseBackupPath:v37 urls:v41 volumeRole:v36 options:v35 reason:v34 fpfs:v31 iCDPackageDetection:v25 launchType:v14 updateReceiver:0 shouldPause:v32 contentBarrier:v7 proxy:v47 completionHandler:?];
  }

  v27 = *MEMORY[0x1E69E9840];
}

uint64_t __133__FPDXPCServicer_runFPCKForDomainWithID_domainRootURL_databaseBackupPath_options_reason_launchType_contentBarrier_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __133__FPDXPCServicer_runFPCKForDomainWithID_domainRootURL_databaseBackupPath_options_reason_launchType_contentBarrier_completionHandler___block_invoke_2_cold_1();
  }

  return [*(a1 + 32) invalidate];
}

void __133__FPDXPCServicer_runFPCKForDomainWithID_domainRootURL_databaseBackupPath_options_reason_launchType_contentBarrier_completionHandler___block_invoke_325(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(*(a1 + 32) + 24);
  v23 = fpfs_adopt_log();
  v14 = fp_current_or_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 48);
    v20 = FPPopLogSectionForBlock();
    v21 = *(a1 + 32);
    v22 = [*(a1 + 40) telemetryReport];
    *buf = 134219523;
    v25 = v20;
    v26 = 2112;
    v27 = v21;
    v28 = 2080;
    v29 = "[FPDXPCServicer runFPCKForDomainWithID:domainRootURL:databaseBackupPath:options:reason:launchType:contentBarrier:completionHandler:]_block_invoke";
    v30 = 2117;
    v31 = v9;
    v32 = 2112;
    v33 = v10;
    v34 = 2112;
    v35 = v22;
    v36 = 2112;
    v37 = v12;
    _os_log_debug_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %{sensitive}@, %@, %@, %@", buf, 0x48u);
  }

  v15 = *(a1 + 48);
  v16 = [*(a1 + 40) telemetryReport];
  (*(v15 + 16))(v15, v9, v10, v16, v12);

  __fp_pop_log();
  v17 = [MEMORY[0x1E696B0B8] currentConnection];
  [v17 invalidate];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)dumpDatabaseAt:(id)at fullDump:(BOOL)dump writeTo:(id)to completionHandler:(id)handler
{
  dumpCopy = dump;
  v30[1] = *MEMORY[0x1E69E9840];
  atCopy = at;
  toCopy = to;
  handlerCopy = handler;
  v30[0] = *MEMORY[0x1E6967558];
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v26 = __68__FPDXPCServicer_dumpDatabaseAt_fullDump_writeTo_completionHandler___block_invoke;
  v27 = &unk_1E83BE1A8;
  selfCopy = self;
  v13 = handlerCopy;
  v29 = v13;
  v14 = v12;
  v15 = v25;
  connection = [(FPDXPCServicer *)self connection];
  v17 = [connection fp_hasOneOfEntitlements:v14];

  if (v17)
  {

    server = [(FPDXPCServicer *)self server];
    v14 = [objc_msgSend(server "fpckTaskClass")];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __68__FPDXPCServicer_dumpDatabaseAt_fullDump_writeTo_completionHandler___block_invoke_328;
    v23[3] = &unk_1E83BE1A8;
    v23[4] = self;
    v19 = &v24;
    v24 = v13;
    [v14 dumpDatabaseAt:atCopy fullDump:dumpCopy writeTo:toCopy completionHandler:v23];
  }

  else
  {
    v19 = &v29;
    v20 = FPNotPermittedError();
    v26(v15, v20);

    server = v14;
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __68__FPDXPCServicer_dumpDatabaseAt_fullDump_writeTo_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer dumpDatabaseAt:fullDump:writeTo:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __68__FPDXPCServicer_dumpDatabaseAt_fullDump_writeTo_completionHandler___block_invoke_328(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer dumpDatabaseAt:fullDump:writeTo:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)calculateNonPurgeableSpaceUsageOfDomain:(id)domain completionHandler:(id)handler
{
  v47[1] = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  handlerCopy = handler;
  v47[0] = *MEMORY[0x1E69675A0];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v33 = __76__FPDXPCServicer_calculateNonPurgeableSpaceUsageOfDomain_completionHandler___block_invoke;
  v34 = &unk_1E83BE1A8;
  selfCopy = self;
  v9 = handlerCopy;
  v36 = v9;
  v10 = v8;
  v11 = v32;
  connection = [(FPDXPCServicer *)self connection];
  v13 = [connection fp_hasOneOfEntitlements:v10];

  if (v13)
  {

    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v16 = [extensionManager domainWithID:domainCopy reason:0];

    if (v16)
    {
      log = self->_log;
      v30 = fpfs_adopt_log();
      v18 = fp_current_or_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v26 = FPPopLogSectionForBlock();
        v27 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v16, "nonEvictableSpace")}];
        *buf = 134219010;
        v38 = v26;
        v39 = 2112;
        selfCopy3 = self;
        v41 = 2080;
        v42 = "[FPDXPCServicer calculateNonPurgeableSpaceUsageOfDomain:completionHandler:]";
        v43 = 2112;
        v44 = v27;
        v45 = 2112;
        v46 = 0;
        _os_log_debug_impl(&dword_1CEFC7000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@ %@", buf, 0x34u);
      }

      v19 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v16, "nonEvictableSpace")}];
      (*(v9 + 2))(v9, v19, 0);

      __fp_pop_log();
    }

    else
    {
      v21 = fp_current_or_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = domainCopy;
        _os_log_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_DEFAULT, "[WARNING] No domain found with identifier %@", buf, 0xCu);
      }

      v22 = self->_log;
      v31 = fpfs_adopt_log();
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v28 = FPPopLogSectionForBlock();
        v29 = FPDomainUnavailableError();
        *buf = 134219010;
        v38 = v28;
        v39 = 2112;
        selfCopy3 = self;
        v41 = 2080;
        v42 = "[FPDXPCServicer calculateNonPurgeableSpaceUsageOfDomain:completionHandler:]";
        v43 = 2112;
        v44 = 0;
        v45 = 2112;
        v46 = v29;
        _os_log_debug_impl(&dword_1CEFC7000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@ %@", buf, 0x34u);
      }

      v24 = FPDomainUnavailableError();
      (*(v9 + 2))(v9, 0, v24);

      __fp_pop_log();
    }
  }

  else
  {
    v20 = FPNotPermittedError();
    v33(v11, v20);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __76__FPDXPCServicer_calculateNonPurgeableSpaceUsageOfDomain_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer calculateNonPurgeableSpaceUsageOfDomain:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@ %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)accumulatedSizeOfPinnedItemsInDomain:(id)domain completion:(id)completion
{
  v46[1] = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  completionCopy = completion;
  v46[0] = *MEMORY[0x1E69675A0];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v32 = __66__FPDXPCServicer_accumulatedSizeOfPinnedItemsInDomain_completion___block_invoke;
  v33 = &unk_1E83BE1A8;
  selfCopy = self;
  v9 = completionCopy;
  v35 = v9;
  v10 = v8;
  v11 = v31;
  connection = [(FPDXPCServicer *)self connection];
  v13 = [connection fp_hasOneOfEntitlements:v10];

  if (v13)
  {

    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v16 = [extensionManager domainWithID:domainCopy reason:0];

    if (v16)
    {
      log = self->_log;
      v29 = fpfs_adopt_log();
      v18 = fp_current_or_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v25 = FPPopLogSectionForBlock();
        accumulatedSizeOfPinnedItems = [v16 accumulatedSizeOfPinnedItems];
        *buf = 134219010;
        v37 = v25;
        v38 = 2112;
        selfCopy3 = self;
        v40 = 2080;
        v41 = "[FPDXPCServicer accumulatedSizeOfPinnedItemsInDomain:completion:]";
        v42 = 2048;
        v43 = accumulatedSizeOfPinnedItems;
        v44 = 2112;
        v45 = 0;
        _os_log_debug_impl(&dword_1CEFC7000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %llu %@", buf, 0x34u);
      }

      (*(v9 + 2))(v9, [v16 accumulatedSizeOfPinnedItems], 0);
      __fp_pop_log();
    }

    else
    {
      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = domainCopy;
        _os_log_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] No domain found with identifier %@", buf, 0xCu);
      }

      v21 = self->_log;
      v30 = fpfs_adopt_log();
      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v27 = FPPopLogSectionForBlock();
        v28 = FPDomainUnavailableError();
        *buf = 134219010;
        v37 = v27;
        v38 = 2112;
        selfCopy3 = self;
        v40 = 2080;
        v41 = "[FPDXPCServicer accumulatedSizeOfPinnedItemsInDomain:completion:]";
        v42 = 2048;
        v43 = 0;
        v44 = 2112;
        v45 = v28;
        _os_log_debug_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %llu %@", buf, 0x34u);
      }

      v23 = FPDomainUnavailableError();
      (*(v9 + 2))(v9, 0, v23);

      __fp_pop_log();
    }
  }

  else
  {
    v19 = FPNotPermittedError();
    v32(v11, v19);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __66__FPDXPCServicer_accumulatedSizeOfPinnedItemsInDomain_completion___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer accumulatedSizeOfPinnedItemsInDomain:completion:]_block_invoke";
    v17 = 2048;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %llu %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)accumulatedSizeOfItemsInDomain:(id)domain completion:(id)completion
{
  v52[1] = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  completionCopy = completion;
  v52[0] = *MEMORY[0x1E6967560];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v38 = __60__FPDXPCServicer_accumulatedSizeOfItemsInDomain_completion___block_invoke;
  v39 = &unk_1E83BE1A8;
  selfCopy = self;
  v9 = completionCopy;
  v41 = v9;
  v10 = v8;
  v11 = v37;
  connection = [(FPDXPCServicer *)self connection];
  v13 = [connection fp_hasOneOfEntitlements:v10];

  if (v13)
  {

    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v16 = [extensionManager domainWithID:domainCopy reason:0];

    if (v16)
    {
      accumulatedSizeOfItems = [v16 accumulatedSizeOfItems];
      if (accumulatedSizeOfItems)
      {
        log = self->_log;
        v34 = fpfs_adopt_log();
        v19 = fp_current_or_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v29 = FPPopLogSectionForBlock();
          *buf = 134219010;
          v43 = v29;
          v44 = 2112;
          selfCopy4 = self;
          v46 = 2080;
          v47 = "[FPDXPCServicer accumulatedSizeOfItemsInDomain:completion:]";
          v48 = 2112;
          v49 = accumulatedSizeOfItems;
          v50 = 2112;
          v51 = 0;
          _os_log_debug_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@ %@", buf, 0x34u);
        }

        (*(v9 + 2))(v9, accumulatedSizeOfItems, 0);
        __fp_pop_log();
      }

      else
      {
        v25 = self->_log;
        v36 = fpfs_adopt_log();
        v26 = fp_current_or_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v32 = FPPopLogSectionForBlock();
          v33 = FPNotSupportedError();
          *buf = 134219010;
          v43 = v32;
          v44 = 2112;
          selfCopy4 = self;
          v46 = 2080;
          v47 = "[FPDXPCServicer accumulatedSizeOfItemsInDomain:completion:]";
          v48 = 2112;
          v49 = 0;
          v50 = 2112;
          v51 = v33;
          _os_log_debug_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@ %@", buf, 0x34u);
        }

        v27 = FPNotSupportedError();
        (*(v9 + 2))(v9, 0, v27);

        __fp_pop_log();
      }
    }

    else
    {
      v21 = fp_current_or_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v43 = domainCopy;
        _os_log_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_DEFAULT, "[WARNING] No domain found with identifier %@", buf, 0xCu);
      }

      v22 = self->_log;
      v35 = fpfs_adopt_log();
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v30 = FPPopLogSectionForBlock();
        v31 = FPDomainUnavailableError();
        *buf = 134219010;
        v43 = v30;
        v44 = 2112;
        selfCopy4 = self;
        v46 = 2080;
        v47 = "[FPDXPCServicer accumulatedSizeOfItemsInDomain:completion:]";
        v48 = 2112;
        v49 = 0;
        v50 = 2112;
        v51 = v31;
        _os_log_debug_impl(&dword_1CEFC7000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@ %@", buf, 0x34u);
      }

      v24 = FPDomainUnavailableError();
      (*(v9 + 2))(v9, 0, v24);

      __fp_pop_log();
    }
  }

  else
  {
    v20 = FPNotPermittedError();
    v38(v11, v20);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __60__FPDXPCServicer_accumulatedSizeOfItemsInDomain_completion___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer accumulatedSizeOfItemsInDomain:completion:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@ %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setAlternateContentsURL:(id)l onDocumentURL:(id)rL completionHandler:(id)handler
{
  v60[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  handlerCopy = handler;
  if (lCopy)
  {
    v5 = [lCopy url];
    if (![(FPDXPCServicer *)self clientHasSandboxAccessToFile:v5])
    {
      _isNonSandboxedConnection = [(FPDXPCServicer *)self _isNonSandboxedConnection];

      if (!_isNonSandboxedConnection)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

  if ([(FPDXPCServicer *)self clientHasSandboxAccessToFile:rLCopy])
  {
    connection = [(FPDXPCServicer *)self connection];
    v60[0] = *MEMORY[0x1E6967548];
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
    if ([connection fp_hasOneOfEntitlements:v14])
    {

      if (lCopy)
      {
      }

      goto LABEL_14;
    }

    _isNonSandboxedConnection2 = [(FPDXPCServicer *)self _isNonSandboxedConnection];

    if (!lCopy)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  _isNonSandboxedConnection2 = [(FPDXPCServicer *)self _isNonSandboxedConnection];
  if (lCopy)
  {
LABEL_12:
  }

LABEL_13:
  if (!_isNonSandboxedConnection2)
  {
LABEL_19:
    v31 = fp_current_or_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer setAlternateContentsURL:onDocumentURL:completionHandler:];
    }

    log = self->_log;
    v51 = fpfs_adopt_log();
    v33 = fp_current_or_default_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v42 = FPPopLogSectionForBlock();
      v43 = FPNotPermittedWriteError();
      *buf = 134218754;
      v53 = v42;
      v54 = 2112;
      selfCopy3 = self;
      v56 = 2080;
      v57 = "[FPDXPCServicer setAlternateContentsURL:onDocumentURL:completionHandler:]";
      v58 = 2112;
      v59 = v43;
      _os_log_debug_impl(&dword_1CEFC7000, v33, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v34 = FPNotPermittedWriteError();
    handlerCopy[2](handlerCopy, v34);

    __fp_pop_log();
    goto LABEL_33;
  }

LABEL_14:
  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];
  v18 = [extensionManager domainForURL:rLCopy reason:0];

  if (v18)
  {
    defaultBackend = [v18 defaultBackend];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v21 = fp_current_or_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [(FPDXPCServicer *)v21 setAlternateContentsURL:v22 onDocumentURL:v23 completionHandler:v24, v25, v26, v27, v28];
      }

      v29 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
      defaultBackend2 = [v18 defaultBackend];
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __74__FPDXPCServicer_setAlternateContentsURL_onDocumentURL_completionHandler___block_invoke;
      v46[3] = &unk_1E83C0590;
      v47 = rLCopy;
      selfCopy2 = self;
      v50 = handlerCopy;
      v49 = lCopy;
      [defaultBackend2 setAlternateContentsURLWrapper:v49 forDocumentWithURL:v47 request:v29 completionHandler:v46];
    }

    else
    {
      v38 = self->_log;
      v51 = fpfs_adopt_log();
      v39 = fp_current_or_default_log();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v44 = FPPopLogSectionForBlock();
        v45 = FPNotSupportedError();
        *buf = 134218754;
        v53 = v44;
        v54 = 2112;
        selfCopy3 = self;
        v56 = 2080;
        v57 = "[FPDXPCServicer setAlternateContentsURL:onDocumentURL:completionHandler:]";
        v58 = 2112;
        v59 = v45;
        _os_log_debug_impl(&dword_1CEFC7000, v39, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v40 = FPNotSupportedError();
      handlerCopy[2](handlerCopy, v40);

      __fp_pop_log();
    }
  }

  else
  {
    v35 = fp_current_or_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer setAlternateContentsURL:rLCopy onDocumentURL:? completionHandler:?];
    }

    v36 = self->_log;
    v51 = fpfs_adopt_log();
    v37 = fp_current_or_default_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer setAlternateContentsURL:onDocumentURL:completionHandler:];
    }

    handlerCopy[2](handlerCopy, 0);
    __fp_pop_log();
  }

LABEL_33:
  v41 = *MEMORY[0x1E69E9840];
}

void __74__FPDXPCServicer_setAlternateContentsURL_onDocumentURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __74__FPDXPCServicer_setAlternateContentsURL_onDocumentURL_completionHandler___block_invoke_cold_1();
    }

    v15 = *(*(a1 + 40) + 24);
    v22 = fpfs_adopt_log();
    v16 = fp_current_or_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 56);
      v19 = FPPopLogSectionForBlock();
      v20 = *(a1 + 40);
      *buf = 134218754;
      v24 = v19;
      v25 = 2112;
      v26 = v20;
      v27 = 2080;
      v28 = "[FPDXPCServicer setAlternateContentsURL:onDocumentURL:completionHandler:]_block_invoke";
      v29 = 2112;
      v30 = v7;
      _os_log_debug_impl(&dword_1CEFC7000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    (*(*(a1 + 56) + 16))();
    __fp_pop_log();
  }

  else
  {
    v8 = [*(a1 + 40) server];
    v9 = [v8 extensionManager];
    v10 = [*(a1 + 48) url];
    [v9 setAlternateContentsURL:v10 forItemID:v5];

    v11 = *(*(a1 + 40) + 24);
    v21 = fpfs_adopt_log();
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 56);
      FPPopLogSectionForBlock();
      __74__FPDXPCServicer_setAlternateContentsURL_onDocumentURL_completionHandler___block_invoke_cold_2((a1 + 40));
    }

    (*(*(a1 + 56) + 16))();
    __fp_pop_log();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)fetchAlternateContentsURLForDocumentURL:(id)l completionHandler:(id)handler
{
  v41[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  connection = [(FPDXPCServicer *)self connection];
  if ([connection fp_hasSandboxAccessToFile:lCopy accessType:*MEMORY[0x1E6966DA8] logLevel:0])
  {
    connection2 = [(FPDXPCServicer *)self connection];
    v41[0] = *MEMORY[0x1E6967548];
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    if ([connection2 fp_hasOneOfEntitlements:v10])
    {

LABEL_5:
      server = [(FPDXPCServicer *)self server];
      extensionManager = [server extensionManager];
      v14 = [extensionManager domainForURL:lCopy reason:0];

      if (v14)
      {
        defaultBackend = [v14 defaultBackend];
        v16 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __76__FPDXPCServicer_fetchAlternateContentsURLForDocumentURL_completionHandler___block_invoke;
        v28[3] = &unk_1E83BE6C0;
        v28[4] = self;
        v29 = handlerCopy;
        [defaultBackend itemIDForURL:lCopy requireProviderItemID:0 request:v16 completionHandler:v28];
      }

      else
      {
        v22 = fp_current_or_default_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [FPDXPCServicer fetchAlternateContentsURLForDocumentURL:lCopy completionHandler:?];
        }

        log = self->_log;
        v30 = fpfs_adopt_log();
        v24 = fp_current_or_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          FPPopLogSectionForBlock();
          [FPDXPCServicer fetchAlternateContentsURLForDocumentURL:completionHandler:];
        }

        (*(handlerCopy + 2))(handlerCopy, 0, 0);
        __fp_pop_log();
      }

      goto LABEL_19;
    }

    _isNonSandboxedConnection = [(FPDXPCServicer *)self _isNonSandboxedConnection];

    if (_isNonSandboxedConnection)
    {
      goto LABEL_5;
    }
  }

  else
  {
    _isNonSandboxedConnection2 = [(FPDXPCServicer *)self _isNonSandboxedConnection];

    if (_isNonSandboxedConnection2)
    {
      goto LABEL_5;
    }
  }

  v18 = fp_current_or_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [FPDXPCServicer fetchAlternateContentsURLForDocumentURL:completionHandler:];
  }

  v19 = self->_log;
  v30 = fpfs_adopt_log();
  v20 = fp_current_or_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v26 = FPPopLogSectionForBlock();
    v27 = FPNotPermittedError();
    *buf = 134219010;
    v32 = v26;
    v33 = 2112;
    selfCopy = self;
    v35 = 2080;
    v36 = "[FPDXPCServicer fetchAlternateContentsURLForDocumentURL:completionHandler:]";
    v37 = 2112;
    v38 = 0;
    v39 = 2112;
    v40 = v27;
    _os_log_debug_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  v21 = FPNotPermittedError();
  (*(handlerCopy + 2))(handlerCopy, 0, v21);

  __fp_pop_log();
LABEL_19:

  v25 = *MEMORY[0x1E69E9840];
}

void __76__FPDXPCServicer_fetchAlternateContentsURLForDocumentURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 32) + 24);
    v21 = fpfs_adopt_log();
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 40);
      v16 = FPPopLogSectionForBlock();
      v17 = *(a1 + 32);
      *buf = 134219010;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      v27 = 2080;
      v28 = "[FPDXPCServicer fetchAlternateContentsURLForDocumentURL:completionHandler:]_block_invoke";
      v29 = 2112;
      v30 = 0;
      v31 = 2112;
      v32 = v6;
      _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log();
  }

  else
  {
    v9 = [*(a1 + 32) server];
    v10 = [v9 extensionManager];
    v11 = [v10 alternateContentsURLForItemID:v5];

    v12 = *(*(a1 + 32) + 24);
    v22 = fpfs_adopt_log();
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 40);
      v19 = FPPopLogSectionForBlock();
      v20 = *(a1 + 32);
      *buf = 134219010;
      v24 = v19;
      v25 = 2112;
      v26 = v20;
      v27 = 2080;
      v28 = "[FPDXPCServicer fetchAlternateContentsURLForDocumentURL:completionHandler:]_block_invoke";
      v29 = 2112;
      v30 = v11;
      v31 = 2112;
      v32 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)didUpdateAlternateContentsDocumentForDocumentAtURL:(id)l completionHandler:(id)handler
{
  v46[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  connection = [(FPDXPCServicer *)self connection];
  if ([connection fp_hasSandboxAccessToFile:lCopy accessType:*MEMORY[0x1E6966DA8] logLevel:0])
  {
    connection2 = [(FPDXPCServicer *)self connection];
    v46[0] = *MEMORY[0x1E6967548];
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
    if ([connection2 fp_hasOneOfEntitlements:v10])
    {

LABEL_5:
      server = [(FPDXPCServicer *)self server];
      extensionManager = [server extensionManager];
      v14 = [extensionManager domainForURL:lCopy reason:0];

      if (v14)
      {
        v15 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
        providerDomainID = [v14 providerDomainID];
        defaultBackend = [v14 defaultBackend];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __87__FPDXPCServicer_didUpdateAlternateContentsDocumentForDocumentAtURL_completionHandler___block_invoke;
        v32[3] = &unk_1E83C05B8;
        v33 = lCopy;
        v34 = providerDomainID;
        selfCopy = self;
        v36 = handlerCopy;
        v18 = providerDomainID;
        [defaultBackend didUpdateAlternateContentsDocumentForDocumentWithURL:v33 request:v15 completionHandler:v32];
      }

      else
      {
        log = self->_log;
        v37 = fpfs_adopt_log();
        v25 = fp_current_or_default_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v30 = FPPopLogSectionForBlock();
          v31 = FPProviderNotFoundErrorForURL();
          *buf = 134218754;
          v39 = v30;
          v40 = 2112;
          selfCopy3 = self;
          v42 = 2080;
          v43 = "[FPDXPCServicer didUpdateAlternateContentsDocumentForDocumentAtURL:completionHandler:]";
          v44 = 2112;
          v45 = v31;
          _os_log_debug_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
        }

        v26 = FPProviderNotFoundErrorForURL();
        (*(handlerCopy + 2))(handlerCopy, v26);

        __fp_pop_log();
      }

      goto LABEL_17;
    }

    _isNonSandboxedConnection = [(FPDXPCServicer *)self _isNonSandboxedConnection];

    if (_isNonSandboxedConnection)
    {
      goto LABEL_5;
    }
  }

  else
  {
    _isNonSandboxedConnection2 = [(FPDXPCServicer *)self _isNonSandboxedConnection];

    if (_isNonSandboxedConnection2)
    {
      goto LABEL_5;
    }
  }

  v20 = fp_current_or_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [FPDXPCServicer didUpdateAlternateContentsDocumentForDocumentAtURL:completionHandler:];
  }

  v21 = self->_log;
  v37 = fpfs_adopt_log();
  v22 = fp_current_or_default_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v28 = FPPopLogSectionForBlock();
    v29 = FPNotPermittedError();
    *buf = 134218754;
    v39 = v28;
    v40 = 2112;
    selfCopy3 = self;
    v42 = 2080;
    v43 = "[FPDXPCServicer didUpdateAlternateContentsDocumentForDocumentAtURL:completionHandler:]";
    v44 = 2112;
    v45 = v29;
    _os_log_debug_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  v23 = FPNotPermittedError();
  (*(handlerCopy + 2))(handlerCopy, v23);

  __fp_pop_log();
LABEL_17:

  v27 = *MEMORY[0x1E69E9840];
}

void __87__FPDXPCServicer_didUpdateAlternateContentsDocumentForDocumentAtURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __87__FPDXPCServicer_didUpdateAlternateContentsDocumentForDocumentAtURL_completionHandler___block_invoke_cold_1(a1, v3);
    }
  }

  v5 = *(*(a1 + 48) + 24);
  v11 = fpfs_adopt_log();
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 56);
    v9 = FPPopLogSectionForBlock();
    v10 = *(a1 + 48);
    *buf = 134218754;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2080;
    v17 = "[FPDXPCServicer didUpdateAlternateContentsDocumentForDocumentAtURL:completionHandler:]_block_invoke";
    v18 = 2112;
    v19 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 56) + 16))();
  __fp_pop_log();

  v7 = *MEMORY[0x1E69E9840];
}

- (void)appHasNonUploadedFiles:(id)files completionHandler:(id)handler
{
  v29[1] = *MEMORY[0x1E69E9840];
  filesCopy = files;
  handlerCopy = handler;
  v29[0] = *MEMORY[0x1E6967560];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v25 = __59__FPDXPCServicer_appHasNonUploadedFiles_completionHandler___block_invoke;
  v26 = &unk_1E83BE1A8;
  selfCopy = self;
  v9 = handlerCopy;
  v28 = v9;
  v10 = v8;
  v11 = v24;
  connection = [(FPDXPCServicer *)self connection];
  v13 = [connection fp_hasOneOfEntitlements:v10];

  if (v13)
  {

    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v16 = [extensionManager domainsForAppBundleIdentifier:filesCopy];

    if ([v16 count])
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __59__FPDXPCServicer_appHasNonUploadedFiles_completionHandler___block_invoke_333;
      v21[3] = &unk_1E83C05E0;
      v21[4] = self;
      v22 = v9;
      hasNonUploadedFiles(v16, v21);
    }

    else
    {
      log = self->_log;
      v23 = fpfs_adopt_log();
      v19 = fp_current_or_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        FPPopLogSectionForBlock();
        [FPDXPCServicer appHasNonUploadedFiles:completionHandler:];
      }

      (*(v9 + 2))(v9, 0, 0);
      __fp_pop_log();
    }
  }

  else
  {
    v17 = FPNotPermittedError();
    v25(v11, v17);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __59__FPDXPCServicer_appHasNonUploadedFiles_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v13 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 40);
    v10 = FPPopLogSectionForBlock();
    v11 = *(a1 + 32);
    v12 = FPNotPermittedError();
    *buf = 134219010;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2080;
    v19 = "[FPDXPCServicer appHasNonUploadedFiles:completionHandler:]_block_invoke";
    v20 = 1024;
    v21 = 0;
    v22 = 2112;
    v23 = v12;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %{BOOL}d, %@", buf, 0x30u);
  }

  v6 = *(a1 + 40);
  v7 = FPNotPermittedError();
  (*(v6 + 16))(v6, 0, v7);

  __fp_pop_log();
  v8 = *MEMORY[0x1E69E9840];
}

void __59__FPDXPCServicer_appHasNonUploadedFiles_completionHandler___block_invoke_333(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(*(a1 + 32) + 24);
  v12 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 40);
    v10 = FPPopLogSectionForBlock();
    v11 = *(a1 + 32);
    *buf = 134219010;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2080;
    v18 = "[FPDXPCServicer appHasNonUploadedFiles:completionHandler:]_block_invoke";
    v19 = 1024;
    v20 = a2;
    v21 = 2112;
    v22 = v5;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %{BOOL}d, %@", buf, 0x30u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v8 = *MEMORY[0x1E69E9840];
}

- (void)dumpProviders:(id)providers dumper:(id)dumper auditToken:(id *)token request:(id)request providerFilter:(id)filter options:(unint64_t)options completionHandler:(id)handler
{
  providersCopy = providers;
  dumperCopy = dumper;
  requestCopy = request;
  filterCopy = filter;
  handlerCopy = handler;
  if ([providersCopy count])
  {
    firstObject = [providersCopy firstObject];
    [providersCopy removeObjectAtIndex:0];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __99__FPDXPCServicer_dumpProviders_dumper_auditToken_request_providerFilter_options_completionHandler___block_invoke;
    v24[3] = &unk_1E83C0608;
    v24[4] = self;
    v25 = providersCopy;
    v26 = dumperCopy;
    v20 = *&token->var0[4];
    v31 = *token->var0;
    v32 = v20;
    v27 = requestCopy;
    v28 = filterCopy;
    optionsCopy = options;
    v29 = handlerCopy;
    v21 = *&token->var0[4];
    v23[0] = *token->var0;
    v23[1] = v21;
    [firstObject dumpStateTo:v26 auditToken:v23 request:v27 providerFilter:v28 options:options completionHandler:v24];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

uint64_t __99__FPDXPCServicer_dumpProviders_dumper_auditToken_request_providerFilter_options_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = *(a1 + 72);
  v5 = *(a1 + 80);
  v7 = *(a1 + 64);
  v8 = *(a1 + 104);
  v10[0] = *(a1 + 88);
  v10[1] = v8;
  return [v2 dumpProviders:v1 dumper:v3 auditToken:v10 request:v4 providerFilter:v7 options:v5 completionHandler:v6];
}

- (void)dumpStateTo:(id)to providerFilter:(id)filter options:(unint64_t)options completionHandler:(id)handler
{
  v85[1] = *MEMORY[0x1E69E9840];
  toCopy = to;
  filterCopy = filter;
  handlerCopy = handler;
  v85[0] = *MEMORY[0x1E6967558];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:1];
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v78 = __71__FPDXPCServicer_dumpStateTo_providerFilter_options_completionHandler___block_invoke;
  v79 = &unk_1E83BE1A8;
  selfCopy = self;
  v12 = handlerCopy;
  v81 = v12;
  v13 = v11;
  v14 = v77;
  connection = [(FPDXPCServicer *)self connection];
  v16 = [connection fp_hasOneOfEntitlements:v13];

  if (v16)
  {

    if (toCopy)
    {
      connection2 = [(FPDXPCServicer *)self connection];
      v66 = [FPDRequest requestForXPCConnection:connection2];

      v18 = [objc_alloc(MEMORY[0x1E69672D0]) initWithFd:objc_msgSend(toCopy forceColor:{"fileDescriptor"), 1}];
      date = [MEMORY[0x1E695DF00] date];
      v20 = [date description];
      v21 = v20;
      uTF8String = [v20 UTF8String];
      v23 = [MEMORY[0x1E695DF00] now];
      [v23 timeIntervalSinceReferenceDate];
      [v18 write:{@"Date/Time:         %s, (%f)\n", uTF8String, v24}];

      v25 = FPOSVersion();
      v26 = v25;
      [v18 write:{@"OS Version:        %s\n", objc_msgSend(v25, "UTF8String")}];

      v27 = FPVersion();
      v28 = v27;
      [v18 write:{@"FP Version:        %s\n", objc_msgSend(v27, "UTF8String")}];

      [v18 write:{@"uid:               %u\n", geteuid()}];
      if (fpfs_is_internal_build())
      {
        [v18 write:@"\n"];
        [v18 write:@"== Internal Info ==\n"];
        v29 = FPSerialNumber();
        v30 = v29;
        [v18 write:{@"Serial Number:     %s\n", objc_msgSend(v29, "UTF8String")}];
      }

      [v18 write:@"\n\n"];
      v31 = fp_current_or_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer dumpStateTo:providerFilter:options:completionHandler:];
      }

      WeakRetained = objc_loadWeakRetained(&self->_server);
      extensionManager = [WeakRetained extensionManager];
      allProviders = [extensionManager allProviders];
      v35 = [allProviders mutableCopy];

      if ([v35 count])
      {
        v36 = 0;
        v37 = 1;
        while (1)
        {
          v38 = [v35 objectAtIndexedSubscript:v36];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            break;
          }

          v36 = v37++;
          if ([v35 count] <= v36)
          {
            goto LABEL_19;
          }
        }

        v45 = [v35 objectAtIndexedSubscript:v36];
        [v35 removeObjectAtIndex:v36];
        [v35 insertObject:v45 atIndex:0];
      }

LABEL_19:
      v46 = [filterCopy length] == 0;
      v47 = [v35 count];
      v48 = v47;
      if (v46)
      {
        [v18 write:{@"%ld providers\n", v47}];
      }

      else
      {
        fp_obfuscatedProviderDomainID = [filterCopy fp_obfuscatedProviderDomainID];
        [v18 write:{@"%ld providers, filtered by '%@'\n", v48, fp_obfuscatedProviderDomainID}];
      }

      fp_homeDirectory = [MEMORY[0x1E695DFF8] fp_homeDirectory];
      v76 = 0;
      v51 = FPGetImportCookieForURL();
      v52 = 0;

      entries = [v51 entries];
      v54 = ([entries count] | v52) != 0;

      if (v54)
      {
        v55 = [v51 description];
        v56 = v55;
        if (v55)
        {
          [v18 write:{@"Import Cookie: %@\n", v55}];
        }

        else
        {
          localizedDescription = [v52 localizedDescription];
          [v18 write:{@"Import Cookie: %@\n", localizedDescription}];
        }
      }

      v58 = fp_current_or_default_log();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer dumpStateTo:providerFilter:options:completionHandler:];
      }

      memset(buf, 0, sizeof(buf));
      connection3 = [(FPDXPCServicer *)self connection];
      v60 = connection3;
      if (connection3)
      {
        [connection3 auditToken];
      }

      else
      {
        memset(buf, 0, sizeof(buf));
      }

      v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v61 addObjectsFromArray:v35];
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __71__FPDXPCServicer_dumpStateTo_providerFilter_options_completionHandler___block_invoke_374;
      v70[3] = &unk_1E83BF4F0;
      v71 = toCopy;
      selfCopy2 = self;
      v73 = v18;
      v74 = filterCopy;
      v75 = v12;
      v69[0] = *buf;
      v69[1] = *&buf[16];
      v62 = v18;
      [(FPDXPCServicer *)self dumpProviders:v61 dumper:v62 auditToken:v69 request:v66 providerFilter:v74 options:options completionHandler:v70];
    }

    else
    {
      v41 = fp_current_or_default_log();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        [FPDXPCServicer dumpStateTo:providerFilter:options:completionHandler:];
      }

      log = self->_log;
      *&v69[0] = fpfs_adopt_log();
      v43 = fp_current_or_default_log();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        v64 = FPPopLogSectionForBlock();
        v65 = FPInvalidParameterError();
        *buf = 134218754;
        *&buf[4] = v64;
        *&buf[12] = 2112;
        *&buf[14] = self;
        *&buf[22] = 2080;
        *&buf[24] = "[FPDXPCServicer dumpStateTo:providerFilter:options:completionHandler:]";
        v83 = 2112;
        v84 = v65;
        _os_log_debug_impl(&dword_1CEFC7000, v43, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v44 = FPInvalidParameterError();
      (*(v12 + 2))(v12, v44);

      __fp_pop_log();
    }
  }

  else
  {
    v40 = FPNotPermittedError();
    v78(v14, v40);
  }

  v63 = *MEMORY[0x1E69E9840];
}

void __71__FPDXPCServicer_dumpStateTo_providerFilter_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer dumpStateTo:providerFilter:options:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __71__FPDXPCServicer_dumpStateTo_providerFilter_options_completionHandler___block_invoke_374(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
  v5 = [WeakRetained operationEngine];
  [v5 dumpStateTo:*(a1 + 48)];

  v6 = objc_loadWeakRetained((*(a1 + 40) + 32));
  v7 = [v6 appMonitor];
  [v7 dumpStateTo:*(a1 + 48)];

  if (![*(a1 + 56) length])
  {
    v8 = objc_loadWeakRetained((*(a1 + 40) + 32));
    v9 = [v8 volumeManager];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __71__FPDXPCServicer_dumpStateTo_providerFilter_options_completionHandler___block_invoke_2;
    v33[3] = &unk_1E83BDF50;
    v34 = *(a1 + 48);
    [v9 enumerateLibrariesWithBlock:v33];

    *buf = 0;
    v10 = FPGetSharedDomainCachingPath();
    v11 = v10;
    if (v10)
    {
      v12 = *(a1 + 48);
      v13 = [v10 fp_prettyPath];
      [v12 write:{@"== Domains cache: %@ ==\n", v13}];

      v14 = [MEMORY[0x1E69673E8] readCacheFromDisk:1];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v15 = [v14 allKeys];
      v16 = [v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
      if (v16)
      {
        v17 = *v30;
        do
        {
          v18 = 0;
          do
          {
            if (*v30 != v17)
            {
              objc_enumerationMutation(v15);
            }

            [*(a1 + 48) write:{@"  + %@\n", *(*(&v29 + 1) + 8 * v18++)}];
          }

          while (v16 != v18);
          v16 = [v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
        }

        while (v16);
      }

      [*(a1 + 48) write:@"\n"];
    }
  }

  v19 = *(a1 + 48);
  v20 = +[FPDConfigurationStore defaultStore];
  v21 = [v20 getTrialConfigurationState];
  [v19 write:{@"== Trial configuration ==\n%@\n", v21}];

  v22 = *(*(a1 + 40) + 24);
  v28 = fpfs_adopt_log();
  v23 = fp_current_or_default_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v25 = *(a1 + 64);
    v26 = FPPopLogSectionForBlock();
    v27 = *(a1 + 40);
    *buf = 134218754;
    *&buf[4] = v26;
    v36 = 2112;
    v37 = v27;
    v38 = 2080;
    v39 = "[FPDXPCServicer dumpStateTo:providerFilter:options:completionHandler:]_block_invoke";
    v40 = 2112;
    v41 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 64) + 16))();
  __fp_pop_log();

  v24 = *MEMORY[0x1E69E9840];
}

uint64_t __71__FPDXPCServicer_dumpStateTo_providerFilter_options_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isLibraryConfigured])
  {
    v4 = *(a1 + 32);
    v5 = [v3 root];
    v6 = [v5 fp_prettyPath];
    [v4 write:{@"== Volume: %@ ==\n", v6}];

    [FPDProvider dumpXattrsForSyncRootDirectoryOfVolume:v3 dumper:*(a1 + 32)];
    [FPDProvider dumpXattrsForSystemDirectoryOfVolume:v3 dumper:*(a1 + 32)];
  }

  return 1;
}

- (void)dumpPlistTelemetryForProviders:(id)providers result:(id)result providerFilter:(id)filter completionHandler:(id)handler
{
  providersCopy = providers;
  resultCopy = result;
  filterCopy = filter;
  handlerCopy = handler;
  if ([providersCopy count])
  {
    firstObject = [providersCopy firstObject];
    [providersCopy removeObjectAtIndex:0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __89__FPDXPCServicer_dumpPlistTelemetryForProviders_result_providerFilter_completionHandler___block_invoke;
    v16[3] = &unk_1E83C0630;
    v17 = resultCopy;
    v18 = firstObject;
    selfCopy = self;
    v20 = providersCopy;
    v21 = filterCopy;
    v22 = handlerCopy;
    v15 = firstObject;
    [v15 fetchTelemetryReportWithProviderFilter:v21 alwaysFetchExpandedUsageStats:1 completionHandler:v16];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, resultCopy, 0);
  }
}

void __89__FPDXPCServicer_dumpPlistTelemetryForProviders_result_providerFilter_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) identifier];
  if (v6)
  {
    v5 = v6;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  [v3 setObject:v5 forKeyedSubscript:v4];

  [*(a1 + 48) dumpPlistTelemetryForProviders:*(a1 + 56) result:*(a1 + 32) providerFilter:*(a1 + 64) completionHandler:*(a1 + 72)];
}

- (void)dumpTelemetryTo:(id)to providerFilter:(id)filter completionHandler:(id)handler
{
  v57[1] = *MEMORY[0x1E69E9840];
  toCopy = to;
  filterCopy = filter;
  handlerCopy = handler;
  v57[0] = *MEMORY[0x1E6967558];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:1];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v45 = __67__FPDXPCServicer_dumpTelemetryTo_providerFilter_completionHandler___block_invoke;
  v46 = &unk_1E83BE1A8;
  selfCopy = self;
  v11 = handlerCopy;
  v48 = v11;
  v12 = v10;
  v13 = v44;
  connection = [(FPDXPCServicer *)self connection];
  v15 = [connection fp_hasOneOfEntitlements:v12];

  if (v15)
  {

    if (toCopy)
    {
      v16 = [objc_alloc(MEMORY[0x1E69672D0]) initWithFd:objc_msgSend(toCopy forceColor:{"fileDescriptor"), 1}];
      WeakRetained = objc_loadWeakRetained(&self->_server);
      extensionManager = [WeakRetained extensionManager];
      allProviders = [extensionManager allProviders];
      v20 = [allProviders mutableCopy];

      if ([v20 count])
      {
        v21 = 0;
        v22 = 1;
        while (1)
        {
          v23 = [v20 objectAtIndexedSubscript:{v21, filterCopy}];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            break;
          }

          v21 = v22++;
          if ([v20 count] <= v21)
          {
            goto LABEL_15;
          }
        }

        v30 = [v20 objectAtIndexedSubscript:v21];
        [v20 removeObjectAtIndex:v21];
        [v20 insertObject:v30 atIndex:0];
      }

LABEL_15:
      v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v31 addObjectsFromArray:v20];
      v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __67__FPDXPCServicer_dumpTelemetryTo_providerFilter_completionHandler___block_invoke_391;
      v38[3] = &unk_1E83C0658;
      v39 = toCopy;
      v40 = v16;
      selfCopy2 = self;
      v42 = v11;
      v33 = v16;
      [(FPDXPCServicer *)self dumpPlistTelemetryForProviders:v31 result:v32 providerFilter:filterCopy completionHandler:v38];
    }

    else
    {
      v26 = fp_current_or_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [FPDXPCServicer dumpStateTo:providerFilter:options:completionHandler:];
      }

      log = self->_log;
      v43 = fpfs_adopt_log();
      v28 = fp_current_or_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v35 = FPPopLogSectionForBlock();
        v36 = FPInvalidParameterError();
        *buf = 134218754;
        v50 = v35;
        v51 = 2112;
        selfCopy3 = self;
        v53 = 2080;
        v54 = "[FPDXPCServicer dumpTelemetryTo:providerFilter:completionHandler:]";
        v55 = 2112;
        v56 = v36;
        _os_log_debug_impl(&dword_1CEFC7000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v29 = FPInvalidParameterError();
      (*(v11 + 2))(v11, v29);

      __fp_pop_log();
    }
  }

  else
  {
    v25 = FPNotPermittedError();
    v45(v13, v25);
  }

  v34 = *MEMORY[0x1E69E9840];
}

void __67__FPDXPCServicer_dumpTelemetryTo_providerFilter_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer dumpTelemetryTo:providerFilter:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __67__FPDXPCServicer_dumpTelemetryTo_providerFilter_completionHandler___block_invoke_391(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v17 = 0;
  v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:1 error:&v17];
  v8 = v17;
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];
  [*(a1 + 40) put:v9];
  v10 = *(*(a1 + 48) + 24);
  v16 = fpfs_adopt_log();
  v11 = fp_current_or_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 56);
    v14 = FPPopLogSectionForBlock();
    v15 = *(a1 + 48);
    *buf = 134218754;
    v19 = v14;
    v20 = 2112;
    v21 = v15;
    v22 = 2080;
    v23 = "[FPDXPCServicer dumpTelemetryTo:providerFilter:completionHandler:]_block_invoke";
    v24 = 2112;
    v25 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 56) + 16))();
  __fp_pop_log();

  v12 = *MEMORY[0x1E69E9840];
}

- (void)getPersonaForProvider:(id)provider completionHandler:(id)handler
{
  v43 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  selfCopy = self;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_server);
  extensionManager = [WeakRetained extensionManager];
  allProviders = [extensionManager allProviders];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = allProviders;
  v11 = 0;
  v12 = [v10 countByEnumeratingWithState:&v28 objects:v42 count:16];
  if (v12)
  {
    v13 = *v29;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        identifier = [v15 identifier];
        v17 = [identifier description];
        v18 = [v17 isEqualToString:providerCopy];

        if (v18)
        {
          descriptor = [v15 descriptor];
          personaIdentifier = [descriptor personaIdentifier];

          v11 = personaIdentifier;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v28 objects:v42 count:16];
    }

    while (v12);
  }

  log = selfCopy->_log;
  v27 = fpfs_adopt_log();
  v22 = fp_current_or_default_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v24 = FPPopLogSectionForBlock();
    *buf = 134219010;
    v33 = v24;
    v34 = 2112;
    v35 = selfCopy;
    v36 = 2080;
    v37 = "[FPDXPCServicer getPersonaForProvider:completionHandler:]";
    v38 = 2112;
    v39 = v11;
    v40 = 2112;
    v41 = 0;
    _os_log_debug_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  handlerCopy[2](handlerCopy, v11, 0);
  __fp_pop_log();

  v23 = *MEMORY[0x1E69E9840];
}

- (void)createDatabaseCopyOutputPathForDomain:(id)domain completionHandler:(id)handler
{
  domainCopy = domain;
  handlerCopy = handler;
  if ([domainCopy isUsingFPFS])
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v8 = MEMORY[0x1E695DFF8];
    fp_secureTempDirectory = [MEMORY[0x1E695DFF8] fp_secureTempDirectory];
    path = [fp_secureTempDirectory path];
    providerDomainID = [domainCopy providerDomainID];
    v12 = [path stringByAppendingPathComponent:providerDomainID];
    v13 = [v8 fileURLWithPath:v12];

    v29 = 0;
    LOBYTE(fp_secureTempDirectory) = [defaultManager createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:&v29];
    v14 = v29;
    if (fp_secureTempDirectory)
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = [MEMORY[0x1E695DF00] now];
      [v16 timeIntervalSince1970];
      v18 = [v15 stringWithFormat:@"database-%f", v17];

      v19 = [v18 stringByReplacingOccurrencesOfString:@"." withString:@"-"];

      v20 = [v19 stringByAppendingString:@".db"];

      v21 = [v13 URLByAppendingPathComponent:v20];

      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer createDatabaseCopyOutputPathForDomain:completionHandler:];
      }

      defaultBackend = [domainCopy defaultBackend];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __74__FPDXPCServicer_createDatabaseCopyOutputPathForDomain_completionHandler___block_invoke;
      v25[3] = &unk_1E83BE428;
      v26 = domainCopy;
      v28 = handlerCopy;
      v13 = v21;
      v27 = v13;
      [defaultBackend copyDatabaseToURL:v13 completionHandler:v25];
    }

    else
    {
      v24 = fp_current_or_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [FPDXPCServicer createDatabaseCopyOutputPathForDomain:completionHandler:];
      }

      (*(handlerCopy + 2))(handlerCopy, 0, v14);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __74__FPDXPCServicer_createDatabaseCopyOutputPathForDomain_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fp_current_or_default_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __74__FPDXPCServicer_createDatabaseCopyOutputPathForDomain_completionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __74__FPDXPCServicer_createDatabaseCopyOutputPathForDomain_completionHandler___block_invoke_cold_2(a1);
    }

    v6 = *(a1 + 48);
    v7 = [*(a1 + 40) path];
    (*(v6 + 16))(v6, v7, 0);
  }
}

- (void)copyDatabaseForFPCKStartingAtPath:(id)path completionHandler:(id)handler
{
  v77[2] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  handlerCopy = handler;
  v6 = *MEMORY[0x1E6967568];
  v77[0] = *MEMORY[0x1E6967558];
  v77[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v71 = __70__FPDXPCServicer_copyDatabaseForFPCKStartingAtPath_completionHandler___block_invoke;
  v72 = &unk_1E83BE1A8;
  selfCopy = self;
  v37 = handlerCopy;
  v74 = v37;
  v8 = v7;
  v9 = v70;
  connection = [(FPDXPCServicer *)self connection];
  v11 = [connection fp_hasOneOfEntitlements:v8];

  if (v11)
  {

    v12 = dispatch_group_create();
    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x3032000000;
    v68[3] = __Block_byref_object_copy__10;
    v68[4] = __Block_byref_object_dispose__10;
    v69 = objc_opt_new();
    v66[0] = 0;
    v66[1] = v66;
    v66[2] = 0x3032000000;
    v66[3] = __Block_byref_object_copy__10;
    v66[4] = __Block_byref_object_dispose__10;
    v67 = 0;
    if (pathCopy)
    {
      server = [(FPDXPCServicer *)self server];
      extensionManager = [server extensionManager];
      v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy];
      v16 = [extensionManager domainForURL:v15 reason:0];

      dispatch_group_enter(v12);
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __70__FPDXPCServicer_copyDatabaseForFPCKStartingAtPath_completionHandler___block_invoke_405;
      v61[3] = &unk_1E83C0680;
      v62 = v12;
      v64 = v66;
      v65 = v68;
      v17 = v16;
      v63 = v17;
      [(FPDXPCServicer *)self createDatabaseCopyOutputPathForDomain:v17 completionHandler:v61];

      v18 = v62;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_server);
      extensionManager2 = [WeakRetained extensionManager];
      allProviders = [extensionManager2 allProviders];
      v23 = [allProviders mutableCopy];

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v18 = v23;
      v24 = [v18 countByEnumeratingWithState:&v57 objects:v76 count:16];
      if (v24)
      {
        v39 = *v58;
        do
        {
          v25 = 0;
          v40 = v24;
          do
          {
            if (*v58 != v39)
            {
              objc_enumerationMutation(v18);
            }

            v26 = *(*(&v57 + 1) + 8 * v25);
            objc_sync_enter(v26);
            domainsByID = [v26 domainsByID];
            allValues = [domainsByID allValues];
            v42 = [allValues copy];
            v41 = v25;

            objc_sync_exit(v26);
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v29 = v42;
            v30 = [v29 countByEnumeratingWithState:&v53 objects:v75 count:16];
            if (v30)
            {
              v31 = *v54;
              do
              {
                for (i = 0; i != v30; ++i)
                {
                  if (*v54 != v31)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v33 = *(*(&v53 + 1) + 8 * i);
                  dispatch_group_enter(v12);
                  v48[0] = MEMORY[0x1E69E9820];
                  v48[1] = 3221225472;
                  v48[2] = __70__FPDXPCServicer_copyDatabaseForFPCKStartingAtPath_completionHandler___block_invoke_2;
                  v48[3] = &unk_1E83C0680;
                  v34 = v12;
                  v51 = v66;
                  v52 = v68;
                  v49 = v34;
                  v50 = v33;
                  [(FPDXPCServicer *)self createDatabaseCopyOutputPathForDomain:v33 completionHandler:v48];
                }

                v30 = [v29 countByEnumeratingWithState:&v53 objects:v75 count:16];
              }

              while (v30);
            }

            v25 = v41 + 1;
          }

          while (v41 + 1 != v40);
          v24 = [v18 countByEnumeratingWithState:&v57 objects:v76 count:16];
        }

        while (v24);
      }

      v17 = v18;
    }

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__FPDXPCServicer_copyDatabaseForFPCKStartingAtPath_completionHandler___block_invoke_3;
    block[3] = &unk_1E83C06A8;
    v46 = v68;
    v47 = v66;
    block[4] = self;
    v45 = v37;
    dispatch_group_notify(v12, queue, block);

    _Block_object_dispose(v66, 8);
    _Block_object_dispose(v68, 8);
  }

  else
  {
    v19 = FPNotPermittedError();
    v71(v9, v19);
  }

  v36 = *MEMORY[0x1E69E9840];
}

void __70__FPDXPCServicer_copyDatabaseForFPCKStartingAtPath_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer copyDatabaseForFPCKStartingAtPath:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __70__FPDXPCServicer_copyDatabaseForFPCKStartingAtPath_completionHandler___block_invoke_405(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  if (v5)
  {
    v7 = *(*(a1 + 48) + 8);
    v8 = v5;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    if (!v13)
    {
      goto LABEL_6;
    }

    v10 = *(*(*(a1 + 56) + 8) + 40);
    v9 = [*(a1 + 40) rootURLs];
    v11 = [v9 firstObject];
    v12 = [v11 path];
    [v10 setValue:v13 forKey:v12];
  }

LABEL_6:
  dispatch_group_leave(*(a1 + 32));
  objc_sync_exit(v6);
}

void __70__FPDXPCServicer_copyDatabaseForFPCKStartingAtPath_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  if (v5)
  {
    v7 = *(*(a1 + 48) + 8);
    v8 = v5;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    if (!v13)
    {
      goto LABEL_6;
    }

    v10 = *(*(*(a1 + 56) + 8) + 40);
    v9 = [*(a1 + 40) rootURLs];
    v11 = [v9 firstObject];
    v12 = [v11 path];
    [v10 setValue:v13 forKeyPath:v12];
  }

LABEL_6:
  dispatch_group_leave(*(a1 + 32));
  objc_sync_exit(v6);
}

void __70__FPDXPCServicer_copyDatabaseForFPCKStartingAtPath_completionHandler___block_invoke_3(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (![*(*(a1[6] + 8) + 40) count])
  {
    v2 = *(a1[7] + 8);
    v3 = *(v2 + 40);
    if (v3)
    {
      v4 = v3;
      v5 = *(v2 + 40);
      *(v2 + 40) = v4;
    }

    else
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6967210] code:21 userInfo:0];
      v7 = *(a1[7] + 8);
      v5 = *(v7 + 40);
      *(v7 + 40) = v6;
    }
  }

  v8 = *(a1[4] + 24);
  v18 = fpfs_adopt_log();
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v13 = a1[5];
    v14 = FPPopLogSectionForBlock();
    v15 = a1[4];
    v16 = [*(*(a1[6] + 8) + 40) copy];
    v17 = *(*(a1[7] + 8) + 40);
    *buf = 134219010;
    v20 = v14;
    v21 = 2112;
    v22 = v15;
    v23 = 2080;
    v24 = "[FPDXPCServicer copyDatabaseForFPCKStartingAtPath:completionHandler:]_block_invoke_3";
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = v17;
    _os_log_debug_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  v10 = a1[5];
  v11 = [*(*(a1[6] + 8) + 40) copy];
  (*(v10 + 16))(v10, v11, *(*(a1[7] + 8) + 40));

  __fp_pop_log();
  v12 = *MEMORY[0x1E69E9840];
}

- (void)waitForChangesOnItemsBelowItemWithID:(id)d completionHandler:(id)handler
{
  v57[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E69675D8];
  v57[0] = *MEMORY[0x1E6967558];
  v57[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v45 = __73__FPDXPCServicer_waitForChangesOnItemsBelowItemWithID_completionHandler___block_invoke;
  v46 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v48 = v10;
  v11 = v9;
  v12 = v44;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    v43 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    providerDomainID = [dCopy providerDomainID];
    v18 = [extensionManager domainWithID:providerDomainID reason:&v43];

    if (v18)
    {
      defaultBackend = [v18 defaultBackend];
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        defaultBackend2 = [v18 defaultBackend];
        identifier = [dCopy identifier];
        v23 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __73__FPDXPCServicer_waitForChangesOnItemsBelowItemWithID_completionHandler___block_invoke_408;
        v40[3] = &unk_1E83BE1A8;
        v40[4] = self;
        v41 = v10;
        [defaultBackend2 waitForChangesOnItemsBelowItemWithIdentifier:identifier request:v23 completionHandler:v40];
      }

      else
      {
        log = self->_log;
        v42 = fpfs_adopt_log();
        v31 = fp_current_or_default_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v38 = FPPopLogSectionForBlock();
          v39 = FPNotSupportedError();
          *buf = 134218754;
          v50 = v38;
          v51 = 2112;
          selfCopy3 = self;
          v53 = 2080;
          v54 = "[FPDXPCServicer waitForChangesOnItemsBelowItemWithID:completionHandler:]";
          v55 = 2112;
          v56 = v39;
          _os_log_debug_impl(&dword_1CEFC7000, v31, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
        }

        v32 = FPNotSupportedError();
        (*(v10 + 2))(v10, v32);

        __fp_pop_log();
      }
    }

    else
    {
      v25 = self->_log;
      v42 = fpfs_adopt_log();
      v26 = fp_current_or_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v34 = FPPopLogSectionForBlock();
        providerDomainID2 = [dCopy providerDomainID];
        fp_toProviderID = [providerDomainID2 fp_toProviderID];
        v37 = FPProviderNotFoundError();
        *buf = 134218754;
        v50 = v34;
        v51 = 2112;
        selfCopy3 = self;
        v53 = 2080;
        v54 = "[FPDXPCServicer waitForChangesOnItemsBelowItemWithID:completionHandler:]";
        v55 = 2112;
        v56 = v37;
        _os_log_debug_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      providerDomainID3 = [dCopy providerDomainID];
      fp_toProviderID2 = [providerDomainID3 fp_toProviderID];
      v29 = FPProviderNotFoundError();
      (*(v10 + 2))(v10, v29);

      __fp_pop_log();
    }
  }

  else
  {
    v24 = FPNotPermittedError();
    v45(v12, v24);
  }

  v33 = *MEMORY[0x1E69E9840];
}

void __73__FPDXPCServicer_waitForChangesOnItemsBelowItemWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer waitForChangesOnItemsBelowItemWithID:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __73__FPDXPCServicer_waitForChangesOnItemsBelowItemWithID_completionHandler___block_invoke_408(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer waitForChangesOnItemsBelowItemWithID:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)waitForStabilizationOfDomainWithID:(id)d mode:(unint64_t)mode completionHandler:(id)handler
{
  v48[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v10 = *MEMORY[0x1E69675D8];
  v48[0] = *MEMORY[0x1E6967558];
  v48[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v36 = __76__FPDXPCServicer_waitForStabilizationOfDomainWithID_mode_completionHandler___block_invoke;
  v37 = &unk_1E83BE1A8;
  selfCopy = self;
  v12 = handlerCopy;
  v39 = v12;
  v13 = v11;
  v14 = v35;
  connection = [(FPDXPCServicer *)self connection];
  v16 = [connection fp_hasOneOfEntitlements:v13];

  if (v16)
  {

    v34 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v19 = [extensionManager domainWithID:dCopy reason:&v34];

    if (v19)
    {
      defaultBackend = [v19 defaultBackend];
      v21 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __76__FPDXPCServicer_waitForStabilizationOfDomainWithID_mode_completionHandler___block_invoke_409;
      v31[3] = &unk_1E83BE1A8;
      v31[4] = self;
      v32 = v12;
      [defaultBackend waitForStabilizationForRequest:v21 mode:mode completionHandler:v31];
    }

    else
    {
      log = self->_log;
      v33 = fpfs_adopt_log();
      v24 = fp_current_or_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v28 = FPPopLogSectionForBlock();
        fp_toProviderID = [dCopy fp_toProviderID];
        v30 = FPProviderNotFoundError();
        *buf = 134218754;
        v41 = v28;
        v42 = 2112;
        selfCopy2 = self;
        v44 = 2080;
        v45 = "[FPDXPCServicer waitForStabilizationOfDomainWithID:mode:completionHandler:]";
        v46 = 2112;
        v47 = v30;
        _os_log_debug_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      fp_toProviderID2 = [dCopy fp_toProviderID];
      v26 = FPProviderNotFoundError();
      (*(v12 + 2))(v12, v26);

      __fp_pop_log();
    }
  }

  else
  {
    v22 = FPNotPermittedError();
    v36(v14, v22);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __76__FPDXPCServicer_waitForStabilizationOfDomainWithID_mode_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer waitForStabilizationOfDomainWithID:mode:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __76__FPDXPCServicer_waitForStabilizationOfDomainWithID_mode_completionHandler___block_invoke_409(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer waitForStabilizationOfDomainWithID:mode:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)spotlightReindexAllItemsForBundleID:(id)d protectionClass:(id)class completionHandler:(id)handler
{
  v30[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  classCopy = class;
  handlerCopy = handler;
  v11 = *MEMORY[0x1E69675D8];
  v30[0] = *MEMORY[0x1E6967558];
  v30[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v26 = __88__FPDXPCServicer_spotlightReindexAllItemsForBundleID_protectionClass_completionHandler___block_invoke;
  v27 = &unk_1E83BE1A8;
  selfCopy = self;
  v13 = handlerCopy;
  v29 = v13;
  v14 = v12;
  v15 = v25;
  connection = [(FPDXPCServicer *)self connection];
  v17 = [connection fp_hasOneOfEntitlements:v14];

  if (v17)
  {

    WeakRetained = objc_loadWeakRetained(&self->_server);
    spotlightDaemonClient = [WeakRetained spotlightDaemonClient];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __88__FPDXPCServicer_spotlightReindexAllItemsForBundleID_protectionClass_completionHandler___block_invoke_410;
    v23[3] = &unk_1E83BF9B0;
    v24 = v13;
    [spotlightDaemonClient reindexAllItemsForBundleID:dCopy protectionClass:classCopy acknowledgementHandler:v23];

    v20 = v24;
  }

  else
  {
    v21 = FPNotPermittedError();
    v26(v15, v21);

    v20 = v29;
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __88__FPDXPCServicer_spotlightReindexAllItemsForBundleID_protectionClass_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer spotlightReindexAllItemsForBundleID:protectionClass:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)spotlightReindexItemsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class completionHandler:(id)handler
{
  v33[2] = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  dCopy = d;
  classCopy = class;
  handlerCopy = handler;
  v14 = *MEMORY[0x1E69675D8];
  v33[0] = *MEMORY[0x1E6967558];
  v33[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v29 = __98__FPDXPCServicer_spotlightReindexItemsWithIdentifiers_bundleID_protectionClass_completionHandler___block_invoke;
  v30 = &unk_1E83BE1A8;
  selfCopy = self;
  v16 = handlerCopy;
  v32 = v16;
  v17 = v15;
  v18 = v28;
  connection = [(FPDXPCServicer *)self connection];
  v20 = [connection fp_hasOneOfEntitlements:v17];

  if (v20)
  {

    WeakRetained = objc_loadWeakRetained(&self->_server);
    spotlightDaemonClient = [WeakRetained spotlightDaemonClient];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __98__FPDXPCServicer_spotlightReindexItemsWithIdentifiers_bundleID_protectionClass_completionHandler___block_invoke_411;
    v26[3] = &unk_1E83BF9B0;
    v27 = v16;
    [spotlightDaemonClient reindexItemsWithIdentifiers:identifiersCopy bundleID:dCopy protectionClass:classCopy acknowledgementHandler:v26];

    v23 = v27;
  }

  else
  {
    v24 = FPNotPermittedError();
    v29(v18, v24);

    v23 = v32;
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __98__FPDXPCServicer_spotlightReindexItemsWithIdentifiers_bundleID_protectionClass_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer spotlightReindexItemsWithIdentifiers:bundleID:protectionClass:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)scheduleActionOperationWithInfo:(id)info completionHandler:(id)handler
{
  v29[3] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  handlerCopy = handler;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v25 = __68__FPDXPCServicer_scheduleActionOperationWithInfo_completionHandler___block_invoke;
  v26 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v28 = v8;
  WeakRetained = v24;
  selfCopy2 = self;
  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v12 = *MEMORY[0x1E6967540];
  v29[0] = *MEMORY[0x1E6967538];
  v29[1] = v12;
  v29[2] = *MEMORY[0x1E6967560];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];

  v14 = [connection fp_hasOneOfEntitlements:v13];
  if (v14)
  {

    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer scheduleActionOperationWithInfo:completionHandler:];
    }

    WeakRetained = objc_loadWeakRetained(&selfCopy2->_server);
    operationEngine = [WeakRetained operationEngine];
    currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
    v18 = [FPDRequest requestForXPCConnection:currentConnection];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __68__FPDXPCServicer_scheduleActionOperationWithInfo_completionHandler___block_invoke_412;
    v22[3] = &unk_1E83C06D0;
    v22[4] = selfCopy2;
    v19 = &v23;
    v23 = v8;
    [operationEngine scheduleActionOperationWithInfo:infoCopy request:v18 completionHandler:v22];
  }

  else
  {
    v19 = &v28;
    v20 = FPNotPermittedError();
    v25(WeakRetained, v20);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __68__FPDXPCServicer_scheduleActionOperationWithInfo_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer scheduleActionOperationWithInfo:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __68__FPDXPCServicer_scheduleActionOperationWithInfo_completionHandler___block_invoke_412(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v13 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    v11 = FPPopLogSectionForBlock();
    v12 = *(a1 + 32);
    *buf = 134219010;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2080;
    v19 = "[FPDXPCServicer scheduleActionOperationWithInfo:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)fetchDaemonOperationIDsWithCompletionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v24 = __63__FPDXPCServicer_fetchDaemonOperationIDsWithCompletionHandler___block_invoke;
  v25 = &unk_1E83BE1A8;
  selfCopy = self;
  v5 = handlerCopy;
  v27 = v5;
  v6 = v23;
  selfCopy2 = self;
  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v9 = *MEMORY[0x1E6967540];
  *buf = *MEMORY[0x1E6967538];
  *&buf[8] = v9;
  *&buf[16] = *MEMORY[0x1E6967560];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:3];

  v11 = [connection fp_hasOneOfEntitlements:v10];
  if (v11)
  {

    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer fetchDaemonOperationIDsWithCompletionHandler:];
    }

    WeakRetained = objc_loadWeakRetained(&selfCopy2->_server);
    operationEngine = [WeakRetained operationEngine];
    inFlightOperations = [operationEngine inFlightOperations];
    v16 = [inFlightOperations fp_map:&__block_literal_global_417];

    log = selfCopy2->_log;
    v22 = fpfs_adopt_log();
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v21 = FPPopLogSectionForBlock();
      *buf = 134219010;
      *&buf[4] = v21;
      *&buf[12] = 2112;
      *&buf[14] = selfCopy2;
      *&buf[22] = 2080;
      v29 = "[FPDXPCServicer fetchDaemonOperationIDsWithCompletionHandler:]";
      v30 = 2112;
      v31 = v16;
      v32 = 2112;
      v33 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(v5 + 2))(v5, v16, 0);
    __fp_pop_log();
  }

  else
  {
    v19 = FPNotPermittedError();
    v24(v6, v19);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __63__FPDXPCServicer_fetchDaemonOperationIDsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer fetchDaemonOperationIDsWithCompletionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

id __63__FPDXPCServicer_fetchDaemonOperationIDsWithCompletionHandler___block_invoke_414(uint64_t a1, void *a2)
{
  v2 = [a2 info];
  v3 = [v2 operationID];

  return v3;
}

- (void)fetchDaemonOperationWithID:(id)d completionHandler:(id)handler
{
  v50 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v39 = __63__FPDXPCServicer_fetchDaemonOperationWithID_completionHandler___block_invoke;
  v40 = &unk_1E83BE1A8;
  selfCopy = self;
  v32 = handlerCopy;
  v42 = v32;
  v8 = v38;
  selfCopy2 = self;
  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v11 = *MEMORY[0x1E6967540];
  *buf = *MEMORY[0x1E6967538];
  *&buf[8] = v11;
  *&buf[16] = *MEMORY[0x1E6967560];
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:3];

  v13 = [connection fp_hasOneOfEntitlements:v12];
  if (v13)
  {

    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer fetchDaemonOperationWithID:completionHandler:];
    }

    WeakRetained = objc_loadWeakRetained(&selfCopy2->_server);
    operationEngine = [WeakRetained operationEngine];
    inFlightOperations = [operationEngine inFlightOperations];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v18 = inFlightOperations;
    v19 = [v18 countByEnumeratingWithState:&v34 objects:v49 count:16];
    if (v19)
    {
      v20 = *v35;
      while (2)
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v35 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v34 + 1) + 8 * i);
          info = [v22 info];
          operationID = [info operationID];
          v25 = [operationID isEqualToString:dCopy];

          if (v25)
          {
            v19 = v22;
            info2 = [v19 info];
            goto LABEL_15;
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v34 objects:v49 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    info2 = 0;
LABEL_15:

    log = selfCopy2->_log;
    v33 = fpfs_adopt_log();
    v29 = fp_current_or_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v31 = FPPopLogSectionForBlock();
      *buf = 134219010;
      *&buf[4] = v31;
      *&buf[12] = 2112;
      *&buf[14] = selfCopy2;
      *&buf[22] = 2080;
      v44 = "[FPDXPCServicer fetchDaemonOperationWithID:completionHandler:]";
      v45 = 2112;
      v46 = v19;
      v47 = 2112;
      v48 = info2;
      _os_log_debug_impl(&dword_1CEFC7000, v29, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(v32 + 2))(v32, v19, info2, 0);
    __fp_pop_log();
  }

  else
  {
    v27 = FPNotPermittedError();
    v39(v8, v27);
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __63__FPDXPCServicer_fetchDaemonOperationWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219266;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer fetchDaemonOperationWithID:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = 0;
    v21 = 2112;
    v22 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)startAccessingExtensionForProviderDomainID:(id)d handler:(id)handler
{
  v48 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  if (dCopy)
  {
    v32 = 0;
    v8 = [(FPDXPCServicer *)self createDomainServicerForProviderDomainID:dCopy provider:0 enumerateEntitlementRequired:1 error:&v32];
    v9 = v32;
    if (v8)
    {
      v33 = 0;
      v10 = [v8 domainOrNil:&v33];
      v11 = v10;
      if (v10)
      {
        defaultBackend = [v10 defaultBackend];
        v13 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __69__FPDXPCServicer_startAccessingExtensionForProviderDomainID_handler___block_invoke;
        v28[3] = &unk_1E83C0718;
        v28[4] = self;
        v30 = handlerCopy;
        v29 = v8;
        [defaultBackend fetchVendorEndpointWithRequest:v13 completionHandler:v28];
      }

      else
      {
        log = self->_log;
        v31 = fpfs_adopt_log();
        v20 = fp_current_or_default_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v26 = FPPopLogSectionForBlock();
          v27 = FPProviderNotFoundError();
          *buf = 134219522;
          v35 = v26;
          v36 = 2112;
          selfCopy3 = self;
          v38 = 2080;
          v39 = "[FPDXPCServicer startAccessingExtensionForProviderDomainID:handler:]";
          v40 = 2112;
          v41 = 0;
          v42 = 2112;
          v43 = 0;
          v44 = 2112;
          v45 = 0;
          v46 = 2112;
          v47 = v27;
          _os_log_debug_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@", buf, 0x48u);
        }

        v21 = FPProviderNotFoundError();
        (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v21);

        __fp_pop_log();
      }
    }

    else
    {
      v17 = self->_log;
      v33 = fpfs_adopt_log();
      v18 = fp_current_or_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v25 = FPPopLogSectionForBlock();
        *buf = 134219522;
        v35 = v25;
        v36 = 2112;
        selfCopy3 = self;
        v38 = 2080;
        v39 = "[FPDXPCServicer startAccessingExtensionForProviderDomainID:handler:]";
        v40 = 2112;
        v41 = 0;
        v42 = 2112;
        v43 = 0;
        v44 = 2112;
        v45 = 0;
        v46 = 2112;
        v47 = v9;
        _os_log_debug_impl(&dword_1CEFC7000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@", buf, 0x48u);
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v9);
      __fp_pop_log();
    }
  }

  else
  {
    v14 = self->_log;
    v33 = fpfs_adopt_log();
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v23 = FPPopLogSectionForBlock();
      v24 = FPInvalidParameterError();
      *buf = 134219522;
      v35 = v23;
      v36 = 2112;
      selfCopy3 = self;
      v38 = 2080;
      v39 = "[FPDXPCServicer startAccessingExtensionForProviderDomainID:handler:]";
      v40 = 2112;
      v41 = 0;
      v42 = 2112;
      v43 = 0;
      v44 = 2112;
      v45 = 0;
      v46 = 2112;
      v47 = v24;
      _os_log_debug_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@", buf, 0x48u);
    }

    v16 = FPInvalidParameterError();
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v16);

    __fp_pop_log();
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __69__FPDXPCServicer_startAccessingExtensionForProviderDomainID_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 40) startExtendingLifetime];
    v7 = *(*(a1 + 32) + 24);
    v23 = fpfs_adopt_log();
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 48);
      v16 = FPPopLogSectionForBlock();
      v18 = *(a1 + 32);
      v17 = *(a1 + 40);
      v19 = [v17 providerDomainID];
      *buf = 134219522;
      v26 = v16;
      v27 = 2112;
      v28 = v18;
      v29 = 2080;
      v30 = "[FPDXPCServicer startAccessingExtensionForProviderDomainID:handler:]_block_invoke";
      v31 = 2112;
      v32 = v5;
      v33 = 2112;
      v34 = v17;
      v35 = 2112;
      v36 = v19;
      v37 = 2112;
      v38 = v6;
      _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@", buf, 0x48u);
    }

    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = [v9 providerDomainID];
    (*(v10 + 16))(v10, v5, v9, v11, v6);

    __fp_pop_log();
  }

  else
  {
    v12 = *(*(a1 + 32) + 24);
    v24 = fpfs_adopt_log();
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 48);
      v21 = FPPopLogSectionForBlock();
      v22 = *(a1 + 32);
      *buf = 134219522;
      v26 = v21;
      v27 = 2112;
      v28 = v22;
      v29 = 2080;
      v30 = "[FPDXPCServicer startAccessingExtensionForProviderDomainID:handler:]_block_invoke";
      v31 = 2112;
      v32 = 0;
      v33 = 2112;
      v34 = 0;
      v35 = 2112;
      v36 = 0;
      v37 = 2112;
      v38 = v6;
      _os_log_debug_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@", buf, 0x48u);
    }

    (*(*(a1 + 48) + 16))();
    __fp_pop_log();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)startAccessingOperationServiceForProviderDomainID:(id)d handler:(id)handler
{
  v49 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  if (dCopy)
  {
    v31 = 0;
    v8 = [(FPDXPCServicer *)self createDomainServicerForProviderDomainID:dCopy provider:0 enumerateEntitlementRequired:0 error:&v31];
    v9 = v31;
    v32 = 0;
    v10 = [v8 domainOrNil:&v32];
    v11 = v10;
    if (v8)
    {
      if (v10)
      {
        v12 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __76__FPDXPCServicer_startAccessingOperationServiceForProviderDomainID_handler___block_invoke;
        v27[3] = &unk_1E83C0740;
        v27[4] = self;
        v29 = handlerCopy;
        v28 = v8;
        [v11 fetchOperationServiceOrEndpointWithRequest:v12 completionHandler:v27];
      }

      else
      {
        log = self->_log;
        v30 = fpfs_adopt_log();
        v19 = fp_current_or_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v25 = FPPopLogSectionForBlock();
          v26 = FPProviderNotFoundError();
          *buf = 134219778;
          v34 = v25;
          v35 = 2112;
          selfCopy3 = self;
          v37 = 2080;
          v38 = "[FPDXPCServicer startAccessingOperationServiceForProviderDomainID:handler:]";
          v39 = 2112;
          v40 = 0;
          v41 = 2112;
          v42 = 0;
          v43 = 2112;
          v44 = 0;
          v45 = 2112;
          v46 = 0;
          v47 = 2112;
          v48 = v26;
          _os_log_debug_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@, %@", buf, 0x52u);
        }

        v20 = FPProviderNotFoundError();
        (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, v20);

        __fp_pop_log();
      }
    }

    else
    {
      v16 = self->_log;
      v30 = fpfs_adopt_log();
      v17 = fp_current_or_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v24 = FPPopLogSectionForBlock();
        *buf = 134219778;
        v34 = v24;
        v35 = 2112;
        selfCopy3 = self;
        v37 = 2080;
        v38 = "[FPDXPCServicer startAccessingOperationServiceForProviderDomainID:handler:]";
        v39 = 2112;
        v40 = 0;
        v41 = 2112;
        v42 = 0;
        v43 = 2112;
        v44 = 0;
        v45 = 2112;
        v46 = 0;
        v47 = 2112;
        v48 = v9;
        _os_log_debug_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@, %@", buf, 0x52u);
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, v9);
      __fp_pop_log();
    }
  }

  else
  {
    v13 = self->_log;
    v32 = fpfs_adopt_log();
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v22 = FPPopLogSectionForBlock();
      v23 = FPInvalidParameterError();
      *buf = 134219778;
      v34 = v22;
      v35 = 2112;
      selfCopy3 = self;
      v37 = 2080;
      v38 = "[FPDXPCServicer startAccessingOperationServiceForProviderDomainID:handler:]";
      v39 = 2112;
      v40 = 0;
      v41 = 2112;
      v42 = 0;
      v43 = 2112;
      v44 = 0;
      v45 = 2112;
      v46 = 0;
      v47 = 2112;
      v48 = v23;
      _os_log_debug_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@, %@", buf, 0x52u);
    }

    v15 = FPInvalidParameterError();
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, v15);

    __fp_pop_log();
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __76__FPDXPCServicer_startAccessingOperationServiceForProviderDomainID_handler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 | v8)
  {
    [*(a1 + 40) startExtendingLifetime];
    v10 = *(*(a1 + 32) + 24);
    v26 = fpfs_adopt_log();
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 48);
      v19 = FPPopLogSectionForBlock();
      v21 = *(a1 + 32);
      v20 = *(a1 + 40);
      v22 = [v20 providerDomainID];
      *buf = 134219778;
      v29 = v19;
      v30 = 2112;
      v31 = v21;
      v32 = 2080;
      v33 = "[FPDXPCServicer startAccessingOperationServiceForProviderDomainID:handler:]_block_invoke";
      v34 = 2112;
      v35 = v7;
      v36 = 2112;
      v37 = v8;
      v38 = 2112;
      v39 = v20;
      v40 = 2112;
      v41 = v22;
      v42 = 2112;
      v43 = v9;
      _os_log_debug_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@, %@", buf, 0x52u);
    }

    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = [v12 providerDomainID];
    (*(v13 + 16))(v13, v7, v8, v12, v14, v9);

    __fp_pop_log();
  }

  else
  {
    v15 = *(*(a1 + 32) + 24);
    v27 = fpfs_adopt_log();
    v16 = fp_current_or_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 48);
      v24 = FPPopLogSectionForBlock();
      v25 = *(a1 + 32);
      *buf = 134219778;
      v29 = v24;
      v30 = 2112;
      v31 = v25;
      v32 = 2080;
      v33 = "[FPDXPCServicer startAccessingOperationServiceForProviderDomainID:handler:]_block_invoke";
      v34 = 2112;
      v35 = 0;
      v36 = 2112;
      v37 = 0;
      v38 = 2112;
      v39 = 0;
      v40 = 2112;
      v41 = 0;
      v42 = 2112;
      v43 = v9;
      _os_log_debug_impl(&dword_1CEFC7000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@, %@", buf, 0x52u);
    }

    (*(*(a1 + 48) + 16))();
    __fp_pop_log();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)startAccessingServiceForItemID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__FPDXPCServicer_startAccessingServiceForItemID_completionHandler___block_invoke;
  v10[3] = &unk_1E83C0768;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(FPDXPCServicer *)self startAccessingServiceWithName:0 itemID:dCopy domain:0 connection:currentConnection enumerateEntitlementRequired:1 completionHandler:v10];
}

void __67__FPDXPCServicer_startAccessingServiceForItemID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v39 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = *(*(a1 + 32) + 24);
  v22 = fpfs_adopt_log();
  v17 = fp_current_or_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 40);
    v20 = FPPopLogSectionForBlock();
    v21 = *(a1 + 32);
    *buf = 134219778;
    v24 = v20;
    v25 = 2112;
    v26 = v21;
    v27 = 2080;
    v28 = "[FPDXPCServicer startAccessingServiceForItemID:completionHandler:]_block_invoke";
    v29 = 2112;
    v30 = v11;
    v31 = 2112;
    v32 = v12;
    v33 = 2112;
    v34 = v13;
    v35 = 2112;
    v36 = v14;
    v37 = 2112;
    v38 = v15;
    _os_log_debug_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@, %@", buf, 0x52u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v18 = *MEMORY[0x1E69E9840];
}

- (void)startAccessingServiceWithName:(id)name itemURL:(id)l completionHandler:(id)handler
{
  v85 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  lCopy = l;
  handlerCopy = handler;
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v65 = __74__FPDXPCServicer_startAccessingServiceWithName_itemURL_completionHandler___block_invoke;
  v66 = &unk_1E83BE1A8;
  selfCopy = self;
  v11 = handlerCopy;
  v68 = v11;
  selfCopy2 = self;
  v13 = lCopy;
  v14 = v64;
  if (!v13)
  {
    v34 = FPInvalidParameterError();
LABEL_19:
    v40 = v34;
    v65(v14, v34);

    goto LABEL_27;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v16 = [connection fp_hasSandboxAccessToFile:v13 logLevel:0];

  if ((v16 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    *buf = *MEMORY[0x1E6967560];
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v19 = [connection2 fp_hasOneOfEntitlements:v18 nonSandboxedAccess:0 logLevel:0];

    if ((v19 & 1) == 0)
    {
      v34 = FPNotPermittedWriteError();
      goto LABEL_19;
    }
  }

  v63 = 0;
  server = [(FPDXPCServicer *)selfCopy2 server];
  extensionManager = [server extensionManager];
  v22 = [extensionManager domainForURL:v13 reason:&v63];

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  if ([nameCopy hasPrefix:@"com.apple.CloudDocs"] && (objc_msgSend(v22, "provider"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "identifier"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "fp_isiCloudDriveIdentifier"), v24, v23, (v25 & 1) == 0))
  {
    log = selfCopy2->_log;
    v62 = fpfs_adopt_log();
    v42 = fp_current_or_default_log();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v48 = FPPopLogSectionForBlock();
      v49 = FPNotSupportedError();
      *buf = 134219778;
      *&buf[4] = v48;
      v71 = 2112;
      v72 = selfCopy2;
      v73 = 2080;
      v74 = "[FPDXPCServicer startAccessingServiceWithName:itemURL:completionHandler:]";
      v75 = 2112;
      v76 = 0;
      v77 = 2112;
      v78 = 0;
      v79 = 2112;
      v80 = 0;
      v81 = 2112;
      v82 = 0;
      v83 = 2112;
      v84 = v49;
      _os_log_debug_impl(&dword_1CEFC7000, v42, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@, %@", buf, 0x52u);
    }

    v43 = FPNotSupportedError();
    (*(v11 + 2))(v11, 0, 0, 0, 0, v43);

    __fp_pop_log();
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    extensionStorageURLs = [v22 extensionStorageURLs];
    rootURLs = [v22 rootURLs];
    v28 = [extensionStorageURLs arrayByAddingObjectsFromArray:rootURLs];

    v29 = [v28 countByEnumeratingWithState:&v58 objects:v69 count:16];
    if (v29)
    {
      v30 = *v59;
      while (2)
      {
        v31 = 0;
        do
        {
          if (*v59 != v30)
          {
            objc_enumerationMutation(v28);
          }

          if ([*(*(&v58 + 1) + 8 * v31) fp_relationshipToItemAtURL:v13] == 1)
          {
            v35 = MEMORY[0x1E69673A0];
            providerDomainID = [v22 providerDomainID];
            fp_toProviderID = [providerDomainID fp_toProviderID];
            identifier = [v22 identifier];
            v39 = [v35 rootItemIDWithProviderIdentifier:fp_toProviderID domainIdentifier:identifier];

            [(FPDXPCServicer *)selfCopy2 startAccessingServiceWithName:nameCopy itemID:v39 domain:v22 connection:currentConnection enumerateEntitlementRequired:0 completionHandler:v11];
            goto LABEL_26;
          }

          ++v31;
        }

        while (v29 != v31);
        v29 = [v28 countByEnumeratingWithState:&v58 objects:v69 count:16];
        if (v29)
        {
          continue;
        }

        break;
      }
    }

    if (v22)
    {
      v32 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
      defaultBackend = [v22 defaultBackend];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __74__FPDXPCServicer_startAccessingServiceWithName_itemURL_completionHandler___block_invoke_425;
      v53[3] = &unk_1E83BE8F0;
      v53[4] = selfCopy2;
      v57 = v11;
      v54 = nameCopy;
      v55 = v22;
      v56 = currentConnection;
      [defaultBackend itemIDForURL:v13 requireProviderItemID:0 request:v32 completionHandler:v53];
    }

    else
    {
      v44 = selfCopy2->_log;
      v62 = fpfs_adopt_log();
      v45 = fp_current_or_default_log();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        v50 = FPPopLogSectionForBlock();
        v51 = FPProviderNotFoundErrorForURLWithReason();
        *buf = 134219778;
        *&buf[4] = v50;
        v71 = 2112;
        v72 = selfCopy2;
        v73 = 2080;
        v74 = "[FPDXPCServicer startAccessingServiceWithName:itemURL:completionHandler:]";
        v75 = 2112;
        v76 = 0;
        v77 = 2112;
        v78 = 0;
        v79 = 2112;
        v80 = 0;
        v81 = 2112;
        v82 = 0;
        v83 = 2112;
        v84 = v51;
        _os_log_debug_impl(&dword_1CEFC7000, v45, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@, %@", buf, 0x52u);
      }

      v46 = FPProviderNotFoundErrorForURLWithReason();
      (*(v11 + 2))(v11, 0, 0, 0, 0, v46);

      __fp_pop_log();
    }
  }

LABEL_26:

LABEL_27:
  v47 = *MEMORY[0x1E69E9840];
}

void __74__FPDXPCServicer_startAccessingServiceWithName_itemURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219778;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer startAccessingServiceWithName:itemURL:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = 0;
    v21 = 2112;
    v22 = 0;
    v23 = 2112;
    v24 = 0;
    v25 = 2112;
    v26 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@, %@", buf, 0x52u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __74__FPDXPCServicer_startAccessingServiceWithName_itemURL_completionHandler___block_invoke_425(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = *(*(a1 + 32) + 24);
    v14 = fpfs_adopt_log();
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 64);
      v12 = FPPopLogSectionForBlock();
      v13 = *(a1 + 32);
      *buf = 134219778;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      v19 = 2080;
      v20 = "[FPDXPCServicer startAccessingServiceWithName:itemURL:completionHandler:]_block_invoke";
      v21 = 2112;
      v22 = 0;
      v23 = 2112;
      v24 = 0;
      v25 = 2112;
      v26 = 0;
      v27 = 2112;
      v28 = 0;
      v29 = 2112;
      v30 = v7;
      _os_log_debug_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@, %@", buf, 0x52u);
    }

    (*(*(a1 + 64) + 16))();
    __fp_pop_log();
  }

  else
  {
    [*(a1 + 32) startAccessingServiceWithName:*(a1 + 40) itemID:v5 domain:*(a1 + 48) connection:*(a1 + 56) enumerateEntitlementRequired:0 completionHandler:*(a1 + 64)];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)enumerateSearchResultForRequest:(id)request providerDomainID:(id)d completionHandler:(id)handler
{
  v68[2] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  dCopy = d;
  handlerCopy = handler;
  v11 = *MEMORY[0x1E6967598];
  v68[0] = *MEMORY[0x1E6967558];
  v68[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v53 = __85__FPDXPCServicer_enumerateSearchResultForRequest_providerDomainID_completionHandler___block_invoke;
  v54 = &unk_1E83BE1A8;
  selfCopy = self;
  v13 = handlerCopy;
  v56 = v13;
  v14 = v12;
  v15 = v52;
  connection = [(FPDXPCServicer *)self connection];
  v17 = [connection fp_hasOneOfEntitlements:v14];

  if (v17)
  {

    v51 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v20 = [extensionManager domainWithID:dCopy reason:&v51];

    if (v20)
    {
      if ([v20 supportsStringSearchRequest])
      {
        defaultBackend = [v20 defaultBackend];
        if (defaultBackend)
        {
          v22 = objc_alloc_init(FPDXPCDomainServicerLifetimeExtender);
          [(FPDXPCDomainServicerLifetimeExtender *)v22 setRequestEffectivePID:[(FPDXPCServicer *)self pid]];
          dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"search enumerator for %@", dCopy];
          [(FPDXPCDomainServicerLifetimeExtender *)v22 setPrettyDescription:dCopy];

          session = [v20 session];
          objc_initWeak(location, session);

          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __85__FPDXPCServicer_enumerateSearchResultForRequest_providerDomainID_completionHandler___block_invoke_430;
          v48[3] = &unk_1E83BE450;
          objc_copyWeak(&v49, location);
          [(FPDXPCDomainServicerLifetimeExtender *)v22 setStopBlock:v48];
          if (!v22)
          {
            __assert_rtn("[FPDXPCServicer enumerateSearchResultForRequest:providerDomainID:completionHandler:]", "FPDXPCServicer.m", 3883, "extender");
          }

          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = __85__FPDXPCServicer_enumerateSearchResultForRequest_providerDomainID_completionHandler___block_invoke_2;
          v45[3] = &unk_1E83C0790;
          v45[4] = self;
          v47 = v13;
          v25 = v22;
          v46 = v25;
          [defaultBackend enumerateSearchResultForRequest:requestCopy lifetimeExtender:v25 completionHandler:v45];

          objc_destroyWeak(&v49);
          objc_destroyWeak(location);
        }

        else
        {
          v35 = fp_current_or_default_log();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            [FPDXPCServicer enumerateSearchResultForRequest:providerDomainID:completionHandler:];
          }

          v36 = objc_alloc(MEMORY[0x1E696ABC0]);
          v25 = [v36 initWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
          log = self->_log;
          v50 = fpfs_adopt_log();
          v38 = fp_current_or_default_log();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            v44 = FPPopLogSectionForBlock();
            *location = 134219266;
            *&location[4] = v44;
            v58 = 2112;
            selfCopy4 = self;
            v60 = 2080;
            v61 = "[FPDXPCServicer enumerateSearchResultForRequest:providerDomainID:completionHandler:]";
            v62 = 2112;
            v63 = 0;
            v64 = 2112;
            v65 = 0;
            v66 = 2112;
            v67 = v25;
            _os_log_debug_impl(&dword_1CEFC7000, v38, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", location, 0x3Eu);
          }

          (*(v13 + 2))(v13, 0, 0, v25);
          __fp_pop_log();
        }
      }

      else
      {
        v31 = fp_current_or_default_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [FPDXPCServicer enumerateSearchResultForRequest:providerDomainID:completionHandler:];
        }

        v32 = self->_log;
        v50 = fpfs_adopt_log();
        v33 = fp_current_or_default_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          v42 = FPPopLogSectionForBlock();
          v43 = FPNotSupportedError();
          *location = 134219266;
          *&location[4] = v42;
          v58 = 2112;
          selfCopy4 = self;
          v60 = 2080;
          v61 = "[FPDXPCServicer enumerateSearchResultForRequest:providerDomainID:completionHandler:]";
          v62 = 2112;
          v63 = 0;
          v64 = 2112;
          v65 = 0;
          v66 = 2112;
          v67 = v43;
          _os_log_debug_impl(&dword_1CEFC7000, v33, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", location, 0x3Eu);
        }

        v34 = FPNotSupportedError();
        (*(v13 + 2))(v13, 0, 0, v34);

        __fp_pop_log();
      }
    }

    else
    {
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [FPDXPCServicer enumerateSearchResultForRequest:dCopy providerDomainID:&v51 completionHandler:?];
      }

      v28 = self->_log;
      v50 = fpfs_adopt_log();
      v29 = fp_current_or_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v40 = FPPopLogSectionForBlock();
        v41 = FPProviderNotFoundError();
        *location = 134219266;
        *&location[4] = v40;
        v58 = 2112;
        selfCopy4 = self;
        v60 = 2080;
        v61 = "[FPDXPCServicer enumerateSearchResultForRequest:providerDomainID:completionHandler:]";
        v62 = 2112;
        v63 = 0;
        v64 = 2112;
        v65 = 0;
        v66 = 2112;
        v67 = v41;
        _os_log_debug_impl(&dword_1CEFC7000, v29, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", location, 0x3Eu);
      }

      v30 = FPProviderNotFoundError();
      (*(v13 + 2))(v13, 0, 0, v30);

      __fp_pop_log();
    }
  }

  else
  {
    v26 = FPNotPermittedError();
    v53(v15, v26);
  }

  v39 = *MEMORY[0x1E69E9840];
}

void __85__FPDXPCServicer_enumerateSearchResultForRequest_providerDomainID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219266;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer enumerateSearchResultForRequest:providerDomainID:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = 0;
    v21 = 2112;
    v22 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __85__FPDXPCServicer_enumerateSearchResultForRequest_providerDomainID_completionHandler___block_invoke_430(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained unregisterLifetimeExtensionForObject:v3];
}

void __85__FPDXPCServicer_enumerateSearchResultForRequest_providerDomainID_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[4] + 24);
  v15 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[6];
    v12 = FPPopLogSectionForBlock();
    v13 = a1[4];
    v14 = a1[5];
    *buf = 134219266;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    v20 = 2080;
    v21 = "[FPDXPCServicer enumerateSearchResultForRequest:providerDomainID:completionHandler:]_block_invoke_2";
    v22 = 2112;
    v23 = v5;
    v24 = 2112;
    v25 = v14;
    v26 = 2112;
    v27 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  v9 = a1[5];
  (*(a1[6] + 16))();
  __fp_pop_log();

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_performWithCheckedEnumerationAttributes:(id)attributes completionHandler:(id)handler
{
  attributesCopy = attributes;
  handlerCopy = handler;
  v8 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
  if (([attributesCopy requireSandboxAccess] & 1) != 0 || (objc_msgSend(attributesCopy, "enumeratedURL"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer _performWithCheckedEnumerationAttributes:completionHandler:];
    }

    v11 = 0;
  }

  else
  {
    enumeratedItemID = [attributesCopy enumeratedItemID];
    providerID = [enumeratedItemID providerID];
    v61[0] = 0;
    v19 = [(FPDXPCServicer *)self providerForIdentifier:providerID enumerateEntitlementRequired:1 error:v61];
    v11 = v61[0];

    if (v19)
    {
      v20 = 0;
      goto LABEL_15;
    }
  }

  searchQuery = [attributesCopy searchQuery];
  if (searchQuery)
  {

    goto LABEL_9;
  }

  enumeratedItemID2 = [attributesCopy enumeratedItemID];
  identifier = [enumeratedItemID2 identifier];
  v15 = [identifier isEqual:*MEMORY[0x1E6967298]];

  if (v15)
  {
LABEL_9:
    if (v11)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v11);
    }

    else
    {
      v16 = FPNotPermittedError();
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v16);

      v11 = 0;
    }

    goto LABEL_32;
  }

  v19 = 0;
  v20 = 1;
LABEL_15:
  enumeratedURL = [attributesCopy enumeratedURL];

  if (enumeratedURL)
  {
    connection = [(FPDXPCServicer *)self connection];
    enumeratedURL2 = [attributesCopy enumeratedURL];
    v24 = [connection fp_hasSandboxAccessToFile:enumeratedURL2 accessType:*MEMORY[0x1E6966DB8] logLevel:1];

    if (v24)
    {
      v47 = v19;
      v60 = 0;
      server = [(FPDXPCServicer *)self server];
      extensionManager = [server extensionManager];
      enumeratedURL3 = [attributesCopy enumeratedURL];
      v28 = [extensionManager domainForURL:enumeratedURL3 reason:&v60];

      if (v28)
      {
        defaultBackend = [v28 defaultBackend];
        enumeratedURL4 = [attributesCopy enumeratedURL];
        v31 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __77__FPDXPCServicer__performWithCheckedEnumerationAttributes_completionHandler___block_invoke_435;
        v49[3] = &unk_1E83C0248;
        v50 = attributesCopy;
        v53 = handlerCopy;
        v51 = v28;
        v52 = v8;
        [defaultBackend itemIDForURL:enumeratedURL4 requireProviderItemID:0 request:v31 completionHandler:v49];

        enumeratedURL5 = v50;
      }

      else
      {
        enumeratedURL5 = [attributesCopy enumeratedURL];
        v46 = FPProviderNotFoundErrorForURL();
        (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v46);
      }
    }

    else
    {
      v42 = fp_current_or_default_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer _performWithCheckedEnumerationAttributes:attributesCopy completionHandler:?];
      }

      v43 = FPNotPermittedError();
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v43);
    }
  }

  else
  {
    v48 = v19;
    v60 = 0;
    server2 = [(FPDXPCServicer *)self server];
    extensionManager2 = [server2 extensionManager];
    enumeratedItemID3 = [attributesCopy enumeratedItemID];
    v36 = [extensionManager2 domainFromItemID:enumeratedItemID3 reason:&v60];

    v37 = v36;
    if (v36)
    {
      v38 = v48;
      if (v20)
      {
        v39 = fp_current_or_default_log();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          [FPDXPCServicer _performWithCheckedEnumerationAttributes:completionHandler:];
        }

        defaultBackend2 = [v37 defaultBackend];
        enumeratedItemID4 = [attributesCopy enumeratedItemID];
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __77__FPDXPCServicer__performWithCheckedEnumerationAttributes_completionHandler___block_invoke;
        v54[3] = &unk_1E83C07B8;
        v55 = attributesCopy;
        v59 = handlerCopy;
        selfCopy = self;
        v57 = v37;
        v58 = v8;
        [defaultBackend2 URLForItemID:enumeratedItemID4 creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:1 forBookmarkResolution:0 request:v58 completionHandler:v54];
      }

      else
      {
        defaultBackend2 = [attributesCopy enumeratedItemID];
        (*(handlerCopy + 2))(handlerCopy, v37, v8, defaultBackend2, 0);
      }
    }

    else
    {
      defaultBackend2 = [attributesCopy enumeratedItemID];
      providerDomainID = [defaultBackend2 providerDomainID];
      v45 = FPProviderNotFoundError();
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v45);

      v38 = v48;
    }
  }

LABEL_32:
}

void __77__FPDXPCServicer__performWithCheckedEnumerationAttributes_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 url];

  if (v7)
  {
    v8 = [*(a1 + 40) connection];
    v9 = [v6 url];
    v10 = [v8 fp_hasSandboxAccessToFile:v9 accessType:*MEMORY[0x1E6966DB8] logLevel:1];

    if (v10)
    {
      v12 = *(a1 + 56);
      v11 = *(a1 + 64);
      v13 = *(a1 + 48);
      v14 = [*(a1 + 32) enumeratedItemID];
      (*(v11 + 16))(v11, v13, v12, v14, 0);
    }

    else
    {
      v16 = fp_current_or_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __77__FPDXPCServicer__performWithCheckedEnumerationAttributes_completionHandler___block_invoke_cold_1(v6);
      }

      v17 = *(a1 + 64);
      v18 = FPNotPermittedError();
      (*(v17 + 16))(v17, 0, 0, 0, v18);
    }
  }

  else
  {
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __77__FPDXPCServicer__performWithCheckedEnumerationAttributes_completionHandler___block_invoke_cold_2();
    }

    (*(*(a1 + 64) + 16))();
  }
}

void __77__FPDXPCServicer__performWithCheckedEnumerationAttributes_completionHandler___block_invoke_435(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = v5;
  if (!v10 || v5)
  {
    if (!v5)
    {
      v9 = [*(a1 + 32) enumeratedURL];
      v6 = FPItemNotFoundErrorAtURL();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 40);
    (*(*(a1 + 56) + 16))();
  }
}

- (void)fetchAndStartEnumeratingWithSettings:(id)settings observer:(id)observer completionHandler:(id)handler
{
  settingsCopy = settings;
  observerCopy = observer;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__FPDXPCServicer_fetchAndStartEnumeratingWithSettings_observer_completionHandler___block_invoke;
  v14[3] = &unk_1E83C0808;
  v14[4] = self;
  v15 = settingsCopy;
  v16 = observerCopy;
  v17 = handlerCopy;
  v11 = observerCopy;
  v12 = settingsCopy;
  v13 = handlerCopy;
  [(FPDXPCServicer *)self _performWithCheckedEnumerationAttributes:v12 completionHandler:v14];
}

void __82__FPDXPCServicer_fetchAndStartEnumeratingWithSettings_observer_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v44 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (!v9 || v12)
  {
    v19 = *(*(a1 + 32) + 24);
    v32 = fpfs_adopt_log();
    v20 = fp_current_or_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v24 = *(a1 + 56);
      v25 = FPPopLogSectionForBlock();
      v26 = *(a1 + 32);
      *location = 134219266;
      *&location[4] = v25;
      v34 = 2112;
      v35 = v26;
      v36 = 2080;
      v37 = "[FPDXPCServicer fetchAndStartEnumeratingWithSettings:observer:completionHandler:]_block_invoke";
      v38 = 2112;
      v39 = 0;
      v40 = 2112;
      v41 = 0;
      v42 = 2112;
      v43 = v13;
      _os_log_debug_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", location, 0x3Eu);
    }

    (*(*(a1 + 56) + 16))();
    __fp_pop_log();
  }

  else
  {
    v14 = [*(a1 + 40) copy];
    [v14 setEnumeratedItemID:v11];
    v15 = [[WrappedFPXEnumeratorObserverProxy alloc] initWithTarget:*(a1 + 48)];
    v16 = objc_opt_new();
    [v16 setRequestEffectivePID:{objc_msgSend(*(a1 + 32), "pid")}];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"enumerator of %@ for %@", v14, v10];
    [v16 setPrettyDescription:v17];

    v18 = [v9 session];
    objc_initWeak(location, v18);

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __82__FPDXPCServicer_fetchAndStartEnumeratingWithSettings_observer_completionHandler___block_invoke_441;
    v30[3] = &unk_1E83BE450;
    objc_copyWeak(&v31, location);
    [v16 setStopBlock:v30];
    if (!v16)
    {
      __assert_rtn("[FPDXPCServicer fetchAndStartEnumeratingWithSettings:observer:completionHandler:]_block_invoke_2", "FPDXPCServicer.m", 3999, "extender");
    }

    if ([v14 wantsDirectExtensionEnumeration])
    {
      [v9 extensionBackend];
    }

    else
    {
      [v9 defaultBackend];
    }
    v21 = ;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __82__FPDXPCServicer_fetchAndStartEnumeratingWithSettings_observer_completionHandler___block_invoke_3;
    v27[3] = &unk_1E83C07E0;
    v27[4] = *(a1 + 32);
    v29 = *(a1 + 56);
    v22 = v16;
    v28 = v22;
    [v21 enumerateWithSettings:v14 lifetimeExtender:v22 observer:v15 completionHandler:v27];

    objc_destroyWeak(&v31);
    objc_destroyWeak(location);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __82__FPDXPCServicer_fetchAndStartEnumeratingWithSettings_observer_completionHandler___block_invoke_441(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained unregisterLifetimeExtensionForObject:v3];
}

void __82__FPDXPCServicer_fetchAndStartEnumeratingWithSettings_observer_completionHandler___block_invoke_3(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[4] + 24);
  v15 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[6];
    v12 = FPPopLogSectionForBlock();
    v13 = a1[4];
    v14 = a1[5];
    *buf = 134219266;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    v20 = 2080;
    v21 = "[FPDXPCServicer fetchAndStartEnumeratingWithSettings:observer:completionHandler:]_block_invoke_3";
    v22 = 2112;
    v23 = v5;
    v24 = 2112;
    v25 = v14;
    v26 = 2112;
    v27 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  v9 = a1[5];
  (*(a1[6] + 16))();
  __fp_pop_log();

  v10 = *MEMORY[0x1E69E9840];
}

void __62__FPDXPCServicer_forceIndexingInForeground_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer forceIndexingInForeground:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __74__FPDXPCServicer_preventDiskImportSchedulerFromRunning_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer preventDiskImportSchedulerFromRunning:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)pauseIndexingFor:(id)for completionHandler:(id)handler
{
  v51[2] = *MEMORY[0x1E69E9840];
  forCopy = for;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E69675D8];
  v51[0] = *MEMORY[0x1E6967558];
  v51[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v39 = __53__FPDXPCServicer_pauseIndexingFor_completionHandler___block_invoke;
  v40 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v42 = v10;
  v11 = v9;
  v12 = v38;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    v37 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v17 = [extensionManager domainWithID:forCopy reason:&v37];

    if (v17)
    {
      indexer = [v17 indexer];
      v19 = indexer == 0;

      if (v19)
      {
        v26 = fp_current_or_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [FPDXPCServicer pauseIndexingFor:completionHandler:];
        }

        log = self->_log;
        v36 = fpfs_adopt_log();
        v28 = fp_current_or_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v32 = FPPopLogSectionForBlock();
          v33 = FPNotSupportedError();
          *buf = 134218754;
          v44 = v32;
          v45 = 2112;
          selfCopy3 = self;
          v47 = 2080;
          v48 = "[FPDXPCServicer pauseIndexingFor:completionHandler:]";
          v49 = 2112;
          v50 = v33;
          _os_log_debug_impl(&dword_1CEFC7000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
        }

        v29 = FPNotSupportedError();
        (*(v10 + 2))(v10, v29);

        __fp_pop_log();
      }

      else
      {
        indexer2 = [v17 indexer];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __53__FPDXPCServicer_pauseIndexingFor_completionHandler___block_invoke_456;
        v34[3] = &unk_1E83BE1A8;
        v34[4] = self;
        v35 = v10;
        [indexer2 pauseIndexingWithCompletionHandler:v34];
      }
    }

    else
    {
      v22 = FPProviderNotFoundError();
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [FPDXPCServicer pauseIndexingFor:completionHandler:];
      }

      v24 = self->_log;
      v36 = fpfs_adopt_log();
      v25 = fp_current_or_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v31 = FPPopLogSectionForBlock();
        *buf = 134218754;
        v44 = v31;
        v45 = 2112;
        selfCopy3 = self;
        v47 = 2080;
        v48 = "[FPDXPCServicer pauseIndexingFor:completionHandler:]";
        v49 = 2112;
        v50 = v22;
        _os_log_debug_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      (*(v10 + 2))(v10, v22);
      __fp_pop_log();
    }
  }

  else
  {
    v21 = FPNotPermittedError();
    v39(v12, v21);
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __53__FPDXPCServicer_pauseIndexingFor_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer pauseIndexingFor:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __53__FPDXPCServicer_pauseIndexingFor_completionHandler___block_invoke_456(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer pauseIndexingFor:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)resumeIndexingFor:(id)for completionHandler:(id)handler
{
  v51[2] = *MEMORY[0x1E69E9840];
  forCopy = for;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E69675D8];
  v51[0] = *MEMORY[0x1E6967558];
  v51[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v39 = __54__FPDXPCServicer_resumeIndexingFor_completionHandler___block_invoke;
  v40 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v42 = v10;
  v11 = v9;
  v12 = v38;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    v37 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v17 = [extensionManager domainWithID:forCopy reason:&v37];

    if (v17)
    {
      indexer = [v17 indexer];
      v19 = indexer == 0;

      if (v19)
      {
        v26 = fp_current_or_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [FPDXPCServicer pauseIndexingFor:completionHandler:];
        }

        log = self->_log;
        v36 = fpfs_adopt_log();
        v28 = fp_current_or_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v32 = FPPopLogSectionForBlock();
          v33 = FPNotSupportedError();
          *buf = 134218754;
          v44 = v32;
          v45 = 2112;
          selfCopy3 = self;
          v47 = 2080;
          v48 = "[FPDXPCServicer resumeIndexingFor:completionHandler:]";
          v49 = 2112;
          v50 = v33;
          _os_log_debug_impl(&dword_1CEFC7000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
        }

        v29 = FPNotSupportedError();
        (*(v10 + 2))(v10, v29);

        __fp_pop_log();
      }

      else
      {
        indexer2 = [v17 indexer];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __54__FPDXPCServicer_resumeIndexingFor_completionHandler___block_invoke_457;
        v34[3] = &unk_1E83BE1A8;
        v34[4] = self;
        v35 = v10;
        [indexer2 resumeIndexingWithCompletionHandler:v34];
      }
    }

    else
    {
      v22 = FPProviderNotFoundError();
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [FPDXPCServicer pauseIndexingFor:completionHandler:];
      }

      v24 = self->_log;
      v36 = fpfs_adopt_log();
      v25 = fp_current_or_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v31 = FPPopLogSectionForBlock();
        *buf = 134218754;
        v44 = v31;
        v45 = 2112;
        selfCopy3 = self;
        v47 = 2080;
        v48 = "[FPDXPCServicer resumeIndexingFor:completionHandler:]";
        v49 = 2112;
        v50 = v22;
        _os_log_debug_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      (*(v10 + 2))(v10, v22);
      __fp_pop_log();
    }
  }

  else
  {
    v21 = FPNotPermittedError();
    v39(v12, v21);
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __54__FPDXPCServicer_resumeIndexingFor_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer resumeIndexingFor:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __54__FPDXPCServicer_resumeIndexingFor_completionHandler___block_invoke_457(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer resumeIndexingFor:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)dumpIndexerInfoFor:(id)for withName:(id)name to:(id)to completionHandler:(id)handler
{
  v59[2] = *MEMORY[0x1E69E9840];
  forCopy = for;
  nameCopy = name;
  toCopy = to;
  handlerCopy = handler;
  v14 = *MEMORY[0x1E69675D8];
  v59[0] = *MEMORY[0x1E6967558];
  v59[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v47 = __67__FPDXPCServicer_dumpIndexerInfoFor_withName_to_completionHandler___block_invoke;
  v48 = &unk_1E83BE1A8;
  selfCopy = self;
  v16 = handlerCopy;
  v50 = v16;
  v17 = v15;
  v18 = v46;
  connection = [(FPDXPCServicer *)self connection];
  v20 = [connection fp_hasOneOfEntitlements:v17];

  if (v20)
  {

    v45 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v23 = [extensionManager domainWithID:forCopy reason:&v45];

    if (v23)
    {
      indexer = [v23 indexer];
      v25 = indexer == 0;

      if (v25)
      {
        v34 = fp_current_or_default_log();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [FPDXPCServicer pauseIndexingFor:completionHandler:];
        }

        log = self->_log;
        v44 = fpfs_adopt_log();
        v36 = fp_current_or_default_log();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          v40 = FPPopLogSectionForBlock();
          v41 = FPNotSupportedError();
          *buf = 134218754;
          v52 = v40;
          v53 = 2112;
          selfCopy3 = self;
          v55 = 2080;
          v56 = "[FPDXPCServicer dumpIndexerInfoFor:withName:to:completionHandler:]";
          v57 = 2112;
          v58 = v41;
          _os_log_debug_impl(&dword_1CEFC7000, v36, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
        }

        v37 = FPNotSupportedError();
        (*(v16 + 2))(v16, v37);

        __fp_pop_log();
      }

      else
      {
        indexer2 = [v23 indexer];
        [indexer2 dumpStateTo:toCopy withName:nameCopy];

        v27 = self->_log;
        v42 = fpfs_adopt_log();
        v28 = fp_current_or_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          FPPopLogSectionForBlock();
          [FPDXPCServicer dumpIndexerInfoFor:withName:to:completionHandler:];
        }

        (*(v16 + 2))(v16, 0);
        __fp_pop_log();
      }
    }

    else
    {
      v30 = FPProviderNotFoundError();
      v31 = fp_current_or_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [FPDXPCServicer pauseIndexingFor:completionHandler:];
      }

      v32 = self->_log;
      v43 = fpfs_adopt_log();
      v33 = fp_current_or_default_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v39 = FPPopLogSectionForBlock();
        *buf = 134218754;
        v52 = v39;
        v53 = 2112;
        selfCopy3 = self;
        v55 = 2080;
        v56 = "[FPDXPCServicer dumpIndexerInfoFor:withName:to:completionHandler:]";
        v57 = 2112;
        v58 = v30;
        _os_log_debug_impl(&dword_1CEFC7000, v33, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      (*(v16 + 2))(v16, v30);
      __fp_pop_log();
    }
  }

  else
  {
    v29 = FPNotPermittedError();
    v47(v18, v29);
  }

  v38 = *MEMORY[0x1E69E9840];
}

void __67__FPDXPCServicer_dumpIndexerInfoFor_withName_to_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer dumpIndexerInfoFor:withName:to:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)signalReindexCSIdentifiersByProviderDomainID:(id)d indexReason:(int64_t)reason completionHandler:(id)handler
{
  v48[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v48[0] = *MEMORY[0x1E6967560];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v39 = __93__FPDXPCServicer_signalReindexCSIdentifiersByProviderDomainID_indexReason_completionHandler___block_invoke;
  v40 = &unk_1E83BE1A8;
  selfCopy = self;
  v30 = handlerCopy;
  v42 = v30;
  v9 = v8;
  v10 = v38;
  connection = [(FPDXPCServicer *)self connection];
  v12 = [connection fp_hasOneOfEntitlements:v9];

  if (v12)
  {

    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v13 = dCopy;
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v47 count:16];
    if (v14)
    {
      v15 = *v35;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v34 + 1) + 8 * i);
          v33 = 0;
          server = [(FPDXPCServicer *)self server];
          extensionManager = [server extensionManager];
          v20 = [extensionManager domainWithID:v17 reason:&v33];

          if (v20)
          {
            v21 = [v13 objectForKeyedSubscript:v17];
            if ([v21 count])
            {
              defaultBackend = [v20 defaultBackend];
              v23 = defaultBackend;
              if (defaultBackend)
              {
                v32[0] = MEMORY[0x1E69E9820];
                v32[1] = 3221225472;
                v32[2] = __93__FPDXPCServicer_signalReindexCSIdentifiersByProviderDomainID_indexReason_completionHandler___block_invoke_458;
                v32[3] = &unk_1E83BDFC8;
                v32[4] = v17;
                [defaultBackend reindexItemsWithIndexReason:reason identifiers:v21 completionHandler:v32];
              }

              else
              {
                v24 = fp_current_or_default_log();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v44 = v17;
                  _os_log_error_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_ERROR, "[ERROR] No indexer to reindex items in domain: %@", buf, 0xCu);
                }
              }
            }

            else
            {
              v23 = fp_current_or_default_log();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v44 = v17;
                _os_log_error_impl(&dword_1CEFC7000, v23, OS_LOG_TYPE_ERROR, "[ERROR] Tried to reindex empty array of identifiersin domain: %@", buf, 0xCu);
              }
            }
          }

          else
          {
            v21 = fp_current_or_default_log();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v44 = v17;
              v45 = 2048;
              v46 = v33;
              _os_log_error_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_ERROR, "[ERROR] Failed to reindex items in domain %@, reason %lu", buf, 0x16u);
            }
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v34 objects:v47 count:16];
      }

      while (v14);
    }

    log = self->_log;
    v33 = fpfs_adopt_log();
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer signalReindexCSIdentifiersByProviderDomainID:indexReason:completionHandler:];
    }

    (*(v30 + 2))(v30, 0);
    __fp_pop_log();
  }

  else
  {
    v27 = FPNotPermittedError();
    v39(v10, v27);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __93__FPDXPCServicer_signalReindexCSIdentifiersByProviderDomainID_indexReason_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer signalReindexCSIdentifiersByProviderDomainID:indexReason:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __93__FPDXPCServicer_signalReindexCSIdentifiersByProviderDomainID_indexReason_completionHandler___block_invoke_458(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __93__FPDXPCServicer_signalReindexCSIdentifiersByProviderDomainID_indexReason_completionHandler___block_invoke_458_cold_1(v3);
    }
  }

  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __93__FPDXPCServicer_signalReindexCSIdentifiersByProviderDomainID_indexReason_completionHandler___block_invoke_458_cold_2(a1, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)_test_setDocIDResolutionPolicy:(BOOL)policy completionHandler:(id)handler
{
  v23[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v6 = *MEMORY[0x1E69675D8];
  v23[0] = *MEMORY[0x1E6967558];
  v23[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v19 = __67__FPDXPCServicer__test_setDocIDResolutionPolicy_completionHandler___block_invoke;
  v20 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v22 = v8;
  v9 = v7;
  v10 = v18;
  connection = [(FPDXPCServicer *)self connection];
  v12 = [connection fp_hasOneOfEntitlements:v9];

  if (v12)
  {

    GSSetDocIDResolutionPolicy();
    log = self->_log;
    v17 = fpfs_adopt_log();
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer _test_setDocIDResolutionPolicy:completionHandler:];
    }

    (*(v8 + 2))(v8, 0);
    __fp_pop_log();
  }

  else
  {
    v15 = FPNotPermittedError();
    v19(v10, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __67__FPDXPCServicer__test_setDocIDResolutionPolicy_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer _test_setDocIDResolutionPolicy:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_test_getNeedsIndexingStateForRootURL:(id)l completionHandler:(id)handler
{
  v52[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v52[0] = *MEMORY[0x1E69675D8];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v38 = __74__FPDXPCServicer__test_getNeedsIndexingStateForRootURL_completionHandler___block_invoke;
  v39 = &unk_1E83BE1A8;
  selfCopy = self;
  v9 = handlerCopy;
  v41 = v9;
  v10 = v8;
  v11 = v37;
  connection = [(FPDXPCServicer *)self connection];
  v13 = [connection fp_hasOneOfEntitlements:v10];

  if (v13)
  {

    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];

    v16 = [extensionManager domainForURL:lCopy reason:0];
    if (v16)
    {
      log = self->_log;
      v35 = fpfs_adopt_log();
      v18 = fp_current_or_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v34 = FPPopLogSectionForBlock();
        v28 = objc_alloc(MEMORY[0x1E696AD98]);
        indexer = [v16 indexer];
        state = [indexer state];
        v31 = [v28 initWithBool:{objc_msgSend(state, "needsIndexing")}];
        *buf = 134219010;
        v43 = v34;
        v44 = 2112;
        selfCopy3 = self;
        v46 = 2080;
        v47 = "[FPDXPCServicer _test_getNeedsIndexingStateForRootURL:completionHandler:]";
        v48 = 2112;
        v49 = v31;
        v50 = 2112;
        v51 = 0;
        _os_log_debug_impl(&dword_1CEFC7000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v19 = objc_alloc(MEMORY[0x1E696AD98]);
      indexer2 = [v16 indexer];
      state2 = [indexer2 state];
      v22 = [v19 initWithBool:{objc_msgSend(state2, "needsIndexing")}];
      (*(v9 + 2))(v9, v22, 0);

      __fp_pop_log();
    }

    else
    {
      v24 = self->_log;
      v36 = fpfs_adopt_log();
      v25 = fp_current_or_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v32 = FPPopLogSectionForBlock();
        v33 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:0];
        *buf = 134219010;
        v43 = v32;
        v44 = 2112;
        selfCopy3 = self;
        v46 = 2080;
        v47 = "[FPDXPCServicer _test_getNeedsIndexingStateForRootURL:completionHandler:]";
        v48 = 2112;
        v49 = v33;
        v50 = 2112;
        v51 = 0;
        _os_log_debug_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v26 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:0];
      (*(v9 + 2))(v9, v26, 0);

      __fp_pop_log();
    }
  }

  else
  {
    v23 = FPNotPermittedError();
    v38(v11, v23);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __74__FPDXPCServicer__test_getNeedsIndexingStateForRootURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v13 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 40);
    v10 = FPPopLogSectionForBlock();
    v11 = *(a1 + 32);
    v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:0];
    *buf = 134219010;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2080;
    v19 = "[FPDXPCServicer _test_getNeedsIndexingStateForRootURL:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  v6 = *(a1 + 40);
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:0];
  (*(v6 + 16))(v6, v7, v3);

  __fp_pop_log();
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_test_retrieveItemWithName:(id)name completionHandler:(id)handler
{
  v56[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  handlerCopy = handler;
  v56[0] = *MEMORY[0x1E69675D8];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v42 = __63__FPDXPCServicer__test_retrieveItemWithName_completionHandler___block_invoke;
  v43 = &unk_1E83BE1A8;
  selfCopy = self;
  v9 = handlerCopy;
  v45 = v9;
  v10 = v8;
  v11 = v41;
  connection = [(FPDXPCServicer *)self connection];
  v13 = [connection fp_hasOneOfEntitlements:v10];

  if (v13)
  {

    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];

    v40 = 0;
    v16 = [extensionManager providerWithIdentifier:@"com.apple.FileProvider.TestingHarness.TestFileProvider" reason:&v40];
    v17 = v16;
    if (v16)
    {
      providedItemsURLs = [v16 providedItemsURLs];
      firstObject = [providedItemsURLs firstObject];
      v20 = [firstObject URLByAppendingPathComponent:nameCopy];

      v38 = 0;
      LOBYTE(firstObject) = [@"Test" writeToURL:v20 atomically:0 encoding:4 error:&v38];
      v21 = v38;
      if (firstObject)
      {
        v37 = v21;
        v22 = [MEMORY[0x1E6967408] wrapperWithURL:v20 readonly:0 error:&v37];
        v23 = v37;

        log = self->_log;
        v39 = fpfs_adopt_log();
        v25 = fp_current_or_default_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v36 = FPPopLogSectionForBlock();
          *buf = 134219010;
          v47 = v36;
          v48 = 2112;
          selfCopy4 = self;
          v50 = 2080;
          v51 = "[FPDXPCServicer _test_retrieveItemWithName:completionHandler:]";
          v52 = 2112;
          v53 = v22;
          v54 = 2112;
          v55 = v23;
          _os_log_debug_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        (*(v9 + 2))(v9, v22, v23);
        __fp_pop_log();

        v21 = v23;
      }

      else
      {
        v30 = self->_log;
        v39 = fpfs_adopt_log();
        v31 = fp_current_or_default_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v35 = FPPopLogSectionForBlock();
          *buf = 134219010;
          v47 = v35;
          v48 = 2112;
          selfCopy4 = self;
          v50 = 2080;
          v51 = "[FPDXPCServicer _test_retrieveItemWithName:completionHandler:]";
          v52 = 2112;
          v53 = 0;
          v54 = 2112;
          v55 = v21;
          _os_log_debug_impl(&dword_1CEFC7000, v31, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        (*(v9 + 2))(v9, 0, v21);
        __fp_pop_log();
      }
    }

    else
    {
      v27 = self->_log;
      v39 = fpfs_adopt_log();
      v28 = fp_current_or_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v33 = FPPopLogSectionForBlock();
        v34 = FPProviderNotFoundError();
        *buf = 134219010;
        v47 = v33;
        v48 = 2112;
        selfCopy4 = self;
        v50 = 2080;
        v51 = "[FPDXPCServicer _test_retrieveItemWithName:completionHandler:]";
        v52 = 2112;
        v53 = 0;
        v54 = 2112;
        v55 = v34;
        _os_log_debug_impl(&dword_1CEFC7000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v29 = FPProviderNotFoundError();
      (*(v9 + 2))(v9, 0, v29);

      __fp_pop_log();
    }
  }

  else
  {
    v26 = FPNotPermittedError();
    v42(v11, v26);
  }

  v32 = *MEMORY[0x1E69E9840];
}

void __63__FPDXPCServicer__test_retrieveItemWithName_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer _test_retrieveItemWithName:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_test_callFileProviderManagerAPIs:(id)is
{
  v38[1] = *MEMORY[0x1E69E9840];
  isCopy = is;
  v38[0] = *MEMORY[0x1E69675D8];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v26 = __52__FPDXPCServicer__test_callFileProviderManagerAPIs___block_invoke;
  v27 = &unk_1E83BE1A8;
  selfCopy = self;
  v6 = isCopy;
  v29 = v6;
  v7 = v5;
  v8 = v25;
  connection = [(FPDXPCServicer *)self connection];
  v10 = [connection fp_hasOneOfEntitlements:v7];

  if (v10)
  {

    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];

    v24 = 0;
    v13 = [extensionManager providerWithIdentifier:@"com.apple.FileProvider.TestingHarness.TestFileProvider" reason:&v24];
    v14 = v13;
    if (v13)
    {
      asAppExtensionBackedProvider = [v13 asAppExtensionBackedProvider];
      [asAppExtensionBackedProvider _test_callFileProviderManagerAPIs:v6];
    }

    else
    {
      log = self->_log;
      v23 = fpfs_adopt_log();
      v18 = fp_current_or_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v21 = FPPopLogSectionForBlock();
        v22 = FPProviderNotFoundError();
        *buf = 134218754;
        v31 = v21;
        v32 = 2112;
        selfCopy2 = self;
        v34 = 2080;
        v35 = "[FPDXPCServicer _test_callFileProviderManagerAPIs:]";
        v36 = 2112;
        v37 = v22;
        _os_log_debug_impl(&dword_1CEFC7000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v19 = FPProviderNotFoundError();
      (*(v6 + 2))(v6, v19);

      __fp_pop_log();
    }
  }

  else
  {
    v16 = FPNotPermittedError();
    v26(v8, v16);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __52__FPDXPCServicer__test_callFileProviderManagerAPIs___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer _test_callFileProviderManagerAPIs:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_test_callRemoveTrashedItemsOlderThanDate:(id)date completionHandler:(id)handler
{
  v31[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  handlerCopy = handler;
  v31[0] = *MEMORY[0x1E69675D8];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v27 = __78__FPDXPCServicer__test_callRemoveTrashedItemsOlderThanDate_completionHandler___block_invoke;
  v28 = &unk_1E83BE1A8;
  selfCopy = self;
  v9 = handlerCopy;
  v30 = v9;
  v10 = v8;
  v11 = v26;
  connection = [(FPDXPCServicer *)self connection];
  v13 = [connection fp_hasOneOfEntitlements:v10];

  if (v13)
  {

    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];

    v16 = [extensionManager providerWithIdentifier:@"com.apple.FileProvider.LocalStorage" reason:0];
    if ([v16 isAppExtensionReachable])
    {
      asAppExtensionBackedProvider = [v16 asAppExtensionBackedProvider];
      v18 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __78__FPDXPCServicer__test_callRemoveTrashedItemsOlderThanDate_completionHandler___block_invoke_465;
      v23[3] = &unk_1E83BE310;
      v23[4] = self;
      v24 = v9;
      [asAppExtensionBackedProvider removeTrashedItemsOlderThanDate:dateCopy request:v18 completionHandler:v23];
    }

    else
    {
      log = self->_log;
      v25 = fpfs_adopt_log();
      v21 = fp_current_or_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        FPPopLogSectionForBlock();
        [FPDXPCServicer _test_callRemoveTrashedItemsOlderThanDate:completionHandler:];
      }

      (*(v9 + 2))(v9, 0);
      __fp_pop_log();
    }
  }

  else
  {
    v19 = FPNotPermittedError();
    v27(v11, v19);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __78__FPDXPCServicer__test_callRemoveTrashedItemsOlderThanDate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer _test_callRemoveTrashedItemsOlderThanDate:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __78__FPDXPCServicer__test_callRemoveTrashedItemsOlderThanDate_completionHandler___block_invoke_465(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 24);
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 40);
    FPPopLogSectionForBlock();
    __78__FPDXPCServicer__test_callRemoveTrashedItemsOlderThanDate_completionHandler___block_invoke_465_cold_1(v2);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_test_simulateInstallOfBundleID:(id)d completionHandler:(id)handler
{
  v34[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v34[0] = *MEMORY[0x1E69675D8];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v29 = __68__FPDXPCServicer__test_simulateInstallOfBundleID_completionHandler___block_invoke;
  v30 = &unk_1E83BE1A8;
  selfCopy = self;
  v9 = handlerCopy;
  v32 = v9;
  v10 = v8;
  v11 = v28;
  connection = [(FPDXPCServicer *)self connection];
  v13 = [connection fp_hasOneOfEntitlements:v10];

  if (v13)
  {

    v14 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:dCopy];
    WeakRetained = objc_loadWeakRetained(&self->_server);
    appMonitor = [WeakRetained appMonitor];

    v17 = [appMonitor valueForKey:@"defaultProviderByAppBundleID"];
    bundleIdentifier = [v14 bundleIdentifier];
    v19 = [v17 objectForKeyedSubscript:bundleIdentifier];

    v20 = [objc_alloc(MEMORY[0x1E69672B0]) initWithAppProxy:v14 providerDomainID:v19];
    appRegistry = [appMonitor appRegistry];
    v33 = v20;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
    [appRegistry addApps:v22];

    log = self->_log;
    v27 = fpfs_adopt_log();
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer _test_simulateInstallOfBundleID:completionHandler:];
    }

    (*(v9 + 2))(v9, 0);
    __fp_pop_log();
  }

  else
  {
    v25 = FPNotPermittedError();
    v29(v11, v25);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __68__FPDXPCServicer__test_simulateInstallOfBundleID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer _test_simulateInstallOfBundleID:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_test_simulateUninstallOfBundleID:(id)d completionHandler:(id)handler
{
  v29[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v29[0] = *MEMORY[0x1E69675D8];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v24 = __70__FPDXPCServicer__test_simulateUninstallOfBundleID_completionHandler___block_invoke;
  v25 = &unk_1E83BE1A8;
  selfCopy = self;
  v9 = handlerCopy;
  v27 = v9;
  v10 = v8;
  v11 = v23;
  connection = [(FPDXPCServicer *)self connection];
  v13 = [connection fp_hasOneOfEntitlements:v10];

  if (v13)
  {

    WeakRetained = objc_loadWeakRetained(&self->_server);
    appMonitor = [WeakRetained appMonitor];
    appRegistry = [appMonitor appRegistry];

    v28 = dCopy;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    [appRegistry removeAppsWithBundleIDs:v17];

    log = self->_log;
    v22 = fpfs_adopt_log();
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer _test_simulateUninstallOfBundleID:completionHandler:];
    }

    (*(v9 + 2))(v9, 0);
    __fp_pop_log();
  }

  else
  {
    v20 = FPNotPermittedError();
    v24(v11, v20);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __70__FPDXPCServicer__test_simulateUninstallOfBundleID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer _test_simulateUninstallOfBundleID:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_test_getRootSupportDirURLForDomainURL:(id)l completionHandler:(id)handler
{
  v57[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v57[0] = *MEMORY[0x1E69675D8];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:1];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v44 = __75__FPDXPCServicer__test_getRootSupportDirURLForDomainURL_completionHandler___block_invoke;
  v45 = &unk_1E83BE1A8;
  selfCopy = self;
  v8 = handlerCopy;
  v47 = v8;
  v9 = v7;
  v10 = v43;
  connection = [(FPDXPCServicer *)self connection];
  v12 = [connection fp_hasOneOfEntitlements:v9];

  if (v12)
  {

    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];

    v35 = [extensionManager domainForURL:lCopy reason:0];
    if (v35)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      coordinationRootURLs = [v35 coordinationRootURLs];
      v15 = [coordinationRootURLs countByEnumeratingWithState:&v39 objects:v56 count:16];
      if (v15)
      {
        v16 = *v40;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v40 != v16)
            {
              objc_enumerationMutation(coordinationRootURLs);
            }

            v18 = *(*(&v39 + 1) + 8 * i);
            lastPathComponent = [v18 lastPathComponent];
            v20 = [lastPathComponent isEqualToString:@"delete"];

            if (v20)
            {
              log = self->_log;
              v38 = fpfs_adopt_log();
              v25 = fp_current_or_default_log();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                v30 = FPPopLogSectionForBlock();
                uRLByDeletingLastPathComponent = [v18 URLByDeletingLastPathComponent];
                v31URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent URLByDeletingLastPathComponent];
                v32URLByDeletingLastPathComponent = [v31URLByDeletingLastPathComponent URLByDeletingLastPathComponent];
                *buf = 134218754;
                v49 = v30;
                v50 = 2112;
                selfCopy2 = self;
                v52 = 2080;
                v53 = "[FPDXPCServicer _test_getRootSupportDirURLForDomainURL:completionHandler:]";
                v54 = 2112;
                v55 = v32URLByDeletingLastPathComponent;
                _os_log_debug_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
              }

              uRLByDeletingLastPathComponent2 = [v18 URLByDeletingLastPathComponent];
              v26URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent2 URLByDeletingLastPathComponent];
              v27URLByDeletingLastPathComponent = [v26URLByDeletingLastPathComponent URLByDeletingLastPathComponent];
              (*(v8 + 2))(v8, v27URLByDeletingLastPathComponent);

              __fp_pop_log();
              goto LABEL_19;
            }
          }

          v15 = [coordinationRootURLs countByEnumeratingWithState:&v39 objects:v56 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }
    }

    v21 = self->_log;
    v37 = fpfs_adopt_log();
    v22 = fp_current_or_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer _test_getRootSupportDirURLForDomainURL:completionHandler:];
    }

    (*(v8 + 2))(v8, 0);
    __fp_pop_log();

LABEL_19:
  }

  else
  {
    v23 = FPNotPermittedError();
    v44(v10, v23);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __75__FPDXPCServicer__test_getRootSupportDirURLForDomainURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v8 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 40);
    FPPopLogSectionForBlock();
    __75__FPDXPCServicer__test_getRootSupportDirURLForDomainURL_completionHandler___block_invoke_cold_1((a1 + 32));
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_test_getDBOptions:(id)options completionHandler:(id)handler
{
  v46[2] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E69675D8];
  v46[0] = *MEMORY[0x1E6967558];
  v46[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v32 = __55__FPDXPCServicer__test_getDBOptions_completionHandler___block_invoke;
  v33 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v35 = v10;
  v11 = v9;
  v12 = v31;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    v30 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v17 = [extensionManager domainWithID:optionsCopy reason:&v30];

    if (v17)
    {
      defaultBackend = [v17 defaultBackend];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __55__FPDXPCServicer__test_getDBOptions_completionHandler___block_invoke_474;
      v27[3] = &unk_1E83C0830;
      v27[4] = self;
      v28 = v10;
      [defaultBackend getDBOptionsWithCompletionHandler:v27];
    }

    else
    {
      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer _test_getDBOptions:completionHandler:];
      }

      log = self->_log;
      v29 = fpfs_adopt_log();
      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v25 = FPPopLogSectionForBlock();
        v26 = FPProviderNotFoundError();
        *buf = 134219010;
        v37 = v25;
        v38 = 2112;
        selfCopy2 = self;
        v40 = 2080;
        v41 = "[FPDXPCServicer _test_getDBOptions:completionHandler:]";
        v42 = 1024;
        v43 = 0;
        v44 = 2112;
        v45 = v26;
        _os_log_debug_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %d, %@", buf, 0x30u);
      }

      v23 = FPProviderNotFoundError();
      (*(v10 + 2))(v10, 0, v23);

      __fp_pop_log();
    }
  }

  else
  {
    v19 = FPNotPermittedError();
    v32(v12, v19);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __55__FPDXPCServicer__test_getDBOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer _test_getDBOptions:completionHandler:]_block_invoke";
    v17 = 1024;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %d, %@", buf, 0x30u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __55__FPDXPCServicer__test_getDBOptions_completionHandler___block_invoke_474(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(*(a1 + 32) + 24);
  v12 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 40);
    v10 = FPPopLogSectionForBlock();
    v11 = *(a1 + 32);
    *buf = 134219010;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2080;
    v18 = "[FPDXPCServicer _test_getDBOptions:completionHandler:]_block_invoke";
    v19 = 2048;
    v20 = a2;
    v21 = 2112;
    v22 = v5;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %ld, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_test_getCountersArray:(id)array completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  handlerCopy = handler;
  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];
  v10 = [extensionManager domainWithID:arrayCopy reason:0];

  if (v10)
  {
    defaultBackend = [v10 defaultBackend];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59__FPDXPCServicer__test_getCountersArray_completionHandler___block_invoke;
    v16[3] = &unk_1E83BE3D8;
    v16[4] = self;
    v17 = handlerCopy;
    [defaultBackend getCountersArrayWithCompletionHandler:v16];
  }

  else
  {
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer _test_getDBOptions:completionHandler:];
    }

    log = self->_log;
    v18 = fpfs_adopt_log();
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer _test_getCountersArray:completionHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
    __fp_pop_log();
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __59__FPDXPCServicer__test_getCountersArray_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 32) + 24);
    v17 = fpfs_adopt_log();
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 40);
      v12 = FPPopLogSectionForBlock();
      v13 = *(a1 + 32);
      *buf = 134219010;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 2080;
      v23 = "[FPDXPCServicer _test_getCountersArray:completionHandler:]_block_invoke";
      v24 = 2112;
      v25 = 0;
      v26 = 2112;
      v27 = v6;
      _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }
  }

  else
  {
    v9 = *(*(a1 + 32) + 24);
    v17 = fpfs_adopt_log();
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 40);
      v15 = FPPopLogSectionForBlock();
      v16 = *(a1 + 32);
      *buf = 134219010;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      v22 = 2080;
      v23 = "[FPDXPCServicer _test_getCountersArray:completionHandler:]_block_invoke";
      v24 = 2112;
      v25 = v5;
      v26 = 2112;
      v27 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_test_resetCounters:(id)counters completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  countersCopy = counters;
  handlerCopy = handler;
  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];
  v10 = [extensionManager domainWithID:countersCopy reason:0];

  if (v10)
  {
    defaultBackend = [v10 defaultBackend];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __56__FPDXPCServicer__test_resetCounters_completionHandler___block_invoke;
    v16[3] = &unk_1E83BE1A8;
    v16[4] = self;
    v17 = handlerCopy;
    [defaultBackend resetCountersWithCompletionHandler:v16];
  }

  else
  {
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer _test_getDBOptions:completionHandler:];
    }

    log = self->_log;
    v18 = fpfs_adopt_log();
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer _test_resetCounters:completionHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
    __fp_pop_log();
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __56__FPDXPCServicer__test_resetCounters_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer _test_resetCounters:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_test_queryDiskImportSchedulerLabel:(id)label completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  handlerCopy = handler;
  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];
  v10 = [extensionManager domainWithID:labelCopy reason:0];

  if (v10)
  {
    defaultBackend = [v10 defaultBackend];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72__FPDXPCServicer__test_queryDiskImportSchedulerLabel_completionHandler___block_invoke;
    v16[3] = &unk_1E83C0858;
    v16[4] = self;
    v17 = handlerCopy;
    [defaultBackend queryDiskImportSchedulerLabelWithCompletionHandler:v16];
  }

  else
  {
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [FPDXPCServicer _test_getDBOptions:completionHandler:];
    }

    log = self->_log;
    v18 = fpfs_adopt_log();
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      [FPDXPCServicer _test_queryDiskImportSchedulerLabel:completionHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
    __fp_pop_log();
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __72__FPDXPCServicer__test_queryDiskImportSchedulerLabel_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v13 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    v11 = FPPopLogSectionForBlock();
    v12 = *(a1 + 32);
    *buf = 134219010;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2080;
    v19 = "[FPDXPCServicer _test_queryDiskImportSchedulerLabel:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_test_importItemsPendingReconciliationProgressForDomainWithID:(id)d completionHandler:(id)handler
{
  v52[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E69675B0];
  v52[0] = *MEMORY[0x1E6967558];
  v52[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v38 = __98__FPDXPCServicer__test_importItemsPendingReconciliationProgressForDomainWithID_completionHandler___block_invoke;
  v39 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v41 = v10;
  v11 = v9;
  v12 = v37;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    v36 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v17 = [extensionManager domainWithID:dCopy reason:&v36];

    if (v17)
    {
      defaultBackend = [v17 defaultBackend];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        defaultBackend2 = [v17 defaultBackend];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __98__FPDXPCServicer__test_importItemsPendingReconciliationProgressForDomainWithID_completionHandler___block_invoke_478;
        v33[3] = &unk_1E83C04F0;
        v33[4] = self;
        v34 = v10;
        [defaultBackend2 importProgressForItemsPendingReconciliationWithCompletionHandler:v33];
      }

      else
      {
        log = self->_log;
        v35 = fpfs_adopt_log();
        v26 = fp_current_or_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v31 = FPPopLogSectionForBlock();
          v32 = FPNotSupportedError();
          *buf = 134219010;
          v43 = v31;
          v44 = 2112;
          selfCopy3 = self;
          v46 = 2080;
          v47 = "[FPDXPCServicer _test_importItemsPendingReconciliationProgressForDomainWithID:completionHandler:]";
          v48 = 2112;
          v49 = 0;
          v50 = 2112;
          v51 = v32;
          _os_log_debug_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        v27 = FPNotSupportedError();
        (*(v10 + 2))(v10, 0, v27);

        __fp_pop_log();
      }
    }

    else
    {
      v22 = self->_log;
      v35 = fpfs_adopt_log();
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v29 = FPPopLogSectionForBlock();
        v30 = FPProviderNotFoundError();
        *buf = 134219010;
        v43 = v29;
        v44 = 2112;
        selfCopy3 = self;
        v46 = 2080;
        v47 = "[FPDXPCServicer _test_importItemsPendingReconciliationProgressForDomainWithID:completionHandler:]";
        v48 = 2112;
        v49 = 0;
        v50 = 2112;
        v51 = v30;
        _os_log_debug_impl(&dword_1CEFC7000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v24 = FPProviderNotFoundError();
      (*(v10 + 2))(v10, 0, v24);

      __fp_pop_log();
    }
  }

  else
  {
    v21 = FPNotPermittedError();
    v38(v12, v21);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __98__FPDXPCServicer__test_importItemsPendingReconciliationProgressForDomainWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer _test_importItemsPendingReconciliationProgressForDomainWithID:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __98__FPDXPCServicer__test_importItemsPendingReconciliationProgressForDomainWithID_completionHandler___block_invoke_478(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v13 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    v11 = FPPopLogSectionForBlock();
    v12 = *(a1 + 32);
    *buf = 134219010;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2080;
    v19 = "[FPDXPCServicer _test_importItemsPendingReconciliationProgressForDomainWithID:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_test_importItemsPendingScanningDiskProgressForDomainWithID:(id)d completionHandler:(id)handler
{
  v52[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E69675B0];
  v52[0] = *MEMORY[0x1E6967558];
  v52[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v38 = __96__FPDXPCServicer__test_importItemsPendingScanningDiskProgressForDomainWithID_completionHandler___block_invoke;
  v39 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v41 = v10;
  v11 = v9;
  v12 = v37;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    v36 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v17 = [extensionManager domainWithID:dCopy reason:&v36];

    if (v17)
    {
      defaultBackend = [v17 defaultBackend];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        defaultBackend2 = [v17 defaultBackend];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __96__FPDXPCServicer__test_importItemsPendingScanningDiskProgressForDomainWithID_completionHandler___block_invoke_481;
        v33[3] = &unk_1E83C04F0;
        v33[4] = self;
        v34 = v10;
        [defaultBackend2 importProgressForItemsPendingScanningDiskWithCompletionHandler:v33];
      }

      else
      {
        log = self->_log;
        v35 = fpfs_adopt_log();
        v26 = fp_current_or_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v31 = FPPopLogSectionForBlock();
          v32 = FPNotSupportedError();
          *buf = 134219010;
          v43 = v31;
          v44 = 2112;
          selfCopy3 = self;
          v46 = 2080;
          v47 = "[FPDXPCServicer _test_importItemsPendingScanningDiskProgressForDomainWithID:completionHandler:]";
          v48 = 2112;
          v49 = 0;
          v50 = 2112;
          v51 = v32;
          _os_log_debug_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        v27 = FPNotSupportedError();
        (*(v10 + 2))(v10, 0, v27);

        __fp_pop_log();
      }
    }

    else
    {
      v22 = self->_log;
      v35 = fpfs_adopt_log();
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v29 = FPPopLogSectionForBlock();
        v30 = FPProviderNotFoundError();
        *buf = 134219010;
        v43 = v29;
        v44 = 2112;
        selfCopy3 = self;
        v46 = 2080;
        v47 = "[FPDXPCServicer _test_importItemsPendingScanningDiskProgressForDomainWithID:completionHandler:]";
        v48 = 2112;
        v49 = 0;
        v50 = 2112;
        v51 = v30;
        _os_log_debug_impl(&dword_1CEFC7000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v24 = FPProviderNotFoundError();
      (*(v10 + 2))(v10, 0, v24);

      __fp_pop_log();
    }
  }

  else
  {
    v21 = FPNotPermittedError();
    v38(v12, v21);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __96__FPDXPCServicer__test_importItemsPendingScanningDiskProgressForDomainWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer _test_importItemsPendingScanningDiskProgressForDomainWithID:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __96__FPDXPCServicer__test_importItemsPendingScanningDiskProgressForDomainWithID_completionHandler___block_invoke_481(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v13 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    v11 = FPPopLogSectionForBlock();
    v12 = *(a1 + 32);
    *buf = 134219010;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2080;
    v19 = "[FPDXPCServicer _test_importItemsPendingScanningDiskProgressForDomainWithID:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_test_importItemsPendingScanningProviderProgressForDomainWithID:(id)d completionHandler:(id)handler
{
  v52[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E69675B0];
  v52[0] = *MEMORY[0x1E6967558];
  v52[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v38 = __100__FPDXPCServicer__test_importItemsPendingScanningProviderProgressForDomainWithID_completionHandler___block_invoke;
  v39 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v41 = v10;
  v11 = v9;
  v12 = v37;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    v36 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v17 = [extensionManager domainWithID:dCopy reason:&v36];

    if (v17)
    {
      defaultBackend = [v17 defaultBackend];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        defaultBackend2 = [v17 defaultBackend];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __100__FPDXPCServicer__test_importItemsPendingScanningProviderProgressForDomainWithID_completionHandler___block_invoke_484;
        v33[3] = &unk_1E83C04F0;
        v33[4] = self;
        v34 = v10;
        [defaultBackend2 importProgressForItemsPendingScanningProviderWithCompletionHandler:v33];
      }

      else
      {
        log = self->_log;
        v35 = fpfs_adopt_log();
        v26 = fp_current_or_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v31 = FPPopLogSectionForBlock();
          v32 = FPNotSupportedError();
          *buf = 134219010;
          v43 = v31;
          v44 = 2112;
          selfCopy3 = self;
          v46 = 2080;
          v47 = "[FPDXPCServicer _test_importItemsPendingScanningProviderProgressForDomainWithID:completionHandler:]";
          v48 = 2112;
          v49 = 0;
          v50 = 2112;
          v51 = v32;
          _os_log_debug_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        v27 = FPNotSupportedError();
        (*(v10 + 2))(v10, 0, v27);

        __fp_pop_log();
      }
    }

    else
    {
      v22 = self->_log;
      v35 = fpfs_adopt_log();
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v29 = FPPopLogSectionForBlock();
        v30 = FPProviderNotFoundError();
        *buf = 134219010;
        v43 = v29;
        v44 = 2112;
        selfCopy3 = self;
        v46 = 2080;
        v47 = "[FPDXPCServicer _test_importItemsPendingScanningProviderProgressForDomainWithID:completionHandler:]";
        v48 = 2112;
        v49 = 0;
        v50 = 2112;
        v51 = v30;
        _os_log_debug_impl(&dword_1CEFC7000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v24 = FPProviderNotFoundError();
      (*(v10 + 2))(v10, 0, v24);

      __fp_pop_log();
    }
  }

  else
  {
    v21 = FPNotPermittedError();
    v38(v12, v21);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __100__FPDXPCServicer__test_importItemsPendingScanningProviderProgressForDomainWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer _test_importItemsPendingScanningProviderProgressForDomainWithID:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __100__FPDXPCServicer__test_importItemsPendingScanningProviderProgressForDomainWithID_completionHandler___block_invoke_484(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v13 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    v11 = FPPopLogSectionForBlock();
    v12 = *(a1 + 32);
    *buf = 134219010;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2080;
    v19 = "[FPDXPCServicer _test_importItemsPendingScanningProviderProgressForDomainWithID:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_test_disableDBQueryStatistics:(id)statistics completionHandler:(id)handler
{
  v44[2] = *MEMORY[0x1E69E9840];
  statisticsCopy = statistics;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E69675D8];
  v44[0] = *MEMORY[0x1E6967558];
  v44[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v32 = __67__FPDXPCServicer__test_disableDBQueryStatistics_completionHandler___block_invoke;
  v33 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v35 = v10;
  v11 = v9;
  v12 = v31;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    v30 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v17 = [extensionManager domainWithID:statisticsCopy reason:&v30];

    if (v17)
    {
      defaultBackend = [v17 defaultBackend];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __67__FPDXPCServicer__test_disableDBQueryStatistics_completionHandler___block_invoke_485;
      v27[3] = &unk_1E83BE1A8;
      v27[4] = self;
      v28 = v10;
      [defaultBackend disableDBQueryStatisticsWithCompletionHandler:v27];
    }

    else
    {
      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer _test_getDBOptions:completionHandler:];
      }

      log = self->_log;
      v29 = fpfs_adopt_log();
      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v25 = FPPopLogSectionForBlock();
        v26 = FPProviderNotFoundError();
        *buf = 134218754;
        v37 = v25;
        v38 = 2112;
        selfCopy2 = self;
        v40 = 2080;
        v41 = "[FPDXPCServicer _test_disableDBQueryStatistics:completionHandler:]";
        v42 = 2112;
        v43 = v26;
        _os_log_debug_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v23 = FPProviderNotFoundError();
      (*(v10 + 2))(v10, v23);

      __fp_pop_log();
    }
  }

  else
  {
    v19 = FPNotPermittedError();
    v32(v12, v19);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __67__FPDXPCServicer__test_disableDBQueryStatistics_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer _test_disableDBQueryStatistics:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __67__FPDXPCServicer__test_disableDBQueryStatistics_completionHandler___block_invoke_485(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer _test_disableDBQueryStatistics:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_test_resetDBQueryStatistics:(id)statistics completionHandler:(id)handler
{
  v44[2] = *MEMORY[0x1E69E9840];
  statisticsCopy = statistics;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E69675D8];
  v44[0] = *MEMORY[0x1E6967558];
  v44[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v32 = __65__FPDXPCServicer__test_resetDBQueryStatistics_completionHandler___block_invoke;
  v33 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v35 = v10;
  v11 = v9;
  v12 = v31;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    v30 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v17 = [extensionManager domainWithID:statisticsCopy reason:&v30];

    if (v17)
    {
      defaultBackend = [v17 defaultBackend];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __65__FPDXPCServicer__test_resetDBQueryStatistics_completionHandler___block_invoke_486;
      v27[3] = &unk_1E83BE1A8;
      v27[4] = self;
      v28 = v10;
      [defaultBackend resetDBQueryStatisticsWithCompletionHandler:v27];
    }

    else
    {
      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer _test_getDBOptions:completionHandler:];
      }

      log = self->_log;
      v29 = fpfs_adopt_log();
      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v25 = FPPopLogSectionForBlock();
        v26 = FPProviderNotFoundError();
        *buf = 134218754;
        v37 = v25;
        v38 = 2112;
        selfCopy2 = self;
        v40 = 2080;
        v41 = "[FPDXPCServicer _test_resetDBQueryStatistics:completionHandler:]";
        v42 = 2112;
        v43 = v26;
        _os_log_debug_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v23 = FPProviderNotFoundError();
      (*(v10 + 2))(v10, v23);

      __fp_pop_log();
    }
  }

  else
  {
    v19 = FPNotPermittedError();
    v32(v12, v19);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __65__FPDXPCServicer__test_resetDBQueryStatistics_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer _test_resetDBQueryStatistics:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __65__FPDXPCServicer__test_resetDBQueryStatistics_completionHandler___block_invoke_486(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer _test_resetDBQueryStatistics:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __73__FPDXPCServicer__test_getDBQueryStatistics_queryPlan_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer _test_getDBQueryStatistics:queryPlan:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __73__FPDXPCServicer__test_getDBQueryStatistics_queryPlan_completionHandler___block_invoke_487(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 32) + 24);
    v17 = fpfs_adopt_log();
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 40);
      v12 = FPPopLogSectionForBlock();
      v13 = *(a1 + 32);
      *buf = 134219010;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 2080;
      v23 = "[FPDXPCServicer _test_getDBQueryStatistics:queryPlan:completionHandler:]_block_invoke";
      v24 = 2112;
      v25 = 0;
      v26 = 2112;
      v27 = v6;
      _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }
  }

  else
  {
    v9 = *(*(a1 + 32) + 24);
    v17 = fpfs_adopt_log();
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 40);
      v15 = FPPopLogSectionForBlock();
      v16 = *(a1 + 32);
      *buf = 134219010;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      v22 = 2080;
      v23 = "[FPDXPCServicer _test_getDBQueryStatistics:queryPlan:completionHandler:]_block_invoke";
      v24 = 2112;
      v25 = v5;
      v26 = 2112;
      v27 = 0;
      _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_test_triggerDatabaseError:(id)error domain:(id)domain completionHandler:(id)handler
{
  v56[2] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  domainCopy = domain;
  handlerCopy = handler;
  v11 = *MEMORY[0x1E69675D8];
  v56[0] = *MEMORY[0x1E6967558];
  v56[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v44 = __70__FPDXPCServicer__test_triggerDatabaseError_domain_completionHandler___block_invoke;
  v45 = &unk_1E83BE1A8;
  selfCopy = self;
  v13 = handlerCopy;
  v47 = v13;
  v14 = v12;
  v15 = v43;
  connection = [(FPDXPCServicer *)self connection];
  v17 = [connection fp_hasOneOfEntitlements:v14];

  if (v17)
  {

    v42 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v20 = [extensionManager domainWithID:domainCopy reason:&v42];

    if (v20)
    {
      defaultBackend = [v20 defaultBackend];
      v22 = objc_opt_respondsToSelector();

      if (v22)
      {
        defaultBackend2 = [v20 defaultBackend];
        connection2 = [(FPDXPCServicer *)self connection];
        v25 = [FPDRequest requestForXPCConnection:connection2];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __70__FPDXPCServicer__test_triggerDatabaseError_domain_completionHandler___block_invoke_490;
        v39[3] = &unk_1E83BE1A8;
        v39[4] = self;
        v40 = v13;
        [defaultBackend2 triggerDatabaseError:errorCopy request:v25 completionHandler:v39];
      }

      else
      {
        log = self->_log;
        v41 = fpfs_adopt_log();
        v32 = fp_current_or_default_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v37 = FPPopLogSectionForBlock();
          v38 = FPNotSupportedError();
          *buf = 134218754;
          v49 = v37;
          v50 = 2112;
          selfCopy3 = self;
          v52 = 2080;
          v53 = "[FPDXPCServicer _test_triggerDatabaseError:domain:completionHandler:]";
          v54 = 2112;
          v55 = v38;
          _os_log_debug_impl(&dword_1CEFC7000, v32, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
        }

        v33 = FPNotSupportedError();
        (*(v13 + 2))(v13, v33);

        __fp_pop_log();
      }
    }

    else
    {
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer _test_getDBOptions:completionHandler:];
      }

      v28 = self->_log;
      v41 = fpfs_adopt_log();
      v29 = fp_current_or_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v35 = FPPopLogSectionForBlock();
        v36 = FPProviderNotFoundError();
        *buf = 134218754;
        v49 = v35;
        v50 = 2112;
        selfCopy3 = self;
        v52 = 2080;
        v53 = "[FPDXPCServicer _test_triggerDatabaseError:domain:completionHandler:]";
        v54 = 2112;
        v55 = v36;
        _os_log_debug_impl(&dword_1CEFC7000, v29, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v30 = FPProviderNotFoundError();
      (*(v13 + 2))(v13, v30);

      __fp_pop_log();
    }
  }

  else
  {
    v26 = FPNotPermittedError();
    v44(v15, v26);
  }

  v34 = *MEMORY[0x1E69E9840];
}

void __70__FPDXPCServicer__test_triggerDatabaseError_domain_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer _test_triggerDatabaseError:domain:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __70__FPDXPCServicer__test_triggerDatabaseError_domain_completionHandler___block_invoke_490(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer _test_triggerDatabaseError:domain:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_test_purgerBarrierWithCompletionHandler:(id)handler
{
  v23[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = *MEMORY[0x1E69675D8];
  v23[0] = *MEMORY[0x1E6967558];
  v23[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v19 = __59__FPDXPCServicer__test_purgerBarrierWithCompletionHandler___block_invoke;
  v20 = &unk_1E83BE1A8;
  selfCopy = self;
  v7 = handlerCopy;
  v22 = v7;
  v8 = v6;
  v9 = v18;
  connection = [(FPDXPCServicer *)self connection];
  v11 = [connection fp_hasOneOfEntitlements:v8];

  if (v11)
  {

    server = [(FPDXPCServicer *)self server];
    v8 = [objc_msgSend(server "fpdPurgerClass")];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59__FPDXPCServicer__test_purgerBarrierWithCompletionHandler___block_invoke_491;
    v16[3] = &unk_1E83BE310;
    v16[4] = self;
    v13 = &v17;
    v17 = v7;
    [v8 barrierWithCompletionHandler:v16];
  }

  else
  {
    v13 = &v22;
    v14 = FPNotPermittedError();
    v19(v9, v14);

    server = v8;
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __59__FPDXPCServicer__test_purgerBarrierWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer _test_purgerBarrierWithCompletionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __59__FPDXPCServicer__test_purgerBarrierWithCompletionHandler___block_invoke_491(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 24);
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 40);
    FPPopLogSectionForBlock();
    __59__FPDXPCServicer__test_purgerBarrierWithCompletionHandler___block_invoke_491_cold_1(v2);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_test_isDiskSpaceMonitorRunningForDomain:(id)domain completionHandler:(id)handler
{
  v50[2] = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E69675D8];
  v50[0] = *MEMORY[0x1E6967558];
  v50[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v36 = __77__FPDXPCServicer__test_isDiskSpaceMonitorRunningForDomain_completionHandler___block_invoke;
  v37 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v39 = v10;
  v11 = v9;
  v12 = v35;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    v34 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v17 = [extensionManager domainWithID:domainCopy reason:&v34];

    if (v17)
    {
      log = self->_log;
      v32 = fpfs_adopt_log();
      v19 = fp_current_or_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v27 = FPPopLogSectionForBlock();
        volume = [v17 volume];
        isDiskSpaceMonitorRunning = [volume isDiskSpaceMonitorRunning];
        *buf = 134219010;
        v41 = v27;
        v42 = 2112;
        selfCopy3 = self;
        v44 = 2080;
        v45 = "[FPDXPCServicer _test_isDiskSpaceMonitorRunningForDomain:completionHandler:]";
        v46 = 1024;
        v47 = isDiskSpaceMonitorRunning;
        v48 = 2112;
        v49 = 0;
        _os_log_debug_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %d, %@", buf, 0x30u);
      }

      volume2 = [v17 volume];
      (*(v10 + 2))(v10, [volume2 isDiskSpaceMonitorRunning], 0);

      __fp_pop_log();
    }

    else
    {
      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [FPDXPCServicer _test_getDBOptions:completionHandler:];
      }

      v23 = self->_log;
      v33 = fpfs_adopt_log();
      v24 = fp_current_or_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v30 = FPPopLogSectionForBlock();
        v31 = FPProviderNotFoundError();
        *buf = 134219010;
        v41 = v30;
        v42 = 2112;
        selfCopy3 = self;
        v44 = 2080;
        v45 = "[FPDXPCServicer _test_isDiskSpaceMonitorRunningForDomain:completionHandler:]";
        v46 = 1024;
        v47 = 0;
        v48 = 2112;
        v49 = v31;
        _os_log_debug_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %d, %@", buf, 0x30u);
      }

      v25 = FPProviderNotFoundError();
      (*(v10 + 2))(v10, 0, v25);

      __fp_pop_log();
    }
  }

  else
  {
    v21 = FPNotPermittedError();
    v36(v12, v21);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __77__FPDXPCServicer__test_isDiskSpaceMonitorRunningForDomain_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer _test_isDiskSpaceMonitorRunningForDomain:completionHandler:]_block_invoke";
    v17 = 1024;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %d, %@", buf, 0x30u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (id)getSyncPausedXattrForURL:(id)l
{
  lCopy = l;
  v4 = getxattr([lCopy fileSystemRepresentation], "com.apple.file-provider-sync_paused_bundle_id#PX", 0, 0, 0, 1);
  if (v4 < 0)
  {
    if (*__error() != 93)
    {
      v9 = fp_current_or_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [FPDXPCServicer getSyncPausedXattrForURL:];
      }
    }

    v8 = 0;
  }

  else
  {
    v5 = v4;
    if (v4)
    {
      v6 = malloc_type_malloc(v4, 0xB150B3D4uLL);
      v7 = getxattr([lCopy fileSystemRepresentation], "com.apple.file-provider-sync_paused_bundle_id#PX", v6, v5, 0, 1);
      if (v7 < 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v6 length:v7 encoding:4];
      }

      free(v6);
    }

    else
    {
      v8 = &stru_1F4C2FFD0;
    }
  }

  return v8;
}

- (void)pauseSyncForItemAtURL:(id)l behavior:(unint64_t)behavior bundleID:(id)d completionHandler:(id)handler
{
  v84 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  handlerCopy = handler;
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v72 = __76__FPDXPCServicer_pauseSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke;
  v73 = &unk_1E83BE1A8;
  selfCopy = self;
  v13 = handlerCopy;
  v75 = v13;
  selfCopy2 = self;
  v15 = lCopy;
  v16 = v71;
  if (!v15)
  {
    v31 = FPInvalidParameterError();
LABEL_15:
    v36 = v31;
    v72(v16, v31);

    goto LABEL_32;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v18 = [connection fp_hasSandboxAccessToFile:v15 logLevel:0];

  if ((v18 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    *buf = *MEMORY[0x1E6967560];
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v21 = [connection2 fp_hasOneOfEntitlements:v20 nonSandboxedAccess:0 logLevel:0];

    if ((v21 & 1) == 0)
    {
      v31 = FPNotPermittedWriteError();
      goto LABEL_15;
    }
  }

  v22 = [[FPDCoreAnalyticsReport alloc] initWithEventName:@"com.apple.syncControls.pauseSync"];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:behavior];
  [(FPDCoreAnalyticsReport *)v22 addValue:v23 forKey:@"behavior"];

  WeakRetained = objc_loadWeakRetained(&selfCopy2->_connection);
  fp_bundleIdentifier = [WeakRetained fp_bundleIdentifier];

  if ([fp_bundleIdentifier length])
  {
    connection3 = [(FPDXPCServicer *)selfCopy2 connection];
    v76 = *MEMORY[0x1E6967558];
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
    v28 = [connection3 fp_hasOneOfEntitlements:v27];

    if (v28)
    {
      if (dCopy)
      {
        v29 = dCopy;

        v30 = &unk_1F4C62A48;
        fp_bundleIdentifier = v29;
      }

      else
      {
        v30 = &unk_1F4C62A48;
      }
    }

    else
    {
      v30 = &unk_1F4C62A30;
    }

    [(FPDCoreAnalyticsReport *)v22 addValue:v30 forKey:@"debug"];
    [(FPDCoreAnalyticsReport *)v22 addValue:fp_bundleIdentifier forKey:@"connectionBundleID"];
    v37 = [(FPDXPCServicer *)selfCopy2 getSyncPausedXattrForURL:v15];
    if (v37)
    {
      v38 = fp_current_or_default_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [FPDXPCServicer pauseSyncForItemAtURL:behavior:bundleID:completionHandler:];
      }

      [(FPDCoreAnalyticsReport *)v22 addValue:v37 forKey:@"alreadyPausedBundleID"];
      v39 = FPFileIsAlreadyPausedError_internal();
      v40 = FPTelemetryParsedError();
      [(FPDCoreAnalyticsReport *)v22 addValue:v40 forKey:@"error"];

      [(FPDCoreAnalyticsReport *)v22 sendReport];
      log = selfCopy2->_log;
      v70 = fpfs_adopt_log();
      v42 = fp_current_or_default_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        v56 = FPPopLogSectionForBlock();
        v57 = FPFileIsAlreadyPausedError();
        *buf = 134218754;
        *&buf[4] = v56;
        v78 = 2112;
        v79 = selfCopy2;
        v80 = 2080;
        v81 = "[FPDXPCServicer pauseSyncForItemAtURL:behavior:bundleID:completionHandler:]";
        v82 = 2112;
        v83 = v57;
        _os_log_debug_impl(&dword_1CEFC7000, v42, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v43 = FPFileIsAlreadyPausedError();
      (*(v13 + 2))(v13, v43);

      __fp_pop_log();
    }

    else
    {
      server = [(FPDXPCServicer *)selfCopy2 server];
      extensionManager = [server extensionManager];
      v63 = [extensionManager domainForURL:v15 reason:0];

      provider = [v63 provider];
      identifier = [provider identifier];
      [(FPDCoreAnalyticsReport *)v22 addValue:identifier forKey:@"provider"];

      defaultBackend = [v63 defaultBackend];
      LOBYTE(provider) = objc_opt_respondsToSelector();

      if (provider)
      {
        v62 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
        defaultBackend2 = [v63 defaultBackend];
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __76__FPDXPCServicer_pauseSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke_517;
        v64[3] = &unk_1E83C08A8;
        v65 = v63;
        v66 = v22;
        v67 = selfCopy2;
        v69 = v13;
        v68 = fp_bundleIdentifier;
        [defaultBackend2 pauseSyncForItemAtURL:v15 bundleID:v68 behavior:behavior request:v62 completionHandler:v64];
      }

      else
      {
        v50 = FPNotSupportedError();
        v51 = FPTelemetryParsedError();
        [(FPDCoreAnalyticsReport *)v22 addValue:v51 forKey:@"error"];

        [(FPDCoreAnalyticsReport *)v22 sendReport];
        v52 = selfCopy2->_log;
        v70 = fpfs_adopt_log();
        v53 = fp_current_or_default_log();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          v60 = FPPopLogSectionForBlock();
          v61 = FPNotSupportedError();
          *buf = 134218754;
          *&buf[4] = v60;
          v78 = 2112;
          v79 = selfCopy2;
          v80 = 2080;
          v81 = "[FPDXPCServicer pauseSyncForItemAtURL:behavior:bundleID:completionHandler:]";
          v82 = 2112;
          v83 = v61;
          _os_log_debug_impl(&dword_1CEFC7000, v53, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
        }

        v54 = FPNotSupportedError();
        (*(v13 + 2))(v13, v54);

        __fp_pop_log();
      }
    }
  }

  else
  {
    v32 = fp_current_or_default_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [FPDXPCServicer pauseSyncForItemAtURL:behavior:bundleID:completionHandler:];
    }

    v33 = selfCopy2->_log;
    v70 = fpfs_adopt_log();
    v34 = fp_current_or_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v58 = FPPopLogSectionForBlock();
      v59 = FPNotSupportedError();
      *buf = 134218754;
      *&buf[4] = v58;
      v78 = 2112;
      v79 = selfCopy2;
      v80 = 2080;
      v81 = "[FPDXPCServicer pauseSyncForItemAtURL:behavior:bundleID:completionHandler:]";
      v82 = 2112;
      v83 = v59;
      _os_log_debug_impl(&dword_1CEFC7000, v34, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v35 = FPNotSupportedError();
    (*(v13 + 2))(v13, v35);

    __fp_pop_log();
  }

LABEL_32:
  v55 = *MEMORY[0x1E69E9840];
}

void __76__FPDXPCServicer_pauseSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer pauseSyncForItemAtURL:behavior:bundleID:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __76__FPDXPCServicer_pauseSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke_517(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) serialQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__FPDXPCServicer_pauseSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke_2;
  v12[3] = &unk_1E83C0880;
  v13 = v6;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v14 = v8;
  v15 = v9;
  v18 = *(a1 + 64);
  v16 = v5;
  v17 = *(a1 + 56);
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void __76__FPDXPCServicer_pauseSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke_2(uint64_t a1)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 domain];
    v4 = *MEMORY[0x1E696A250];
    if ([v3 isEqualToString:*MEMORY[0x1E696A250]])
    {
    }

    else
    {
      v11 = [*(a1 + 32) domain];
      v12 = [v11 isEqualToString:*MEMORY[0x1E696A798]];

      if (!v12)
      {
        v14 = MEMORY[0x1E696ABC0];
        v37 = *MEMORY[0x1E696A278];
        v15 = [*(a1 + 32) localizedDescription];
        v38[0] = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
        v13 = [v14 errorWithDomain:v4 code:512 userInfo:v16];

        goto LABEL_10;
      }
    }

    v13 = *(a1 + 32);
LABEL_10:
    v17 = *(a1 + 40);
    v18 = *(a1 + 32);
    v19 = FPTelemetryParsedError();
    [v17 addValue:v19 forKey:@"error"];

    [*(a1 + 40) sendReport];
    v20 = *(*(a1 + 48) + 24);
    v27 = fpfs_adopt_log();
    v21 = fp_current_or_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 72);
      v24 = FPPopLogSectionForBlock();
      v25 = *(a1 + 48);
      *buf = 134218754;
      v30 = v24;
      v31 = 2112;
      v32 = v25;
      v33 = 2080;
      v34 = "[FPDXPCServicer pauseSyncForItemAtURL:behavior:bundleID:completionHandler:]_block_invoke_2";
      v35 = 2112;
      v36 = v13;
      _os_log_debug_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    (*(*(a1 + 72) + 16))();
    __fp_pop_log();

    goto LABEL_13;
  }

  [*(a1 + 40) addValue:@"success" forKey:@"error"];
  [*(a1 + 40) sendReport];
  v5 = [*(a1 + 48) server];
  v6 = [v5 extensionManager];
  v28 = *(a1 + 56);
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  [v6 setPausedSyncItemID:v7 forBundleID:*(a1 + 64)];

  v8 = *(*(a1 + 48) + 24);
  v26 = fpfs_adopt_log();
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 72);
    FPPopLogSectionForBlock();
    __76__FPDXPCServicer_pauseSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke_2_cold_1((a1 + 48));
  }

  (*(*(a1 + 72) + 16))();
  __fp_pop_log();

LABEL_13:
  v22 = *MEMORY[0x1E69E9840];
}

- (void)resumeSyncForItemAtURL:(id)l behavior:(unint64_t)behavior bundleID:(id)d completionHandler:(id)handler
{
  v78[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  handlerCopy = handler;
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v67 = __77__FPDXPCServicer_resumeSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke;
  v68 = &unk_1E83BE1A8;
  selfCopy = self;
  v12 = handlerCopy;
  v70 = v12;
  selfCopy2 = self;
  v14 = lCopy;
  v15 = v66;
  if (!v14)
  {
    v30 = FPInvalidParameterError();
LABEL_10:
    v31 = v30;
    v67(v15, v30);

    goto LABEL_28;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v17 = [connection fp_hasSandboxAccessToFile:v14 accessType:*MEMORY[0x1E6966DA8] logLevel:0];

  if ((v17 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    *buf = *MEMORY[0x1E6967560];
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v20 = [connection2 fp_hasOneOfEntitlements:v19 nonSandboxedAccess:0 logLevel:0];

    if ((v20 & 1) == 0)
    {
      v30 = FPNotPermittedError();
      goto LABEL_10;
    }
  }

  v21 = [[FPDCoreAnalyticsReport alloc] initWithEventName:@"com.apple.syncControls.resumeSync"];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:behavior];
  [(FPDCoreAnalyticsReport *)v21 addValue:v22 forKey:@"behavior"];

  WeakRetained = objc_loadWeakRetained(&selfCopy2->_connection);
  fp_bundleIdentifier = [WeakRetained fp_bundleIdentifier];

  connection3 = [(FPDXPCServicer *)selfCopy2 connection];
  v78[0] = *MEMORY[0x1E6967558];
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:1];
  v27 = [connection3 fp_hasOneOfEntitlements:v26];

  if (v27)
  {
    if (dCopy)
    {
      v28 = dCopy;

      v29 = &unk_1F4C62A48;
      fp_bundleIdentifier = v28;
    }

    else
    {
      v29 = &unk_1F4C62A48;
    }
  }

  else
  {
    v29 = &unk_1F4C62A30;
  }

  [(FPDCoreAnalyticsReport *)v21 addValue:v29 forKey:@"debug"];
  [(FPDCoreAnalyticsReport *)v21 addValue:fp_bundleIdentifier forKey:@"connectionBundleID"];
  v32 = [(FPDXPCServicer *)selfCopy2 getSyncPausedXattrForURL:v14];
  v33 = v32;
  if (v32 && ([v32 isEqualToString:fp_bundleIdentifier] & 1) != 0)
  {
    server = [(FPDXPCServicer *)selfCopy2 server];
    extensionManager = [server extensionManager];
    v57 = [extensionManager domainForURL:v14 reason:0];

    provider = [v57 provider];
    identifier = [provider identifier];
    [(FPDCoreAnalyticsReport *)v21 addValue:identifier forKey:@"provider"];

    defaultBackend = [v57 defaultBackend];
    LOBYTE(provider) = objc_opt_respondsToSelector();

    if (provider)
    {
      v39 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
      defaultBackend2 = [v57 defaultBackend];
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __77__FPDXPCServicer_resumeSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke_529;
      v59[3] = &unk_1E83C08A8;
      v60 = v57;
      v61 = v21;
      v62 = selfCopy2;
      v64 = v12;
      v63 = fp_bundleIdentifier;
      [defaultBackend2 resumeSyncForItemAtURL:v14 bundleID:v63 behavior:behavior request:v39 completionHandler:v59];
    }

    else
    {
      v47 = FPNotSupportedError();
      v48 = FPTelemetryParsedError();
      [(FPDCoreAnalyticsReport *)v21 addValue:v48 forKey:@"error"];

      [(FPDCoreAnalyticsReport *)v21 sendReport];
      log = selfCopy2->_log;
      v65 = fpfs_adopt_log();
      v50 = fp_current_or_default_log();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        v55 = FPPopLogSectionForBlock();
        v56 = FPNotSupportedError();
        *buf = 134218754;
        *&buf[4] = v55;
        v72 = 2112;
        v73 = selfCopy2;
        v74 = 2080;
        v75 = "[FPDXPCServicer resumeSyncForItemAtURL:behavior:bundleID:completionHandler:]";
        v76 = 2112;
        v77 = v56;
        _os_log_debug_impl(&dword_1CEFC7000, v50, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v51 = FPNotSupportedError();
      (*(v12 + 2))(v12, v51);

      __fp_pop_log();
    }
  }

  else
  {
    v41 = fp_current_or_default_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [FPDXPCServicer resumeSyncForItemAtURL:behavior:bundleID:completionHandler:];
    }

    v42 = FPFileNotPausedError_internal();
    v43 = FPTelemetryParsedError();
    [(FPDCoreAnalyticsReport *)v21 addValue:v43 forKey:@"error"];

    if (v33)
    {
      [(FPDCoreAnalyticsReport *)v21 addValue:v33 forKey:@"mismatchedPausedBundleID"];
    }

    [(FPDCoreAnalyticsReport *)v21 sendReport];
    v44 = selfCopy2->_log;
    v65 = fpfs_adopt_log();
    v45 = fp_current_or_default_log();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      v53 = FPPopLogSectionForBlock();
      v54 = FPFileNotPausedError();
      *buf = 134218754;
      *&buf[4] = v53;
      v72 = 2112;
      v73 = selfCopy2;
      v74 = 2080;
      v75 = "[FPDXPCServicer resumeSyncForItemAtURL:behavior:bundleID:completionHandler:]";
      v76 = 2112;
      v77 = v54;
      _os_log_debug_impl(&dword_1CEFC7000, v45, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v46 = FPFileNotPausedError();
    (*(v12 + 2))(v12, v46);

    __fp_pop_log();
  }

LABEL_28:
  v52 = *MEMORY[0x1E69E9840];
}

void __77__FPDXPCServicer_resumeSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer resumeSyncForItemAtURL:behavior:bundleID:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __77__FPDXPCServicer_resumeSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke_529(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) serialQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__FPDXPCServicer_resumeSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke_2;
  v12[3] = &unk_1E83C0880;
  v13 = v6;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v14 = v8;
  v15 = v9;
  v18 = *(a1 + 64);
  v16 = v5;
  v17 = *(a1 + 56);
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void __77__FPDXPCServicer_resumeSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke_2(uint64_t a1)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 domain];
    v4 = *MEMORY[0x1E696A250];
    if ([v3 isEqualToString:*MEMORY[0x1E696A250]])
    {
    }

    else
    {
      v11 = [*(a1 + 32) domain];
      v12 = [v11 isEqualToString:*MEMORY[0x1E696A798]];

      if (!v12)
      {
        v14 = MEMORY[0x1E696ABC0];
        v37 = *MEMORY[0x1E696A278];
        v15 = [*(a1 + 32) localizedDescription];
        v38[0] = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
        v13 = [v14 errorWithDomain:v4 code:512 userInfo:v16];

        goto LABEL_10;
      }
    }

    v13 = *(a1 + 32);
LABEL_10:
    v17 = *(a1 + 40);
    v18 = *(a1 + 32);
    v19 = FPTelemetryParsedError();
    [v17 addValue:v19 forKey:@"error"];

    [*(a1 + 40) sendReport];
    v20 = *(*(a1 + 48) + 24);
    v27 = fpfs_adopt_log();
    v21 = fp_current_or_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 72);
      v24 = FPPopLogSectionForBlock();
      v25 = *(a1 + 48);
      *buf = 134218754;
      v30 = v24;
      v31 = 2112;
      v32 = v25;
      v33 = 2080;
      v34 = "[FPDXPCServicer resumeSyncForItemAtURL:behavior:bundleID:completionHandler:]_block_invoke_2";
      v35 = 2112;
      v36 = v13;
      _os_log_debug_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    (*(*(a1 + 72) + 16))();
    __fp_pop_log();

    goto LABEL_13;
  }

  [*(a1 + 40) addValue:@"success" forKey:@"error"];
  [*(a1 + 40) sendReport];
  v5 = [*(a1 + 48) server];
  v6 = [v5 extensionManager];
  v28 = *(a1 + 56);
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  [v6 removePausedSyncItemID:v7 forBundleID:*(a1 + 64)];

  v8 = *(*(a1 + 48) + 24);
  v26 = fpfs_adopt_log();
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 72);
    FPPopLogSectionForBlock();
    __77__FPDXPCServicer_resumeSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke_2_cold_1((a1 + 48));
  }

  (*(*(a1 + 72) + 16))();
  __fp_pop_log();

LABEL_13:
  v22 = *MEMORY[0x1E69E9840];
}

- (void)fetchLatestVersionForItemAtURL:(id)l bundleID:(id)d completionHandler:(id)handler
{
  v69[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  handlerCopy = handler;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v54 = __76__FPDXPCServicer_fetchLatestVersionForItemAtURL_bundleID_completionHandler___block_invoke;
  v55 = &unk_1E83BE1A8;
  selfCopy = self;
  v11 = handlerCopy;
  v57 = v11;
  selfCopy2 = self;
  v13 = lCopy;
  v14 = v53;
  if (!v13)
  {
    v28 = FPInvalidParameterError();
LABEL_10:
    v29 = v28;
    v54(v14, v28);

    goto LABEL_18;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v16 = [connection fp_hasSandboxAccessToFile:v13 accessType:*MEMORY[0x1E6966DA8] logLevel:0];

  if ((v16 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    *buf = *MEMORY[0x1E6967560];
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v19 = [connection2 fp_hasOneOfEntitlements:v18 nonSandboxedAccess:0 logLevel:0];

    if ((v19 & 1) == 0)
    {
      v28 = FPNotPermittedError();
      goto LABEL_10;
    }
  }

  v20 = [[FPDCoreAnalyticsReport alloc] initWithEventName:@"com.apple.syncControls.fetchLatestVersion"];
  WeakRetained = objc_loadWeakRetained(&selfCopy2->_connection);
  fp_bundleIdentifier = [WeakRetained fp_bundleIdentifier];

  connection3 = [(FPDXPCServicer *)selfCopy2 connection];
  v69[0] = *MEMORY[0x1E6967558];
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:1];
  v25 = [connection3 fp_hasOneOfEntitlements:v24];

  if (v25)
  {
    if (dCopy)
    {
      v26 = dCopy;

      v27 = &unk_1F4C62A48;
      fp_bundleIdentifier = v26;
    }

    else
    {
      v27 = &unk_1F4C62A48;
    }
  }

  else
  {
    v27 = &unk_1F4C62A30;
  }

  [(FPDCoreAnalyticsReport *)v20 addValue:v27 forKey:@"debug"];
  [(FPDCoreAnalyticsReport *)v20 addValue:fp_bundleIdentifier forKey:@"connectionBundleID"];
  server = [(FPDXPCServicer *)selfCopy2 server];
  extensionManager = [server extensionManager];
  v32 = [extensionManager domainForURL:v13 reason:0];

  provider = [v32 provider];
  identifier = [provider identifier];
  [(FPDCoreAnalyticsReport *)v20 addValue:identifier forKey:@"provider"];

  v35 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
  defaultBackend = [v32 defaultBackend];
  v37 = objc_opt_respondsToSelector();

  if (v37)
  {
    defaultBackend2 = [v32 defaultBackend];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __76__FPDXPCServicer_fetchLatestVersionForItemAtURL_bundleID_completionHandler___block_invoke_535;
    v48[3] = &unk_1E83C08D0;
    v49 = v20;
    v50 = selfCopy2;
    v51 = v11;
    [defaultBackend2 fetchLatestVersionForURL:v13 request:v35 completionHandler:v48];
  }

  else
  {
    v39 = FPNotSupportedError();
    v40 = FPTelemetryParsedError();
    [(FPDCoreAnalyticsReport *)v20 addValue:v40 forKey:@"error"];

    [(FPDCoreAnalyticsReport *)v20 sendReport];
    log = selfCopy2->_log;
    v52 = fpfs_adopt_log();
    v42 = fp_current_or_default_log();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v45 = FPPopLogSectionForBlock();
      v46 = FPNotSupportedError();
      *buf = 134219266;
      *&buf[4] = v45;
      v59 = 2112;
      v60 = selfCopy2;
      v61 = 2080;
      v62 = "[FPDXPCServicer fetchLatestVersionForItemAtURL:bundleID:completionHandler:]";
      v63 = 2112;
      v64 = 0;
      v65 = 2112;
      v66 = 0;
      v67 = 2112;
      v68 = v46;
      v47 = v46;
      _os_log_debug_impl(&dword_1CEFC7000, v42, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }

    v43 = FPNotSupportedError();
    (*(v11 + 2))(v11, 0, 0, v43);

    __fp_pop_log();
  }

LABEL_18:
  v44 = *MEMORY[0x1E69E9840];
}

void __76__FPDXPCServicer_fetchLatestVersionForItemAtURL_bundleID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219266;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer fetchLatestVersionForItemAtURL:bundleID:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = 0;
    v21 = 2112;
    v22 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __76__FPDXPCServicer_fetchLatestVersionForItemAtURL_bundleID_completionHandler___block_invoke_535(uint64_t a1, void *a2, void *a3, void *a4)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 domain];
    v12 = *MEMORY[0x1E696A250];
    if ([v11 isEqualToString:*MEMORY[0x1E696A250]])
    {
    }

    else
    {
      v15 = [v10 domain];
      v16 = [v15 isEqualToString:*MEMORY[0x1E696A798]];

      if (!v16)
      {
        v18 = MEMORY[0x1E696ABC0];
        v46 = *MEMORY[0x1E696A278];
        v19 = [v10 localizedDescription];
        v47[0] = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
        v17 = [v18 errorWithDomain:v12 code:512 userInfo:v20];

        goto LABEL_10;
      }
    }

    v17 = v10;
LABEL_10:
    v21 = *(a1 + 32);
    v22 = FPTelemetryParsedError();
    [v21 addValue:v22 forKey:@"error"];

    [*(a1 + 32) sendReport];
    v23 = *(*(a1 + 40) + 24);
    v33 = fpfs_adopt_log();
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v26 = *(a1 + 48);
      v27 = FPPopLogSectionForBlock();
      v28 = *(a1 + 40);
      *buf = 134219266;
      v35 = v27;
      v36 = 2112;
      v37 = v28;
      v38 = 2080;
      v39 = "[FPDXPCServicer fetchLatestVersionForItemAtURL:bundleID:completionHandler:]_block_invoke";
      v40 = 2112;
      v41 = 0;
      v42 = 2112;
      v43 = 0;
      v44 = 2112;
      v45 = v17;
      _os_log_debug_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }

    (*(*(a1 + 48) + 16))();
    __fp_pop_log();

    goto LABEL_13;
  }

  [*(a1 + 32) addValue:@"success" forKey:@"error"];
  [*(a1 + 32) sendReport];
  v13 = *(*(a1 + 40) + 24);
  v32 = fpfs_adopt_log();
  v14 = fp_current_or_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v29 = *(a1 + 48);
    v30 = FPPopLogSectionForBlock();
    v31 = *(a1 + 40);
    *buf = 134219266;
    v35 = v30;
    v36 = 2112;
    v37 = v31;
    v38 = 2080;
    v39 = "[FPDXPCServicer fetchLatestVersionForItemAtURL:bundleID:completionHandler:]_block_invoke";
    v40 = 2112;
    v41 = v7;
    v42 = 2112;
    v43 = v8;
    v44 = 2112;
    v45 = 0;
    _os_log_debug_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log();

LABEL_13:
  v25 = *MEMORY[0x1E69E9840];
}

- (void)uploadLocalVersionOfItemAtURL:(id)l bundleID:(id)d conflictResolutionPolicy:(int64_t)policy completionHandler:(id)handler
{
  v107[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  handlerCopy = handler;
  v91[0] = MEMORY[0x1E69E9820];
  v91[1] = 3221225472;
  v92 = __100__FPDXPCServicer_uploadLocalVersionOfItemAtURL_bundleID_conflictResolutionPolicy_completionHandler___block_invoke;
  v93 = &unk_1E83BE1A8;
  selfCopy = self;
  v85 = handlerCopy;
  v95 = v85;
  selfCopy2 = self;
  v13 = lCopy;
  v14 = v91;
  if (!v13)
  {
    v29 = FPInvalidParameterError();
LABEL_10:
    v30 = v29;
    v92(v14, v29);

    goto LABEL_40;
  }

  connection = [(FPDXPCServicer *)selfCopy2 connection];
  v16 = [connection fp_hasSandboxAccessToFile:v13 accessType:*MEMORY[0x1E6966DA8] logLevel:0];

  if ((v16 & 1) == 0)
  {
    connection2 = [(FPDXPCServicer *)selfCopy2 connection];
    *buf = *MEMORY[0x1E6967560];
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v19 = [connection2 fp_hasOneOfEntitlements:v18 nonSandboxedAccess:0 logLevel:0];

    if ((v19 & 1) == 0)
    {
      v29 = FPNotPermittedError();
      goto LABEL_10;
    }
  }

  v20 = [[FPDCoreAnalyticsReport alloc] initWithEventName:@"com.apple.syncControls.uploadLocalVersion"];
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:policy];
  [(FPDCoreAnalyticsReport *)v20 addValue:v21 forKey:@"behavior"];

  WeakRetained = objc_loadWeakRetained(&selfCopy2->_connection);
  fp_bundleIdentifier = [WeakRetained fp_bundleIdentifier];

  connection3 = [(FPDXPCServicer *)selfCopy2 connection];
  v107[0] = *MEMORY[0x1E6967558];
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:1];
  v26 = [connection3 fp_hasOneOfEntitlements:v25];

  if (v26)
  {
    if (dCopy)
    {
      v27 = dCopy;

      v28 = &unk_1F4C62A48;
      fp_bundleIdentifier = v27;
    }

    else
    {
      v28 = &unk_1F4C62A48;
    }
  }

  else
  {
    v28 = &unk_1F4C62A30;
  }

  [(FPDCoreAnalyticsReport *)v20 addValue:v28 forKey:@"debug"];
  [(FPDCoreAnalyticsReport *)v20 addValue:fp_bundleIdentifier forKey:@"connectionBundleID"];
  v31 = [(FPDXPCServicer *)selfCopy2 getSyncPausedXattrForURL:v13];
  v32 = v31;
  if (v31 && ([v31 isEqualToString:fp_bundleIdentifier] & 1) != 0)
  {
    server = [(FPDXPCServicer *)selfCopy2 server];
    extensionManager = [server extensionManager];
    v83 = [extensionManager domainForURL:v13 reason:0];

    provider = [v83 provider];
    identifier = [provider identifier];
    [(FPDCoreAnalyticsReport *)v20 addValue:identifier forKey:@"provider"];

    if (v83)
    {
      if (policy == 1 && ([v83 provider], v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "descriptor"), v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "supportsFailingUploadOnConflict"), v38, v37, (v39 & 1) == 0))
      {
        v64 = fp_current_or_default_log();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          [FPDXPCServicer uploadLocalVersionOfItemAtURL:bundleID:conflictResolutionPolicy:completionHandler:];
        }

        v65 = FPNotSupportedError();
        v66 = FPTelemetryParsedError();
        [(FPDCoreAnalyticsReport *)v20 addValue:v66 forKey:@"error"];

        [(FPDCoreAnalyticsReport *)v20 sendReport];
        log = selfCopy2->_log;
        v90 = fpfs_adopt_log();
        v68 = fp_current_or_default_log();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
        {
          v77 = FPPopLogSectionForBlock();
          v78 = FPNotSupportedError();
          *buf = 134218754;
          *&buf[4] = v77;
          v101 = 2112;
          v102 = selfCopy2;
          v103 = 2080;
          v104 = "[FPDXPCServicer uploadLocalVersionOfItemAtURL:bundleID:conflictResolutionPolicy:completionHandler:]";
          v105 = 2112;
          v106 = v78;
          _os_log_debug_impl(&dword_1CEFC7000, v68, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
        }

        v69 = FPNotSupportedError();
        (*(v85 + 2))(v85, v69);

        __fp_pop_log();
      }

      else
      {
        v81 = [FPDRequest requestForPID:[(FPDXPCServicer *)selfCopy2 pid]];
        defaultBackend = [v83 defaultBackend];
        v41 = objc_opt_respondsToSelector();

        if (v41)
        {
          defaultBackend2 = [v83 defaultBackend];
          v86[0] = MEMORY[0x1E69E9820];
          v86[1] = 3221225472;
          v86[2] = __100__FPDXPCServicer_uploadLocalVersionOfItemAtURL_bundleID_conflictResolutionPolicy_completionHandler___block_invoke_545;
          v86[3] = &unk_1E83BFA20;
          v87 = v20;
          v88 = selfCopy2;
          v89 = v85;
          [defaultBackend2 uploadLocalVersionOfItemAtURL:v13 conflictResolutionPolicy:policy request:v81 completionHandler:v86];
        }

        else
        {
          v59 = FPNotSupportedError();
          v60 = FPTelemetryParsedError();
          [(FPDCoreAnalyticsReport *)v20 addValue:v60 forKey:@"error"];

          [(FPDCoreAnalyticsReport *)v20 sendReport];
          v61 = selfCopy2->_log;
          v90 = fpfs_adopt_log();
          v62 = fp_current_or_default_log();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
          {
            v75 = FPPopLogSectionForBlock();
            v76 = FPNotSupportedError();
            *buf = 134218754;
            *&buf[4] = v75;
            v101 = 2112;
            v102 = selfCopy2;
            v103 = 2080;
            v104 = "[FPDXPCServicer uploadLocalVersionOfItemAtURL:bundleID:conflictResolutionPolicy:completionHandler:]";
            v105 = 2112;
            v106 = v76;
            _os_log_debug_impl(&dword_1CEFC7000, v62, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
          }

          v63 = FPNotSupportedError();
          (*(v85 + 2))(v85, v63);

          __fp_pop_log();
        }
      }
    }

    else
    {
      v49 = FPProviderNotFoundErrorForURL();
      v50 = FPTelemetryParsedError();
      [(FPDCoreAnalyticsReport *)v20 addValue:v50 forKey:@"error"];

      [(FPDCoreAnalyticsReport *)v20 sendReport];
      v51 = selfCopy2->_log;
      v90 = fpfs_adopt_log();
      v52 = fp_current_or_default_log();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        v80 = FPPopLogSectionForBlock();
        v79 = MEMORY[0x1E696ABC0];
        v54 = *MEMORY[0x1E696A998];
        v55 = *MEMORY[0x1E696A278];
        v98[0] = *MEMORY[0x1E696A998];
        v98[1] = v55;
        v99[0] = v13;
        v99[1] = @"Provider not found for URL.";
        v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v99 forKeys:v98 count:2];
        v53 = *MEMORY[0x1E696A250];
        v73 = [v79 errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:v82];
        *buf = 134218754;
        *&buf[4] = v80;
        v101 = 2112;
        v102 = selfCopy2;
        v103 = 2080;
        v104 = "[FPDXPCServicer uploadLocalVersionOfItemAtURL:bundleID:conflictResolutionPolicy:completionHandler:]";
        v105 = 2112;
        v74 = v73;
        v106 = v73;
        _os_log_debug_impl(&dword_1CEFC7000, v52, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      else
      {
        v53 = *MEMORY[0x1E696A250];
        v54 = *MEMORY[0x1E696A998];
        v55 = *MEMORY[0x1E696A278];
      }

      v56 = MEMORY[0x1E696ABC0];
      v96[0] = v54;
      v96[1] = v55;
      v97[0] = v13;
      v97[1] = @"Provider not found for URL.";
      v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:v96 count:2];
      v58 = [v56 errorWithDomain:v53 code:3328 userInfo:v57];
      (*(v85 + 2))(v85, v58);

      __fp_pop_log();
    }
  }

  else
  {
    v43 = fp_current_or_default_log();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      [FPDXPCServicer uploadLocalVersionOfItemAtURL:bundleID:conflictResolutionPolicy:completionHandler:];
    }

    v44 = FPFileNotPausedError_internal();
    v45 = FPTelemetryParsedError();
    [(FPDCoreAnalyticsReport *)v20 addValue:v45 forKey:@"error"];

    if (v32)
    {
      [(FPDCoreAnalyticsReport *)v20 addValue:v32 forKey:@"mismatchedPausedBundleID"];
    }

    [(FPDCoreAnalyticsReport *)v20 sendReport];
    v46 = selfCopy2->_log;
    v90 = fpfs_adopt_log();
    v47 = fp_current_or_default_log();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      v71 = FPPopLogSectionForBlock();
      v72 = FPFileNotPausedError();
      *buf = 134218754;
      *&buf[4] = v71;
      v101 = 2112;
      v102 = selfCopy2;
      v103 = 2080;
      v104 = "[FPDXPCServicer uploadLocalVersionOfItemAtURL:bundleID:conflictResolutionPolicy:completionHandler:]";
      v105 = 2112;
      v106 = v72;
      _os_log_debug_impl(&dword_1CEFC7000, v47, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v48 = FPFileNotPausedError();
    (*(v85 + 2))(v85, v48);

    __fp_pop_log();
  }

LABEL_40:
  v70 = *MEMORY[0x1E69E9840];
}

void __100__FPDXPCServicer_uploadLocalVersionOfItemAtURL_bundleID_conflictResolutionPolicy_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer uploadLocalVersionOfItemAtURL:bundleID:conflictResolutionPolicy:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __100__FPDXPCServicer_uploadLocalVersionOfItemAtURL_bundleID_conflictResolutionPolicy_completionHandler___block_invoke_545(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = *MEMORY[0x1E696A250];
    if ([v5 isEqualToString:*MEMORY[0x1E696A250]])
    {
    }

    else
    {
      v10 = [v4 domain];
      v11 = [v10 isEqualToString:*MEMORY[0x1E696A798]];

      if (!v11)
      {
        v13 = objc_opt_new();
        v14 = [v4 localizedDescription];
        [v13 setValue:v14 forKey:*MEMORY[0x1E696A278]];

        v15 = [v4 domain];
        if ([v15 isEqualToString:*MEMORY[0x1E6967190]])
        {
          v16 = [v4 code];

          if (v16 == -2015)
          {
            [v13 setValue:v4 forKey:*MEMORY[0x1E696AA08]];
          }
        }

        else
        {
        }

        v12 = [MEMORY[0x1E696ABC0] errorWithDomain:v6 code:512 userInfo:v13];

        goto LABEL_14;
      }
    }

    v12 = v4;
LABEL_14:
    v17 = *(a1 + 32);
    v18 = FPTelemetryParsedError();
    [v17 addValue:v18 forKey:@"error"];

    [*(a1 + 32) sendReport];
    v19 = *(*(a1 + 40) + 24);
    v26 = fpfs_adopt_log();
    v20 = fp_current_or_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a1 + 48);
      v23 = FPPopLogSectionForBlock();
      v24 = *(a1 + 40);
      *buf = 134218754;
      v28 = v23;
      v29 = 2112;
      v30 = v24;
      v31 = 2080;
      v32 = "[FPDXPCServicer uploadLocalVersionOfItemAtURL:bundleID:conflictResolutionPolicy:completionHandler:]_block_invoke";
      v33 = 2112;
      v34 = v12;
      _os_log_debug_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    (*(*(a1 + 48) + 16))();
    __fp_pop_log();

    goto LABEL_17;
  }

  [*(a1 + 32) addValue:@"success" forKey:@"error"];
  [*(a1 + 32) sendReport];
  v7 = *(*(a1 + 40) + 24);
  v25 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 48);
    FPPopLogSectionForBlock();
    __100__FPDXPCServicer_uploadLocalVersionOfItemAtURL_bundleID_conflictResolutionPolicy_completionHandler___block_invoke_545_cold_1((a1 + 40));
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log();

LABEL_17:
  v21 = *MEMORY[0x1E69E9840];
}

- (void)listPausedURLsWithBundleID:(id)d completionHandler:(id)handler
{
  v82[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  fp_bundleIdentifier = [WeakRetained fp_bundleIdentifier];

  if (dCopy)
  {
    connection = [(FPDXPCServicer *)self connection];
    v82[0] = *MEMORY[0x1E6967558];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:1];
    v9 = [connection fp_hasOneOfEntitlements:v8];

    if (v9)
    {
      v10 = dCopy;

      fp_bundleIdentifier = v10;
    }
  }

  server = [(FPDXPCServicer *)self server];
  extensionManager = [server extensionManager];
  v35 = [extensionManager syncPausedFilesForBundleID:fp_bundleIdentifier];

  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__10;
  v69 = __Block_byref_object_dispose__10;
  v70 = objc_opt_new();
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__10;
  v63 = __Block_byref_object_dispose__10;
  v64 = objc_opt_new();
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__10;
  v57 = __Block_byref_object_dispose__10;
  v58 = dispatch_group_create();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [v35 allKeys];
  v36 = [obj countByEnumeratingWithState:&v49 objects:v81 count:16];
  if (v36)
  {
    v34 = *v50;
    do
    {
      v37 = 0;
      do
      {
        if (*v50 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [v35 objectForKeyedSubscript:*(*(&v49 + 1) + 8 * v37)];
        v48 = 0u;
        v46 = 0u;
        v47 = 0u;
        v45 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v45 objects:v80 count:16];
        if (v15)
        {
          v16 = *v46;
          do
          {
            v17 = 0;
            do
            {
              if (*v46 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = *(*(&v45 + 1) + 8 * v17);
              *buf = 0;
              server2 = [(FPDXPCServicer *)self server];
              extensionManager2 = [server2 extensionManager];
              v21 = [extensionManager2 domainFromItemID:v18 checkInvalidation:1 reason:buf];

              if (v21)
              {
                dispatch_group_enter(v54[5]);
                defaultBackend = [v21 defaultBackend];
                v23 = [FPDRequest requestForPID:[(FPDXPCServicer *)self pid]];
                v40[0] = MEMORY[0x1E69E9820];
                v40[1] = 3221225472;
                v40[2] = __63__FPDXPCServicer_listPausedURLsWithBundleID_completionHandler___block_invoke;
                v40[3] = &unk_1E83C08F8;
                v42 = &v59;
                v43 = &v53;
                v40[4] = v18;
                v40[5] = self;
                v41 = fp_bundleIdentifier;
                v44 = &v65;
                [defaultBackend URLForItemID:v18 creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:1 forBookmarkResolution:0 request:v23 completionHandler:v40];
              }

              else
              {
                [v60[5] addObject:v18];
              }

              ++v17;
            }

            while (v15 != v17);
            v15 = [v14 countByEnumeratingWithState:&v45 objects:v80 count:16];
          }

          while (v15);
        }

        ++v37;
      }

      while (v37 != v36);
      v36 = [obj countByEnumeratingWithState:&v49 objects:v81 count:16];
    }

    while (v36);
  }

  dispatch_group_wait(v54[5], 0xFFFFFFFFFFFFFFFFLL);
  server3 = [(FPDXPCServicer *)self server];
  extensionManager3 = [server3 extensionManager];
  [extensionManager3 removePausedSyncItemID:v60[5] forBundleID:fp_bundleIdentifier];

  log = self->_log;
  v39 = fpfs_adopt_log();
  v27 = fp_current_or_default_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v29 = FPPopLogSectionForBlock();
    v30 = v66[5];
    *buf = 134219010;
    *&buf[4] = v29;
    v72 = 2112;
    selfCopy = self;
    v74 = 2080;
    v75 = "[FPDXPCServicer listPausedURLsWithBundleID:completionHandler:]";
    v76 = 2112;
    v77 = v30;
    v78 = 2112;
    v79 = 0;
    _os_log_debug_impl(&dword_1CEFC7000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  handlerCopy[2](handlerCopy, v66[5], 0);
  __fp_pop_log();

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v59, 8);

  _Block_object_dispose(&v65, 8);
  v28 = *MEMORY[0x1E69E9840];
}

void __63__FPDXPCServicer_listPausedURLsWithBundleID_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 || !v6)
  {
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __63__FPDXPCServicer_listPausedURLsWithBundleID_completionHandler___block_invoke_cold_2(a1, v5);
    }

    [*(*(a1[7] + 8) + 40) addObject:a1[4]];
    dispatch_group_leave(*(*(a1[8] + 8) + 40));
  }

  else
  {
    v8 = a1[5];
    v9 = [v6 url];
    v10 = [v8 getSyncPausedXattrForURL:v9];

    if (v10 && ([v10 isEqualToString:a1[6]] & 1) != 0)
    {
      v11 = *(*(a1[9] + 8) + 40);
      v12 = v7;
    }

    else
    {
      v14 = fp_current_or_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __63__FPDXPCServicer_listPausedURLsWithBundleID_completionHandler___block_invoke_cold_1();
      }

      v11 = *(*(a1[7] + 8) + 40);
      v12 = a1[4];
    }

    [v11 addObject:v12];
    dispatch_group_leave(*(*(a1[8] + 8) + 40));
  }
}

- (void)getNumberOfNonMaterializedFilesInDomain:(id)domain withCompletionHandler:(id)handler
{
  v54[2] = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E6967558];
  v54[0] = *MEMORY[0x1E6967590];
  v54[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v40 = __80__FPDXPCServicer_getNumberOfNonMaterializedFilesInDomain_withCompletionHandler___block_invoke;
  v41 = &unk_1E83BE1A8;
  selfCopy = self;
  v10 = handlerCopy;
  v43 = v10;
  v11 = v9;
  v12 = v39;
  connection = [(FPDXPCServicer *)self connection];
  v14 = [connection fp_hasOneOfEntitlements:v11];

  if (v14)
  {

    v38 = 0;
    server = [(FPDXPCServicer *)self server];
    extensionManager = [server extensionManager];
    v17 = [extensionManager domainWithID:domainCopy reason:&v38];

    if (v17)
    {
      defaultBackend = [v17 defaultBackend];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        defaultBackend2 = [v17 defaultBackend];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __80__FPDXPCServicer_getNumberOfNonMaterializedFilesInDomain_withCompletionHandler___block_invoke_548;
        v33[3] = &unk_1E83C0920;
        v34 = v17;
        selfCopy2 = self;
        v36 = v10;
        [defaultBackend2 getNumberOfNonMaterializedFilesWithCompletionHandler:v33];
      }

      else
      {
        log = self->_log;
        v37 = fpfs_adopt_log();
        v26 = fp_current_or_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v31 = FPPopLogSectionForBlock();
          v32 = FPNotSupportedError();
          *buf = 134219010;
          v45 = v31;
          v46 = 2112;
          selfCopy4 = self;
          v48 = 2080;
          v49 = "[FPDXPCServicer getNumberOfNonMaterializedFilesInDomain:withCompletionHandler:]";
          v50 = 2112;
          v51 = 0;
          v52 = 2112;
          v53 = v32;
          _os_log_debug_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        v27 = FPNotSupportedError();
        (*(v10 + 2))(v10, 0, v27);

        __fp_pop_log();
      }
    }

    else
    {
      v22 = self->_log;
      v37 = fpfs_adopt_log();
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v29 = FPPopLogSectionForBlock();
        v30 = FPProviderNotFoundError();
        *buf = 134219010;
        v45 = v29;
        v46 = 2112;
        selfCopy4 = self;
        v48 = 2080;
        v49 = "[FPDXPCServicer getNumberOfNonMaterializedFilesInDomain:withCompletionHandler:]";
        v50 = 2112;
        v51 = 0;
        v52 = 2112;
        v53 = v30;
        _os_log_debug_impl(&dword_1CEFC7000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v24 = FPProviderNotFoundError();
      (*(v10 + 2))(v10, 0, v24);

      __fp_pop_log();
    }
  }

  else
  {
    v21 = FPNotPermittedError();
    v40(v12, v21);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __80__FPDXPCServicer_getNumberOfNonMaterializedFilesInDomain_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCServicer getNumberOfNonMaterializedFilesInDomain:withCompletionHandler:]_block_invoke";
    v17 = 2112;
    v18 = &unk_1F4C62A30;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __80__FPDXPCServicer_getNumberOfNonMaterializedFilesInDomain_withCompletionHandler___block_invoke_548(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __80__FPDXPCServicer_getNumberOfNonMaterializedFilesInDomain_withCompletionHandler___block_invoke_548_cold_1();
    }
  }

  v7 = *(*(a1 + 40) + 24);
  v16 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 48);
    v13 = FPPopLogSectionForBlock();
    v14 = *(a1 + 40);
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    *buf = 134219010;
    v18 = v13;
    v19 = 2112;
    v20 = v14;
    v21 = 2080;
    v22 = "[FPDXPCServicer getNumberOfNonMaterializedFilesInDomain:withCompletionHandler:]_block_invoke";
    v23 = 2112;
    v24 = v15;
    v25 = 2112;
    v26 = v5;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  v9 = *(a1 + 48);
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  (*(v9 + 16))(v9, v10, v5);

  __fp_pop_log();
  v11 = *MEMORY[0x1E69E9840];
}

- (void)_providerForIdentifier:enumerateEntitlementRequired:error:.cold.1()
{
  OUTLINED_FUNCTION_11();
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v0);
  [WeakRetained processIdentifier];
  v2 = FPExecutableNameForProcessIdentifier();
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_providerForIdentifier:enumerateEntitlementRequired:error:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] can't find the provider for identifier %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_providerForIdentifier:enumerateEntitlementRequired:error:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] can't find the provider for the calling bundle %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __120__FPDXPCServicer_startAccessingServiceWithName_itemID_domain_connection_enumerateEntitlementRequired_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)wakeUpForURL:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_25();
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)wakeUpForURLFixed:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_25();
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)extendBookmarkForItemID:consumerID:completionHandler:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_6();
  v4 = v0;
  _os_log_debug_impl(&dword_1CEFC7000, v1, OS_LOG_TYPE_DEBUG, "[DEBUG] Successfully generated bookmarkable string “%@” from %@.", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void __71__FPDXPCServicer_extendBookmarkForItemID_consumerID_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 32);
  v5 = [*(a1 + 32) connection];
  v6 = [v5 processIdentifier];
  v7 = [*v4 connection];
  [v7 processIdentifier];
  v8 = FPExecutableNameForProcessIdentifier();
  v9 = *MEMORY[0x1E6967540];
  v10 = *(a1 + 40);
  v12[0] = 67109890;
  v12[1] = v6;
  v13 = 2112;
  v14 = v8;
  v15 = 2112;
  v16 = v9;
  v17 = 2112;
  v18 = v10;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] PID %d (%@) does not have %@ entitlement to extend bookmark for %@", v12, 0x26u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)extendSandboxForFileURL:(const char *)a1 fromProviderID:toConsumerID:completionHandler:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __62__FPDXPCServicer_startDownloadingItemAtURL_completionHandler___block_invoke_2_cold_1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_1_3(a1);
  OUTLINED_FUNCTION_0_0(3.8523e-34, v1, v2, v3);
  OUTLINED_FUNCTION_11_1(v4, v5);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x2Au);
}

- (void)evictItemAtURL:(const char *)a1 evenIfEnumeratingFP:andClearACLForConsumer:evictionReason:completionHandler:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)evictItemAtURL:evenIfEnumeratingFP:andClearACLForConsumer:evictionReason:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_13();
  v11 = *MEMORY[0x1E69E9840];
  v2 = [v1 fp_shortDescription];
  v3 = [v0 provider];
  v4 = [v3 identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)evictItemAtURL:evenIfEnumeratingFP:andClearACLForConsumer:evictionReason:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_7_2(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

- (void)evictItemAtURL:(void *)a1 evenIfEnumeratingFP:andClearACLForConsumer:evictionReason:completionHandler:.cold.4(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)evictItemAtURL:evenIfEnumeratingFP:andClearACLForConsumer:evictionReason:completionHandler:.cold.5()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_7_2(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void __109__FPDXPCServicer_evictItemAtURL_evenIfEnumeratingFP_andClearACLForConsumer_evictionReason_completionHandler___block_invoke_135_cold_1()
{
  OUTLINED_FUNCTION_13();
  v1 = v0;
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(v0 + 32) providerDomainID];
  v3 = [*(v1 + 40) fp_shortDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

void __109__FPDXPCServicer_evictItemAtURL_evenIfEnumeratingFP_andClearACLForConsumer_evictionReason_completionHandler___block_invoke_135_cold_2(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_1_3(a1);
  OUTLINED_FUNCTION_0_0(3.8523e-34, v1, v2, v3);
  OUTLINED_FUNCTION_11_1(v4, v5);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x2Au);
}

- (void)providerDomainsCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_25();
  v9 = *MEMORY[0x1E69E9840];
  v8 = NSStringFromSelector(v1);
  [v0 count];
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)providerDomainForURL:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)providerDomainForURL:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_1_8(v0, v1, v2, 3.8524e-34);
  OUTLINED_FUNCTION_3_6(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x34u);
}

- (void)documentURLFromBookmarkableString:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] Getting URL from bookmarkable string: “%@”.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)documentURLFromItemID:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] Getting URL from itemID: “%@”.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)documentURLFromItemID:(void *)a1 creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:.cold.2(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 connection];
  v2 = [v1 fp_bundleIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_18_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

void __114__FPDXPCServicer_documentURLFromItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_25();
  v10 = *MEMORY[0x1E69E9840];
  v1 = (v0 + 40);
  v2 = [*(v0 + 40) providerID];
  v3 = *v1;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_forceIngestionForItemID:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_11();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 description];
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __106__FPDXPCServicer_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_completionHandler___block_invoke_190_cold_1()
{
  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_8(v1) itemID];
  v3 = [v2 identifier];
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_18_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __106__FPDXPCServicer_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_completionHandler___block_invoke_190_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] 🆕✅ Item creating complete: new item %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)extendBookmarkForFileURL:(void *)a1 toConsumerID:options:completionHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __82__FPDXPCServicer_extendBookmarkForFileURL_toConsumerID_options_completionHandler___block_invoke_194_cold_1()
{
  OUTLINED_FUNCTION_26();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*(v0 + 40) fp_shortDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __82__FPDXPCServicer_extendBookmarkForFileURL_toConsumerID_options_completionHandler___block_invoke_194_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_3(a1);
  *v1 = 134219010;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2112;
  *(v1 + 14) = v3;
  *(v1 + 22) = 2080;
  *(v1 + 24) = "[FPDXPCServicer extendBookmarkForFileURL:toConsumerID:options:completionHandler:]_block_invoke";
  *(v1 + 32) = 2112;
  *(v1 + 34) = 0;
  *(v1 + 42) = 2112;
  *(v1 + 44) = 0;
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x34u);
}

- (void)itemForURL:(void *)a1 options:completionHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)itemForURL:options:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_1_8(v0, v1, v2, 3.8524e-34);
  OUTLINED_FUNCTION_3_6(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x34u);
}

- (void)providerItemIDForURL:(void *)a1 completionHandler:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 provider];
  v4 = [v3 identifier];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] caller does not have access to provider %{public}@", v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)providerItemIDForURL:(void *)a1 completionHandler:.cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)providerItemIDForURL:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_1_8(v0, v1, v2, 3.8524e-34);
  OUTLINED_FUNCTION_3_6(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x34u);
}

- (void)fetchFSItemsForItemIdentifiers:providerIdentifier:domainIdentifier:materializingIfNeeded:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] no domain for: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchFSItemsForItemIdentifiers:providerIdentifier:domainIdentifier:materializingIfNeeded:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_1_8(v0, v1, v2, 3.8524e-34);
  OUTLINED_FUNCTION_3_6(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x34u);
}

- (void)trashItemAtURL:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)putBackURLForTrashedItemAtURL:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __66__FPDXPCServicer_putBackURLForTrashedItemAtURL_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) fp_shortDescription];
  v3 = *MEMORY[0x1E6967560];
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setPutBackInfoOnItemAtURL:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __80__FPDXPCServicer_fetchProviderForShareURL_fallbackIdentifier_completionHandler___block_invoke_206_cold_1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 targetApplicationRecord];
  v8 = [v7 bundleIdentifier];
  *a1 = 138412290;
  *a3 = v8;
  _os_log_debug_impl(&dword_1CEFC7000, a4, OS_LOG_TYPE_DEBUG, "[DEBUG] potential match %@", a1, 0xCu);
}

void __80__FPDXPCServicer_fetchProviderForShareURL_fallbackIdentifier_completionHandler___block_invoke_206_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] Provider %@ found via universal link lookup", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __80__FPDXPCServicer_fetchProviderForShareURL_fallbackIdentifier_completionHandler___block_invoke_206_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] Provider %@ found via direct fallback", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __80__FPDXPCServicer_fetchProviderForShareURL_fallbackIdentifier_completionHandler___block_invoke_206_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] Provider %@ found via app fallback", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __80__FPDXPCServicer_fetchProviderForShareURL_fallbackIdentifier_completionHandler___block_invoke_206_cold_5()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateLastUsedDate:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateLastUsedDate:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_7_2(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void __55__FPDXPCServicer_updateLastUsedDate_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) fp_shortDescription];
  v3 = *MEMORY[0x1E6967560];
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)valuesForAttributes:(void *)a1 forItemAtURL:completionHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)valuesForAttributes:forItemAtURL:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_1_8(v0, v1, v2, 3.8524e-34);
  OUTLINED_FUNCTION_3_6(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x34u);
}

void __69__FPDXPCServicer_valuesForAttributes_forItemAtURL_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) fp_shortDescription];
  v3 = *MEMORY[0x1E6967560];
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

void __99__FPDXPCServicer_startOperation_toFetchIconsForAppBundleIDs_requestedSize_scale_completionHandler___block_invoke_231_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateBlockedProcessNamesForProvider:processNames:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_7_2(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

- (void)fetchPathComponentsForURL:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)triggerDiagnosticsFor:(void *)a1 triggeringError:uiOnly:useDiagnostic:completionHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __95__FPDXPCServicer_triggerDiagnosticsFor_triggeringError_uiOnly_useDiagnostic_completionHandler___block_invoke_237_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)checkErrorAgainstDiagnosticsJson:inputError:errorDirection:jobCode:underlying:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8524e-34);
  *(v4 + 24) = "[FPDXPCServicer checkErrorAgainstDiagnosticsJson:inputError:errorDirection:jobCode:underlying:completionHandler:]";
  *(v4 + 32) = v5;
  OUTLINED_FUNCTION_23(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x34u);
}

- (void)checkErrorAgainstDiagnosticsJson:inputError:errorDirection:jobCode:underlying:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8524e-34);
  *(v4 + 24) = "[FPDXPCServicer checkErrorAgainstDiagnosticsJson:inputError:errorDirection:jobCode:underlying:completionHandler:]";
  *(v4 + 32) = v5;
  OUTLINED_FUNCTION_23(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x34u);
}

- (void)checkErrorAgainstDiagnosticsJson:inputError:errorDirection:jobCode:underlying:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8524e-34);
  *(v4 + 24) = "[FPDXPCServicer checkErrorAgainstDiagnosticsJson:inputError:errorDirection:jobCode:underlying:completionHandler:]";
  *(v4 + 32) = v5;
  OUTLINED_FUNCTION_23(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x34u);
}

- (void)resolveConflictAtURL:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:.cold.4()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addDomain:forProviderIdentifier:byImportingDirectoryAtURL:nonWrappedURL:userAllowedDBDrop:knownFolders:completionHandler:.cold.5()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __74__FPDXPCServicer_removeAllDomainsForProviderIdentifier_completionHandler___block_invoke_289_cold_1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_1_3(a1);
  OUTLINED_FUNCTION_0_0(3.8523e-34, v1, v2, v3);
  OUTLINED_FUNCTION_11_1(v4, v5);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x2Au);
}

void __68__FPDXPCServicer_getDomainsForProviderIdentifier_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)runFPCKForDomainWithID:domainRootURL:databaseBackupPath:options:reason:launchType:contentBarrier:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)runFPCKForDomainWithID:domainRootURL:databaseBackupPath:options:reason:launchType:contentBarrier:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)runFPCKForDomainWithID:domainRootURL:databaseBackupPath:options:reason:launchType:contentBarrier:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __133__FPDXPCServicer_runFPCKForDomainWithID_domainRootURL_databaseBackupPath_options_reason_launchType_contentBarrier_completionHandler___block_invoke_322_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __133__FPDXPCServicer_runFPCKForDomainWithID_domainRootURL_databaseBackupPath_options_reason_launchType_contentBarrier_completionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setAlternateContentsURL:onDocumentURL:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_26();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 fp_shortDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setAlternateContentsURL:(uint64_t)a3 onDocumentURL:(uint64_t)a4 completionHandler:(uint64_t)a5 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setAlternateContentsURL:(void *)a1 onDocumentURL:completionHandler:.cold.3(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setAlternateContentsURL:onDocumentURL:completionHandler:.cold.4()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_7_2(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void __74__FPDXPCServicer_setAlternateContentsURL_onDocumentURL_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v1 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_8(v2) fp_shortDescription];
  v4 = [v0 fp_prettyDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

void __74__FPDXPCServicer_setAlternateContentsURL_onDocumentURL_completionHandler___block_invoke_cold_2(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_1_3(a1);
  OUTLINED_FUNCTION_0_0(3.8523e-34, v1, v2, v3);
  OUTLINED_FUNCTION_11_1(v4, v5);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x2Au);
}

- (void)fetchAlternateContentsURLForDocumentURL:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_26();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 fp_scopeDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)fetchAlternateContentsURLForDocumentURL:(void *)a1 completionHandler:.cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)fetchAlternateContentsURLForDocumentURL:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_1_8(v0, v1, v2, 3.8524e-34);
  OUTLINED_FUNCTION_3_6(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x34u);
}

- (void)didUpdateAlternateContentsDocumentForDocumentAtURL:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_26();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 fp_shortDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __87__FPDXPCServicer_didUpdateAlternateContentsDocumentForDocumentAtURL_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) fp_shortDescription];
  v5 = [*(a1 + 40) fp_obfuscatedProviderDomainID];
  v12 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_18_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)appHasNonUploadedFiles:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8524e-34);
  *(v3 + 24) = "[FPDXPCServicer appHasNonUploadedFiles:completionHandler:]";
  *(v3 + 32) = 1024;
  *(v3 + 34) = 0;
  *(v3 + 38) = v4;
  *(v3 + 40) = 0;
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x30u);
}

- (void)dumpStateTo:providerFilter:options:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)dumpStateTo:providerFilter:options:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)dumpStateTo:providerFilter:options:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createDatabaseCopyOutputPathForDomain:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_15(&dword_1CEFC7000, v0, v1, "[ERROR] FPCK - Unable to create output directory at %@ for database copy: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)createDatabaseCopyOutputPathForDomain:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_11();
  v9 = *MEMORY[0x1E69E9840];
  v1 = [v0 providerDomainID];
  v2 = [v1 fp_obfuscatedProviderDomainID];
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __74__FPDXPCServicer_createDatabaseCopyOutputPathForDomain_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  v1 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_8(v2) providerDomainID];
  v4 = [v3 fp_obfuscatedProviderDomainID];
  v5 = [v0 fp_prettyDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

void __74__FPDXPCServicer_createDatabaseCopyOutputPathForDomain_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_8(a1) providerDomainID];
  v4 = [v3 fp_obfuscatedProviderDomainID];
  v5 = *(a1 + 40);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)scheduleActionOperationWithInfo:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] starting move operation with info: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchDaemonOperationIDsWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchDaemonOperationWithID:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] fetching daemon operations with id %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)enumerateSearchResultForRequest:providerDomainID:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)enumerateSearchResultForRequest:providerDomainID:completionHandler:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)enumerateSearchResultForRequest:(uint64_t)a1 providerDomainID:(uint64_t *)a2 completionHandler:.cold.3(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_15(&dword_1CEFC7000, v3, v4, "[ERROR] Error finding domain with ID %@, reason: %lu");
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_performWithCheckedEnumerationAttributes:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_performWithCheckedEnumerationAttributes:(void *)a1 completionHandler:.cold.2(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 enumeratedURL];
  v2 = [v1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_performWithCheckedEnumerationAttributes:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __77__FPDXPCServicer__performWithCheckedEnumerationAttributes_completionHandler___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 url];
  v2 = [v1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

void __77__FPDXPCServicer__performWithCheckedEnumerationAttributes_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_11();
  v1 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_8(v2) enumeratedItemID];
  v4 = [v0 fp_prettyDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)preventDiskImportSchedulerFromRunning:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_7_2(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

- (void)pauseIndexingFor:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)pauseIndexingFor:completionHandler:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_15(&dword_1CEFC7000, v0, v1, "[ERROR] Cannot find domain for %@ %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)dumpIndexerInfoFor:withName:to:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_7_2(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

- (void)signalReindexCSIdentifiersByProviderDomainID:indexReason:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_7_2(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void __93__FPDXPCServicer_signalReindexCSIdentifiersByProviderDomainID_indexReason_completionHandler___block_invoke_458_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __93__FPDXPCServicer_signalReindexCSIdentifiersByProviderDomainID_indexReason_completionHandler___block_invoke_458_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a2, a3, "[DEBUG] Did finish signaling reindex of items for domain: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_test_setDocIDResolutionPolicy:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14_1();
  *v0 = 134218498;
  *(v0 + 4) = v1;
  *(v0 + 12) = 2112;
  *(v0 + 14) = v2;
  *(v0 + 22) = 2080;
  *(v0 + 24) = "[FPDXPCServicer _test_setDocIDResolutionPolicy:completionHandler:]";
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)_test_callRemoveTrashedItemsOlderThanDate:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_7_2(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void __78__FPDXPCServicer__test_callRemoveTrashedItemsOlderThanDate_completionHandler___block_invoke_465_cold_1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_1_3(a1);
  OUTLINED_FUNCTION_0_0(3.8523e-34, v1, v2, v3);
  OUTLINED_FUNCTION_11_1(v4, v5);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x2Au);
}

- (void)_test_simulateInstallOfBundleID:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_7_2(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

- (void)_test_simulateUninstallOfBundleID:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_7_2(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

- (void)_test_getRootSupportDirURLForDomainURL:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_7_2(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void __75__FPDXPCServicer__test_getRootSupportDirURLForDomainURL_completionHandler___block_invoke_cold_1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_1_3(a1);
  OUTLINED_FUNCTION_0_0(3.8523e-34, v1, v2, v3);
  OUTLINED_FUNCTION_11_1(v4, v5);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x2Au);
}

- (void)_test_getDBOptions:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] no provider for id: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_test_getCountersArray:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_1_8(v0, v1, v2, 3.8524e-34);
  OUTLINED_FUNCTION_3_6(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x34u);
}

- (void)_test_resetCounters:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_7_2(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

- (void)_test_queryDiskImportSchedulerLabel:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_14_1();
  v3 = OUTLINED_FUNCTION_1_8(v0, v1, v2, 3.8524e-34);
  OUTLINED_FUNCTION_3_6(v3, v4);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x34u);
}

void __59__FPDXPCServicer__test_purgerBarrierWithCompletionHandler___block_invoke_491_cold_1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_1_3(a1);
  OUTLINED_FUNCTION_0_0(3.8523e-34, v1, v2, v3);
  OUTLINED_FUNCTION_11_1(v4, v5);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x2Au);
}

- (void)getSyncPausedXattrForURL:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = *__error();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)pauseSyncForItemAtURL:behavior:bundleID:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_15(&dword_1CEFC7000, v0, v1, "[ERROR] item %{public}@ already paused by: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)pauseSyncForItemAtURL:behavior:bundleID:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __76__FPDXPCServicer_pauseSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke_2_cold_1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_1_3(a1);
  OUTLINED_FUNCTION_0_0(3.8523e-34, v1, v2, v3);
  OUTLINED_FUNCTION_11_1(v4, v5);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x2Au);
}

- (void)resumeSyncForItemAtURL:behavior:bundleID:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __77__FPDXPCServicer_resumeSyncForItemAtURL_behavior_bundleID_completionHandler___block_invoke_2_cold_1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_1_3(a1);
  OUTLINED_FUNCTION_0_0(3.8523e-34, v1, v2, v3);
  OUTLINED_FUNCTION_11_1(v4, v5);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x2Au);
}

- (void)uploadLocalVersionOfItemAtURL:bundleID:conflictResolutionPolicy:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)uploadLocalVersionOfItemAtURL:bundleID:conflictResolutionPolicy:completionHandler:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __100__FPDXPCServicer_uploadLocalVersionOfItemAtURL_bundleID_conflictResolutionPolicy_completionHandler___block_invoke_545_cold_1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_1_3(a1);
  OUTLINED_FUNCTION_0_0(3.8523e-34, v1, v2, v3);
  OUTLINED_FUNCTION_11_1(v4, v5);
  OUTLINED_FUNCTION_15_2();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x2Au);
}

void __63__FPDXPCServicer_listPausedURLsWithBundleID_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __63__FPDXPCServicer_listPausedURLsWithBundleID_completionHandler___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __80__FPDXPCServicer_getNumberOfNonMaterializedFilesInDomain_withCompletionHandler___block_invoke_548_cold_1()
{
  OUTLINED_FUNCTION_25();
  v0 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_8(v1) providerDomainID];
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

@end