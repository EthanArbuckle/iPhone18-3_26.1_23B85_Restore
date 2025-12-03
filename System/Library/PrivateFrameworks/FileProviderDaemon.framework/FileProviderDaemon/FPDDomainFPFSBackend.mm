@interface FPDDomainFPFSBackend
- (BOOL)backgroundActivityIsPaused;
- (BOOL)isItemDataless:(id)dataless;
- (BOOL)isProviderForRealPathURL:(id)l;
- (BOOL)needsRootsCreation;
- (BOOL)startWithReason:(id)reason userAllowedDBDrop:(BOOL)drop error:(id *)error;
- (BOOL)updateRootAfterDomainChangeWithError:(id *)error;
- (NSArray)coordinationRootURLs;
- (NSData)backingStoreIdentity;
- (NSFileProviderDomainVersion)domainVersion;
- (_TtC18FileProviderDaemon20FPDDomainFPFSBackend)init;
- (id)accumulatedSizeOfItems;
- (id)createIndexerWithExtension:(id)extension enabled:(BOOL)enabled error:(id *)error;
- (id)createRootByImportingURL:(id)l knownFolders:(id)folders error:(id *)error;
- (id)evictItemAtURL:(id)l evictionReason:(unsigned int)reason request:(id)request completionHandler:(id)handler;
- (id)materializedURLForItemID:(id)d;
- (id)providerVersion;
- (id)rootURLsWithTransientState:(BOOL *)state;
- (id)startProvidingItemAtURL:(id)l readerID:(id)d readingOptions:(unint64_t)options request:(id)request completionHandler:(id)handler;
- (int64_t)accumulatedSizeOfPinnedItems;
- (int64_t)errorGenerationCount;
- (int64_t)nonEvictableSpace;
- (void)URLForItemID:(id)d creatingPlaceholderIfMissing:(BOOL)missing ignoreAlternateContentsURL:(BOOL)l forBookmarkResolution:(BOOL)resolution request:(id)request completionHandler:(id)handler;
- (void)attachKnownFolders:(id)folders options:(unint64_t)options request:(id)request completionHandler:(id)handler;
- (void)bulkItemChanges:(id)changes changedFields:(unint64_t)fields request:(id)request completionHandler:(id)handler;
- (void)clearDiagnosticState:(id)state;
- (void)copyDatabaseToURL:(id)l completionHandler:(id)handler;
- (void)createItemBasedOnTemplate:(id)template fields:(unint64_t)fields urlWrapper:(id)wrapper options:(unint64_t)options bounceOnCollision:(BOOL)collision request:(id)request completionHandler:(id)aBlock;
- (void)currentMaterializedSetSyncAnchorWithCompletionHandler:(id)handler;
- (void)currentPendingSetSyncAnchorWithCompletionHandler:(id)handler;
- (void)decorateItems:(id)items completionHandler:(id)handler;
- (void)detachKnownFolders:(id)folders request:(id)request completionHandler:(id)handler;
- (void)didChangeDomainConfiguration:(id)configuration;
- (void)didChangeItemID:(id)d completionHandler:(id)handler;
- (void)didChangeNeedsAuthentification:(BOOL)authentification;
- (void)didUpdateAlternateContentsDocumentForDocumentWithURL:(id)l request:(id)request completionHandler:(id)handler;
- (void)disableDBQueryStatisticsWithCompletionHandler:(id)handler;
- (void)downloadItemWithItemID:(id)d request:(id)request progress:(id)progress completionHandler:(id)handler;
- (void)downloadVersionWithItemID:(id)d version:(id)version originalURL:(id)l completionHandler:(id)handler;
- (void)dumpStateTo:(id)to options:(unint64_t)options request:(id)request completionHandler:(id)handler;
- (void)enumerateMaterializedSetFromSyncAnchor:(id)anchor suggestedBatchSize:(int64_t)size completionHandler:(id)handler;
- (void)enumeratePendingSetFromSyncAnchor:(id)anchor suggestedBatchSize:(int64_t)size completionHandler:(id)handler;
- (void)enumerateSearchResultForRequest:(id)request lifetimeExtender:(id)extender completionHandler:(id)handler;
- (void)enumerateWithSettings:(id)settings lifetimeExtender:(id)extender observer:(id)observer completionHandler:(id)handler;
- (void)evictItemWithID:(id)d evictionReason:(unsigned int)reason request:(id)request completionHandler:(id)handler;
- (void)fetchAlternateContentsURLWrapperForDocumentWithURL:(id)l request:(id)request completionHandler:(id)handler;
- (void)fetchFSItemsForItemIdentifiers:(id)identifiers materializingIfNeeded:(BOOL)needed request:(id)request completionHandler:(id)handler;
- (void)fetchLatestVersionForURL:(id)l request:(id)request completionHandler:(id)handler;
- (void)fetchOperationServiceOrEndpointWithRequest:(id)request completionHandler:(id)handler;
- (void)fetchServicesForItemID:(id)d allowRestrictedSources:(BOOL)sources request:(id)request completionHandler:(id)handler;
- (void)fetchTelemetryReportWithAlwaysFetchExpandedUsageStats:(BOOL)stats completionHandler:(id)handler;
- (void)fetchThumbnailsAtURL:(id)l versions:(id)versions size:(CGSize)size perThumbnailCompletionHandler:(id)handler completionHandler:(id)completionHandler;
- (void)fetchVendorEndpointWithRequest:(id)request completionHandler:(id)handler;
- (void)forceFSIngestionForItemID:(id)d request:(id)request completionHandler:(id)handler;
- (void)forceIngestionAtURL:(id)l;
- (void)forceIngestionForItemID:(id)d request:(id)request openFD:(BOOL)fD completionHandler:(id)handler;
- (void)forceUpdateBlockedProcessNamesFromDomain:(NSString *)domain completionHandler:(id)handler;
- (void)getCountersArrayWithCompletionHandler:(id)handler;
- (void)getDBOptionsWithCompletionHandler:(id)handler;
- (void)getDBQueryStatisticsWithQueryPlan:(BOOL)plan completionHandler:(id)handler;
- (void)getDiagnosticAttributesForItems:(id)items completionHandler:(id)handler;
- (void)getKnownFolderLocations:(unint64_t)locations request:(id)request completionHandler:(id)handler;
- (void)getNumberOfNonMaterializedFilesWithCompletionHandler:(id)handler;
- (void)getSavedDiagnostics:(id)diagnostics;
- (void)hasNonUploadedFilesWithCompletionHandler:(id)handler;
- (void)hierarchyForURL:(id)l request:(id)request completionHandler:(id)handler;
- (void)ingestFromCacheItemWithID:(id)d requestedFields:(unint64_t)fields request:(id)request completionHandler:(id)handler;
- (void)invalidate;
- (void)itemChangedAtURL:(id)l request:(id)request;
- (void)itemForItemID:(id)d creatingPlaceholderIfMissing:(BOOL)missing ignoreAlternateContentsURL:(BOOL)l request:(id)request completionHandler:(id)handler;
- (void)itemForURL:(id)l options:(unint64_t)options request:(id)request completionHandler:(id)handler;
- (void)itemIDForURL:(id)l requireProviderItemID:(BOOL)d request:(id)request completionHandler:(id)handler;
- (void)launchFeedbackForDomain:(FPDDomain *)domain itemIdentifier:(NSString *)identifier triggeringError:(NSError *)error when:(NSDate *)when useDiagnostic:(BOOL)diagnostic completionHandler:(id)handler;
- (void)listAvailableTestingOperationsWithRequest:(id)request completionHandler:(id)handler;
- (void)listRemoteVersionsOfItemAtURL:(id)l includeCachedVersions:(BOOL)versions request:(id)request completionHandler:(id)handler;
- (void)materializeItemWithID:(id)d requestedRange:(_NSRange)range request:(id)request completionHandler:(id)handler;
- (void)movingItemAtURL:(id)l withInfo:(id)info completionHandler:(id)handler;
- (void)pauseSyncForItemAtURL:(id)l bundleID:(id)d behavior:(unint64_t)behavior request:(id)request completionHandler:(id)handler;
- (void)pinItemWithID:(id)d request:(id)request completionHandler:(id)handler;
- (void)putBackURLForTrashedItemAtURL:(id)l request:(id)request completionHandler:(id)handler;
- (void)queryDiskImportSchedulerLabelWithCompletionHandler:(id)handler;
- (void)registerFPCKProgress:(id)progress;
- (void)reimportItemsBelowItemWithID:(id)d markItemDataless:(BOOL)dataless completionHandler:(id)handler;
- (void)reindexAllItemsWithDropReason:(unint64_t)reason completionHandler:(id)handler;
- (void)reindexItemsWithIndexReason:(int64_t)reason identifiers:(id)identifiers completionHandler:(id)handler;
- (void)removeEbihilSymlink;
- (void)requestDiagnosticCollectionForItemWithID:(id)d errorReason:(id)reason completionHandler:(id)handler;
- (void)resetCountersWithCompletionHandler:(id)handler;
- (void)resetDBQueryStatisticsWithCompletionHandler:(id)handler;
- (void)resolveConflictAtURL:(id)l request:(id)request completionHandler:(id)handler;
- (void)resumeSyncForItemAtURL:(id)l bundleID:(id)d behavior:(unint64_t)behavior request:(id)request completionHandler:(id)handler;
- (void)runTestingOperations:(id)operations request:(id)request completionHandler:(id)handler;
- (void)sendDiagnosticsFromFPCKForItemIDs:(id)ds;
- (void)setAlternateContentsURLWrapper:(id)wrapper forDocumentWithURL:(id)l request:(id)request completionHandler:(id)handler;
- (void)setBackingStoreIdentity:(id)identity;
- (void)setPutBackInfoOnItemAtURL:(id)l completionHandler:(id)handler;
- (void)sharedSchedulerCanRun:(id)run;
- (void)signalErrorResolved:(id)resolved completionHandler:(id)handler;
- (void)stateWithCompletionHandler:(id)handler;
- (void)subscribeToDownloadProgressUpdates:(id)updates completionHandler:(id)handler;
- (void)subscribeToUploadProgressUpdates:(id)updates completionHandler:(id)handler;
- (void)trashItemAtURL:(id)l request:(id)request completionHandler:(id)handler;
- (void)triggerDatabaseError:(id)error request:(id)request completionHandler:(id)handler;
- (void)triggerFeedbackApprovalRequestForItemURL:(id)l domain:(id)domain uiOnly:(BOOL)only completionHandler:(id)handler;
- (void)unpinItemWithID:(id)d request:(id)request completionHandler:(id)handler;
- (void)updateShouldRetryThrottledOperations:(BOOL)operations completionHandler:(id)handler;
- (void)uploadLocalVersionOfItemAtURL:(id)l conflictResolutionPolicy:(int64_t)policy request:(id)request completionHandler:(id)handler;
- (void)valuesForAttributes:(id)attributes forURL:(id)l request:(id)request completionHandler:(id)handler;
- (void)waitForChangesOnItemsBelowItemWithIdentifier:(id)identifier request:(id)request completionHandler:(id)handler;
- (void)waitForStabilizationForRequest:(id)request mode:(unint64_t)mode completionHandler:(id)handler;
- (void)wakeForPushWithCompletionHandler:(id)handler;
- (void)workingSetDidChangeWithCompletionHandler:(id)handler;
@end

@implementation FPDDomainFPFSBackend

- (int64_t)errorGenerationCount
{
  v2 = *(self + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_errorGenerationRecord + 16);
  selfCopy = self;
  v4 = v2;
  sub_1CF9E7398();

  return v6;
}

- (id)rootURLsWithTransientState:(BOOL *)state
{
  selfCopy = self;
  sub_1CEFCE524(state);

  sub_1CF9E5A58();
  v5 = sub_1CF9E6D28();

  return v5;
}

- (BOOL)backgroundActivityIsPaused
{
  v2 = *(self + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs);
  if (v2)
  {
    return *(*(v2 + 16) + 90);
  }

  else
  {
    return 0;
  }
}

- (void)fetchOperationServiceOrEndpointWithRequest:(id)request completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1CEFCFE98;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  v9[2] = self;
  v9[3] = request;
  v9[4] = sub_1CEFCFE98;
  v9[5] = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF902EC8;
  *(v10 + 24) = v8;
  requestCopy = request;
  selfCopy = self;
  swift_retain_n();
  v14 = selfCopy;
  v13 = requestCopy;

  sub_1CEFD4024("fetchOperationServiceOrEndpoint(with:completionHandler:)", 56, 2, sub_1CF903284, v10, sub_1CF902C54, v9);
}

- (void)itemForItemID:(id)d creatingPlaceholderIfMissing:(BOOL)missing ignoreAlternateContentsURL:(BOOL)l request:(id)request completionHandler:(id)handler
{
  lCopy = l;
  missingCopy = missing;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  dCopy = d;
  requestCopy = request;
  selfCopy = self;
  v16 = sub_1CEFD4E9C([dCopy identifier]);
  v17 = swift_allocObject();
  *(v17 + 16) = [dCopy identifier];
  *(v17 + 24) = requestCopy;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1CF024BB0;
  *(v18 + 24) = v13;
  v19 = requestCopy;

  sub_1CEFD0300(v16, missingCopy, lCopy, v17 | 0x9000000000000000, sub_1CF903268, v18);
}

- (void)URLForItemID:(id)d creatingPlaceholderIfMissing:(BOOL)missing ignoreAlternateContentsURL:(BOOL)l forBookmarkResolution:(BOOL)resolution request:(id)request completionHandler:(id)handler
{
  resolutionCopy = resolution;
  lCopy = l;
  v14 = _Block_copy(handler);
  _Block_copy(v14);
  dCopy = d;
  requestCopy = request;
  selfCopy = self;
  sub_1CF02BA84(dCopy, missing, lCopy, resolutionCopy, requestCopy, selfCopy, v14);
  _Block_release(v14);
  _Block_release(v14);
}

- (void)workingSetDidChangeWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1CF067718;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1CF067718;
  *(v7 + 24) = v5;
  swift_retain_n();
  selfCopy = self;
  sub_1CEFD4024("workingSetDidChange(completionHandler:)", 39, 2, sub_1CF90324C, v6, sub_1CF90349C, v7);
}

- (NSData)backingStoreIdentity
{
  v2 = (self + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_backingStoreIdentity);
  swift_beginAccess();
  v3 = 0;
  v4 = v2[1];
  if (v4 >> 60 != 15)
  {
    v5 = *v2;
    sub_1CEFE42D4(v5, v4);
    v6 = sub_1CF9E5B48();
    sub_1CEFE48D8(v5, v4);
    v3 = v6;
  }

  return v3;
}

- (void)setBackingStoreIdentity:(id)identity
{
  identityCopy = identity;
  if (identity)
  {
    selfCopy = self;
    v6 = identityCopy;
    identityCopy = sub_1CF9E5B88();
    v8 = v7;
  }

  else
  {
    selfCopy2 = self;
    v8 = 0xF000000000000000;
  }

  v10 = (self + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_backingStoreIdentity);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = identityCopy;
  v10[1] = v8;
  sub_1CEFE48D8(v11, v12);
}

- (NSArray)coordinationRootURLs
{
  selfCopy = self;
  v7 = sub_1CEFCE64C();
  v3 = *(selfCopy + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager);
  v4 = selfCopy;
  sub_1CF5170A8(v3, v4, &v7);

  sub_1CF9E5A58();
  v5 = sub_1CF9E6D28();

  return v5;
}

- (NSFileProviderDomainVersion)domainVersion
{
  v2 = *(self + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs);
  if (v2)
  {
    v3 = *(v2 + 16);
    selfCopy = self;

    v5 = sub_1CF807310();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removeEbihilSymlink
{
  selfCopy = self;
  sub_1CF8312C4();
}

- (BOOL)updateRootAfterDomainChangeWithError:(id *)error
{
  selfCopy = self;
  sub_1CF8319C0();

  return 1;
}

- (void)copyDatabaseToURL:(id)l completionHandler:(id)handler
{
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = _Block_copy(handler);
  sub_1CF9E59D8();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  (*(v7 + 16))(v9, v12, v6);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  (*(v7 + 32))(v16 + v15, v9, v6);
  v17 = (v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = sub_1CF067718;
  v17[1] = v14;

  selfCopy = self;
  sub_1CF8EB0F8("copyDatabase(to:completionHandler:)", 35, 2, sub_1CF903304, v16, selfCopy, sub_1CF067718, v14);

  (*(v7 + 8))(v12, v6);
}

- (void)didChangeDomainConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_1CF842DFC(configurationCopy);
}

- (void)queryDiskImportSchedulerLabelWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1CF8F99D8;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1CF8F99D8;
  *(v7 + 24) = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1CF902EC4;
  *(v8 + 24) = v6;
  swift_retain_n();
  selfCopy = self;

  sub_1CEFD4024("queryDiskImportSchedulerLabel(completionHandler:)", 49, 2, sub_1CF903300, v8, sub_1CF9034C0, v7);
}

- (_TtC18FileProviderDaemon20FPDDomainFPFSBackend)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sharedSchedulerCanRun:(id)run
{
  runCopy = run;
  selfCopy = self;
  FPDDomainFPFSBackend.sharedSchedulerCanRun(_:)(runCopy);
}

- (void)reindexAllItemsWithDropReason:(unint64_t)reason completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1CF067718;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  v9[2] = self;
  v9[3] = sub_1CF067718;
  v9[4] = v7;
  v9[5] = reason;
  selfCopy = self;
  swift_retain_n();
  v11 = selfCopy;
  sub_1CEFD4024("reindexAllItems(with:completionHandler:)", 40, 2, sub_1CF90324C, v8, sub_1CF902C6C, v9);
}

- (void)reindexItemsWithIndexReason:(int64_t)reason identifiers:(id)identifiers completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = sub_1CF9E6D48();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF067718;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  v10[2] = self;
  v10[3] = sub_1CF067718;
  v10[4] = v8;
  v10[5] = v7;
  selfCopy = self;
  swift_retain_n();
  v12 = selfCopy;
  sub_1CEFD4024("reindexItems(with:identifiers:completionHandler:)", 49, 2, sub_1CF90324C, v9, sub_1CF902C68, v10);
}

- (BOOL)startWithReason:(id)reason userAllowedDBDrop:(BOOL)drop error:(id *)error
{
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = *(self + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startupQueue);
  selfCopy = self;
  sub_1CF9E7398();

  return 1;
}

- (BOOL)needsRootsCreation
{
  selfCopy = self;
  if (sub_1CF849530())
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1CF849218();
  }

  return v3 & 1;
}

- (id)createRootByImportingURL:(id)l knownFolders:(id)folders error:(id *)error
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23[-v9];
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23[-v17];
  if (l)
  {
    sub_1CF9E59D8();
    (*(v12 + 32))(v10, v15, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  sub_1CEFD57E0(0, &qword_1EDEA3480, 0x1E69674F8);
  v19 = sub_1CF9E6D48();
  selfCopy = self;
  FPDDomainFPFSBackend.createRoot(byImporting:knownFolders:)(v10, v19, v18);
  sub_1CEFCCC44(v10, &unk_1EC4BE310, qword_1CF9FCBE0);

  v21 = sub_1CF9E5928();
  (*(v12 + 8))(v18, v11);

  return v21;
}

- (void)invalidate
{
  selfCopy = self;
  FPDDomainFPFSBackend.invalidate()();
}

- (BOOL)isProviderForRealPathURL:(id)l
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E59D8();
  selfCopy = self;
  FPDDomainFPFSBackend.isProvider(forRealPathURL:)(v8);
  v11 = v10;

  (*(v5 + 8))(v8, v4);
  return v11 & 1;
}

- (void)registerFPCKProgress:(id)progress
{
  v5 = swift_allocObject();
  *(v5 + 16) = progress;
  progressCopy = progress;
  selfCopy = self;
  sub_1CEFD4024("registerFPCKProgress(_:)", 24, 2, nullsub_1, 0, sub_1CF9034D0, v5);
}

- (void)dumpStateTo:(id)to options:(unint64_t)options request:(id)request completionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1CF067718;
  *(v11 + 24) = v10;
  v12 = swift_allocObject();
  v12[2] = self;
  v12[3] = to;
  v12[4] = options;
  v12[5] = sub_1CF067718;
  v12[6] = v10;
  toCopy = to;
  selfCopy = self;
  swift_retain_n();
  v16 = selfCopy;
  v15 = toCopy;
  sub_1CEFD4024("dumpState(to:options:request:completionHandler:)", 48, 2, sub_1CF90324C, v11, sub_1CF9032EC, v12);
}

- (void)waitForChangesOnItemsBelowItemWithIdentifier:(id)identifier request:(id)request completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF067718;
  *(v10 + 24) = v9;
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = request;
  v11[4] = sub_1CF067718;
  v11[5] = v9;
  identifierCopy = identifier;
  requestCopy = request;
  swift_retain_n();
  v14 = identifierCopy;
  v15 = requestCopy;
  selfCopy = self;
  sub_1CEFD4024("waitForChanges(below:request:completionHandler:)", 48, 2, sub_1CF90324C, v10, sub_1CF902C64, v11);
}

- (void)waitForStabilizationForRequest:(id)request mode:(unint64_t)mode completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF067718;
  *(v10 + 24) = v9;
  v11 = swift_allocObject();
  v11[2] = request;
  v11[3] = mode;
  v11[4] = sub_1CF067718;
  v11[5] = v9;
  requestCopy = request;
  swift_retain_n();
  v13 = requestCopy;
  selfCopy = self;
  sub_1CEFD4024("waitForStabilization(for:mode:completionHandler:)", 49, 2, sub_1CF90324C, v10, sub_1CF902C60, v11);
}

- (void)itemIDForURL:(id)l requireProviderItemID:(BOOL)d request:(id)request completionHandler:(id)handler
{
  dCopy = d;
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(handler);
  sub_1CF9E59D8();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  requestCopy = request;
  selfCopy = self;
  FPDDomainFPFSBackend.itemID(for:requireProviderItemID:request:completionHandler:)(v14, dCopy, requestCopy, sub_1CF902DDC, v16);

  (*(v11 + 8))(v14, v10);
}

- (void)itemForURL:(id)l options:(unint64_t)options request:(id)request completionHandler:(id)handler
{
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(handler);
  sub_1CF9E59D8();
  v16 = swift_allocObject();
  v16[2] = v15;
  requestCopy = request;
  selfCopy = self;
  FPDDomainFPFSBackend.item(for:options:request:completionHandler:)(v14, options, requestCopy, sub_1CF024BB0, v16);

  (*(v11 + 8))(v14, v10);
}

- (void)putBackURLForTrashedItemAtURL:(id)l request:(id)request completionHandler:(id)handler
{
  selfCopy = self;
  requestCopy = request;
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &selfCopy - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &selfCopy - v11;
  v13 = _Block_copy(handler);
  sub_1CF9E59D8();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  (*(v7 + 16))(v9, v12, v6);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = selfCopy;
  v17[2] = selfCopy;
  v19 = v17 + v15;
  v20 = v6;
  (*(v7 + 32))(v19, v9, v6);
  v21 = (v17 + v16);
  *v21 = sub_1CF902DE0;
  v21[1] = v14;
  v22 = requestCopy;
  *(v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8)) = requestCopy;
  v23 = v22;
  v24 = v18;
  v25 = v23;

  sub_1CF8EC6D8("putBackURLForTrashedItem(at:request:completionHandler:)", 55, 2, sub_1CF9032E8, v17, v24, sub_1CF902DE0, v14);

  (*(v7 + 8))(v12, v20);
}

- (void)setPutBackInfoOnItemAtURL:(id)l completionHandler:(id)handler
{
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = _Block_copy(handler);
  sub_1CF9E59D8();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  (*(v7 + 16))(v9, v12, v6);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  (*(v7 + 32))(v16 + v15, v9, v6);
  v17 = (v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = sub_1CF067718;
  v17[1] = v14;

  selfCopy = self;
  sub_1CF8EB0F8("setPutBackInfoOnItemAt(_:completionHandler:)", 44, 2, sub_1CF9032E4, v16, selfCopy, sub_1CF067718, v14);

  (*(v7 + 8))(v12, v6);
}

- (id)startProvidingItemAtURL:(id)l readerID:(id)d readingOptions:(unint64_t)options request:(id)request completionHandler:(id)handler
{
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(handler);
  sub_1CF9E59D8();
  swift_unknownObjectRetain();
  requestCopy = request;
  selfCopy = self;
  sub_1CF9E7728();
  swift_unknownObjectRelease();
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  v20 = FPDDomainFPFSBackend.startProvidingItem(at:readerID:readingOptions:request:completionHandler:)(v15, v22, options, requestCopy, sub_1CF067718, v19);

  __swift_destroy_boxed_opaque_existential_1(v22);
  (*(v12 + 8))(v15, v11);

  return v20;
}

- (void)downloadItemWithItemID:(id)d request:(id)request progress:(id)progress completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  dCopy = d;
  requestCopy = request;
  progressCopy = progress;
  selfCopy = self;
  FPDDomainFPFSBackend.downloadItem(with:request:progress:completionHandler:)(dCopy, requestCopy, progressCopy, sub_1CF902DE0, v11);
}

- (void)downloadVersionWithItemID:(id)d version:(id)version originalURL:(id)l completionHandler:(id)handler
{
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(handler);
  sub_1CF9E59D8();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  dCopy = d;
  versionCopy = version;
  selfCopy = self;
  FPDDomainFPFSBackend.downloadVersion(with:version:originalURL:completionHandler:)(dCopy, versionCopy, v14, sub_1CF8F8750, v16);

  (*(v11 + 8))(v14, v10);
}

- (void)forceUpdateBlockedProcessNamesFromDomain:(NSString *)domain completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = domain;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1CF9E6F08();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1CFA17E70;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1CFA17E78;
  v15[5] = v14;
  domainCopy = domain;
  selfCopy = self;
  sub_1CF8DC7A4(0, 0, v10, &unk_1CFA17E80, v15);
}

- (void)movingItemAtURL:(id)l withInfo:(id)info completionHandler:(id)handler
{
  selfCopy = self;
  infoCopy = info;
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &selfCopy - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &selfCopy - v11;
  v13 = _Block_copy(handler);
  sub_1CF9E59D8();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  (*(v7 + 16))(v9, v12, v6);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = selfCopy;
  *(v17 + 16) = selfCopy;
  v19 = v17 + v15;
  v20 = v6;
  (*(v7 + 32))(v19, v9, v6);
  v21 = infoCopy;
  *(v17 + v16) = infoCopy;
  v22 = (v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_1CF6FC8B0;
  v22[1] = v14;
  v23 = v21;
  v24 = v18;
  v25 = v23;

  sub_1CF8ED5F4("movingItem(at:with:completionHandler:)", 38, 2, sub_1CF9032E0, v17, v24, sub_1CF6FC8B0, v14);

  (*(v7 + 8))(v12, v20);
}

- (id)evictItemAtURL:(id)l evictionReason:(unsigned int)reason request:(id)request completionHandler:(id)handler
{
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(handler);
  sub_1CF9E59D8();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  requestCopy = request;
  selfCopy = self;
  v19 = FPDDomainFPFSBackend.evictItem(at:evictionReason:request:completionHandler:)(v14, reason, requestCopy, sub_1CF902DDC, v16);

  (*(v11 + 8))(v14, v10);

  return v19;
}

- (void)evictItemWithID:(id)d evictionReason:(unsigned int)reason request:(id)request completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1CF067718;
  *(v12 + 24) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = reason;
  *(v13 + 24) = d;
  *(v13 + 32) = request;
  *(v13 + 40) = sub_1CF067718;
  *(v13 + 48) = v11;
  dCopy = d;
  requestCopy = request;
  swift_retain_n();
  v16 = dCopy;
  v17 = requestCopy;
  selfCopy = self;
  sub_1CEFD4024("evictItem(with:evictionReason:request:completionHandler:)", 57, 2, sub_1CF90324C, v12, sub_1CF9032DC, v13);
}

- (void)materializeItemWithID:(id)d requestedRange:(_NSRange)range request:(id)request completionHandler:(id)handler
{
  length = range.length;
  location = range.location;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1CF067718;
  *(v13 + 24) = v12;
  v14 = swift_allocObject();
  v14[2] = sub_1CF067718;
  v14[3] = v12;
  v14[4] = location;
  v14[5] = length;
  v14[6] = request;
  v14[7] = d;
  dCopy = d;
  requestCopy = request;
  swift_retain_n();
  v17 = requestCopy;
  v18 = dCopy;
  selfCopy = self;
  sub_1CEFD4024("materializeItem(with:requestedRange:request:completionHandler:)", 63, 2, sub_1CF90324C, v13, sub_1CF9032D8, v14);
}

- (void)itemChangedAtURL:(id)l request:(id)request
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E59D8();
  (*(v5 + 8))(v8, v4);
}

- (void)enumerateMaterializedSetFromSyncAnchor:(id)anchor suggestedBatchSize:(int64_t)size completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF7BA270;
  *(v10 + 24) = v9;
  v11 = swift_allocObject();
  v11[2] = sub_1CF7BA270;
  v11[3] = v9;
  v11[4] = self;
  v11[5] = anchor;
  v11[6] = size;
  anchorCopy = anchor;
  selfCopy = self;
  swift_retain_n();
  v15 = selfCopy;
  v14 = anchorCopy;
  sub_1CEFD4024("enumerateMaterializedSet(fromSyncAnchor:suggestedBatchSize:completionHandler:)", 78, 2, sub_1CF903250, v10, sub_1CF9032CC, v11);
}

- (void)currentMaterializedSetSyncAnchorWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1CF6FC8B0;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1CF6FC8B0;
  *(v7 + 24) = v5;
  swift_retain_n();
  selfCopy = self;
  sub_1CEFD4024("currentMaterializedSetSyncAnchor(completionHandler:)", 52, 2, sub_1CF9034AC, v6, sub_1CF9034B0, v7);
}

- (void)enumeratePendingSetFromSyncAnchor:(id)anchor suggestedBatchSize:(int64_t)size completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  anchorCopy = anchor;
  selfCopy = self;
  FPDDomainFPFSBackend.enumeratePendingSet(fromSyncAnchor:suggestedBatchSize:completionHandler:)(anchorCopy, size, sub_1CF8F83F8, v9);
}

- (void)currentPendingSetSyncAnchorWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1CF8F83DC;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  v7[2] = sub_1CF8F83DC;
  v7[3] = v5;
  v7[4] = self;
  selfCopy = self;
  swift_retain_n();
  v9 = selfCopy;
  sub_1CEFD4024("currentPendingSetSyncAnchor(completionHandler:)", 47, 2, sub_1CF9034A8, v6, sub_1CF902EB8, v7);
}

- (void)stateWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1CF902DDC;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1CF902DDC;
  *(v7 + 24) = v5;
  swift_retain_n();
  selfCopy = self;
  sub_1CEFD4024("state(completionHandler:)", 25, 2, sub_1CF9034A0, v6, sub_1CF9034A4, v7);
}

- (void)wakeForPushWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1CF067718;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  v7[2] = self;
  v7[3] = sub_1CF067718;
  v7[4] = v5;
  selfCopy = self;
  swift_retain_n();
  v9 = selfCopy;
  sub_1CEFD4024("wakeForPush(completionHandler:)", 31, 2, sub_1CF90324C, v6, sub_1CF902EB4, v7);
}

- (void)didChangeItemID:(id)d completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *(self + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue);
  v9 = *(self + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log);
  v10 = swift_allocObject();
  v10[2] = d;
  v10[3] = self;
  v10[4] = sub_1CF744650;
  v10[5] = v7;
  dCopy = d;
  selfCopy = self;
  v13 = dCopy;
  v14 = selfCopy;

  sub_1CF01001C(v9, "didChange(_:completionHandler:)", 31, 2, sub_1CF90347C, v10);
}

- (void)enumerateWithSettings:(id)settings lifetimeExtender:(id)extender observer:(id)observer completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  _Block_copy(v10);
  settingsCopy = settings;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1CF8F1EA0(settingsCopy, extender, observer, selfCopy, v10);
  _Block_release(v10);
  _Block_release(v10);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)fetchFSItemsForItemIdentifiers:(id)identifiers materializingIfNeeded:(BOOL)needed request:(id)request completionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  type metadata accessor for NSFileProviderItemIdentifier(0);
  v10 = sub_1CF9E6D48();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1CF8F8284;
  *(v12 + 24) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1CF8F8284;
  *(v13 + 24) = v11;
  *(v13 + 32) = v10;
  *(v13 + 40) = self;
  *(v13 + 48) = needed;
  *(v13 + 56) = request;
  requestCopy = request;
  selfCopy = self;
  swift_retain_n();
  v17 = selfCopy;
  v16 = requestCopy;
  sub_1CEFD4024("fetchFSItems(forItemIdentifiers:materializingIfNeeded:request:completionHandler:)", 81, 2, sub_1CF9032C0, v12, sub_1CF9032C4, v13);
}

- (void)decorateItems:(id)items completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  v6 = sub_1CF9E6D48();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = swift_allocObject();
  v8[2] = sub_1CF8F827C;
  v8[3] = v7;
  v8[4] = v6;
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = sub_1CF8F827C;
  v9[4] = v7;
  swift_retain_n();
  selfCopy = self;

  sub_1CEFD4024("decorate(_:completionHandler:)", 30, 2, sub_1CF902EAC, v8, sub_1CF902EB0, v9);
}

- (int64_t)nonEvictableSpace
{
  selfCopy = self;
  v3 = FPDDomainFPFSBackend.nonEvictableSpace()();

  return v3;
}

- (int64_t)accumulatedSizeOfPinnedItems
{
  selfCopy = self;
  v3 = FPDDomainFPFSBackend.accumulatedSizeOfPinnedItems()();

  return v3;
}

- (id)accumulatedSizeOfItems
{
  selfCopy = self;
  v3 = FPDDomainFPFSBackend.accumulatedSizeOfItems()();

  if (v3)
  {
    sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    v4 = sub_1CF9E6618();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)fetchTelemetryReportWithAlwaysFetchExpandedUsageStats:(BOOL)stats completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1CF8F8274;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF8F8274;
  *(v9 + 24) = v7;
  *(v9 + 32) = self;
  *(v9 + 40) = stats;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF903260;
  *(v10 + 24) = v8;
  selfCopy = self;
  swift_retain_n();
  v12 = selfCopy;

  sub_1CEFD4024("fetchTelemetryReport(withAlwaysFetchExpandedUsageStats:completionHandler:)", 74, 2, sub_1CF903280, v10, sub_1CF902C5C, v9);
}

- (id)providerVersion
{
  selfCopy = self;
  object = FPDDomainFPFSBackend.providerVersion()().value._object;

  if (object)
  {
    v4 = sub_1CF9E6888();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)hierarchyForURL:(id)l request:(id)request completionHandler:(id)handler
{
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(handler);
  sub_1CF9E59D8();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  requestCopy = request;
  selfCopy = self;
  v17 = sub_1CF9E5928();
  v18 = swift_allocObject();
  v18[2] = sub_1CF8F826C;
  v18[3] = v14;
  v18[4] = selfCopy;
  v18[5] = requestCopy;
  aBlock[4] = sub_1CF902C90;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFF9A6C;
  aBlock[3] = &block_descriptor_1464;
  v19 = _Block_copy(aBlock);
  v20 = requestCopy;
  v21 = selfCopy;

  [(FPDDomainFPFSBackend *)v21 itemForURL:v17 options:0 request:v20 completionHandler:v19];

  _Block_release(v19);

  (*(v9 + 8))(v12, v8);
}

- (void)reimportItemsBelowItemWithID:(id)d markItemDataless:(BOOL)dataless completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF067718;
  *(v10 + 24) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1CF067718;
  *(v11 + 24) = v9;
  *(v11 + 32) = d;
  *(v11 + 40) = self;
  *(v11 + 48) = dataless;
  dCopy = d;
  selfCopy = self;
  swift_retain_n();
  v14 = dCopy;
  v15 = selfCopy;
  sub_1CEFD4024("reimportItems(below:markItemDataless:completionHandler:)", 56, 2, sub_1CF90324C, v10, sub_1CF9032BC, v11);
}

- (id)createIndexerWithExtension:(id)extension enabled:(BOOL)enabled error:(id *)error
{
  selfCopy = self;
  v7 = fpfs_supports_indexAllRemoteItems();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = objc_allocWithZone(type metadata accessor for FPFSIndexer());
    v11 = sub_1CF746E80(v9, enabled, v7);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)valuesForAttributes:(id)attributes forURL:(id)l request:(id)request completionHandler:(id)handler
{
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(handler);
  type metadata accessor for URLResourceKey(0);
  v15 = sub_1CF9E6D48();
  sub_1CF9E59D8();
  v16 = swift_allocObject();
  v16[2] = v14;
  requestCopy = request;
  selfCopy = self;
  FPDDomainFPFSBackend.values(forAttributes:for:request:completionHandler:)(v15, v13, requestCopy, sub_1CF8F8254, v16);

  (*(v10 + 8))(v13, v9);
}

- (id)materializedURLForItemID:(id)d
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  dCopy = d;
  selfCopy = self;
  FPDDomainFPFSBackend.materializedURL(for:)(dCopy, v8);

  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v8, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_1CF9E5928();
    (*(v12 + 8))(v8, v11);
    v14 = v15;
  }

  return v14;
}

- (BOOL)isItemDataless:(id)dataless
{
  datalessCopy = dataless;
  selfCopy = self;
  LOBYTE(self) = FPDDomainFPFSBackend.isItemDataless(_:)(datalessCopy);

  return self & 1;
}

- (void)createItemBasedOnTemplate:(id)template fields:(unint64_t)fields urlWrapper:(id)wrapper options:(unint64_t)options bounceOnCollision:(BOOL)collision request:(id)request completionHandler:(id)aBlock
{
  v15 = _Block_copy(aBlock);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1CF024BB0;
  *(v17 + 24) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1CF024BB0;
  *(v18 + 24) = v16;
  *(v18 + 32) = template;
  *(v18 + 40) = collision;
  *(v18 + 48) = request;
  *(v18 + 56) = self;
  *(v18 + 64) = fields;
  *(v18 + 72) = wrapper;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1CF90325C;
  *(v19 + 24) = v17;
  templateCopy = template;
  wrapperCopy = wrapper;
  requestCopy = request;
  selfCopy = self;
  swift_retain_n();
  v24 = templateCopy;
  v25 = requestCopy;
  v27 = selfCopy;
  v26 = wrapperCopy;

  sub_1CEFD4024("createItemBased(onTemplate:fields:urlWrapper:options:bounceOnCollision:request:completionHandler:)", 98, 2, sub_1CF903280, v19, sub_1CF9032B8, v18);
}

- (void)forceIngestionForItemID:(id)d request:(id)request openFD:(BOOL)fD completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1CF024BB0;
  *(v12 + 24) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1CF024BB0;
  *(v13 + 24) = v11;
  *(v13 + 32) = d;
  *(v13 + 40) = request;
  *(v13 + 48) = fD;
  *(v13 + 56) = self;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1CF90325C;
  *(v14 + 24) = v12;
  dCopy = d;
  requestCopy = request;
  selfCopy = self;
  swift_retain_n();
  v18 = dCopy;
  v19 = requestCopy;
  v20 = selfCopy;

  sub_1CEFD4024("forceIngestion(for:request:openFD:completionHandler:)", 53, 2, sub_1CF903280, v14, sub_1CF9032B4, v13);
}

- (void)forceFSIngestionForItemID:(id)d request:(id)request completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF024BB0;
  *(v10 + 24) = v9;
  v11 = swift_allocObject();
  v11[2] = sub_1CF024BB0;
  v11[3] = v9;
  v11[4] = d;
  v11[5] = request;
  v11[6] = self;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1CF90325C;
  *(v12 + 24) = v10;
  dCopy = d;
  requestCopy = request;
  selfCopy = self;
  swift_retain_n();
  v16 = dCopy;
  v17 = requestCopy;
  v18 = selfCopy;

  sub_1CEFD4024("forceFSIngestion(for:request:completionHandler:)", 48, 2, sub_1CF903280, v12, sub_1CF9032B0, v11);
}

- (void)forceIngestionAtURL:(id)l
{
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E59D8();
  _s18FileProviderDaemon20FPDDomainFPFSBackendC14forceIngestion2aty10Foundation3URLV_tF_0(v7);
  (*(v4 + 8))(v7, v3);
}

- (void)pinItemWithID:(id)d request:(id)request completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF024BB0;
  *(v10 + 24) = v9;
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = request;
  v11[4] = self;
  v11[5] = sub_1CF024BB0;
  v11[6] = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1CF90325C;
  *(v12 + 24) = v10;
  dCopy = d;
  requestCopy = request;
  selfCopy = self;
  swift_retain_n();
  v16 = dCopy;
  v17 = requestCopy;
  v18 = selfCopy;

  sub_1CEFD4024("pinItem(with:request:completionHandler:)", 40, 2, sub_1CF903280, v12, sub_1CF9032AC, v11);
}

- (void)unpinItemWithID:(id)d request:(id)request completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CEFFA830;
  *(v10 + 24) = v9;
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = request;
  v11[4] = self;
  v11[5] = sub_1CEFFA830;
  v11[6] = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1CF90325C;
  *(v12 + 24) = v10;
  dCopy = d;
  requestCopy = request;
  selfCopy = self;
  swift_retain_n();
  v16 = dCopy;
  v17 = requestCopy;
  v18 = selfCopy;

  sub_1CEFD4024("unpinItem(with:request:completionHandler:)", 42, 2, sub_1CF903280, v12, sub_1CF9032A8, v11);
}

- (void)detachKnownFolders:(id)folders request:(id)request completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  sub_1CEFD57E0(0, &qword_1EDEA3480, 0x1E69674F8);
  v8 = sub_1CF9E6D48();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  requestCopy = request;
  selfCopy = self;
  FPDDomainFPFSBackend.detachKnownFolders(_:request:completionHandler:)(v8, requestCopy, sub_1CF067718, v9);
}

- (void)attachKnownFolders:(id)folders options:(unint64_t)options request:(id)request completionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  sub_1CF9E5A58();
  v10 = sub_1CF9E6D48();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  requestCopy = request;
  selfCopy = self;
  FPDDomainFPFSBackend.attachKnownFolders(_:options:request:completionHandler:)(v10, options, requestCopy, sub_1CF067718, v11);
}

- (void)getKnownFolderLocations:(unint64_t)locations request:(id)request completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF902DDC;
  *(v10 + 24) = v9;
  v11 = swift_allocObject();
  v11[2] = self;
  v11[3] = sub_1CF902DDC;
  v11[4] = v9;
  v11[5] = locations;
  v11[6] = request;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1CF90325C;
  *(v12 + 24) = v10;
  requestCopy = request;
  selfCopy = self;
  swift_retain_n();
  v16 = selfCopy;
  v15 = requestCopy;

  sub_1CEFD4024("getKnownFolderLocations(_:request:completionHandler:)", 53, 2, sub_1CF903280, v12, sub_1CF9032A4, v11);
}

- (void)ingestFromCacheItemWithID:(id)d requestedFields:(unint64_t)fields request:(id)request completionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1CF067718;
  *(v11 + 24) = v10;
  v12 = swift_allocObject();
  v12[2] = sub_1CF067718;
  v12[3] = v10;
  v12[4] = d;
  v12[5] = fields;
  dCopy = d;
  swift_retain_n();
  v14 = dCopy;
  selfCopy = self;
  sub_1CEFD4024("ingestFromCacheItem(with:requestedFields:request:completionHandler:)", 68, 2, sub_1CF90324C, v11, sub_1CF902C58, v12);
}

- (void)bulkItemChanges:(id)changes changedFields:(unint64_t)fields request:(id)request completionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  v10 = sub_1CF9E6D48();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  requestCopy = request;
  selfCopy = self;
  FPDDomainFPFSBackend.bulkItemChanges(_:changedFields:request:completionHandler:)(v10, fields, requestCopy, sub_1CF8F8084, v11);
}

- (void)trashItemAtURL:(id)l request:(id)request completionHandler:(id)handler
{
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(handler);
  sub_1CF9E59D8();
  _Block_copy(v13);
  requestCopy = request;
  selfCopy = self;
  sub_1CF8F4EC0(v12, requestCopy, selfCopy, v13);
  _Block_release(v13);
  _Block_release(v13);

  (*(v9 + 8))(v12, v8);
}

- (void)resolveConflictAtURL:(id)l request:(id)request completionHandler:(id)handler
{
  selfCopy = self;
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  sub_1CF9E59D8();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  (*(v8 + 16))(v10, v13, v7);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v16, v10, v7);
  v19 = (v18 + v17);
  *v19 = sub_1CF067718;
  v19[1] = v15;
  *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = request;
  requestCopy = request;

  v21 = selfCopy;
  sub_1CF8EB0F8("resolveConflict(at:request:completionHandler:)", 46, 2, sub_1CF90329C, v18, v21, sub_1CF067718, v15);

  (*(v8 + 8))(v13, v7);
}

- (void)listRemoteVersionsOfItemAtURL:(id)l includeCachedVersions:(BOOL)versions request:(id)request completionHandler:(id)handler
{
  selfCopy = self;
  requestCopy = request;
  versionsCopy = versions;
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = _Block_copy(handler);
  v29 = v13;
  sub_1CF9E59D8();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1CF8F7C44;
  *(v16 + 24) = v15;
  (*(v8 + 16))(v10, v13, v7);
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1CF8F7C44;
  *(v19 + 24) = v15;
  v20 = v10;
  v21 = v7;
  (*(v8 + 32))(v19 + v17, v20, v7);
  v23 = selfCopy;
  v22 = requestCopy;
  *(v19 + v18) = selfCopy;
  v24 = v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v24 = v22;
  *(v24 + 8) = versionsCopy;
  v25 = v22;
  v26 = v23;
  swift_retain_n();
  v27 = v26;
  v28 = v25;
  sub_1CF8EF448("listRemoteVersionsOfItem(at:includeCachedVersions:request:completionHandler:)", 77, 2, sub_1CF903298, v19, v27, sub_1CF902ECC, v16);

  (*(v8 + 8))(v29, v21);
}

- (void)fetchThumbnailsAtURL:(id)l versions:(id)versions size:(CGSize)size perThumbnailCompletionHandler:(id)handler completionHandler:(id)completionHandler
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  v38 = sub_1CF9E5A58();
  v11 = *(v38 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v34 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v16 = _Block_copy(handler);
  v17 = _Block_copy(completionHandler);
  v39 = v15;
  sub_1CF9E59D8();
  sub_1CEFD57E0(0, &unk_1EDEAB5A0, 0x1E69674E8);
  v36 = sub_1CF9E6D48();
  v35 = swift_allocObject();
  *(v35 + 16) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = v38;
  (*(v11 + 16))(&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v38);
  v20 = *(v11 + 80);
  v37 = v11;
  v21 = (v20 + 16) & ~v20;
  v22 = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  (*(v11 + 32))(v26 + v21, v34, v19);
  v27 = (v26 + v22);
  *v27 = sub_1CF067718;
  v27[1] = v18;
  v28 = selfCopy;
  *(v26 + v23) = selfCopy;
  v29 = v35;
  *(v26 + v24) = v36;
  v30 = (v26 + v25);
  *v30 = width;
  v30[1] = height;
  v31 = (v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v31 = sub_1CF8F7A60;
  v31[1] = v29;
  v32 = v28;

  sub_1CF8EB0F8("fetchThumbnails(at:versions:size:perThumbnailCompletionHandler:completionHandler:)", 82, 2, sub_1CF903294, v26, v32, sub_1CF067718, v18);

  (*(v37 + 8))(v39, v19);
}

- (void)fetchServicesForItemID:(id)d allowRestrictedSources:(BOOL)sources request:(id)request completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = self;
  *(v12 + 24) = sub_1CF8F79D4;
  *(v12 + 32) = v11;
  *(v12 + 40) = sources;
  *(v12 + 48) = request;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1CF903368;
  *(v13 + 24) = v12;
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = sub_1CF903368;
  v14[4] = v12;
  v14[5] = self;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1CEFF9D98;
  *(v15 + 24) = v13;
  selfCopy = self;
  dCopy = d;
  requestCopy = request;
  swift_retain_n();
  v21 = selfCopy;
  v19 = requestCopy;
  v20 = dCopy;

  sub_1CEFD4024("resolveProviderItemID(_:completionHandler:)", 43, 2, sub_1CF796A8C, v15, sub_1CF902C50, v14);
}

- (void)fetchVendorEndpointWithRequest:(id)request completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1CF902DDC;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  v9[2] = self;
  v9[3] = sub_1CF902DDC;
  v9[4] = v7;
  v9[5] = request;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF90325C;
  *(v10 + 24) = v8;
  requestCopy = request;
  selfCopy = self;
  swift_retain_n();
  v14 = selfCopy;
  v13 = requestCopy;

  sub_1CEFD4024("fetchVendorEndpoint(with:completionHandler:)", 44, 2, sub_1CF903280, v10, sub_1CF902C4C, v9);
}

- (void)didChangeNeedsAuthentification:(BOOL)authentification
{
  selfCopy = self;
  FPDDomainFPFSBackend.didChangeNeedsAuthentification(_:)(authentification);
}

- (void)signalErrorResolved:(id)resolved completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  resolvedCopy = resolved;
  selfCopy = self;
  sub_1CF8F5530(resolvedCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)updateShouldRetryThrottledOperations:(BOOL)operations completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1CF067718;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF067718;
  *(v9 + 24) = v7;
  *(v9 + 32) = operations;
  swift_retain_n();
  selfCopy = self;
  sub_1CEFD4024("updateShouldRetryThrottledOperations(_:completionHandler:)", 58, 2, sub_1CF90324C, v8, sub_1CF902EA8, v9);
}

- (void)listAvailableTestingOperationsWithRequest:(id)request completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1CF8F7918;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  v9[2] = request;
  v9[3] = sub_1CF8F7918;
  v9[4] = v7;
  v9[5] = self;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF903264;
  *(v10 + 24) = v8;
  requestCopy = request;
  selfCopy = self;
  swift_retain_n();
  v13 = requestCopy;
  v14 = selfCopy;

  sub_1CEFD4024("listAvailableTestingOperations(with:completionHandler:)", 55, 2, sub_1CF903280, v10, sub_1CF902C48, v9);
}

- (void)runTestingOperations:(id)operations request:(id)request completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  sub_1CEFD57E0(0, &qword_1EC4C49B0, 0x1E6967478);
  v8 = sub_1CF9E6D48();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF8F7910;
  *(v10 + 24) = v9;
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = request;
  v11[4] = sub_1CF8F7910;
  v11[5] = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1CF903260;
  *(v12 + 24) = v10;
  requestCopy = request;
  swift_retain_n();
  v14 = requestCopy;
  selfCopy = self;

  sub_1CEFD4024("run(_:request:completionHandler:)", 33, 2, sub_1CF903280, v12, sub_1CF902C44, v11);
}

- (void)subscribeToUploadProgressUpdates:(id)updates completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1CF067718;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  v9[2] = updates;
  v9[3] = sub_1CF067718;
  v9[4] = v7;
  swift_unknownObjectRetain_n();
  swift_retain_n();
  selfCopy = self;
  sub_1CEFD4024("subscribe(toUploadProgressUpdates:completionHandler:)", 53, 2, sub_1CF90324C, v8, sub_1CF902EA4, v9);

  swift_unknownObjectRelease();
}

- (void)subscribeToDownloadProgressUpdates:(id)updates completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1CF067718;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  v9[2] = updates;
  v9[3] = sub_1CF067718;
  v9[4] = v7;
  swift_unknownObjectRetain_n();
  swift_retain_n();
  selfCopy = self;
  sub_1CEFD4024("subscribe(toDownloadProgressUpdates:completionHandler:)", 55, 2, sub_1CF90324C, v8, sub_1CF902EA0, v9);

  swift_unknownObjectRelease();
}

- (void)getCountersArrayWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1CF8F7908;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1CF8F7908;
  *(v7 + 24) = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1CF903264;
  *(v8 + 24) = v6;
  swift_retain_n();
  selfCopy = self;

  sub_1CEFD4024("getCountersArray(completionHandler:)", 36, 2, sub_1CF903280, v8, sub_1CF903498, v7);
}

- (void)resetCountersWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1CF067718;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1CF067718;
  *(v7 + 24) = v5;
  swift_retain_n();
  selfCopy = self;
  sub_1CEFD4024("resetCounters(completionHandler:)", 33, 2, sub_1CF90324C, v6, sub_1CF903494, v7);
}

- (void)hasNonUploadedFilesWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1CF75AFC0;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1CF903490;
  *(v7 + 24) = v6;
  v8 = swift_allocObject();
  v8[2] = sub_1CF903490;
  v8[3] = v6;
  v8[4] = sub_1CF75AFC0;
  v8[5] = v5;
  swift_retain_n();
  swift_retain_n();
  selfCopy = self;
  sub_1CEFD4024("hasNonUploadedFiles(completionHandler:)", 39, 2, sub_1CF90324C, v7, sub_1CF902C40, v8);
}

- (void)getDBOptionsWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1CF902DDC;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1CF903484;
  *(v7 + 24) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1CF902DDC;
  *(v8 + 24) = v5;
  swift_retain_n();
  selfCopy = self;

  sub_1CEFD4024("getDBOptions(completionHandler:)", 32, 2, sub_1CF90324C, v7, sub_1CF902C3C, v8);
}

- (void)setAlternateContentsURLWrapper:(id)wrapper forDocumentWithURL:(id)l request:(id)request completionHandler:(id)handler
{
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(handler);
  sub_1CF9E59D8();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  wrapperCopy = wrapper;
  requestCopy = request;
  selfCopy = self;
  v20 = sub_1CF9E5928();
  v21 = swift_allocObject();
  v21[2] = sub_1CF902DDC;
  v21[3] = v16;
  v21[4] = selfCopy;
  v21[5] = wrapperCopy;
  aBlock[4] = sub_1CF902C8C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFF9A6C;
  aBlock[3] = &block_descriptor_1065;
  v22 = _Block_copy(aBlock);
  v23 = wrapperCopy;
  v24 = selfCopy;

  [(FPDDomainFPFSBackend *)v24 itemIDForURL:v20 requireProviderItemID:0 request:requestCopy completionHandler:v22];
  _Block_release(v22);

  (*(v11 + 8))(v14, v10);
}

- (void)fetchAlternateContentsURLWrapperForDocumentWithURL:(id)l request:(id)request completionHandler:(id)handler
{
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(handler);
  sub_1CF9E59D8();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  requestCopy = request;
  selfCopy = self;
  v17 = sub_1CF9E5928();
  v18 = swift_allocObject();
  v18[2] = sub_1CF902DDC;
  v18[3] = v14;
  v18[4] = selfCopy;
  aBlock[4] = sub_1CF902E48;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFF9A6C;
  aBlock[3] = &block_descriptor_1054;
  v19 = _Block_copy(aBlock);
  v20 = selfCopy;

  [(FPDDomainFPFSBackend *)v20 itemIDForURL:v17 requireProviderItemID:0 request:requestCopy completionHandler:v19];
  _Block_release(v19);

  (*(v9 + 8))(v12, v8);
}

- (void)didUpdateAlternateContentsDocumentForDocumentWithURL:(id)l request:(id)request completionHandler:(id)handler
{
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(handler);
  sub_1CF9E59D8();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  requestCopy = request;
  selfCopy = self;
  v17 = sub_1CF9E5928();
  v18 = swift_allocObject();
  v18[2] = sub_1CF067718;
  v18[3] = v14;
  v18[4] = selfCopy;
  aBlock[4] = sub_1CF902E44;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFF9A6C;
  aBlock[3] = &block_descriptor_1044_0;
  v19 = _Block_copy(aBlock);
  v20 = selfCopy;

  [(FPDDomainFPFSBackend *)v20 itemIDForURL:v17 requireProviderItemID:0 request:requestCopy completionHandler:v19];
  _Block_release(v19);

  (*(v9 + 8))(v12, v8);
}

- (void)getDiagnosticAttributesForItems:(id)items completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  sub_1CEFD57E0(0, &qword_1EC4C4C10, 0x1E69674D0);
  v6 = sub_1CF9E6D48();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1CF8F78DC;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = self;
  v9[4] = sub_1CF8F78DC;
  v9[5] = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF903264;
  *(v10 + 24) = v8;
  selfCopy = self;
  swift_retain_n();
  v12 = selfCopy;

  sub_1CEFD4024("getDiagnosticAttributes(forItems:completionHandler:)", 52, 2, sub_1CF903280, v10, sub_1CF902C38, v9);
}

- (void)pauseSyncForItemAtURL:(id)l bundleID:(id)d behavior:(unint64_t)behavior request:(id)request completionHandler:(id)handler
{
  behaviorCopy = behavior;
  requestCopy = request;
  selfCopy = self;
  v53 = sub_1CF9E5A58();
  v8 = *(v53 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v45 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  v13 = _Block_copy(handler);
  sub_1CF9E59D8();
  v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v48 = v15;
  v49 = v14;
  v44 = swift_allocObject();
  *(v44 + 16) = v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20F0, &unk_1CFA0F4A0);
  v17 = swift_allocBox();
  v46 = v17;
  v19 = v18;
  v20 = *(v16 + 48);
  v21 = *(v16 + 64);
  v22 = v8;
  v23 = *(v8 + 16);
  v24 = v53;
  v23(v18, v12, v53);
  v25 = requestCopy;
  *(v19 + v20) = behaviorCopy;
  *(v19 + v21) = v25;
  v43 = v17 | 0x9000000000000004;
  v26 = v45;
  v27 = v12;
  v23(v45, v12, v24);
  v28 = *(v22 + 80);
  v47 = v22;
  v29 = (v28 + 40) & ~v28;
  v30 = (v9 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = v44;
  *(v32 + 2) = sub_1CF902DDC;
  *(v32 + 3) = v33;
  v34 = selfCopy;
  *(v32 + 4) = selfCopy;
  (*(v22 + 32))(&v32[v29], v26, v53);
  *&v32[v30] = behaviorCopy;
  v35 = &v32[v31];
  v36 = v48;
  *v35 = v49;
  v35[1] = v36;
  v37 = v43;
  *&v32[(v31 + 23) & 0xFFFFFFFFFFFFFFF8] = v43;
  v38 = requestCopy;
  v39 = v34;
  v40 = v38;
  v41 = v39;

  sub_1CF84D640(v27, 1, v37, sub_1CF903364, v32);

  (*(v47 + 8))(v27, v53);
}

- (void)resumeSyncForItemAtURL:(id)l bundleID:(id)d behavior:(unint64_t)behavior request:(id)request completionHandler:(id)handler
{
  behaviorCopy = behavior;
  requestCopy = request;
  selfCopy = self;
  v44 = sub_1CF9E5A58();
  v8 = *(v44 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = _Block_copy(handler);
  sub_1CF9E59D8();
  v40 = swift_allocObject();
  *(v40 + 16) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AF0, "pN\t");
  v15 = swift_allocBox();
  v42 = v15;
  v43 = v12;
  v17 = v16;
  v18 = *(v14 + 48);
  v19 = *(v14 + 64);
  v20 = *(v8 + 16);
  v21 = v44;
  v20(v16, v12, v44);
  v22 = requestCopy;
  *(v17 + v18) = behaviorCopy;
  *(v17 + v19) = v22;
  v39 = v15 | 0x9000000000000006;
  v23 = v41;
  v24 = v21;
  v20(v41, v12, v21);
  v25 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v26 = (v9 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v40;
  *(v27 + 2) = sub_1CF902DDC;
  *(v27 + 3) = v28;
  v30 = selfCopy;
  v29 = behaviorCopy;
  *(v27 + 4) = selfCopy;
  *(v27 + 5) = v29;
  v31 = v8;
  (*(v8 + 32))(&v27[v25], v23, v24);
  v32 = v39;
  *&v27[v26] = v39;
  v33 = requestCopy;
  v34 = v30;
  v35 = v33;
  v36 = v34;

  v37 = v43;
  sub_1CF84D640(v43, 1, v32, sub_1CF903360, v27);

  (*(v31 + 8))(v37, v24);
}

- (void)fetchLatestVersionForURL:(id)l request:(id)request completionHandler:(id)handler
{
  selfCopy = self;
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = _Block_copy(handler);
  sub_1CF9E59D8();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
  v31 = swift_allocBox();
  v17 = v16;
  v18 = *(v15 + 48);
  v19 = *(v8 + 16);
  v19(v16, v12, v7);
  *(v17 + v18) = request;
  v20 = v30;
  v21 = v7;
  v19(v30, v12, v7);
  v22 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = sub_1CF8F75FC;
  *(v23 + 3) = v14;
  v24 = selfCopy;
  *(v23 + 4) = selfCopy;
  (*(v8 + 32))(&v23[v22], v20, v7);
  requestCopy = request;
  v26 = v24;
  v27 = requestCopy;
  v28 = v26;

  sub_1CF84D640(v12, 0, v31 | 0xA000000000000000, sub_1CF90335C, v23);

  (*(v8 + 8))(v12, v21);
}

- (void)uploadLocalVersionOfItemAtURL:(id)l conflictResolutionPolicy:(int64_t)policy request:(id)request completionHandler:(id)handler
{
  selfCopy = self;
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(handler);
  sub_1CF9E59D8();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4B00, &unk_1CFA0F490);
  v17 = swift_allocBox();
  v19 = v18;
  v20 = *(v16 + 48);
  v21 = *(v16 + 64);
  (*(v10 + 16))(v18, v13, v9);
  *(v19 + v20) = policy;
  *(v19 + v21) = request;
  requestCopy = request;
  v23 = selfCopy;
  sub_1CF8F10A4(v13, 1, v17 | 0xA000000000000004, v23, sub_1CF067718, v15, v23, policy, v17 | 0xA000000000000004);

  (*(v10 + 8))(v13, v9);
}

- (void)getNumberOfNonMaterializedFilesWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1CF8F75E0;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1CF903484;
  *(v7 + 24) = v6;
  v8 = swift_allocObject();
  v8[2] = sub_1CF903484;
  v8[3] = v6;
  v8[4] = sub_1CF8F75E0;
  v8[5] = v5;
  swift_retain_n();
  swift_retain_n();
  selfCopy = self;
  sub_1CEFD4024("getNumberOfNonMaterializedFiles(withCompletionHandler:)", 55, 2, sub_1CF90324C, v7, sub_1CF902C34, v8);
}

- (void)disableDBQueryStatisticsWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1CF067718;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1CF067718;
  *(v7 + 24) = v5;
  swift_retain_n();
  selfCopy = self;
  sub_1CEFD4024("disableDBQueryStatistics(completionHandler:)", 44, 2, sub_1CF90324C, v6, sub_1CF90348C, v7);
}

- (void)resetDBQueryStatisticsWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1CF067718;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1CF067718;
  *(v7 + 24) = v5;
  swift_retain_n();
  selfCopy = self;
  sub_1CEFD4024("resetDBQueryStatistics(completionHandler:)", 42, 2, sub_1CF90324C, v6, sub_1CF903488, v7);
}

- (void)getDBQueryStatisticsWithQueryPlan:(BOOL)plan completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1CF8F75D8;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF8F75D8;
  *(v9 + 24) = v7;
  *(v9 + 32) = plan;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF903260;
  *(v10 + 24) = v8;
  swift_retain_n();
  selfCopy = self;

  sub_1CEFD4024("getDBQueryStatistics(withQueryPlan:completionHandler:)", 54, 2, sub_1CF903280, v10, sub_1CF902E9C, v9);
}

- (void)enumerateSearchResultForRequest:(id)request lifetimeExtender:(id)extender completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  v10[2] = self;
  v10[3] = sub_1CF902DDC;
  v10[4] = v9;
  v10[5] = request;
  v10[6] = extender;
  requestCopy = request;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  v12 = requestCopy;

  sub_1CEFD4024("enumerateSearchResult(forRequest:lifetimeExtender:completionHandler:)", 69, 2, nullsub_1, 0, sub_1CF90328C, v10);

  swift_unknownObjectRelease();
}

- (void)triggerDatabaseError:(id)error request:(id)request completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF067718;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  v10[2] = self;
  v10[3] = sub_1CF067718;
  v10[4] = v8;
  v10[5] = error;
  errorCopy = error;
  selfCopy = self;
  swift_retain_n();
  v14 = selfCopy;
  v13 = errorCopy;
  sub_1CEFD4024("triggerDatabaseError(_:request:completionHandler:)", 50, 2, sub_1CF90324C, v9, sub_1CF902C30, v10);
}

- (void)sendDiagnosticsFromFPCKForItemIDs:(id)ds
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  dsCopy = ds;
  selfCopy = self;
  v11 = sub_1CF9E5B88();
  v13 = v12;

  v14 = sub_1CF9E6F08();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = selfCopy;
  v15[5] = v11;
  v15[6] = v13;
  sub_1CF6FCFEC(0, 0, v8, &unk_1CFA17E50, v15);
}

- (void)requestDiagnosticCollectionForItemWithID:(id)d errorReason:(id)reason completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF067718;
  *(v10 + 24) = v9;
  v11 = swift_allocObject();
  v11[2] = self;
  v11[3] = sub_1CF067718;
  v11[4] = v9;
  v11[5] = d;
  v11[6] = reason;
  dCopy = d;
  reasonCopy = reason;
  selfCopy = self;
  swift_retain_n();
  v17 = selfCopy;
  v15 = dCopy;
  v16 = reasonCopy;
  sub_1CEFD4024("requestDiagnosticCollectionForItem(with:errorReason:completionHandler:)", 71, 2, sub_1CF90324C, v10, sub_1CF903288, v11);
}

- (void)triggerFeedbackApprovalRequestForItemURL:(id)l domain:(id)domain uiOnly:(BOOL)only completionHandler:(id)handler
{
  onlyCopy = only;
  domainCopy = domain;
  selfCopy = self;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v30 - v9;
  v30 = &v30 - v9;
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v18 = _Block_copy(handler);
  sub_1CF9E59D8();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = sub_1CF9E6F08();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  (*(v12 + 16))(v14, v17, v11);
  v21 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = onlyCopy;
  v24 = selfCopy;
  *(v23 + 40) = selfCopy;
  (*(v12 + 32))(v23 + v21, v14, v11);
  v25 = (v23 + v22);
  *v25 = sub_1CF8F741C;
  v25[1] = v19;
  v26 = domainCopy;
  *(v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8)) = domainCopy;
  v27 = v26;
  v28 = v24;
  v29 = v27;

  sub_1CF6FCFEC(0, 0, v30, &unk_1CFA17E48, v23);

  (*(v12 + 8))(v17, v11);
}

- (void)launchFeedbackForDomain:(FPDDomain *)domain itemIdentifier:(NSString *)identifier triggeringError:(NSError *)error when:(NSDate *)when useDiagnostic:(BOOL)diagnostic completionHandler:(id)handler
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v29 - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  *(v20 + 16) = domain;
  *(v20 + 24) = identifier;
  *(v20 + 32) = error;
  *(v20 + 40) = when;
  *(v20 + 48) = diagnostic;
  *(v20 + 56) = v19;
  *(v20 + 64) = self;
  v21 = sub_1CF9E6F08();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_1CFA17E08;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_1CFA17E18;
  v23[5] = v22;
  domainCopy = domain;
  identifierCopy = identifier;
  errorCopy = error;
  whenCopy = when;
  selfCopy = self;
  sub_1CF8DC7A4(0, 0, v18, &unk_1CFA17E28, v23);
}

- (void)getSavedDiagnostics:(id)diagnostics
{
  v4 = _Block_copy(diagnostics);
  _Block_copy(v4);
  selfCopy = self;
  sub_1CF8F6DF8(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)clearDiagnosticState:(id)state
{
  v4 = _Block_copy(state);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1CF067710;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  v7[2] = self;
  v7[3] = sub_1CF067710;
  v7[4] = v5;
  selfCopy = self;
  swift_retain_n();
  v9 = selfCopy;
  sub_1CEFD4024("clearDiagnosticState(_:)", 24, 2, sub_1CF90324C, v6, sub_1CF902E98, v7);
}

@end