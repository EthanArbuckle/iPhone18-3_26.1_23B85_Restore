@interface CPLPrequeliteScopeStorage
+ (BOOL)_scopeType:(int64_t)a3 supportsClientSyncWithOptions:(unint64_t)a4;
+ (id)_supportedScopeTypesWithOptions:(unint64_t)a3;
- (BOOL)_addScope:(id)a3 error:(id *)a4;
- (BOOL)_createInitialPrimarySyncScope;
- (BOOL)_scopeTypeSupportsClientSync:(int64_t)a3 scopeIdentifier:(id)a4;
- (BOOL)_setScope:(id)a3 hasCompletedTaskItem:(int64_t)a4 task:(id)a5 error:(id *)a6;
- (BOOL)_setScope:(id)a3 hasTaskTodo:(id)a4 error:(id *)a5;
- (BOOL)_storeLibraryInfo:(id)a3 forScope:(id)a4 libraryInfoHasBeenUpdated:(BOOL *)a5 error:(id *)a6;
- (BOOL)_storeTransportGroup:(id)a3 inColumnVariable:(id)a4 forScope:(id)a5 error:(id *)a6;
- (BOOL)_storeValue:(id)a3 forColumnVariable:(id)a4 scope:(id)a5 error:(id *)a6;
- (BOOL)_transferValueFromVariable:(id)a3 type:(id)a4 ofStorage:(id)a5 toColumnVariable:(id)a6 transformer:(id)a7;
- (BOOL)allActiveScopesHasFinishedSyncs;
- (BOOL)bumpCloudIndexForScopeWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)bumpLocalIndexForScopeWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)bumpPullFromTransportExpirationIntervalWithError:(id *)a3;
- (BOOL)bumpStableIndexForScopeWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)commitSyncAnchorForScope:(id)a3 error:(id *)a4;
- (BOOL)deleteScopeWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)didDropSomeRecordsForScope:(id)a3;
- (BOOL)discardStagedSyncAnchorForScope:(id)a3 error:(id *)a4;
- (BOOL)discardStagedSyncAnchorWithScopeFilter:(id)a3 error:(id *)a4;
- (BOOL)doScopesNeedMetadataSync:(id)a3;
- (BOOL)doesScopeNeedToBePulledByClient:(id)a3;
- (BOOL)doesScopeNeedToPullChangesFromTransport:(id)a3;
- (BOOL)doesScopeNeedToPushChangesToTransport:(id)a3;
- (BOOL)doesScopeNeedToUpdateTransport:(id)a3;
- (BOOL)doesScopeNeedToUploadComputeState:(id)a3;
- (BOOL)doesScopeSupportToBePulledByClient:(id)a3;
- (BOOL)forceIdentifyUknownScopesWithError:(id *)a3;
- (BOOL)forcePushToTransportForActiveScopesWithError:(id *)a3;
- (BOOL)hasActiveScopeIndex:(int64_t)a3 scopeType:(unint64_t)a4;
- (BOOL)hasFinishedAFullSyncForScope:(id)a3;
- (BOOL)hasScopeFetchedInitialSyncAnchor:(id)a3;
- (BOOL)hasScopesNeedingToPullChangesFromTransport;
- (BOOL)hasScopesNeedingToPushChangesToTransport;
- (BOOL)hasScopesNeedingToPushHighPriorityChangesToTransport;
- (BOOL)hasScopesNeedingToUpdateTransport;
- (BOOL)hasScopesNeedingToUploadComputeState;
- (BOOL)hasStagedSyncAnchorForScope:(id)a3;
- (BOOL)hasStagedSyncAnchors;
- (BOOL)initializeStorage;
- (BOOL)openWithError:(id *)a3;
- (BOOL)resetSyncAnchorForScope:(id)a3 error:(id *)a4;
- (BOOL)resetSyncStateForScope:(id)a3 error:(id *)a4;
- (BOOL)setAllScopesHasChangesToPullFromTransportWithError:(id *)a3;
- (BOOL)setClassNameOfRecordsForInitialQuery:(id)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)setDidDropSomeRecordsForScope:(id)a3 error:(id *)a4;
- (BOOL)setHasUpdatedScope:(id)a3 fromTransportWithError:(id *)a4;
- (BOOL)setInitialDownloadDate:(id)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)setInitialSyncAnchor:(id)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)setPullFromTransportExpirationInterval:(double)a3 scope:(id)a4 error:(id *)a5;
- (BOOL)setScopeType:(int64_t)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)setSyncAnchor:(id)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)storeActivationDate:(id)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)storeBusyState:(int64_t)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)storeDownloadTransportGroup:(id)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)storeEstimatedSize:(unint64_t)a3 estimatedAssetCount:(unint64_t)a4 forScope:(id)a5 error:(id *)a6;
- (BOOL)storeLastDateOfClearedPushRepository:(id)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)storeRewindSyncAnchors:(id)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)storeScopeChange:(id)a3 forScope:(id)a4 scopeChangeHasBeenUpdated:(BOOL *)a5 error:(id *)a6;
- (BOOL)storeScopeListSyncAnchor:(id)a3 error:(id *)a4;
- (BOOL)storeSupervisorInfo:(id)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)storeSupportedFeatureVersionInLastSync:(unint64_t)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)storeTransientSyncAnchor:(id)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)storeUploadTransportGroup:(id)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)updateFlags:(id)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)upgradeScopesWithNewLibraryOptions:(unint64_t)a3 error:(id *)a4;
- (BOOL)upgradeStorageToVersion:(int64_t)a3;
- (CPLPrequeliteScopeStorage)initWithAbstractObject:(id)a3;
- (Class)_transportGroupClass;
- (double)_minimalPullFromTranportExpirationInterval;
- (id)_injectionForFilter:(id)a3;
- (id)_injectionForScopesAllowingPullFromTransport;
- (id)_libraryInfoForScope:(id)a3;
- (id)_librarySateForScope:(id)a3;
- (id)_scopeWithQuery:(id)a3;
- (id)_taskItemCompletionDateForScope:(id)a3 task:(id)a4;
- (id)_transportGroupForColumnVariable:(id)a3 forScope:(id)a4;
- (id)_valueForColumnVariable:(id)a3 scope:(id)a4;
- (id)addScopeWithIdentifier:(id)a3 scopeType:(int64_t)a4 error:(id *)a5;
- (id)classNameOfRecordsForInitialQueryForScope:(id)a3;
- (id)creationDateForScope:(id)a3;
- (id)downloadTransportGroupForScope:(id)a3;
- (id)enumeratorForDeletedStagedScopes;
- (id)enumeratorForScopesIncludeInactive:(BOOL)a3;
- (id)enumeratorForScopesNeedingToBePulledByClientWithMaximumCount:(unint64_t)a3;
- (id)enumeratorForScopesNeedingToPullChangesFromTransport;
- (id)enumeratorForScopesNeedingToPushChangesToTransport;
- (id)enumeratorForScopesNeedingToPushHighPriorityChangesToTransport;
- (id)enumeratorForScopesNeedingToUpdateTransport;
- (id)enumeratorForScopesNeedingToUploadComputeState;
- (id)enumeratorForScopesNeedingUpdateFromTransport;
- (id)enumeratorForScopesWithMingling;
- (id)filterForExcludedScopeIdentifiers:(id)a3;
- (id)filterForIncludedScopeIdentifiers:(id)a3;
- (id)flagsForScope:(id)a3;
- (id)initialSyncAnchorForScope:(id)a3;
- (id)lastDateOfClearedPushRepositoryForScope:(id)a3;
- (id)primaryScope;
- (id)rewindSyncAnchorsForScope:(id)a3;
- (id)scopeChangeForScope:(id)a3;
- (id)scopeWithCloudIndex:(int64_t)a3;
- (id)scopeWithIdentifier:(id)a3;
- (id)scopeWithLocalIndex:(int64_t)a3;
- (id)scopeWithStableIndex:(int64_t)a3;
- (id)stagingScopeForScope:(id)a3;
- (id)supervisorInfoForScope:(id)a3;
- (id)syncAnchorForScope:(id)a3 isCommitted:(BOOL *)a4;
- (id)transientSyncAnchorForScope:(id)a3;
- (id)uploadTransportGroupForScope:(id)a3;
- (id)validCloudIndexes;
- (id)validLocalIndexes;
- (int64_t)_bumpIndexWithError:(id *)a3;
- (int64_t)_taskItemForScope:(id)a3 task:(id)a4;
- (int64_t)busyStateForScope:(id)a3;
- (unint64_t)estimatedAssetCountForScope:(id)a3;
- (unint64_t)estimatedSizeForScope:(id)a3;
- (unint64_t)supportedFeatureVersionInLastSyncForScope:(id)a3;
- (void)_cacheValue:(id)a3 forColumnVariable:(id)a4 scope:(id)a5;
- (void)_discardCachedValuesForGroup:(id)a3;
- (void)_fillScopeTypeOrder:(int64_t)a3[9] withOrderOfScopeTypes:(id)a4 name:(id)a5;
- (void)_getLocalIndexes:(id *)a3 cloudIndexes:(id *)a4 forScopeIdentifiers:(id)a5;
- (void)_markFirstSyncOfPrimaryAsSuccessfulWithScope:(id)a3;
- (void)_noteEndOfResetIfNecessary;
- (void)writeTransactionDidFail;
- (void)writeTransactionDidSucceed;
@end

@implementation CPLPrequeliteScopeStorage

- (id)enumeratorForScopesNeedingToUpdateTransport
{
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [v3 pqlConnection];

  v5 = [*(&self->_modifiedVariables + 4) namesInjection];
  v6 = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [*(&self->_clientNeedsToPullTodoVar + 4) hasSomethingTodo];
  v8 = [v4 cplFetch:{@"SELECT %@ FROM %@ WHERE %@", v5, v6, v7}];

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
  v4 = [v3 BOOLValue];

  return v4;
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

+ (BOOL)_scopeType:(int64_t)a3 supportsClientSyncWithOptions:(unint64_t)a4
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
  v8[5] = a3;
  v8[6] = a4;
  v8[4] = &v9;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];

  LOBYTE(v6) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

+ (id)_supportedScopeTypesWithOptions:(unint64_t)a3
{
  v4 = objc_alloc_init(NSMutableIndexSet);
  v5 = sub_10013EF70();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013F10C;
  v8[3] = &unk_10027B040;
  v10 = a3;
  v6 = v4;
  v9 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

- (CPLPrequeliteScopeStorage)initWithAbstractObject:(id)a3
{
  v87.receiver = self;
  v87.super_class = CPLPrequeliteScopeStorage;
  v3 = [(CPLPrequeliteStorage *)&v87 initWithAbstractObject:a3];
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

- (BOOL)_scopeTypeSupportsClientSync:(int64_t)a3 scopeIdentifier:(id)a4
{
  v7 = a4;
  v8 = [(CPLPrequeliteStorage *)self pqStore];
  v9 = [v8 libraryOptions];

  v10 = [objc_opt_class() _scopeType:a3 supportsClientSyncWithOptions:v9];
  if (v10 && (v9 & 2) == 0)
  {
    if (a3 > 9)
    {
      goto LABEL_12;
    }

    if (((1 << a3) & 0x30) != 0)
    {
      v11 = [(CPLPrequeliteScopeStorage *)self abstractObject];
      v12 = [v11 mainScopeIdentifier];
      v13 = CPLSharingScopePrefixForScopeWithIdentifier();
      goto LABEL_8;
    }

    if (((1 << a3) & 0x180) != 0)
    {
      v11 = [(CPLPrequeliteScopeStorage *)self abstractObject];
      v12 = [v11 mainScopeIdentifier];
      v13 = CPLCollectionSharePrefixForScopeWithIdentifier();
LABEL_8:
      v14 = v13;
      LOBYTE(v10) = [v7 hasPrefix:v13];

LABEL_9:
      goto LABEL_10;
    }

    if (((1 << a3) & 0x240) == 0)
    {
LABEL_12:
      if (a3 == 1)
      {
        v11 = [(CPLPrequeliteScopeStorage *)self abstractObject];
        v12 = [v11 mainScopeIdentifier];
        LOBYTE(v10) = [v7 isEqualToString:v12];
        goto LABEL_9;
      }

      if (a3)
      {
        LOBYTE(v10) = 1;
        goto LABEL_10;
      }
    }

    sub_1001B70E0(a3, a2, self);
  }

LABEL_10:

  return v10;
}

- (double)_minimalPullFromTranportExpirationInterval
{
  v2 = [(CPLPrequeliteStorage *)self pqStore];
  v3 = [v2 libraryOptions] == 0;

  return dbl_10024B8E0[v3];
}

- (BOOL)_createInitialPrimarySyncScope
{
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [v3 libraryCreationDate];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = +[NSDate date];
  }

  v7 = v6;

  v8 = [CPLEngineScope alloc];
  v9 = [(CPLPrequeliteStorage *)self mainScopeIdentifier];
  v10 = [v8 initWithScopeIdentifier:v9 scopeType:1];

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

  v6 = [(CPLPrequeliteScopeStorage *)self abstractObject];
  v7 = [v6 engineStore];
  v8 = [v7 libraryOptions];

  if ((v8 & 1) == 0)
  {
    sub_1001B7184(self, &v11);
    return v11;
  }

  return v5;
}

- (BOOL)_transferValueFromVariable:(id)a3 type:(id)a4 ofStorage:(id)a5 toColumnVariable:(id)a6 transformer:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = objc_autoreleasePoolPush();
  v18 = [(CPLPrequeliteStorage *)self pqStore];
  v19 = [(CPLPrequeliteStorage *)self shouldUpgradeSchema];
  v20 = [v18 pqlConnection];
  if (!v19 || [(CPLPrequeliteStorage *)self addColumnVariable:v15 error:0])
  {
    if (v14)
    {
      v43 = [v14 variableWithName:v12 type:v13];
      [v14 valueForVariable:?];
    }

    else
    {
      v43 = [CPLPrequeliteVariable variableWithName:v12 type:v13];
      [v18 valueForGlobalVariable:?];
    }
    v21 = ;
    v44 = v21;
    if (v16)
    {
      v22 = v16[2](v16, v21);
    }

    else
    {
      v22 = v21;
    }

    v23 = v22;
    if (v22)
    {
      v42 = v14;
      v40 = v18;
      v41 = v17;
      v24 = v13;
      v25 = v12;
      [(CPLPrequeliteStorage *)self mainTable];
      v27 = v26 = v20;
      v28 = [*(&self->_modifiedVariables + 4) scopeIdentifierVar];
      v29 = [(CPLPrequeliteStorage *)self mainScopeIdentifier];
      v30 = [v26 cplExecute:{@"UPDATE %@ SET %@ = %@ WHERE %@ = %@", v27, v15, v23, v28, v29}];

      if (v30)
      {
        v13 = v24;
        v20 = v26;
        if ([v26 changes] < 1)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v31 = sub_10013EE4C();
            v12 = v25;
            v18 = v40;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v38 = [v43 variableName];
              *buf = 138412546;
              v46 = v38;
              v47 = 2112;
              v48 = v44;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Discarded value of global %@ (%@) - no changes were applied", buf, 0x16u);

              v20 = v26;
            }

            v17 = v41;
            goto LABEL_31;
          }
        }

        else if ((_CPLSilentLogging & 1) == 0)
        {
          v31 = sub_10013EE4C();
          v12 = v25;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [v43 variableName];
            v33 = [v15 variableName];
            *buf = 138413058;
            v46 = v32;
            v47 = 2112;
            v48 = v44;
            v49 = 2112;
            v50 = v23;
            v51 = 2112;
            v52 = v33;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Transferred value of global %@ (%@) to column %@ (%@) in scope storage", buf, 0x2Au);

            v13 = v24;
            v20 = v26;
          }

          v18 = v40;
          v17 = v41;
          goto LABEL_31;
        }

        v37 = 1;
        v12 = v25;
        v17 = v41;
        v18 = v40;
      }

      else
      {
        v37 = 0;
        v12 = v25;
        v13 = v24;
        v17 = v41;
        v18 = v40;
        v20 = v26;
      }

      v14 = v42;
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
          v42 = v14;
          v35 = v34 = v20;
          *buf = 138412546;
          v46 = v35;
          v47 = 2112;
          v48 = v44;
          v36 = "Discarded value of global %@ (%@)";
LABEL_25:
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v36, buf, 0x16u);

          v20 = v34;
LABEL_31:
          v14 = v42;
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
        v42 = v14;
        v35 = v34 = v20;
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

- (BOOL)upgradeStorageToVersion:(int64_t)a3
{
  LOBYTE(v4) = 1;
  if (a3 > 63)
  {
    if (a3 <= 78)
    {
      if (a3 > 70)
      {
        if (a3 == 71)
        {
          if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
          {
            return v4;
          }

          v5 = [*(&self->_transportScopeVar + 4) rewindSyncAnchorsVar];
        }

        else
        {
          if (a3 != 77 || ![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
          {
            return v4;
          }

          v5 = [*(&self->_transportScopeVar + 4) busyStateVar];
        }

        goto LABEL_111;
      }

      if (a3 != 64)
      {
        if (a3 != 70 || ![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
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

    else if (a3 <= 87)
    {
      if (a3 != 79)
      {
        if (a3 == 85)
        {
          v84 = [(CPLPrequeliteScopeStorage *)self abstractObject];
          v85 = [v84 engineStore];
          v86 = [v85 engineLibrary];

          [v86 setUpgradeSuggestedToAccessAllPhotos:0];
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
      if (a3 == 88)
      {
        if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
        {
          return v4;
        }

        v97 = *(&self->_updateTransportTodoVar + 4);

        return [(CPLPrequeliteStorage *)self addColumnVariableGroup:v97 error:0];
      }

      if (a3 == 90)
      {
        if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
        {
          return v4;
        }

        v6 = 156;
      }

      else
      {
        if (a3 != 92 || ![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
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

  if (a3 > 45)
  {
    if (a3 > 53)
    {
      if (a3 == 54)
      {
        if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
        {
          return v4;
        }

        return [(CPLPrequeliteScopeStorage *)self bumpPullFromTransportExpirationIntervalWithError:0];
      }

      if (a3 != 60)
      {
        if (a3 != 62 || ![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
        {
          return v4;
        }

        v5 = [*(&self->_transportScopeVar + 4) lastClearedPushVar];
LABEL_111:
        v90 = v5;
        v91 = [(CPLPrequeliteStorage *)self addColumnVariable:v5 error:0];

        return v91;
      }

      if (!-[CPLPrequeliteStorage shouldUpgradeSchema](self, "shouldUpgradeSchema") || ([*(&self->_transportScopeVar + 4) hasFetchedInitialSyncAnchorVar], v92 = objc_claimAutoreleasedReturnValue(), v93 = -[CPLPrequeliteStorage addColumnVariable:error:](self, "addColumnVariable:error:", v92, 0), v92, v93))
      {
        v94 = [(CPLPrequeliteStorage *)self pqStore];
        v7 = [v94 pqlConnection];

        v95 = [(CPLPrequeliteStorage *)self mainTable];
        v96 = [*(&self->_transportScopeVar + 4) hasFetchedInitialSyncAnchorVar];
        v4 = [v7 cplExecute:{@"UPDATE %@ SET %@ = %d", v95, v96, 1}];

        if (v4 && [v7 changes])
        {
          sub_1001B7208();
        }

        goto LABEL_158;
      }

LABEL_117:
      LOBYTE(v4) = 0;
      return v4;
    }

    if (a3 != 46)
    {
      if (a3 != 47 || ![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
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

      v98 = [*(&self->_modifiedVariables + 4) scopeTypeVar];
      v99 = [(CPLPrequeliteStorage *)self addColumnVariable:v98 error:0];

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
    v101 = [(CPLPrequeliteStorage *)self pqStore];
    v7 = [v101 pqlConnection];

    if (v99)
    {
      v102 = [(CPLPrequeliteStorage *)self mainTable];
      v103 = [*(&self->_supervisorInfoVar + 4) setHasSomethingTodo];
      v4 = [v7 cplExecute:{@"UPDATE %@ SET %@", v102, v103}];

      if (!v4)
      {
LABEL_158:

        return v4;
      }

      v104 = [(CPLPrequeliteStorage *)self mainTable];
      v105 = [*(&self->_modifiedVariables + 4) scopeTypeVar];
      v106 = [_CPLPrequeliteScopeIsEqual alloc];
      v107 = [(CPLPrequeliteStorage *)self mainScopeIdentifier];
      v108 = [(_CPLPrequeliteScopeIsEqual *)v106 initWithIdentifier:v107];
      v109 = [v7 cplExecute:{@"UPDATE %@ SET %@ = %ld WHERE %@", v104, v105, 1, v108}];

      if (v109)
      {
        v8 = [(CPLPrequeliteStorage *)self mainTable];
        v9 = [*(&self->_pullFromTransportTodoVar + 4) setHasSomethingTodo];
        v89 = [v7 cplExecute:{@"UPDATE %@ SET %@ WHERE %@ & %ld = %ld", v8, v9, *(&self->_base + 4), 4, 4}];
LABEL_145:
        LOBYTE(v4) = v89;
LABEL_156:

        goto LABEL_157;
      }
    }

    LOBYTE(v4) = 0;
    goto LABEL_158;
  }

  if (a3 <= 41)
  {
    if (a3 == 40)
    {

      return [(CPLPrequeliteStorage *)self createStorage];
    }

    if (a3 != 41)
    {
      return v4;
    }

    v7 = [(CPLPrequeliteStorage *)self pqStore];
    v8 = [v7 pqlConnection];
    v9 = [v7 abstractObject];
    v10 = +[CPLPrequeliteType dataType];
    v11 = [v7 transientPullRepository];
    v12 = [*(&self->_transportScopeVar + 4) transientSyncAnchorVar];
    v13 = [(CPLPrequeliteScopeStorage *)self _transferValueFromVariable:@"syncAnchor" type:v10 ofStorage:v11 toColumnVariable:v12 transformer:&stru_10027B080];

    if (!v13)
    {
      goto LABEL_155;
    }

    v14 = +[CPLPrequeliteType dataType];
    v15 = [v7 cloudCache];
    v16 = [*(&self->_transportScopeVar + 4) syncAnchorVar];
    v17 = [(CPLPrequeliteScopeStorage *)self _transferValueFromVariable:@"syncAnchor" type:v14 ofStorage:v15 toColumnVariable:v16 transformer:&stru_10027B0A0];

    if (!v17)
    {
      goto LABEL_155;
    }

    v18 = +[CPLPrequeliteType dataType];
    v19 = [v7 cloudCache];
    v20 = [*(&self->_transportScopeVar + 4) stagedSyncAnchorVar];
    v21 = [(CPLPrequeliteScopeStorage *)self _transferValueFromVariable:@"stagedSyncAnchor" type:v18 ofStorage:v19 toColumnVariable:v20 transformer:&stru_10027B0C0];

    if (!v21)
    {
      goto LABEL_155;
    }

    v22 = +[CPLPrequeliteType dataType];
    v23 = [v7 cloudCache];
    v24 = [*(&self->_transportScopeVar + 4) initialSyncAnchorVar];
    v25 = [(CPLPrequeliteScopeStorage *)self _transferValueFromVariable:@"initialSyncAnchor" type:v22 ofStorage:v23 toColumnVariable:v24 transformer:&stru_10027B0E0];

    if (!v25)
    {
      goto LABEL_155;
    }

    v26 = +[CPLPrequeliteType stringType];
    v27 = [v7 cloudCache];
    v28 = [*(&self->_transportScopeVar + 4) classForInitialQueryVar];
    v29 = [(CPLPrequeliteScopeStorage *)self _transferValueFromVariable:@"classForInitialQuery" type:v26 ofStorage:v27 toColumnVariable:v28 transformer:&stru_10027B100];

    if (!v29)
    {
      goto LABEL_155;
    }

    v30 = +[CPLPrequeliteType dataType];
    v31 = [v7 cloudCache];
    v32 = [*(&self->_transportScopeVar + 4) uploadTransportGroupVar];
    v33 = [(CPLPrequeliteScopeStorage *)self _transferValueFromVariable:@"uploadTransportGroup" type:v30 ofStorage:v31 toColumnVariable:v32 transformer:&stru_10027B120];

    if (!v33)
    {
      goto LABEL_155;
    }

    v34 = +[CPLPrequeliteType dataType];
    v35 = [v7 cloudCache];
    v36 = [*(&self->_transportScopeVar + 4) downloadTransportGroupVar];
    v37 = [(CPLPrequeliteScopeStorage *)self _transferValueFromVariable:@"downloadTransportGroup" type:v34 ofStorage:v35 toColumnVariable:v36 transformer:&stru_10027B140];

    if (!v37)
    {
      goto LABEL_155;
    }

    v38 = +[CPLPrequeliteType integerType];
    v39 = [v7 clientCache];
    v40 = [(CPLPrequeliteScopeStorage *)self _transferValueFromVariable:@"estimatedLocalLibrarySize" type:v38 ofStorage:v39 toColumnVariable:*(&self->_syncState + 4) transformer:&stru_10027B160];

    if (!v40)
    {
      goto LABEL_155;
    }

    v41 = +[CPLPrequeliteType integerType];
    v42 = [v7 clientCache];
    v43 = [(CPLPrequeliteScopeStorage *)self _transferValueFromVariable:@"estimatedLocalLibraryAssetCount" type:v41 ofStorage:v42 toColumnVariable:*(&self->_estimatedSizeVar + 4) transformer:&stru_10027B180];

    if (!v43)
    {
      goto LABEL_155;
    }

    if ([(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      v44 = [(CPLPrequeliteStorage *)self mainTable];
      v45 = *(&self->_estimatedAssetCountVar + 4);
      v46 = [v45 columnDefinition];
      LODWORD(v45) = [v8 cplExecute:{@"ALTER TABLE %@ ADD COLUMN %@ %@ DEFAULT NULL", v44, v45, v46}];

      if (!v45)
      {
        goto LABEL_155;
      }
    }

    v47 = [(CPLPrequeliteStorage *)self engineLibrary];
    v48 = [v47 initialSyncDate];

    if (v48)
    {
      v116 = [(CPLPrequeliteStorage *)self mainTable];
      obja = *(&self->_estimatedAssetCountVar + 4);
      [v48 timeIntervalSinceReferenceDate];
      v50 = v49;
      v51 = [*(&self->_modifiedVariables + 4) scopeIdentifierVar];
      v52 = [(CPLPrequeliteStorage *)self mainScopeIdentifier];
      v53 = [v8 cplExecute:{@"UPDATE %@ SET %@ = %f WHERE %@ = %@", v116, obja, v50, v51, v52}];

      if (!v53)
      {

        goto LABEL_155;
      }

      sub_1001B72A8(v8, v48);
    }

    v110 = +[CPLPrequeliteType stringType];
    v111 = *(&self->_lastLibraryInfoUpdateVar + 4);
    v124[0] = _NSConcreteStackBlock;
    v124[1] = 3221225472;
    v124[2] = sub_10014181C;
    v124[3] = &unk_10027B1A8;
    v125 = v9;
    LODWORD(v111) = [(CPLPrequeliteScopeStorage *)self _transferValueFromVariable:@"zoneName" type:v110 ofStorage:0 toColumnVariable:v111 transformer:v124];

    if (v111)
    {
      v112 = +[CPLPrequeliteType integerType];
      v113 = [*(&self->_transportScopeVar + 4) featureVersionVar];
      LOBYTE(v4) = [(CPLPrequeliteScopeStorage *)self _transferValueFromVariable:@"featureVersion" type:v112 ofStorage:0 toColumnVariable:v113 transformer:&stru_10027B1C8];

      goto LABEL_156;
    }

LABEL_155:
    LOBYTE(v4) = 0;
    goto LABEL_156;
  }

  if (a3 == 42)
  {
    if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      return v4;
    }

    v87 = +[CPLPrequeliteType integerType];
    v7 = [CPLPrequeliteVariable variableWithName:@"nextIndex" defaultValue:&off_10028EF20 type:v87];

    v88 = [(CPLPrequeliteStorage *)self pqStore];
    v8 = [v88 valueForGlobalVariable:v7];

    if (![(CPLPrequeliteStorage *)self createVariable:*(&self->super._shouldUpgradeSchema + 1) defaultValue:v8 error:0])
    {
      LOBYTE(v4) = 0;
LABEL_157:

      goto LABEL_158;
    }

    v9 = [*(&self->_modifiedVariables + 4) scopeIdentifierVar];
    v89 = [(CPLPrequeliteStorage *)self createIndexOnColumnVariable:v9 error:0];
    goto LABEL_145;
  }

  if (a3 != 43)
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

    v56 = [*(&self->_transportScopeVar + 4) droppedSomeRecordsVar];
    v57 = [(CPLPrequeliteStorage *)self addColumnVariable:v56 error:0];

    if (!v57)
    {
      goto LABEL_117;
    }
  }

  v58 = [(CPLPrequeliteScopeStorage *)self abstractObject];
  v59 = [v58 engineStore];
  v60 = [v59 engineLibrary];

  v117 = v60;
  v114 = [v60 transport];
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
      v66 = [v65 scopeIdentifier];
      v67 = [(CPLPrequeliteScopeStorage *)self flagsForScope:v65];
      v68 = [(CPLPrequeliteStorage *)self mainScopeIdentifier];
      v69 = [v66 isEqualToString:v68];

      if (!v69)
      {
        v72 = [(CPLPrequeliteScopeStorage *)self transportScopeForScope:v65];
        if (v72)
        {
          [v114 upgradeFlags:v67 fromTransportScope:v72];
        }

        goto LABEL_76;
      }

      v70 = [v117 isExceedingQuota];
      v71 = [v117 iCloudLibraryHasBeenWiped];
      v72 = [v117 exitDeleteTime];
      if (v71)
      {
        [v67 setValue:1 forFlag:4];
      }

      v73 = v63;
      if (v70)
      {
        [v67 setValue:1 forFlag:2];
      }

      if (v72)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v74 = sub_10013EE4C();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            v75 = [v65 scopeIdentifier];
            v76 = [CPLDateFormatter stringFromDateAgo:v72 now:0];
            *buf = 138412546;
            v127 = v75;
            v128 = 2112;
            v129 = v76;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Setting delete date for %@ to %@", buf, 0x16u);
          }
        }

        [v67 setValue:1 forFlag:8];
        if (!-[CPLPrequeliteScopeStorage setDeleteDate:forScope:error:](self, "setDeleteDate:forScope:error:", v72, v65, 0) || ([v72 dateByAddingTimeInterval:-2592000.0], v77 = objc_claimAutoreleasedReturnValue(), v78 = -[CPLPrequeliteScopeStorage setDisabledDate:forScope:error:](self, "setDisabledDate:forScope:error:", v77, v65, 0), v77, !v78))
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
            v81 = [v65 scopeIdentifier];
            *buf = 138412546;
            v127 = v81;
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

- (BOOL)upgradeScopesWithNewLibraryOptions:(unint64_t)a3 error:(id *)a4
{
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v4 = 1;
  v44 = 1;
  if (a3)
  {
    v6 = a3;
    v8 = [objc_opt_class() _supportedScopeTypesWithOptions:a3];
    v9 = [(CPLPrequeliteStorage *)self pqStore];
    v10 = [v9 pqlConnection];

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
    v11 = v10;
    v35 = v11;
    v36 = self;
    v38 = &v39;
    [v8 enumerateIndexesUsingBlock:v34];
    if (v42[3])
    {
      if (*(v40[0] + 24) >= 1)
      {
        sub_1001B73A8(v40);
      }
    }

    else if (a4)
    {
      *a4 = [v11 lastCPLError];
    }

    v12 = *(v42 + 24);
    if (v12 == 1)
    {
      v12 = [(CPLPrequeliteScopeStorage *)self bumpPullFromTransportExpirationIntervalWithError:a4];
      *(v42 + 24) = v12;
    }

    if ((v6 & 0x400) != 0 && v12)
    {
      v13 = [(CPLPrequeliteStorage *)self pqStore];
      v14 = [v13 pqlConnection];

      v15 = [*(&self->_modifiedVariables + 4) namesInjection];
      v16 = [(CPLPrequeliteStorage *)self mainTable];
      v17 = [v14 cplFetch:{@"SELECT %@ FROM %@ WHERE (%@ & %ld) = %ld", v15, v16, *(&self->_base + 4), 65552, 65552}];
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
          v23 = v14;
          v24 = 0;
          v25 = v21 + 1;
          v21 += v20;
          do
          {
            if (*v30 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v26 = [(CPLPrequeliteScopeStorage *)self setScopeNeedsUpdateFromTransport:*(*(&v29 + 1) + 8 * v24) error:a4];
            *(v42 + 24) = v26;
            if ((v26 & 1) == 0)
            {
              v14 = v23;
              goto LABEL_21;
            }

            v24 = v24 + 1;
            ++v25;
          }

          while (v20 != v24);
          v20 = [v19 countByEnumeratingWithState:&v29 objects:v45 count:16];
          v14 = v23;
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

- (BOOL)openWithError:(id *)a3
{
  v8.receiver = self;
  v8.super_class = CPLPrequeliteScopeStorage;
  v4 = [(CPLPrequeliteStorage *)&v8 openWithError:a3];
  if (v4)
  {
    v5 = [(CPLPrequeliteStorage *)self pqStore];
    v6 = [v5 pqlConnection];

    [v6 cplRegisterDeterministicFunction:@"scopeTypeOrder" nArgs:2 handler:&stru_10027B258];
    BYTE4(self->_transportGroupClass) = 1;
  }

  return v4;
}

- (void)_fillScopeTypeOrder:(int64_t)a3[9] withOrderOfScopeTypes:(id)a4 name:(id)a5
{
  v13 = a4;
  v9 = a5;
  if ([v13 count] != 9)
  {
    sub_1001B74EC(a2, self, v9);
  }

  for (i = 0; i != 9; ++i)
  {
    v11 = [v13 objectAtIndexedSubscript:i];
    v12 = [v11 integerValue];

    a3[v12] = i;
  }
}

- (BOOL)_setScope:(id)a3 hasTaskTodo:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CPLPrequeliteStorage *)self pqStore];
  v11 = [v10 pqlConnection];

  v12 = [(CPLPrequeliteStorage *)self mainTable];
  v13 = [v8 setHasSomethingTodo];

  v14 = [_CPLPrequeliteScopeIsEqual alloc];
  v15 = [v9 scopeIdentifier];

  v16 = [(_CPLPrequeliteScopeIsEqual *)v14 initWithIdentifier:v15];
  v17 = [v11 cplExecute:{@"UPDATE %@ SET %@ WHERE %@", v12, v13, v16}];

  if (a5 && (v17 & 1) == 0)
  {
    *a5 = [v11 lastCPLError];
  }

  return v17;
}

- (int64_t)_taskItemForScope:(id)a3 task:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CPLPrequeliteStorage *)self pqStore];
  v9 = [v8 pqlConnection];

  v10 = objc_opt_class();
  v11 = [v6 targetGenerationVar];

  v12 = [(CPLPrequeliteStorage *)self mainTable];
  v13 = [*(&self->_modifiedVariables + 4) localIndexVar];
  v14 = [v7 localIndex];

  v15 = [v9 cplFetchObjectOfClass:v10 sql:{@"SELECT %@ FROM %@ WHERE %@ = %ld", v11, v12, v13, v14}];
  v16 = [v15 integerValue];

  return v16;
}

- (id)_taskItemCompletionDateForScope:(id)a3 task:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 lastCompletionDateVar];

  if (v8)
  {
    v9 = [v7 lastCompletionDateVar];
    v10 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:v9 scope:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_setScope:(id)a3 hasCompletedTaskItem:(int64_t)a4 task:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [(CPLPrequeliteStorage *)self pqStore];
  v13 = [v12 pqlConnection];

  v14 = [(CPLPrequeliteStorage *)self mainTable];
  v15 = [v10 setHasCompletedGeneration:a4];

  v16 = [*(&self->_modifiedVariables + 4) localIndexVar];
  v17 = [v11 localIndex];

  v18 = [v13 cplExecute:{@"UPDATE %@ SET %@ WHERE %@ = %ld", v14, v15, v16, v17}];
  if (a6 && (v18 & 1) == 0)
  {
    *a6 = [v13 lastCPLError];
  }

  return v18;
}

- (id)enumeratorForScopesIncludeInactive:(BOOL)a3
{
  v3 = a3;
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [v5 pqlConnection];

  v7 = [*(&self->_modifiedVariables + 4) namesInjection];
  v8 = [(CPLPrequeliteStorage *)self mainTable];
  v9 = v8;
  if (v3)
  {
    v10 = [v6 cplFetch:{@"SELECT %@ FROM %@", v7, v8}];
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
    v10 = [v6 cplFetch:{@"SELECT %@ FROM %@ WHERE (%@ & %ld) = 0", v7, v8, *(&self->_base + 4), 16}];
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
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v18 = [v3 pqlConnection];

  v4 = +[NSDate date];
  v5 = [*(&self->_scopeChangeVar + 4) bindableValueForValue:v4];
  v6 = *(&self->_scopeChangeVar + 4);
  v7 = [v4 dateByAddingTimeInterval:-86400.0];
  v8 = [v6 bindableValueForValue:v7];

  v9 = [*(&self->_modifiedVariables + 4) namesInjection];
  v10 = [(CPLPrequeliteStorage *)self mainTable];
  v11 = *(&self->_base + 4);
  v12 = *(&self->_lastLibraryInfoUpdateVar + 4);
  v13 = *(&self->_scopeChangeVar + 4);
  v14 = [*(&self->_transportScopeVar + 4) busyStateVar];
  v15 = [v18 cplFetch:{@"SELECT %@ FROM %@ WHERE ((%@ & %ld) = 0) AND ((%@ IS NULL) OR (%@ IS NULL) OR (%@ > %@) OR (%@ < %@) OR (%@ != 0))", v9, v10, v11, 4, v12, v13, v13, v5, v13, v8, v14}];

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
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [v3 pqlConnection];

  v5 = [*(&self->_modifiedVariables + 4) namesInjection];
  v6 = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [v4 cplFetch:{@"SELECT %@ FROM %@ WHERE (%@ & %ld) = %ld", v5, v6, *(&self->_base + 4), 68, 68}];
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

  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [v3 pqlConnection];

  v5 = [*(&self->_modifiedVariables + 4) namesInjection];
  v6 = [(CPLPrequeliteStorage *)self mainTable];
  v7 = *(&self->_base + 4);
  v8 = [*(&self->_supervisorInfoVar + 4) hasSomethingTodo];
  v9 = *(&self->_lastLibraryInfoUpdateVar + 4);
  v10 = *(&self->_base + 4);
  v11 = [*(&self->_modifiedVariables + 4) scopeTypeVar];
  v12 = [*(&self->_modifiedVariables + 4) scopeIdentifierVar];
  v13 = [v4 cplFetch:{@"SELECT %@ FROM %@ WHERE (%@ & %ld) = %ld AND %@ AND (%@ IS NOT NULL OR (%@ & %ld) != 0) ORDER BY scopeTypeOrder(%@, %p), %@ ASC", v5, v6, v7, 131088, 0x20000, v8, v9, v10, 4, v11, &unk_1002D2870, v12}];

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
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [(CPLPrequeliteStorage *)self mainTable];
  v5 = *(&self->_base + 4);
  v6 = [*(&self->_supervisorInfoVar + 4) hasSomethingTodo];
  v7 = [PQLFormatInjection formatInjection:@"(%@ & %ld) = %ld AND %@", v5, 131088, 0x20000, v6];
  LOBYTE(v5) = [v3 table:v4 hasRecordsMatchingQuery:v7];

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

  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [v3 pqlConnection];

  v5 = [*(&self->_modifiedVariables + 4) namesInjection];
  v6 = [(CPLPrequeliteStorage *)self mainTable];
  v7 = *(&self->_base + 4);
  v8 = [*(&self->_supervisorInfoVar + 4) hasSomethingTodo];
  v9 = *(&self->_lastLibraryInfoUpdateVar + 4);
  v10 = *(&self->_base + 4);
  v11 = [*(&self->_modifiedVariables + 4) scopeTypeVar];
  v12 = [*(&self->_modifiedVariables + 4) scopeIdentifierVar];
  v13 = [v4 cplFetch:{@"SELECT %@ FROM %@ WHERE (%@ & %ld) = 0 AND %@ AND (%@ IS NOT NULL OR (%@ & %ld) != 0) ORDER BY scopeTypeOrder(%@, %p), %@ ASC", v5, v6, v7, 131088, v8, v9, v10, 4, v11, &unk_1002D28C0, v12}];

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
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [(CPLPrequeliteStorage *)self mainTable];
  v5 = *(&self->_base + 4);
  v6 = [*(&self->_supervisorInfoVar + 4) hasSomethingTodo];
  v7 = [PQLFormatInjection formatInjection:@"(%@ & %ld) = 0 AND %@", v5, 131088, v6];
  LOBYTE(v5) = [v3 table:v4 hasRecordsMatchingQuery:v7];

  return v5;
}

- (BOOL)doesScopeNeedToPushChangesToTransport:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [_CPLPrequeliteScopeIsEqual alloc];
  v8 = [v4 scopeIdentifier];

  v9 = [(_CPLPrequeliteScopeIsEqual *)v7 initWithIdentifier:v8];
  v10 = *(&self->_base + 4);
  v11 = [*(&self->_supervisorInfoVar + 4) hasSomethingTodo];
  v12 = [PQLFormatInjection formatInjection:@"%@ AND (%@ & %ld) = 0 AND %@", v9, v10, 16, v11];
  LOBYTE(v10) = [v5 table:v6 hasRecordsMatchingQuery:v12];

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

  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [v3 pqlConnection];

  v5 = [*(&self->_modifiedVariables + 4) namesInjection];
  v6 = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [(CPLPrequeliteScopeStorage *)self _injectionForScopesAllowingPullFromTransport];
  v8 = [*(&self->_pushToTransportTodoVar + 4) hasSomethingTodo];
  v9 = [*(&self->_modifiedVariables + 4) scopeTypeVar];
  v10 = [*(&self->_modifiedVariables + 4) scopeIdentifierVar];
  v11 = [v4 cplFetch:{@"SELECT %@ FROM %@ WHERE (%@) AND %@ ORDER BY scopeTypeOrder(%@, %p), %@ ASC", v5, v6, v7, v8, v9, &unk_1002D2910, v10}];

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
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [(CPLPrequeliteScopeStorage *)self _injectionForScopesAllowingPullFromTransport];
  v6 = [*(&self->_pushToTransportTodoVar + 4) hasSomethingTodo];
  v7 = [PQLFormatInjection formatInjection:@"(%@) = 0 AND %@", v5, v6];
  v8 = [v3 table:v4 hasRecordsMatchingQuery:v7];

  return v8;
}

- (BOOL)setAllScopesHasChangesToPullFromTransportWithError:(id *)a3
{
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [v5 pqlConnection];

  v7 = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [*(&self->_pushToTransportTodoVar + 4) setHasSomethingTodo];
  v9 = [v6 cplExecute:{@"UPDATE %@ SET %@", v7, v8}];

  if (a3 && (v9 & 1) == 0)
  {
    *a3 = [v6 lastCPLError];
  }

  return v9;
}

- (BOOL)doesScopeNeedToPullChangesFromTransport:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [_CPLPrequeliteScopeIsEqual alloc];
  v8 = [v4 scopeIdentifier];

  v9 = [(_CPLPrequeliteScopeIsEqual *)v7 initWithIdentifier:v8];
  v10 = *(&self->_base + 4);
  v11 = [*(&self->_pushToTransportTodoVar + 4) hasSomethingTodo];
  v12 = [PQLFormatInjection formatInjection:@"%@ AND (%@ & %ld) = 0 AND %@", v9, v10, 262164, v11];
  LOBYTE(v10) = [v5 table:v6 hasRecordsMatchingQuery:v12];

  return v10;
}

- (BOOL)setPullFromTransportExpirationInterval:(double)a3 scope:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [NSNumber numberWithDouble:a3];
  v10 = [*(&self->_pushToTransportTodoVar + 4) expirationIntervalVar];
  LOBYTE(a5) = [(CPLPrequeliteScopeStorage *)self _storeValue:v9 forColumnVariable:v10 scope:v8 error:a5];

  return a5;
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

  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [v3 pqlConnection];

  v5 = [*(&self->_modifiedVariables + 4) namesInjection];
  v6 = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [(CPLPrequeliteScopeStorage *)self _injectionForScopesAllowingPullFromTransport];
  v8 = [*(&self->_modifiedVariables + 4) scopeTypeVar];
  v9 = [*(&self->_modifiedVariables + 4) scopeIdentifierVar];
  v10 = [v4 cplFetch:{@"SELECT %@ FROM %@ WHERE (%@) ORDER BY scopeTypeOrder(%@, %p), %@ ASC", v5, v6, v7, v8, &unk_1002D2960, v9}];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100143D40;
  v13[3] = &unk_10027B218;
  v13[4] = self;
  v11 = [v10 enumerateObjects:v13];

  return v11;
}

- (BOOL)doScopesNeedMetadataSync:(id)a3
{
  v4 = [(CPLPrequeliteScopeStorage *)self _injectionForFilter:a3];
  if (v4)
  {
    v5 = [(CPLPrequeliteStorage *)self pqStore];
    v6 = [(CPLPrequeliteStorage *)self mainTable];
    v7 = *(&self->_base + 4);
    v8 = [*(&self->_supervisorInfoVar + 4) hasSomethingTodo];
    v9 = [PQLFormatInjection formatInjection:@"%@ AND (%@ & %ld) = 0 AND %@", v4, v7, 16, v8];
    LOBYTE(v7) = [v5 table:v6 hasRecordsMatchingQuery:v9];

    if (v7)
    {
      v10 = 1;
    }

    else
    {
      v11 = *(&self->_base + 4);
      v12 = [*(&self->_pushToTransportTodoVar + 4) hasSomethingTodo];
      v13 = [PQLFormatInjection formatInjection:@"%@ AND (%@ & %ld) = 0 AND %@", v4, v11, 262164, v12];
      v10 = [v5 table:v6 hasRecordsMatchingQuery:v13];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)enumeratorForScopesNeedingToBePulledByClientWithMaximumCount:(unint64_t)a3
{
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [v5 pqlConnection];

  v7 = [(CPLPrequeliteStorage *)self pqStore];
  v8 = [v7 libraryOptions];

  v9 = [*(&self->_modifiedVariables + 4) namesInjection];
  v10 = [(CPLPrequeliteStorage *)self mainTable];
  v11 = *(&self->_base + 4);
  v12 = [*(&self->_pullFromTransportTodoVar + 4) hasSomethingTodo];
  v13 = v12;
  v14 = 65552;
  if ((v8 & 0x400) != 0)
  {
    v14 = 0x10000;
  }

  v15 = [v6 cplFetch:{@"SELECT %@ FROM %@ WHERE (%@ & %ld) = %ld AND %@ LIMIT %lu", v9, v10, v11, v14, 0x10000, v12, a3}];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001440D0;
  v18[3] = &unk_10027B218;
  v18[4] = self;
  v16 = [v15 enumerateObjects:v18];

  return v16;
}

- (BOOL)doesScopeNeedToBePulledByClient:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [v5 libraryOptions];

  v7 = [(CPLPrequeliteStorage *)self pqStore];
  v8 = [(CPLPrequeliteStorage *)self mainTable];
  v9 = [_CPLPrequeliteScopeIsEqual alloc];
  v10 = [v4 scopeIdentifier];

  v11 = [(_CPLPrequeliteScopeIsEqual *)v9 initWithIdentifier:v10];
  v12 = *(&self->_base + 4);
  v13 = [*(&self->_pullFromTransportTodoVar + 4) hasSomethingTodo];
  v14 = v13;
  v15 = 65552;
  if ((v6 & 0x400) != 0)
  {
    v15 = 0x10000;
  }

  v16 = [PQLFormatInjection formatInjection:@"%@ AND (%@ & %ld) = %ld AND %@", v11, v12, v15, 0x10000, v13];
  v17 = [v7 table:v8 hasRecordsMatchingQuery:v16];

  return v17;
}

- (BOOL)doesScopeSupportToBePulledByClient:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [v5 libraryOptions];

  v7 = [v4 scopeType];
  if (v7)
  {
    v8 = [v4 scopeIdentifier];
    LODWORD(v7) = [(CPLPrequeliteScopeStorage *)self _scopeTypeSupportsClientSync:v7 scopeIdentifier:v8];

    if (v7)
    {
      if ((v6 & 0x400) == 0)
      {
        v9 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:*(&self->_base + 4) scope:v4];
        LOBYTE(v7) = ([v9 integerValue] & 0x10) == 0;
      }
    }
  }

  return v7;
}

- (BOOL)hasScopesNeedingToUpdateTransport
{
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [*(&self->_clientNeedsToPullTodoVar + 4) hasSomethingTodo];
  v6 = [PQLFormatInjection formatInjection:@"%@", v5];
  v7 = [v3 table:v4 hasRecordsMatchingQuery:v6];

  return v7;
}

- (BOOL)doesScopeNeedToUpdateTransport:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [_CPLPrequeliteScopeIsEqual alloc];
  v8 = [v4 scopeIdentifier];

  v9 = [(_CPLPrequeliteScopeIsEqual *)v7 initWithIdentifier:v8];
  v10 = [*(&self->_clientNeedsToPullTodoVar + 4) hasSomethingTodo];
  v11 = [PQLFormatInjection formatInjection:@"%@ AND %@", v9, v10];
  LOBYTE(v7) = [v5 table:v6 hasRecordsMatchingQuery:v11];

  return v7;
}

- (id)enumeratorForScopesNeedingToUploadComputeState
{
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [v3 pqlConnection];

  v5 = [*(&self->_modifiedVariables + 4) namesInjection];
  v6 = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [*(&self->_updateTransportTodoVar + 4) hasSomethingTodo];
  v8 = [v4 cplFetch:{@"SELECT %@ FROM %@ WHERE %@", v5, v6, v7}];

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
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [*(&self->_updateTransportTodoVar + 4) hasSomethingTodo];
  v6 = [PQLFormatInjection formatInjection:@"%@", v5];
  v7 = [v3 table:v4 hasRecordsMatchingQuery:v6];

  return v7;
}

- (BOOL)doesScopeNeedToUploadComputeState:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [_CPLPrequeliteScopeIsEqual alloc];
  v8 = [v4 scopeIdentifier];

  v9 = [(_CPLPrequeliteScopeIsEqual *)v7 initWithIdentifier:v8];
  v10 = [*(&self->_updateTransportTodoVar + 4) hasSomethingTodo];
  v11 = [PQLFormatInjection formatInjection:@"%@ AND %@", v9, v10];
  LOBYTE(v7) = [v5 table:v6 hasRecordsMatchingQuery:v11];

  return v7;
}

- (id)addScopeWithIdentifier:(id)a3 scopeType:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(CPLPrequeliteStorage *)self valueForVariable:*(&self->super._shouldUpgradeSchema + 1)];
  v10 = [v9 integerValue];

  v11 = [NSNumber numberWithInteger:v10 + 3];
  v12 = [(CPLPrequeliteStorage *)self setValue:v11 forVariable:*(&self->super._shouldUpgradeSchema + 1) error:a5];

  if (v12)
  {
    v13 = [[CPLEngineScope alloc] initWithScopeIdentifier:v8 scopeType:a4];
    [v13 setLocalIndex:v10 + 1];
    [v13 setCloudIndex:v10 + 2];
    [v13 setStableIndex:v10 + 3];
    if ([(CPLPrequeliteScopeStorage *)self _addScope:v13 error:a5])
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

- (BOOL)deleteScopeWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLPrequeliteStorage *)self pqStore];
  v8 = [v7 pqlConnection];

  v9 = [(CPLPrequeliteStorage *)self mainTable];
  v10 = [*(&self->_modifiedVariables + 4) scopeIdentifierVar];
  v11 = [v8 cplExecute:{@"DELETE FROM %@ WHERE %@ = %@", v9, v10, v6}];

  if (a4 && (v11 & 1) == 0)
  {
    *a4 = [v8 lastCPLError];
  }

  [(CPLPrequeliteScopeStorage *)self _discardCachedValuesForGroup:*(&self->_stagedScopeIdentifierVar + 4)];
  [*(&self->_noteEndOfResetIfNecessary + 4) discardCachedValue];
  [(CPLPrequeliteScopeStorage *)self _discardCachedValuesForGroup:*(&self->_stagedScopeIdentifierVar + 4)];

  return v11;
}

- (BOOL)setScopeType:(int64_t)a3 forScope:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [NSNumber numberWithInteger:a3];
  v10 = [*(&self->_modifiedVariables + 4) scopeTypeVar];
  v11 = [(CPLPrequeliteScopeStorage *)self _storeValue:v9 forColumnVariable:v10 scope:v8 error:a5];

  if (v11)
  {
    v12 = [(CPLPrequeliteStorage *)self pqStore];
    v13 = [v12 pqlConnection];

    [*(&self->_base + 4) discardCachedValue];
    v14 = [v8 scopeIdentifier];
    v15 = [(CPLPrequeliteScopeStorage *)self _scopeTypeSupportsClientSync:a3 scopeIdentifier:v14];

    v16 = [(CPLPrequeliteStorage *)self mainTable];
    v17 = *(&self->_base + 4);
    v18 = [_CPLPrequeliteScopeIsEqual alloc];
    v19 = [v8 scopeIdentifier];
    v20 = [(_CPLPrequeliteScopeIsEqual *)v18 initWithIdentifier:v19];
    v21 = v20;
    if (v15)
    {
      v22 = [v13 cplExecute:{@"UPDATE %@ SET %@ = (%@ | %ld) WHERE %@", v16, v17, v17, 0x10000, v20}];

      if (v22)
      {
        if ([v13 changes] < 1 || (_CPLSilentLogging & 1) != 0)
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
        v29 = v8;
        v24 = "Enabled client sync for %@";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 0xCu);
        goto LABEL_15;
      }
    }

    else
    {
      v26 = [v13 cplExecute:{@"UPDATE %@ SET %@ = (%@ & %ld) WHERE %@", v16, v17, v17, -65537, v20}];

      if (v26)
      {
        if ([v13 changes] < 1 || (_CPLSilentLogging & 1) != 0)
        {
          goto LABEL_16;
        }

        v23 = sub_10013EE4C();
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 138412290;
        v29 = v8;
        v24 = "Disabled client sync for %@";
        goto LABEL_14;
      }
    }

    if (a5)
    {
      [v13 lastError];
      *a5 = v25 = 0;
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

- (int64_t)_bumpIndexWithError:(id *)a3
{
  v5 = [(CPLPrequeliteStorage *)self valueForVariable:*(&self->super._shouldUpgradeSchema + 1)];
  v6 = [v5 integerValue];

  v7 = [NSNumber numberWithInteger:v6 + 1];
  LODWORD(a3) = [(CPLPrequeliteStorage *)self setValue:v7 forVariable:*(&self->super._shouldUpgradeSchema + 1) error:a3];

  if (a3)
  {
    return (v6 + 1);
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (BOOL)bumpLocalIndexForScopeWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLPrequeliteScopeStorage *)self _bumpIndexWithError:a4];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    v10 = [(CPLPrequeliteStorage *)self pqStore];
    v11 = [v10 pqlConnection];

    v12 = [(CPLPrequeliteStorage *)self mainTable];
    v13 = [[_CPLPrequeliteScopeIsEqual alloc] initWithIdentifier:v6];
    v8 = [v11 cplExecute:{@"UPDATE %@ SET localIndex = %ld WHERE %@", v12, v9, v13}];

    if (a4 && (v8 & 1) == 0)
    {
      *a4 = [v11 lastError];
    }
  }

  return v8;
}

- (BOOL)bumpCloudIndexForScopeWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLPrequeliteScopeStorage *)self _bumpIndexWithError:a4];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    v10 = [(CPLPrequeliteStorage *)self pqStore];
    v11 = [v10 pqlConnection];

    v12 = [(CPLPrequeliteStorage *)self mainTable];
    v13 = [[_CPLPrequeliteScopeIsEqual alloc] initWithIdentifier:v6];
    v8 = [v11 cplExecute:{@"UPDATE %@ SET cloudIndex = %ld WHERE %@", v12, v9, v13}];

    if (a4 && (v8 & 1) == 0)
    {
      *a4 = [v11 lastError];
    }
  }

  return v8;
}

- (BOOL)bumpStableIndexForScopeWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLPrequeliteScopeStorage *)self _bumpIndexWithError:a4];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    v10 = [(CPLPrequeliteStorage *)self pqStore];
    v11 = [v10 pqlConnection];

    v12 = [(CPLPrequeliteStorage *)self mainTable];
    v13 = [[_CPLPrequeliteScopeIsEqual alloc] initWithIdentifier:v6];
    v8 = [v11 cplExecute:{@"UPDATE %@ SET stableIndex = %ld WHERE %@", v12, v9, v13}];

    if (a4 && (v8 & 1) == 0)
    {
      *a4 = [v11 lastError];
    }
  }

  return v8;
}

- (id)_scopeWithQuery:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [v5 pqlConnection];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001453E8;
  v11[3] = &unk_10027B218;
  v11[4] = self;
  v7 = [*(&self->_modifiedVariables + 4) namesInjection];
  v8 = [(CPLPrequeliteStorage *)self mainTable];
  v9 = [v6 cplFetchObject:v11 sql:{@"SELECT %@ FROM %@ WHERE %@", v7, v8, v4}];

  return v9;
}

- (id)scopeWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[_CPLPrequeliteScopeIsEqual alloc] initWithIdentifier:v4];

  v6 = [(CPLPrequeliteScopeStorage *)self _scopeWithQuery:v5];

  return v6;
}

- (id)scopeWithLocalIndex:(int64_t)a3
{
  v4 = [PQLFormatInjection formatInjection:@"localIndex = %ld", a3];
  v5 = [(CPLPrequeliteScopeStorage *)self _scopeWithQuery:v4];

  return v5;
}

- (id)scopeWithCloudIndex:(int64_t)a3
{
  v4 = [PQLFormatInjection formatInjection:@"cloudIndex = %ld", a3];
  v5 = [(CPLPrequeliteScopeStorage *)self _scopeWithQuery:v4];

  return v5;
}

- (id)scopeWithStableIndex:(int64_t)a3
{
  v4 = [PQLFormatInjection formatInjection:@"stableIndex = %ld", a3];
  v5 = [(CPLPrequeliteScopeStorage *)self _scopeWithQuery:v4];

  return v5;
}

- (id)validLocalIndexes
{
  v3 = objc_alloc_init(NSMutableIndexSet);
  v4 = [(CPLPrequeliteStorage *)self pqStore];
  v5 = [v4 pqlConnection];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [v5 cplFetch:{@"SELECT localIndex FROM %@ WHERE (%@ & %ld) = 0", v6, *(&self->_base + 4), 16}];
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
  v4 = [(CPLPrequeliteStorage *)self pqStore];
  v5 = [v4 pqlConnection];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [v5 cplFetch:{@"SELECT cloudIndex FROM %@ WHERE (%@ & %ld) = 0", v6, *(&self->_base + 4), 16}];
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
  v4 = [(CPLPrequeliteStorage *)self mainScopeIdentifier];
  v5 = [(_CPLPrequeliteScopeIsEqual *)v3 initWithIdentifier:v4];
  v6 = [(CPLPrequeliteScopeStorage *)self _scopeWithQuery:v5];

  return v6;
}

- (id)stagingScopeForScope:(id)a3
{
  v4 = *(&self->_uploadComputeStateTodoVar + 4);
  v5 = [a3 scopeIdentifier];
  v6 = [PQLFormatInjection formatInjection:@"%@ = %@", v4, v5];
  v7 = [(CPLPrequeliteScopeStorage *)self _scopeWithQuery:v6];

  return v7;
}

- (id)rewindSyncAnchorsForScope:(id)a3
{
  v4 = a3;
  v5 = [*(&self->_transportScopeVar + 4) rewindSyncAnchorsVar];
  v6 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:v5 scope:v4];

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
          v12 = v4;
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

- (BOOL)storeRewindSyncAnchors:(id)a3 forScope:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (a3)
  {
    a3 = [NSKeyedArchiver cpl_archivedDataWithRootObject:a3];
  }

  v9 = [*(&self->_transportScopeVar + 4) rewindSyncAnchorsVar];
  v10 = [(CPLPrequeliteScopeStorage *)self _storeValue:a3 forColumnVariable:v9 scope:v8 error:a5];

  return v10;
}

- (BOOL)storeBusyState:(int64_t)a3 forScope:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [NSNumber numberWithInteger:a3];
  v10 = [*(&self->_transportScopeVar + 4) busyStateVar];
  LOBYTE(a5) = [(CPLPrequeliteScopeStorage *)self _storeValue:v9 forColumnVariable:v10 scope:v8 error:a5];

  return a5;
}

- (int64_t)busyStateForScope:(id)a3
{
  v4 = *(&self->_transportScopeVar + 4);
  v5 = a3;
  v6 = [v4 busyStateVar];
  v7 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:v6 scope:v5];

  v8 = [v7 integerValue];
  return v8;
}

- (BOOL)storeSupervisorInfo:(id)a3 forScope:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v10 = [NSPropertyListSerialization dataWithPropertyList:v8 format:200 options:0 error:a5];
  if (v10)
  {
LABEL_5:
    v11 = [(CPLPrequeliteScopeStorage *)self _storeValue:v10 forColumnVariable:*(&self->_initialMingleDateVar + 4) scope:v9 error:a5];

    goto LABEL_6;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (id)supervisorInfoForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:*(&self->_initialMingleDateVar + 4) scope:v4];
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

- (BOOL)storeScopeListSyncAnchor:(id)a3 error:(id *)a4
{
  v7 = [(CPLPrequeliteStorage *)self setValue:a3 forVariable:*(&self->_nextIndexVar + 4) error:a4];
  v8 = v7;
  if (!a3 && v7)
  {
    v9 = [(CPLPrequeliteStorage *)self pqStore];
    v10 = [v9 pqlConnection];

    v11 = [(CPLPrequeliteStorage *)self mainTable];
    v12 = [*(&self->_pullFromTransportTodoVar + 4) setHasSomethingTodo];
    v13 = [v10 cplExecute:{@"UPDATE %@ SET %@ WHERE %@ & %lu != 0", v11, v12, *(&self->_base + 4), 0x10000}];

    if (v13)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001B7684(v10);
      }
    }

    else if (a4)
    {
      *a4 = [v10 lastCPLError];
    }
  }

  return v8;
}

- (void)_cacheValue:(id)a3 forColumnVariable:(id)a4 scope:(id)a5
{
  v7 = *(&self->_scopeListSyncAnchorVar + 4);
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [v7 addObject:v9];
  v11 = [v8 scopeIdentifier];

  [v9 setCachedValue:v10 forIdentifier:v11];
}

- (BOOL)_storeValue:(id)a3 forColumnVariable:(id)a4 scope:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(CPLPrequeliteStorage *)self pqStore];
  v13 = [v12 pqlConnection];

  v14 = [(CPLPrequeliteStorage *)self mainTable];
  v15 = [v10 bindableValueForValue:v9];
  v16 = [_CPLPrequeliteScopeIsEqual alloc];
  v17 = [v11 scopeIdentifier];
  v18 = [(_CPLPrequeliteScopeIsEqual *)v16 initWithIdentifier:v17];
  v19 = [v13 cplExecute:{@"UPDATE %@ SET %@ = %@ WHERE %@", v14, v10, v15, v18}];

  if (v19)
  {
    [(CPLPrequeliteScopeStorage *)self _cacheValue:v9 forColumnVariable:v10 scope:v11];
  }

  else if (a6)
  {
    *a6 = [v13 lastCPLError];
  }

  return v19;
}

- (id)_valueForColumnVariable:(id)a3 scope:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 scopeIdentifier];
  v9 = [v6 hasCachedValueForIdentifier:v8];

  if (v9)
  {
    v10 = [v7 scopeIdentifier];
    v11 = [v6 cachedValueForIdentifier:v10];
  }

  else
  {
    v12 = [(CPLPrequeliteStorage *)self pqStore];
    v13 = [v12 pqlConnection];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100146500;
    v20[3] = &unk_10027B218;
    v14 = v6;
    v21 = v14;
    v15 = [(CPLPrequeliteStorage *)self mainTable];
    v16 = [_CPLPrequeliteScopeIsEqual alloc];
    v17 = [v7 scopeIdentifier];
    v18 = [(_CPLPrequeliteScopeIsEqual *)v16 initWithIdentifier:v17];
    v11 = [v13 cplFetchObject:v20 sql:{@"SELECT %@ FROM %@ WHERE %@", v14, v15, v18}];

    [(CPLPrequeliteScopeStorage *)self _cacheValue:v11 forColumnVariable:v14 scope:v7];
  }

  return v11;
}

- (id)creationDateForScope:(id)a3
{
  v4 = *(&self->_modifiedVariables + 4);
  v5 = a3;
  v6 = [v4 creationDateVar];
  v7 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:v6 scope:v5];

  return v7;
}

- (id)flagsForScope:(id)a3
{
  v3 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:*(&self->_base + 4) scope:a3];
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

- (BOOL)updateFlags:(id)a3 forScope:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 updatedFlagsMask])
  {
    v10 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:*(&self->_base + 4) scope:v9];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 integerValue];
      v13 = [v8 updatedFlagsFromFlags:v12];
      if (v12 == v13)
      {
        LOBYTE(a5) = 1;
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
            v20 = v9;
            v21 = 2112;
            v22 = v8;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Updating flags for %@: %@", &v19, 0x16u);
          }
        }

        v17 = [NSNumber numberWithInteger:v15];
        LOBYTE(a5) = [(CPLPrequeliteScopeStorage *)self _storeValue:v17 forColumnVariable:*(&self->_base + 4) scope:v9 error:a5];
      }
    }

    else if (a5)
    {
      v14 = [v9 scopeIdentifier];
      *a5 = [CPLErrors invalidScopeErrorWithScopeIdentifier:v14];

      LOBYTE(a5) = 0;
    }
  }

  else
  {
    LOBYTE(a5) = 1;
  }

  return a5;
}

- (id)_librarySateForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [v5 pqlConnection];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100146990;
  v14[3] = &unk_10027B218;
  v14[4] = self;
  v7 = [*(&self->_all + 4) namesInjection];
  v8 = [(CPLPrequeliteStorage *)self mainTable];
  v9 = [_CPLPrequeliteScopeIsEqual alloc];
  v10 = [v4 scopeIdentifier];

  v11 = [(_CPLPrequeliteScopeIsEqual *)v9 initWithIdentifier:v10];
  v12 = [v6 cplFetchObject:v14 sql:{@"SELECT %@ FROM %@ WHERE %@", v7, v8, v11}];

  return v12;
}

- (BOOL)setHasUpdatedScope:(id)a3 fromTransportWithError:(id *)a4
{
  v6 = a3;
  v7 = +[NSDate date];
  LOBYTE(a4) = [(CPLPrequeliteScopeStorage *)self _storeValue:v7 forColumnVariable:*(&self->_scopeChangeVar + 4) scope:v6 error:a4];

  return a4;
}

- (id)_libraryInfoForScope:(id)a3
{
  v3 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:*(&self->_deleteDateVar + 4) scope:a3];
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

- (id)scopeChangeForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:*(&self->_libraryInfoVar + 4) scope:v4];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [NSKeyedUnarchiver cpl_safeUnarchiveObjectWithData:v5 class:objc_opt_class()];
  v7 = [v6 scopeType];
  if (v7 != [v4 scopeType])
  {
    sub_1001B771C(v6, v4);
LABEL_4:
    v6 = 0;
  }

  v8 = [(CPLPrequeliteScopeStorage *)self _libraryInfoForScope:v4];
  if (v6)
  {
    goto LABEL_10;
  }

  v9 = [v4 scopeIdentifier];
  v6 = +[CPLScopeChange newScopeChangeInferClassWithScopeIdentifier:type:](CPLScopeChange, "newScopeChangeInferClassWithScopeIdentifier:type:", v9, [v4 scopeType]);

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v8 momentShare];
      [v6 setMomentShare:v10];

      [v8 setMomentShare:0];
    }
  }

  v11 = [(CPLPrequeliteScopeStorage *)self _librarySateForScope:v4];
  [v6 setLibraryState:v11];

  if (v6)
  {
LABEL_10:
    [v6 setLibraryInfo:v8];
    v12 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:*(&self->_base + 4) scope:v4];
    [v6 setActivated:{(objc_msgSend(v12, "integerValue") & 0x10) == 0}];
    if ([v6 isActivated] && +[CPLScopeChange supportsStagingScopeForScopeWithType:](CPLScopeChange, "supportsStagingScopeForScopeWithType:", objc_msgSend(v6, "scopeType")))
    {
      v13 = [(CPLPrequeliteScopeStorage *)self stagingScopeForScope:v4];
      v14 = [v13 scopeIdentifier];
      [v6 setStagingScopeIdentifier:v14];
    }

    v15 = [*(&self->_transportScopeVar + 4) busyStateVar];
    v16 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:v15 scope:v4];
    v17 = [v16 integerValue];

    [v6 setBusyState:v17];
    v18 = v6;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)_storeLibraryInfo:(id)a3 forScope:(id)a4 libraryInfoHasBeenUpdated:(BOOL *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  *a5 = 0;
  if (!v10)
  {
    v18 = 0;
    LOBYTE(v19) = 1;
    goto LABEL_27;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = [(CPLPrequeliteScopeStorage *)self supportedFeatureVersionInLastSyncForScope:v11];
  if (v13 >= __CPLSupportedFeatureVersion())
  {
    goto LABEL_14;
  }

  v14 = [v10 featureVersionHistory];
  v15 = v14;
  if (!v14)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = sub_10013EE4C();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v11 scopeIdentifier];
        *buf = 138412546;
        v33 = v20;
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

  v16 = [v14 currentFeatureVersion];
  if (v16 > v13)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = sub_10013EE4C();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [v11 scopeIdentifier];
        *buf = 138413314;
        v33 = v29;
        v34 = 2048;
        v35 = v13;
        v36 = 2048;
        v37 = v16;
        v38 = 2048;
        v39 = v13;
        v40 = 2048;
        v41 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Last supported feature version for %@ was %lu and current server version is %lu - will definitely have to catch up with changes from %lu to %lu", buf, 0x34u);
      }

LABEL_12:

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    sub_1001B77E8(v11);
  }

  v31 = 0;
  v28 = [(CPLPrequeliteScopeStorage *)self storeSupportedFeatureVersionInLastSync:__CPLSupportedFeatureVersion() forScope:v11 error:&v31];
  v18 = v31;

  if (!v28)
  {
    LOBYTE(v19) = 0;
    goto LABEL_24;
  }

LABEL_15:
  v21 = [NSKeyedArchiver cpl_archivedDataWithRootObject:v10];
  v22 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:*(&self->_deleteDateVar + 4) scope:v11];
  v23 = v22;
  if (v21 && v22)
  {
    if (([v21 isEqual:v22] & 1) == 0)
    {
LABEL_18:
      v24 = *(&self->_deleteDateVar + 4);
      v30 = v18;
      v19 = [(CPLPrequeliteScopeStorage *)self _storeValue:v21 forColumnVariable:v24 scope:v11 error:&v30];
      v25 = v30;

      if (v19)
      {
        LOBYTE(v19) = 1;
        *a5 = 1;
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
  if (a6 && !v19)
  {
    v26 = v18;
    LOBYTE(v19) = 0;
    *a6 = v18;
  }

LABEL_27:

  return v19;
}

- (BOOL)storeScopeChange:(id)a3 forScope:(id)a4 scopeChangeHasBeenUpdated:(BOOL *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = objc_autoreleasePoolPush();
  v13 = [v10 libraryInfo];
  v37 = 0;
  v14 = [(CPLPrequeliteScopeStorage *)self _storeLibraryInfo:v13 forScope:v11 libraryInfoHasBeenUpdated:a5 error:&v37];
  v15 = v37;

  if (v14)
  {
    [v10 setLibraryInfo:0];
    [v10 setStagingScopeIdentifier:0];
    if (![v10 scopeType])
    {
      v16 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:*(&self->_libraryInfoVar + 4) scope:v11];
      if (v16)
      {
        v24 = *(&self->_libraryInfoVar + 4);
        v34 = v15;
        LODWORD(self) = [(CPLPrequeliteScopeStorage *)self _storeValue:0 forColumnVariable:v24 scope:v11 error:&v34];
        v25 = v34;

        if (self)
        {
          LOBYTE(self) = 1;
          *a5 = 1;
        }

        v15 = v25;
      }

      else
      {
        LOBYTE(self) = 1;
      }

      goto LABEL_29;
    }

    v16 = [NSKeyedArchiver cpl_archivedDataWithRootObject:v10];
    v17 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:*(&self->_libraryInfoVar + 4) scope:v11];
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
        v21 = [(CPLPrequeliteScopeStorage *)self _storeValue:v16 forColumnVariable:v20 scope:v11 error:&v36];
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

        *a5 = 1;
        v23 = v22;
        v18 = v19;
        v12 = v33;
LABEL_15:
        if (*a5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v26 = [v10 stagedScopeChange];
          v27 = [v26 scopeIdentifier];

          if (v27)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v28 = sub_10013EE4C();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v39 = v11;
                v40 = 2114;
                v41 = v27;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Setting staged scope for %@ to %{public}@", buf, 0x16u);
              }
            }

            v29 = *(&self->_uploadComputeStateTodoVar + 4);
            v35 = v23;
            LOBYTE(self) = [(CPLPrequeliteScopeStorage *)self _storeValue:v27 forColumnVariable:v29 scope:v11 error:&v35];
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
  if (a6 && (self & 1) == 0)
  {
    v31 = v15;
    *a6 = v15;
  }

  return self;
}

- (Class)_transportGroupClass
{
  v3 = *(&self->_injectionForScopesAllowingPullFromTransport + 4);
  if (!v3)
  {
    v5 = [(CPLPrequeliteScopeStorage *)self abstractObject];
    v6 = [v5 engineStore];
    v7 = [v6 engineLibrary];
    v8 = [v7 transport];
    *(&self->_injectionForScopesAllowingPullFromTransport + 4) = [v8 transportGroupClass];

    v3 = *(&self->_injectionForScopesAllowingPullFromTransport + 4);
    if (!v3)
    {
      sub_1001B78B0(a2, self);
    }
  }

  return v3;
}

- (id)_transportGroupForColumnVariable:(id)a3 forScope:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:v6 scope:v7];
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

- (BOOL)_storeTransportGroup:(id)a3 inColumnVariable:(id)a4 forScope:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (v11)
  {
    v14 = [NSKeyedArchiver cpl_archivedDataWithRootObject:v11];
    if (!v14)
    {
      sub_1001B7A44(a2, self, v11);
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = [(CPLPrequeliteScopeStorage *)self _storeValue:v14 forColumnVariable:v12 scope:v13 error:a6];
  if (!v15)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_1001B7B20();
    }

    if (a6)
    {
      *a6 = 0;
    }
  }

  return v15;
}

- (void)_discardCachedValuesForGroup:(id)a3
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [a3 variables];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (BOOL)resetSyncStateForScope:(id)a3 error:(id *)a4
{
  v6 = *(&self->_transportScopeVar + 4);
  v7 = a3;
  [(CPLPrequeliteScopeStorage *)self _discardCachedValuesForGroup:v6];
  [(CPLPrequeliteScopeStorage *)self _discardCachedValuesForGroup:*(&self->_supervisorInfoVar + 4)];
  [(CPLPrequeliteScopeStorage *)self _discardCachedValuesForGroup:*(&self->_pushToTransportTodoVar + 4)];
  [*(&self->_noteEndOfResetIfNecessary + 4) discardCachedValue];
  v8 = [(CPLPrequeliteStorage *)self pqStore];
  v9 = [v8 pqlConnection];

  v10 = [(CPLPrequeliteStorage *)self mainTable];
  v11 = [*(&self->_transportScopeVar + 4) injectionForDefaultValuesUpdate];
  v12 = [*(&self->_supervisorInfoVar + 4) injectionForDefaultValuesUpdate];
  v13 = [*(&self->_pushToTransportTodoVar + 4) lastCompletionDateVar];
  v14 = [*(&self->_modifiedVariables + 4) scopeIdentifierVar];
  v15 = [v7 scopeIdentifier];

  v16 = [v9 cplExecute:{@"UPDATE %@ SET %@, %@, %@ = NULL WHERE %@ = %@", v10, v11, v12, v13, v14, v15}];
  if (a4 && (v16 & 1) == 0)
  {
    *a4 = [v9 lastError];
  }

  return v16;
}

- (id)uploadTransportGroupForScope:(id)a3
{
  v4 = *(&self->_transportScopeVar + 4);
  v5 = a3;
  v6 = [v4 uploadTransportGroupVar];
  v7 = [(CPLPrequeliteScopeStorage *)self _transportGroupForColumnVariable:v6 forScope:v5];

  return v7;
}

- (BOOL)storeUploadTransportGroup:(id)a3 forScope:(id)a4 error:(id *)a5
{
  v8 = *(&self->_transportScopeVar + 4);
  v9 = a4;
  v10 = a3;
  v11 = [v8 uploadTransportGroupVar];
  LOBYTE(a5) = [(CPLPrequeliteScopeStorage *)self _storeTransportGroup:v10 inColumnVariable:v11 forScope:v9 error:a5];

  return a5;
}

- (id)downloadTransportGroupForScope:(id)a3
{
  v4 = *(&self->_transportScopeVar + 4);
  v5 = a3;
  v6 = [v4 downloadTransportGroupVar];
  v7 = [(CPLPrequeliteScopeStorage *)self _transportGroupForColumnVariable:v6 forScope:v5];

  return v7;
}

- (BOOL)storeDownloadTransportGroup:(id)a3 forScope:(id)a4 error:(id *)a5
{
  v8 = *(&self->_transportScopeVar + 4);
  v9 = a4;
  v10 = a3;
  v11 = [v8 downloadTransportGroupVar];
  LOBYTE(a5) = [(CPLPrequeliteScopeStorage *)self _storeTransportGroup:v10 inColumnVariable:v11 forScope:v9 error:a5];

  return a5;
}

- (BOOL)didDropSomeRecordsForScope:(id)a3
{
  v4 = *(&self->_transportScopeVar + 4);
  v5 = a3;
  v6 = [v4 droppedSomeRecordsVar];
  v7 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:v6 scope:v5];

  LOBYTE(v5) = [v7 BOOLValue];
  return v5;
}

- (BOOL)setDidDropSomeRecordsForScope:(id)a3 error:(id *)a4
{
  v4 = self;
  v5 = *(&self->_transportScopeVar + 4);
  v6 = a3;
  v7 = [v5 droppedSomeRecordsVar];
  LOBYTE(v4) = [(CPLPrequeliteScopeStorage *)v4 _storeValue:&__kCFBooleanTrue forColumnVariable:v7 scope:v6 error:0];

  return v4;
}

- (id)syncAnchorForScope:(id)a3 isCommitted:(BOOL *)a4
{
  v6 = a3;
  v7 = [*(&self->_transportScopeVar + 4) stagedSyncAnchorVar];
  v8 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:v7 scope:v6];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = [*(&self->_transportScopeVar + 4) syncAnchorVar];
    v8 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:v10 scope:v6];

    v9 = 1;
  }

  *a4 = v9;

  return v8;
}

- (BOOL)commitSyncAnchorForScope:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [*(&self->_transportScopeVar + 4) stagedSyncAnchorVar];
  v8 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:v7 scope:v6];

  v9 = [v6 scopeIdentifier];
  v10 = [(CPLPrequeliteStorage *)self mainScopeIdentifier];
  v11 = [v9 isEqualToString:v10];

  if (v8)
  {
    v12 = [(CPLPrequeliteScopeStorage *)self initialSyncDateForScope:v6];
    v13 = [*(&self->_transportScopeVar + 4) syncAnchorVar];
    v14 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:v13 scope:v6];

    if (!v14)
    {
      BYTE4(self->_transportGroupClass) = 1;
    }

    v15 = [*(&self->_transportScopeVar + 4) syncAnchorVar];
    v16 = [(CPLPrequeliteScopeStorage *)self _storeValue:v8 forColumnVariable:v15 scope:v6 error:a4];

    if (v16)
    {
      v17 = [*(&self->_transportScopeVar + 4) stagedSyncAnchorVar];
      v18 = [(CPLPrequeliteScopeStorage *)self _storeValue:0 forColumnVariable:v17 scope:v6 error:a4];

      [*(&self->_noteEndOfResetIfNecessary + 4) discardCachedValue];
      if (!v18 || v12)
      {
        if ((v18 & v11) == 1)
        {
          v23 = [(CPLPrequeliteStorage *)self engineLibrary];
          v24 = [v23 initialSyncDate];
          if (!v24)
          {
            sub_1001B7BB8(self, v6);
          }

          goto LABEL_19;
        }

LABEL_20:

        goto LABEL_21;
      }

      v19 = +[NSDate date];
      v20 = [(CPLPrequeliteScopeStorage *)self _storeValue:v19 forColumnVariable:*(&self->_estimatedAssetCountVar + 4) scope:v6 error:a4];

      if ((v20 & v11) == 1)
      {
        sub_1001B7C3C(v6, self);
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
            v22 = [v6 scopeIdentifier];
            v26 = 138412290;
            v27 = v22;
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

- (BOOL)hasStagedSyncAnchorForScope:(id)a3
{
  v4 = *(&self->_transportScopeVar + 4);
  v5 = a3;
  v6 = [v4 stagedSyncAnchorVar];
  v7 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:v6 scope:v5];

  return v7 != 0;
}

- (BOOL)discardStagedSyncAnchorForScope:(id)a3 error:(id *)a4
{
  v6 = *(&self->_noteEndOfResetIfNecessary + 4);
  v7 = a3;
  [v6 discardCachedValue];
  v8 = [*(&self->_transportScopeVar + 4) stagedSyncAnchorVar];
  LOBYTE(a4) = [(CPLPrequeliteScopeStorage *)self _storeValue:0 forColumnVariable:v8 scope:v7 error:a4];

  return a4;
}

- (BOOL)discardStagedSyncAnchorWithScopeFilter:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(CPLPrequeliteStorage *)self pqStore];
  v7 = [v6 pqlConnection];

  v8 = [(CPLPrequeliteScopeStorage *)self _injectionForFilter:v5];

  if (v8)
  {
    v9 = [(CPLPrequeliteStorage *)self mainTable];
    v10 = [*(&self->_transportScopeVar + 4) stagedSyncAnchorVar];
    v11 = [v7 cplExecute:{@"UPDATE %@ SET %@ = NULL WHERE %@", v9, v10, v8}];

    [*(&self->_noteEndOfResetIfNecessary + 4) discardCachedValue];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (id)transientSyncAnchorForScope:(id)a3
{
  v4 = *(&self->_transportScopeVar + 4);
  v5 = a3;
  v6 = [v4 transientSyncAnchorVar];
  v7 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:v6 scope:v5];

  return v7;
}

- (BOOL)storeTransientSyncAnchor:(id)a3 forScope:(id)a4 error:(id *)a5
{
  v8 = *(&self->_transportScopeVar + 4);
  v9 = a4;
  v10 = a3;
  v11 = [v8 transientSyncAnchorVar];
  LOBYTE(a5) = [(CPLPrequeliteScopeStorage *)self _storeValue:v10 forColumnVariable:v11 scope:v9 error:a5];

  return a5;
}

- (id)classNameOfRecordsForInitialQueryForScope:(id)a3
{
  v4 = *(&self->_transportScopeVar + 4);
  v5 = a3;
  v6 = [v4 classForInitialQueryVar];
  v7 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:v6 scope:v5];

  return v7;
}

- (BOOL)setClassNameOfRecordsForInitialQuery:(id)a3 forScope:(id)a4 error:(id *)a5
{
  v8 = *(&self->_transportScopeVar + 4);
  v9 = a4;
  v10 = a3;
  v11 = [v8 classForInitialQueryVar];
  LOBYTE(a5) = [(CPLPrequeliteScopeStorage *)self _storeValue:v10 forColumnVariable:v11 scope:v9 error:a5];

  return a5;
}

- (BOOL)hasScopeFetchedInitialSyncAnchor:(id)a3
{
  v4 = *(&self->_transportScopeVar + 4);
  v5 = a3;
  v6 = [v4 hasFetchedInitialSyncAnchorVar];
  v7 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:v6 scope:v5];

  LOBYTE(v5) = [v7 BOOLValue];
  return v5;
}

- (BOOL)setInitialSyncAnchor:(id)a3 forScope:(id)a4 error:(id *)a5
{
  v8 = *(&self->_transportScopeVar + 4);
  v9 = a4;
  v10 = a3;
  v11 = [v8 initialSyncAnchorVar];
  LOBYTE(a5) = [(CPLPrequeliteScopeStorage *)self _storeValue:v10 forColumnVariable:v11 scope:v9 error:a5];

  return a5;
}

- (id)initialSyncAnchorForScope:(id)a3
{
  v4 = *(&self->_transportScopeVar + 4);
  v5 = a3;
  v6 = [v4 initialSyncAnchorVar];
  v7 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:v6 scope:v5];

  return v7;
}

- (BOOL)setInitialDownloadDate:(id)a3 forScope:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CPLPrequeliteScopeStorage *)self _storeValue:v8 forColumnVariable:*(&self->_initialSyncDateVar + 4) scope:v9 error:a5];
  if (v10)
  {
    v11 = [v9 scopeIdentifier];
    v12 = [(CPLPrequeliteStorage *)self mainScopeIdentifier];
    v13 = [v11 isEqualToString:v12];

    if (v13)
    {
      v14 = [(CPLPrequeliteStorage *)self engineLibrary];
      v15 = [v14 initialDownloadDate];
      if (!v15)
      {
        [v14 updateInitialDownloadDate:v8];
      }
    }
  }

  return v10;
}

- (BOOL)hasFinishedAFullSyncForScope:(id)a3
{
  v4 = *(&self->_transportScopeVar + 4);
  v5 = a3;
  v6 = [v4 syncAnchorVar];
  v7 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:v6 scope:v5];

  return v7 != 0;
}

- (BOOL)allActiveScopesHasFinishedSyncs
{
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [(CPLPrequeliteStorage *)self mainTable];
  v5 = *(&self->_base + 4);
  v6 = [*(&self->_transportScopeVar + 4) syncAnchorVar];
  v7 = [PQLFormatInjection formatInjection:@"(%@ & %ld) = 0 AND %@ IS NULL", v5, 262164, v6];
  LOBYTE(v5) = [v3 table:v4 hasRecordsMatchingQuery:v7];

  return v5 ^ 1;
}

- (id)lastDateOfClearedPushRepositoryForScope:(id)a3
{
  v4 = *(&self->_transportScopeVar + 4);
  v5 = a3;
  v6 = [v4 lastClearedPushVar];
  v7 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:v6 scope:v5];

  return v7;
}

- (BOOL)storeLastDateOfClearedPushRepository:(id)a3 forScope:(id)a4 error:(id *)a5
{
  v8 = *(&self->_transportScopeVar + 4);
  v9 = a4;
  v10 = a3;
  v11 = [v8 lastClearedPushVar];
  LOBYTE(a5) = [(CPLPrequeliteScopeStorage *)self _storeValue:v10 forColumnVariable:v11 scope:v9 error:a5];

  return a5;
}

- (unint64_t)supportedFeatureVersionInLastSyncForScope:(id)a3
{
  v4 = *(&self->_transportScopeVar + 4);
  v5 = a3;
  v6 = [v4 featureVersionVar];
  v7 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:v6 scope:v5];

  v8 = [v7 unsignedIntegerValue];
  return v8;
}

- (BOOL)storeSupportedFeatureVersionInLastSync:(unint64_t)a3 forScope:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [NSNumber numberWithUnsignedInteger:a3];
  v10 = [*(&self->_transportScopeVar + 4) featureVersionVar];
  LOBYTE(a5) = [(CPLPrequeliteScopeStorage *)self _storeValue:v9 forColumnVariable:v10 scope:v8 error:a5];

  return a5;
}

- (BOOL)storeEstimatedSize:(unint64_t)a3 estimatedAssetCount:(unint64_t)a4 forScope:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = [NSNumber numberWithUnsignedLongLong:a3];
  v12 = [(CPLPrequeliteScopeStorage *)self _storeValue:v11 forColumnVariable:*(&self->_syncState + 4) scope:v10 error:a6];

  if (v12)
  {
    v13 = [NSNumber numberWithUnsignedInteger:a4];
    v14 = [(CPLPrequeliteScopeStorage *)self _storeValue:v13 forColumnVariable:*(&self->_estimatedSizeVar + 4) scope:v10 error:a6];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)estimatedSizeForScope:(id)a3
{
  v3 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:*(&self->_syncState + 4) scope:a3];
  v4 = [v3 unsignedLongLongValue];

  return v4;
}

- (unint64_t)estimatedAssetCountForScope:(id)a3
{
  v3 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:*(&self->_estimatedSizeVar + 4) scope:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (void)_noteEndOfResetIfNecessary
{
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [*(&self->_transportScopeVar + 4) syncAnchorVar];
  v6 = [PQLFormatInjection formatInjection:@"%@ IS NULL AND (%@ & %ld) = 0", v5, *(&self->_base + 4), 28];
  v7 = [v3 table:v4 hasRecordsMatchingQuery:v6];

  if ((v7 & 1) == 0)
  {
    v9 = [(CPLPrequeliteScopeStorage *)self abstractObject];
    v8 = [v9 engineStore];
    [v8 noteResetSyncFinished];
  }
}

- (void)_getLocalIndexes:(id *)a3 cloudIndexes:(id *)a4 forScopeIdentifiers:(id)a5
{
  v7 = a5;
  v8 = objc_alloc_init(NSMutableIndexSet);
  v9 = objc_alloc_init(NSMutableIndexSet);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v7;
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
  *a3 = v8;
  v19 = v9;
  *a4 = v9;
}

- (id)_injectionForFilter:(id)a3
{
  v4 = a3;
  v5 = [v4 localIndexes];
  v6 = [v4 includedScopeIdentifiers];

  if (v6)
  {
    v7 = [*(&self->_modifiedVariables + 4) localIndexVar];
    v8 = [PQLConnection cplInjectionFor:v7 isInIndexSet:v5];
  }

  else
  {
    v9 = [v4 excludedScopeIdentifiers];

    if (!v9)
    {
      goto LABEL_6;
    }

    v7 = [*(&self->_modifiedVariables + 4) localIndexVar];
    v8 = [PQLConnection cplInjectionFor:v7 isNotInIndexSet:v5];
  }

  v9 = v8;

LABEL_6:

  return v9;
}

- (id)filterForIncludedScopeIdentifiers:(id)a3
{
  v13 = 0;
  v14 = 0;
  v4 = a3;
  [(CPLPrequeliteScopeStorage *)self _getLocalIndexes:&v14 cloudIndexes:&v13 forScopeIdentifiers:v4];
  v5 = v14;
  v6 = v13;
  v7 = sub_100149304();
  v8 = [PQLConnection cplInjectionFor:v7 isInIndexSet:v5];

  v9 = sub_100149304();
  v10 = [PQLConnection cplInjectionFor:v9 isInIndexSet:v6];

  v11 = [[CPLPrequeliteScopeFilter alloc] initWithIncludedScopeIdentifiers:v4 localIndexesInjection:v8 localIndexes:v5 cloudIndexesInjection:v10 cloudIndexes:v6];

  return v11;
}

- (id)filterForExcludedScopeIdentifiers:(id)a3
{
  v13 = 0;
  v14 = 0;
  v4 = a3;
  [(CPLPrequeliteScopeStorage *)self _getLocalIndexes:&v14 cloudIndexes:&v13 forScopeIdentifiers:v4];
  v5 = v14;
  v6 = v13;
  v7 = sub_100149304();
  v8 = [PQLConnection cplInjectionFor:v7 isNotInIndexSet:v5];

  v9 = sub_100149304();
  v10 = [PQLConnection cplInjectionFor:v9 isInIndexSet:v6];

  v11 = [[CPLPrequeliteScopeFilter alloc] initWithExcludedScopeIdentifiers:v4 localIndexesInjection:v8 localIndexes:v5 cloudIndexesInjection:v10 cloudIndexes:v6];

  return v11;
}

- (BOOL)storeActivationDate:(id)a3 forScope:(id)a4 error:(id *)a5
{
  v8 = a4;
  if ([(CPLPrequeliteScopeStorage *)self _storeValue:a3 forColumnVariable:*(&self->_initialDownloadDateVar + 4) scope:v8 error:a5]&& [(CPLPrequeliteScopeStorage *)self storeInitialMetadataQueriesDate:0 forScope:v8 error:a5]&& [(CPLPrequeliteScopeStorage *)self storeInitialMetadataDownloadDate:0 forScope:v8 error:a5])
  {
    v9 = [(CPLPrequeliteScopeStorage *)self storeInitialMingleDate:0 forScope:v8 error:a5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)hasActiveScopeIndex:(int64_t)a3 scopeType:(unint64_t)a4
{
  switch(a4)
  {
    case 3uLL:
      v6 = [*(&self->_modifiedVariables + 4) stableIndexVar];
      break;
    case 2uLL:
      v6 = [*(&self->_modifiedVariables + 4) cloudIndexVar];
      break;
    case 1uLL:
      v6 = [*(&self->_modifiedVariables + 4) localIndexVar];
      break;
    default:
LABEL_12:
      v15 = 0;
      return v15 & 1;
  }

  v7 = v6;
  v8 = [PQLFormatInjection formatInjection:@"%@ = %ld", v6, a3];

  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = [(CPLPrequeliteStorage *)self pqStore];
  v10 = [v9 pqlConnection];

  v11 = objc_opt_class();
  v12 = *(&self->_base + 4);
  v13 = [(CPLPrequeliteStorage *)self mainTable];
  v14 = [v10 cplFetchObjectOfClass:v11 sql:{@"SELECT %@ FROM %@ WHERE %@", v12, v13, v8}];

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

- (BOOL)_addScope:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLPrequeliteStorage *)self pqStore];
  v35 = [v7 pqlConnection];

  v8 = [v6 scopeType];
  v9 = [v6 scopeIdentifier];
  if ([(CPLPrequeliteScopeStorage *)self _scopeTypeSupportsClientSync:v8 scopeIdentifier:v9])
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
      v42 = v6;
      v43 = 2114;
      v44 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Creating record for %@ with flags %{public}@", buf, 0x16u);
    }
  }

  v33 = a4;
  v15 = [(CPLPrequeliteStorage *)self mainTable];
  v16 = [*(&self->_modifiedVariables + 4) namesInjection];
  v17 = [*(&self->_transportScopeVar + 4) featureVersionVar];
  v18 = *(&self->_base + 4);
  v19 = [*(&self->_pushToTransportTodoVar + 4) expirationIntervalVar];
  [*(&self->_modifiedVariables + 4) injectionForValues:v6];
  v20 = v34 = v6;
  v21 = [*(&self->_transportScopeVar + 4) featureVersionVar];
  v22 = [v21 bindableValueForDefaultValue];
  v23 = [v35 cplExecute:{@"INSERT INTO %@ (%@, %@, %@, %@) VALUES (%@, %@, %ld, %lu)", v15, v16, v17, v18, v19, v20, v22, v10, v12}];

  if (v23)
  {
    v24 = v34;
    v25 = [v34 scopeIdentifier];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v26 = [*(&self->_stagedScopeIdentifierVar + 4) variables];
    v27 = [v26 countByEnumeratingWithState:&v36 objects:v40 count:16];
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
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v36 + 1) + 8 * i);
          if ([v31 hasCachedValueForIdentifier:v25])
          {
            [v31 discardCachedValue];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v28);
    }
  }

  else
  {
    v24 = v34;
    if (v33)
    {
      *v33 = [v35 lastError];
    }
  }

  return v23;
}

- (BOOL)forceIdentifyUknownScopesWithError:(id *)a3
{
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [v5 pqlConnection];

  [*(&self->_scopeChangeVar + 4) discardCachedValue];
  v7 = [(CPLPrequeliteStorage *)self mainTable];
  v8 = *(&self->_scopeChangeVar + 4);
  v18 = [*(&self->_modifiedVariables + 4) scopeTypeVar];
  v9 = [v6 cplExecute:@"UPDATE %@ SET %@ = NULL WHERE %@ = %ld"];

  if (v9)
  {
    [v6 changes];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = sub_10013EE4C();
      if (sub_100003424(v10))
      {
        sub_10014ADF8(&_mh_execute_header, v11, v12, "Will try to identify %lld yet unidentified scopes", v13, v14, v15, v16, v7, v8, v18, 0, 0);
      }
    }
  }

  else if (a3)
  {
    *a3 = [v6 lastCPLError];
  }

  return v9;
}

- (BOOL)forcePushToTransportForActiveScopesWithError:(id *)a3
{
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [v5 pqlConnection];

  v7 = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [*(&self->_supervisorInfoVar + 4) setHasSomethingTodo];
  v18 = *(&self->_base + 4);
  v9 = [v6 cplExecute:@"UPDATE %@ SET %@ WHERE %@ & %ld = 0"];

  if (v9)
  {
    [v6 changes];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = sub_10013EE4C();
      if (sub_100003424(v10))
      {
        sub_10014ADF8(&_mh_execute_header, v11, v12, "Marked %lld scopes as need to push to transport", v13, v14, v15, v16, v7, v8, v18, 16, 0);
      }
    }
  }

  else if (a3)
  {
    *a3 = [v6 lastCPLError];
  }

  return v9;
}

- (BOOL)setSyncAnchor:(id)a3 forScope:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [*(&self->_transportScopeVar + 4) stagedSyncAnchorVar];
    v11 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:v10 scope:v9];

    if (!v11)
    {
      v12 = [*(&self->_transportScopeVar + 4) syncAnchorVar];
      v13 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:v12 scope:v9];

      if (v13 && [v8 isEqual:v13])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v14 = sub_10013EE4C();
          if (sub_100003424(v14))
          {
            v15 = [v9 scopeIdentifier];
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
      v22 = [v8 cplSyncAnchorDescription];
      v23 = [v9 scopeIdentifier];
      *v34 = 138412546;
      *&v34[4] = v22;
      sub_1000033B4();
      *&v34[14] = v24;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Storing staged sync anchor %@ for %@", v34, 0x16u);
    }
  }

  v25 = [*(&self->_transportScopeVar + 4) stagedSyncAnchorVar];
  v26 = [(CPLPrequeliteScopeStorage *)self _storeValue:v8 forColumnVariable:v25 scope:v9 error:a5];

  if (v26)
  {
    v27 = *(&self->_noteEndOfResetIfNecessary + 4);
    if (v8)
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
      v29 = [v8 cplSyncAnchorDescription];
      v30 = *a5;
      sub_10000AF90();
      *&v34[12] = 2112;
      *&v34[14] = v9;
      v35 = 2112;
      v36 = v31;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Unable to store sync anchor %@ for %@: %@", v34, 0x20u);
    }
  }

  v32 = 0;
LABEL_26:

  return v32;
}

- (BOOL)resetSyncAnchorForScope:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10013EE4C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1000139A0();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Resetting sync anchor for %@", v12, 0xCu);
    }
  }

  v7 = [*(&self->_transportScopeVar + 4) stagedSyncAnchorVar];
  v8 = sub_10014ADD0(v7);

  if (v8)
  {
    v9 = [*(&self->_transportScopeVar + 4) syncAnchorVar];
    v10 = sub_10014ADD0(v9);
  }

  else
  {
    v10 = 0;
  }

  [*(&self->_noteEndOfResetIfNecessary + 4) discardCachedValue];

  return v10;
}

- (void)_markFirstSyncOfPrimaryAsSuccessfulWithScope:(id)a3
{
  v4 = a3;
  v5 = [*(&self->_transportScopeVar + 4) syncAnchorVar];
  v6 = [(CPLPrequeliteScopeStorage *)self _valueForColumnVariable:v5 scope:v4];

  if (v6)
  {
    v5 = [(CPLPrequeliteScopeStorage *)self initialSyncDateForScope:v4];
    if (!v5)
    {
      if (_CPLSilentLogging)
      {
LABEL_21:

        goto LABEL_22;
      }

      v7 = sub_10013EE4C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to set initial sync date for status (no initial sync date)", v18, 2u);
      }

LABEL_20:

      goto LABEL_21;
    }

    v7 = [(CPLPrequeliteStorage *)self engineLibrary];
    v8 = [v7 initialSyncDate];
    if (v8)
    {
      if (_CPLSilentLogging)
      {
LABEL_19:

        goto LABEL_20;
      }

      v9 = sub_10013EE4C();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to set initial sync date for status (initial sync date has already been set)", buf, 2u);
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

      v9 = [(CPLPrequeliteStorage *)self engineLibrary];
      v17 = +[NSDate date];
      [v9 updateInitialSyncDate:v17];
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

- (BOOL)bumpPullFromTransportExpirationIntervalWithError:(id *)a3
{
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [v5 pqlConnection];

  [(CPLPrequeliteScopeStorage *)self _minimalPullFromTranportExpirationInterval];
  v8 = v7;
  v9 = [(CPLPrequeliteStorage *)self mainTable];
  v10 = [*(&self->_pushToTransportTodoVar + 4) expirationIntervalVar];
  v11 = [*(&self->_pushToTransportTodoVar + 4) expirationIntervalVar];
  v12 = [v6 cplExecute:{@"UPDATE %@ SET %@ = %lu WHERE %@ < %lu", v9, v10, v8, v11, v8}];

  if (v12)
  {
    v13 = [v6 changes];
    if (v13 >= 1 && (_CPLSilentLogging & 1) == 0)
    {
      v14 = v13;
      v15 = sub_10013EE4C();
      if (sub_100003424(v15))
      {
        v16 = [CPLDateFormatter stringForTimeInterval:v8];
        *buf = 138412546;
        v19 = v16;
        v20 = 2048;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEFAULT, "Bumped pull-from-transport expiration interval to %@ for %lld scopes", buf, 0x16u);
      }
    }
  }

  else if (a3)
  {
    *a3 = [v6 lastCPLError];
  }

  return v12;
}

@end