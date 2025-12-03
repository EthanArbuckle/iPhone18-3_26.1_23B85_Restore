@interface CPLPrequeliteScopeStorage
+ (BOOL)_scopeType:(int64_t)type supportsClientSyncWithOptions:(unint64_t)options;
+ (id)_supportedScopeTypesWithOptions:(unint64_t)options;
- (BOOL)_addScope:(id)scope error:(id *)error;
- (BOOL)_createInitialPrimarySyncScope;
- (BOOL)_scopeTypeSupportsClientSync:(int64_t)sync scopeIdentifier:(id)identifier;
- (BOOL)_setScope:(id)scope hasCompletedTaskItem:(int64_t)item task:(id)task error:(id *)error;
- (BOOL)_setScope:(id)scope hasTaskTodo:(id)todo error:(id *)error;
- (BOOL)_storeLibraryInfo:(id)info forScope:(id)scope libraryInfoHasBeenUpdated:(BOOL *)updated error:(id *)error;
- (BOOL)_storeTransportGroup:(id)group inColumnVariable:(id)variable forScope:(id)scope error:(id *)error;
- (BOOL)_storeValue:(id)value forColumnVariable:(id)variable scope:(id)scope error:(id *)error;
- (BOOL)_transferValueFromVariable:(id)variable type:(id)type ofStorage:(id)storage toColumnVariable:(id)columnVariable transformer:(id)transformer;
- (BOOL)allActiveScopesHasFinishedSyncs;
- (BOOL)bumpCloudIndexForScopeWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)bumpLocalIndexForScopeWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)bumpPullFromTransportExpirationIntervalWithError:(id *)error;
- (BOOL)bumpStableIndexForScopeWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)commitSyncAnchorForScope:(id)scope error:(id *)error;
- (BOOL)deleteScopeWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)didDropSomeRecordsForScope:(id)scope;
- (BOOL)discardStagedSyncAnchorForScope:(id)scope error:(id *)error;
- (BOOL)discardStagedSyncAnchorWithScopeFilter:(id)filter error:(id *)error;
- (BOOL)doScopesNeedMetadataSync:(id)sync;
- (BOOL)doesScopeNeedToBePulledByClient:(id)client;
- (BOOL)doesScopeNeedToPullChangesFromTransport:(id)transport;
- (BOOL)doesScopeNeedToPushChangesToTransport:(id)transport;
- (BOOL)doesScopeNeedToUpdateTransport:(id)transport;
- (BOOL)doesScopeNeedToUploadComputeState:(id)state;
- (BOOL)doesScopeSupportToBePulledByClient:(id)client;
- (BOOL)forceIdentifyUknownScopesWithError:(id *)error;
- (BOOL)forcePushToTransportForActiveScopesWithError:(id *)error;
- (BOOL)hasActiveScopeIndex:(int64_t)index scopeType:(unint64_t)type;
- (BOOL)hasFinishedAFullSyncForScope:(id)scope;
- (BOOL)hasScopeFetchedInitialSyncAnchor:(id)anchor;
- (BOOL)hasScopesNeedingToPullChangesFromTransport;
- (BOOL)hasScopesNeedingToPushChangesToTransport;
- (BOOL)hasScopesNeedingToPushHighPriorityChangesToTransport;
- (BOOL)hasScopesNeedingToUpdateTransport;
- (BOOL)hasScopesNeedingToUploadComputeState;
- (BOOL)hasStagedSyncAnchorForScope:(id)scope;
- (BOOL)hasStagedSyncAnchors;
- (BOOL)initializeStorage;
- (BOOL)openWithError:(id *)error;
- (BOOL)resetSyncAnchorForScope:(id)scope error:(id *)error;
- (BOOL)resetSyncStateForScope:(id)scope error:(id *)error;
- (BOOL)setAllScopesHasChangesToPullFromTransportWithError:(id *)error;
- (BOOL)setClassNameOfRecordsForInitialQuery:(id)query forScope:(id)scope error:(id *)error;
- (BOOL)setDidDropSomeRecordsForScope:(id)scope error:(id *)error;
- (BOOL)setHasUpdatedScope:(id)scope fromTransportWithError:(id *)error;
- (BOOL)setInitialDownloadDate:(id)date forScope:(id)scope error:(id *)error;
- (BOOL)setInitialSyncAnchor:(id)anchor forScope:(id)scope error:(id *)error;
- (BOOL)setPullFromTransportExpirationInterval:(double)interval scope:(id)scope error:(id *)error;
- (BOOL)setScopeType:(int64_t)type forScope:(id)scope error:(id *)error;
- (BOOL)setSyncAnchor:(id)anchor forScope:(id)scope error:(id *)error;
- (BOOL)storeActivationDate:(id)date forScope:(id)scope error:(id *)error;
- (BOOL)storeBusyState:(int64_t)state forScope:(id)scope error:(id *)error;
- (BOOL)storeDownloadTransportGroup:(id)group forScope:(id)scope error:(id *)error;
- (BOOL)storeEstimatedSize:(unint64_t)size estimatedAssetCount:(unint64_t)count forScope:(id)scope error:(id *)error;
- (BOOL)storeLastDateOfClearedPushRepository:(id)repository forScope:(id)scope error:(id *)error;
- (BOOL)storeRewindSyncAnchors:(id)anchors forScope:(id)scope error:(id *)error;
- (BOOL)storeScopeChange:(id)change forScope:(id)scope scopeChangeHasBeenUpdated:(BOOL *)updated error:(id *)error;
- (BOOL)storeScopeListSyncAnchor:(id)anchor error:(id *)error;
- (BOOL)storeSupervisorInfo:(id)info forScope:(id)scope error:(id *)error;
- (BOOL)storeSupportedFeatureVersionInLastSync:(unint64_t)sync forScope:(id)scope error:(id *)error;
- (BOOL)storeTransientSyncAnchor:(id)anchor forScope:(id)scope error:(id *)error;
- (BOOL)storeUploadTransportGroup:(id)group forScope:(id)scope error:(id *)error;
- (BOOL)updateFlags:(id)flags forScope:(id)scope error:(id *)error;
- (BOOL)upgradeScopesWithNewLibraryOptions:(unint64_t)options error:(id *)error;
- (BOOL)upgradeStorageToVersion:(int64_t)version;
- (CPLPrequeliteScopeStorage)initWithAbstractObject:(id)object;
- (Class)_transportGroupClass;
- (double)_minimalPullFromTranportExpirationInterval;
- (id)_injectionForFilter:(id)filter;
- (id)_injectionForScopesAllowingPullFromTransport;
- (id)_libraryInfoForScope:(id)scope;
- (id)_librarySateForScope:(id)scope;
- (id)_scopeWithQuery:(id)query;
- (id)_taskItemCompletionDateForScope:(id)scope task:(id)task;
- (id)_transportGroupForColumnVariable:(id)variable forScope:(id)scope;
- (id)_valueForColumnVariable:(id)variable scope:(id)scope;
- (id)addScopeWithIdentifier:(id)identifier scopeType:(int64_t)type error:(id *)error;
- (id)classNameOfRecordsForInitialQueryForScope:(id)scope;
- (id)creationDateForScope:(id)scope;
- (id)downloadTransportGroupForScope:(id)scope;
- (id)enumeratorForDeletedStagedScopes;
- (id)enumeratorForScopesIncludeInactive:(BOOL)inactive;
- (id)enumeratorForScopesNeedingToBePulledByClientWithMaximumCount:(unint64_t)count;
- (id)enumeratorForScopesNeedingToPullChangesFromTransport;
- (id)enumeratorForScopesNeedingToPushChangesToTransport;
- (id)enumeratorForScopesNeedingToPushHighPriorityChangesToTransport;
- (id)enumeratorForScopesNeedingToUpdateTransport;
- (id)enumeratorForScopesNeedingToUploadComputeState;
- (id)enumeratorForScopesNeedingUpdateFromTransport;
- (id)enumeratorForScopesWithMingling;
- (id)filterForExcludedScopeIdentifiers:(id)identifiers;
- (id)filterForIncludedScopeIdentifiers:(id)identifiers;
- (id)flagsForScope:(id)scope;
- (id)initialSyncAnchorForScope:(id)scope;
- (id)lastDateOfClearedPushRepositoryForScope:(id)scope;
- (id)primaryScope;
- (id)rewindSyncAnchorsForScope:(id)scope;
- (id)scopeChangeForScope:(id)scope;
- (id)scopeWithCloudIndex:(int64_t)index;
- (id)scopeWithIdentifier:(id)identifier;
- (id)scopeWithLocalIndex:(int64_t)index;
- (id)scopeWithStableIndex:(int64_t)index;
- (id)stagingScopeForScope:(id)scope;
- (id)supervisorInfoForScope:(id)scope;
- (id)syncAnchorForScope:(id)scope isCommitted:(BOOL *)committed;
- (id)transientSyncAnchorForScope:(id)scope;
- (id)uploadTransportGroupForScope:(id)scope;
- (id)validCloudIndexes;
- (id)validLocalIndexes;
- (int64_t)_bumpIndexWithError:(id *)error;
- (int64_t)_taskItemForScope:(id)scope task:(id)task;
- (int64_t)busyStateForScope:(id)scope;
- (unint64_t)estimatedAssetCountForScope:(id)scope;
- (unint64_t)estimatedSizeForScope:(id)scope;
- (unint64_t)supportedFeatureVersionInLastSyncForScope:(id)scope;
- (void)_cacheValue:(id)value forColumnVariable:(id)variable scope:(id)scope;
- (void)_discardCachedValuesForGroup:(id)group;
- (void)_fillScopeTypeOrder:(int64_t)order[9] withOrderOfScopeTypes:(id)types name:(id)name;
- (void)_getLocalIndexes:(id *)indexes cloudIndexes:(id *)cloudIndexes forScopeIdentifiers:(id)identifiers;
- (void)_markFirstSyncOfPrimaryAsSuccessfulWithScope:(id)scope;
- (void)_noteEndOfResetIfNecessary;
- (void)writeTransactionDidFail;
- (void)writeTransactionDidSucceed;
@end

@implementation CPLPrequeliteScopeStorage

- (id)enumeratorForScopesNeedingToUpdateTransport
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  namesInjection = [*(&self->_modifiedVariables + 4) namesInjection];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  hasSomethingTodo = [*(&self->_clientNeedsToPullTodoVar + 4) hasSomethingTodo];
  v8 = [pqlConnection cplFetch:{@"SELECT %@ FROM %@ WHERE %@", namesInjection, mainTable, hasSomethingTodo}];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001443C0;
  v11[3] = &unk_10027B218;
  v11[4] = self;
  v9 = [v8 enumerateObjects:v11];

  return v9;
}

- (BOOL)hasStagedSyncAnchors
{
  v2 = *(&self->_noteEndOfResetIfNecessary + 4);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100148180;
  v6[3] = &unk_10027B2A0;
  v6[4] = self;
  v3 = [v2 valueWithConstructor:v6];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)writeTransactionDidSucceed
{
  v3.receiver = self;
  v3.super_class = CPLPrequeliteScopeStorage;
  [(CPLPrequeliteStorage *)&v3 writeTransactionDidSucceed];
  if (BYTE4(self->_transportGroupClass) == 1)
  {
    [(CPLPrequeliteScopeStorage *)self _noteEndOfResetIfNecessary];
    BYTE4(self->_transportGroupClass) = 0;
  }

  [*(&self->_scopeListSyncAnchorVar + 4) removeAllObjects];
}

+ (BOOL)_scopeType:(int64_t)type supportsClientSyncWithOptions:(unint64_t)options
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6 = sub_10013EF70();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013EFB4;
  v8[3] = &unk_10027B018;
  v8[5] = type;
  v8[6] = options;
  v8[4] = &v9;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];

  LOBYTE(v6) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

+ (id)_supportedScopeTypesWithOptions:(unint64_t)options
{
  v4 = objc_alloc_init(NSMutableIndexSet);
  v5 = sub_10013EF70();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013F10C;
  v8[3] = &unk_10027B040;
  optionsCopy = options;
  v6 = v4;
  v9 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

- (CPLPrequeliteScopeStorage)initWithAbstractObject:(id)object
{
  v87.receiver = self;
  v87.super_class = CPLPrequeliteScopeStorage;
  v3 = [(CPLPrequeliteStorage *)&v87 initWithAbstractObject:object];
  if (v3)
  {
    v4 = +[CPLPrequeliteType integerType];
    v5 = [v3 variableWithName:@"nextIndex" defaultValue:&off_10028EF20 type:v4];
    v6 = *(v3 + 36);
    *(v3 + 36) = v5;

    v7 = +[CPLPrequeliteType dataType];
    v8 = [v3 variableWithName:@"scopeListSyncAnchor" type:v7];
    v9 = *(v3 + 44);
    *(v3 + 44) = v8;

    v10 = objc_alloc_init(_CPLPrequeliteScopeBase);
    v11 = *(v3 + 60);
    *(v3 + 60) = v10;

    v12 = +[CPLPrequeliteType integerType];
    v13 = [CPLPrequeliteVariable variableWithName:@"flags" defaultValue:&off_10028EF20 type:v12];
    v14 = *(v3 + 68);
    *(v3 + 68) = v13;

    v15 = +[CPLPrequeliteType dateType];
    v16 = [CPLPrequeliteVariable variableWithName:@"disabledDate" defaultValue:0 type:v15];
    v17 = *(v3 + 76);
    *(v3 + 76) = v16;

    v18 = +[CPLPrequeliteType dateType];
    v19 = [CPLPrequeliteVariable variableWithName:@"deleteDate" defaultValue:0 type:v18];
    v20 = *(v3 + 84);
    *(v3 + 84) = v19;

    v21 = +[CPLPrequeliteType dataType];
    v22 = [CPLPrequeliteVariable variableWithName:@"libraryInfo" defaultValue:0 type:v21];
    v23 = *(v3 + 92);
    *(v3 + 92) = v22;

    v24 = +[CPLPrequeliteType dataType];
    v25 = [CPLPrequeliteVariable variableWithName:@"scopeChange" defaultValue:0 type:v24];
    v26 = *(v3 + 100);
    *(v3 + 100) = v25;

    v27 = +[CPLPrequeliteType dateType];
    v28 = [CPLPrequeliteVariable variableWithName:@"lastLibraryInfoUpdate" defaultValue:0 type:v27];
    v29 = *(v3 + 108);
    *(v3 + 108) = v28;

    v30 = +[CPLPrequeliteType dataType];
    v31 = [CPLPrequeliteVariable variableWithName:@"transportScope" defaultValue:0 type:v30];
    v32 = *(v3 + 116);
    *(v3 + 116) = v31;

    v33 = objc_alloc_init(_CPLPrequeliteScopeSyncState);
    v34 = *(v3 + 124);
    *(v3 + 124) = v33;

    v35 = +[CPLPrequeliteType integerType];
    v36 = [CPLPrequeliteVariable variableWithName:@"estimatedSize" defaultValue:0 type:v35];
    v37 = *(v3 + 132);
    *(v3 + 132) = v36;

    v38 = +[CPLPrequeliteType integerType];
    v39 = [CPLPrequeliteVariable variableWithName:@"estimatedAssetCount" defaultValue:0 type:v38];
    v40 = *(v3 + 140);
    *(v3 + 140) = v39;

    v41 = +[CPLPrequeliteType dateType];
    v42 = [CPLPrequeliteVariable variableWithName:@"initialSyncDate" defaultValue:0 type:v41];
    v43 = *(v3 + 148);
    *(v3 + 148) = v42;

    v44 = +[CPLPrequeliteType dateType];
    v45 = [CPLPrequeliteVariable variableWithName:@"initialDownloadDate" defaultValue:0 type:v44];
    v46 = *(v3 + 156);
    *(v3 + 156) = v45;

    v47 = +[CPLPrequeliteType dateType];
    v48 = [CPLPrequeliteVariable variableWithName:@"activationDate" defaultValue:0 type:v47];
    v49 = *(v3 + 164);
    *(v3 + 164) = v48;

    v50 = +[CPLPrequeliteType dateType];
    v51 = [CPLPrequeliteVariable variableWithName:@"initialMetadataQueriesDate" defaultValue:0 type:v50];
    v52 = *(v3 + 180);
    *(v3 + 180) = v51;

    v53 = +[CPLPrequeliteType dateType];
    v54 = [CPLPrequeliteVariable variableWithName:@"initialMetadataDownloadDate" defaultValue:0 type:v53];
    v55 = *(v3 + 172);
    *(v3 + 172) = v54;

    v56 = +[CPLPrequeliteType dateType];
    v57 = [CPLPrequeliteVariable variableWithName:@"initialMingleDate" defaultValue:0 type:v56];
    v58 = *(v3 + 188);
    *(v3 + 188) = v57;

    v59 = +[CPLPrequeliteType dataType];
    v60 = [CPLPrequeliteVariable variableWithName:@"supervisorInfo" defaultValue:0 type:v59];
    v61 = *(v3 + 196);
    *(v3 + 196) = v60;

    [*(v3 + 196) setShouldNotCacheValue:1];
    v62 = +[CPLPrequeliteType stringType];
    v63 = [CPLPrequeliteVariable variableWithName:@"stagedScopeIdentifier" defaultValue:0 type:v62];
    v64 = *(v3 + 244);
    *(v3 + 244) = v63;

    v65 = [CPLPrequeliteTodoVar todoVariableWithName:@"pushToTransport"];
    v66 = *(v3 + 204);
    *(v3 + 204) = v65;

    v67 = [CPLPrequeliteTodoVar todoVariableWithName:@"pullFromTransport" defaultExpirationInterval:600.0];
    v68 = *(v3 + 212);
    *(v3 + 212) = v67;

    v69 = [CPLPrequeliteTodoVar todoVariableWithName:@"clientNeedsToPull"];
    v70 = *(v3 + 220);
    *(v3 + 220) = v69;

    v71 = [CPLPrequeliteTodoVar todoVariableWithName:@"updateTransport"];
    v72 = *(v3 + 228);
    *(v3 + 228) = v71;

    v73 = [CPLPrequeliteTodoVar todoVariableWithName:@"computeState"];
    v74 = *(v3 + 236);
    *(v3 + 236) = v73;

    v89[0] = *(v3 + 60);
    v89[1] = *(v3 + 68);
    v89[2] = *(v3 + 76);
    v89[3] = *(v3 + 84);
    v89[4] = *(v3 + 92);
    v89[5] = *(v3 + 100);
    v89[6] = *(v3 + 108);
    v89[7] = *(v3 + 116);
    v89[8] = *(v3 + 124);
    v89[9] = *(v3 + 132);
    v89[10] = *(v3 + 140);
    v89[11] = *(v3 + 148);
    v89[12] = *(v3 + 156);
    v89[13] = *(v3 + 164);
    v89[14] = *(v3 + 180);
    v89[15] = *(v3 + 172);
    v89[16] = *(v3 + 188);
    v89[17] = *(v3 + 196);
    v89[18] = *(v3 + 204);
    v89[19] = *(v3 + 212);
    v89[20] = *(v3 + 220);
    v89[21] = *(v3 + 228);
    v89[22] = *(v3 + 236);
    v89[23] = *(v3 + 244);
    v75 = [NSArray arrayWithObjects:v89 count:24];
    v76 = [CPLPrequeliteVariableGroup variableGroupWithVariablesAndGroups:v75];
    v77 = *(v3 + 252);
    *(v3 + 252) = v76;

    v88[0] = *(v3 + 68);
    v88[1] = *(v3 + 76);
    v88[2] = *(v3 + 84);
    v78 = [NSArray arrayWithObjects:v88 count:3];
    v79 = [CPLPrequeliteVariableGroup variableGroupWithVariables:v78];
    v80 = *(v3 + 260);
    *(v3 + 260) = v79;

    v81 = +[CPLPrequeliteType integerType];
    v82 = [(CPLPrequeliteVariable *)CPLPrequeliteSynthesizedVariable variableWithName:@"hasStagedSyncAnchors" type:v81];
    v83 = *(v3 + 292);
    *(v3 + 292) = v82;

    v84 = objc_alloc_init(NSMutableSet);
    v85 = *(v3 + 52);
    *(v3 + 52) = v84;
  }

  return v3;
}

- (BOOL)_scopeTypeSupportsClientSync:(int64_t)sync scopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  libraryOptions = [pqStore libraryOptions];

  v10 = [objc_opt_class() _scopeType:sync supportsClientSyncWithOptions:libraryOptions];
  if (v10 && (libraryOptions & 2) == 0)
  {
    if (sync > 9)
    {
      goto LABEL_12;
    }

    if (((1 << sync) & 0x30) != 0)
    {
      abstractObject = [(CPLPrequeliteScopeStorage *)self abstractObject];
      mainScopeIdentifier = [abstractObject mainScopeIdentifier];
      v13 = CPLSharingScopePrefixForScopeWithIdentifier();
      goto LABEL_8;
    }

    if (((1 << sync) & 0x180) != 0)
    {
      abstractObject = [(CPLPrequeliteScopeStorage *)self abstractObject];
      mainScopeIdentifier = [abstractObject mainScopeIdentifier];
      v13 = CPLCollectionSharePrefixForScopeWithIdentifier();
LABEL_8:
      v14 = v13;
      LOBYTE(v10) = [identifierCopy hasPrefix:v13];

LABEL_9:
      goto LABEL_10;
    }

    if (((1 << sync) & 0x240) == 0)
    {
LABEL_12:
      if (sync == 1)
      {
        abstractObject = [(CPLPrequeliteScopeStorage *)self abstractObject];
        mainScopeIdentifier = [abstractObject mainScopeIdentifier];
        LOBYTE(v10) = [identifierCopy isEqualToString:mainScopeIdentifier];
        goto LABEL_9;
      }

      if (sync)
      {
        LOBYTE(v10) = 1;
        goto LABEL_10;
      }
    }

    sub_1001B70E0(sync, a2, self);
  }

LABEL_10:

  return v10;
}

- (double)_minimalPullFromTranportExpirationInterval
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  v3 = [pqStore libraryOptions] == 0;

  return dbl_10024B8E0[v3];
}

- (BOOL)_createInitialPrimarySyncScope
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  libraryCreationDate = [pqStore libraryCreationDate];
  v5 = libraryCreationDate;
  if (libraryCreationDate)
  {
    v6 = libraryCreationDate;
  }

  else
  {
    v6 = +[NSDate date];
  }

  v7 = v6;

  v8 = [CPLEngineScope alloc];
  mainScopeIdentifier = [(CPLPrequeliteStorage *)self mainScopeIdentifier];
  v10 = [v8 initWithScopeIdentifier:mainScopeIdentifier scopeType:1];

  [v10 setCreationDate:v7];
  [v10 setLocalIndex:1];
  [v10 setCloudIndex:2];
  [v10 setStableIndex:3];
  if ([(CPLPrequeliteScopeStorage *)self _addScope:v10 error:0])
  {
    v11 = [(CPLPrequeliteStorage *)self setValue:&off_10028EF38 forVariable:*(&self->super._shouldUpgradeSchema + 1) error:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)initializeStorage
{
  v10.receiver = self;
  v10.super_class = CPLPrequeliteScopeStorage;
  if (-[CPLPrequeliteStorage initializeStorage](&v10, "initializeStorage") && -[CPLPrequeliteStorage createMainTableWithColumnVariables:error:](self, "createMainTableWithColumnVariables:error:", *(&self->_stagedScopeIdentifierVar + 4), 0) && -[CPLPrequeliteStorage createVariable:defaultValue:error:](self, "createVariable:defaultValue:error:", *(&self->super._shouldUpgradeSchema + 1), &off_10028EF20, 0) && -[CPLPrequeliteStorage createVariable:defaultValue:error:](self, "createVariable:defaultValue:error:", *(&self->_nextIndexVar + 4), 0, 0) && ([*(&self->_modifiedVariables + 4) scopeIdentifierVar], v3 = objc_claimAutoreleasedReturnValue(), v4 = -[CPLPrequeliteStorage createIndexOnColumnVariable:error:](self, "createIndexOnColumnVariable:error:", v3, 0), v3, v4))
  {
    v5 = [(CPLPrequeliteStorage *)self createIndexOnColumnVariable:*(&self->_uploadComputeStateTodoVar + 4) error:0];
  }

  else
  {
    v5 = 0;
  }

  abstractObject = [(CPLPrequeliteScopeStorage *)self abstractObject];
  engineStore = [abstractObject engineStore];
  libraryOptions = [engineStore libraryOptions];

  if ((libraryOptions & 1) == 0)
  {
    sub_1001B7184(self, &v11);
    return v11;
  }

  return v5;
}

- (BOOL)_transferValueFromVariable:(id)variable type:(id)type ofStorage:(id)storage toColumnVariable:(id)columnVariable transformer:(id)transformer
{
  variableCopy = variable;
  typeCopy = type;
  storageCopy = storage;
  columnVariableCopy = columnVariable;
  transformerCopy = transformer;
  v17 = objc_autoreleasePoolPush();
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  shouldUpgradeSchema = [(CPLPrequeliteStorage *)self shouldUpgradeSchema];
  pqlConnection = [pqStore pqlConnection];
  if (!shouldUpgradeSchema || [(CPLPrequeliteStorage *)self addColumnVariable:columnVariableCopy error:0])
  {
    if (storageCopy)
    {
      v43 = [storageCopy variableWithName:variableCopy type:typeCopy];
      [storageCopy valueForVariable:?];
    }

    else
    {
      v43 = [CPLPrequeliteVariable variableWithName:variableCopy type:typeCopy];
      [pqStore valueForGlobalVariable:?];
    }
    v21 = ;
    v44 = v21;
    if (transformerCopy)
    {
      v22 = transformerCopy[2](transformerCopy, v21);
    }

    else
    {
      v22 = v21;
    }

    v23 = v22;
    if (v22)
    {
      v42 = storageCopy;
      v40 = pqStore;
      v41 = v17;
      v24 = typeCopy;
      v25 = variableCopy;
      [(CPLPrequeliteStorage *)self mainTable];
      v27 = v26 = pqlConnection;
      scopeIdentifierVar = [*(&self->_modifiedVariables + 4) scopeIdentifierVar];
      mainScopeIdentifier = [(CPLPrequeliteStorage *)self mainScopeIdentifier];
      v30 = [v26 cplExecute:{@"UPDATE %@ SET %@ = %@ WHERE %@ = %@", v27, columnVariableCopy, v23, scopeIdentifierVar, mainScopeIdentifier}];

      if (v30)
      {
        typeCopy = v24;
        pqlConnection = v26;
        if ([v26 changes] < 1)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v31 = sub_10013EE4C();
            variableCopy = v25;
            pqStore = v40;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              variableName = [v43 variableName];
              *buf = 138412546;
              v46 = variableName;
              v47 = 2112;
              v48 = v44;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Discarded value of global %@ (%@) - no changes were applied", buf, 0x16u);

              pqlConnection = v26;
            }

            v17 = v41;
            goto LABEL_31;
          }
        }

        else if ((_CPLSilentLogging & 1) == 0)
        {
          v31 = sub_10013EE4C();
          variableCopy = v25;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            variableName2 = [v43 variableName];
            variableName3 = [columnVariableCopy variableName];
            *buf = 138413058;
            v46 = variableName2;
            v47 = 2112;
            v48 = v44;
            v49 = 2112;
            v50 = v23;
            v51 = 2112;
            v52 = variableName3;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Transferred value of global %@ (%@) to column %@ (%@) in scope storage", buf, 0x2Au);

            typeCopy = v24;
            pqlConnection = v26;
          }

          pqStore = v40;
          v17 = v41;
          goto LABEL_31;
        }

        v37 = 1;
        variableCopy = v25;
        v17 = v41;
        pqStore = v40;
      }

      else
      {
        v37 = 0;
        variableCopy = v25;
        typeCopy = v24;
        v17 = v41;
        pqStore = v40;
        pqlConnection = v26;
      }

      storageCopy = v42;
LABEL_34:

      goto LABEL_35;
    }

    if (v44)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v31 = sub_10013EE4C();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          [v43 variableName];
          v42 = storageCopy;
          v35 = v34 = pqlConnection;
          *buf = 138412546;
          v46 = v35;
          v47 = 2112;
          v48 = v44;
          v36 = "Discarded value of global %@ (%@)";
LABEL_25:
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v36, buf, 0x16u);

          pqlConnection = v34;
LABEL_31:
          storageCopy = v42;
          goto LABEL_32;
        }

        goto LABEL_32;
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v31 = sub_10013EE4C();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        [v43 variableName];
        v42 = storageCopy;
        v35 = v34 = pqlConnection;
        *buf = 138412546;
        v46 = v35;
        v47 = 2112;
        v48 = 0;
        v36 = "No value for global %@ (%@)";
        goto LABEL_25;
      }

LABEL_32:
    }

    v37 = 1;
    goto LABEL_34;
  }

  v37 = 0;
LABEL_35:

  objc_autoreleasePoolPop(v17);
  return v37;
}

- (BOOL)upgradeStorageToVersion:(int64_t)version
{
  LOBYTE(v4) = 1;
  if (version > 63)
  {
    if (version <= 78)
    {
      if (version > 70)
      {
        if (version == 71)
        {
          if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
          {
            return v4;
          }

          rewindSyncAnchorsVar = [*(&self->_transportScopeVar + 4) rewindSyncAnchorsVar];
        }

        else
        {
          if (version != 77 || ![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
          {
            return v4;
          }

          rewindSyncAnchorsVar = [*(&self->_transportScopeVar + 4) busyStateVar];
        }

        goto LABEL_111;
      }

      if (version != 64)
      {
        if (version != 70 || ![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
        {
          return v4;
        }

        if ([(CPLPrequeliteStorage *)self addColumnVariable:*(&self->_uploadComputeStateTodoVar + 4) error:0])
        {
          v54 = *(&self->_uploadComputeStateTodoVar + 4);

          return [(CPLPrequeliteStorage *)self createIndexOnColumnVariable:v54 error:0];
        }

        goto LABEL_117;
      }

      if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        return v4;
      }

      v6 = 100;
    }

    else if (version <= 87)
    {
      if (version != 79)
      {
        if (version == 85)
        {
          abstractObject = [(CPLPrequeliteScopeStorage *)self abstractObject];
          engineStore = [abstractObject engineStore];
          engineLibrary = [engineStore engineLibrary];

          [engineLibrary setUpgradeSuggestedToAccessAllPhotos:0];
        }

        return v4;
      }

      if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        return v4;
      }

      v6 = 196;
    }

    else
    {
      if (version == 88)
      {
        if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
        {
          return v4;
        }

        v97 = *(&self->_updateTransportTodoVar + 4);

        return [(CPLPrequeliteStorage *)self addColumnVariableGroup:v97 error:0];
      }

      if (version == 90)
      {
        if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
        {
          return v4;
        }

        v6 = 156;
      }

      else
      {
        if (version != 92 || ![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
        {
          return v4;
        }

        if (![(CPLPrequeliteStorage *)self addColumnVariable:*(&self->_initialDownloadDateVar + 4) error:0]|| ![(CPLPrequeliteStorage *)self addColumnVariable:*(&self->_initialMetadataDownloadDateVar + 4) error:0]|| ![(CPLPrequeliteStorage *)self addColumnVariable:*(&self->_activationDateVar + 4) error:0])
        {
          goto LABEL_117;
        }

        v6 = 188;
      }
    }

    v100 = *&self->super.CPLPlatformObject_opaque[v6];

    return [(CPLPrequeliteStorage *)self addColumnVariable:v100 error:0];
  }

  if (version > 45)
  {
    if (version > 53)
    {
      if (version == 54)
      {
        if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
        {
          return v4;
        }

        return [(CPLPrequeliteScopeStorage *)self bumpPullFromTransportExpirationIntervalWithError:0];
      }

      if (version != 60)
      {
        if (version != 62 || ![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
        {
          return v4;
        }

        rewindSyncAnchorsVar = [*(&self->_transportScopeVar + 4) lastClearedPushVar];
LABEL_111:
        v90 = rewindSyncAnchorsVar;
        v91 = [(CPLPrequeliteStorage *)self addColumnVariable:rewindSyncAnchorsVar error:0];

        return v91;
      }

      if (!-[CPLPrequeliteStorage shouldUpgradeSchema](self, "shouldUpgradeSchema") || ([*(&self->_transportScopeVar + 4) hasFetchedInitialSyncAnchorVar], v92 = objc_claimAutoreleasedReturnValue(), v93 = -[CPLPrequeliteStorage addColumnVariable:error:](self, "addColumnVariable:error:", v92, 0), v92, v93))
      {
        pqStore = [(CPLPrequeliteStorage *)self pqStore];
        pqlConnection = [pqStore pqlConnection];

        mainTable = [(CPLPrequeliteStorage *)self mainTable];
        hasFetchedInitialSyncAnchorVar = [*(&self->_transportScopeVar + 4) hasFetchedInitialSyncAnchorVar];
        v4 = [pqlConnection cplExecute:{@"UPDATE %@ SET %@ = %d", mainTable, hasFetchedInitialSyncAnchorVar, 1}];

        if (v4 && [pqlConnection changes])
        {
          sub_1001B7208();
        }

        goto LABEL_158;
      }

LABEL_117:
      LOBYTE(v4) = 0;
      return v4;
    }

    if (version != 46)
    {
      if (version != 47 || ![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        return v4;
      }

      v83 = *(&self->_nextIndexVar + 4);

      return [(CPLPrequeliteStorage *)self createVariable:v83 defaultValue:0 error:0];
    }

    if ([(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      if (![(CPLPrequeliteStorage *)self addColumnVariableGroup:*(&self->_supervisorInfoVar + 4) error:0]|| ![(CPLPrequeliteStorage *)self addColumnVariableGroup:*(&self->_pushToTransportTodoVar + 4) error:0])
      {
        goto LABEL_140;
      }

      scopeTypeVar = [*(&self->_modifiedVariables + 4) scopeTypeVar];
      v99 = [(CPLPrequeliteStorage *)self addColumnVariable:scopeTypeVar error:0];

      if (!v99)
      {
        goto LABEL_141;
      }

      if ([(CPLPrequeliteStorage *)self addColumnVariableGroup:*(&self->_pullFromTransportTodoVar + 4) error:0])
      {
        v99 = [(CPLPrequeliteStorage *)self addColumnVariableGroup:*(&self->_clientNeedsToPullTodoVar + 4) error:0];
      }

      else
      {
LABEL_140:
        v99 = 0;
      }
    }

    else
    {
      v99 = 1;
    }

LABEL_141:
    pqStore2 = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore2 pqlConnection];

    if (v99)
    {
      mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
      setHasSomethingTodo = [*(&self->_supervisorInfoVar + 4) setHasSomethingTodo];
      v4 = [pqlConnection cplExecute:{@"UPDATE %@ SET %@", mainTable2, setHasSomethingTodo}];

      if (!v4)
      {
LABEL_158:

        return v4;
      }

      mainTable3 = [(CPLPrequeliteStorage *)self mainTable];
      scopeTypeVar2 = [*(&self->_modifiedVariables + 4) scopeTypeVar];
      v106 = [_CPLPrequeliteScopeIsEqual alloc];
      mainScopeIdentifier = [(CPLPrequeliteStorage *)self mainScopeIdentifier];
      v108 = [(_CPLPrequeliteScopeIsEqual *)v106 initWithIdentifier:mainScopeIdentifier];
      v109 = [pqlConnection cplExecute:{@"UPDATE %@ SET %@ = %ld WHERE %@", mainTable3, scopeTypeVar2, 1, v108}];

      if (v109)
      {
        mainTable4 = [(CPLPrequeliteStorage *)self mainTable];
        setHasSomethingTodo2 = [*(&self->_pullFromTransportTodoVar + 4) setHasSomethingTodo];
        v89 = [pqlConnection cplExecute:{@"UPDATE %@ SET %@ WHERE %@ & %ld = %ld", mainTable4, setHasSomethingTodo2, *(&self->_base + 4), 4, 4}];
LABEL_145:
        LOBYTE(v4) = v89;
LABEL_156:

        goto LABEL_157;
      }
    }

    LOBYTE(v4) = 0;
    goto LABEL_158;
  }

  if (version <= 41)
  {
    if (version == 40)
    {

      return [(CPLPrequeliteStorage *)self createStorage];
    }

    if (version != 41)
    {
      return v4;
    }

    pqlConnection = [(CPLPrequeliteStorage *)self pqStore];
    mainTable4 = [pqlConnection pqlConnection];
    setHasSomethingTodo2 = [pqlConnection abstractObject];
    v10 = +[CPLPrequeliteType dataType];
    transientPullRepository = [pqlConnection transientPullRepository];
    transientSyncAnchorVar = [*(&self->_transportScopeVar + 4) transientSyncAnchorVar];
    v13 = [(CPLPrequeliteScopeStorage *)self _transferValueFromVariable:@"syncAnchor" type:v10 ofStorage:transientPullRepository toColumnVariable:transientSyncAnchorVar transformer:&stru_10027B080];

    if (!v13)
    {
      goto LABEL_155;
    }

    v14 = +[CPLPrequeliteType dataType];
    cloudCache = [pqlConnection cloudCache];
    syncAnchorVar = [*(&self->_transportScopeVar + 4) syncAnchorVar];
    v17 = [(CPLPrequeliteScopeStorage *)self _transferValueFromVariable:@"syncAnchor" type:v14 ofStorage:cloudCache toColumnVariable:syncAnchorVar transformer:&stru_10027B0A0];

    if (!v17)
    {
      goto LABEL_155;
    }

    v18 = +[CPLPrequeliteType dataType];
    cloudCache2 = [pqlConnection cloudCache];
    stagedSyncAnchorVar = [*(&self->_transportScopeVar + 4) stagedSyncAnchorVar];
    v21 = [(CPLPrequeliteScopeStorage *)self _transferValueFromVariable:@"stagedSyncAnchor" type:v18 ofStorage:cloudCache2 toColumnVariable:stagedSyncAnchorVar transformer:&stru_10027B0C0];

    if (!v21)
    {
      goto LABEL_155;
    }

    v22 = +[CPLPrequeliteType dataType];
    cloudCache3 = [pqlConnection cloudCache];
    initialSyncAnchorVar = [*(&self->_transportScopeVar + 4) initialSyncAnchorVar];
    v25 = [(CPLPrequeliteScopeStorage *)self _transferValueFromVariable:@"initialSyncAnchor" type:v22 ofStorage:cloudCache3 toColumnVariable:initialSyncAnchorVar transformer:&stru_10027B0E0];

    if (!v25)
    {
      goto LABEL_155;
    }

    v26 = +[CPLPrequeliteType stringType];
    cloudCache4 = [pqlConnection cloudCache];
    classForInitialQueryVar = [*(&self->_transportScopeVar + 4) classForInitialQueryVar];
    v29 = [(CPLPrequeliteScopeStorage *)self _transferValueFromVariable:@"classForInitialQuery" type:v26 ofStorage:cloudCache4 toColumnVariable:classForInitialQueryVar transformer:&stru_10027B100];

    if (!v29)
    {
      goto LABEL_155;
    }

    v30 = +[CPLPrequeliteType dataType];
    cloudCache5 = [pqlConnection cloudCache];
    uploadTransportGroupVar = [*(&self->_transportScopeVar + 4) uploadTransportGroupVar];
    v33 = [(CPLPrequeliteScopeStorage *)self _transferValueFromVariable:@"uploadTransportGroup" type:v30 ofStorage:cloudCache5 toColumnVariable:uploadTransportGroupVar transformer:&stru_10027B120];

    if (!v33)
    {
      goto LABEL_155;
    }

    v34 = +[CPLPrequeliteType dataType];
    cloudCache6 = [pqlConnection cloudCache];
    downloadTransportGroupVar = [*(&self->_transportScopeVar + 4) downloadTransportGroupVar];
    v37 = [(CPLPrequeliteScopeStorage *)self _transferValueFromVariable:@"downloadTransportGroup" type:v34 ofStorage:cloudCache6 toColumnVariable:downloadTransportGroupVar transformer:&stru_10027B140];

    if (!v37)
    {
      goto LABEL_155;
    }

    v38 = +[CPLPrequeliteType integerType];
    clientCache = [pqlConnection clientCache];
    v40 = [(CPLPrequeliteScopeStorage *)self _transferValueFromVariable:@"estimatedLocalLibrarySize" type:v38 ofStorage:clientCache toColumnVariable:*(&self->_syncState + 4) transformer:&stru_10027B160];

    if (!v40)
    {
      goto LABEL_155;
    }

    v41 = +[CPLPrequeliteType integerType];
    clientCache2 = [pqlConnection clientCache];
    v43 = [(CPLPrequeliteScopeStorage *)self _transferValueFromVariable:@"estimatedLocalLibraryAssetCount" type:v41 ofStorage:clientCache2 toColumnVariable:*(&self->_estimatedSizeVar + 4) transformer:&stru_10027B180];

    if (!v43)
    {
      goto LABEL_155;
    }

    if ([(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      mainTable5 = [(CPLPrequeliteStorage *)self mainTable];
      v45 = *(&self->_estimatedAssetCountVar + 4);
      columnDefinition = [v45 columnDefinition];
      LODWORD(v45) = [mainTable4 cplExecute:{@"ALTER TABLE %@ ADD COLUMN %@ %@ DEFAULT NULL", mainTable5, v45, columnDefinition}];

      if (!v45)
      {
        goto LABEL_155;
      }
    }

    engineLibrary2 = [(CPLPrequeliteStorage *)self engineLibrary];
    initialSyncDate = [engineLibrary2 initialSyncDate];

    if (initialSyncDate)
    {
      mainTable6 = [(CPLPrequeliteStorage *)self mainTable];
      obja = *(&self->_estimatedAssetCountVar + 4);
      [initialSyncDate timeIntervalSinceReferenceDate];
      v50 = v49;
      scopeIdentifierVar = [*(&self->_modifiedVariables + 4) scopeIdentifierVar];
      mainScopeIdentifier2 = [(CPLPrequeliteStorage *)self mainScopeIdentifier];
      v53 = [mainTable4 cplExecute:{@"UPDATE %@ SET %@ = %f WHERE %@ = %@", mainTable6, obja, v50, scopeIdentifierVar, mainScopeIdentifier2}];

      if (!v53)
      {

        goto LABEL_155;
      }

      sub_1001B72A8(mainTable4, initialSyncDate);
    }

    v110 = +[CPLPrequeliteType stringType];
    v111 = *(&self->_lastLibraryInfoUpdateVar + 4);
    v124[0] = _NSConcreteStackBlock;
    v124[1] = 3221225472;
    v124[2] = sub_10014181C;
    v124[3] = &unk_10027B1A8;
    v125 = setHasSomethingTodo2;
    LODWORD(v111) = [(CPLPrequeliteScopeStorage *)self _transferValueFromVariable:@"zoneName" type:v110 ofStorage:0 toColumnVariable:v111 transformer:v124];

    if (v111)
    {
      v112 = +[CPLPrequeliteType integerType];
      featureVersionVar = [*(&self->_transportScopeVar + 4) featureVersionVar];
      LOBYTE(v4) = [(CPLPrequeliteScopeStorage *)self _transferValueFromVariable:@"featureVersion" type:v112 ofStorage:0 toColumnVariable:featureVersionVar transformer:&stru_10027B1C8];

      goto LABEL_156;
    }

LABEL_155:
    LOBYTE(v4) = 0;
    goto LABEL_156;
  }

  if (version == 42)
  {
    if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      return v4;
    }

    v87 = +[CPLPrequeliteType integerType];
    pqlConnection = [CPLPrequeliteVariable variableWithName:@"nextIndex" defaultValue:&off_10028EF20 type:v87];

    pqStore3 = [(CPLPrequeliteStorage *)self pqStore];
    mainTable4 = [pqStore3 valueForGlobalVariable:pqlConnection];

    if (![(CPLPrequeliteStorage *)self createVariable:*(&self->super._shouldUpgradeSchema + 1) defaultValue:mainTable4 error:0])
    {
      LOBYTE(v4) = 0;
LABEL_157:

      goto LABEL_158;
    }

    setHasSomethingTodo2 = [*(&self->_modifiedVariables + 4) scopeIdentifierVar];
    v89 = [(CPLPrequeliteStorage *)self createIndexOnColumnVariable:setHasSomethingTodo2 error:0];
    goto LABEL_145;
  }

  if (version != 43)
  {
    return v4;
  }

  if ([(CPLPrequeliteStorage *)self shouldUpgradeSchema])
  {
    if (![(CPLPrequeliteStorage *)self addColumnVariable:*(&self->_base + 4) error:0])
    {
      goto LABEL_117;
    }

    if (![(CPLPrequeliteStorage *)self addColumnVariable:*(&self->_flagsVar + 4) error:0])
    {
      goto LABEL_117;
    }

    if (![(CPLPrequeliteStorage *)self addColumnVariable:*(&self->_disabledDateVar + 4) error:0])
    {
      goto LABEL_117;
    }

    if (![(CPLPrequeliteStorage *)self addColumnVariable:*(&self->_deleteDateVar + 4) error:0])
    {
      goto LABEL_117;
    }

    if (![(CPLPrequeliteStorage *)self addColumnVariable:*(&self->_scopeChangeVar + 4) error:0])
    {
      goto LABEL_117;
    }

    droppedSomeRecordsVar = [*(&self->_transportScopeVar + 4) droppedSomeRecordsVar];
    v57 = [(CPLPrequeliteStorage *)self addColumnVariable:droppedSomeRecordsVar error:0];

    if (!v57)
    {
      goto LABEL_117;
    }
  }

  abstractObject2 = [(CPLPrequeliteScopeStorage *)self abstractObject];
  engineStore2 = [abstractObject2 engineStore];
  engineLibrary3 = [engineStore2 engineLibrary];

  v117 = engineLibrary3;
  transport = [engineLibrary3 transport];
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  obj = [(CPLPrequeliteScopeStorage *)self enumeratorForScopesIncludeInactive:0];
  v61 = [obj countByEnumeratingWithState:&v120 objects:v130 count:16];
  if (!v61)
  {
    goto LABEL_151;
  }

  v62 = v61;
  v63 = *v121;
  while (2)
  {
    v64 = 0;
    v115 = v62;
    do
    {
      if (*v121 != v63)
      {
        objc_enumerationMutation(obj);
      }

      v65 = *(*(&v120 + 1) + 8 * v64);
      scopeIdentifier = [v65 scopeIdentifier];
      v67 = [(CPLPrequeliteScopeStorage *)self flagsForScope:v65];
      mainScopeIdentifier3 = [(CPLPrequeliteStorage *)self mainScopeIdentifier];
      v69 = [scopeIdentifier isEqualToString:mainScopeIdentifier3];

      if (!v69)
      {
        exitDeleteTime = [(CPLPrequeliteScopeStorage *)self transportScopeForScope:v65];
        if (exitDeleteTime)
        {
          [transport upgradeFlags:v67 fromTransportScope:exitDeleteTime];
        }

        goto LABEL_76;
      }

      isExceedingQuota = [v117 isExceedingQuota];
      iCloudLibraryHasBeenWiped = [v117 iCloudLibraryHasBeenWiped];
      exitDeleteTime = [v117 exitDeleteTime];
      if (iCloudLibraryHasBeenWiped)
      {
        [v67 setValue:1 forFlag:4];
      }

      v73 = v63;
      if (isExceedingQuota)
      {
        [v67 setValue:1 forFlag:2];
      }

      if (exitDeleteTime)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v74 = sub_10013EE4C();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            scopeIdentifier2 = [v65 scopeIdentifier];
            v76 = [CPLDateFormatter stringFromDateAgo:exitDeleteTime now:0];
            *buf = 138412546;
            v127 = scopeIdentifier2;
            v128 = 2112;
            v129 = v76;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Setting delete date for %@ to %@", buf, 0x16u);
          }
        }

        [v67 setValue:1 forFlag:8];
        if (!-[CPLPrequeliteScopeStorage setDeleteDate:forScope:error:](self, "setDeleteDate:forScope:error:", exitDeleteTime, v65, 0) || ([exitDeleteTime dateByAddingTimeInterval:-2592000.0], v77 = objc_claimAutoreleasedReturnValue(), v78 = -[CPLPrequeliteScopeStorage setDisabledDate:forScope:error:](self, "setDisabledDate:forScope:error:", v77, v65, 0), v77, !v78))
        {

LABEL_149:
LABEL_150:
          LOBYTE(v4) = 0;
          goto LABEL_151;
        }
      }

      if (([v67 valueForFlag:12] & 1) == 0)
      {
        v63 = v73;
        v62 = v115;
LABEL_76:

        goto LABEL_77;
      }

      v79 = [(CPLPrequeliteScopeStorage *)self setDidDropSomeRecordsForScope:v65 error:0];

      v63 = v73;
      v62 = v115;
      if ((v79 & 1) == 0)
      {
        goto LABEL_149;
      }

LABEL_77:
      if ([v67 updatedFlagsMask])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v80 = sub_10013EE4C();
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
          {
            scopeIdentifier3 = [v65 scopeIdentifier];
            *buf = 138412546;
            v127 = scopeIdentifier3;
            v128 = 2112;
            v129 = v67;
            _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "Upgrading flags for %@ with %@", buf, 0x16u);
          }
        }

        v82 = [(CPLPrequeliteScopeStorage *)self updateFlags:v67 forScope:v65 error:0];

        if (!v82)
        {
          goto LABEL_150;
        }
      }

      else
      {
      }

      v64 = v64 + 1;
    }

    while (v62 != v64);
    v62 = [obj countByEnumeratingWithState:&v120 objects:v130 count:16];
    if (v62)
    {
      continue;
    }

    break;
  }

  LOBYTE(v4) = 1;
LABEL_151:

  return v4;
}

- (BOOL)upgradeScopesWithNewLibraryOptions:(unint64_t)options error:(id *)error
{
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v4 = 1;
  v44 = 1;
  if (options)
  {
    optionsCopy = options;
    v8 = [objc_opt_class() _supportedScopeTypesWithOptions:options];
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    [*(&self->_base + 4) discardCachedValue];
    v39 = 0;
    v40[0] = &v39;
    v40[1] = 0x2020000000;
    v40[2] = 0;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100141D0C;
    v34[3] = &unk_10027B1F0;
    v37 = &v41;
    v11 = pqlConnection;
    v35 = v11;
    selfCopy = self;
    v38 = &v39;
    [v8 enumerateIndexesUsingBlock:v34];
    if (v42[3])
    {
      if (*(v40[0] + 24) >= 1)
      {
        sub_1001B73A8(v40);
      }
    }

    else if (error)
    {
      *error = [v11 lastCPLError];
    }

    v12 = *(v42 + 24);
    if (v12 == 1)
    {
      v12 = [(CPLPrequeliteScopeStorage *)self bumpPullFromTransportExpirationIntervalWithError:error];
      *(v42 + 24) = v12;
    }

    if ((optionsCopy & 0x400) != 0 && v12)
    {
      pqStore2 = [(CPLPrequeliteStorage *)self pqStore];
      pqlConnection2 = [pqStore2 pqlConnection];

      namesInjection = [*(&self->_modifiedVariables + 4) namesInjection];
      mainTable = [(CPLPrequeliteStorage *)self mainTable];
      v17 = [pqlConnection2 cplFetch:{@"SELECT %@ FROM %@ WHERE (%@ & %ld) = %ld", namesInjection, mainTable, *(&self->_base + 4), 65552, 65552}];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100141DF8;
      v33[3] = &unk_10027B218;
      v33[4] = self;
      v18 = [v17 enumerateObjects:v33];

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v29 objects:v45 count:16];
      v28 = v8;
      v21 = 0;
      if (v20)
      {
        v22 = *v30;
        while (2)
        {
          v23 = pqlConnection2;
          v24 = 0;
          v25 = v21 + 1;
          v21 += v20;
          do
          {
            if (*v30 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v26 = [(CPLPrequeliteScopeStorage *)self setScopeNeedsUpdateFromTransport:*(*(&v29 + 1) + 8 * v24) error:error];
            *(v42 + 24) = v26;
            if ((v26 & 1) == 0)
            {
              pqlConnection2 = v23;
              goto LABEL_21;
            }

            v24 = v24 + 1;
            ++v25;
          }

          while (v20 != v24);
          v20 = [v19 countByEnumeratingWithState:&v29 objects:v45 count:16];
          pqlConnection2 = v23;
          if (v20)
          {
            continue;
          }

          break;
        }
      }

LABEL_21:

      v8 = v28;
      if (*(v42 + 24) == 1 && (_CPLSilentLogging & 1) == 0)
      {
        sub_1001B7458();
      }
    }

    _Block_object_dispose(&v39, 8);
    v4 = *(v42 + 24);
  }

  _Block_object_dispose(&v41, 8);
  return v4 & 1;
}

- (BOOL)openWithError:(id *)error
{
  v8.receiver = self;
  v8.super_class = CPLPrequeliteScopeStorage;
  v4 = [(CPLPrequeliteStorage *)&v8 openWithError:error];
  if (v4)
  {
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    [pqlConnection cplRegisterDeterministicFunction:@"scopeTypeOrder" nArgs:2 handler:&stru_10027B258];
    BYTE4(self->_transportGroupClass) = 1;
  }

  return v4;
}

- (void)_fillScopeTypeOrder:(int64_t)order[9] withOrderOfScopeTypes:(id)types name:(id)name
{
  typesCopy = types;
  nameCopy = name;
  if ([typesCopy count] != 9)
  {
    sub_1001B74EC(a2, self, nameCopy);
  }

  for (i = 0; i != 9; ++i)
  {
    v11 = [typesCopy objectAtIndexedSubscript:i];
    integerValue = [v11 integerValue];

    order[integerValue] = i;
  }
}

- (BOOL)_setScope:(id)scope hasTaskTodo:(id)todo error:(id *)error
{
  todoCopy = todo;
  scopeCopy = scope;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  setHasSomethingTodo = [todoCopy setHasSomethingTodo];

  v14 = [_CPLPrequeliteScopeIsEqual alloc];
  scopeIdentifier = [scopeCopy scopeIdentifier];

  v16 = [(_CPLPrequeliteScopeIsEqual *)v14 initWithIdentifier:scopeIdentifier];
  v17 = [pqlConnection cplExecute:{@"UPDATE %@ SET %@ WHERE %@", mainTable, setHasSomethingTodo, v16}];

  if (error && (v17 & 1) == 0)
  {
    *error = [pqlConnection lastCPLError];
  }

  return v17;
}

- (int64_t)_taskItemForScope:(id)scope task:(id)task
{
  taskCopy = task;
  scopeCopy = scope;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  v10 = objc_opt_class();
  targetGenerationVar = [taskCopy targetGenerationVar];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  localIndexVar = [*(&self->_modifiedVariables + 4) localIndexVar];
  localIndex = [scopeCopy localIndex];

  v15 = [pqlConnection cplFetchObjectOfClass:v10 sql:{@"SELECT %@ FROM %@ WHERE %@ = %ld", targetGenerationVar, mainTable, localIndexVar, localIndex}];
  integerValue = [v15 integerValue];

  return integerValue;
}

- (id)_taskItemCompletionDateForScope:(id)scope task:(id)task
{
  scopeCopy = scope;
  taskCopy = task;
  lastCompletionDateVar = [taskCopy lastCompletionDateVar];

  if (lastCompletionDateVar)
  {
    lastCompletionDateVar2 = [taskCopy lastCompletionDateVar];
    v10 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:lastCompletionDateVar2 scope:scopeCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_setScope:(id)scope hasCompletedTaskItem:(int64_t)item task:(id)task error:(id *)error
{
  taskCopy = task;
  scopeCopy = scope;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v15 = [taskCopy setHasCompletedGeneration:item];

  localIndexVar = [*(&self->_modifiedVariables + 4) localIndexVar];
  localIndex = [scopeCopy localIndex];

  v18 = [pqlConnection cplExecute:{@"UPDATE %@ SET %@ WHERE %@ = %ld", mainTable, v15, localIndexVar, localIndex}];
  if (error && (v18 & 1) == 0)
  {
    *error = [pqlConnection lastCPLError];
  }

  return v18;
}

- (id)enumeratorForScopesIncludeInactive:(BOOL)inactive
{
  inactiveCopy = inactive;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  namesInjection = [*(&self->_modifiedVariables + 4) namesInjection];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v9 = mainTable;
  if (inactiveCopy)
  {
    v10 = [pqlConnection cplFetch:{@"SELECT %@ FROM %@", namesInjection, mainTable}];
    v11 = v10;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10014261C;
    v16[3] = &unk_10027B218;
    v16[4] = self;
    v12 = v16;
  }

  else
  {
    v10 = [pqlConnection cplFetch:{@"SELECT %@ FROM %@ WHERE (%@ & %ld) = 0", namesInjection, mainTable, *(&self->_base + 4), 16}];
    v11 = v10;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001426BC;
    v15[3] = &unk_10027B218;
    v15[4] = self;
    v12 = v15;
  }

  v13 = [v10 enumerateObjects:v12];

  return v13;
}

- (id)enumeratorForScopesNeedingUpdateFromTransport
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  v4 = +[NSDate date];
  v5 = [*(&self->_scopeChangeVar + 4) bindableValueForValue:v4];
  v6 = *(&self->_scopeChangeVar + 4);
  v7 = [v4 dateByAddingTimeInterval:-86400.0];
  v8 = [v6 bindableValueForValue:v7];

  namesInjection = [*(&self->_modifiedVariables + 4) namesInjection];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v11 = *(&self->_base + 4);
  v12 = *(&self->_lastLibraryInfoUpdateVar + 4);
  v13 = *(&self->_scopeChangeVar + 4);
  busyStateVar = [*(&self->_transportScopeVar + 4) busyStateVar];
  v15 = [pqlConnection cplFetch:{@"SELECT %@ FROM %@ WHERE ((%@ & %ld) = 0) AND ((%@ IS NULL) OR (%@ IS NULL) OR (%@ > %@) OR (%@ < %@) OR (%@ != 0))", namesInjection, mainTable, v11, 4, v12, v13, v13, v5, v13, v8, busyStateVar}];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100142944;
  v19[3] = &unk_10027B218;
  v19[4] = self;
  v16 = [v15 enumerateObjects:v19];

  return v16;
}

- (id)enumeratorForDeletedStagedScopes
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  namesInjection = [*(&self->_modifiedVariables + 4) namesInjection];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [pqlConnection cplFetch:{@"SELECT %@ FROM %@ WHERE (%@ & %ld) = %ld", namesInjection, mainTable, *(&self->_base + 4), 68, 68}];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100142B0C;
  v10[3] = &unk_10027B218;
  v10[4] = self;
  v8 = [v7 enumerateObjects:v10];

  return v8;
}

- (id)enumeratorForScopesNeedingToPushHighPriorityChangesToTransport
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100142DCC;
  block[3] = &unk_100271F40;
  block[4] = self;
  if (qword_1002D28B8 != -1)
  {
    dispatch_once(&qword_1002D28B8, block);
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  namesInjection = [*(&self->_modifiedVariables + 4) namesInjection];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v7 = *(&self->_base + 4);
  hasSomethingTodo = [*(&self->_supervisorInfoVar + 4) hasSomethingTodo];
  v9 = *(&self->_lastLibraryInfoUpdateVar + 4);
  v10 = *(&self->_base + 4);
  scopeTypeVar = [*(&self->_modifiedVariables + 4) scopeTypeVar];
  scopeIdentifierVar = [*(&self->_modifiedVariables + 4) scopeIdentifierVar];
  v13 = [pqlConnection cplFetch:{@"SELECT %@ FROM %@ WHERE (%@ & %ld) = %ld AND %@ AND (%@ IS NOT NULL OR (%@ & %ld) != 0) ORDER BY scopeTypeOrder(%@, %p), %@ ASC", namesInjection, mainTable, v7, 131088, 0x20000, hasSomethingTodo, v9, v10, 4, scopeTypeVar, &unk_1002D2870, scopeIdentifierVar}];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100142DEC;
  v16[3] = &unk_10027B218;
  v16[4] = self;
  v14 = [v13 enumerateObjects:v16];

  return v14;
}

- (BOOL)hasScopesNeedingToPushHighPriorityChangesToTransport
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v5 = *(&self->_base + 4);
  hasSomethingTodo = [*(&self->_supervisorInfoVar + 4) hasSomethingTodo];
  v7 = [PQLFormatInjection formatInjection:@"(%@ & %ld) = %ld AND %@", v5, 131088, 0x20000, hasSomethingTodo];
  LOBYTE(v5) = [pqStore table:mainTable hasRecordsMatchingQuery:v7];

  return v5;
}

- (id)enumeratorForScopesNeedingToPushChangesToTransport
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014317C;
  block[3] = &unk_100271F40;
  block[4] = self;
  if (qword_1002D2908 != -1)
  {
    dispatch_once(&qword_1002D2908, block);
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  namesInjection = [*(&self->_modifiedVariables + 4) namesInjection];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v7 = *(&self->_base + 4);
  hasSomethingTodo = [*(&self->_supervisorInfoVar + 4) hasSomethingTodo];
  v9 = *(&self->_lastLibraryInfoUpdateVar + 4);
  v10 = *(&self->_base + 4);
  scopeTypeVar = [*(&self->_modifiedVariables + 4) scopeTypeVar];
  scopeIdentifierVar = [*(&self->_modifiedVariables + 4) scopeIdentifierVar];
  v13 = [pqlConnection cplFetch:{@"SELECT %@ FROM %@ WHERE (%@ & %ld) = 0 AND %@ AND (%@ IS NOT NULL OR (%@ & %ld) != 0) ORDER BY scopeTypeOrder(%@, %p), %@ ASC", namesInjection, mainTable, v7, 131088, hasSomethingTodo, v9, v10, 4, scopeTypeVar, &unk_1002D28C0, scopeIdentifierVar}];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10014319C;
  v16[3] = &unk_10027B218;
  v16[4] = self;
  v14 = [v13 enumerateObjects:v16];

  return v14;
}

- (BOOL)hasScopesNeedingToPushChangesToTransport
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v5 = *(&self->_base + 4);
  hasSomethingTodo = [*(&self->_supervisorInfoVar + 4) hasSomethingTodo];
  v7 = [PQLFormatInjection formatInjection:@"(%@ & %ld) = 0 AND %@", v5, 131088, hasSomethingTodo];
  LOBYTE(v5) = [pqStore table:mainTable hasRecordsMatchingQuery:v7];

  return v5;
}

- (BOOL)doesScopeNeedToPushChangesToTransport:(id)transport
{
  transportCopy = transport;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [_CPLPrequeliteScopeIsEqual alloc];
  scopeIdentifier = [transportCopy scopeIdentifier];

  v9 = [(_CPLPrequeliteScopeIsEqual *)v7 initWithIdentifier:scopeIdentifier];
  v10 = *(&self->_base + 4);
  hasSomethingTodo = [*(&self->_supervisorInfoVar + 4) hasSomethingTodo];
  v12 = [PQLFormatInjection formatInjection:@"%@ AND (%@ & %ld) = 0 AND %@", v9, v10, 16, hasSomethingTodo];
  LOBYTE(v10) = [pqStore table:mainTable hasRecordsMatchingQuery:v12];

  return v10;
}

- (id)_injectionForScopesAllowingPullFromTransport
{
  v3 = *(&self->_libraryStateGroup + 4);
  if (!v3)
  {
    v4 = [PQLFormatInjection formatInjection:@"((%@ & %ld) = 0 OR (%@ & %ld) = %ld)", *(&self->_base + 4), 262164, *(&self->_base + 4), 262228, 68];
    v5 = *(&self->_libraryStateGroup + 4);
    *(&self->_libraryStateGroup + 4) = v4;

    v3 = *(&self->_libraryStateGroup + 4);
  }

  return v3;
}

- (id)enumeratorForScopesNeedingToPullChangesFromTransport
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001436F8;
  block[3] = &unk_100271F40;
  block[4] = self;
  if (qword_1002D2958 != -1)
  {
    dispatch_once(&qword_1002D2958, block);
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  namesInjection = [*(&self->_modifiedVariables + 4) namesInjection];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  _injectionForScopesAllowingPullFromTransport = [(CPLPrequeliteScopeStorage *)self _injectionForScopesAllowingPullFromTransport];
  hasSomethingTodo = [*(&self->_pushToTransportTodoVar + 4) hasSomethingTodo];
  scopeTypeVar = [*(&self->_modifiedVariables + 4) scopeTypeVar];
  scopeIdentifierVar = [*(&self->_modifiedVariables + 4) scopeIdentifierVar];
  v11 = [pqlConnection cplFetch:{@"SELECT %@ FROM %@ WHERE (%@) AND %@ ORDER BY scopeTypeOrder(%@, %p), %@ ASC", namesInjection, mainTable, _injectionForScopesAllowingPullFromTransport, hasSomethingTodo, scopeTypeVar, &unk_1002D2910, scopeIdentifierVar}];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100143718;
  v14[3] = &unk_10027B218;
  v14[4] = self;
  v12 = [v11 enumerateObjects:v14];

  return v12;
}

- (BOOL)hasScopesNeedingToPullChangesFromTransport
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  _injectionForScopesAllowingPullFromTransport = [(CPLPrequeliteScopeStorage *)self _injectionForScopesAllowingPullFromTransport];
  hasSomethingTodo = [*(&self->_pushToTransportTodoVar + 4) hasSomethingTodo];
  v7 = [PQLFormatInjection formatInjection:@"(%@) = 0 AND %@", _injectionForScopesAllowingPullFromTransport, hasSomethingTodo];
  v8 = [pqStore table:mainTable hasRecordsMatchingQuery:v7];

  return v8;
}

- (BOOL)setAllScopesHasChangesToPullFromTransportWithError:(id *)error
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  setHasSomethingTodo = [*(&self->_pushToTransportTodoVar + 4) setHasSomethingTodo];
  v9 = [pqlConnection cplExecute:{@"UPDATE %@ SET %@", mainTable, setHasSomethingTodo}];

  if (error && (v9 & 1) == 0)
  {
    *error = [pqlConnection lastCPLError];
  }

  return v9;
}

- (BOOL)doesScopeNeedToPullChangesFromTransport:(id)transport
{
  transportCopy = transport;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [_CPLPrequeliteScopeIsEqual alloc];
  scopeIdentifier = [transportCopy scopeIdentifier];

  v9 = [(_CPLPrequeliteScopeIsEqual *)v7 initWithIdentifier:scopeIdentifier];
  v10 = *(&self->_base + 4);
  hasSomethingTodo = [*(&self->_pushToTransportTodoVar + 4) hasSomethingTodo];
  v12 = [PQLFormatInjection formatInjection:@"%@ AND (%@ & %ld) = 0 AND %@", v9, v10, 262164, hasSomethingTodo];
  LOBYTE(v10) = [pqStore table:mainTable hasRecordsMatchingQuery:v12];

  return v10;
}

- (BOOL)setPullFromTransportExpirationInterval:(double)interval scope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  v9 = [NSNumber numberWithDouble:interval];
  expirationIntervalVar = [*(&self->_pushToTransportTodoVar + 4) expirationIntervalVar];
  LOBYTE(error) = [(CPLPrequeliteScopeStorage *)self _storeValue:v9 forColumnVariable:expirationIntervalVar scope:scopeCopy error:error];

  return error;
}

- (id)enumeratorForScopesWithMingling
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100143D20;
  block[3] = &unk_100271F40;
  block[4] = self;
  if (qword_1002D29A8 != -1)
  {
    dispatch_once(&qword_1002D29A8, block);
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  namesInjection = [*(&self->_modifiedVariables + 4) namesInjection];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  _injectionForScopesAllowingPullFromTransport = [(CPLPrequeliteScopeStorage *)self _injectionForScopesAllowingPullFromTransport];
  scopeTypeVar = [*(&self->_modifiedVariables + 4) scopeTypeVar];
  scopeIdentifierVar = [*(&self->_modifiedVariables + 4) scopeIdentifierVar];
  v10 = [pqlConnection cplFetch:{@"SELECT %@ FROM %@ WHERE (%@) ORDER BY scopeTypeOrder(%@, %p), %@ ASC", namesInjection, mainTable, _injectionForScopesAllowingPullFromTransport, scopeTypeVar, &unk_1002D2960, scopeIdentifierVar}];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100143D40;
  v13[3] = &unk_10027B218;
  v13[4] = self;
  v11 = [v10 enumerateObjects:v13];

  return v11;
}

- (BOOL)doScopesNeedMetadataSync:(id)sync
{
  v4 = [(CPLPrequeliteScopeStorage *)self _injectionForFilter:sync];
  if (v4)
  {
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v7 = *(&self->_base + 4);
    hasSomethingTodo = [*(&self->_supervisorInfoVar + 4) hasSomethingTodo];
    v9 = [PQLFormatInjection formatInjection:@"%@ AND (%@ & %ld) = 0 AND %@", v4, v7, 16, hasSomethingTodo];
    LOBYTE(v7) = [pqStore table:mainTable hasRecordsMatchingQuery:v9];

    if (v7)
    {
      v10 = 1;
    }

    else
    {
      v11 = *(&self->_base + 4);
      hasSomethingTodo2 = [*(&self->_pushToTransportTodoVar + 4) hasSomethingTodo];
      v13 = [PQLFormatInjection formatInjection:@"%@ AND (%@ & %ld) = 0 AND %@", v4, v11, 262164, hasSomethingTodo2];
      v10 = [pqStore table:mainTable hasRecordsMatchingQuery:v13];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)enumeratorForScopesNeedingToBePulledByClientWithMaximumCount:(unint64_t)count
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  pqStore2 = [(CPLPrequeliteStorage *)self pqStore];
  libraryOptions = [pqStore2 libraryOptions];

  namesInjection = [*(&self->_modifiedVariables + 4) namesInjection];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v11 = *(&self->_base + 4);
  hasSomethingTodo = [*(&self->_pullFromTransportTodoVar + 4) hasSomethingTodo];
  v13 = hasSomethingTodo;
  v14 = 65552;
  if ((libraryOptions & 0x400) != 0)
  {
    v14 = 0x10000;
  }

  v15 = [pqlConnection cplFetch:{@"SELECT %@ FROM %@ WHERE (%@ & %ld) = %ld AND %@ LIMIT %lu", namesInjection, mainTable, v11, v14, 0x10000, hasSomethingTodo, count}];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001440D0;
  v18[3] = &unk_10027B218;
  v18[4] = self;
  v16 = [v15 enumerateObjects:v18];

  return v16;
}

- (BOOL)doesScopeNeedToBePulledByClient:(id)client
{
  clientCopy = client;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  libraryOptions = [pqStore libraryOptions];

  pqStore2 = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v9 = [_CPLPrequeliteScopeIsEqual alloc];
  scopeIdentifier = [clientCopy scopeIdentifier];

  v11 = [(_CPLPrequeliteScopeIsEqual *)v9 initWithIdentifier:scopeIdentifier];
  v12 = *(&self->_base + 4);
  hasSomethingTodo = [*(&self->_pullFromTransportTodoVar + 4) hasSomethingTodo];
  v14 = hasSomethingTodo;
  v15 = 65552;
  if ((libraryOptions & 0x400) != 0)
  {
    v15 = 0x10000;
  }

  v16 = [PQLFormatInjection formatInjection:@"%@ AND (%@ & %ld) = %ld AND %@", v11, v12, v15, 0x10000, hasSomethingTodo];
  v17 = [pqStore2 table:mainTable hasRecordsMatchingQuery:v16];

  return v17;
}

- (BOOL)doesScopeSupportToBePulledByClient:(id)client
{
  clientCopy = client;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  libraryOptions = [pqStore libraryOptions];

  scopeType = [clientCopy scopeType];
  if (scopeType)
  {
    scopeIdentifier = [clientCopy scopeIdentifier];
    LODWORD(scopeType) = [(CPLPrequeliteScopeStorage *)self _scopeTypeSupportsClientSync:scopeType scopeIdentifier:scopeIdentifier];

    if (scopeType)
    {
      if ((libraryOptions & 0x400) == 0)
      {
        v9 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:*(&self->_base + 4) scope:clientCopy];
        LOBYTE(scopeType) = ([v9 integerValue] & 0x10) == 0;
      }
    }
  }

  return scopeType;
}

- (BOOL)hasScopesNeedingToUpdateTransport
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  hasSomethingTodo = [*(&self->_clientNeedsToPullTodoVar + 4) hasSomethingTodo];
  v6 = [PQLFormatInjection formatInjection:@"%@", hasSomethingTodo];
  v7 = [pqStore table:mainTable hasRecordsMatchingQuery:v6];

  return v7;
}

- (BOOL)doesScopeNeedToUpdateTransport:(id)transport
{
  transportCopy = transport;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [_CPLPrequeliteScopeIsEqual alloc];
  scopeIdentifier = [transportCopy scopeIdentifier];

  v9 = [(_CPLPrequeliteScopeIsEqual *)v7 initWithIdentifier:scopeIdentifier];
  hasSomethingTodo = [*(&self->_clientNeedsToPullTodoVar + 4) hasSomethingTodo];
  v11 = [PQLFormatInjection formatInjection:@"%@ AND %@", v9, hasSomethingTodo];
  LOBYTE(v7) = [pqStore table:mainTable hasRecordsMatchingQuery:v11];

  return v7;
}

- (id)enumeratorForScopesNeedingToUploadComputeState
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  namesInjection = [*(&self->_modifiedVariables + 4) namesInjection];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  hasSomethingTodo = [*(&self->_updateTransportTodoVar + 4) hasSomethingTodo];
  v8 = [pqlConnection cplFetch:{@"SELECT %@ FROM %@ WHERE %@", namesInjection, mainTable, hasSomethingTodo}];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10014478C;
  v11[3] = &unk_10027B218;
  v11[4] = self;
  v9 = [v8 enumerateObjects:v11];

  return v9;
}

- (BOOL)hasScopesNeedingToUploadComputeState
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  hasSomethingTodo = [*(&self->_updateTransportTodoVar + 4) hasSomethingTodo];
  v6 = [PQLFormatInjection formatInjection:@"%@", hasSomethingTodo];
  v7 = [pqStore table:mainTable hasRecordsMatchingQuery:v6];

  return v7;
}

- (BOOL)doesScopeNeedToUploadComputeState:(id)state
{
  stateCopy = state;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [_CPLPrequeliteScopeIsEqual alloc];
  scopeIdentifier = [stateCopy scopeIdentifier];

  v9 = [(_CPLPrequeliteScopeIsEqual *)v7 initWithIdentifier:scopeIdentifier];
  hasSomethingTodo = [*(&self->_updateTransportTodoVar + 4) hasSomethingTodo];
  v11 = [PQLFormatInjection formatInjection:@"%@ AND %@", v9, hasSomethingTodo];
  LOBYTE(v7) = [pqStore table:mainTable hasRecordsMatchingQuery:v11];

  return v7;
}

- (id)addScopeWithIdentifier:(id)identifier scopeType:(int64_t)type error:(id *)error
{
  identifierCopy = identifier;
  v9 = [(CPLPrequeliteStorage *)self valueForVariable:*(&self->super._shouldUpgradeSchema + 1)];
  integerValue = [v9 integerValue];

  v11 = [NSNumber numberWithInteger:integerValue + 3];
  v12 = [(CPLPrequeliteStorage *)self setValue:v11 forVariable:*(&self->super._shouldUpgradeSchema + 1) error:error];

  if (v12)
  {
    v13 = [[CPLEngineScope alloc] initWithScopeIdentifier:identifierCopy scopeType:type];
    [v13 setLocalIndex:integerValue + 1];
    [v13 setCloudIndex:integerValue + 2];
    [v13 setStableIndex:integerValue + 3];
    if ([(CPLPrequeliteScopeStorage *)self _addScope:v13 error:error])
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)deleteScopeWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  scopeIdentifierVar = [*(&self->_modifiedVariables + 4) scopeIdentifierVar];
  v11 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE %@ = %@", mainTable, scopeIdentifierVar, identifierCopy}];

  if (error && (v11 & 1) == 0)
  {
    *error = [pqlConnection lastCPLError];
  }

  [(CPLPrequeliteScopeStorage *)self _discardCachedValuesForGroup:*(&self->_stagedScopeIdentifierVar + 4)];
  [*(&self->_noteEndOfResetIfNecessary + 4) discardCachedValue];
  [(CPLPrequeliteScopeStorage *)self _discardCachedValuesForGroup:*(&self->_stagedScopeIdentifierVar + 4)];

  return v11;
}

- (BOOL)setScopeType:(int64_t)type forScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  v9 = [NSNumber numberWithInteger:type];
  scopeTypeVar = [*(&self->_modifiedVariables + 4) scopeTypeVar];
  v11 = [(CPLPrequeliteScopeStorage *)self _storeValue:v9 forColumnVariable:scopeTypeVar scope:scopeCopy error:error];

  if (v11)
  {
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    [*(&self->_base + 4) discardCachedValue];
    scopeIdentifier = [scopeCopy scopeIdentifier];
    v15 = [(CPLPrequeliteScopeStorage *)self _scopeTypeSupportsClientSync:type scopeIdentifier:scopeIdentifier];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v17 = *(&self->_base + 4);
    v18 = [_CPLPrequeliteScopeIsEqual alloc];
    scopeIdentifier2 = [scopeCopy scopeIdentifier];
    v20 = [(_CPLPrequeliteScopeIsEqual *)v18 initWithIdentifier:scopeIdentifier2];
    v21 = v20;
    if (v15)
    {
      v22 = [pqlConnection cplExecute:{@"UPDATE %@ SET %@ = (%@ | %ld) WHERE %@", mainTable, v17, v17, 0x10000, v20}];

      if (v22)
      {
        if ([pqlConnection changes] < 1 || (_CPLSilentLogging & 1) != 0)
        {
          goto LABEL_16;
        }

        v23 = sub_10013EE4C();
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
LABEL_15:

LABEL_16:
          v25 = 1;
LABEL_20:

          goto LABEL_21;
        }

        *buf = 138412290;
        v29 = scopeCopy;
        v24 = "Enabled client sync for %@";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 0xCu);
        goto LABEL_15;
      }
    }

    else
    {
      v26 = [pqlConnection cplExecute:{@"UPDATE %@ SET %@ = (%@ & %ld) WHERE %@", mainTable, v17, v17, -65537, v20}];

      if (v26)
      {
        if ([pqlConnection changes] < 1 || (_CPLSilentLogging & 1) != 0)
        {
          goto LABEL_16;
        }

        v23 = sub_10013EE4C();
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 138412290;
        v29 = scopeCopy;
        v24 = "Disabled client sync for %@";
        goto LABEL_14;
      }
    }

    if (error)
    {
      [pqlConnection lastError];
      *error = v25 = 0;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_20;
  }

  v25 = 0;
LABEL_21:

  return v25;
}

- (int64_t)_bumpIndexWithError:(id *)error
{
  v5 = [(CPLPrequeliteStorage *)self valueForVariable:*(&self->super._shouldUpgradeSchema + 1)];
  integerValue = [v5 integerValue];

  v7 = [NSNumber numberWithInteger:integerValue + 1];
  LODWORD(error) = [(CPLPrequeliteStorage *)self setValue:v7 forVariable:*(&self->super._shouldUpgradeSchema + 1) error:error];

  if (error)
  {
    return (integerValue + 1);
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (BOOL)bumpLocalIndexForScopeWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(CPLPrequeliteScopeStorage *)self _bumpIndexWithError:error];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v13 = [[_CPLPrequeliteScopeIsEqual alloc] initWithIdentifier:identifierCopy];
    v8 = [pqlConnection cplExecute:{@"UPDATE %@ SET localIndex = %ld WHERE %@", mainTable, v9, v13}];

    if (error && (v8 & 1) == 0)
    {
      *error = [pqlConnection lastError];
    }
  }

  return v8;
}

- (BOOL)bumpCloudIndexForScopeWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(CPLPrequeliteScopeStorage *)self _bumpIndexWithError:error];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v13 = [[_CPLPrequeliteScopeIsEqual alloc] initWithIdentifier:identifierCopy];
    v8 = [pqlConnection cplExecute:{@"UPDATE %@ SET cloudIndex = %ld WHERE %@", mainTable, v9, v13}];

    if (error && (v8 & 1) == 0)
    {
      *error = [pqlConnection lastError];
    }
  }

  return v8;
}

- (BOOL)bumpStableIndexForScopeWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(CPLPrequeliteScopeStorage *)self _bumpIndexWithError:error];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v13 = [[_CPLPrequeliteScopeIsEqual alloc] initWithIdentifier:identifierCopy];
    v8 = [pqlConnection cplExecute:{@"UPDATE %@ SET stableIndex = %ld WHERE %@", mainTable, v9, v13}];

    if (error && (v8 & 1) == 0)
    {
      *error = [pqlConnection lastError];
    }
  }

  return v8;
}

- (id)_scopeWithQuery:(id)query
{
  queryCopy = query;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001453E8;
  v11[3] = &unk_10027B218;
  v11[4] = self;
  namesInjection = [*(&self->_modifiedVariables + 4) namesInjection];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v9 = [pqlConnection cplFetchObject:v11 sql:{@"SELECT %@ FROM %@ WHERE %@", namesInjection, mainTable, queryCopy}];

  return v9;
}

- (id)scopeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[_CPLPrequeliteScopeIsEqual alloc] initWithIdentifier:identifierCopy];

  v6 = [(CPLPrequeliteScopeStorage *)self _scopeWithQuery:v5];

  return v6;
}

- (id)scopeWithLocalIndex:(int64_t)index
{
  index = [PQLFormatInjection formatInjection:@"localIndex = %ld", index];
  v5 = [(CPLPrequeliteScopeStorage *)self _scopeWithQuery:index];

  return v5;
}

- (id)scopeWithCloudIndex:(int64_t)index
{
  index = [PQLFormatInjection formatInjection:@"cloudIndex = %ld", index];
  v5 = [(CPLPrequeliteScopeStorage *)self _scopeWithQuery:index];

  return v5;
}

- (id)scopeWithStableIndex:(int64_t)index
{
  index = [PQLFormatInjection formatInjection:@"stableIndex = %ld", index];
  v5 = [(CPLPrequeliteScopeStorage *)self _scopeWithQuery:index];

  return v5;
}

- (id)validLocalIndexes
{
  v3 = objc_alloc_init(NSMutableIndexSet);
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [pqlConnection cplFetch:{@"SELECT localIndex FROM %@ WHERE (%@ & %ld) = 0", mainTable, *(&self->_base + 4), 16}];
  v8 = [v7 enumerateObjectsOfClass:objc_opt_class()];

  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v3 addIndex:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "integerValue")}];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  return v3;
}

- (id)validCloudIndexes
{
  v3 = objc_alloc_init(NSMutableIndexSet);
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [pqlConnection cplFetch:{@"SELECT cloudIndex FROM %@ WHERE (%@ & %ld) = 0", mainTable, *(&self->_base + 4), 16}];
  v8 = [v7 enumerateObjectsOfClass:objc_opt_class()];

  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v3 addIndex:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "integerValue")}];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  return v3;
}

- (id)primaryScope
{
  v3 = [_CPLPrequeliteScopeIsEqual alloc];
  mainScopeIdentifier = [(CPLPrequeliteStorage *)self mainScopeIdentifier];
  v5 = [(_CPLPrequeliteScopeIsEqual *)v3 initWithIdentifier:mainScopeIdentifier];
  v6 = [(CPLPrequeliteScopeStorage *)self _scopeWithQuery:v5];

  return v6;
}

- (id)stagingScopeForScope:(id)scope
{
  v4 = *(&self->_uploadComputeStateTodoVar + 4);
  scopeIdentifier = [scope scopeIdentifier];
  v6 = [PQLFormatInjection formatInjection:@"%@ = %@", v4, scopeIdentifier];
  v7 = [(CPLPrequeliteScopeStorage *)self _scopeWithQuery:v6];

  return v7;
}

- (id)rewindSyncAnchorsForScope:(id)scope
{
  scopeCopy = scope;
  rewindSyncAnchorsVar = [*(&self->_transportScopeVar + 4) rewindSyncAnchorsVar];
  v6 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:rewindSyncAnchorsVar scope:scopeCopy];

  if (v6)
  {
    if (qword_1002D29B8 != -1)
    {
      sub_1001B75C8();
    }

    v7 = [NSKeyedUnarchiver cpl_safeUnarchiveObjectWithData:v6 classes:qword_1002D29B0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v9 = sub_10013EE4C();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v11 = 138412290;
          v12 = scopeCopy;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Rewind sync anchors for %@ is invalid", &v11, 0xCu);
        }
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)storeRewindSyncAnchors:(id)anchors forScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  if (anchors)
  {
    anchors = [NSKeyedArchiver cpl_archivedDataWithRootObject:anchors];
  }

  rewindSyncAnchorsVar = [*(&self->_transportScopeVar + 4) rewindSyncAnchorsVar];
  v10 = [(CPLPrequeliteScopeStorage *)self _storeValue:anchors forColumnVariable:rewindSyncAnchorsVar scope:scopeCopy error:error];

  return v10;
}

- (BOOL)storeBusyState:(int64_t)state forScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  v9 = [NSNumber numberWithInteger:state];
  busyStateVar = [*(&self->_transportScopeVar + 4) busyStateVar];
  LOBYTE(error) = [(CPLPrequeliteScopeStorage *)self _storeValue:v9 forColumnVariable:busyStateVar scope:scopeCopy error:error];

  return error;
}

- (int64_t)busyStateForScope:(id)scope
{
  v4 = *(&self->_transportScopeVar + 4);
  scopeCopy = scope;
  busyStateVar = [v4 busyStateVar];
  v7 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:busyStateVar scope:scopeCopy];

  integerValue = [v7 integerValue];
  return integerValue;
}

- (BOOL)storeSupervisorInfo:(id)info forScope:(id)scope error:(id *)error
{
  infoCopy = info;
  scopeCopy = scope;
  if (!infoCopy)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v10 = [NSPropertyListSerialization dataWithPropertyList:infoCopy format:200 options:0 error:error];
  if (v10)
  {
LABEL_5:
    v11 = [(CPLPrequeliteScopeStorage *)self _storeValue:v10 forColumnVariable:*(&self->_initialMingleDateVar + 4) scope:scopeCopy error:error];

    goto LABEL_6;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (id)supervisorInfoForScope:(id)scope
{
  scopeCopy = scope;
  v5 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:*(&self->_initialMingleDateVar + 4) scope:scopeCopy];
  if (v5)
  {
    v9 = 0;
    v6 = [NSPropertyListSerialization propertyListWithData:v5 options:0 format:0 error:&v9];
    v7 = v9;
    if (!v6 && (_CPLSilentLogging & 1) == 0)
    {
      sub_1001B75DC();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)storeScopeListSyncAnchor:(id)anchor error:(id *)error
{
  v7 = [(CPLPrequeliteStorage *)self setValue:anchor forVariable:*(&self->_nextIndexVar + 4) error:error];
  v8 = v7;
  if (!anchor && v7)
  {
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    setHasSomethingTodo = [*(&self->_pullFromTransportTodoVar + 4) setHasSomethingTodo];
    v13 = [pqlConnection cplExecute:{@"UPDATE %@ SET %@ WHERE %@ & %lu != 0", mainTable, setHasSomethingTodo, *(&self->_base + 4), 0x10000}];

    if (v13)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001B7684(pqlConnection);
      }
    }

    else if (error)
    {
      *error = [pqlConnection lastCPLError];
    }
  }

  return v8;
}

- (void)_cacheValue:(id)value forColumnVariable:(id)variable scope:(id)scope
{
  v7 = *(&self->_scopeListSyncAnchorVar + 4);
  scopeCopy = scope;
  variableCopy = variable;
  valueCopy = value;
  [v7 addObject:variableCopy];
  scopeIdentifier = [scopeCopy scopeIdentifier];

  [variableCopy setCachedValue:valueCopy forIdentifier:scopeIdentifier];
}

- (BOOL)_storeValue:(id)value forColumnVariable:(id)variable scope:(id)scope error:(id *)error
{
  valueCopy = value;
  variableCopy = variable;
  scopeCopy = scope;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v15 = [variableCopy bindableValueForValue:valueCopy];
  v16 = [_CPLPrequeliteScopeIsEqual alloc];
  scopeIdentifier = [scopeCopy scopeIdentifier];
  v18 = [(_CPLPrequeliteScopeIsEqual *)v16 initWithIdentifier:scopeIdentifier];
  v19 = [pqlConnection cplExecute:{@"UPDATE %@ SET %@ = %@ WHERE %@", mainTable, variableCopy, v15, v18}];

  if (v19)
  {
    [(CPLPrequeliteScopeStorage *)self _cacheValue:valueCopy forColumnVariable:variableCopy scope:scopeCopy];
  }

  else if (error)
  {
    *error = [pqlConnection lastCPLError];
  }

  return v19;
}

- (id)_valueForColumnVariable:(id)variable scope:(id)scope
{
  variableCopy = variable;
  scopeCopy = scope;
  scopeIdentifier = [scopeCopy scopeIdentifier];
  v9 = [variableCopy hasCachedValueForIdentifier:scopeIdentifier];

  if (v9)
  {
    scopeIdentifier2 = [scopeCopy scopeIdentifier];
    v11 = [variableCopy cachedValueForIdentifier:scopeIdentifier2];
  }

  else
  {
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100146500;
    v20[3] = &unk_10027B218;
    v14 = variableCopy;
    v21 = v14;
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v16 = [_CPLPrequeliteScopeIsEqual alloc];
    scopeIdentifier3 = [scopeCopy scopeIdentifier];
    v18 = [(_CPLPrequeliteScopeIsEqual *)v16 initWithIdentifier:scopeIdentifier3];
    v11 = [pqlConnection cplFetchObject:v20 sql:{@"SELECT %@ FROM %@ WHERE %@", v14, mainTable, v18}];

    [(CPLPrequeliteScopeStorage *)self _cacheValue:v11 forColumnVariable:v14 scope:scopeCopy];
  }

  return v11;
}

- (id)creationDateForScope:(id)scope
{
  v4 = *(&self->_modifiedVariables + 4);
  scopeCopy = scope;
  creationDateVar = [v4 creationDateVar];
  v7 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:creationDateVar scope:scopeCopy];

  return v7;
}

- (id)flagsForScope:(id)scope
{
  v3 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:*(&self->_base + 4) scope:scope];
  v4 = v3;
  if (v3)
  {
    v5 = [[CPLEngineScopeFlagsUpdate alloc] initWithFlags:{objc_msgSend(v3, "integerValue")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)updateFlags:(id)flags forScope:(id)scope error:(id *)error
{
  flagsCopy = flags;
  scopeCopy = scope;
  if ([flagsCopy updatedFlagsMask])
  {
    v10 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:*(&self->_base + 4) scope:scopeCopy];
    v11 = v10;
    if (v10)
    {
      integerValue = [v10 integerValue];
      v13 = [flagsCopy updatedFlagsFromFlags:integerValue];
      if (integerValue == v13)
      {
        LOBYTE(error) = 1;
      }

      else
      {
        v15 = v13;
        if ((_CPLSilentLogging & 1) == 0)
        {
          v16 = sub_10013EE4C();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v19 = 138412546;
            v20 = scopeCopy;
            v21 = 2112;
            v22 = flagsCopy;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Updating flags for %@: %@", &v19, 0x16u);
          }
        }

        v17 = [NSNumber numberWithInteger:v15];
        LOBYTE(error) = [(CPLPrequeliteScopeStorage *)self _storeValue:v17 forColumnVariable:*(&self->_base + 4) scope:scopeCopy error:error];
      }
    }

    else if (error)
    {
      scopeIdentifier = [scopeCopy scopeIdentifier];
      *error = [CPLErrors invalidScopeErrorWithScopeIdentifier:scopeIdentifier];

      LOBYTE(error) = 0;
    }
  }

  else
  {
    LOBYTE(error) = 1;
  }

  return error;
}

- (id)_librarySateForScope:(id)scope
{
  scopeCopy = scope;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100146990;
  v14[3] = &unk_10027B218;
  v14[4] = self;
  namesInjection = [*(&self->_all + 4) namesInjection];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v9 = [_CPLPrequeliteScopeIsEqual alloc];
  scopeIdentifier = [scopeCopy scopeIdentifier];

  v11 = [(_CPLPrequeliteScopeIsEqual *)v9 initWithIdentifier:scopeIdentifier];
  v12 = [pqlConnection cplFetchObject:v14 sql:{@"SELECT %@ FROM %@ WHERE %@", namesInjection, mainTable, v11}];

  return v12;
}

- (BOOL)setHasUpdatedScope:(id)scope fromTransportWithError:(id *)error
{
  scopeCopy = scope;
  v7 = +[NSDate date];
  LOBYTE(error) = [(CPLPrequeliteScopeStorage *)self _storeValue:v7 forColumnVariable:*(&self->_scopeChangeVar + 4) scope:scopeCopy error:error];

  return error;
}

- (id)_libraryInfoForScope:(id)scope
{
  v3 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:*(&self->_deleteDateVar + 4) scope:scope];
  if (v3)
  {
    v4 = [NSKeyedUnarchiver cpl_safeUnarchiveObjectWithData:v3 class:objc_opt_class()];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)scopeChangeForScope:(id)scope
{
  scopeCopy = scope;
  v5 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:*(&self->_libraryInfoVar + 4) scope:scopeCopy];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [NSKeyedUnarchiver cpl_safeUnarchiveObjectWithData:v5 class:objc_opt_class()];
  scopeType = [v6 scopeType];
  if (scopeType != [scopeCopy scopeType])
  {
    sub_1001B771C(v6, scopeCopy);
LABEL_4:
    v6 = 0;
  }

  v8 = [(CPLPrequeliteScopeStorage *)self _libraryInfoForScope:scopeCopy];
  if (v6)
  {
    goto LABEL_10;
  }

  scopeIdentifier = [scopeCopy scopeIdentifier];
  v6 = +[CPLScopeChange newScopeChangeInferClassWithScopeIdentifier:type:](CPLScopeChange, "newScopeChangeInferClassWithScopeIdentifier:type:", scopeIdentifier, [scopeCopy scopeType]);

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      momentShare = [v8 momentShare];
      [v6 setMomentShare:momentShare];

      [v8 setMomentShare:0];
    }
  }

  v11 = [(CPLPrequeliteScopeStorage *)self _librarySateForScope:scopeCopy];
  [v6 setLibraryState:v11];

  if (v6)
  {
LABEL_10:
    [v6 setLibraryInfo:v8];
    v12 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:*(&self->_base + 4) scope:scopeCopy];
    [v6 setActivated:{(objc_msgSend(v12, "integerValue") & 0x10) == 0}];
    if ([v6 isActivated] && +[CPLScopeChange supportsStagingScopeForScopeWithType:](CPLScopeChange, "supportsStagingScopeForScopeWithType:", objc_msgSend(v6, "scopeType")))
    {
      v13 = [(CPLPrequeliteScopeStorage *)self stagingScopeForScope:scopeCopy];
      scopeIdentifier2 = [v13 scopeIdentifier];
      [v6 setStagingScopeIdentifier:scopeIdentifier2];
    }

    busyStateVar = [*(&self->_transportScopeVar + 4) busyStateVar];
    v16 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:busyStateVar scope:scopeCopy];
    integerValue = [v16 integerValue];

    [v6 setBusyState:integerValue];
    v18 = v6;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)_storeLibraryInfo:(id)info forScope:(id)scope libraryInfoHasBeenUpdated:(BOOL *)updated error:(id *)error
{
  infoCopy = info;
  scopeCopy = scope;
  *updated = 0;
  if (!infoCopy)
  {
    v18 = 0;
    LOBYTE(v19) = 1;
    goto LABEL_27;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = [(CPLPrequeliteScopeStorage *)self supportedFeatureVersionInLastSyncForScope:scopeCopy];
  if (v13 >= __CPLSupportedFeatureVersion())
  {
    goto LABEL_14;
  }

  featureVersionHistory = [infoCopy featureVersionHistory];
  v15 = featureVersionHistory;
  if (!featureVersionHistory)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = sub_10013EE4C();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        scopeIdentifier = [scopeCopy scopeIdentifier];
        *buf = 138412546;
        v33 = scopeIdentifier;
        v34 = 2048;
        v35 = v13;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Last supported feature version for %@ was %lu but no feature version history was found on server", buf, 0x16u);
      }

      goto LABEL_12;
    }

LABEL_13:

LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  currentFeatureVersion = [featureVersionHistory currentFeatureVersion];
  if (currentFeatureVersion > v13)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = sub_10013EE4C();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        scopeIdentifier2 = [scopeCopy scopeIdentifier];
        *buf = 138413314;
        v33 = scopeIdentifier2;
        v34 = 2048;
        v35 = v13;
        v36 = 2048;
        v37 = currentFeatureVersion;
        v38 = 2048;
        v39 = v13;
        v40 = 2048;
        v41 = currentFeatureVersion;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Last supported feature version for %@ was %lu and current server version is %lu - will definitely have to catch up with changes from %lu to %lu", buf, 0x34u);
      }

LABEL_12:

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    sub_1001B77E8(scopeCopy);
  }

  v31 = 0;
  v28 = [(CPLPrequeliteScopeStorage *)self storeSupportedFeatureVersionInLastSync:__CPLSupportedFeatureVersion() forScope:scopeCopy error:&v31];
  v18 = v31;

  if (!v28)
  {
    LOBYTE(v19) = 0;
    goto LABEL_24;
  }

LABEL_15:
  v21 = [NSKeyedArchiver cpl_archivedDataWithRootObject:infoCopy];
  v22 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:*(&self->_deleteDateVar + 4) scope:scopeCopy];
  v23 = v22;
  if (v21 && v22)
  {
    if (([v21 isEqual:v22] & 1) == 0)
    {
LABEL_18:
      v24 = *(&self->_deleteDateVar + 4);
      v30 = v18;
      v19 = [(CPLPrequeliteScopeStorage *)self _storeValue:v21 forColumnVariable:v24 scope:scopeCopy error:&v30];
      v25 = v30;

      if (v19)
      {
        LOBYTE(v19) = 1;
        *updated = 1;
      }

      v18 = v25;
      goto LABEL_23;
    }
  }

  else if (v21 | v22)
  {
    goto LABEL_18;
  }

  LOBYTE(v19) = 1;
LABEL_23:

LABEL_24:
  objc_autoreleasePoolPop(v12);
  if (error && !v19)
  {
    v26 = v18;
    LOBYTE(v19) = 0;
    *error = v18;
  }

LABEL_27:

  return v19;
}

- (BOOL)storeScopeChange:(id)change forScope:(id)scope scopeChangeHasBeenUpdated:(BOOL *)updated error:(id *)error
{
  changeCopy = change;
  scopeCopy = scope;
  v12 = objc_autoreleasePoolPush();
  libraryInfo = [changeCopy libraryInfo];
  v37 = 0;
  v14 = [(CPLPrequeliteScopeStorage *)self _storeLibraryInfo:libraryInfo forScope:scopeCopy libraryInfoHasBeenUpdated:updated error:&v37];
  v15 = v37;

  if (v14)
  {
    [changeCopy setLibraryInfo:0];
    [changeCopy setStagingScopeIdentifier:0];
    if (![changeCopy scopeType])
    {
      v16 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:*(&self->_libraryInfoVar + 4) scope:scopeCopy];
      if (v16)
      {
        v24 = *(&self->_libraryInfoVar + 4);
        v34 = v15;
        LODWORD(self) = [(CPLPrequeliteScopeStorage *)self _storeValue:0 forColumnVariable:v24 scope:scopeCopy error:&v34];
        v25 = v34;

        if (self)
        {
          LOBYTE(self) = 1;
          *updated = 1;
        }

        v15 = v25;
      }

      else
      {
        LOBYTE(self) = 1;
      }

      goto LABEL_29;
    }

    v16 = [NSKeyedArchiver cpl_archivedDataWithRootObject:changeCopy];
    v17 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:*(&self->_libraryInfoVar + 4) scope:scopeCopy];
    v18 = v17;
    if (v16 && v17)
    {
      if (([v16 isEqual:v17] & 1) == 0)
      {
LABEL_6:
        v33 = v12;
        v19 = v18;
        v20 = *(&self->_libraryInfoVar + 4);
        v36 = v15;
        v21 = [(CPLPrequeliteScopeStorage *)self _storeValue:v16 forColumnVariable:v20 scope:scopeCopy error:&v36];
        v22 = v36;

        if (!v21)
        {
          LOBYTE(self) = 0;
          v23 = v22;
          v18 = v19;
          v12 = v33;
LABEL_28:

          v15 = v23;
LABEL_29:

          goto LABEL_30;
        }

        *updated = 1;
        v23 = v22;
        v18 = v19;
        v12 = v33;
LABEL_15:
        if (*updated && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          stagedScopeChange = [changeCopy stagedScopeChange];
          scopeIdentifier = [stagedScopeChange scopeIdentifier];

          if (scopeIdentifier)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v28 = sub_10013EE4C();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v39 = scopeCopy;
                v40 = 2114;
                v41 = scopeIdentifier;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Setting staged scope for %@ to %{public}@", buf, 0x16u);
              }
            }

            v29 = *(&self->_uploadComputeStateTodoVar + 4);
            v35 = v23;
            LOBYTE(self) = [(CPLPrequeliteScopeStorage *)self _storeValue:scopeIdentifier forColumnVariable:v29 scope:scopeCopy error:&v35];
            v30 = v35;

            v23 = v30;
          }

          else
          {
            LOBYTE(self) = 1;
          }
        }

        else
        {
          LOBYTE(self) = 1;
        }

        goto LABEL_28;
      }
    }

    else if (v16 | v17)
    {
      goto LABEL_6;
    }

    v23 = v15;
    goto LABEL_15;
  }

  LOBYTE(self) = 0;
LABEL_30:
  objc_autoreleasePoolPop(v12);
  if (error && (self & 1) == 0)
  {
    v31 = v15;
    *error = v15;
  }

  return self;
}

- (Class)_transportGroupClass
{
  v3 = *(&self->_injectionForScopesAllowingPullFromTransport + 4);
  if (!v3)
  {
    abstractObject = [(CPLPrequeliteScopeStorage *)self abstractObject];
    engineStore = [abstractObject engineStore];
    engineLibrary = [engineStore engineLibrary];
    transport = [engineLibrary transport];
    *(&self->_injectionForScopesAllowingPullFromTransport + 4) = [transport transportGroupClass];

    v3 = *(&self->_injectionForScopesAllowingPullFromTransport + 4);
    if (!v3)
    {
      sub_1001B78B0(a2, self);
    }
  }

  return v3;
}

- (id)_transportGroupForColumnVariable:(id)variable forScope:(id)scope
{
  variableCopy = variable;
  scopeCopy = scope;
  v8 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:variableCopy scope:scopeCopy];
  if (v8)
  {
    v9 = [NSKeyedUnarchiver cpl_safeUnarchiveObjectWithData:v8 class:[(CPLPrequeliteScopeStorage *)self _transportGroupClass]];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_storeTransportGroup:(id)group inColumnVariable:(id)variable forScope:(id)scope error:(id *)error
{
  groupCopy = group;
  variableCopy = variable;
  scopeCopy = scope;
  if (groupCopy)
  {
    v14 = [NSKeyedArchiver cpl_archivedDataWithRootObject:groupCopy];
    if (!v14)
    {
      sub_1001B7A44(a2, self, groupCopy);
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = [(CPLPrequeliteScopeStorage *)self _storeValue:v14 forColumnVariable:variableCopy scope:scopeCopy error:error];
  if (!v15)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_1001B7B20();
    }

    if (error)
    {
      *error = 0;
    }
  }

  return v15;
}

- (void)_discardCachedValuesForGroup:(id)group
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  variables = [group variables];
  v4 = [variables countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(variables);
        }

        [*(*(&v8 + 1) + 8 * v7) discardCachedValue];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [variables countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (BOOL)resetSyncStateForScope:(id)scope error:(id *)error
{
  v6 = *(&self->_transportScopeVar + 4);
  scopeCopy = scope;
  [(CPLPrequeliteScopeStorage *)self _discardCachedValuesForGroup:v6];
  [(CPLPrequeliteScopeStorage *)self _discardCachedValuesForGroup:*(&self->_supervisorInfoVar + 4)];
  [(CPLPrequeliteScopeStorage *)self _discardCachedValuesForGroup:*(&self->_pushToTransportTodoVar + 4)];
  [*(&self->_noteEndOfResetIfNecessary + 4) discardCachedValue];
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  injectionForDefaultValuesUpdate = [*(&self->_transportScopeVar + 4) injectionForDefaultValuesUpdate];
  injectionForDefaultValuesUpdate2 = [*(&self->_supervisorInfoVar + 4) injectionForDefaultValuesUpdate];
  lastCompletionDateVar = [*(&self->_pushToTransportTodoVar + 4) lastCompletionDateVar];
  scopeIdentifierVar = [*(&self->_modifiedVariables + 4) scopeIdentifierVar];
  scopeIdentifier = [scopeCopy scopeIdentifier];

  v16 = [pqlConnection cplExecute:{@"UPDATE %@ SET %@, %@, %@ = NULL WHERE %@ = %@", mainTable, injectionForDefaultValuesUpdate, injectionForDefaultValuesUpdate2, lastCompletionDateVar, scopeIdentifierVar, scopeIdentifier}];
  if (error && (v16 & 1) == 0)
  {
    *error = [pqlConnection lastError];
  }

  return v16;
}

- (id)uploadTransportGroupForScope:(id)scope
{
  v4 = *(&self->_transportScopeVar + 4);
  scopeCopy = scope;
  uploadTransportGroupVar = [v4 uploadTransportGroupVar];
  v7 = [(CPLPrequeliteScopeStorage *)self _transportGroupForColumnVariable:uploadTransportGroupVar forScope:scopeCopy];

  return v7;
}

- (BOOL)storeUploadTransportGroup:(id)group forScope:(id)scope error:(id *)error
{
  v8 = *(&self->_transportScopeVar + 4);
  scopeCopy = scope;
  groupCopy = group;
  uploadTransportGroupVar = [v8 uploadTransportGroupVar];
  LOBYTE(error) = [(CPLPrequeliteScopeStorage *)self _storeTransportGroup:groupCopy inColumnVariable:uploadTransportGroupVar forScope:scopeCopy error:error];

  return error;
}

- (id)downloadTransportGroupForScope:(id)scope
{
  v4 = *(&self->_transportScopeVar + 4);
  scopeCopy = scope;
  downloadTransportGroupVar = [v4 downloadTransportGroupVar];
  v7 = [(CPLPrequeliteScopeStorage *)self _transportGroupForColumnVariable:downloadTransportGroupVar forScope:scopeCopy];

  return v7;
}

- (BOOL)storeDownloadTransportGroup:(id)group forScope:(id)scope error:(id *)error
{
  v8 = *(&self->_transportScopeVar + 4);
  scopeCopy = scope;
  groupCopy = group;
  downloadTransportGroupVar = [v8 downloadTransportGroupVar];
  LOBYTE(error) = [(CPLPrequeliteScopeStorage *)self _storeTransportGroup:groupCopy inColumnVariable:downloadTransportGroupVar forScope:scopeCopy error:error];

  return error;
}

- (BOOL)didDropSomeRecordsForScope:(id)scope
{
  v4 = *(&self->_transportScopeVar + 4);
  scopeCopy = scope;
  droppedSomeRecordsVar = [v4 droppedSomeRecordsVar];
  v7 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:droppedSomeRecordsVar scope:scopeCopy];

  LOBYTE(scopeCopy) = [v7 BOOLValue];
  return scopeCopy;
}

- (BOOL)setDidDropSomeRecordsForScope:(id)scope error:(id *)error
{
  selfCopy = self;
  v5 = *(&self->_transportScopeVar + 4);
  scopeCopy = scope;
  droppedSomeRecordsVar = [v5 droppedSomeRecordsVar];
  LOBYTE(selfCopy) = [(CPLPrequeliteScopeStorage *)selfCopy _storeValue:&__kCFBooleanTrue forColumnVariable:droppedSomeRecordsVar scope:scopeCopy error:0];

  return selfCopy;
}

- (id)syncAnchorForScope:(id)scope isCommitted:(BOOL *)committed
{
  scopeCopy = scope;
  stagedSyncAnchorVar = [*(&self->_transportScopeVar + 4) stagedSyncAnchorVar];
  v8 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:stagedSyncAnchorVar scope:scopeCopy];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    syncAnchorVar = [*(&self->_transportScopeVar + 4) syncAnchorVar];
    v8 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:syncAnchorVar scope:scopeCopy];

    v9 = 1;
  }

  *committed = v9;

  return v8;
}

- (BOOL)commitSyncAnchorForScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  stagedSyncAnchorVar = [*(&self->_transportScopeVar + 4) stagedSyncAnchorVar];
  v8 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:stagedSyncAnchorVar scope:scopeCopy];

  scopeIdentifier = [scopeCopy scopeIdentifier];
  mainScopeIdentifier = [(CPLPrequeliteStorage *)self mainScopeIdentifier];
  v11 = [scopeIdentifier isEqualToString:mainScopeIdentifier];

  if (v8)
  {
    v12 = [(CPLPrequeliteScopeStorage *)self initialSyncDateForScope:scopeCopy];
    syncAnchorVar = [*(&self->_transportScopeVar + 4) syncAnchorVar];
    v14 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:syncAnchorVar scope:scopeCopy];

    if (!v14)
    {
      BYTE4(self->_transportGroupClass) = 1;
    }

    syncAnchorVar2 = [*(&self->_transportScopeVar + 4) syncAnchorVar];
    v16 = [(CPLPrequeliteScopeStorage *)self _storeValue:v8 forColumnVariable:syncAnchorVar2 scope:scopeCopy error:error];

    if (v16)
    {
      stagedSyncAnchorVar2 = [*(&self->_transportScopeVar + 4) stagedSyncAnchorVar];
      v18 = [(CPLPrequeliteScopeStorage *)self _storeValue:0 forColumnVariable:stagedSyncAnchorVar2 scope:scopeCopy error:error];

      [*(&self->_noteEndOfResetIfNecessary + 4) discardCachedValue];
      if (!v18 || v12)
      {
        if ((v18 & v11) == 1)
        {
          engineLibrary = [(CPLPrequeliteStorage *)self engineLibrary];
          initialSyncDate = [engineLibrary initialSyncDate];
          if (!initialSyncDate)
          {
            sub_1001B7BB8(self, scopeCopy);
          }

          goto LABEL_19;
        }

LABEL_20:

        goto LABEL_21;
      }

      v19 = +[NSDate date];
      v20 = [(CPLPrequeliteScopeStorage *)self _storeValue:v19 forColumnVariable:*(&self->_estimatedAssetCountVar + 4) scope:scopeCopy error:error];

      if ((v20 & v11) == 1)
      {
        sub_1001B7C3C(scopeCopy, self);
LABEL_19:
        LOBYTE(v18) = 1;
        goto LABEL_20;
      }

      if (v20)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v21 = sub_10013EE4C();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            scopeIdentifier2 = [scopeCopy scopeIdentifier];
            v26 = 138412290;
            v27 = scopeIdentifier2;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Committing initial sync date for %@", &v26, 0xCu);
          }
        }

        goto LABEL_19;
      }
    }

    LOBYTE(v18) = 0;
    goto LABEL_20;
  }

  LOBYTE(v18) = 1;
LABEL_21:

  return v18;
}

- (BOOL)hasStagedSyncAnchorForScope:(id)scope
{
  v4 = *(&self->_transportScopeVar + 4);
  scopeCopy = scope;
  stagedSyncAnchorVar = [v4 stagedSyncAnchorVar];
  v7 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:stagedSyncAnchorVar scope:scopeCopy];

  return v7 != 0;
}

- (BOOL)discardStagedSyncAnchorForScope:(id)scope error:(id *)error
{
  v6 = *(&self->_noteEndOfResetIfNecessary + 4);
  scopeCopy = scope;
  [v6 discardCachedValue];
  stagedSyncAnchorVar = [*(&self->_transportScopeVar + 4) stagedSyncAnchorVar];
  LOBYTE(error) = [(CPLPrequeliteScopeStorage *)self _storeValue:0 forColumnVariable:stagedSyncAnchorVar scope:scopeCopy error:error];

  return error;
}

- (BOOL)discardStagedSyncAnchorWithScopeFilter:(id)filter error:(id *)error
{
  filterCopy = filter;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  v8 = [(CPLPrequeliteScopeStorage *)self _injectionForFilter:filterCopy];

  if (v8)
  {
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    stagedSyncAnchorVar = [*(&self->_transportScopeVar + 4) stagedSyncAnchorVar];
    v11 = [pqlConnection cplExecute:{@"UPDATE %@ SET %@ = NULL WHERE %@", mainTable, stagedSyncAnchorVar, v8}];

    [*(&self->_noteEndOfResetIfNecessary + 4) discardCachedValue];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (id)transientSyncAnchorForScope:(id)scope
{
  v4 = *(&self->_transportScopeVar + 4);
  scopeCopy = scope;
  transientSyncAnchorVar = [v4 transientSyncAnchorVar];
  v7 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:transientSyncAnchorVar scope:scopeCopy];

  return v7;
}

- (BOOL)storeTransientSyncAnchor:(id)anchor forScope:(id)scope error:(id *)error
{
  v8 = *(&self->_transportScopeVar + 4);
  scopeCopy = scope;
  anchorCopy = anchor;
  transientSyncAnchorVar = [v8 transientSyncAnchorVar];
  LOBYTE(error) = [(CPLPrequeliteScopeStorage *)self _storeValue:anchorCopy forColumnVariable:transientSyncAnchorVar scope:scopeCopy error:error];

  return error;
}

- (id)classNameOfRecordsForInitialQueryForScope:(id)scope
{
  v4 = *(&self->_transportScopeVar + 4);
  scopeCopy = scope;
  classForInitialQueryVar = [v4 classForInitialQueryVar];
  v7 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:classForInitialQueryVar scope:scopeCopy];

  return v7;
}

- (BOOL)setClassNameOfRecordsForInitialQuery:(id)query forScope:(id)scope error:(id *)error
{
  v8 = *(&self->_transportScopeVar + 4);
  scopeCopy = scope;
  queryCopy = query;
  classForInitialQueryVar = [v8 classForInitialQueryVar];
  LOBYTE(error) = [(CPLPrequeliteScopeStorage *)self _storeValue:queryCopy forColumnVariable:classForInitialQueryVar scope:scopeCopy error:error];

  return error;
}

- (BOOL)hasScopeFetchedInitialSyncAnchor:(id)anchor
{
  v4 = *(&self->_transportScopeVar + 4);
  anchorCopy = anchor;
  hasFetchedInitialSyncAnchorVar = [v4 hasFetchedInitialSyncAnchorVar];
  v7 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:hasFetchedInitialSyncAnchorVar scope:anchorCopy];

  LOBYTE(anchorCopy) = [v7 BOOLValue];
  return anchorCopy;
}

- (BOOL)setInitialSyncAnchor:(id)anchor forScope:(id)scope error:(id *)error
{
  v8 = *(&self->_transportScopeVar + 4);
  scopeCopy = scope;
  anchorCopy = anchor;
  initialSyncAnchorVar = [v8 initialSyncAnchorVar];
  LOBYTE(error) = [(CPLPrequeliteScopeStorage *)self _storeValue:anchorCopy forColumnVariable:initialSyncAnchorVar scope:scopeCopy error:error];

  return error;
}

- (id)initialSyncAnchorForScope:(id)scope
{
  v4 = *(&self->_transportScopeVar + 4);
  scopeCopy = scope;
  initialSyncAnchorVar = [v4 initialSyncAnchorVar];
  v7 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:initialSyncAnchorVar scope:scopeCopy];

  return v7;
}

- (BOOL)setInitialDownloadDate:(id)date forScope:(id)scope error:(id *)error
{
  dateCopy = date;
  scopeCopy = scope;
  v10 = [(CPLPrequeliteScopeStorage *)self _storeValue:dateCopy forColumnVariable:*(&self->_initialSyncDateVar + 4) scope:scopeCopy error:error];
  if (v10)
  {
    scopeIdentifier = [scopeCopy scopeIdentifier];
    mainScopeIdentifier = [(CPLPrequeliteStorage *)self mainScopeIdentifier];
    v13 = [scopeIdentifier isEqualToString:mainScopeIdentifier];

    if (v13)
    {
      engineLibrary = [(CPLPrequeliteStorage *)self engineLibrary];
      initialDownloadDate = [engineLibrary initialDownloadDate];
      if (!initialDownloadDate)
      {
        [engineLibrary updateInitialDownloadDate:dateCopy];
      }
    }
  }

  return v10;
}

- (BOOL)hasFinishedAFullSyncForScope:(id)scope
{
  v4 = *(&self->_transportScopeVar + 4);
  scopeCopy = scope;
  syncAnchorVar = [v4 syncAnchorVar];
  v7 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:syncAnchorVar scope:scopeCopy];

  return v7 != 0;
}

- (BOOL)allActiveScopesHasFinishedSyncs
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v5 = *(&self->_base + 4);
  syncAnchorVar = [*(&self->_transportScopeVar + 4) syncAnchorVar];
  v7 = [PQLFormatInjection formatInjection:@"(%@ & %ld) = 0 AND %@ IS NULL", v5, 262164, syncAnchorVar];
  LOBYTE(v5) = [pqStore table:mainTable hasRecordsMatchingQuery:v7];

  return v5 ^ 1;
}

- (id)lastDateOfClearedPushRepositoryForScope:(id)scope
{
  v4 = *(&self->_transportScopeVar + 4);
  scopeCopy = scope;
  lastClearedPushVar = [v4 lastClearedPushVar];
  v7 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:lastClearedPushVar scope:scopeCopy];

  return v7;
}

- (BOOL)storeLastDateOfClearedPushRepository:(id)repository forScope:(id)scope error:(id *)error
{
  v8 = *(&self->_transportScopeVar + 4);
  scopeCopy = scope;
  repositoryCopy = repository;
  lastClearedPushVar = [v8 lastClearedPushVar];
  LOBYTE(error) = [(CPLPrequeliteScopeStorage *)self _storeValue:repositoryCopy forColumnVariable:lastClearedPushVar scope:scopeCopy error:error];

  return error;
}

- (unint64_t)supportedFeatureVersionInLastSyncForScope:(id)scope
{
  v4 = *(&self->_transportScopeVar + 4);
  scopeCopy = scope;
  featureVersionVar = [v4 featureVersionVar];
  v7 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:featureVersionVar scope:scopeCopy];

  unsignedIntegerValue = [v7 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (BOOL)storeSupportedFeatureVersionInLastSync:(unint64_t)sync forScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  v9 = [NSNumber numberWithUnsignedInteger:sync];
  featureVersionVar = [*(&self->_transportScopeVar + 4) featureVersionVar];
  LOBYTE(error) = [(CPLPrequeliteScopeStorage *)self _storeValue:v9 forColumnVariable:featureVersionVar scope:scopeCopy error:error];

  return error;
}

- (BOOL)storeEstimatedSize:(unint64_t)size estimatedAssetCount:(unint64_t)count forScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  v11 = [NSNumber numberWithUnsignedLongLong:size];
  v12 = [(CPLPrequeliteScopeStorage *)self _storeValue:v11 forColumnVariable:*(&self->_syncState + 4) scope:scopeCopy error:error];

  if (v12)
  {
    v13 = [NSNumber numberWithUnsignedInteger:count];
    v14 = [(CPLPrequeliteScopeStorage *)self _storeValue:v13 forColumnVariable:*(&self->_estimatedSizeVar + 4) scope:scopeCopy error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)estimatedSizeForScope:(id)scope
{
  v3 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:*(&self->_syncState + 4) scope:scope];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (unint64_t)estimatedAssetCountForScope:(id)scope
{
  v3 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:*(&self->_estimatedSizeVar + 4) scope:scope];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)_noteEndOfResetIfNecessary
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  syncAnchorVar = [*(&self->_transportScopeVar + 4) syncAnchorVar];
  v6 = [PQLFormatInjection formatInjection:@"%@ IS NULL AND (%@ & %ld) = 0", syncAnchorVar, *(&self->_base + 4), 28];
  v7 = [pqStore table:mainTable hasRecordsMatchingQuery:v6];

  if ((v7 & 1) == 0)
  {
    abstractObject = [(CPLPrequeliteScopeStorage *)self abstractObject];
    engineStore = [abstractObject engineStore];
    [engineStore noteResetSyncFinished];
  }
}

- (void)_getLocalIndexes:(id *)indexes cloudIndexes:(id *)cloudIndexes forScopeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v8 = objc_alloc_init(NSMutableIndexSet);
  v9 = objc_alloc_init(NSMutableIndexSet);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = identifiersCopy;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:v15];
        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v8 addIndex:v16];
        }

        v17 = [(CPLPrequeliteStorage *)self cloudScopeIndexForScopeIdentifier:v15];
        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v9 addIndex:v17];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v18 = v8;
  *indexes = v8;
  v19 = v9;
  *cloudIndexes = v9;
}

- (id)_injectionForFilter:(id)filter
{
  filterCopy = filter;
  localIndexes = [filterCopy localIndexes];
  includedScopeIdentifiers = [filterCopy includedScopeIdentifiers];

  if (includedScopeIdentifiers)
  {
    localIndexVar = [*(&self->_modifiedVariables + 4) localIndexVar];
    v8 = [PQLConnection cplInjectionFor:localIndexVar isInIndexSet:localIndexes];
  }

  else
  {
    excludedScopeIdentifiers = [filterCopy excludedScopeIdentifiers];

    if (!excludedScopeIdentifiers)
    {
      goto LABEL_6;
    }

    localIndexVar = [*(&self->_modifiedVariables + 4) localIndexVar];
    v8 = [PQLConnection cplInjectionFor:localIndexVar isNotInIndexSet:localIndexes];
  }

  excludedScopeIdentifiers = v8;

LABEL_6:

  return excludedScopeIdentifiers;
}

- (id)filterForIncludedScopeIdentifiers:(id)identifiers
{
  v13 = 0;
  v14 = 0;
  identifiersCopy = identifiers;
  [(CPLPrequeliteScopeStorage *)self _getLocalIndexes:&v14 cloudIndexes:&v13 forScopeIdentifiers:identifiersCopy];
  v5 = v14;
  v6 = v13;
  v7 = sub_100149304();
  v8 = [PQLConnection cplInjectionFor:v7 isInIndexSet:v5];

  v9 = sub_100149304();
  v10 = [PQLConnection cplInjectionFor:v9 isInIndexSet:v6];

  v11 = [[CPLPrequeliteScopeFilter alloc] initWithIncludedScopeIdentifiers:identifiersCopy localIndexesInjection:v8 localIndexes:v5 cloudIndexesInjection:v10 cloudIndexes:v6];

  return v11;
}

- (id)filterForExcludedScopeIdentifiers:(id)identifiers
{
  v13 = 0;
  v14 = 0;
  identifiersCopy = identifiers;
  [(CPLPrequeliteScopeStorage *)self _getLocalIndexes:&v14 cloudIndexes:&v13 forScopeIdentifiers:identifiersCopy];
  v5 = v14;
  v6 = v13;
  v7 = sub_100149304();
  v8 = [PQLConnection cplInjectionFor:v7 isNotInIndexSet:v5];

  v9 = sub_100149304();
  v10 = [PQLConnection cplInjectionFor:v9 isInIndexSet:v6];

  v11 = [[CPLPrequeliteScopeFilter alloc] initWithExcludedScopeIdentifiers:identifiersCopy localIndexesInjection:v8 localIndexes:v5 cloudIndexesInjection:v10 cloudIndexes:v6];

  return v11;
}

- (BOOL)storeActivationDate:(id)date forScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  if ([(CPLPrequeliteScopeStorage *)self _storeValue:date forColumnVariable:*(&self->_initialDownloadDateVar + 4) scope:scopeCopy error:error]&& [(CPLPrequeliteScopeStorage *)self storeInitialMetadataQueriesDate:0 forScope:scopeCopy error:error]&& [(CPLPrequeliteScopeStorage *)self storeInitialMetadataDownloadDate:0 forScope:scopeCopy error:error])
  {
    v9 = [(CPLPrequeliteScopeStorage *)self storeInitialMingleDate:0 forScope:scopeCopy error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)hasActiveScopeIndex:(int64_t)index scopeType:(unint64_t)type
{
  switch(type)
  {
    case 3uLL:
      stableIndexVar = [*(&self->_modifiedVariables + 4) stableIndexVar];
      break;
    case 2uLL:
      stableIndexVar = [*(&self->_modifiedVariables + 4) cloudIndexVar];
      break;
    case 1uLL:
      stableIndexVar = [*(&self->_modifiedVariables + 4) localIndexVar];
      break;
    default:
LABEL_12:
      v15 = 0;
      return v15 & 1;
  }

  v7 = stableIndexVar;
  index = [PQLFormatInjection formatInjection:@"%@ = %ld", stableIndexVar, index];

  if (!index)
  {
    goto LABEL_12;
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  v11 = objc_opt_class();
  v12 = *(&self->_base + 4);
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v14 = [pqlConnection cplFetchObjectOfClass:v11 sql:{@"SELECT %@ FROM %@ WHERE %@", v12, mainTable, index}];

  if (v14)
  {
    if (([v14 integerValue] & 0x10) != 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = -1;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

- (void)writeTransactionDidFail
{
  v12.receiver = self;
  v12.super_class = CPLPrequeliteScopeStorage;
  [(CPLPrequeliteStorage *)&v12 writeTransactionDidFail];
  BYTE4(self->_transportGroupClass) = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(&self->_scopeListSyncAnchorVar + 4);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) discardCachedValue];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }

  [*(&self->_noteEndOfResetIfNecessary + 4) discardCachedValue];
  [*(&self->_scopeListSyncAnchorVar + 4) removeAllObjects];
}

- (BOOL)_addScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  scopeType = [scopeCopy scopeType];
  scopeIdentifier = [scopeCopy scopeIdentifier];
  if ([(CPLPrequeliteScopeStorage *)self _scopeTypeSupportsClientSync:scopeType scopeIdentifier:scopeIdentifier])
  {
    v10 = 0x10000;
  }

  else
  {
    v10 = 0;
  }

  [(CPLPrequeliteScopeStorage *)self _minimalPullFromTranportExpirationInterval];
  v12 = v11;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v13 = sub_10013EE4C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [CPLEngineScopeFlagsUpdate descriptionForFlags:v10];
      *buf = 138412546;
      v42 = scopeCopy;
      v43 = 2114;
      v44 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Creating record for %@ with flags %{public}@", buf, 0x16u);
    }
  }

  errorCopy = error;
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  namesInjection = [*(&self->_modifiedVariables + 4) namesInjection];
  featureVersionVar = [*(&self->_transportScopeVar + 4) featureVersionVar];
  v18 = *(&self->_base + 4);
  expirationIntervalVar = [*(&self->_pushToTransportTodoVar + 4) expirationIntervalVar];
  [*(&self->_modifiedVariables + 4) injectionForValues:scopeCopy];
  v20 = v34 = scopeCopy;
  featureVersionVar2 = [*(&self->_transportScopeVar + 4) featureVersionVar];
  bindableValueForDefaultValue = [featureVersionVar2 bindableValueForDefaultValue];
  v23 = [pqlConnection cplExecute:{@"INSERT INTO %@ (%@, %@, %@, %@) VALUES (%@, %@, %ld, %lu)", mainTable, namesInjection, featureVersionVar, v18, expirationIntervalVar, v20, bindableValueForDefaultValue, v10, v12}];

  if (v23)
  {
    v24 = v34;
    scopeIdentifier2 = [v34 scopeIdentifier];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    variables = [*(&self->_stagedScopeIdentifierVar + 4) variables];
    v27 = [variables countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v37;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v37 != v29)
          {
            objc_enumerationMutation(variables);
          }

          v31 = *(*(&v36 + 1) + 8 * i);
          if ([v31 hasCachedValueForIdentifier:scopeIdentifier2])
          {
            [v31 discardCachedValue];
          }
        }

        v28 = [variables countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v28);
    }
  }

  else
  {
    v24 = v34;
    if (errorCopy)
    {
      *errorCopy = [pqlConnection lastError];
    }
  }

  return v23;
}

- (BOOL)forceIdentifyUknownScopesWithError:(id *)error
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  [*(&self->_scopeChangeVar + 4) discardCachedValue];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v8 = *(&self->_scopeChangeVar + 4);
  scopeTypeVar = [*(&self->_modifiedVariables + 4) scopeTypeVar];
  v9 = [pqlConnection cplExecute:@"UPDATE %@ SET %@ = NULL WHERE %@ = %ld"];

  if (v9)
  {
    [pqlConnection changes];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = sub_10013EE4C();
      if (sub_100003424(v10))
      {
        sub_10014ADF8(&_mh_execute_header, v11, v12, "Will try to identify %lld yet unidentified scopes", v13, v14, v15, v16, mainTable, v8, scopeTypeVar, 0, 0);
      }
    }
  }

  else if (error)
  {
    *error = [pqlConnection lastCPLError];
  }

  return v9;
}

- (BOOL)forcePushToTransportForActiveScopesWithError:(id *)error
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  setHasSomethingTodo = [*(&self->_supervisorInfoVar + 4) setHasSomethingTodo];
  v18 = *(&self->_base + 4);
  v9 = [pqlConnection cplExecute:@"UPDATE %@ SET %@ WHERE %@ & %ld = 0"];

  if (v9)
  {
    [pqlConnection changes];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = sub_10013EE4C();
      if (sub_100003424(v10))
      {
        sub_10014ADF8(&_mh_execute_header, v11, v12, "Marked %lld scopes as need to push to transport", v13, v14, v15, v16, mainTable, setHasSomethingTodo, v18, 16, 0);
      }
    }
  }

  else if (error)
  {
    *error = [pqlConnection lastCPLError];
  }

  return v9;
}

- (BOOL)setSyncAnchor:(id)anchor forScope:(id)scope error:(id *)error
{
  anchorCopy = anchor;
  scopeCopy = scope;
  if (anchorCopy)
  {
    stagedSyncAnchorVar = [*(&self->_transportScopeVar + 4) stagedSyncAnchorVar];
    v11 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:stagedSyncAnchorVar scope:scopeCopy];

    if (!v11)
    {
      syncAnchorVar = [*(&self->_transportScopeVar + 4) syncAnchorVar];
      v13 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:syncAnchorVar scope:scopeCopy];

      if (v13 && [anchorCopy isEqual:v13])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v14 = sub_10013EE4C();
          if (sub_100003424(v14))
          {
            scopeIdentifier = [scopeCopy scopeIdentifier];
            sub_10000AF90();
            sub_100013990();
            _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
          }
        }

        goto LABEL_25;
      }
    }
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v21 = sub_10013EE4C();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      cplSyncAnchorDescription = [anchorCopy cplSyncAnchorDescription];
      scopeIdentifier2 = [scopeCopy scopeIdentifier];
      *v34 = 138412546;
      *&v34[4] = cplSyncAnchorDescription;
      sub_1000033B4();
      *&v34[14] = v24;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Storing staged sync anchor %@ for %@", v34, 0x16u);
    }
  }

  stagedSyncAnchorVar2 = [*(&self->_transportScopeVar + 4) stagedSyncAnchorVar];
  v26 = [(CPLPrequeliteScopeStorage *)self _storeValue:anchorCopy forColumnVariable:stagedSyncAnchorVar2 scope:scopeCopy error:error];

  if (v26)
  {
    v27 = *(&self->_noteEndOfResetIfNecessary + 4);
    if (anchorCopy)
    {
      [v27 setValue:&__kCFBooleanTrue];
    }

    else
    {
      [v27 discardCachedValue];
    }

LABEL_25:
    v32 = 1;
    goto LABEL_26;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v28 = sub_10013EE4C();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      cplSyncAnchorDescription2 = [anchorCopy cplSyncAnchorDescription];
      v30 = *error;
      sub_10000AF90();
      *&v34[12] = 2112;
      *&v34[14] = scopeCopy;
      v35 = 2112;
      v36 = v31;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Unable to store sync anchor %@ for %@: %@", v34, 0x20u);
    }
  }

  v32 = 0;
LABEL_26:

  return v32;
}

- (BOOL)resetSyncAnchorForScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10013EE4C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1000139A0();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Resetting sync anchor for %@", v12, 0xCu);
    }
  }

  stagedSyncAnchorVar = [*(&self->_transportScopeVar + 4) stagedSyncAnchorVar];
  v8 = sub_10014ADD0(stagedSyncAnchorVar);

  if (v8)
  {
    syncAnchorVar = [*(&self->_transportScopeVar + 4) syncAnchorVar];
    v10 = sub_10014ADD0(syncAnchorVar);
  }

  else
  {
    v10 = 0;
  }

  [*(&self->_noteEndOfResetIfNecessary + 4) discardCachedValue];

  return v10;
}

- (void)_markFirstSyncOfPrimaryAsSuccessfulWithScope:(id)scope
{
  scopeCopy = scope;
  syncAnchorVar = [*(&self->_transportScopeVar + 4) syncAnchorVar];
  v6 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:syncAnchorVar scope:scopeCopy];

  if (v6)
  {
    syncAnchorVar = [(CPLPrequeliteScopeStorage *)self initialSyncDateForScope:scopeCopy];
    if (!syncAnchorVar)
    {
      if (_CPLSilentLogging)
      {
LABEL_21:

        goto LABEL_22;
      }

      engineLibrary = sub_10013EE4C();
      if (os_log_type_enabled(engineLibrary, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, engineLibrary, OS_LOG_TYPE_DEFAULT, "Failed to set initial sync date for status (no initial sync date)", v18, 2u);
      }

LABEL_20:

      goto LABEL_21;
    }

    engineLibrary = [(CPLPrequeliteStorage *)self engineLibrary];
    initialSyncDate = [engineLibrary initialSyncDate];
    if (initialSyncDate)
    {
      if (_CPLSilentLogging)
      {
LABEL_19:

        goto LABEL_20;
      }

      engineLibrary2 = sub_10013EE4C();
      if (os_log_type_enabled(engineLibrary2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, engineLibrary2, OS_LOG_TYPE_DEFAULT, "Failed to set initial sync date for status (initial sync date has already been set)", buf, 2u);
      }
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v16 = sub_10013EE4C();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Updating initial sync date in global status now", v20, 2u);
        }
      }

      engineLibrary2 = [(CPLPrequeliteStorage *)self engineLibrary];
      v17 = +[NSDate date];
      [engineLibrary2 updateInitialSyncDate:v17];
    }

    goto LABEL_19;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = sub_10013EE4C();
    if (sub_100003424(v10))
    {
      sub_100013990();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
    }

    goto LABEL_21;
  }

LABEL_22:
}

- (BOOL)bumpPullFromTransportExpirationIntervalWithError:(id *)error
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  [(CPLPrequeliteScopeStorage *)self _minimalPullFromTranportExpirationInterval];
  v8 = v7;
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  expirationIntervalVar = [*(&self->_pushToTransportTodoVar + 4) expirationIntervalVar];
  expirationIntervalVar2 = [*(&self->_pushToTransportTodoVar + 4) expirationIntervalVar];
  v12 = [pqlConnection cplExecute:{@"UPDATE %@ SET %@ = %lu WHERE %@ < %lu", mainTable, expirationIntervalVar, v8, expirationIntervalVar2, v8}];

  if (v12)
  {
    changes = [pqlConnection changes];
    if (changes >= 1 && (_CPLSilentLogging & 1) == 0)
    {
      v14 = changes;
      v15 = sub_10013EE4C();
      if (sub_100003424(v15))
      {
        v16 = [CPLDateFormatter stringForTimeInterval:v8];
        *buf = 138412546;
        v19 = v16;
        v20 = 2048;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, error, OS_LOG_TYPE_DEFAULT, "Bumped pull-from-transport expiration interval to %@ for %lld scopes", buf, 0x16u);
      }
    }
  }

  else if (error)
  {
    *error = [pqlConnection lastCPLError];
  }

  return v12;
}

@end