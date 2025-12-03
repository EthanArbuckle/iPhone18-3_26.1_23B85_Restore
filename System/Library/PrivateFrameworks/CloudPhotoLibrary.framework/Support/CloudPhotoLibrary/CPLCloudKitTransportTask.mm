@interface CPLCloudKitTransportTask
+ (NSDictionary)mappingForMoveSteps;
+ (NSDictionary)reverseMappingForMoveSteps;
+ (id)copiedRecordFromSourceRecord:(id)record sourceDatabaseScope:(int64_t)scope toRecordID:(id)d helper:(id)helper action:(id)action error:(id *)error;
+ (id)moveStepFaultInjector;
+ (void)initialize;
+ (void)setMoveStepFaultInjector:(id)injector;
- (BOOL)_isCapabilityCheckIgnorableError:(id)error;
- (BOOL)_mergeFoundCKRecords:(id)records updateFoundCPLRecords:(id)lRecords remainingScopedIdentifiers:(id)identifiers fetchedScopedIdentifiers:(id)scopedIdentifiers userRecordID:(id)d targetMapping:(id)mapping postProcessRecord:(id)record error:(id *)self0;
- (BOOL)deleteTemporaryFolderWithError:(id *)error;
- (BOOL)foreground;
- (BOOL)shouldRunOperationsWithError:(id *)error;
- (CKOperation)currentOperation;
- (CKRecordID)currentUserID;
- (CPLCloudKitTransportTask)initWithController:(id)controller;
- (CPLFingerprintContext)fingerprintContext;
- (NSArray)lastOperationRequestUUIDs;
- (OS_dispatch_queue)synchronousWorkQueue;
- (id)_destinationRecordsFromSourceRecords:(id)records recordIDs:(id)ds sourceType:(int64_t)type destinationRecordIDs:(id)iDs helper:(id)helper sourceRecordIDs:(id *)recordIDs operationContext:(id)context action:(id)self0 error:(id *)self1;
- (id)_errorForUpdateError:(id)error scopeProvider:(id)provider;
- (id)_interpretedChangeFromCKRecord:(id)record scopedIdentifier:(id)identifier userRecordID:(id)d;
- (id)_interpretedSharedChangeFromCKRecord:(id)record scopedIdentifier:(id)identifier userRecordID:(id)d;
- (id)_moveChangesFromSourceRecords:(id)records recordIDs:(id)ds sourceType:(int64_t)type destinationRecordIDs:(id)iDs helper:(id)helper sourceRecordIDs:(id *)recordIDs operationContext:(id)context error:(id *)self0;
- (id)_networkBehaviorForConfiguration:(id)configuration;
- (id)_recordWithRecordID:(id)d usingRealRecords:(id)records remappedRecordIDs:(id)ds wantsAllRecords:(BOOL)allRecords;
- (id)_scopeIdentifierFromZoneID:(id)d;
- (id)_sharedRecordToPrivateRecord:(id)record scopedIdentifier:(id)identifier;
- (id)_stringForQoS:(int64_t)s;
- (id)baseConfigurationForTask;
- (id)baseDestinationCKRecordForSourceCKRecord:(id)record destinationCKRecordID:(id)d error:(id *)error;
- (id)blockWithAdaptedQOS:(id)s;
- (id)callbackOperationDidFinishWithError:(id)error;
- (id)cloudKitScopeForScopeIdentifier:(id)identifier;
- (id)operationDidFinish:(id)finish error:(id)error;
- (id)operationDidFinishWithError:(id)error;
- (id)scopeIdentifierFromZoneID:(id)d;
- (id)scopedIdentifierForCKRecordID:(id)d;
- (id)zoneIDFromScopeIdentifier:(id)identifier;
- (void)_acquireActivityAndLaunchOperation;
- (void)_applyMoveChanges:(id)changes sourceType:(int64_t)type destinationType:(int64_t)destinationType helper:(id)helper operationContext:(id)context completionHandler:(id)handler;
- (void)_cancelActivityRequest;
- (void)_cancelAllOperationsIfBlocked;
- (void)_cancelCallbackProgress;
- (void)_createSparsePrivateRecordsIfNecessary:(id)necessary recordClass:(Class)class userRecordID:(id)d completionHandler:(id)handler;
- (void)_enumerateAllZonesForSharedDatabase:(BOOL)database block:(id)block completionHandler:(id)handler;
- (void)_fetchNextOperationType:(id)type followRemapping:(BOOL)remapping recordIDMapping:(id)mapping inResult:(id)result storeRequestUUIDsIn:(id)in completionHandler:(id)handler;
- (void)_fetchRecordWithScopedIdentifiers:(id)identifiers followRemapping:(BOOL)remapping completionHandler:(id)handler;
- (void)_fetchRecordsFollowRemappingWithIDs:(id)ds alreadyFetchRecordIDs:(id)iDs remappedRecordIDs:(id)recordIDs realRecords:(id)records type:(int64_t)type storeRequestUUIDsIn:(id)in completionHandler:(id)handler;
- (void)_fetchRecordsForRemainingScopedIdentifiers:(id)identifiers alreadyFetchedScopedIdentifiers:(id)scopedIdentifiers userRecordID:(id)d foundCPLRecords:(id)records foundCKRecords:(id)kRecords targetMapping:(id)mapping postProcessRecord:(id)record completionHandler:(id)self0;
- (void)_fetchZoneForZoneID:(id)d operationType:(int64_t)type completionHandler:(id)handler;
- (void)_mergePrivateRecord:(id)record withSharedRecord:(id)sharedRecord merger:(id)merger;
- (void)_reallyStartOperation;
- (void)_uploadDestinationRecords:(id)records destinationType:(int64_t)type scopeProvider:(id)provider operationContext:(id)context uploadAction:(id)action completionHandler:(id)handler;
- (void)acquireHelperWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)associateMetric:(id)metric;
- (void)cancel;
- (void)cancelIfBlocked;
- (void)checkEPPCapabilityIfNecessaryForCloudKitScope:(id)scope completionHandler:(id)handler;
- (void)copyRecordsWithIDs:(id)ds followRemapping:(BOOL)remapping sourceType:(int64_t)type destinationRecordIDs:(id)iDs destinationType:(int64_t)destinationType helper:(id)helper completionHandler:(id)handler;
- (void)copyRecordsWithIDs:(id)ds sourceType:(int64_t)type destinationRecordIDs:(id)iDs destinationType:(int64_t)destinationType completionHandler:(id)handler;
- (void)dispatchAfter:(double)after block:(id)block;
- (void)dispatchAsync:(id)async;
- (void)dispatchCallbackOperation:(id)operation progress:(id)progress;
- (void)dispatchSynchronousWork:(id)work;
- (void)enumerateAllZonesWithBlock:(id)block completionHandler:(id)handler;
- (void)executeSynchronousWork:(id)work description:(id)description completionHandler:(id)handler;
- (void)executeSynchronousWork:(id)work onItems:(id)items description:(id)description completionHandler:(id)handler;
- (void)fetchFullRecordsForScopedIdentifiers:(id)identifiers targetMapping:(id)mapping postProcessRecord:(id)record completionHandler:(id)handler;
- (void)fetchPlaceholderRecordsForScopedIdentifiers:(id)identifiers targetMapping:(id)mapping completionHandler:(id)handler;
- (void)fetchRecordWithNames:(id)names fetchResources:(BOOL)resources inScope:(id)scope completionHandler:(id)handler;
- (void)fetchRecordsFollowRemappingWithIDs:(id)ds wantsAllRecords:(BOOL)records type:(int64_t)type completionHandler:(id)handler;
- (void)fetchRecordsWithIDs:(id)ds fetchResources:(BOOL)resources desiredKeys:(id)keys wantsAllRecords:(BOOL)records type:(int64_t)type perFoundRecordBlock:(id)block completionHandler:(id)handler;
- (void)fetchUnknownTargetsInMapping:(id)mapping completionHandler:(id)handler;
- (void)fetchUserRecordIDFetchWithCompletionHandler:(id)handler;
- (void)fetchZoneForScope:(id)scope completionHandler:(id)handler;
- (void)getTemporaryFolderWithCompletionHandler:(id)handler;
- (void)getUserRecordIDFetchIfNecessaryWithCompletionHandler:(id)handler;
- (void)launchOperation:(id)operation type:(int64_t)type withContext:(id)context;
- (void)launchOperation:(id)operation type:(int64_t)type withContext:(id)context sourceBundleIdentifiers:(id)identifiers;
- (void)moveRecordsWithIDs:(id)ds followRemapping:(BOOL)remapping sourceType:(int64_t)type destinationRecordIDs:(id)iDs destinationType:(int64_t)destinationType helper:(id)helper finalizeMoveChanges:(id)changes completionHandler:(id)self0;
- (void)runOperations;
- (void)setTransportGroup:(id)group;
- (void)setupConfigurationForOperation:(id)operation;
- (void)taskDidFinish;
- (void)updateContextWithBlock:(id)block;
- (void)updateContextWithBlock:(id)block forOperation:(id)operation;
- (void)updateOneBatch;
- (void)updateOneBatchForOperation:(id)operation;
- (void)updatePrivatePropertiesOnAssetsWithScopedIdentifiers:(id)identifiers desiredKeys:(id)keys destinationZoneIdentification:(id)identification sharedZoneIdentification:(id)zoneIdentification targetMapping:(id)mapping knownRecords:(id)records shouldUpdateRecord:(id)record updateBlock:(id)self0 completionHandler:(id)self1;
- (void)updateProgress:(double)progress;
- (void)updateProgress:(double)progress forOperation:(id)operation;
- (void)updateRecords:(id)records cloudKitScope:(id)scope completionHandler:(id)handler;
- (void)uploadRecords:(id)records cloudKitScope:(id)scope scopeProvider:(id)provider completionHandler:(id)handler;
@end

@implementation CPLCloudKitTransportTask

+ (void)initialize
{
  if (objc_opt_class() == self)
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
  newOperationConfiguration = [(CPLCloudKitTaskController *)self->_controller newOperationConfiguration];
  operationGroup = [(CPLCloudKitTransportTask *)self operationGroup];
  defaultConfiguration = [operationGroup defaultConfiguration];
  [(CPLBackgroundActivity *)self->_activity attachToCKOperationConfiguration:newOperationConfiguration];
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

    [newOperationConfiguration setQualityOfService:v12];
  }

  [newOperationConfiguration setCPLDiscretionary:v6];
  [(CPLCloudKitTransportTask *)self timeoutIntervalForRequest];
  v14 = v13;
  [defaultConfiguration timeoutIntervalForRequest];
  if (v14 >= 0.0 && (v15 >= 0.0 ? (v16 = v14 < v15) : (v16 = 1), v16))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = sub_100003810();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v26 = 138412290;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Overriding request timeout for %@", &v26, 0xCu);
      }
    }

    v18 = newOperationConfiguration;
    v19 = v14;
  }

  else
  {
    [defaultConfiguration timeoutIntervalForRequest];
    v18 = newOperationConfiguration;
  }

  [v18 setTimeoutIntervalForRequest:v19];
  [(CPLCloudKitTransportTask *)self timeoutIntervalForResource];
  v21 = v20;
  [defaultConfiguration timeoutIntervalForResource];
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
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Overriding resource timeout for %@", &v26, 0xCu);
      }
    }

    v22 = v21;
  }

  [newOperationConfiguration setTimeoutIntervalForResource:v22];
  if (self->_sourceBundleIdentifier)
  {
    [newOperationConfiguration setApplicationBundleIdentifierOverride:?];
  }

  if (-[CPLCloudKitTransportTask allowsCellular](self, "allowsCellular") && ([defaultConfiguration allowsCellularAccess] & 1) == 0)
  {
    [newOperationConfiguration setAllowsCellularAccess:1];
  }

  return newOperationConfiguration;
}

+ (id)copiedRecordFromSourceRecord:(id)record sourceDatabaseScope:(int64_t)scope toRecordID:(id)d helper:(id)helper action:(id)action error:(id *)error
{
  recordCopy = record;
  dCopy = d;
  helperCopy = helper;
  actionCopy = action;
  v73 = recordCopy;
  errorCopy = error;
  v17 = [helperCopy baseDestinationCKRecordForSourceCKRecord:recordCopy destinationCKRecordID:dCopy error:error];
  if (v17)
  {
    v18 = v17;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = sub_1000035F0();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        cplFullDescription = [v73 cplFullDescription];
        *buf = 138412546;
        v92 = actionCopy;
        v93 = 2112;
        v94 = cplFullDescription;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%@ from record: %@", buf, 0x16u);
      }
    }

    v67 = dCopy;
    v68 = actionCopy;
    zoneID = [dCopy zoneID];
    [v73 recordID];
    v84[0] = _NSConcreteStackBlock;
    v84[1] = 3221225472;
    v84[2] = sub_1000380C4;
    v65 = v84[3] = &unk_100273AD8;
    v66 = helperCopy;
    v85 = v65;
    scopeCopy = scope;
    v22 = helperCopy;
    v86 = v22;
    v64 = zoneID;
    v87 = v64;
    v23 = objc_retainBlock(v84);
    encryptedValues = [v73 encryptedValues];
    encryptedValues2 = [v18 encryptedValues];
    v25 = [NSSet alloc];
    v72 = encryptedValues;
    allKeys = [encryptedValues allKeys];
    v27 = [v25 initWithArray:allKeys];

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
            v36 = (v23[2])(v23, encryptedValues2, v34, v35, &v79);
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
    allKeys2 = [v73 allKeys];
    v40 = [allKeys2 countByEnumeratingWithState:&v75 objects:v89 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v76;
      v70 = allKeys2;
      while (2)
      {
        for (j = 0; j != v41; j = j + 1)
        {
          if (*v76 != v42)
          {
            objc_enumerationMutation(allKeys2);
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
            allKeys2 = v70;
          }
        }

        v41 = [allKeys2 countByEnumeratingWithState:&v75 objects:v89 count:16];
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

    helperCopy = v66;
    dCopy = v67;
    if (errorCopy && !v54)
    {
      v59 = v58;
      *errorCopy = v58;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v60 = sub_1000035F0();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        cplFullDescription2 = [v54 cplFullDescription];
        *buf = 138412546;
        v92 = v68;
        v93 = 2112;
        v94 = cplFullDescription2;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEBUG, "%@ to record: %@", buf, 0x16u);
      }
    }

    if ([v54 cpl_isEPPRecord])
    {
      [v54 cpl_markRecordAsEPP];
    }

    v38 = v54;

    actionCopy = v68;
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (id)_destinationRecordsFromSourceRecords:(id)records recordIDs:(id)ds sourceType:(int64_t)type destinationRecordIDs:(id)iDs helper:(id)helper sourceRecordIDs:(id *)recordIDs operationContext:(id)context action:(id)self0 error:(id *)self1
{
  recordsCopy = records;
  dsCopy = ds;
  iDsCopy = iDs;
  helperCopy = helper;
  contextCopy = context;
  actionCopy = action;
  v21 = CPLCKDatabaseScopeForCPLCloudKitOperationType(type);
  v22 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(recordsCopy, "count")}];
  v23 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(recordsCopy, "count")}];
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
  v24 = recordsCopy;
  v39 = v24;
  v25 = iDsCopy;
  v48 = a2;
  v40 = v25;
  selfCopy = self;
  v26 = helperCopy;
  v42 = v26;
  v27 = v23;
  v43 = v27;
  v49 = v21;
  v28 = actionCopy;
  v44 = v28;
  v29 = contextCopy;
  v45 = v29;
  v30 = v22;
  v46 = v30;
  v47 = &v50;
  [dsCopy enumerateObjectsUsingBlock:v38];
  v31 = v51[5];
  if (v31)
  {
    v32 = 0;
    if (error)
    {
      *error = v31;
    }
  }

  else
  {
    v33 = v27;
    *recordIDs = v27;
    v32 = v30;
  }

  _Block_object_dispose(&v50, 8);

  return v32;
}

- (void)_uploadDestinationRecords:(id)records destinationType:(int64_t)type scopeProvider:(id)provider operationContext:(id)context uploadAction:(id)action completionHandler:(id)handler
{
  recordsCopy = records;
  providerCopy = provider;
  contextCopy = context;
  actionCopy = action;
  handlerCopy = handler;
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
        v45 = recordsCopy;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Will upload copied records: %@", buf, 0xCu);
      }
    }

    v22 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:recordsCopy recordIDsToDelete:0];
    fetchCache = [(CPLCloudKitTransportTask *)self fetchCache];
    v24 = fetchCache;
    if (fetchCache)
    {
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_100038A8C;
      v41[3] = &unk_100273B28;
      v41[4] = self;
      v33 = fetchCache;
      v25 = recordsCopy;
      v26 = v20;
      v27 = actionCopy;
      v28 = contextCopy;
      v29 = providerCopy;
      typeCopy = type;
      v31 = fetchCache;
      v42 = v31;
      [v22 setPerRecordSaveBlock:v41];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100038B48;
      v39[3] = &unk_100273B50;
      v39[4] = self;
      v32 = v31;
      type = typeCopy;
      providerCopy = v29;
      contextCopy = v28;
      actionCopy = v27;
      v20 = v26;
      recordsCopy = v25;
      v24 = v33;
      v40 = v32;
      [v22 setPerRecordDeleteBlock:v39];
    }

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100038C04;
    v34[3] = &unk_100273BC8;
    v34[4] = self;
    v35 = recordsCopy;
    v38 = handlerCopy;
    v36 = providerCopy;
    v37 = actionCopy;
    [v22 setModifyRecordsCompletionBlock:v34];
    [v22 setSavePolicy:2];
    [(CPLCloudKitTransportTask *)self launchOperation:v22 type:type withContext:contextCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, v20);
  }
}

- (void)copyRecordsWithIDs:(id)ds followRemapping:(BOOL)remapping sourceType:(int64_t)type destinationRecordIDs:(id)iDs destinationType:(int64_t)destinationType helper:(id)helper completionHandler:(id)handler
{
  remappingCopy = remapping;
  dsCopy = ds;
  iDsCopy = iDs;
  helperCopy = helper;
  handlerCopy = handler;
  if ([dsCopy count])
  {
    v20 = [dsCopy count];
    if (v20 == [iDsCopy count])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v21 = sub_1000035F0();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v38 = dsCopy;
          v39 = 2112;
          v40 = iDsCopy;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Will copy %@ to %@", buf, 0x16u);
        }
      }

      v25 = _NSConcreteStackBlock;
      v26 = 3221225472;
      v27 = sub_100039234;
      v28 = &unk_100273BF0;
      v33 = handlerCopy;
      v22 = dsCopy;
      v29 = v22;
      v30 = iDsCopy;
      selfCopy = self;
      typeCopy = type;
      v32 = helperCopy;
      v35 = a2;
      destinationTypeCopy = destinationType;
      v23 = objc_retainBlock(&v25);
      if (remappingCopy)
      {
        [(CPLCloudKitTransportTask *)self fetchRecordsFollowRemappingWithIDs:v22 wantsAllRecords:1 type:type completionHandler:v23, v25, v26, v27, v28, v29, v30, selfCopy];
      }

      else
      {
        [(CPLCloudKitTransportTask *)self fetchRecordsWithIDs:v22 fetchResources:0 wantsAllRecords:1 type:type completionHandler:v23, v25, v26, v27, v28, v29, v30, selfCopy];
      }
    }

    else
    {
      v24 = [CPLErrors incorrectParametersErrorForParameter:@"destinationRecordIDs"];
      (*(handlerCopy + 2))(handlerCopy, 0, v24);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, &__NSDictionary0__struct, 0);
  }
}

- (void)copyRecordsWithIDs:(id)ds sourceType:(int64_t)type destinationRecordIDs:(id)iDs destinationType:(int64_t)destinationType completionHandler:(id)handler
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100039578;
  v13[3] = &unk_100272F88;
  handlerCopy = handler;
  v12 = handlerCopy;
  [(CPLCloudKitTransportTask *)self copyRecordsWithIDs:ds followRemapping:0 sourceType:type destinationRecordIDs:iDs destinationType:destinationType helper:self completionHandler:v13];
}

- (void)_applyMoveChanges:(id)changes sourceType:(int64_t)type destinationType:(int64_t)destinationType helper:(id)helper operationContext:(id)context completionHandler:(id)handler
{
  changesCopy = changes;
  helperCopy = helper;
  contextCopy = context;
  handlerCopy = handler;
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
        v42 = changesCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Applying move changes: %@", buf, 0xCu);
      }
    }

    v31 = helperCopy;
    if (qword_1002C5040 != -1)
    {
      sub_10019837C();
    }

    controller = [(CPLCloudKitTransportTask *)self controller];
    v22 = [controller databaseForOperationType:type relativeToOperationType:destinationType];

    v23 = [CKMovePhotosOperation alloc];
    changes = [changesCopy changes];
    v25 = [v23 initWithMoveChanges:changes sourceDatabase:v22];

    fetchCache = [(CPLCloudKitTransportTask *)self fetchCache];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100197858;
    v36[3] = &unk_100273C38;
    destinationTypeCopy = destinationType;
    v28 = changesCopy;
    v37 = v28;
    v38 = fetchCache;
    selfCopy = self;
    v29 = fetchCache;
    [v25 setPerRecordMoveBlock:v36];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100039978;
    v32[3] = &unk_100273C88;
    v32[4] = self;
    v35 = handlerCopy;
    v33 = v28;
    v34 = v31;
    [v25 setMovePhotosCompletionBlock:v32];
    v30 = destinationTypeCopy;
    helperCopy = v31;
    [(CPLCloudKitTransportTask *)self launchOperation:v25 type:v30 withContext:contextCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, v19);
  }
}

- (id)_moveChangesFromSourceRecords:(id)records recordIDs:(id)ds sourceType:(int64_t)type destinationRecordIDs:(id)iDs helper:(id)helper sourceRecordIDs:(id *)recordIDs operationContext:(id)context error:(id *)self0
{
  recordsCopy = records;
  dsCopy = ds;
  iDsCopy = iDs;
  helperCopy = helper;
  contextCopy = context;
  v19 = CPLCKDatabaseScopeForCPLCloudKitOperationType(type);
  v20 = -[CPLMoveChangesBatch initWithCapacity:]([CPLMoveChangesBatch alloc], "initWithCapacity:", [recordsCopy count]);
  v21 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(recordsCopy, "count")}];
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
  v23 = recordsCopy;
  v38 = v23;
  v24 = iDsCopy;
  v47 = a2;
  v39 = v24;
  selfCopy = self;
  v25 = helperCopy;
  v41 = v25;
  v26 = v21;
  v42 = v26;
  v48 = v19;
  v27 = v22;
  v43 = v27;
  v28 = contextCopy;
  v44 = v28;
  v29 = v20;
  v45 = v29;
  v46 = &v49;
  [dsCopy enumerateObjectsUsingBlock:v37];
  v30 = v50[5];
  if (v30)
  {
    v31 = 0;
    if (error)
    {
      *error = v30;
    }
  }

  else
  {
    v32 = v26;
    *recordIDs = v26;
    v31 = v29;
  }

  _Block_object_dispose(&v49, 8);

  return v31;
}

- (void)moveRecordsWithIDs:(id)ds followRemapping:(BOOL)remapping sourceType:(int64_t)type destinationRecordIDs:(id)iDs destinationType:(int64_t)destinationType helper:(id)helper finalizeMoveChanges:(id)changes completionHandler:(id)self0
{
  remappingCopy = remapping;
  dsCopy = ds;
  iDsCopy = iDs;
  helperCopy = helper;
  changesCopy = changes;
  handlerCopy = handler;
  if ([dsCopy count])
  {
    v21 = [dsCopy count];
    if (v21 == [iDsCopy count])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v22 = sub_1000035F0();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v39 = dsCopy;
          v40 = 2112;
          v41 = iDsCopy;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Will move %@ to %@", buf, 0x16u);
        }
      }

      v26 = _NSConcreteStackBlock;
      v27 = 3221225472;
      v28 = sub_10003A138;
      v29 = &unk_100273CF0;
      v34 = handlerCopy;
      v23 = dsCopy;
      v30 = v23;
      v31 = iDsCopy;
      selfCopy = self;
      typeCopy = type;
      v33 = helperCopy;
      v35 = changesCopy;
      destinationTypeCopy = destinationType;
      v24 = objc_retainBlock(&v26);
      if (remappingCopy)
      {
        [(CPLCloudKitTransportTask *)self fetchRecordsFollowRemappingWithIDs:v23 wantsAllRecords:0 type:type completionHandler:v24, v26, v27, v28, v29, v30, v31, selfCopy, v33, v34];
      }

      else
      {
        [(CPLCloudKitTransportTask *)self fetchRecordsWithIDs:v23 fetchResources:0 wantsAllRecords:0 type:type completionHandler:v24, v26, v27, v28, v29, v30, v31, selfCopy, v33, v34];
      }
    }

    else
    {
      v25 = [CPLErrors incorrectParametersErrorForParameter:@"destinationRecordIDs"];
      (*(handlerCopy + 2))(handlerCopy, 0, v25);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, &__NSDictionary0__struct, 0);
  }
}

+ (id)moveStepFaultInjector
{
  v2 = objc_retainBlock(qword_1002C5048);

  return v2;
}

+ (void)setMoveStepFaultInjector:(id)injector
{
  v3 = [injector copy];
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
  block[4] = self;
  if (qword_1002C5058 != -1)
  {
    dispatch_once(&qword_1002C5058, block);
  }

  v2 = qword_1002C5050;

  return v2;
}

- (id)baseDestinationCKRecordForSourceCKRecord:(id)record destinationCKRecordID:(id)d error:(id *)error
{
  dCopy = d;
  recordCopy = record;
  v8 = [CKRecord alloc];
  recordType = [recordCopy recordType];

  v10 = [v8 initWithRecordType:recordType recordID:dCopy];

  return v10;
}

- (BOOL)_isCapabilityCheckIgnorableError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:CKErrorDomain];

  if (!v5)
  {
    goto LABEL_7;
  }

  code = [errorCopy code];
  v7 = +[CPLFingerprintScheme supportsEPPAutoEnable];
  v8 = 1;
  if ((code > 0x18 || ((1 << code) & 0x1041000) == 0) && code != 160)
  {
    if (code == 161)
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

- (void)checkEPPCapabilityIfNecessaryForCloudKitScope:(id)scope completionHandler:(id)handler
{
  scopeCopy = scope;
  handlerCopy = handler;
  v31 = 0;
  v8 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v31];
  v9 = v31;
  if (v8)
  {
    if (sub_1001985F8(self))
    {
      v10 = CPLCloudKitOperationTypeForScope(scopeCopy);
      if (v10 == 1 || (sub_10019869C(self, handlerCopy) & 1) != 0)
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
        zoneID = [scopeCopy zoneID];
        v32 = zoneID;
        v21 = [NSArray arrayWithObjects:&v32 count:1];
        v22 = [v17 initWithDesiredCapabilitySets:v19 zoneIDs:v21 options:v16];

        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_10003E5BC;
        v27[3] = &unk_100273E20;
        v27[4] = self;
        v28 = scopeCopy;
        v29 = v24;
        v30 = handlerCopy;
        v23 = v24;
        [v22 setCheckSupportedDeviceCapabilitiesCompletionBlock:v27];
        [(CPLCloudKitTransportTask *)self launchOperation:v22 type:v26 withContext:0];
      }
    }

    else
    {
      v15 = [CPLErrors cplErrorWithCode:1002 description:@"EPP Capability check has been disabled"];
      (*(handlerCopy + 2))(handlerCopy, 0, v15);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, v9);
  }
}

- (CPLFingerprintContext)fingerprintContext
{
  controller = [(CPLCloudKitTransportTask *)self controller];
  fingerprintContext = [controller fingerprintContext];

  return fingerprintContext;
}

- (CPLCloudKitTransportTask)initWithController:(id)controller
{
  controllerCopy = controller;
  v19.receiver = self;
  v19.super_class = CPLCloudKitTransportTask;
  v6 = [(CPLCloudKitTransportTask *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, controller);
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

- (void)setTransportGroup:(id)group
{
  groupCopy = group;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1001A05F8(a2, self, groupCopy);
  }

  transportGroup = self->_transportGroup;
  self->_transportGroup = groupCopy;
}

- (BOOL)foreground
{
  if (self->_foregroundHasBeenChanged)
  {
    foreground = self->_foreground;
  }

  else
  {
    defaultConfiguration = [(CPLEngineTransportGroup *)self->_transportGroup defaultConfiguration];
    foreground = [defaultConfiguration cplDiscretionary] ^ 1;
  }

  return foreground & 1;
}

- (void)_acquireActivityAndLaunchOperation
{
  cloudKitRescheduler = [(CPLSyncSession *)self->_session cloudKitRescheduler];
  goodConditionsDescription = [cloudKitRescheduler goodConditionsDescription];
  [(CPLCloudKitTransportTask *)self setIdleDescription:goodConditionsDescription];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005B588;
  v8[3] = &unk_100272268;
  v8[4] = self;
  v9 = cloudKitRescheduler;
  v5 = cloudKitRescheduler;
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

  cloudKitRescheduler = [(CPLSyncSession *)self->_session cloudKitRescheduler];
  [cloudKitRescheduler dropBackgroundActivityRequest:self->_activityRequest];

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

  operationTracker = [(CPLCloudKitTaskController *)self->_controller operationTracker];
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

        if ([operationTracker isOperationBlocked:*(*(&v10 + 1) + 8 * i)])
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

- (id)blockWithAdaptedQOS:(id)s
{
  sCopy = s;
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

  v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v5, 0, sCopy);

  sCopy = v6;
LABEL_6:
  v7 = objc_retainBlock(sCopy);

  return v7;
}

- (void)dispatchAsync:(id)async
{
  v4 = [(CPLCloudKitTransportTask *)self blockWithAdaptedQOS:async];
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

- (void)dispatchAfter:(double)after block:(id)block
{
  v6 = [(CPLCloudKitTransportTask *)self blockWithAdaptedQOS:block];
  v7 = dispatch_time(0, 1000000000 * after);
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

- (BOOL)shouldRunOperationsWithError:(id *)error
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
    if (!error)
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
  if (error)
  {
LABEL_7:
    if (!v8)
    {
      v9 = v7;
      *error = v7;
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

- (void)launchOperation:(id)operation type:(int64_t)type withContext:(id)context
{
  operationCopy = operation;
  contextCopy = context;
  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  defaultSourceBundleIdentifier = sourceBundleIdentifier;
  if (!sourceBundleIdentifier)
  {
    controller = [(CPLCloudKitTransportTask *)self controller];
    defaultSourceBundleIdentifier = [controller defaultSourceBundleIdentifier];
  }

  v14 = defaultSourceBundleIdentifier;
  v13 = [NSArray arrayWithObjects:&v14 count:1];
  [(CPLCloudKitTransportTask *)self launchOperation:operationCopy type:type withContext:contextCopy sourceBundleIdentifiers:v13];

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

  lastObject = [(NSMutableArray *)self->_currentOperations lastObject];
  [(CPLCloudKitTransportTask *)self updateOneBatchForOperation:lastObject];
}

- (void)updateProgress:(double)progress
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSMutableArray *)self->_currentOperations count]!= 1)
  {
    sub_1001A0C3C(a2, &self->_currentOperations, self);
  }

  operationTracker = [(CPLCloudKitTaskController *)self->_controller operationTracker];
  lastObject = [(NSMutableArray *)self->_currentOperations lastObject];
  [operationTracker operation:lastObject updateProgress:progress];
}

- (void)updateContextWithBlock:(id)block
{
  blockCopy = block;
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSMutableArray *)self->_currentOperations count]!= 1)
  {
    sub_1001A0D38(a2, &self->_currentOperations, self);
  }

  operationTracker = [(CPLCloudKitTaskController *)self->_controller operationTracker];
  lastObject = [(NSMutableArray *)self->_currentOperations lastObject];
  [operationTracker operation:lastObject updateContextWithBlock:blockCopy];
}

- (id)operationDidFinishWithError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSMutableArray *)self->_currentOperations count]!= 1)
  {
    sub_1001A0E34(a2, &self->_currentOperations, self);
  }

  lastObject = [(NSMutableArray *)self->_currentOperations lastObject];
  v7 = [(CPLCloudKitTransportTask *)self operationDidFinish:lastObject error:errorCopy];

  return v7;
}

- (void)_cancelCallbackProgress
{
  if (self->_callbackOperationProgress)
  {
    idleDescription = [(CPLCloudKitTransportTask *)self idleDescription];
    if (idleDescription && ([idleDescription hasSuffix:@" (cancelled)"] & 1) == 0)
    {
      v3 = [idleDescription stringByAppendingString:@" (cancelled)"];
      [(CPLCloudKitTransportTask *)self setIdleDescription:v3];
    }

    [(NSProgress *)self->_callbackOperationProgress cancel];
  }
}

- (void)dispatchCallbackOperation:(id)operation progress:(id)progress
{
  operationCopy = operation;
  progressCopy = progress;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_callbackOperationProgress)
  {
    sub_1001A0F30(self, a2, operationCopy);
  }

  [(CPLCloudKitTransportTask *)self pushTaskOperation];
  [(CPLCloudKitTransportTask *)self setIdleDescription:operationCopy];
  objc_storeStrong(&self->_callbackOperationProgress, progress);
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

- (id)callbackOperationDidFinishWithError:(id)error
{
  errorCopy = error;
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

  v8 = errorCopy;
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

    idleDescription = [(CPLCloudKitTransportTask *)self idleDescription];
    v12 = idleDescription;
    v16 = @"operation";
    if (idleDescription)
    {
      v16 = idleDescription;
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

- (void)executeSynchronousWork:(id)work description:(id)description completionHandler:(id)handler
{
  workCopy = work;
  descriptionCopy = description;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  v20 = 0;
  v11 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v20];
  v12 = v20;
  if (v11)
  {
    v13 = [NSProgress progressWithTotalUnitCount:1];
    [(CPLCloudKitTransportTask *)self dispatchCallbackOperation:descriptionCopy progress:v13];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10005CDCC;
    v15[3] = &unk_100274D10;
    v16 = v13;
    selfCopy = self;
    v18 = workCopy;
    v19 = handlerCopy;
    v14 = v13;
    [(CPLCloudKitTransportTask *)self dispatchSynchronousWork:v15];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, v12);
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

- (void)acquireHelperWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  v17 = 0;
  v8 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v17];
  v9 = v17;
  if (v8)
  {
    v10 = [NSProgress progressWithTotalUnitCount:1];
    identifierCopy = [[NSString alloc] initWithFormat:@"Acquiring helper %@", identifierCopy];
    [(CPLCloudKitTransportTask *)self dispatchCallbackOperation:identifierCopy progress:v10];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10005D68C;
    v13[3] = &unk_100272518;
    v13[4] = self;
    v14 = identifierCopy;
    v15 = v10;
    v16 = handlerCopy;
    v12 = v10;
    [v12 performAsCurrentWithPendingUnitCount:1 usingBlock:v13];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, v9);
  }
}

- (void)getTemporaryFolderWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v13 = 0;
  v5 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v13];
  v6 = v13;
  if (v5)
  {
    temporaryFolderURL = self->_temporaryFolderURL;
    if (temporaryFolderURL)
    {
      handlerCopy[2](handlerCopy, temporaryFolderURL, 0);
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
      v12 = handlerCopy;
      v9 = v8;
      [v9 performAsCurrentWithPendingUnitCount:1 usingBlock:v10];
    }
  }

  else
  {
    (handlerCopy)[2](handlerCopy, 0, v6);
  }
}

- (BOOL)deleteTemporaryFolderWithError:(id *)error
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

    if (error && (v7 & 1) == 0)
    {
      v10 = v8;
      v7 = 0;
      *error = v8;
    }
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  return v7;
}

- (void)associateMetric:(id)metric
{
  metricCopy = metric;
  dispatch_assert_queue_V2(self->_queue);
  [(CPLCloudKitTaskController *)self->_controller associateMetric:metricCopy];
  associatedMetrics = self->_associatedMetrics;
  if (associatedMetrics)
  {
    [(NSMutableSet *)associatedMetrics addObject:metricCopy];
  }

  else
  {
    v5 = [[NSMutableSet alloc] initWithObjects:{metricCopy, 0}];
    v6 = self->_associatedMetrics;
    self->_associatedMetrics = v5;
  }
}

- (void)updateOneBatchForOperation:(id)operation
{
  operationCopy = operation;
  if (([(NSMutableArray *)self->_currentOperations containsObject:?]& 1) == 0)
  {
    sub_1001A1244(a2, operationCopy);
  }

  operationTracker = [(CPLCloudKitTaskController *)self->_controller operationTracker];
  [operationTracker operationDidProgressOneBatch:operationCopy];
}

- (void)updateProgress:(double)progress forOperation:(id)operation
{
  operationCopy = operation;
  if (([(NSMutableArray *)self->_currentOperations containsObject:?]& 1) == 0)
  {
    sub_1001A1370(a2, operationCopy);
  }

  operationTracker = [(CPLCloudKitTaskController *)self->_controller operationTracker];
  [operationTracker operation:operationCopy updateProgress:progress];
}

- (void)updateContextWithBlock:(id)block forOperation:(id)operation
{
  blockCopy = block;
  operationCopy = operation;
  if (([(NSMutableArray *)self->_currentOperations containsObject:operationCopy]& 1) == 0)
  {
    sub_1001A149C(a2, operationCopy);
  }

  operationTracker = [(CPLCloudKitTaskController *)self->_controller operationTracker];
  [operationTracker operation:operationCopy updateContextWithBlock:blockCopy];
}

- (id)operationDidFinish:(id)finish error:(id)error
{
  finishCopy = finish;
  errorCopy = error;
  if (([(NSMutableArray *)self->_currentOperations containsObject:finishCopy]& 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v24 = sub_100003810();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = NSStringFromSelector(a2);
        cplOperationClassDescription = [finishCopy cplOperationClassDescription];
        *buf = 138412546;
        selfCopy = v25;
        v39 = 2112;
        v40 = cplOperationClassDescription;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%@ for %@ called while it has not started yet", buf, 0x16u);
      }
    }

    v27 = +[NSAssertionHandler currentHandler];
    v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitTransportTask.m"];
    v29 = NSStringFromSelector(a2);
    cplOperationClassDescription2 = [finishCopy cplOperationClassDescription];
    [v27 handleFailureInMethod:a2 object:self file:v28 lineNumber:1070 description:{@"%@ for %@ called while it has not started yet", v29, cplOperationClassDescription2}];

    abort();
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_100003810();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      selfCopy = self;
      v39 = 2112;
      v40 = finishCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@ finished %@", buf, 0x16u);
    }
  }

  [(CPLCloudKitTransportTaskGate *)self->_gate operation:finishCopy forTask:self didFinishWithError:errorCopy];
  [(CPLCloudKitTransportTask *)self processErrorIfNeeded:errorCopy];
  operationTracker = [(CPLCloudKitTaskController *)self->_controller operationTracker];
  [operationTracker operationDidFinish:finishCopy];

  v31 = finishCopy;
  [(NSMutableArray *)self->_currentOperations removeObject:finishCopy];
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
  if (errorCopy)
  {
    acquireError = self->_acquireError;
    v19 = v31;
    if (acquireError)
    {
      v20 = acquireError;
LABEL_23:
      v21 = v20;

      errorCopy = v21;
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

  return errorCopy;
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
    operationTracker = [(CPLCloudKitTaskController *)self->_controller operationTracker];
    [operationTracker taskDidFinish:self];
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

- (id)_stringForQoS:(int64_t)s
{
  v3 = __ROR8__(s - 9, 3);
  if (v3 > 3)
  {
    return @"def";
  }

  else
  {
    return off_100275008[v3];
  }
}

- (id)_networkBehaviorForConfiguration:(id)configuration
{
  if ([configuration cplDiscretionary])
  {
    return @"disc";
  }

  else
  {
    return @"non-disc";
  }
}

- (void)getUserRecordIDFetchIfNecessaryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_transportUserIdentifier && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    v5 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v8];
    v6 = v8;
    if (v5)
    {
      handlerCopy[2](handlerCopy, self->_transportUserIdentifier, 0);
    }

    else
    {
      (handlerCopy)[2](handlerCopy, 0, v6);
    }
  }

  else
  {
    sub_1001A1860(self, v7, handlerCopy);
  }
}

- (void)fetchUserRecordIDFetchWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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
    v9 = handlerCopy;
    [v7 setFetchRecordsCompletionBlock:v8];
    [(CPLCloudKitTransportTask *)self launchOperation:v7 type:1 withContext:0];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, v6);
  }
}

- (void)_enumerateAllZonesForSharedDatabase:(BOOL)database block:(id)block completionHandler:(id)handler
{
  databaseCopy = database;
  blockCopy = block;
  handlerCopy = handler;
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
    v19 = blockCopy;
    v20 = v23;
    objc_copyWeak(&v21, &location);
    [v12 setRecordZoneWithIDChangedBlock:v18];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10005F00C;
    v14[3] = &unk_100274F18;
    v14[4] = self;
    v16 = v23;
    v17 = databaseCopy;
    v15 = handlerCopy;
    [v12 setFetchDatabaseChangesCompletionBlock:v14];
    if (databaseCopy)
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
    (*(handlerCopy + 2))(handlerCopy, 1, v11);
  }
}

- (void)enumerateAllZonesWithBlock:(id)block completionHandler:(id)handler
{
  blockCopy = block;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005F304;
  v9[3] = &unk_100274F40;
  v9[4] = self;
  handlerCopy = handler;
  v11 = blockCopy;
  v7 = blockCopy;
  v8 = handlerCopy;
  [(CPLCloudKitTransportTask *)self _enumerateAllZonesForSharedDatabase:0 block:v7 completionHandler:v9];
}

- (id)cloudKitScopeForScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(CPLTransportScopeMapping *)self->_transportScopeMapping objectForKeyedSubscript:identifierCopy];
  if (!v5)
  {
    v5 = [(CPLCloudKitTaskController *)self->_controller cloudKitScopeForScopeIdentifier:identifierCopy];
  }

  return v5;
}

- (id)zoneIDFromScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:identifierCopy];
  zoneID = [v5 zoneID];

  if (!zoneID)
  {
    zoneID = [(CPLCloudKitTaskController *)self->_controller zoneIDFromScopeIdentifier:identifierCopy];
  }

  return zoneID;
}

- (id)_scopeIdentifierFromZoneID:(id)d
{
  dCopy = d;
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

  v9 = [(NSMutableDictionary *)cacheScopeIdentifiersPerZoneID objectForKeyedSubscript:dCopy];

  return v9;
}

- (id)scopeIdentifierFromZoneID:(id)d
{
  dCopy = d;
  v5 = [(CPLCloudKitTransportTask *)self _scopeIdentifierFromZoneID:dCopy];
  if (!v5)
  {
    v5 = [(CPLCloudKitTaskController *)self->_controller scopeIdentifierFromZoneID:dCopy];
  }

  return v5;
}

- (id)scopedIdentifierForCKRecordID:(id)d
{
  dCopy = d;
  zoneID = [dCopy zoneID];
  v6 = [(CPLCloudKitTransportTask *)self _scopeIdentifierFromZoneID:zoneID];

  if (v6)
  {
    v7 = [dCopy cpl_scopedIdentifierWithScopeIdentifier:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)fetchRecordsWithIDs:(id)ds fetchResources:(BOOL)resources desiredKeys:(id)keys wantsAllRecords:(BOOL)records type:(int64_t)type perFoundRecordBlock:(id)block completionHandler:(id)handler
{
  resourcesCopy = resources;
  dsCopy = ds;
  keysCopy = keys;
  blockCopy = block;
  handlerCopy = handler;
  v52 = 0;
  LOBYTE(block) = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v52];
  v12 = v52;
  v32 = v12;
  if ((block & 1) == 0)
  {
    handlerCopy[2](handlerCopy, 0, &__NSArray0__struct, v12);
    goto LABEL_38;
  }

  allowsFetchCache = [(CPLCloudKitTransportTask *)self allowsFetchCache];
  fetchCache = 0;
  if (keysCopy)
  {
    v16 = 0;
    v17 = 0;
  }

  else
  {
    selfCopy2 = self;
    v16 = 0;
    v17 = 0;
    if (((allowsFetchCache ^ 1) & 1) != 0 || resourcesCopy)
    {
      goto LABEL_23;
    }

    fetchCache = [(CPLCloudKitTransportTask *)self fetchCache];
    if (fetchCache)
    {
      v18 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(dsCopy, "count")}];
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v19 = dsCopy;
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
            v24 = [(CPLCKRecordFetchCache *)fetchCache cachedRecordWithID:v23];
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
      fetchCache = objc_alloc_init(CPLCKRecordFetchCache);
      [(CPLCloudKitTransportTask *)self setFetchCache:fetchCache];
      v16 = 0;
      v17 = 0;
    }
  }

  selfCopy2 = self;
LABEL_23:
  if (!type)
  {
    sub_1001A45B4(a2, selfCopy2);
  }

  if (!v17)
  {
    v17 = dsCopy;
  }

  if ([v17 count])
  {
    if (fetchCache)
    {
      -[CPLCKRecordFetchCache willFetchRecordCount:](fetchCache, "willFetchRecordCount:", [v17 count]);
    }

    v25 = [[CKFetchRecordsOperation alloc] initWithRecordIDs:v17];
    [v25 setShouldFetchAssetContent:resourcesCopy];
    if (keysCopy)
    {
      [v25 setDesiredKeys:keysCopy];
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
        v27 = [dsCopy componentsJoinedByString:{@", "}];
        sub_1001A454C(v25, v27, buf, v26);
      }
    }

    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10006EF3C;
    v43[3] = &unk_1002755A8;
    v43[4] = self;
    v46 = v47;
    v44 = dsCopy;
    v45 = blockCopy;
    [v25 setPerRecordCompletionBlock:v43];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10006F088;
    v37[3] = &unk_100275648;
    v37[4] = self;
    v38 = v17;
    recordsCopy = records;
    v39 = fetchCache;
    v40 = v16;
    v41 = handlerCopy;
    [v25 setFetchRecordsCompletionBlock:v37];
    [(CPLCloudKitTransportTask *)self launchOperation:v25 type:type withContext:0];

    _Block_object_dispose(v47, 8);
  }

  else
  {
    v25 = [v16 copy];
    (handlerCopy[2])();
  }

LABEL_38:
}

- (void)fetchRecordWithNames:(id)names fetchResources:(BOOL)resources inScope:(id)scope completionHandler:(id)handler
{
  resourcesCopy = resources;
  namesCopy = names;
  scopeCopy = scope;
  handlerCopy = handler;
  v13 = handlerCopy;
  if (scopeCopy)
  {
    selfCopy = self;
    v27 = resourcesCopy;
    v28 = handlerCopy;
    v14 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(namesCopy, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = namesCopy;
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
          zoneID = [scopeCopy zoneID];
          v23 = [v21 initWithRecordName:v20 zoneID:zoneID];

          [v14 addObject:v23];
        }

        v17 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v17);
    }

    v24 = CPLCloudKitOperationTypeForScope(scopeCopy);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10006F62C;
    v29[3] = &unk_100275698;
    v13 = v28;
    v30 = v28;
    [(CPLCloudKitTransportTask *)selfCopy fetchRecordsWithIDs:v14 fetchResources:v27 wantsAllRecords:0 type:v24 completionHandler:v29];
  }

  else
  {
    v25 = [CPLErrors cplErrorWithCode:80 description:@"Missing required zone"];
    (v13)[2](v13, 0, 0, v25);
  }
}

- (void)_fetchNextOperationType:(id)type followRemapping:(BOOL)remapping recordIDMapping:(id)mapping inResult:(id)result storeRequestUUIDsIn:(id)in completionHandler:(id)handler
{
  remappingCopy = remapping;
  typeCopy = type;
  mappingCopy = mapping;
  resultCopy = result;
  inCopy = in;
  handlerCopy = handler;
  if ([typeCopy count])
  {
    allKeys = [typeCopy allKeys];
    firstObject = [allKeys firstObject];

    v21 = [typeCopy objectForKeyedSubscript:firstObject];
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_10006FB1C;
    v28 = &unk_1002756C0;
    v29 = inCopy;
    v30 = resultCopy;
    v31 = mappingCopy;
    v32 = typeCopy;
    v22 = firstObject;
    v33 = v22;
    selfCopy = self;
    v36 = remappingCopy;
    v35 = handlerCopy;
    v23 = objc_retainBlock(&v25);
    integerValue = [v22 integerValue];
    if (remappingCopy)
    {
      [(CPLCloudKitTransportTask *)self fetchRecordsFollowRemappingWithIDs:v21 wantsAllRecords:0 type:integerValue completionHandler:v23];
    }

    else
    {
      [(CPLCloudKitTransportTask *)self fetchRecordsWithIDs:v21 fetchResources:0 wantsAllRecords:0 type:integerValue completionHandler:v23];
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)_fetchRecordWithScopedIdentifiers:(id)identifiers followRemapping:(BOOL)remapping completionHandler:(id)handler
{
  remappingCopy = remapping;
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v48 = 0;
  selfCopy = self;
  LOBYTE(handler) = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v48];
  v10 = v48;
  v11 = v10;
  if (handler)
  {
    v33 = remappingCopy;
    v34 = v10;
    v35 = handlerCopy;
    v39 = objc_alloc_init(NSMutableDictionary);
    v12 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v36 = identifiersCopy;
    v13 = identifiersCopy;
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
          identifier = [v18 identifier];
          scopeIdentifier = [v18 scopeIdentifier];
          v21 = [(CPLCloudKitTransportTask *)selfCopy cloudKitScopeForScopeIdentifier:scopeIdentifier];

          if (!v21)
          {
            v32 = [CPLErrors cplErrorWithCode:80 description:@"Missing required zone for %@", v18];
            handlerCopy = v35;
            (v35)[2](v35, 0, 0, v32);
            v31 = v39;
            v30 = obj;
            goto LABEL_15;
          }

          v22 = [v21 recordIDWithRecordName:identifier];
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
    handlerCopy = v35;
    v42 = v28;
    v43 = v35;
    v41 = v29;
    identifier = v28;
    v30 = v29;
    v31 = v39;
    [(CPLCloudKitTransportTask *)selfCopy _fetchNextOperationType:v39 followRemapping:v33 recordIDMapping:v12 inResult:identifier storeRequestUUIDsIn:v30 completionHandler:v40];

    v32 = v43;
LABEL_15:

    identifiersCopy = v36;
    v11 = v34;
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v10);
  }
}

- (id)_interpretedChangeFromCKRecord:(id)record scopedIdentifier:(id)identifier userRecordID:(id)d
{
  recordCopy = record;
  identifierCopy = identifier;
  if (!recordCopy)
  {
    v13 = 0;
    goto LABEL_28;
  }

  dCopy = d;
  cpl_inExpunged = [recordCopy cpl_inExpunged];
  v28 = 0;
  scopeIdentifier = [identifierCopy scopeIdentifier];
  v13 = [recordCopy cpl_recordChangeMissingResourceProperties:&v28 scopeIdentifier:scopeIdentifier scopeProvider:self currentUserRecordID:dCopy];

  v14 = v28;
  if (cpl_inExpunged && v13)
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
          v32 = identifierCopy;
          recordType = v15;
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
    if (cpl_inExpunged)
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
      v32 = identifierCopy;
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
      v32 = identifierCopy;
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
      recordType = [recordCopy recordType];
      *buf = 138412546;
      v30 = recordType;
      v31 = 2112;
      v32 = identifierCopy;
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

- (id)_interpretedSharedChangeFromCKRecord:(id)record scopedIdentifier:(id)identifier userRecordID:(id)d
{
  recordCopy = record;
  identifierCopy = identifier;
  dCopy = d;
  if (recordCopy && ([recordCopy recordType], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(CPLRecordChangeClassForCKRecordType(v11), "supportsSharing"), v11, v12))
  {
    v13 = [(CPLCloudKitTransportTask *)self _interpretedChangeFromCKRecord:recordCopy scopedIdentifier:identifierCopy userRecordID:dCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_sharedRecordToPrivateRecord:(id)record scopedIdentifier:(id)identifier
{
  recordCopy = record;
  identifierCopy = identifier;
  if ([recordCopy supportsSharingScopedIdentifier])
  {
    scopedIdentifier = [recordCopy scopedIdentifier];
    [recordCopy setSharingRecordScopedIdentifier:scopedIdentifier];
  }

  [recordCopy setScopedIdentifier:identifierCopy];
  [recordCopy awakeFromStorage];
  recordChangeData = [recordCopy recordChangeData];
  [recordCopy setSharingRecordChangeData:recordChangeData];

  [recordCopy setRecordChangeData:0];

  return recordCopy;
}

- (void)_mergePrivateRecord:(id)record withSharedRecord:(id)sharedRecord merger:(id)merger
{
  recordCopy = record;
  mergerCopy = merger;
  sharedRecordCopy = sharedRecord;
  scopedIdentifier = [sharedRecordCopy scopedIdentifier];
  scopedIdentifier2 = [recordCopy scopedIdentifier];
  [sharedRecordCopy setScopedIdentifier:scopedIdentifier2];

  [sharedRecordCopy awakeFromStorage];
  [mergerCopy mergeRecord:sharedRecordCopy isSharedRecord:1 inPrivateRecord:recordCopy];

  if ([recordCopy supportsSharingScopedIdentifier])
  {
    [recordCopy setSharingRecordScopedIdentifier:scopedIdentifier];
  }
}

- (BOOL)_mergeFoundCKRecords:(id)records updateFoundCPLRecords:(id)lRecords remainingScopedIdentifiers:(id)identifiers fetchedScopedIdentifiers:(id)scopedIdentifiers userRecordID:(id)d targetMapping:(id)mapping postProcessRecord:(id)record error:(id *)self0
{
  recordsCopy = records;
  lRecordsCopy = lRecords;
  identifiersCopy = identifiers;
  scopedIdentifiersCopy = scopedIdentifiers;
  dCopy = d;
  mappingCopy = mapping;
  recordCopy = record;
  v19 = [CPLSharedRecordMerger alloc];
  controller = [(CPLCloudKitTransportTask *)self controller];
  propertyMapping = [controller propertyMapping];
  v150 = [v19 initWithMapping:propertyMapping];

  selfCopy = self;
  v23 = mappingCopy;
  v186 = 0u;
  v187 = 0u;
  v184 = 0u;
  v185 = 0u;
  v163 = identifiersCopy;
  obj = [identifiersCopy allObjects];
  v169 = [obj countByEnumeratingWithState:&v184 objects:v188 count:16];
  if (v169)
  {
    v162 = *v185;
    v175 = recordsCopy;
    v178 = selfCopy;
    v160 = mappingCopy;
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
        otherScopedIdentifier = [v26 otherScopedIdentifier];
        v28 = [recordsCopy objectForKeyedSubscript:v25];
        v29 = v28;
        if (v28)
        {
          v30 = v26;
          recordID = [v28 recordID];
          recordName = [recordID recordName];
          identifier = [v25 identifier];
          v34 = [recordName isEqualToString:identifier];

          if (v34)
          {
            v26 = v30;
            recordsCopy = v175;
          }

          else
          {
            v35 = [CPLScopedIdentifier alloc];
            recordID2 = [v29 recordID];
            recordName2 = [recordID2 recordName];
            v38 = [v35 initRelativeToScopedIdentifier:v25 identifier:recordName2];

            if (otherScopedIdentifier)
            {
              v39 = [CPLScopedIdentifier alloc];
              recordID3 = [v29 recordID];
              recordName3 = [recordID3 recordName];
              v42 = [v39 initRelativeToScopedIdentifier:otherScopedIdentifier identifier:recordName3];

              otherScopedIdentifier = v42;
            }

            v26 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v38 otherScopedIdentifier:otherScopedIdentifier targetState:{objc_msgSend(v30, "targetState")}];

            [v23 setTarget:v26 forRecordWithScopedIdentifier:v25];
            recordsCopy = v175;
          }
        }

        v43 = v178;
        if (otherScopedIdentifier)
        {
          v179[0] = _NSConcreteStackBlock;
          v179[1] = 3221225472;
          v179[2] = sub_100071740;
          v179[3] = &unk_100275710;
          v179[4] = v25;
          v180 = lRecordsCopy;
          v181 = v26;
          v44 = v23;
          v182 = v44;
          v183 = v163;
          v176 = objc_retainBlock(v179);
          v45 = [(CPLCloudKitTransportTask *)v178 _interpretedChangeFromCKRecord:v29 scopedIdentifier:v25 userRecordID:dCopy];
          if (!v45)
          {
LABEL_18:
            v170 = v26;
            v46 = [recordsCopy objectForKeyedSubscript:otherScopedIdentifier];
            v53 = otherScopedIdentifier;
            v54 = v53;
            if (v46)
            {
              recordID4 = [v46 recordID];
              recordName4 = [recordID4 recordName];
              identifier2 = [v53 identifier];
              v58 = [recordName4 isEqual:identifier2];

              recordsCopy = v175;
              v54 = v53;
              if ((v58 & 1) == 0)
              {
                v59 = [CPLScopedIdentifier alloc];
                recordID5 = [v46 recordID];
                recordName5 = [recordID5 recordName];
                v54 = [v59 initRelativeToScopedIdentifier:v53 identifier:recordName5];

                recordsCopy = v175;
              }
            }

            v62 = [(CPLCloudKitTransportTask *)v178 _interpretedSharedChangeFromCKRecord:v46 scopedIdentifier:v53 userRecordID:dCopy];
            if (v62)
            {
              v63 = [(CPLCloudKitTransportTask *)v178 _sharedRecordToPrivateRecord:v62 scopedIdentifier:v25];
              v64 = v176;
              (v176[2])(v176, v63, v54, 2);
            }

            else
            {
              v64 = v176;
              if ([scopedIdentifiersCopy containsObject:v53])
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
            v49 = recordsCopy;
            v50 = v26;
            scopeIdentifier = [otherScopedIdentifier scopeIdentifier];
            v52 = [v46 isSharedInScopeWithIdentifier:scopeIdentifier];

            if (v52)
            {
              v26 = v50;
              recordsCopy = v49;
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
              recordsCopy = v49;
              v29 = v48;
              v44 = v47;
              v43 = v178;
            }
          }

          if ([v46 isMasterChange])
          {
            v171 = v26;
            inExpunged = [v46 inExpunged];
            v70 = [recordsCopy objectForKeyedSubscript:otherScopedIdentifier];
            v71 = otherScopedIdentifier;
            v164 = v70;
            v72 = v71;
            if (inExpunged)
            {
              if (v70)
              {
                recordID6 = [v70 recordID];
                recordName6 = [recordID6 recordName];
                identifier3 = [v71 identifier];
                v155 = [recordName6 isEqual:identifier3];

                v72 = v71;
                if ((v155 & 1) == 0)
                {
                  v76 = [CPLScopedIdentifier alloc];
                  recordID7 = [v70 recordID];
                  recordName7 = [recordID7 recordName];
                  v72 = [v76 initRelativeToScopedIdentifier:v71 identifier:recordName7];
                }
              }

              v79 = [(CPLCloudKitTransportTask *)v178 _interpretedSharedChangeFromCKRecord:v70 scopedIdentifier:v71 userRecordID:dCopy];
              v80 = v79;
              if (!v79)
              {
                v23 = v160;
                if (([scopedIdentifiersCopy containsObject:v71] & 1) == 0)
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
              recordsCopy = v175;
              v64 = v176;
LABEL_98:

              goto LABEL_99;
            }

            if (v70)
            {
              recordID8 = [v70 recordID];
              recordName8 = [recordID8 recordName];
              [v71 identifier];
              v98 = v97 = v70;
              v99 = [recordName8 isEqual:v98];

              v70 = v97;
              v72 = v71;
              if ((v99 & 1) == 0)
              {
                v100 = [CPLScopedIdentifier alloc];
                recordID9 = [v97 recordID];
                recordName9 = [recordID9 recordName];
                v72 = [v100 initRelativeToScopedIdentifier:v71 identifier:recordName9];

                v70 = v97;
              }
            }

            v103 = [(CPLCloudKitTransportTask *)v178 _interpretedSharedChangeFromCKRecord:v70 scopedIdentifier:v71 userRecordID:dCopy];
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
              recordsCopy = v175;
              goto LABEL_98;
            }

            v23 = v160;
            if (([scopedIdentifiersCopy containsObject:v71] & 1) == 0)
            {
              goto LABEL_68;
            }

            goto LABEL_69;
          }

          if (([v46 supportsSharingScopedIdentifier] & 1) == 0)
          {
            v64 = v176;
            (v176[2])(v176, v46, otherScopedIdentifier, 1);
            goto LABEL_76;
          }

          if ([v46 inExpunged])
          {
            v172 = v26;
            v82 = [recordsCopy objectForKeyedSubscript:otherScopedIdentifier];
            v83 = otherScopedIdentifier;
            v84 = v83;
            v165 = v82;
            if (v82)
            {
              recordID10 = [v82 recordID];
              recordName10 = [recordID10 recordName];
              identifier4 = [v83 identifier];
              v88 = [recordName10 isEqual:identifier4];

              v82 = v165;
              v43 = v178;
              v84 = v83;
              if ((v88 & 1) == 0)
              {
                v89 = [CPLScopedIdentifier alloc];
                recordID11 = [v165 recordID];
                recordName11 = [recordID11 recordName];
                v84 = [v89 initRelativeToScopedIdentifier:v83 identifier:recordName11];

                v82 = v165;
                v43 = v178;
              }
            }

            v92 = [(CPLCloudKitTransportTask *)v43 _interpretedSharedChangeFromCKRecord:v82 scopedIdentifier:v83 userRecordID:dCopy];
            v93 = v92;
            if (!v92)
            {
              v129 = [scopedIdentifiersCopy containsObject:v83];
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

            recordsCopy = v175;
            v64 = v176;
LABEL_76:
            v23 = v160;
            goto LABEL_98;
          }

          sharingRecordScopedIdentifier = [v46 sharingRecordScopedIdentifier];
          if (sharingRecordScopedIdentifier)
          {
            v151 = v44;
            v107 = [recordsCopy objectForKeyedSubscript:sharingRecordScopedIdentifier];
            v156 = sharingRecordScopedIdentifier;
            v108 = sharingRecordScopedIdentifier;
            v109 = v107;
            v110 = v108;
            v111 = v108;
            if (v109)
            {
              recordID12 = [v109 recordID];
              [recordID12 recordName];
              v113 = v173 = v26;
              identifier5 = [v110 identifier];
              v166 = [v113 isEqual:identifier5];

              recordsCopy = v175;
              v26 = v173;

              v111 = v110;
              if ((v166 & 1) == 0)
              {
                v115 = [CPLScopedIdentifier alloc];
                recordID13 = [v109 recordID];
                recordName12 = [recordID13 recordName];
                v111 = [v115 initRelativeToScopedIdentifier:v110 identifier:recordName12];

                recordsCopy = v175;
                v26 = v173;
              }
            }

            v153 = v109;
            v154 = v111;
            v118 = [recordsCopy objectForKeyedSubscript:v110];
            v119 = [(CPLCloudKitTransportTask *)v178 _interpretedSharedChangeFromCKRecord:v118 scopedIdentifier:otherScopedIdentifier userRecordID:dCopy];

            if (!v119)
            {
              v152 = 0;
              if ([scopedIdentifiersCopy containsObject:v110])
              {
                v141 = [CPLScopedIdentifier alloc];
                scopeIdentifier2 = [v110 scopeIdentifier];
                [v25 identifier];
                v144 = v143 = v26;
                v145 = [v141 initWithScopeIdentifier:scopeIdentifier2 identifier:v144];
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
              scopeIdentifier3 = [v110 scopeIdentifier];
              [v25 identifier];
              v122 = v46;
              v123 = otherScopedIdentifier;
              v124 = v29;
              v125 = recordsCopy;
              v127 = v126 = v26;
              v128 = [v120 initWithScopeIdentifier:scopeIdentifier3 identifier:v127];
              v64 = v176;
              (v176[2])(v176, 0, v128, 1);

              v26 = v126;
              recordsCopy = v125;
              v29 = v124;
              otherScopedIdentifier = v123;
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
            sharingRecordScopedIdentifier = v156;
          }

          else
          {
            if ([v46 inExpunged])
            {
              v156 = 0;
              v174 = v26;
              v130 = [recordsCopy objectForKeyedSubscript:otherScopedIdentifier];
              v131 = otherScopedIdentifier;
              v132 = v131;
              if (v130)
              {
                recordID14 = [v130 recordID];
                recordName13 = [recordID14 recordName];
                identifier6 = [v131 identifier];
                v167 = [recordName13 isEqual:identifier6];

                v132 = v131;
                if ((v167 & 1) == 0)
                {
                  v136 = [CPLScopedIdentifier alloc];
                  recordID15 = [v130 recordID];
                  recordName14 = [recordID15 recordName];
                  v132 = [v136 initRelativeToScopedIdentifier:v131 identifier:recordName14];
                }
              }

              v168 = v130;
              recordsCopy = v175;
              v139 = [v175 objectForKeyedSubscript:v131];
              v140 = [(CPLCloudKitTransportTask *)v178 _interpretedSharedChangeFromCKRecord:v139 scopedIdentifier:v131 userRecordID:dCopy];

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
                recordsCopy = v175;
              }

              else
              {
                v64 = v176;
                if ([scopedIdentifiersCopy containsObject:v131])
                {
                  (v176[2])(v176, v46, v132, 1);
                }
              }

              v23 = v160;
              v26 = v174;
              goto LABEL_96;
            }

            v64 = v176;
            (v176[2])(v176, v46, otherScopedIdentifier, 1);
            v23 = v160;
          }

          goto LABEL_98;
        }

        v65 = [(CPLCloudKitTransportTask *)v178 _interpretedChangeFromCKRecord:v29 scopedIdentifier:v25 userRecordID:dCopy];
        v66 = v65;
        if (v65)
        {
          scopedIdentifier = [v65 scopedIdentifier];
          v68 = [scopedIdentifier isEqual:v25];

          if ((v68 & 1) == 0)
          {
            [v66 setScopedIdentifier:v25];
            [v66 awakeFromStorage];
          }

          recordCopy[2](recordCopy, v66, v29);
          [lRecordsCopy setObject:v66 forKeyedSubscript:v25];
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

- (void)_fetchRecordsForRemainingScopedIdentifiers:(id)identifiers alreadyFetchedScopedIdentifiers:(id)scopedIdentifiers userRecordID:(id)d foundCPLRecords:(id)records foundCKRecords:(id)kRecords targetMapping:(id)mapping postProcessRecord:(id)record completionHandler:(id)self0
{
  identifiersCopy = identifiers;
  scopedIdentifiersCopy = scopedIdentifiers;
  dCopy = d;
  recordsCopy = records;
  kRecordsCopy = kRecords;
  mappingCopy = mapping;
  recordCopy = record;
  handlerCopy = handler;
  if ([identifiersCopy count])
  {
    v68 = 0;
    v23 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v68];
    v24 = v68;
    v25 = v24;
    if (v23)
    {
      v41 = v24;
      v42 = recordCopy;
      v43 = kRecordsCopy;
      v44 = recordsCopy;
      v45 = dCopy;
      v26 = objc_alloc_init(NSMutableArray);
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_100071CA4;
      v64[3] = &unk_100275738;
      v46 = scopedIdentifiersCopy;
      v27 = scopedIdentifiersCopy;
      v65 = v27;
      selfCopy = self;
      v40 = v26;
      v67 = v40;
      v28 = objc_retainBlock(v64);
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v47 = identifiersCopy;
      v29 = identifiersCopy;
      v30 = [v29 countByEnumeratingWithState:&v60 objects:v69 count:16];
      selfCopy2 = self;
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
            v36 = [mappingCopy targetForRecordWithScopedIdentifier:{v35, v40}];
            if (!v36)
            {
              sub_1001A4778(a2, selfCopy2, v35);
            }

            v37 = v36;
            if ([v27 containsObject:v35])
            {
              otherScopedIdentifier = [v37 otherScopedIdentifier];
              if (otherScopedIdentifier)
              {
                (v28[2])(v28, otherScopedIdentifier);
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
        v52 = selfCopy2;
        v39 = selfCopy2;
        kRecordsCopy = v43;
        recordsCopy = v44;
        v53 = v44;
        v54 = v29;
        v55 = v27;
        dCopy = v45;
        v56 = v45;
        v57 = mappingCopy;
        recordCopy = v42;
        v58 = v42;
        v59 = handlerCopy;
        [(CPLCloudKitTransportTask *)v39 _fetchRecordWithScopedIdentifiers:v40 followRemapping:1 completionHandler:v50];
      }

      else
      {
        recordsCopy = v44;
        (*(handlerCopy + 2))(handlerCopy, v44, 0);
        dCopy = v45;
        recordCopy = v42;
        kRecordsCopy = v43;
      }

      v25 = v41;

      scopedIdentifiersCopy = v46;
      identifiersCopy = v47;
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0, v24);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, recordsCopy, 0);
  }
}

- (void)fetchFullRecordsForScopedIdentifiers:(id)identifiers targetMapping:(id)mapping postProcessRecord:(id)record completionHandler:(id)handler
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100071F8C;
  v14[3] = &unk_1002757C8;
  identifiersCopy = identifiers;
  selfCopy = self;
  mappingCopy = mapping;
  recordCopy = record;
  handlerCopy = handler;
  v10 = handlerCopy;
  v11 = recordCopy;
  v12 = mappingCopy;
  v13 = identifiersCopy;
  [(CPLCloudKitTransportTask *)self getUserRecordIDFetchIfNecessaryWithCompletionHandler:v14];
}

- (void)fetchUnknownTargetsInMapping:(id)mapping completionHandler:(id)handler
{
  mappingCopy = mapping;
  handlerCopy = handler;
  if ([mappingCopy hasUnknownTargets])
  {
    transportScopeMapping = [(CPLCloudKitTransportTask *)self transportScopeMapping];
    hasStagingScopes = [transportScopeMapping hasStagingScopes];

    if (hasStagingScopes)
    {
      [mappingCopy allTargetScopedIdentifiers];
    }

    else
    {
      [mappingCopy unknownTargetScopedIdentifiers];
    }
    v10 = ;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001A4434;
    v11[3] = &unk_1002757F0;
    v14 = [v10 count];
    v15 = hasStagingScopes;
    v12 = mappingCopy;
    v13 = handlerCopy;
    [(CPLCloudKitTransportTask *)self fetchFullRecordsForScopedIdentifiers:v10 targetMapping:v12 completionHandler:v11];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)fetchPlaceholderRecordsForScopedIdentifiers:(id)identifiers targetMapping:(id)mapping completionHandler:(id)handler
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000722C8;
  v12[3] = &unk_100275868;
  identifiersCopy = identifiers;
  mappingCopy = mapping;
  handlerCopy = handler;
  v17 = a2;
  selfCopy = self;
  v9 = mappingCopy;
  v10 = handlerCopy;
  v11 = identifiersCopy;
  [(CPLCloudKitTransportTask *)self fetchUnknownTargetsInMapping:v9 completionHandler:v12];
}

- (void)_fetchZoneForZoneID:(id)d operationType:(int64_t)type completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v21 = 0;
  v10 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v21];
  v11 = v21;
  if (v10)
  {
    v12 = [CKFetchRecordZonesOperation alloc];
    v22 = dCopy;
    v13 = [NSArray arrayWithObjects:&v22 count:1];
    v14 = [v12 initWithRecordZoneIDs:v13];

    operationID = [v14 operationID];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100072884;
    v17[3] = &unk_100273E20;
    v17[4] = self;
    v18 = dCopy;
    v19 = operationID;
    v20 = handlerCopy;
    v16 = operationID;
    [v14 setFetchRecordZonesCompletionBlock:v17];
    [(CPLCloudKitTransportTask *)self launchOperation:v14 type:type withContext:0];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v11);
  }
}

- (void)fetchZoneForScope:(id)scope completionHandler:(id)handler
{
  scopeCopy = scope;
  handlerCopy = handler;
  zoneID = [scopeCopy zoneID];
  if (zoneID)
  {
    v9 = CPLCloudKitOperationTypeForScope(scopeCopy);
    zoneID2 = [scopeCopy zoneID];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100072CD8;
    v12[3] = &unk_1002758B8;
    v13 = zoneID;
    selfCopy = self;
    v16 = v9;
    v15 = handlerCopy;
    [(CPLCloudKitTransportTask *)self _fetchZoneForZoneID:zoneID2 operationType:v9 completionHandler:v12];
  }

  else
  {
    scopeCopy = [CPLErrors cplErrorWithCode:32 description:@"No zone for %@", scopeCopy];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, scopeCopy);
  }
}

- (void)_fetchRecordsFollowRemappingWithIDs:(id)ds alreadyFetchRecordIDs:(id)iDs remappedRecordIDs:(id)recordIDs realRecords:(id)records type:(int64_t)type storeRequestUUIDsIn:(id)in completionHandler:(id)handler
{
  dsCopy = ds;
  iDsCopy = iDs;
  recordIDsCopy = recordIDs;
  recordsCopy = records;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100072FA0;
  v25[3] = &unk_100275908;
  inCopy = in;
  v27 = iDsCopy;
  v28 = dsCopy;
  v29 = recordIDsCopy;
  v30 = recordsCopy;
  selfCopy = self;
  handlerCopy = handler;
  typeCopy = type;
  v19 = recordsCopy;
  v20 = recordIDsCopy;
  v21 = dsCopy;
  v22 = iDsCopy;
  v23 = handlerCopy;
  v24 = inCopy;
  [(CPLCloudKitTransportTask *)self fetchRecordsWithIDs:v21 fetchResources:0 wantsAllRecords:0 type:type completionHandler:v25];
}

- (id)_recordWithRecordID:(id)d usingRealRecords:(id)records remappedRecordIDs:(id)ds wantsAllRecords:(BOOL)allRecords
{
  allRecordsCopy = allRecords;
  dCopy = d;
  recordsCopy = records;
  dsCopy = ds;
  v12 = [recordsCopy objectForKeyedSubscript:dCopy];
  if (v12)
  {
    v13 = v12;
    goto LABEL_32;
  }

  v14 = dCopy;
  v15 = [dsCopy objectForKeyedSubscript:v14];
  v16 = 0;
  if (v15)
  {
    dCopy = v14;
    while (1)
    {
      v17 = v15;
      v18 = [recordsCopy objectForKeyedSubscript:v15];
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

      [v16 addObject:dCopy];
      if ([v16 containsObject:v17])
      {
        break;
      }

      v15 = [dsCopy objectForKeyedSubscript:v17];
      dCopy = v17;
      if (!v15)
      {
        if (allRecordsCopy)
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
      allObjects = [v16 allObjects];
      v24 = [allObjects componentsJoinedByString:{@", "}];
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
  if (!allRecordsCopy)
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
    dCopy = v17;
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
  dCopy = v17;
  v17 = 0;
LABEL_29:

LABEL_31:
LABEL_32:

  return v13;
}

- (void)fetchRecordsFollowRemappingWithIDs:(id)ds wantsAllRecords:(BOOL)records type:(int64_t)type completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v12 = [dsCopy count];
  v13 = objc_alloc_init(NSMutableArray);
  v14 = [[NSMutableSet alloc] initWithCapacity:v12];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000737A0;
  v20[3] = &unk_100275930;
  v21 = v13;
  v22 = objc_alloc_init(NSMutableDictionary);
  recordsCopy = records;
  v23 = dsCopy;
  v24 = [[NSMutableDictionary alloc] initWithCapacity:v12];
  selfCopy = self;
  v26 = handlerCopy;
  v15 = v24;
  v16 = dsCopy;
  v17 = v22;
  v18 = v13;
  v19 = handlerCopy;
  [(CPLCloudKitTransportTask *)self _fetchRecordsFollowRemappingWithIDs:v16 alreadyFetchRecordIDs:v14 remappedRecordIDs:v17 realRecords:v15 type:type storeRequestUUIDsIn:v18 completionHandler:v20];
}

- (void)_createSparsePrivateRecordsIfNecessary:(id)necessary recordClass:(Class)class userRecordID:(id)d completionHandler:(id)handler
{
  necessaryCopy = necessary;
  dCopy = d;
  handlerCopy = handler;
  propertyMapping = [necessaryCopy propertyMapping];
  v14 = [propertyMapping doesRecordClassSupportSparseRecords:class];

  if ((v14 & 1) == 0)
  {
    sub_1001A8D0C(a2, self, class);
  }

  v15 = CKRecordTypeForCPLRecordChangeClass(class);
  sharedRecordIDsToMissingPrivateRecordIDs = [necessaryCopy sharedRecordIDsToMissingPrivateRecordIDs];
  if ([sharedRecordIDsToMissingPrivateRecordIDs count])
  {
    sharedZoneIdentification = [necessaryCopy sharedZoneIdentification];
    if (!sharedZoneIdentification)
    {
      sub_1001A8DE8(a2, self);
    }

    v18 = sharedZoneIdentification;
    [sharedRecordIDsToMissingPrivateRecordIDs allKeys];
    v19 = v15;
    selfCopy = self;
    v21 = v27 = dCopy;
    sharedZoneIdentification2 = [necessaryCopy sharedZoneIdentification];
    operationType = [sharedZoneIdentification2 operationType];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100085754;
    v28[3] = &unk_100276048;
    v35 = handlerCopy;
    v29 = sharedRecordIDsToMissingPrivateRecordIDs;
    v30 = v19;
    v31 = selfCopy;
    v36 = a2;
    classCopy = class;
    v32 = v18;
    v33 = necessaryCopy;
    v34 = v27;
    v24 = v18;
    v25 = selfCopy;
    v15 = v19;
    [(CPLCloudKitTransportTask *)v25 fetchRecordsWithIDs:v21 fetchResources:0 wantsAllRecords:0 type:operationType completionHandler:v28];

    dCopy = v27;
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, &__NSDictionary0__struct, 0);
  }
}

- (id)_errorForUpdateError:(id)error scopeProvider:(id)provider
{
  errorCopy = error;
  providerCopy = provider;
  v8 = errorCopy;
  if (v8)
  {
    v9 = [CPLCloudKitErrors realErrorForError:v8];

    domain = [v9 domain];
    v11 = [domain isEqualToString:CKErrorDomain];

    if (v11 && ([v9 code] == 26 || objc_msgSend(v9, "code") == 28))
    {
      v12 = 0;
LABEL_8:

      goto LABEL_10;
    }

    if (v9)
    {
      lastOperationRequestUUIDs = [(CPLCloudKitTransportTask *)self lastOperationRequestUUIDs];
      v12 = [CPLCloudKitErrors CPLErrorForCloudKitError:v9 scopeProvider:providerCopy withRequestUUIDs:lastOperationRequestUUIDs description:@"Failed to update records"];

      v9 = lastOperationRequestUUIDs;
      goto LABEL_8;
    }
  }

  v12 = 0;
LABEL_10:

  return v12;
}

- (void)updatePrivatePropertiesOnAssetsWithScopedIdentifiers:(id)identifiers desiredKeys:(id)keys destinationZoneIdentification:(id)identification sharedZoneIdentification:(id)zoneIdentification targetMapping:(id)mapping knownRecords:(id)records shouldUpdateRecord:(id)record updateBlock:(id)self0 completionHandler:(id)self1
{
  identifiersCopy = identifiers;
  keysCopy = keys;
  identificationCopy = identification;
  zoneIdentificationCopy = zoneIdentification;
  mappingCopy = mapping;
  recordsCopy = records;
  recordCopy = record;
  blockCopy = block;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100085EA0;
  v34[3] = &unk_100276110;
  v34[4] = self;
  v35 = identifiersCopy;
  v36 = identificationCopy;
  v37 = zoneIdentificationCopy;
  v38 = mappingCopy;
  v39 = recordsCopy;
  v40 = keysCopy;
  handlerCopy = handler;
  v42 = recordCopy;
  v43 = blockCopy;
  v23 = blockCopy;
  v24 = recordCopy;
  v25 = keysCopy;
  v26 = recordsCopy;
  v27 = mappingCopy;
  v28 = zoneIdentificationCopy;
  v29 = identificationCopy;
  v30 = identifiersCopy;
  v31 = handlerCopy;
  [(CPLCloudKitTransportTask *)self getUserRecordIDFetchIfNecessaryWithCompletionHandler:v34];
}

- (void)updateRecords:(id)records cloudKitScope:(id)scope completionHandler:(id)handler
{
  recordsCopy = records;
  scopeCopy = scope;
  handlerCopy = handler;
  if ([recordsCopy count])
  {
    selfCopy = self;
    v11 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(recordsCopy, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = recordsCopy;
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
          recordID = [v17 recordID];
          [v11 setObject:v17 forKeyedSubscript:recordID];
        }

        v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v14);
    }

    allKeys = [v11 allKeys];
    v20 = CPLCloudKitOperationTypeForScope(scopeCopy);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100086C64;
    v23[3] = &unk_100276138;
    v24 = v12;
    v28 = handlerCopy;
    v25 = v11;
    v26 = selfCopy;
    v27 = scopeCopy;
    v21 = v11;
    [(CPLCloudKitTransportTask *)selfCopy fetchRecordsWithIDs:allKeys fetchResources:0 desiredKeys:&__NSArray0__struct wantsAllRecords:0 type:v20 completionHandler:v23];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)uploadRecords:(id)records cloudKitScope:(id)scope scopeProvider:(id)provider completionHandler:(id)handler
{
  recordsCopy = records;
  scopeCopy = scope;
  providerCopy = provider;
  handlerCopy = handler;
  v24 = 0;
  v14 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v24];
  v15 = v24;
  if (v14)
  {
    if ([recordsCopy count])
    {
      v16 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:recordsCopy recordIDsToDelete:&__NSArray0__struct];
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_100086F68;
      v20 = &unk_100276160;
      selfCopy = self;
      v23 = handlerCopy;
      v22 = providerCopy;
      [v16 setModifyRecordsCompletionBlock:&v17];
      [v16 setSavePolicy:{1, v17, v18, v19, v20, selfCopy}];
      [(CPLCloudKitTransportTask *)self launchOperation:v16 type:CPLCloudKitOperationTypeForScope(scopeCopy) withContext:0];
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, v15);
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
      selfCopy = self;
      sub_10005FE5C(&_mh_execute_header, v5, v6, "Cancelling %@", &v12);
    }
  }

  sub_1000033D8();
  v8 = 3221225472;
  v9 = sub_10005B878;
  v10 = &unk_100271F40;
  selfCopy2 = self;
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
      selfCopy = self;
      sub_10005FE5C(&_mh_execute_header, v5, v6, "Cancelling %@ it not blocked", &v12);
    }
  }

  sub_1000033D8();
  v8 = 3221225472;
  v9 = sub_10019F22C;
  v10 = &unk_100271F40;
  selfCopy2 = self;
  [(CPLCloudKitTransportTask *)self dispatchAsync:v7];
}

- (void)launchOperation:(id)operation type:(int64_t)type withContext:(id)context sourceBundleIdentifiers:(id)identifiers
{
  operationCopy = operation;
  contextCopy = context;
  identifiersCopy = identifiers;
  if (byte_1002C5240 == 1 && (_CPLSilentLogging & 1) == 0)
  {
    v14 = sub_100003810();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      cplOperationClassDescription = [operationCopy cplOperationClassDescription];
      v16 = cplOperationClassDescription;
      if ((type - 1) > 3)
      {
        v17 = @"Container";
      }

      else
      {
        v17 = off_100274FE8[type - 1];
      }

      *buf = 138543618;
      *&buf[4] = cplOperationClassDescription;
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
        cplOperationClassDescription2 = [operationCopy cplOperationClassDescription];
        *buf = 138412546;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = cplOperationClassDescription2;
        _os_log_impl(&_mh_execute_header, contextCopy, OS_LOG_TYPE_ERROR, "%@ tried to launch %@ while it's already finished", buf, 0x16u);
      }
    }

    v36 = +[NSAssertionHandler currentHandler];
    v37 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitTransportTask.m"];
    cplOperationClassDescription3 = [operationCopy cplOperationClassDescription];
    [v36 handleFailureInMethod:a2 object:self file:v37 lineNumber:671 description:{@"%@ tried to launch %@ while it's already finished", self, cplOperationClassDescription3}];

    abort();
  }

  [(CPLCloudKitTransportTask *)self setupConfigurationForOperation:operationCopy];
  if (![(NSMutableArray *)self->_currentOperations count])
  {
    v18 = objc_alloc_init(NSMutableArray);
    lastOperationRequestUUIDs = self->_lastOperationRequestUUIDs;
    self->_lastOperationRequestUUIDs = v18;
  }

  [(NSMutableArray *)self->_currentOperations addObject:operationCopy];
  [operationCopy requestCompletedBlock];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10005C154;
  v47[3] = &unk_100274C70;
  v20 = v47[4] = self;
  v48 = v20;
  [operationCopy setRequestCompletedBlock:v47];
  if ([(CPLCloudKitTaskController *)self->_controller isForeground]&& [(CPLCloudKitTransportTask *)self isBoostable]&& [(CPLCloudKitTaskController *)self->_controller canBoostOperations])
  {
    configuration = [operationCopy configuration];
    if ([configuration cplDiscretionary])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v22 = sub_100003810();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          cplOperationClassDescription4 = [operationCopy cplOperationClassDescription];
          *buf = 138412290;
          *&buf[4] = cplOperationClassDescription4;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Automatically boosting (background) %@ to non discretionary and requiring non-cellular", buf, 0xCu);
        }
      }

      [configuration setCPLDiscretionary:0];
      [configuration setAllowsCellularAccess:0];
    }
  }

  operationTracker = [(CPLCloudKitTaskController *)self->_controller operationTracker];
  [operationTracker operationWillStart:operationCopy forTask:self withContext:contextCopy bundleIdentifiers:identifiersCopy];

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

          [*(*(&v43 + 1) + 8 * i) associateWithOperation:operationCopy];
        }

        v26 = [(NSMutableSet *)v25 countByEnumeratingWithState:&v43 objects:v53 count:16];
      }

      while (v26);
    }

    v29 = [(NSMutableSet *)self->_associatedMetrics copy];
    completionBlock = [operationCopy completionBlock];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v50 = sub_100004440;
    v51 = sub_100005304;
    v31 = operationCopy;
    v52 = v31;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10005C300;
    v39[3] = &unk_100274748;
    v39[4] = self;
    v32 = v29;
    v40 = v32;
    v42 = buf;
    v33 = completionBlock;
    v41 = v33;
    [v31 setCompletionBlock:v39];

    _Block_object_dispose(buf, 8);
  }

  [(CPLCloudKitTaskController *)self->_controller launchOperation:operationCopy type:type];
  if (self->_cancelled || self->_acquireError)
  {
    [operationCopy cancel];
  }

  else
  {
    [(CPLBackgroundActivity *)self->_activity attachToCKOperation:operationCopy];
  }
}

- (OS_dispatch_queue)synchronousWorkQueue
{
  sub_10019F8E0(self);
  synchronousWorkQueue = self->_synchronousWorkQueue;

  return synchronousWorkQueue;
}

- (void)dispatchSynchronousWork:(id)work
{
  workCopy = work;
  sub_10019F8E0(self);
  v5 = [(CPLCloudKitTransportTask *)self blockWithAdaptedQOS:workCopy];

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

- (void)executeSynchronousWork:(id)work onItems:(id)items description:(id)description completionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  descriptionCopy = description;
  itemsCopy = items;
  workCopy = work;
  dispatch_assert_queue_V2(queue);
  sub_10019F8E0(self);
  v15 = [itemsCopy count];
  v16 = [NSProgress progressWithTotalUnitCount:v15];
  [(CPLCloudKitTransportTask *)self dispatchCallbackOperation:descriptionCopy progress:v16];
  objectEnumerator = [itemsCopy objectEnumerator];

  sub_100021D24();
  v20[1] = 3221225472;
  v20[2] = sub_10005D390;
  v20[3] = &unk_100274DB0;
  v20[4] = self;
  v21 = v16;
  v22 = handlerCopy;
  v23 = v15;
  v18 = handlerCopy;
  v19 = v16;
  sub_10019FA98(self, workCopy, objectEnumerator, descriptionCopy, v19, v20);
}

- (void)setupConfigurationForOperation:(id)operation
{
  operationCopy = operation;
  baseConfigurationForTask = [(CPLCloudKitTransportTask *)self baseConfigurationForTask];
  operationGroup = [(CPLCloudKitTransportTask *)self operationGroup];
  [operationCopy setGroup:operationGroup];
  [operationCopy setConfiguration:baseConfigurationForTask];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_100003810();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      defaultConfiguration = [operationGroup defaultConfiguration];
      v9 = sub_10005E674(self, defaultConfiguration);
      v10 = sub_10005E674(self, baseConfigurationForTask);
      v11 = 138413314;
      selfCopy = self;
      v13 = 2112;
      v14 = operationCopy;
      v15 = 2112;
      v16 = operationGroup;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Setting up task %@ (CKOperation %@) with group %@ (%@) and configuration %@", &v11, 0x34u);
    }
  }
}

@end