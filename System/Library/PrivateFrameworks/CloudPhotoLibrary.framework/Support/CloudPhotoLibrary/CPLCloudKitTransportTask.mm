@interface CPLCloudKitTransportTask
+ (NSDictionary)mappingForMoveSteps;
+ (NSDictionary)reverseMappingForMoveSteps;
+ (id)copiedRecordFromSourceRecord:(id)a3 sourceDatabaseScope:(int64_t)a4 toRecordID:(id)a5 helper:(id)a6 action:(id)a7 error:(id *)a8;
+ (id)moveStepFaultInjector;
+ (void)initialize;
+ (void)setMoveStepFaultInjector:(id)a3;
- (BOOL)_isCapabilityCheckIgnorableError:(id)a3;
- (BOOL)_mergeFoundCKRecords:(id)a3 updateFoundCPLRecords:(id)a4 remainingScopedIdentifiers:(id)a5 fetchedScopedIdentifiers:(id)a6 userRecordID:(id)a7 targetMapping:(id)a8 postProcessRecord:(id)a9 error:(id *)a10;
- (BOOL)deleteTemporaryFolderWithError:(id *)a3;
- (BOOL)foreground;
- (BOOL)shouldRunOperationsWithError:(id *)a3;
- (CKOperation)currentOperation;
- (CKRecordID)currentUserID;
- (CPLCloudKitTransportTask)initWithController:(id)a3;
- (CPLFingerprintContext)fingerprintContext;
- (NSArray)lastOperationRequestUUIDs;
- (OS_dispatch_queue)synchronousWorkQueue;
- (id)_destinationRecordsFromSourceRecords:(id)a3 recordIDs:(id)a4 sourceType:(int64_t)a5 destinationRecordIDs:(id)a6 helper:(id)a7 sourceRecordIDs:(id *)a8 operationContext:(id)a9 action:(id)a10 error:(id *)a11;
- (id)_errorForUpdateError:(id)a3 scopeProvider:(id)a4;
- (id)_interpretedChangeFromCKRecord:(id)a3 scopedIdentifier:(id)a4 userRecordID:(id)a5;
- (id)_interpretedSharedChangeFromCKRecord:(id)a3 scopedIdentifier:(id)a4 userRecordID:(id)a5;
- (id)_moveChangesFromSourceRecords:(id)a3 recordIDs:(id)a4 sourceType:(int64_t)a5 destinationRecordIDs:(id)a6 helper:(id)a7 sourceRecordIDs:(id *)a8 operationContext:(id)a9 error:(id *)a10;
- (id)_networkBehaviorForConfiguration:(id)a3;
- (id)_recordWithRecordID:(id)a3 usingRealRecords:(id)a4 remappedRecordIDs:(id)a5 wantsAllRecords:(BOOL)a6;
- (id)_scopeIdentifierFromZoneID:(id)a3;
- (id)_sharedRecordToPrivateRecord:(id)a3 scopedIdentifier:(id)a4;
- (id)_stringForQoS:(int64_t)a3;
- (id)baseConfigurationForTask;
- (id)baseDestinationCKRecordForSourceCKRecord:(id)a3 destinationCKRecordID:(id)a4 error:(id *)a5;
- (id)blockWithAdaptedQOS:(id)a3;
- (id)callbackOperationDidFinishWithError:(id)a3;
- (id)cloudKitScopeForScopeIdentifier:(id)a3;
- (id)operationDidFinish:(id)a3 error:(id)a4;
- (id)operationDidFinishWithError:(id)a3;
- (id)scopeIdentifierFromZoneID:(id)a3;
- (id)scopedIdentifierForCKRecordID:(id)a3;
- (id)zoneIDFromScopeIdentifier:(id)a3;
- (void)_acquireActivityAndLaunchOperation;
- (void)_applyMoveChanges:(id)a3 sourceType:(int64_t)a4 destinationType:(int64_t)a5 helper:(id)a6 operationContext:(id)a7 completionHandler:(id)a8;
- (void)_cancelActivityRequest;
- (void)_cancelAllOperationsIfBlocked;
- (void)_cancelCallbackProgress;
- (void)_createSparsePrivateRecordsIfNecessary:(id)a3 recordClass:(Class)a4 userRecordID:(id)a5 completionHandler:(id)a6;
- (void)_enumerateAllZonesForSharedDatabase:(BOOL)a3 block:(id)a4 completionHandler:(id)a5;
- (void)_fetchNextOperationType:(id)a3 followRemapping:(BOOL)a4 recordIDMapping:(id)a5 inResult:(id)a6 storeRequestUUIDsIn:(id)a7 completionHandler:(id)a8;
- (void)_fetchRecordWithScopedIdentifiers:(id)a3 followRemapping:(BOOL)a4 completionHandler:(id)a5;
- (void)_fetchRecordsFollowRemappingWithIDs:(id)a3 alreadyFetchRecordIDs:(id)a4 remappedRecordIDs:(id)a5 realRecords:(id)a6 type:(int64_t)a7 storeRequestUUIDsIn:(id)a8 completionHandler:(id)a9;
- (void)_fetchRecordsForRemainingScopedIdentifiers:(id)a3 alreadyFetchedScopedIdentifiers:(id)a4 userRecordID:(id)a5 foundCPLRecords:(id)a6 foundCKRecords:(id)a7 targetMapping:(id)a8 postProcessRecord:(id)a9 completionHandler:(id)a10;
- (void)_fetchZoneForZoneID:(id)a3 operationType:(int64_t)a4 completionHandler:(id)a5;
- (void)_mergePrivateRecord:(id)a3 withSharedRecord:(id)a4 merger:(id)a5;
- (void)_reallyStartOperation;
- (void)_uploadDestinationRecords:(id)a3 destinationType:(int64_t)a4 scopeProvider:(id)a5 operationContext:(id)a6 uploadAction:(id)a7 completionHandler:(id)a8;
- (void)acquireHelperWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)associateMetric:(id)a3;
- (void)cancel;
- (void)cancelIfBlocked;
- (void)checkEPPCapabilityIfNecessaryForCloudKitScope:(id)a3 completionHandler:(id)a4;
- (void)copyRecordsWithIDs:(id)a3 followRemapping:(BOOL)a4 sourceType:(int64_t)a5 destinationRecordIDs:(id)a6 destinationType:(int64_t)a7 helper:(id)a8 completionHandler:(id)a9;
- (void)copyRecordsWithIDs:(id)a3 sourceType:(int64_t)a4 destinationRecordIDs:(id)a5 destinationType:(int64_t)a6 completionHandler:(id)a7;
- (void)dispatchAfter:(double)a3 block:(id)a4;
- (void)dispatchAsync:(id)a3;
- (void)dispatchCallbackOperation:(id)a3 progress:(id)a4;
- (void)dispatchSynchronousWork:(id)a3;
- (void)enumerateAllZonesWithBlock:(id)a3 completionHandler:(id)a4;
- (void)executeSynchronousWork:(id)a3 description:(id)a4 completionHandler:(id)a5;
- (void)executeSynchronousWork:(id)a3 onItems:(id)a4 description:(id)a5 completionHandler:(id)a6;
- (void)fetchFullRecordsForScopedIdentifiers:(id)a3 targetMapping:(id)a4 postProcessRecord:(id)a5 completionHandler:(id)a6;
- (void)fetchPlaceholderRecordsForScopedIdentifiers:(id)a3 targetMapping:(id)a4 completionHandler:(id)a5;
- (void)fetchRecordWithNames:(id)a3 fetchResources:(BOOL)a4 inScope:(id)a5 completionHandler:(id)a6;
- (void)fetchRecordsFollowRemappingWithIDs:(id)a3 wantsAllRecords:(BOOL)a4 type:(int64_t)a5 completionHandler:(id)a6;
- (void)fetchRecordsWithIDs:(id)a3 fetchResources:(BOOL)a4 desiredKeys:(id)a5 wantsAllRecords:(BOOL)a6 type:(int64_t)a7 perFoundRecordBlock:(id)a8 completionHandler:(id)a9;
- (void)fetchUnknownTargetsInMapping:(id)a3 completionHandler:(id)a4;
- (void)fetchUserRecordIDFetchWithCompletionHandler:(id)a3;
- (void)fetchZoneForScope:(id)a3 completionHandler:(id)a4;
- (void)getTemporaryFolderWithCompletionHandler:(id)a3;
- (void)getUserRecordIDFetchIfNecessaryWithCompletionHandler:(id)a3;
- (void)launchOperation:(id)a3 type:(int64_t)a4 withContext:(id)a5;
- (void)launchOperation:(id)a3 type:(int64_t)a4 withContext:(id)a5 sourceBundleIdentifiers:(id)a6;
- (void)moveRecordsWithIDs:(id)a3 followRemapping:(BOOL)a4 sourceType:(int64_t)a5 destinationRecordIDs:(id)a6 destinationType:(int64_t)a7 helper:(id)a8 finalizeMoveChanges:(id)a9 completionHandler:(id)a10;
- (void)runOperations;
- (void)setTransportGroup:(id)a3;
- (void)setupConfigurationForOperation:(id)a3;
- (void)taskDidFinish;
- (void)updateContextWithBlock:(id)a3;
- (void)updateContextWithBlock:(id)a3 forOperation:(id)a4;
- (void)updateOneBatch;
- (void)updateOneBatchForOperation:(id)a3;
- (void)updatePrivatePropertiesOnAssetsWithScopedIdentifiers:(id)a3 desiredKeys:(id)a4 destinationZoneIdentification:(id)a5 sharedZoneIdentification:(id)a6 targetMapping:(id)a7 knownRecords:(id)a8 shouldUpdateRecord:(id)a9 updateBlock:(id)a10 completionHandler:(id)a11;
- (void)updateProgress:(double)a3;
- (void)updateProgress:(double)a3 forOperation:(id)a4;
- (void)updateRecords:(id)a3 cloudKitScope:(id)a4 completionHandler:(id)a5;
- (void)uploadRecords:(id)a3 cloudKitScope:(id)a4 scopeProvider:(id)a5 completionHandler:(id)a6;
@end

@implementation CPLCloudKitTransportTask

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    byte_1002C5240 = [v2 BOOLForKey:@"CPLTrackOperationTypes"];
  }
}

- (void)_reallyStartOperation
{
  self->_mustCallTaskDidFinish = 1;
  [(CPLCloudKitTransportTask *)self runOperations];
  if (self->_mustCallTaskDidFinish && ![(NSMutableArray *)self->_currentOperations count]&& !self->_nonCKOperationCount)
  {

    [(CPLCloudKitTransportTask *)self taskDidFinish];
  }
}

- (id)baseConfigurationForTask
{
  v3 = [(CPLCloudKitTaskController *)self->_controller newOperationConfiguration];
  v4 = [(CPLCloudKitTransportTask *)self operationGroup];
  v5 = [v4 defaultConfiguration];
  [(CPLBackgroundActivity *)self->_activity attachToCKOperationConfiguration:v3];
  v6 = sub_10000489C(self);
  if ((v6 & 1) == 0)
  {
    v7 = qos_class_self();
    v8 = 33;
    v9 = -1;
    v10 = 25;
    v11 = 17;
    if (v7 != QOS_CLASS_UTILITY)
    {
      v11 = 9;
    }

    if (v7 != QOS_CLASS_USER_INITIATED)
    {
      v10 = v11;
    }

    if (v7 != QOS_CLASS_DEFAULT)
    {
      v9 = v10;
    }

    if (v7 != QOS_CLASS_USER_INTERACTIVE)
    {
      v8 = v9;
    }

    if (v7)
    {
      v12 = v8;
    }

    else
    {
      v12 = -1;
    }

    [v3 setQualityOfService:v12];
  }

  [v3 setCPLDiscretionary:v6];
  [(CPLCloudKitTransportTask *)self timeoutIntervalForRequest];
  v14 = v13;
  [v5 timeoutIntervalForRequest];
  if (v14 >= 0.0 && (v15 >= 0.0 ? (v16 = v14 < v15) : (v16 = 1), v16))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = sub_100003810();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v26 = 138412290;
        v27 = self;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Overriding request timeout for %@", &v26, 0xCu);
      }
    }

    v18 = v3;
    v19 = v14;
  }

  else
  {
    [v5 timeoutIntervalForRequest];
    v18 = v3;
  }

  [v18 setTimeoutIntervalForRequest:v19];
  [(CPLCloudKitTransportTask *)self timeoutIntervalForResource];
  v21 = v20;
  [v5 timeoutIntervalForResource];
  if ((v6 & (v22 < 0.0)) != 0)
  {
    v22 = 86400.0;
  }

  if (v21 >= 0.0 && (v22 < 0.0 || v21 < v22))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v24 = sub_100003810();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v26 = 138412290;
        v27 = self;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Overriding resource timeout for %@", &v26, 0xCu);
      }
    }

    v22 = v21;
  }

  [v3 setTimeoutIntervalForResource:v22];
  if (self->_sourceBundleIdentifier)
  {
    [v3 setApplicationBundleIdentifierOverride:?];
  }

  if (-[CPLCloudKitTransportTask allowsCellular](self, "allowsCellular") && ([v5 allowsCellularAccess] & 1) == 0)
  {
    [v3 setAllowsCellularAccess:1];
  }

  return v3;
}

+ (id)copiedRecordFromSourceRecord:(id)a3 sourceDatabaseScope:(int64_t)a4 toRecordID:(id)a5 helper:(id)a6 action:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v73 = v13;
  v69 = a8;
  v17 = [v15 baseDestinationCKRecordForSourceCKRecord:v13 destinationCKRecordID:v14 error:a8];
  if (v17)
  {
    v18 = v17;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = sub_1000035F0();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = [v73 cplFullDescription];
        *buf = 138412546;
        v92 = v16;
        v93 = 2112;
        v94 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%@ from record: %@", buf, 0x16u);
      }
    }

    v67 = v14;
    v68 = v16;
    v21 = [v14 zoneID];
    [v73 recordID];
    v84[0] = _NSConcreteStackBlock;
    v84[1] = 3221225472;
    v84[2] = sub_1000380C4;
    v65 = v84[3] = &unk_100273AD8;
    v66 = v15;
    v85 = v65;
    v88 = a4;
    v22 = v15;
    v86 = v22;
    v64 = v21;
    v87 = v64;
    v23 = objc_retainBlock(v84);
    v24 = [v73 encryptedValues];
    v71 = [v18 encryptedValues];
    v25 = [NSSet alloc];
    v72 = v24;
    v26 = [v24 allKeys];
    v27 = [v25 initWithArray:v26];

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v28 = v27;
    v29 = [v28 countByEnumeratingWithState:&v80 objects:v90 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = v18;
      v32 = *v81;
      while (2)
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v81 != v32)
          {
            objc_enumerationMutation(v28);
          }

          v34 = *(*(&v80 + 1) + 8 * i);
          if ([v22 shouldCopyCKRecordKeyToDestinationCKRecord:v34])
          {
            v35 = [v72 objectForKeyedSubscript:v34];
            v79 = 0;
            v36 = (v23[2])(v23, v71, v34, v35, &v79);
            v37 = v79;
            if (!v36)
            {
              v63 = v37;

              v18 = 0;
              goto LABEL_20;
            }
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v80 objects:v90 count:16];
        if (v30)
        {
          continue;
        }

        break;
      }

      v63 = 0;
      v18 = v31;
    }

    else
    {
      v63 = 0;
    }

LABEL_20:

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v39 = [v73 allKeys];
    v40 = [v39 countByEnumeratingWithState:&v75 objects:v89 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v76;
      v70 = v39;
      while (2)
      {
        for (j = 0; j != v41; j = j + 1)
        {
          if (*v76 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v75 + 1) + 8 * j);
          if ([v22 shouldCopyCKRecordKeyToDestinationCKRecord:{v44, v63, v64}] && (objc_msgSend(v28, "containsObject:", v44) & 1) == 0)
          {
            v45 = v28;
            v46 = [v73 objectForKeyedSubscript:v44];
            v47 = v18;
            v48 = v46;
            v74[1] = 0;
            v49 = v23;
            v50 = v47;
            v51 = (v23[2])(v23);
            v52 = 0;
            v53 = v52;
            if (!v51)
            {

              v54 = 0;
              v57 = v65;
              v23 = v49;
              v28 = v45;
              v56 = v70;
              goto LABEL_34;
            }

            v18 = v50;
            v23 = v49;
            v28 = v45;
            v39 = v70;
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v75 objects:v89 count:16];
        if (v41)
        {
          continue;
        }

        break;
      }
    }

    if (v18)
    {
      v74[0] = v63;
      v54 = [v22 finalizedDestinationCKRecordFromProposedCKRecord:v18 error:v74];
      v53 = v74[0];
      v55 = v18;
      v48 = v63;
      v56 = v55;
      v57 = v65;
LABEL_34:

      v58 = v53;
    }

    else
    {
      v54 = 0;
      v57 = v65;
      v58 = v63;
    }

    v15 = v66;
    v14 = v67;
    if (v69 && !v54)
    {
      v59 = v58;
      *v69 = v58;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v60 = sub_1000035F0();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        v61 = [v54 cplFullDescription];
        *buf = 138412546;
        v92 = v68;
        v93 = 2112;
        v94 = v61;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEBUG, "%@ to record: %@", buf, 0x16u);
      }
    }

    if ([v54 cpl_isEPPRecord])
    {
      [v54 cpl_markRecordAsEPP];
    }

    v38 = v54;

    v16 = v68;
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (id)_destinationRecordsFromSourceRecords:(id)a3 recordIDs:(id)a4 sourceType:(int64_t)a5 destinationRecordIDs:(id)a6 helper:(id)a7 sourceRecordIDs:(id *)a8 operationContext:(id)a9 action:(id)a10 error:(id *)a11
{
  v16 = a3;
  v36 = a4;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  v20 = a10;
  v21 = CPLCKDatabaseScopeForCPLCloudKitOperationType(a5);
  v22 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v16, "count")}];
  v23 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v16, "count")}];
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_1000043C0;
  v54 = sub_1000052C4;
  v55 = 0;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000385D4;
  v38[3] = &unk_100273B00;
  v24 = v16;
  v39 = v24;
  v25 = v17;
  v48 = a2;
  v40 = v25;
  v41 = self;
  v26 = v18;
  v42 = v26;
  v27 = v23;
  v43 = v27;
  v49 = v21;
  v28 = v20;
  v44 = v28;
  v29 = v19;
  v45 = v29;
  v30 = v22;
  v46 = v30;
  v47 = &v50;
  [v36 enumerateObjectsUsingBlock:v38];
  v31 = v51[5];
  if (v31)
  {
    v32 = 0;
    if (a11)
    {
      *a11 = v31;
    }
  }

  else
  {
    v33 = v27;
    *a8 = v27;
    v32 = v30;
  }

  _Block_object_dispose(&v50, 8);

  return v32;
}

- (void)_uploadDestinationRecords:(id)a3 destinationType:(int64_t)a4 scopeProvider:(id)a5 operationContext:(id)a6 uploadAction:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v43 = 0;
  v19 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v43];
  v20 = v43;
  if (v19)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v21 = sub_1000035F0();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v45 = v14;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Will upload copied records: %@", buf, 0xCu);
      }
    }

    v22 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:v14 recordIDsToDelete:0];
    v23 = [(CPLCloudKitTransportTask *)self fetchCache];
    v24 = v23;
    if (v23)
    {
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_100038A8C;
      v41[3] = &unk_100273B28;
      v41[4] = self;
      v33 = v23;
      v25 = v14;
      v26 = v20;
      v27 = v17;
      v28 = v16;
      v29 = v15;
      v30 = a4;
      v31 = v23;
      v42 = v31;
      [v22 setPerRecordSaveBlock:v41];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100038B48;
      v39[3] = &unk_100273B50;
      v39[4] = self;
      v32 = v31;
      a4 = v30;
      v15 = v29;
      v16 = v28;
      v17 = v27;
      v20 = v26;
      v14 = v25;
      v24 = v33;
      v40 = v32;
      [v22 setPerRecordDeleteBlock:v39];
    }

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100038C04;
    v34[3] = &unk_100273BC8;
    v34[4] = self;
    v35 = v14;
    v38 = v18;
    v36 = v15;
    v37 = v17;
    [v22 setModifyRecordsCompletionBlock:v34];
    [v22 setSavePolicy:2];
    [(CPLCloudKitTransportTask *)self launchOperation:v22 type:a4 withContext:v16];
  }

  else
  {
    (*(v18 + 2))(v18, v20);
  }
}

- (void)copyRecordsWithIDs:(id)a3 followRemapping:(BOOL)a4 sourceType:(int64_t)a5 destinationRecordIDs:(id)a6 destinationType:(int64_t)a7 helper:(id)a8 completionHandler:(id)a9
{
  v13 = a4;
  v16 = a3;
  v17 = a6;
  v18 = a8;
  v19 = a9;
  if ([v16 count])
  {
    v20 = [v16 count];
    if (v20 == [v17 count])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v21 = sub_1000035F0();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v38 = v16;
          v39 = 2112;
          v40 = v17;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Will copy %@ to %@", buf, 0x16u);
        }
      }

      v25 = _NSConcreteStackBlock;
      v26 = 3221225472;
      v27 = sub_100039234;
      v28 = &unk_100273BF0;
      v33 = v19;
      v22 = v16;
      v29 = v22;
      v30 = v17;
      v31 = self;
      v34 = a5;
      v32 = v18;
      v35 = a2;
      v36 = a7;
      v23 = objc_retainBlock(&v25);
      if (v13)
      {
        [(CPLCloudKitTransportTask *)self fetchRecordsFollowRemappingWithIDs:v22 wantsAllRecords:1 type:a5 completionHandler:v23, v25, v26, v27, v28, v29, v30, v31];
      }

      else
      {
        [(CPLCloudKitTransportTask *)self fetchRecordsWithIDs:v22 fetchResources:0 wantsAllRecords:1 type:a5 completionHandler:v23, v25, v26, v27, v28, v29, v30, v31];
      }
    }

    else
    {
      v24 = [CPLErrors incorrectParametersErrorForParameter:@"destinationRecordIDs"];
      (*(v19 + 2))(v19, 0, v24);
    }
  }

  else
  {
    (*(v19 + 2))(v19, &__NSDictionary0__struct, 0);
  }
}

- (void)copyRecordsWithIDs:(id)a3 sourceType:(int64_t)a4 destinationRecordIDs:(id)a5 destinationType:(int64_t)a6 completionHandler:(id)a7
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100039578;
  v13[3] = &unk_100272F88;
  v14 = a7;
  v12 = v14;
  [(CPLCloudKitTransportTask *)self copyRecordsWithIDs:a3 followRemapping:0 sourceType:a4 destinationRecordIDs:a5 destinationType:a6 helper:self completionHandler:v13];
}

- (void)_applyMoveChanges:(id)a3 sourceType:(int64_t)a4 destinationType:(int64_t)a5 helper:(id)a6 operationContext:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v40 = 0;
  v18 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v40];
  v19 = v40;
  if (v18)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v20 = sub_1000035F0();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v42 = v14;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Applying move changes: %@", buf, 0xCu);
      }
    }

    v31 = v15;
    if (qword_1002C5040 != -1)
    {
      sub_10019837C();
    }

    v21 = [(CPLCloudKitTransportTask *)self controller];
    v22 = [v21 databaseForOperationType:a4 relativeToOperationType:a5];

    v23 = [CKMovePhotosOperation alloc];
    v24 = [v14 changes];
    v25 = [v23 initWithMoveChanges:v24 sourceDatabase:v22];

    v26 = [(CPLCloudKitTransportTask *)self fetchCache];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100197858;
    v36[3] = &unk_100273C38;
    v27 = a5;
    v28 = v14;
    v37 = v28;
    v38 = v26;
    v39 = self;
    v29 = v26;
    [v25 setPerRecordMoveBlock:v36];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100039978;
    v32[3] = &unk_100273C88;
    v32[4] = self;
    v35 = v17;
    v33 = v28;
    v34 = v31;
    [v25 setMovePhotosCompletionBlock:v32];
    v30 = v27;
    v15 = v31;
    [(CPLCloudKitTransportTask *)self launchOperation:v25 type:v30 withContext:v16];
  }

  else
  {
    (*(v17 + 2))(v17, v19);
  }
}

- (id)_moveChangesFromSourceRecords:(id)a3 recordIDs:(id)a4 sourceType:(int64_t)a5 destinationRecordIDs:(id)a6 helper:(id)a7 sourceRecordIDs:(id *)a8 operationContext:(id)a9 error:(id *)a10
{
  v15 = a3;
  v36 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a9;
  v19 = CPLCKDatabaseScopeForCPLCloudKitOperationType(a5);
  v20 = -[CPLMoveChangesBatch initWithCapacity:]([CPLMoveChangesBatch alloc], "initWithCapacity:", [v15 count]);
  v21 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v15, "count")}];
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_1000043C0;
  v53 = sub_1000052C4;
  v54 = 0;
  if (qword_1002C5048)
  {
    v22 = +[CPLCloudKitTransportTask mappingForMoveSteps];
  }

  else
  {
    v22 = 0;
  }

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100197BE8;
  v37[3] = &unk_100273B00;
  v23 = v15;
  v38 = v23;
  v24 = v16;
  v47 = a2;
  v39 = v24;
  v40 = self;
  v25 = v17;
  v41 = v25;
  v26 = v21;
  v42 = v26;
  v48 = v19;
  v27 = v22;
  v43 = v27;
  v28 = v18;
  v44 = v28;
  v29 = v20;
  v45 = v29;
  v46 = &v49;
  [v36 enumerateObjectsUsingBlock:v37];
  v30 = v50[5];
  if (v30)
  {
    v31 = 0;
    if (a10)
    {
      *a10 = v30;
    }
  }

  else
  {
    v32 = v26;
    *a8 = v26;
    v31 = v29;
  }

  _Block_object_dispose(&v49, 8);

  return v31;
}

- (void)moveRecordsWithIDs:(id)a3 followRemapping:(BOOL)a4 sourceType:(int64_t)a5 destinationRecordIDs:(id)a6 destinationType:(int64_t)a7 helper:(id)a8 finalizeMoveChanges:(id)a9 completionHandler:(id)a10
{
  v14 = a4;
  v16 = a3;
  v17 = a6;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  if ([v16 count])
  {
    v21 = [v16 count];
    if (v21 == [v17 count])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v22 = sub_1000035F0();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v39 = v16;
          v40 = 2112;
          v41 = v17;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Will move %@ to %@", buf, 0x16u);
        }
      }

      v26 = _NSConcreteStackBlock;
      v27 = 3221225472;
      v28 = sub_10003A138;
      v29 = &unk_100273CF0;
      v34 = v20;
      v23 = v16;
      v30 = v23;
      v31 = v17;
      v32 = self;
      v36 = a5;
      v33 = v18;
      v35 = v19;
      v37 = a7;
      v24 = objc_retainBlock(&v26);
      if (v14)
      {
        [(CPLCloudKitTransportTask *)self fetchRecordsFollowRemappingWithIDs:v23 wantsAllRecords:0 type:a5 completionHandler:v24, v26, v27, v28, v29, v30, v31, v32, v33, v34];
      }

      else
      {
        [(CPLCloudKitTransportTask *)self fetchRecordsWithIDs:v23 fetchResources:0 wantsAllRecords:0 type:a5 completionHandler:v24, v26, v27, v28, v29, v30, v31, v32, v33, v34];
      }
    }

    else
    {
      v25 = [CPLErrors incorrectParametersErrorForParameter:@"destinationRecordIDs"];
      (*(v20 + 2))(v20, 0, v25);
    }
  }

  else
  {
    (*(v20 + 2))(v20, &__NSDictionary0__struct, 0);
  }
}

+ (id)moveStepFaultInjector
{
  v2 = objc_retainBlock(qword_1002C5048);

  return v2;
}

+ (void)setMoveStepFaultInjector:(id)a3
{
  v3 = [a3 copy];
  v4 = qword_1002C5048;
  qword_1002C5048 = v3;
}

+ (NSDictionary)mappingForMoveSteps
{
  v4[0] = &off_10028EBD8;
  v4[1] = &off_10028EBF0;
  v5[0] = @"none";
  v5[1] = @"originPreMoveRead";
  v4[2] = &off_10028EC08;
  v4[3] = &off_10028EC20;
  v5[2] = @"destinationPreMoveRead";
  v5[3] = @"originSignPostStamp";
  v4[4] = &off_10028EC38;
  v4[5] = &off_10028EC50;
  v5[4] = @"destinationPostMoveRead";
  v5[5] = @"originPostMoveRead";
  v4[6] = &off_10028EC68;
  v5[6] = @"originPostMoveUpdate";
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:7];

  return v2;
}

+ (NSDictionary)reverseMappingForMoveSteps
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003A578;
  block[3] = &unk_1002724F0;
  block[4] = a1;
  if (qword_1002C5058 != -1)
  {
    dispatch_once(&qword_1002C5058, block);
  }

  v2 = qword_1002C5050;

  return v2;
}

- (id)baseDestinationCKRecordForSourceCKRecord:(id)a3 destinationCKRecordID:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [CKRecord alloc];
  v9 = [v7 recordType];

  v10 = [v8 initWithRecordType:v9 recordID:v6];

  return v10;
}

- (BOOL)_isCapabilityCheckIgnorableError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:CKErrorDomain];

  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = [v3 code];
  v7 = +[CPLFingerprintScheme supportsEPPAutoEnable];
  v8 = 1;
  if ((v6 > 0x18 || ((1 << v6) & 0x1041000) == 0) && v6 != 160)
  {
    if (v6 == 161)
    {
      v8 = v7 ^ 1;
      goto LABEL_8;
    }

LABEL_7:
    v8 = 0;
  }

LABEL_8:

  return v8;
}

- (void)checkEPPCapabilityIfNecessaryForCloudKitScope:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31 = 0;
  v8 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v31];
  v9 = v31;
  if (v8)
  {
    if (sub_1001985F8(self))
    {
      v10 = CPLCloudKitOperationTypeForScope(v6);
      if (v10 == 1 || (sub_10019869C(self, v7) & 1) != 0)
      {
        v11 = +[NSUserDefaults standardUserDefaults];
        [v11 doubleForKey:@"CPLCheckEPPCapabilityAccessTimeInterval"];
        v13 = v12;

        v26 = v10;
        if (v13 <= 0.0)
        {
          v14 = 0;
        }

        else
        {
          v14 = [NSDate dateWithTimeIntervalSinceNow:-v13];
        }

        v25 = v14;
        v24 = CPLCloudKitEPPCapability();
        v16 = [[CKDeviceCapabilityCheckOptions alloc] initWithExcludeDevicesWithoutCapabilityCheckingSupport:0 excludeZoneAccessBefore:v14];
        v17 = [CKCheckSupportedDeviceCapabilitiesOperation alloc];
        v33 = v24;
        v18 = [NSArray arrayWithObjects:&v33 count:1];
        v34 = v18;
        v19 = [NSArray arrayWithObjects:&v34 count:1];
        v20 = [v6 zoneID];
        v32 = v20;
        v21 = [NSArray arrayWithObjects:&v32 count:1];
        v22 = [v17 initWithDesiredCapabilitySets:v19 zoneIDs:v21 options:v16];

        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_10003E5BC;
        v27[3] = &unk_100273E20;
        v27[4] = self;
        v28 = v6;
        v29 = v24;
        v30 = v7;
        v23 = v24;
        [v22 setCheckSupportedDeviceCapabilitiesCompletionBlock:v27];
        [(CPLCloudKitTransportTask *)self launchOperation:v22 type:v26 withContext:0];
      }
    }

    else
    {
      v15 = [CPLErrors cplErrorWithCode:1002 description:@"EPP Capability check has been disabled"];
      (*(v7 + 2))(v7, 0, v15);
    }
  }

  else
  {
    (*(v7 + 2))(v7, 0, v9);
  }
}

- (CPLFingerprintContext)fingerprintContext
{
  v2 = [(CPLCloudKitTransportTask *)self controller];
  v3 = [v2 fingerprintContext];

  return v3;
}

- (CPLCloudKitTransportTask)initWithController:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = CPLCloudKitTransportTask;
  v6 = [(CPLCloudKitTransportTask *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, a3);
    v8 = CPLCopyDefaultSerialQueueAttributes();
    v9 = dispatch_queue_create("com.apple.cpl.cloudkit.task", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    v7->_allowsCellular = 0;
    v11 = objc_alloc_init(NSMutableArray);
    currentOperations = v7->_currentOperations;
    v7->_currentOperations = v11;

    v7->_isMetadata = 1;
    v7->_highPriorityBackground = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v7->_timeoutIntervalForRequest = _Q0;
    *&v7->_boostable = 1;
  }

  return v7;
}

- (CKRecordID)currentUserID
{
  p_transportUserIdentifier = &self->_transportUserIdentifier;
  if (self->_transportUserIdentifier)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_1001A04FC(p_transportUserIdentifier);
    }

    v3 = *p_transportUserIdentifier;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTransportGroup:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1001A05F8(a2, self, v5);
  }

  transportGroup = self->_transportGroup;
  self->_transportGroup = v5;
}

- (BOOL)foreground
{
  if (self->_foregroundHasBeenChanged)
  {
    foreground = self->_foreground;
  }

  else
  {
    v3 = [(CPLEngineTransportGroup *)self->_transportGroup defaultConfiguration];
    foreground = [v3 cplDiscretionary] ^ 1;
  }

  return foreground & 1;
}

- (void)_acquireActivityAndLaunchOperation
{
  v3 = [(CPLSyncSession *)self->_session cloudKitRescheduler];
  v4 = [v3 goodConditionsDescription];
  [(CPLCloudKitTransportTask *)self setIdleDescription:v4];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005B588;
  v8[3] = &unk_100272268;
  v8[4] = self;
  v9 = v3;
  v5 = v3;
  v6 = [v5 acquireBackgroundActivityWithCompletionHandler:v8];
  activityRequest = self->_activityRequest;
  self->_activityRequest = v6;
}

- (void)_cancelActivityRequest
{
  self->_cancelled = 1;
  if ([(NSMutableArray *)self->_currentOperations count]|| self->_nonCKOperationCount)
  {
    sub_1001A0780(self, a2);
  }

  v4 = [(CPLSyncSession *)self->_session cloudKitRescheduler];
  [v4 dropBackgroundActivityRequest:self->_activityRequest];

  [(CPLCloudKitTransportTask *)self setIdleDescription:0];
  activityRequest = self->_activityRequest;
  self->_activityRequest = 0;

  [(CPLCloudKitTransportTask *)self _reallyStartOperation];
}

- (void)_cancelAllOperationsIfBlocked
{
  if (self->_cancelled)
  {
    return;
  }

  if (!self->_mustCallTaskDidFinish)
  {
    goto LABEL_6;
  }

  if (![(NSMutableArray *)self->_currentOperations count])
  {
    if (self->_cancelled)
    {
      return;
    }

LABEL_6:

    sub_10019EE84(&self->super.isa);
    return;
  }

  v3 = [(CPLCloudKitTaskController *)self->_controller operationTracker];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_currentOperations;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([v3 isOperationBlocked:*(*(&v10 + 1) + 8 * i)])
        {

          sub_10019EE84(&self->super.isa);
          goto LABEL_20;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  sub_1001A092C(v4, self, &v9);
LABEL_20:
}

- (id)blockWithAdaptedQOS:(id)a3
{
  v4 = a3;
  if (self->_forcedTask)
  {
    v5 = +[CPLEngineSyncManager qualityOfServiceForForcedTasks];
  }

  else
  {
    if (!self->_backgroundTask)
    {
      goto LABEL_6;
    }

    v5 = +[CPLEngineSyncManager qualityOfServiceForSyncSessions];
  }

  v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v5, 0, v4);

  v4 = v6;
LABEL_6:
  v7 = objc_retainBlock(v4);

  return v7;
}

- (void)dispatchAsync:(id)a3
{
  v4 = [(CPLCloudKitTransportTask *)self blockWithAdaptedQOS:a3];
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005BC10;
  v10[3] = &unk_1002723C8;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002A3C;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)dispatchAfter:(double)a3 block:(id)a4
{
  v6 = [(CPLCloudKitTransportTask *)self blockWithAdaptedQOS:a4];
  v7 = dispatch_time(0, 1000000000 * a3);
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005BD88;
  v10[3] = &unk_1002723C8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_after(v7, queue, v10);
}

- (BOOL)shouldRunOperationsWithError:(id *)a3
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_cancelled)
  {
    v5 = +[CPLErrors operationCancelledError];
LABEL_5:
    v7 = v5;
    goto LABEL_6;
  }

  acquireError = self->_acquireError;
  if (acquireError)
  {
    v5 = acquireError;
    goto LABEL_5;
  }

  activity = self->_activity;
  if (activity && [(CPLBackgroundActivity *)activity shouldDefer])
  {
    v5 = +[CPLErrors sessionHasBeenDeferredError];
    goto LABEL_5;
  }

  gate = self->_gate;
  if (gate)
  {
    v22 = 0;
    v13 = [(CPLCloudKitTransportTaskGate *)gate shouldRunOperationsForTask:self error:&v22];
    v14 = v22;
    v7 = v14;
    if (!v13)
    {
      goto LABEL_6;
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  controller = self->_controller;
  if (controller)
  {
    v21 = v15;
    v17 = [(CPLCloudKitTaskController *)controller shouldRunOperationsWithError:&v21];
    v7 = v21;

    if (v17)
    {
      v15 = v7;
      goto LABEL_20;
    }

LABEL_6:
    v8 = 0;
    if (!a3)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_20:
  v18 = +[NSUserDefaults standardUserDefaults];
  v19 = [v18 stringForKey:@"CPLFailCloudKitTransportTaskClass"];

  if (v19 && NSClassFromString(v19) && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v20 = [CPLErrors cplErrorWithCode:150 description:@"Failing %@ for testing purpose", objc_opt_class()];

    v8 = 0;
    v15 = v20;
  }

  else
  {
    v8 = 1;
  }

  v7 = v15;
  if (a3)
  {
LABEL_7:
    if (!v8)
    {
      v9 = v7;
      *a3 = v7;
    }
  }

LABEL_9:

  return v8;
}

- (CKOperation)currentOperation
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSMutableArray *)self->_currentOperations count]>= 2)
  {
    sub_1001A0A44(a2, &self->_currentOperations, self);
  }

  currentOperations = self->_currentOperations;

  return [(NSMutableArray *)currentOperations firstObject];
}

- (void)launchOperation:(id)a3 type:(int64_t)a4 withContext:(id)a5
{
  v9 = a3;
  v10 = a5;
  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  v12 = sourceBundleIdentifier;
  if (!sourceBundleIdentifier)
  {
    v5 = [(CPLCloudKitTransportTask *)self controller];
    v12 = [v5 defaultSourceBundleIdentifier];
  }

  v14 = v12;
  v13 = [NSArray arrayWithObjects:&v14 count:1];
  [(CPLCloudKitTransportTask *)self launchOperation:v9 type:a4 withContext:v10 sourceBundleIdentifiers:v13];

  if (!sourceBundleIdentifier)
  {
  }
}

- (void)updateOneBatch
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSMutableArray *)self->_currentOperations count]!= 1)
  {
    sub_1001A0B40(a2, &self->_currentOperations, self);
  }

  v4 = [(NSMutableArray *)self->_currentOperations lastObject];
  [(CPLCloudKitTransportTask *)self updateOneBatchForOperation:v4];
}

- (void)updateProgress:(double)a3
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSMutableArray *)self->_currentOperations count]!= 1)
  {
    sub_1001A0C3C(a2, &self->_currentOperations, self);
  }

  v7 = [(CPLCloudKitTaskController *)self->_controller operationTracker];
  v6 = [(NSMutableArray *)self->_currentOperations lastObject];
  [v7 operation:v6 updateProgress:a3];
}

- (void)updateContextWithBlock:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSMutableArray *)self->_currentOperations count]!= 1)
  {
    sub_1001A0D38(a2, &self->_currentOperations, self);
  }

  v5 = [(CPLCloudKitTaskController *)self->_controller operationTracker];
  v6 = [(NSMutableArray *)self->_currentOperations lastObject];
  [v5 operation:v6 updateContextWithBlock:v7];
}

- (id)operationDidFinishWithError:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSMutableArray *)self->_currentOperations count]!= 1)
  {
    sub_1001A0E34(a2, &self->_currentOperations, self);
  }

  v6 = [(NSMutableArray *)self->_currentOperations lastObject];
  v7 = [(CPLCloudKitTransportTask *)self operationDidFinish:v6 error:v5];

  return v7;
}

- (void)_cancelCallbackProgress
{
  if (self->_callbackOperationProgress)
  {
    v4 = [(CPLCloudKitTransportTask *)self idleDescription];
    if (v4 && ([v4 hasSuffix:@" (cancelled)"] & 1) == 0)
    {
      v3 = [v4 stringByAppendingString:@" (cancelled)"];
      [(CPLCloudKitTransportTask *)self setIdleDescription:v3];
    }

    [(NSProgress *)self->_callbackOperationProgress cancel];
  }
}

- (void)dispatchCallbackOperation:(id)a3 progress:(id)a4
{
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_callbackOperationProgress)
  {
    sub_1001A0F30(self, a2, v7);
  }

  [(CPLCloudKitTransportTask *)self pushTaskOperation];
  [(CPLCloudKitTransportTask *)self setIdleDescription:v7];
  objc_storeStrong(&self->_callbackOperationProgress, a4);
  [(NSProgress *)self->_progress setTotalUnitCount:[(NSProgress *)self->_progress totalUnitCount]+ 1];
  [(NSProgress *)self->_progress addChild:self->_callbackOperationProgress withPendingUnitCount:1];
  if (self->_acquireError)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10005C9DC;
    v15[3] = &unk_100271F40;
    v15[4] = self;
    [(CPLCloudKitTransportTask *)self dispatchAsync:v15];
  }

  else if (self->_activity)
  {
    objc_initWeak(&location, self);
    activity = self->_activity;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10005C9F0;
    v12[3] = &unk_100274CC0;
    objc_copyWeak(&v13, &location);
    v10 = [(CPLBackgroundActivity *)activity addDeferHandler:v12];
    activityEligibilityChangeHandler = self->_activityEligibilityChangeHandler;
    self->_activityEligibilityChangeHandler = v10;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (id)callbackOperationDidFinishWithError:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_callbackOperationProgress)
  {
    sub_1001A114C(a2, self);
  }

  activity = self->_activity;
  if (activity)
  {
    [(CPLBackgroundActivity *)activity removeDeferHandler:self->_activityEligibilityChangeHandler];
    activityEligibilityChangeHandler = self->_activityEligibilityChangeHandler;
    self->_activityEligibilityChangeHandler = 0;
  }

  v8 = v5;
  v9 = v8;
  acquireError = self->_acquireError;
  if (acquireError)
  {
    v11 = acquireError;
    v12 = v9;
  }

  else
  {
    v11 = v8;
    if (!v8)
    {
      goto LABEL_7;
    }

    v11 = v8;
    if (!self->_activity)
    {
      goto LABEL_7;
    }

    if (![CPLCloudKitErrors isCloudKitOperationCancelledError:v8])
    {
      v11 = v9;
      if (![(NSError *)v9 isCPLOperationCancelledError])
      {
        goto LABEL_7;
      }
    }

    v11 = v9;
    if (![(CPLBackgroundActivity *)self->_activity shouldDefer])
    {
      goto LABEL_7;
    }

    v15 = [(CPLCloudKitTransportTask *)self idleDescription];
    v12 = v15;
    v16 = @"operation";
    if (v15)
    {
      v16 = v15;
    }

    v11 = [CPLErrors cplErrorWithCode:257 description:@"%@ has been deferred", v16];
  }

LABEL_7:
  [(NSProgress *)self->_callbackOperationProgress setCompletedUnitCount:[(NSProgress *)self->_callbackOperationProgress totalUnitCount]];
  callbackOperationProgress = self->_callbackOperationProgress;
  self->_callbackOperationProgress = 0;

  [(CPLCloudKitTransportTask *)self setIdleDescription:0];
  [(CPLCloudKitTransportTask *)self popTaskOperation];

  return v11;
}

- (void)executeSynchronousWork:(id)a3 description:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v20 = 0;
  v11 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v20];
  v12 = v20;
  if (v11)
  {
    v13 = [NSProgress progressWithTotalUnitCount:1];
    [(CPLCloudKitTransportTask *)self dispatchCallbackOperation:v9 progress:v13];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10005CDCC;
    v15[3] = &unk_100274D10;
    v16 = v13;
    v17 = self;
    v18 = v8;
    v19 = v10;
    v14 = v13;
    [(CPLCloudKitTransportTask *)self dispatchSynchronousWork:v15];
  }

  else
  {
    (*(v10 + 2))(v10, v12);
  }
}

- (NSArray)lastOperationRequestUUIDs
{
  lastOperationRequestUUIDs = self->_lastOperationRequestUUIDs;
  if (lastOperationRequestUUIDs)
  {
    v4 = [(NSMutableArray *)lastOperationRequestUUIDs copy];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (void)acquireHelperWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v17 = 0;
  v8 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v17];
  v9 = v17;
  if (v8)
  {
    v10 = [NSProgress progressWithTotalUnitCount:1];
    v11 = [[NSString alloc] initWithFormat:@"Acquiring helper %@", v6];
    [(CPLCloudKitTransportTask *)self dispatchCallbackOperation:v11 progress:v10];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10005D68C;
    v13[3] = &unk_100272518;
    v13[4] = self;
    v14 = v6;
    v15 = v10;
    v16 = v7;
    v12 = v10;
    [v12 performAsCurrentWithPendingUnitCount:1 usingBlock:v13];
  }

  else
  {
    (*(v7 + 2))(v7, 0, v9);
  }
}

- (void)getTemporaryFolderWithCompletionHandler:(id)a3
{
  v4 = a3;
  v13 = 0;
  v5 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v13];
  v6 = v13;
  if (v5)
  {
    temporaryFolderURL = self->_temporaryFolderURL;
    if (temporaryFolderURL)
    {
      v4[2](v4, temporaryFolderURL, 0);
    }

    else
    {
      v8 = [NSProgress progressWithTotalUnitCount:1];
      [(CPLCloudKitTransportTask *)self dispatchCallbackOperation:@"Getting a temporary folder" progress:v8];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10005DA04;
      v10[3] = &unk_100271DE0;
      v10[4] = self;
      v11 = v8;
      v12 = v4;
      v9 = v8;
      [v9 performAsCurrentWithPendingUnitCount:1 usingBlock:v10];
    }
  }

  else
  {
    (v4)[2](v4, 0, v6);
  }
}

- (BOOL)deleteTemporaryFolderWithError:(id *)a3
{
  if (self->_temporaryFolderURL)
  {
    v5 = +[NSFileManager defaultManager];
    temporaryFolderURL = self->_temporaryFolderURL;
    v12 = 0;
    v7 = [v5 removeItemAtURL:temporaryFolderURL error:&v12];
    v8 = v12;

    v9 = self->_temporaryFolderURL;
    self->_temporaryFolderURL = 0;

    if (a3 && (v7 & 1) == 0)
    {
      v10 = v8;
      v7 = 0;
      *a3 = v8;
    }
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  return v7;
}

- (void)associateMetric:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(self->_queue);
  [(CPLCloudKitTaskController *)self->_controller associateMetric:v7];
  associatedMetrics = self->_associatedMetrics;
  if (associatedMetrics)
  {
    [(NSMutableSet *)associatedMetrics addObject:v7];
  }

  else
  {
    v5 = [[NSMutableSet alloc] initWithObjects:{v7, 0}];
    v6 = self->_associatedMetrics;
    self->_associatedMetrics = v5;
  }
}

- (void)updateOneBatchForOperation:(id)a3
{
  v6 = a3;
  if (([(NSMutableArray *)self->_currentOperations containsObject:?]& 1) == 0)
  {
    sub_1001A1244(a2, v6);
  }

  v5 = [(CPLCloudKitTaskController *)self->_controller operationTracker];
  [v5 operationDidProgressOneBatch:v6];
}

- (void)updateProgress:(double)a3 forOperation:(id)a4
{
  v8 = a4;
  if (([(NSMutableArray *)self->_currentOperations containsObject:?]& 1) == 0)
  {
    sub_1001A1370(a2, v8);
  }

  v7 = [(CPLCloudKitTaskController *)self->_controller operationTracker];
  [v7 operation:v8 updateProgress:a3];
}

- (void)updateContextWithBlock:(id)a3 forOperation:(id)a4
{
  v9 = a3;
  v7 = a4;
  if (([(NSMutableArray *)self->_currentOperations containsObject:v7]& 1) == 0)
  {
    sub_1001A149C(a2, v7);
  }

  v8 = [(CPLCloudKitTaskController *)self->_controller operationTracker];
  [v8 operation:v7 updateContextWithBlock:v9];
}

- (id)operationDidFinish:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([(NSMutableArray *)self->_currentOperations containsObject:v7]& 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v24 = sub_100003810();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = NSStringFromSelector(a2);
        v26 = [v7 cplOperationClassDescription];
        *buf = 138412546;
        v38 = v25;
        v39 = 2112;
        v40 = v26;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%@ for %@ called while it has not started yet", buf, 0x16u);
      }
    }

    v27 = +[NSAssertionHandler currentHandler];
    v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitTransportTask.m"];
    v29 = NSStringFromSelector(a2);
    v30 = [v7 cplOperationClassDescription];
    [v27 handleFailureInMethod:a2 object:self file:v28 lineNumber:1070 description:{@"%@ for %@ called while it has not started yet", v29, v30}];

    abort();
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_100003810();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v38 = self;
      v39 = 2112;
      v40 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@ finished %@", buf, 0x16u);
    }
  }

  [(CPLCloudKitTransportTaskGate *)self->_gate operation:v7 forTask:self didFinishWithError:v8];
  [(CPLCloudKitTransportTask *)self processErrorIfNeeded:v8];
  v10 = [(CPLCloudKitTaskController *)self->_controller operationTracker];
  [v10 operationDidFinish:v7];

  v31 = v7;
  [(NSMutableArray *)self->_currentOperations removeObject:v7];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = self->_associatedMetrics;
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v33;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        if (([v17 submitted] & 1) == 0 && objc_msgSend(v17, "outstandingBeginCount"))
        {
          if (v14)
          {
            [v14 addObject:v17];
          }

          else
          {
            v14 = [[NSMutableSet alloc] initWithObjects:{v17, 0}];
          }
        }
      }

      v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  objc_storeStrong(&self->_associatedMetrics, v14);
  if (v8)
  {
    acquireError = self->_acquireError;
    v19 = v31;
    if (acquireError)
    {
      v20 = acquireError;
LABEL_23:
      v21 = v20;

      v8 = v21;
      goto LABEL_25;
    }

    activity = self->_activity;
    if (activity && [(CPLBackgroundActivity *)activity shouldDefer])
    {
      v20 = +[CPLErrors sessionHasBeenDeferredError];
      goto LABEL_23;
    }
  }

  else
  {
    v19 = v31;
  }

LABEL_25:
  [(CPLBackgroundActivity *)self->_activity detachFromCKOperation:v19];

  return v8;
}

- (void)taskDidFinish
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSMutableArray *)self->_currentOperations count])
  {
    sub_1001A15C8(a2, &self->_currentOperations, self);
  }

  if (!self->_mustCallTaskDidFinish)
  {
    sub_1001A16C4(a2, self);
  }

  p_temporaryFolderURL = &self->_temporaryFolderURL;
  if (self->_temporaryFolderURL)
  {
    v5 = +[NSFileManager defaultManager];
    v6 = *p_temporaryFolderURL;
    v13 = 0;
    v7 = [v5 removeItemAtURL:v6 error:&v13];
    v8 = v13;

    if ((v7 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
    {
      sub_1001A1790(&self->_temporaryFolderURL, v8);
    }

    v9 = *p_temporaryFolderURL;
    *p_temporaryFolderURL = 0;
  }

  self->_mustCallTaskDidFinish = 0;
  if (self->_hasProgress)
  {
    progressQueue = self->_progressQueue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10005E4E4;
    v12[3] = &unk_100271F40;
    v12[4] = self;
    dispatch_sync(progressQueue, v12);
  }

  else
  {
    v11 = [(CPLCloudKitTaskController *)self->_controller operationTracker];
    [v11 taskDidFinish:self];
  }
}

- (void)runOperations
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitTransportTask.m"];
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:v5 lineNumber:1139 description:{@"%@ should be overriden", v6}];

  abort();
}

- (id)_stringForQoS:(int64_t)a3
{
  v3 = __ROR8__(a3 - 9, 3);
  if (v3 > 3)
  {
    return @"def";
  }

  else
  {
    return off_100275008[v3];
  }
}

- (id)_networkBehaviorForConfiguration:(id)a3
{
  if ([a3 cplDiscretionary])
  {
    return @"disc";
  }

  else
  {
    return @"non-disc";
  }
}

- (void)getUserRecordIDFetchIfNecessaryWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (self->_transportUserIdentifier && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    v5 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v8];
    v6 = v8;
    if (v5)
    {
      v4[2](v4, self->_transportUserIdentifier, 0);
    }

    else
    {
      (v4)[2](v4, 0, v6);
    }
  }

  else
  {
    sub_1001A1860(self, v7, v4);
  }
}

- (void)fetchUserRecordIDFetchWithCompletionHandler:(id)a3
{
  v4 = a3;
  v10 = 0;
  v5 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v10];
  v6 = v10;
  if (v5)
  {
    v7 = +[CKFetchRecordsOperation fetchCurrentUserRecordOperation];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10005EA98;
    v8[3] = &unk_100274EA0;
    v8[4] = self;
    v9 = v4;
    [v7 setFetchRecordsCompletionBlock:v8];
    [(CPLCloudKitTransportTask *)self launchOperation:v7 type:1 withContext:0];
  }

  else
  {
    (*(v4 + 2))(v4, 0, v6);
  }
}

- (void)_enumerateAllZonesForSharedDatabase:(BOOL)a3 block:(id)a4 completionHandler:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v25 = 0;
  v10 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v25];
  v11 = v25;
  if (v10)
  {
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v24 = 0;
    v12 = objc_alloc_init(CKFetchDatabaseChangesOperation);
    [v12 setFetchAllChanges:1];
    objc_initWeak(&location, v12);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10005EF9C;
    v18[3] = &unk_100274EC8;
    v19 = v8;
    v20 = v23;
    objc_copyWeak(&v21, &location);
    [v12 setRecordZoneWithIDChangedBlock:v18];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10005F00C;
    v14[3] = &unk_100274F18;
    v14[4] = self;
    v16 = v23;
    v17 = v6;
    v15 = v9;
    [v12 setFetchDatabaseChangesCompletionBlock:v14];
    if (v6)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    [(CPLCloudKitTransportTask *)self launchOperation:v12 type:v13 withContext:0];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);

    _Block_object_dispose(v23, 8);
  }

  else
  {
    (*(v9 + 2))(v9, 1, v11);
  }
}

- (void)enumerateAllZonesWithBlock:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005F304;
  v9[3] = &unk_100274F40;
  v9[4] = self;
  v10 = a4;
  v11 = v6;
  v7 = v6;
  v8 = v10;
  [(CPLCloudKitTransportTask *)self _enumerateAllZonesForSharedDatabase:0 block:v7 completionHandler:v9];
}

- (id)cloudKitScopeForScopeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLTransportScopeMapping *)self->_transportScopeMapping objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [(CPLCloudKitTaskController *)self->_controller cloudKitScopeForScopeIdentifier:v4];
  }

  return v5;
}

- (id)zoneIDFromScopeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:v4];
  v6 = [v5 zoneID];

  if (!v6)
  {
    v6 = [(CPLCloudKitTaskController *)self->_controller zoneIDFromScopeIdentifier:v4];
  }

  return v6;
}

- (id)_scopeIdentifierFromZoneID:(id)a3
{
  v4 = a3;
  cacheScopeIdentifiersPerZoneID = self->_cacheScopeIdentifiersPerZoneID;
  if (!cacheScopeIdentifiersPerZoneID)
  {
    if (self->_transportScopeMapping)
    {
      v6 = [[NSMutableDictionary alloc] initWithCapacity:{-[CPLTransportScopeMapping count](self->_transportScopeMapping, "count")}];
      v7 = self->_cacheScopeIdentifiersPerZoneID;
      self->_cacheScopeIdentifiersPerZoneID = v6;

      transportScopeMapping = self->_transportScopeMapping;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10005F5C8;
      v11[3] = &unk_100274F68;
      v11[4] = self;
      [(CPLTransportScopeMapping *)transportScopeMapping enumerateConcreteScopesWithBlock:v11];
      cacheScopeIdentifiersPerZoneID = self->_cacheScopeIdentifiersPerZoneID;
    }

    else
    {
      cacheScopeIdentifiersPerZoneID = 0;
    }
  }

  v9 = [(NSMutableDictionary *)cacheScopeIdentifiersPerZoneID objectForKeyedSubscript:v4];

  return v9;
}

- (id)scopeIdentifierFromZoneID:(id)a3
{
  v4 = a3;
  v5 = [(CPLCloudKitTransportTask *)self _scopeIdentifierFromZoneID:v4];
  if (!v5)
  {
    v5 = [(CPLCloudKitTaskController *)self->_controller scopeIdentifierFromZoneID:v4];
  }

  return v5;
}

- (id)scopedIdentifierForCKRecordID:(id)a3
{
  v4 = a3;
  v5 = [v4 zoneID];
  v6 = [(CPLCloudKitTransportTask *)self _scopeIdentifierFromZoneID:v5];

  if (v6)
  {
    v7 = [v4 cpl_scopedIdentifierWithScopeIdentifier:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)fetchRecordsWithIDs:(id)a3 fetchResources:(BOOL)a4 desiredKeys:(id)a5 wantsAllRecords:(BOOL)a6 type:(int64_t)a7 perFoundRecordBlock:(id)a8 completionHandler:(id)a9
{
  v30 = a4;
  v34 = a3;
  v36 = a5;
  v33 = a8;
  v35 = a9;
  v52 = 0;
  LOBYTE(a8) = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v52];
  v12 = v52;
  v32 = v12;
  if ((a8 & 1) == 0)
  {
    v35[2](v35, 0, &__NSArray0__struct, v12);
    goto LABEL_38;
  }

  v13 = [(CPLCloudKitTransportTask *)self allowsFetchCache];
  v14 = 0;
  if (v36)
  {
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v15 = self;
    v16 = 0;
    v17 = 0;
    if (((v13 ^ 1) & 1) != 0 || v30)
    {
      goto LABEL_23;
    }

    v14 = [(CPLCloudKitTransportTask *)self fetchCache];
    if (v14)
    {
      v18 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v34, "count")}];
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v19 = v34;
      v16 = 0;
      v20 = [v19 countByEnumeratingWithState:&v48 objects:v54 count:16];
      if (v20)
      {
        v21 = *v49;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v49 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v48 + 1) + 8 * i);
            v24 = [(CPLCKRecordFetchCache *)v14 cachedRecordWithID:v23];
            if (v24)
            {
              if (!v16)
              {
                v16 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v19, "count")}];
              }

              [v16 setObject:v24 forKeyedSubscript:v23];
            }

            else
            {
              [v18 addObject:v23];
            }
          }

          v20 = [v19 countByEnumeratingWithState:&v48 objects:v54 count:16];
        }

        while (v20);
      }

      v17 = [v18 copy];
    }

    else
    {
      v14 = objc_alloc_init(CPLCKRecordFetchCache);
      [(CPLCloudKitTransportTask *)self setFetchCache:v14];
      v16 = 0;
      v17 = 0;
    }
  }

  v15 = self;
LABEL_23:
  if (!a7)
  {
    sub_1001A45B4(a2, v15);
  }

  if (!v17)
  {
    v17 = v34;
  }

  if ([v17 count])
  {
    if (v14)
    {
      -[CPLCKRecordFetchCache willFetchRecordCount:](v14, "willFetchRecordCount:", [v17 count]);
    }

    v25 = [[CKFetchRecordsOperation alloc] initWithRecordIDs:v17];
    [v25 setShouldFetchAssetContent:v30];
    if (v36)
    {
      [v25 setDesiredKeys:v36];
    }

    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x2020000000;
    v47[3] = 0;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v26 = sub_100003898();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = [v34 componentsJoinedByString:{@", "}];
        sub_1001A454C(v25, v27, buf, v26);
      }
    }

    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10006EF3C;
    v43[3] = &unk_1002755A8;
    v43[4] = self;
    v46 = v47;
    v44 = v34;
    v45 = v33;
    [v25 setPerRecordCompletionBlock:v43];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10006F088;
    v37[3] = &unk_100275648;
    v37[4] = self;
    v38 = v17;
    v42 = a6;
    v39 = v14;
    v40 = v16;
    v41 = v35;
    [v25 setFetchRecordsCompletionBlock:v37];
    [(CPLCloudKitTransportTask *)self launchOperation:v25 type:a7 withContext:0];

    _Block_object_dispose(v47, 8);
  }

  else
  {
    v25 = [v16 copy];
    (v35[2])();
  }

LABEL_38:
}

- (void)fetchRecordWithNames:(id)a3 fetchResources:(BOOL)a4 inScope:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (v11)
  {
    v26 = self;
    v27 = v8;
    v28 = v12;
    v14 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = v10;
    v16 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v32;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v31 + 1) + 8 * i);
          v21 = [CKRecordID alloc];
          v22 = [v11 zoneID];
          v23 = [v21 initWithRecordName:v20 zoneID:v22];

          [v14 addObject:v23];
        }

        v17 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v17);
    }

    v24 = CPLCloudKitOperationTypeForScope(v11);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10006F62C;
    v29[3] = &unk_100275698;
    v13 = v28;
    v30 = v28;
    [(CPLCloudKitTransportTask *)v26 fetchRecordsWithIDs:v14 fetchResources:v27 wantsAllRecords:0 type:v24 completionHandler:v29];
  }

  else
  {
    v25 = [CPLErrors cplErrorWithCode:80 description:@"Missing required zone"];
    (v13)[2](v13, 0, 0, v25);
  }
}

- (void)_fetchNextOperationType:(id)a3 followRemapping:(BOOL)a4 recordIDMapping:(id)a5 inResult:(id)a6 storeRequestUUIDsIn:(id)a7 completionHandler:(id)a8
{
  v12 = a4;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if ([v14 count])
  {
    v19 = [v14 allKeys];
    v20 = [v19 firstObject];

    v21 = [v14 objectForKeyedSubscript:v20];
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_10006FB1C;
    v28 = &unk_1002756C0;
    v29 = v17;
    v30 = v16;
    v31 = v15;
    v32 = v14;
    v22 = v20;
    v33 = v22;
    v34 = self;
    v36 = v12;
    v35 = v18;
    v23 = objc_retainBlock(&v25);
    v24 = [v22 integerValue];
    if (v12)
    {
      [(CPLCloudKitTransportTask *)self fetchRecordsFollowRemappingWithIDs:v21 wantsAllRecords:0 type:v24 completionHandler:v23];
    }

    else
    {
      [(CPLCloudKitTransportTask *)self fetchRecordsWithIDs:v21 fetchResources:0 wantsAllRecords:0 type:v24 completionHandler:v23];
    }
  }

  else
  {
    (*(v18 + 2))(v18, 0);
  }
}

- (void)_fetchRecordWithScopedIdentifiers:(id)a3 followRemapping:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v48 = 0;
  v38 = self;
  LOBYTE(a5) = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v48];
  v10 = v48;
  v11 = v10;
  if (a5)
  {
    v33 = v6;
    v34 = v10;
    v35 = v9;
    v39 = objc_alloc_init(NSMutableDictionary);
    v12 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v36 = v8;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v45;
      obj = v13;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v45 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v44 + 1) + 8 * i);
          v19 = [v18 identifier];
          v20 = [v18 scopeIdentifier];
          v21 = [(CPLCloudKitTransportTask *)v38 cloudKitScopeForScopeIdentifier:v20];

          if (!v21)
          {
            v32 = [CPLErrors cplErrorWithCode:80 description:@"Missing required zone for %@", v18];
            v9 = v35;
            (v35)[2](v35, 0, 0, v32);
            v31 = v39;
            v30 = obj;
            goto LABEL_15;
          }

          v22 = [v21 recordIDWithRecordName:v19];
          v23 = v12;
          [v12 setObject:v18 forKeyedSubscript:v22];
          v24 = CPLCloudKitOperationTypeForScope(v21);
          v25 = [NSNumber numberWithInteger:v24];
          v26 = [v39 objectForKeyedSubscript:v25];

          if (!v26)
          {
            v26 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(obj, "count")}];
            v27 = [NSNumber numberWithInteger:v24];
            [v39 setObject:v26 forKeyedSubscript:v27];
          }

          [v26 addObject:v22];

          v12 = v23;
        }

        v13 = obj;
        v15 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v28 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v13, "count")}];
    v29 = objc_alloc_init(NSMutableArray);
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000700A0;
    v40[3] = &unk_1002756E8;
    v9 = v35;
    v42 = v28;
    v43 = v35;
    v41 = v29;
    v19 = v28;
    v30 = v29;
    v31 = v39;
    [(CPLCloudKitTransportTask *)v38 _fetchNextOperationType:v39 followRemapping:v33 recordIDMapping:v12 inResult:v19 storeRequestUUIDsIn:v30 completionHandler:v40];

    v32 = v43;
LABEL_15:

    v8 = v36;
    v11 = v34;
  }

  else
  {
    (*(v9 + 2))(v9, 0, 0, v10);
  }
}

- (id)_interpretedChangeFromCKRecord:(id)a3 scopedIdentifier:(id)a4 userRecordID:(id)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v13 = 0;
    goto LABEL_28;
  }

  v10 = a5;
  v11 = [v8 cpl_inExpunged];
  v28 = 0;
  v12 = [v9 scopeIdentifier];
  v13 = [v8 cpl_recordChangeMissingResourceProperties:&v28 scopeIdentifier:v12 scopeProvider:self currentUserRecordID:v10];

  v14 = v28;
  if (v11 && v13)
  {
    if (([v13 allResourcesAreAvailable]& 1) == 0)
    {

      if ((_CPLSilentLogging & 1) == 0)
      {
        v13 = sub_100003898();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15 = objc_opt_class();
          *buf = 138412546;
          v30 = v15;
          v31 = 2112;
          v32 = v9;
          v16 = v15;
          v17 = "Fetched <%@ %@> from server, it is expunged but is expired - discarding";
          v18 = v13;
          v19 = OS_LOG_TYPE_DEFAULT;
LABEL_24:
          _os_log_impl(&_mh_execute_header, v18, v19, v17, buf, 0x16u);

          goto LABEL_25;
        }

        goto LABEL_25;
      }

      goto LABEL_26;
    }

LABEL_10:
    if (v11)
    {
      if (_CPLSilentLogging)
      {
        goto LABEL_19;
      }

      v20 = sub_100003898();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v21 = objc_opt_class();
      *buf = 138412546;
      v30 = v21;
      v31 = 2112;
      v32 = v9;
      v22 = v21;
      v23 = "Fetched <%@ %@> from server, it is expunged but not expired on server - keeping";
      v24 = v20;
      v25 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (_CPLSilentLogging)
      {
        goto LABEL_19;
      }

      v20 = sub_100003898();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
LABEL_18:

LABEL_19:
        if (![v13 isDelete])
        {
          goto LABEL_27;
        }

        goto LABEL_25;
      }

      v26 = objc_opt_class();
      *buf = 138412546;
      v30 = v26;
      v31 = 2112;
      v32 = v9;
      v22 = v26;
      v23 = "Fetched <%@ %@> from server";
      v24 = v20;
      v25 = OS_LOG_TYPE_DEBUG;
    }

    _os_log_impl(&_mh_execute_header, v24, v25, v23, buf, 0x16u);

    goto LABEL_18;
  }

  if (v13)
  {
    goto LABEL_10;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v13 = sub_100003898();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = [v8 recordType];
      *buf = 138412546;
      v30 = v16;
      v31 = 2112;
      v32 = v9;
      v17 = "Fetched <%@ %@> from server but failed to decode it";
      v18 = v13;
      v19 = OS_LOG_TYPE_ERROR;
      goto LABEL_24;
    }

LABEL_25:
  }

LABEL_26:
  v13 = 0;
LABEL_27:

LABEL_28:

  return v13;
}

- (id)_interpretedSharedChangeFromCKRecord:(id)a3 scopedIdentifier:(id)a4 userRecordID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && ([v8 recordType], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(CPLRecordChangeClassForCKRecordType(v11), "supportsSharing"), v11, v12))
  {
    v13 = [(CPLCloudKitTransportTask *)self _interpretedChangeFromCKRecord:v8 scopedIdentifier:v9 userRecordID:v10];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_sharedRecordToPrivateRecord:(id)a3 scopedIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 supportsSharingScopedIdentifier])
  {
    v7 = [v5 scopedIdentifier];
    [v5 setSharingRecordScopedIdentifier:v7];
  }

  [v5 setScopedIdentifier:v6];
  [v5 awakeFromStorage];
  v8 = [v5 recordChangeData];
  [v5 setSharingRecordChangeData:v8];

  [v5 setRecordChangeData:0];

  return v5;
}

- (void)_mergePrivateRecord:(id)a3 withSharedRecord:(id)a4 merger:(id)a5
{
  v11 = a3;
  v7 = a5;
  v8 = a4;
  v9 = [v8 scopedIdentifier];
  v10 = [v11 scopedIdentifier];
  [v8 setScopedIdentifier:v10];

  [v8 awakeFromStorage];
  [v7 mergeRecord:v8 isSharedRecord:1 inPrivateRecord:v11];

  if ([v11 supportsSharingScopedIdentifier])
  {
    [v11 setSharingRecordScopedIdentifier:v9];
  }
}

- (BOOL)_mergeFoundCKRecords:(id)a3 updateFoundCPLRecords:(id)a4 remainingScopedIdentifiers:(id)a5 fetchedScopedIdentifiers:(id)a6 userRecordID:(id)a7 targetMapping:(id)a8 postProcessRecord:(id)a9 error:(id *)a10
{
  v16 = a3;
  v161 = a4;
  v17 = a5;
  v157 = a6;
  v177 = a7;
  v18 = a8;
  v158 = a9;
  v19 = [CPLSharedRecordMerger alloc];
  v20 = [(CPLCloudKitTransportTask *)self controller];
  v21 = [v20 propertyMapping];
  v150 = [v19 initWithMapping:v21];

  v22 = self;
  v23 = v18;
  v186 = 0u;
  v187 = 0u;
  v184 = 0u;
  v185 = 0u;
  v163 = v17;
  obj = [v17 allObjects];
  v169 = [obj countByEnumeratingWithState:&v184 objects:v188 count:16];
  if (v169)
  {
    v162 = *v185;
    v175 = v16;
    v178 = v22;
    v160 = v18;
    do
    {
      for (i = 0; i != v169; i = i + 1)
      {
        if (*v185 != v162)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v184 + 1) + 8 * i);
        v26 = [v23 targetForRecordWithScopedIdentifier:v25];
        v27 = [v26 otherScopedIdentifier];
        v28 = [v16 objectForKeyedSubscript:v25];
        v29 = v28;
        if (v28)
        {
          v30 = v26;
          v31 = [v28 recordID];
          v32 = [v31 recordName];
          v33 = [v25 identifier];
          v34 = [v32 isEqualToString:v33];

          if (v34)
          {
            v26 = v30;
            v16 = v175;
          }

          else
          {
            v35 = [CPLScopedIdentifier alloc];
            v36 = [v29 recordID];
            v37 = [v36 recordName];
            v38 = [v35 initRelativeToScopedIdentifier:v25 identifier:v37];

            if (v27)
            {
              v39 = [CPLScopedIdentifier alloc];
              v40 = [v29 recordID];
              v41 = [v40 recordName];
              v42 = [v39 initRelativeToScopedIdentifier:v27 identifier:v41];

              v27 = v42;
            }

            v26 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v38 otherScopedIdentifier:v27 targetState:{objc_msgSend(v30, "targetState")}];

            [v23 setTarget:v26 forRecordWithScopedIdentifier:v25];
            v16 = v175;
          }
        }

        v43 = v178;
        if (v27)
        {
          v179[0] = _NSConcreteStackBlock;
          v179[1] = 3221225472;
          v179[2] = sub_100071740;
          v179[3] = &unk_100275710;
          v179[4] = v25;
          v180 = v161;
          v181 = v26;
          v44 = v23;
          v182 = v44;
          v183 = v163;
          v176 = objc_retainBlock(v179);
          v45 = [(CPLCloudKitTransportTask *)v178 _interpretedChangeFromCKRecord:v29 scopedIdentifier:v25 userRecordID:v177];
          if (!v45)
          {
LABEL_18:
            v170 = v26;
            v46 = [v16 objectForKeyedSubscript:v27];
            v53 = v27;
            v54 = v53;
            if (v46)
            {
              v55 = [v46 recordID];
              v56 = [v55 recordName];
              v57 = [v53 identifier];
              v58 = [v56 isEqual:v57];

              v16 = v175;
              v54 = v53;
              if ((v58 & 1) == 0)
              {
                v59 = [CPLScopedIdentifier alloc];
                v60 = [v46 recordID];
                v61 = [v60 recordName];
                v54 = [v59 initRelativeToScopedIdentifier:v53 identifier:v61];

                v16 = v175;
              }
            }

            v62 = [(CPLCloudKitTransportTask *)v178 _interpretedSharedChangeFromCKRecord:v46 scopedIdentifier:v53 userRecordID:v177];
            if (v62)
            {
              v63 = [(CPLCloudKitTransportTask *)v178 _sharedRecordToPrivateRecord:v62 scopedIdentifier:v25];
              v64 = v176;
              (v176[2])(v176, v63, v54, 2);
            }

            else
            {
              v64 = v176;
              if ([v157 containsObject:v53])
              {
                (v176[2])(v176, 0, v54, 0);
              }
            }

            v23 = v160;
            v26 = v170;
            goto LABEL_98;
          }

          v46 = v45;
          if ([v45 supportsSharingScopedIdentifier])
          {
            v47 = v44;
            v48 = v29;
            v49 = v16;
            v50 = v26;
            v51 = [v27 scopeIdentifier];
            v52 = [v46 isSharedInScopeWithIdentifier:v51];

            if (v52)
            {
              v26 = v50;
              v16 = v49;
              v29 = v48;
              v44 = v47;
              v43 = v178;
              if ([v46 inExpunged])
              {

                goto LABEL_18;
              }
            }

            else
            {
              [v46 setSharingScopeIdentifier:0];
              v26 = v50;
              v16 = v49;
              v29 = v48;
              v44 = v47;
              v43 = v178;
            }
          }

          if ([v46 isMasterChange])
          {
            v171 = v26;
            v69 = [v46 inExpunged];
            v70 = [v16 objectForKeyedSubscript:v27];
            v71 = v27;
            v164 = v70;
            v72 = v71;
            if (v69)
            {
              if (v70)
              {
                v73 = [v70 recordID];
                v74 = [v73 recordName];
                v75 = [v71 identifier];
                v155 = [v74 isEqual:v75];

                v72 = v71;
                if ((v155 & 1) == 0)
                {
                  v76 = [CPLScopedIdentifier alloc];
                  v77 = [v70 recordID];
                  v78 = [v77 recordName];
                  v72 = [v76 initRelativeToScopedIdentifier:v71 identifier:v78];
                }
              }

              v79 = [(CPLCloudKitTransportTask *)v178 _interpretedSharedChangeFromCKRecord:v70 scopedIdentifier:v71 userRecordID:v177];
              v80 = v79;
              if (!v79)
              {
                v23 = v160;
                if (([v157 containsObject:v71] & 1) == 0)
                {
                  goto LABEL_64;
                }

                goto LABEL_65;
              }

              v23 = v160;
              if (([v79 inExpunged] & 1) == 0)
              {
                v81 = [(CPLCloudKitTransportTask *)v178 _sharedRecordToPrivateRecord:v80 scopedIdentifier:v25];
                (v176[2])(v176, v81, v72, 2);

                goto LABEL_66;
              }

LABEL_64:
              if ([v80 inExpunged])
              {
LABEL_65:
                (v176[2])(v176, v46, v72, 1);
              }

LABEL_66:

              v26 = v171;
              v16 = v175;
              v64 = v176;
LABEL_98:

              goto LABEL_99;
            }

            if (v70)
            {
              v95 = [v70 recordID];
              v96 = [v95 recordName];
              [v71 identifier];
              v98 = v97 = v70;
              v99 = [v96 isEqual:v98];

              v70 = v97;
              v72 = v71;
              if ((v99 & 1) == 0)
              {
                v100 = [CPLScopedIdentifier alloc];
                v101 = [v97 recordID];
                v102 = [v101 recordName];
                v72 = [v100 initRelativeToScopedIdentifier:v71 identifier:v102];

                v70 = v97;
              }
            }

            v103 = [(CPLCloudKitTransportTask *)v178 _interpretedSharedChangeFromCKRecord:v70 scopedIdentifier:v71 userRecordID:v177];
            v104 = v103;
            v64 = v176;
            if (v103)
            {
              v23 = v160;
              if (([v103 inExpunged] & 1) == 0)
              {
                v105 = 3;
                goto LABEL_70;
              }

LABEL_68:
              if ([v104 inExpunged])
              {
LABEL_69:
                v105 = 1;
LABEL_70:
                (v176[2])(v176, v46, v72, v105);
              }

              v26 = v171;
              v16 = v175;
              goto LABEL_98;
            }

            v23 = v160;
            if (([v157 containsObject:v71] & 1) == 0)
            {
              goto LABEL_68;
            }

            goto LABEL_69;
          }

          if (([v46 supportsSharingScopedIdentifier] & 1) == 0)
          {
            v64 = v176;
            (v176[2])(v176, v46, v27, 1);
            goto LABEL_76;
          }

          if ([v46 inExpunged])
          {
            v172 = v26;
            v82 = [v16 objectForKeyedSubscript:v27];
            v83 = v27;
            v84 = v83;
            v165 = v82;
            if (v82)
            {
              v85 = [v82 recordID];
              v86 = [v85 recordName];
              v87 = [v83 identifier];
              v88 = [v86 isEqual:v87];

              v82 = v165;
              v43 = v178;
              v84 = v83;
              if ((v88 & 1) == 0)
              {
                v89 = [CPLScopedIdentifier alloc];
                v90 = [v165 recordID];
                v91 = [v90 recordName];
                v84 = [v89 initRelativeToScopedIdentifier:v83 identifier:v91];

                v82 = v165;
                v43 = v178;
              }
            }

            v92 = [(CPLCloudKitTransportTask *)v43 _interpretedSharedChangeFromCKRecord:v82 scopedIdentifier:v83 userRecordID:v177];
            v93 = v92;
            if (!v92)
            {
              v129 = [v157 containsObject:v83];
              v26 = v172;
              if ((v129 & 1) == 0)
              {
                goto LABEL_73;
              }

              goto LABEL_74;
            }

            v26 = v172;
            if (([v92 inExpunged] & 1) == 0)
            {
              v94 = [(CPLCloudKitTransportTask *)v43 _sharedRecordToPrivateRecord:v93 scopedIdentifier:v25];
              (v176[2])(v176, v94, v84, 2);

              goto LABEL_75;
            }

LABEL_73:
            if ([v93 inExpunged])
            {
LABEL_74:
              (v176[2])(v176, v46, v84, 1);
            }

LABEL_75:

            v16 = v175;
            v64 = v176;
LABEL_76:
            v23 = v160;
            goto LABEL_98;
          }

          v106 = [v46 sharingRecordScopedIdentifier];
          if (v106)
          {
            v151 = v44;
            v107 = [v16 objectForKeyedSubscript:v106];
            v156 = v106;
            v108 = v106;
            v109 = v107;
            v110 = v108;
            v111 = v108;
            if (v109)
            {
              v112 = [v109 recordID];
              [v112 recordName];
              v113 = v173 = v26;
              v114 = [v110 identifier];
              v166 = [v113 isEqual:v114];

              v16 = v175;
              v26 = v173;

              v111 = v110;
              if ((v166 & 1) == 0)
              {
                v115 = [CPLScopedIdentifier alloc];
                v116 = [v109 recordID];
                v117 = [v116 recordName];
                v111 = [v115 initRelativeToScopedIdentifier:v110 identifier:v117];

                v16 = v175;
                v26 = v173;
              }
            }

            v153 = v109;
            v154 = v111;
            v118 = [v16 objectForKeyedSubscript:v110];
            v119 = [(CPLCloudKitTransportTask *)v178 _interpretedSharedChangeFromCKRecord:v118 scopedIdentifier:v27 userRecordID:v177];

            if (!v119)
            {
              v152 = 0;
              if ([v157 containsObject:v110])
              {
                v141 = [CPLScopedIdentifier alloc];
                v142 = [v110 scopeIdentifier];
                [v25 identifier];
                v144 = v143 = v26;
                v145 = [v141 initWithScopeIdentifier:v142 identifier:v144];
                v64 = v176;
                (v176[2])(v176, 0, v145, 0);

                v26 = v143;
                v23 = v160;
              }

              else
              {
                v146 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v25 otherScopedIdentifier:v110 targetState:0];
                [v151 setTarget:v146 forRecordWithScopedIdentifier:v25];

                v23 = v160;
                v64 = v176;
              }

              goto LABEL_89;
            }

            if ([v119 inExpunged])
            {
              v152 = v119;
              if ([v46 inExpunged])
              {
                sub_1001A469C(a2, v178, v46);
              }

              v120 = [CPLScopedIdentifier alloc];
              v121 = [v110 scopeIdentifier];
              [v25 identifier];
              v122 = v46;
              v123 = v27;
              v124 = v29;
              v125 = v16;
              v127 = v126 = v26;
              v128 = [v120 initWithScopeIdentifier:v121 identifier:v127];
              v64 = v176;
              (v176[2])(v176, 0, v128, 1);

              v26 = v126;
              v16 = v125;
              v29 = v124;
              v27 = v123;
              v46 = v122;
              v23 = v160;

LABEL_89:
              v119 = v152;
            }

            else
            {
              [(CPLCloudKitTransportTask *)v178 _mergePrivateRecord:v46 withSharedRecord:v119 merger:v150];
              v64 = v176;
              (v176[2])(v176, v46, v154, 3);
              v23 = v160;
            }

LABEL_96:
            v106 = v156;
          }

          else
          {
            if ([v46 inExpunged])
            {
              v156 = 0;
              v174 = v26;
              v130 = [v16 objectForKeyedSubscript:v27];
              v131 = v27;
              v132 = v131;
              if (v130)
              {
                v133 = [v130 recordID];
                v134 = [v133 recordName];
                v135 = [v131 identifier];
                v167 = [v134 isEqual:v135];

                v132 = v131;
                if ((v167 & 1) == 0)
                {
                  v136 = [CPLScopedIdentifier alloc];
                  v137 = [v130 recordID];
                  v138 = [v137 recordName];
                  v132 = [v136 initRelativeToScopedIdentifier:v131 identifier:v138];
                }
              }

              v168 = v130;
              v16 = v175;
              v139 = [v175 objectForKeyedSubscript:v131];
              v140 = [(CPLCloudKitTransportTask *)v178 _interpretedSharedChangeFromCKRecord:v139 scopedIdentifier:v131 userRecordID:v177];

              if (v140)
              {
                if ([v140 inExpunged])
                {
                  (v176[2])(v176, v46, v132, 1);
                }

                else
                {
                  v147 = [(CPLCloudKitTransportTask *)v178 _sharedRecordToPrivateRecord:v140 scopedIdentifier:v25];
                  (v176[2])(v176, v147, v132, 2);
                }

                v64 = v176;
                v16 = v175;
              }

              else
              {
                v64 = v176;
                if ([v157 containsObject:v131])
                {
                  (v176[2])(v176, v46, v132, 1);
                }
              }

              v23 = v160;
              v26 = v174;
              goto LABEL_96;
            }

            v64 = v176;
            (v176[2])(v176, v46, v27, 1);
            v23 = v160;
          }

          goto LABEL_98;
        }

        v65 = [(CPLCloudKitTransportTask *)v178 _interpretedChangeFromCKRecord:v29 scopedIdentifier:v25 userRecordID:v177];
        v66 = v65;
        if (v65)
        {
          v67 = [v65 scopedIdentifier];
          v68 = [v67 isEqual:v25];

          if ((v68 & 1) == 0)
          {
            [v66 setScopedIdentifier:v25];
            [v66 awakeFromStorage];
          }

          v158[2](v158, v66, v29);
          [v161 setObject:v66 forKeyedSubscript:v25];
        }

        [v163 removeObject:v25];

LABEL_99:
      }

      v169 = [obj countByEnumeratingWithState:&v184 objects:v188 count:16];
    }

    while (v169);
  }

  return 1;
}

- (void)_fetchRecordsForRemainingScopedIdentifiers:(id)a3 alreadyFetchedScopedIdentifiers:(id)a4 userRecordID:(id)a5 foundCPLRecords:(id)a6 foundCKRecords:(id)a7 targetMapping:(id)a8 postProcessRecord:(id)a9 completionHandler:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v49 = a8;
  v21 = a9;
  v22 = a10;
  if ([v16 count])
  {
    v68 = 0;
    v23 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v68];
    v24 = v68;
    v25 = v24;
    if (v23)
    {
      v41 = v24;
      v42 = v21;
      v43 = v20;
      v44 = v19;
      v45 = v18;
      v26 = objc_alloc_init(NSMutableArray);
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_100071CA4;
      v64[3] = &unk_100275738;
      v46 = v17;
      v27 = v17;
      v65 = v27;
      v66 = self;
      v40 = v26;
      v67 = v40;
      v28 = objc_retainBlock(v64);
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v47 = v16;
      v29 = v16;
      v30 = [v29 countByEnumeratingWithState:&v60 objects:v69 count:16];
      v31 = self;
      if (v30)
      {
        v32 = v30;
        v33 = *v61;
        do
        {
          for (i = 0; i != v32; i = i + 1)
          {
            if (*v61 != v33)
            {
              objc_enumerationMutation(v29);
            }

            v35 = *(*(&v60 + 1) + 8 * i);
            v36 = [v49 targetForRecordWithScopedIdentifier:{v35, v40}];
            if (!v36)
            {
              sub_1001A4778(a2, v31, v35);
            }

            v37 = v36;
            if ([v27 containsObject:v35])
            {
              v38 = [v37 otherScopedIdentifier];
              if (v38)
              {
                (v28[2])(v28, v38);
              }
            }

            else
            {
              (v28[2])(v28, v35);
            }
          }

          v32 = [v29 countByEnumeratingWithState:&v60 objects:v69 count:16];
        }

        while (v32);
      }

      if ([v40 count])
      {
        [v27 addObjectsFromArray:v40];
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_100071D40;
        v50[3] = &unk_100275760;
        v51 = v43;
        v52 = v31;
        v39 = v31;
        v20 = v43;
        v19 = v44;
        v53 = v44;
        v54 = v29;
        v55 = v27;
        v18 = v45;
        v56 = v45;
        v57 = v49;
        v21 = v42;
        v58 = v42;
        v59 = v22;
        [(CPLCloudKitTransportTask *)v39 _fetchRecordWithScopedIdentifiers:v40 followRemapping:1 completionHandler:v50];
      }

      else
      {
        v19 = v44;
        (*(v22 + 2))(v22, v44, 0);
        v18 = v45;
        v21 = v42;
        v20 = v43;
      }

      v25 = v41;

      v17 = v46;
      v16 = v47;
    }

    else
    {
      (*(v22 + 2))(v22, 0, v24);
    }
  }

  else
  {
    (*(v22 + 2))(v22, v19, 0);
  }
}

- (void)fetchFullRecordsForScopedIdentifiers:(id)a3 targetMapping:(id)a4 postProcessRecord:(id)a5 completionHandler:(id)a6
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100071F8C;
  v14[3] = &unk_1002757C8;
  v15 = a3;
  v16 = self;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v10 = v19;
  v11 = v18;
  v12 = v17;
  v13 = v15;
  [(CPLCloudKitTransportTask *)self getUserRecordIDFetchIfNecessaryWithCompletionHandler:v14];
}

- (void)fetchUnknownTargetsInMapping:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 hasUnknownTargets])
  {
    v8 = [(CPLCloudKitTransportTask *)self transportScopeMapping];
    v9 = [v8 hasStagingScopes];

    if (v9)
    {
      [v6 allTargetScopedIdentifiers];
    }

    else
    {
      [v6 unknownTargetScopedIdentifiers];
    }
    v10 = ;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001A4434;
    v11[3] = &unk_1002757F0;
    v14 = [v10 count];
    v15 = v9;
    v12 = v6;
    v13 = v7;
    [(CPLCloudKitTransportTask *)self fetchFullRecordsForScopedIdentifiers:v10 targetMapping:v12 completionHandler:v11];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)fetchPlaceholderRecordsForScopedIdentifiers:(id)a3 targetMapping:(id)a4 completionHandler:(id)a5
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000722C8;
  v12[3] = &unk_100275868;
  v13 = a3;
  v14 = a4;
  v16 = a5;
  v17 = a2;
  v15 = self;
  v9 = v14;
  v10 = v16;
  v11 = v13;
  [(CPLCloudKitTransportTask *)self fetchUnknownTargetsInMapping:v9 completionHandler:v12];
}

- (void)_fetchZoneForZoneID:(id)a3 operationType:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v21 = 0;
  v10 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v21];
  v11 = v21;
  if (v10)
  {
    v12 = [CKFetchRecordZonesOperation alloc];
    v22 = v8;
    v13 = [NSArray arrayWithObjects:&v22 count:1];
    v14 = [v12 initWithRecordZoneIDs:v13];

    v15 = [v14 operationID];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100072884;
    v17[3] = &unk_100273E20;
    v17[4] = self;
    v18 = v8;
    v19 = v15;
    v20 = v9;
    v16 = v15;
    [v14 setFetchRecordZonesCompletionBlock:v17];
    [(CPLCloudKitTransportTask *)self launchOperation:v14 type:a4 withContext:0];
  }

  else
  {
    (*(v9 + 2))(v9, 0, 0, v11);
  }
}

- (void)fetchZoneForScope:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 zoneID];
  if (v8)
  {
    v9 = CPLCloudKitOperationTypeForScope(v6);
    v10 = [v6 zoneID];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100072CD8;
    v12[3] = &unk_1002758B8;
    v13 = v8;
    v14 = self;
    v16 = v9;
    v15 = v7;
    [(CPLCloudKitTransportTask *)self _fetchZoneForZoneID:v10 operationType:v9 completionHandler:v12];
  }

  else
  {
    v11 = [CPLErrors cplErrorWithCode:32 description:@"No zone for %@", v6];
    (*(v7 + 2))(v7, 0, 0, v11);
  }
}

- (void)_fetchRecordsFollowRemappingWithIDs:(id)a3 alreadyFetchRecordIDs:(id)a4 remappedRecordIDs:(id)a5 realRecords:(id)a6 type:(int64_t)a7 storeRequestUUIDsIn:(id)a8 completionHandler:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100072FA0;
  v25[3] = &unk_100275908;
  v26 = a8;
  v27 = v16;
  v28 = v15;
  v29 = v17;
  v30 = v18;
  v31 = self;
  v32 = a9;
  v33 = a7;
  v19 = v18;
  v20 = v17;
  v21 = v15;
  v22 = v16;
  v23 = v32;
  v24 = v26;
  [(CPLCloudKitTransportTask *)self fetchRecordsWithIDs:v21 fetchResources:0 wantsAllRecords:0 type:a7 completionHandler:v25];
}

- (id)_recordWithRecordID:(id)a3 usingRealRecords:(id)a4 remappedRecordIDs:(id)a5 wantsAllRecords:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 objectForKeyedSubscript:v9];
  if (v12)
  {
    v13 = v12;
    goto LABEL_32;
  }

  v14 = v9;
  v15 = [v11 objectForKeyedSubscript:v14];
  v16 = 0;
  if (v15)
  {
    v9 = v14;
    while (1)
    {
      v17 = v15;
      v18 = [v10 objectForKeyedSubscript:v15];
      if (v18)
      {
        v13 = v18;
        if (_CPLSilentLogging)
        {
          goto LABEL_31;
        }

        v19 = sub_100003898();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 138543618;
          v27 = v14;
          v28 = 2114;
          v29 = v17;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ has been remapped to %{public}@", &v26, 0x16u);
        }

        goto LABEL_29;
      }

      if (!v16)
      {
        v16 = objc_alloc_init(NSMutableSet);
      }

      [v16 addObject:v9];
      if ([v16 containsObject:v17])
      {
        break;
      }

      v15 = [v11 objectForKeyedSubscript:v17];
      v9 = v17;
      if (!v15)
      {
        if (v6)
        {
          goto LABEL_13;
        }

        goto LABEL_30;
      }
    }

    if (_CPLSilentLogging)
    {
      v13 = 0;
      goto LABEL_31;
    }

    v19 = sub_100003898();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v23 = [v16 allObjects];
      v24 = [v23 componentsJoinedByString:{@", "}];
      v26 = 138543874;
      v27 = v14;
      v28 = 2114;
      v29 = v17;
      v30 = 2114;
      v31 = v24;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@ has been remapped to %{public}@ in an infinite loop: %{public}@", &v26, 0x20u);
    }

    v13 = 0;
    goto LABEL_29;
  }

  v17 = v14;
  if (!v6)
  {
    goto LABEL_30;
  }

LABEL_13:
  if ([v17 isEqual:v14])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = sub_100003898();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v26 = 138543362;
        v27 = v14;
        v20 = "%{public}@ record not found on server";
        v21 = v19;
        v22 = 12;
LABEL_27:
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, v20, &v26, v22);
        goto LABEL_28;
      }

      goto LABEL_28;
    }

LABEL_30:
    v13 = 0;
    v9 = v17;
    v17 = 0;
    goto LABEL_31;
  }

  if (_CPLSilentLogging)
  {
    goto LABEL_30;
  }

  v19 = sub_100003898();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v26 = 138543618;
    v27 = v14;
    v28 = 2114;
    v29 = v17;
    v20 = "%{public}@ record (remapped to %{public}@) not found on server";
    v21 = v19;
    v22 = 22;
    goto LABEL_27;
  }

LABEL_28:
  v13 = 0;
  v9 = v17;
  v17 = 0;
LABEL_29:

LABEL_31:
LABEL_32:

  return v13;
}

- (void)fetchRecordsFollowRemappingWithIDs:(id)a3 wantsAllRecords:(BOOL)a4 type:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [v10 count];
  v13 = objc_alloc_init(NSMutableArray);
  v14 = [[NSMutableSet alloc] initWithCapacity:v12];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000737A0;
  v20[3] = &unk_100275930;
  v21 = v13;
  v22 = objc_alloc_init(NSMutableDictionary);
  v27 = a4;
  v23 = v10;
  v24 = [[NSMutableDictionary alloc] initWithCapacity:v12];
  v25 = self;
  v26 = v11;
  v15 = v24;
  v16 = v10;
  v17 = v22;
  v18 = v13;
  v19 = v11;
  [(CPLCloudKitTransportTask *)self _fetchRecordsFollowRemappingWithIDs:v16 alreadyFetchRecordIDs:v14 remappedRecordIDs:v17 realRecords:v15 type:a5 storeRequestUUIDsIn:v18 completionHandler:v20];
}

- (void)_createSparsePrivateRecordsIfNecessary:(id)a3 recordClass:(Class)a4 userRecordID:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 propertyMapping];
  v14 = [v13 doesRecordClassSupportSparseRecords:a4];

  if ((v14 & 1) == 0)
  {
    sub_1001A8D0C(a2, self, a4);
  }

  v15 = CKRecordTypeForCPLRecordChangeClass(a4);
  v16 = [v10 sharedRecordIDsToMissingPrivateRecordIDs];
  if ([v16 count])
  {
    v17 = [v10 sharedZoneIdentification];
    if (!v17)
    {
      sub_1001A8DE8(a2, self);
    }

    v18 = v17;
    [v16 allKeys];
    v19 = v15;
    v20 = self;
    v21 = v27 = v11;
    v22 = [v10 sharedZoneIdentification];
    v23 = [v22 operationType];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100085754;
    v28[3] = &unk_100276048;
    v35 = v12;
    v29 = v16;
    v30 = v19;
    v31 = v20;
    v36 = a2;
    v37 = a4;
    v32 = v18;
    v33 = v10;
    v34 = v27;
    v24 = v18;
    v25 = v20;
    v15 = v19;
    [(CPLCloudKitTransportTask *)v25 fetchRecordsWithIDs:v21 fetchResources:0 wantsAllRecords:0 type:v23 completionHandler:v28];

    v11 = v27;
  }

  else
  {
    (*(v12 + 2))(v12, &__NSDictionary0__struct, 0);
  }
}

- (id)_errorForUpdateError:(id)a3 scopeProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if (v8)
  {
    v9 = [CPLCloudKitErrors realErrorForError:v8];

    v10 = [v9 domain];
    v11 = [v10 isEqualToString:CKErrorDomain];

    if (v11 && ([v9 code] == 26 || objc_msgSend(v9, "code") == 28))
    {
      v12 = 0;
LABEL_8:

      goto LABEL_10;
    }

    if (v9)
    {
      v13 = [(CPLCloudKitTransportTask *)self lastOperationRequestUUIDs];
      v12 = [CPLCloudKitErrors CPLErrorForCloudKitError:v9 scopeProvider:v7 withRequestUUIDs:v13 description:@"Failed to update records"];

      v9 = v13;
      goto LABEL_8;
    }
  }

  v12 = 0;
LABEL_10:

  return v12;
}

- (void)updatePrivatePropertiesOnAssetsWithScopedIdentifiers:(id)a3 desiredKeys:(id)a4 destinationZoneIdentification:(id)a5 sharedZoneIdentification:(id)a6 targetMapping:(id)a7 knownRecords:(id)a8 shouldUpdateRecord:(id)a9 updateBlock:(id)a10 completionHandler:(id)a11
{
  v32 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100085EA0;
  v34[3] = &unk_100276110;
  v34[4] = self;
  v35 = v32;
  v36 = v17;
  v37 = v18;
  v38 = v19;
  v39 = v20;
  v40 = v16;
  v41 = a11;
  v42 = v21;
  v43 = v22;
  v23 = v22;
  v24 = v21;
  v25 = v16;
  v26 = v20;
  v27 = v19;
  v28 = v18;
  v29 = v17;
  v30 = v32;
  v31 = v41;
  [(CPLCloudKitTransportTask *)self getUserRecordIDFetchIfNecessaryWithCompletionHandler:v34];
}

- (void)updateRecords:(id)a3 cloudKitScope:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v22 = self;
    v11 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          v18 = [v17 recordID];
          [v11 setObject:v17 forKeyedSubscript:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v14);
    }

    v19 = [v11 allKeys];
    v20 = CPLCloudKitOperationTypeForScope(v9);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100086C64;
    v23[3] = &unk_100276138;
    v24 = v12;
    v28 = v10;
    v25 = v11;
    v26 = v22;
    v27 = v9;
    v21 = v11;
    [(CPLCloudKitTransportTask *)v22 fetchRecordsWithIDs:v19 fetchResources:0 desiredKeys:&__NSArray0__struct wantsAllRecords:0 type:v20 completionHandler:v23];
  }

  else
  {
    (*(v10 + 2))(v10, 0);
  }
}

- (void)uploadRecords:(id)a3 cloudKitScope:(id)a4 scopeProvider:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24 = 0;
  v14 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v24];
  v15 = v24;
  if (v14)
  {
    if ([v10 count])
    {
      v16 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:v10 recordIDsToDelete:&__NSArray0__struct];
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_100086F68;
      v20 = &unk_100276160;
      v21 = self;
      v23 = v13;
      v22 = v12;
      [v16 setModifyRecordsCompletionBlock:&v17];
      [v16 setSavePolicy:{1, v17, v18, v19, v20, v21}];
      [(CPLCloudKitTransportTask *)self launchOperation:v16 type:CPLCloudKitOperationTypeForScope(v11) withContext:0];
    }

    else
    {
      (*(v13 + 2))(v13, 0);
    }
  }

  else
  {
    (*(v13 + 2))(v13, v15);
  }
}

- (void)cancel
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100003810();
    if (sub_100021E38(v4))
    {
      v12 = 138412290;
      v13 = self;
      sub_10005FE5C(&_mh_execute_header, v5, v6, "Cancelling %@", &v12);
    }
  }

  sub_1000033D8();
  v8 = 3221225472;
  v9 = sub_10005B878;
  v10 = &unk_100271F40;
  v11 = self;
  [(CPLCloudKitTransportTask *)self dispatchAsync:v7];
}

- (void)cancelIfBlocked
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100003810();
    if (sub_100021E38(v4))
    {
      v12 = 138412290;
      v13 = self;
      sub_10005FE5C(&_mh_execute_header, v5, v6, "Cancelling %@ it not blocked", &v12);
    }
  }

  sub_1000033D8();
  v8 = 3221225472;
  v9 = sub_10019F22C;
  v10 = &unk_100271F40;
  v11 = self;
  [(CPLCloudKitTransportTask *)self dispatchAsync:v7];
}

- (void)launchOperation:(id)a3 type:(int64_t)a4 withContext:(id)a5 sourceBundleIdentifiers:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (byte_1002C5240 == 1 && (_CPLSilentLogging & 1) == 0)
  {
    v14 = sub_100003810();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v11 cplOperationClassDescription];
      v16 = v15;
      if ((a4 - 1) > 3)
      {
        v17 = @"Container";
      }

      else
      {
        v17 = off_100274FE8[a4 - 1];
      }

      *buf = 138543618;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Launching %{public}@ with %@", buf, 0x16u);
    }
  }

  dispatch_assert_queue_V2(self->_queue);
  if (!self->_mustCallTaskDidFinish)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v34 = sub_100003810();
      if (sub_1000033C0(v34))
      {
        v35 = [v11 cplOperationClassDescription];
        *buf = 138412546;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = v35;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@ tried to launch %@ while it's already finished", buf, 0x16u);
      }
    }

    v36 = +[NSAssertionHandler currentHandler];
    v37 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitTransportTask.m"];
    v38 = [v11 cplOperationClassDescription];
    [v36 handleFailureInMethod:a2 object:self file:v37 lineNumber:671 description:{@"%@ tried to launch %@ while it's already finished", self, v38}];

    abort();
  }

  [(CPLCloudKitTransportTask *)self setupConfigurationForOperation:v11];
  if (![(NSMutableArray *)self->_currentOperations count])
  {
    v18 = objc_alloc_init(NSMutableArray);
    lastOperationRequestUUIDs = self->_lastOperationRequestUUIDs;
    self->_lastOperationRequestUUIDs = v18;
  }

  [(NSMutableArray *)self->_currentOperations addObject:v11];
  [v11 requestCompletedBlock];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10005C154;
  v47[3] = &unk_100274C70;
  v20 = v47[4] = self;
  v48 = v20;
  [v11 setRequestCompletedBlock:v47];
  if ([(CPLCloudKitTaskController *)self->_controller isForeground]&& [(CPLCloudKitTransportTask *)self isBoostable]&& [(CPLCloudKitTaskController *)self->_controller canBoostOperations])
  {
    v21 = [v11 configuration];
    if ([v21 cplDiscretionary])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v22 = sub_100003810();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v11 cplOperationClassDescription];
          *buf = 138412290;
          *&buf[4] = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Automatically boosting (background) %@ to non discretionary and requiring non-cellular", buf, 0xCu);
        }
      }

      [v21 setCPLDiscretionary:0];
      [v21 setAllowsCellularAccess:0];
    }
  }

  v24 = [(CPLCloudKitTaskController *)self->_controller operationTracker];
  [v24 operationWillStart:v11 forTask:self withContext:v12 bundleIdentifiers:v13];

  if ([(NSMutableSet *)self->_associatedMetrics count])
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v25 = self->_associatedMetrics;
    v26 = [(NSMutableSet *)v25 countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v26)
    {
      v27 = *v44;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v44 != v27)
          {
            objc_enumerationMutation(v25);
          }

          [*(*(&v43 + 1) + 8 * i) associateWithOperation:v11];
        }

        v26 = [(NSMutableSet *)v25 countByEnumeratingWithState:&v43 objects:v53 count:16];
      }

      while (v26);
    }

    v29 = [(NSMutableSet *)self->_associatedMetrics copy];
    v30 = [v11 completionBlock];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v50 = sub_100004440;
    v51 = sub_100005304;
    v31 = v11;
    v52 = v31;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10005C300;
    v39[3] = &unk_100274748;
    v39[4] = self;
    v32 = v29;
    v40 = v32;
    v42 = buf;
    v33 = v30;
    v41 = v33;
    [v31 setCompletionBlock:v39];

    _Block_object_dispose(buf, 8);
  }

  [(CPLCloudKitTaskController *)self->_controller launchOperation:v11 type:a4];
  if (self->_cancelled || self->_acquireError)
  {
    [v11 cancel];
  }

  else
  {
    [(CPLBackgroundActivity *)self->_activity attachToCKOperation:v11];
  }
}

- (OS_dispatch_queue)synchronousWorkQueue
{
  sub_10019F8E0(self);
  synchronousWorkQueue = self->_synchronousWorkQueue;

  return synchronousWorkQueue;
}

- (void)dispatchSynchronousWork:(id)a3
{
  v4 = a3;
  sub_10019F8E0(self);
  v5 = [(CPLCloudKitTransportTask *)self blockWithAdaptedQOS:v4];

  synchronousWorkQueue = self->_synchronousWorkQueue;
  sub_100021D24();
  v13 = v5;
  v8 = v7;
  sub_1000034D4();
  v15 = 3221225472;
  v16 = sub_100002A3C;
  v17 = &unk_100271E98;
  v18 = v9;
  v10 = synchronousWorkQueue;
  v11 = v5;
  v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v12);
}

- (void)executeSynchronousWork:(id)a3 onItems:(id)a4 description:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  queue = self->_queue;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  dispatch_assert_queue_V2(queue);
  sub_10019F8E0(self);
  v15 = [v13 count];
  v16 = [NSProgress progressWithTotalUnitCount:v15];
  [(CPLCloudKitTransportTask *)self dispatchCallbackOperation:v12 progress:v16];
  v17 = [v13 objectEnumerator];

  sub_100021D24();
  v20[1] = 3221225472;
  v20[2] = sub_10005D390;
  v20[3] = &unk_100274DB0;
  v20[4] = self;
  v21 = v16;
  v22 = v10;
  v23 = v15;
  v18 = v10;
  v19 = v16;
  sub_10019FA98(self, v14, v17, v12, v19, v20);
}

- (void)setupConfigurationForOperation:(id)a3
{
  v4 = a3;
  v5 = [(CPLCloudKitTransportTask *)self baseConfigurationForTask];
  v6 = [(CPLCloudKitTransportTask *)self operationGroup];
  [v4 setGroup:v6];
  [v4 setConfiguration:v5];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_100003810();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [v6 defaultConfiguration];
      v9 = sub_10005E674(self, v8);
      v10 = sub_10005E674(self, v5);
      v11 = 138413314;
      v12 = self;
      v13 = 2112;
      v14 = v4;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Setting up task %@ (CKOperation %@) with group %@ (%@) and configuration %@", &v11, 0x34u);
    }
  }
}

@end