@interface CPLCloudKitUploadBatchTask
+ (NSArray)simulateOverQuotaPhases;
- (CPLCloudKitUploadBatchTask)initWithController:(id)controller scope:(id)scope targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping progressHandler:(id)handler completionHandler:(id)completionHandler;
- (void)_executeSharePlanFromPlanner:(id)planner completionHandler:(id)handler;
- (void)_executeUnsharePlanFromPlanner:(id)planner completionHandler:(id)handler;
- (void)_fetchPrivateRecordsFromPlanner:(id)planner completionHandler:(id)handler;
- (void)_fetchRequestedRecordsFromPlanner:(id)planner completionHandler:(id)handler;
- (void)_fetchSharedRecordsFromPlanner:(id)planner completionHandler:(id)handler;
- (void)_runModernOperationsWithCurrentUserID:(id)d;
- (void)_uploadBatchFromPlanner:(id)planner completionHandler:(id)handler;
- (void)_uploadRecords:(id)records deleteRecordIDs:(id)ds identification:(id)identification fromPlanner:(id)planner uploadContext:(id)context updateProgress:(id)progress completionHandler:(id)handler;
- (void)_uploadSharedBatchFromPlanner:(id)planner completionHandler:(id)handler;
- (void)runOperations;
@end

@implementation CPLCloudKitUploadBatchTask

+ (NSArray)simulateOverQuotaPhases
{
  v4[0] = @"none";
  v4[1] = @"upload";
  v4[2] = @"sharedUpload";
  v4[3] = @"share";
  v4[4] = @"unshare";
  v2 = [NSArray arrayWithObjects:v4 count:5];

  return v2;
}

- (CPLCloudKitUploadBatchTask)initWithController:(id)controller scope:(id)scope targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping progressHandler:(id)handler completionHandler:(id)completionHandler
{
  controllerCopy = controller;
  scopeCopy = scope;
  mappingCopy = mapping;
  scopeMappingCopy = scopeMapping;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v72.receiver = self;
  v72.super_class = CPLCloudKitUploadBatchTask;
  v54 = controllerCopy;
  v15 = [(CPLCloudKitTransportTask *)&v72 initWithController:controllerCopy];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_55;
  }

  objc_storeStrong(&v15->_scope, scope);
  objc_storeStrong(&v16->_targetMapping, mapping);
  if (qword_1002C55A8 != -1)
  {
    sub_1001AA394();
  }

  if (byte_1002C55A0 == 1)
  {
    v52 = +[NSUserDefaults standardUserDefaults];
    v53 = [v52 arrayForKey:@"CPLForceRejectClasses"];
    if (v53)
    {
      v17 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v53, "count")}];
      autoRejectClasses = v16->_autoRejectClasses;
      v16->_autoRejectClasses = v17;

      v70 = 0u;
      v71 = 0u;
      v69 = 0u;
      v68 = 0u;
      v19 = v53;
      v20 = [v19 countByEnumeratingWithState:&v68 objects:v74 count:16];
      if (v20)
      {
        v21 = *v69;
LABEL_8:
        v22 = 0;
        while (1)
        {
          if (*v69 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v68 + 1) + 8 * v22);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = NSClassFromString(v23);
            if (v24)
            {
              [(NSMutableSet *)v16->_autoRejectClasses addObject:v24];
            }

            else
            {
              v27 = [CPLErrors incorrectParametersErrorForParameter:v23];
              autoError = v16->_autoError;
              v16->_autoError = v27;
            }
          }

          else
          {
            v25 = [CPLErrors incorrectParametersErrorForParameter:@"CPLForceRejectClasses"];
            v26 = v16->_autoError;
            v16->_autoError = v25;
          }

          if (v16->_autoError)
          {
            break;
          }

          if (v20 == ++v22)
          {
            v20 = [v19 countByEnumeratingWithState:&v68 objects:v74 count:16];
            if (v20)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }
    }

    if (!v16->_autoError)
    {
      v51 = [v52 arrayForKey:@"CPLForceRejectIdentifiers"];
      if (v51)
      {
        v29 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v51, "count")}];
        autoRejectRecordIdentifiers = v16->_autoRejectRecordIdentifiers;
        v16->_autoRejectRecordIdentifiers = v29;

        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v31 = v51;
        v32 = [v31 countByEnumeratingWithState:&v64 objects:v73 count:16];
        if (v32)
        {
          v33 = *v65;
LABEL_24:
          v34 = 0;
          while (1)
          {
            if (*v65 != v33)
            {
              objc_enumerationMutation(v31);
            }

            v35 = *(*(&v64 + 1) + 8 * v34);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(NSMutableSet *)v16->_autoRejectRecordIdentifiers addObject:v35];
            }

            else
            {
              v36 = [CPLErrors incorrectParametersErrorForParameter:@"CPLForceRejectIdentifiers"];
              v37 = v16->_autoError;
              v16->_autoError = v36;
            }

            if (v16->_autoError)
            {
              break;
            }

            if (v32 == ++v34)
            {
              v32 = [v31 countByEnumeratingWithState:&v64 objects:v73 count:16];
              if (v32)
              {
                goto LABEL_24;
              }

              break;
            }
          }
        }
      }
    }
  }

  if (byte_1002C55A1 == 1)
  {
    v38 = +[NSUserDefaults standardUserDefaults];
    v39 = [v38 objectForKey:@"CPLSimulateOverQuotaPhase"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      lowercaseString = [v39 lowercaseString];

      if ([lowercaseString isEqualToString:@"none"])
      {
        v41 = 0;
LABEL_49:
        v16->_simulateOverQuotaPhase = v41;
        goto LABEL_50;
      }

      if ([lowercaseString isEqualToString:@"upload"])
      {
        v41 = 1;
        goto LABEL_49;
      }

      if ([lowercaseString isEqualToString:@"sharedupload"])
      {
        v41 = 2;
        goto LABEL_49;
      }

      if ([lowercaseString isEqualToString:@"share"])
      {
        v41 = 3;
        goto LABEL_49;
      }

      if ([lowercaseString isEqualToString:@"unshare"])
      {
        v41 = 4;
        goto LABEL_49;
      }
    }

    else
    {
      lowercaseString = v39;
    }

LABEL_50:
  }

  v42 = [handlerCopy copy];
  progressHandler = v16->_progressHandler;
  v16->_progressHandler = v42;

  v44 = +[NSUserDefaults standardUserDefaults];
  v45 = [v44 BOOLForKey:@"CPLRejectOnUploadError"];

  if (v45)
  {
    objc_initWeak(&location, v16);
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_1000911A8;
    v60[3] = &unk_1002740B0;
    objc_copyWeak(&v62, &location);
    v61 = completionHandlerCopy;
    v46 = [v60 copy];
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v46;

    objc_destroyWeak(&v62);
    objc_destroyWeak(&location);
  }

  else
  {
    v48 = [completionHandlerCopy copy];
    v49 = v16->_completionHandler;
    v16->_completionHandler = v48;
  }

  [(CPLCloudKitTransportTask *)v16 setIsUpload:1];
  [(CPLCloudKitTransportTask *)v16 setTransportScopeMapping:scopeMappingCopy];
LABEL_55:

  return v16;
}

- (void)runOperations
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000914F4;
  v2[3] = &unk_100274018;
  v2[4] = self;
  [(CPLCloudKitTransportTask *)self getUserRecordIDFetchIfNecessaryWithCompletionHandler:v2];
}

- (void)_runModernOperationsWithCurrentUserID:(id)d
{
  dCopy = d;
  v96 = 0;
  selfCopy = self;
  LOBYTE(self) = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v96];
  v74 = v96;
  if ((self & 1) == 0 || selfCopy->_autoError)
  {
    (*(selfCopy->_completionHandler + 2))();
    goto LABEL_4;
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"CPLRejectAllUploads"];

  if (v5)
  {
    v6 = [[NSMutableDictionary alloc] initWithCapacity:{-[CPLChangeBatch count](selfCopy->_batch, "count")}];
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v7 = selfCopy->_batch;
    v8 = [(CPLChangeBatch *)v7 countByEnumeratingWithState:&v92 objects:v107 count:16];
    if (v8)
    {
      v9 = *v93;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v93 != v9)
          {
            objc_enumerationMutation(v7);
          }

          scopedIdentifier = [*(*(&v92 + 1) + 8 * i) scopedIdentifier];
          [v6 setObject:@"record is rejected for testing purpose" forKeyedSubscript:scopedIdentifier];
        }

        v8 = [(CPLChangeBatch *)v7 countByEnumeratingWithState:&v92 objects:v107 count:16];
      }

      while (v8);
    }

    v105 = CPLErrorRejectedRecordIdentifiersAndReasonsKey;
    v106 = v6;
    v12 = [NSDictionary dictionaryWithObjects:&v106 forKeys:&v105 count:1];
    v13 = [CPLErrors cplErrorWithCode:18 underlyingError:0 userInfo:v12 description:@"Some records are rejected for testing purpose"];

    (*(selfCopy->_completionHandler + 2))();
    goto LABEL_4;
  }

  v14 = +[NSUserDefaults standardUserDefaults];
  v15 = [v14 integerForKey:@"CPLSimulateBusyState"];

  if (v15)
  {
    v103 = CPLErrorScopeBusyKey;
    v16 = [NSNumber numberWithInteger:v15];
    v104 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v104 forKeys:&v103 count:1];
    v18 = [CPLScopeChange descriptionForBusyState:v15];
    v19 = [CPLErrors cplErrorWithCode:35 underlyingError:0 userInfo:v17 description:@"Simulating busy state (%@)", v18];

    (*(selfCopy->_completionHandler + 2))();
    goto LABEL_4;
  }

  scopeIdentifier = [(CPLEngineScope *)selfCopy->_scope scopeIdentifier];
  v73 = [(CPLCloudKitTransportTask *)selfCopy cloudKitScopeForScopeIdentifier:scopeIdentifier];

  zoneID = [v73 zoneID];
  LODWORD(scopeIdentifier) = zoneID == 0;

  if (scopeIdentifier)
  {
    completionHandler = selfCopy->_completionHandler;
    v72 = [CPLErrors cplErrorWithCode:80 description:@"Missing required zone"];
    completionHandler[2](completionHandler, v72);
    goto LABEL_67;
  }

  v22 = selfCopy;
  sharedScope = selfCopy->_sharedScope;
  if (sharedScope)
  {
    scopeIdentifier2 = [(CPLEngineScope *)sharedScope scopeIdentifier];
    v72 = [(CPLCloudKitTransportTask *)selfCopy cloudKitScopeForScopeIdentifier:scopeIdentifier2];

    zoneID2 = [v72 zoneID];
    LODWORD(scopeIdentifier2) = zoneID2 == 0;

    if (scopeIdentifier2)
    {
      v64 = selfCopy->_completionHandler;
      v65 = [CPLErrors cplErrorWithCode:80 description:@"Missing required shared zone"];
      v64[2](v64, v65);

      goto LABEL_67;
    }

    v22 = selfCopy;
  }

  else
  {
    v72 = 0;
  }

  if (!v22->_autoRejectRecordIdentifiers && !v22->_autoRejectClasses)
  {
    goto LABEL_43;
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v27 = v22->_batch;
  v28 = [(CPLChangeBatch *)v27 countByEnumeratingWithState:&v88 objects:v102 count:16];
  if (!v28)
  {

    v22 = selfCopy;
    goto LABEL_43;
  }

  v29 = 0;
  v30 = *v89;
  do
  {
    for (j = 0; j != v28; j = j + 1)
    {
      if (*v89 != v30)
      {
        objc_enumerationMutation(v27);
      }

      v32 = *(*(&v88 + 1) + 8 * j);
      if ([(NSMutableSet *)selfCopy->_autoRejectClasses containsObject:objc_opt_class()])
      {
        if (!v29)
        {
          v29 = objc_alloc_init(NSMutableDictionary);
        }

        scopedIdentifier2 = [v32 scopedIdentifier];
        [v29 setObject:@"record class is rejected for testing purpose" forKeyedSubscript:scopedIdentifier2];
      }

      else
      {
        autoRejectRecordIdentifiers = selfCopy->_autoRejectRecordIdentifiers;
        scopedIdentifier3 = [v32 scopedIdentifier];
        identifier = [scopedIdentifier3 identifier];
        LODWORD(autoRejectRecordIdentifiers) = [(NSMutableSet *)autoRejectRecordIdentifiers containsObject:identifier];

        if (!autoRejectRecordIdentifiers)
        {
          continue;
        }

        if (!v29)
        {
          v29 = objc_alloc_init(NSMutableDictionary);
        }

        scopedIdentifier2 = [v32 scopedIdentifier];
        [v29 setObject:@"record is rejected for testing purpose" forKeyedSubscript:scopedIdentifier2];
      }
    }

    v28 = [(CPLChangeBatch *)v27 countByEnumeratingWithState:&v88 objects:v102 count:16];
  }

  while (v28);

  v22 = selfCopy;
  if (v29)
  {
    v100 = CPLErrorRejectedRecordIdentifiersAndReasonsKey;
    v101 = v29;
    v37 = [NSDictionary dictionaryWithObjects:&v101 forKeys:&v100 count:1];
    v38 = [CPLErrors cplErrorWithCode:18 underlyingError:0 userInfo:v37 description:@"Some records are rejected for testing purpose"];

    (*(selfCopy->_completionHandler + 2))();
    goto LABEL_67;
  }

LABEL_43:
  controller = [(CPLCloudKitTransportTask *)v22 controller];
  v70 = [controller zoneIdentificationForCloudKitScope:v73 engineScope:selfCopy->_scope];

  if (v72 && selfCopy->_sharedScope)
  {
    controller2 = [(CPLCloudKitTransportTask *)selfCopy controller];
    v69 = [controller2 zoneIdentificationForCloudKitScope:v72 engineScope:selfCopy->_sharedScope];
  }

  else
  {
    v69 = 0;
  }

  v71 = objc_alloc_init(CPLCloudKitUploadMetric);
  v41 = [CPLCKBatchUploadPlanner alloc];
  controller3 = [(CPLCloudKitTransportTask *)selfCopy controller];
  propertyMapping = [controller3 propertyMapping];
  targetMapping = selfCopy->_targetMapping;
  fetchCache = [(CPLCloudKitTransportTask *)selfCopy fetchCache];
  cplEnabledDate = [(CPLCloudKitUploadBatchTask *)selfCopy cplEnabledDate];
  v76 = [(CPLCKBatchUploadPlanner *)v41 initWithScopeProvider:selfCopy destinationZoneIdentification:v70 sharedZoneIdentification:v69 propertyMapping:propertyMapping currentUserRecordID:dCopy targetMapping:targetMapping fetchCache:fetchCache cplEnabledDate:cplEnabledDate];

  [(CPLCKBatchUploadPlanner *)v76 setMetric:v71];
  [(CPLCKBatchUploadPlanner *)v76 setProgressHandler:selfCopy->_progressHandler];
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v47 = selfCopy->_batch;
  v48 = 0;
  v49 = [(CPLChangeBatch *)v47 countByEnumeratingWithState:&v84 objects:v99 count:16];
  if (v49)
  {
    v50 = *v85;
    do
    {
      for (k = 0; k != v49; k = k + 1)
      {
        if (*v85 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v84 + 1) + 8 * k);
        v53 = objc_autoreleasePoolPush();
        v83 = 0;
        v54 = [(CPLCKBatchUploadPlanner *)v76 planRecordChangeUpload:v52 error:&v83];
        v55 = v83;
        v56 = v55;
        if ((v54 & 1) == 0)
        {
          localizedDescription = [v55 localizedDescription];
          v58 = localizedDescription;
          v59 = localizedDescription ? localizedDescription : [[NSString alloc] initWithFormat:@"Failed to create CKRecord from %@", objc_opt_class()];
          v60 = v59;

          if (v60)
          {
            if (!v48)
            {
              v48 = objc_alloc_init(NSMutableDictionary);
            }

            scopedIdentifier4 = [v52 scopedIdentifier];
            [v48 setObject:v60 forKeyedSubscript:scopedIdentifier4];
          }
        }

        objc_autoreleasePoolPop(v53);
      }

      v49 = [(CPLChangeBatch *)v47 countByEnumeratingWithState:&v84 objects:v99 count:16];
    }

    while (v49);
  }

  if ([v48 count])
  {
    v97 = CPLErrorRejectedRecordIdentifiersAndReasonsKey;
    v98 = v48;
    v62 = [NSDictionary dictionaryWithObjects:&v98 forKeys:&v97 count:1];
    v63 = [CPLErrors cplErrorWithCode:18 underlyingError:0 userInfo:v62 description:@"Some records were rejected before upload"];

    (*(selfCopy->_completionHandler + 2))();
  }

  else
  {
    [(CPLCKBatchUploadPlanner *)v76 finalizePlan];
    v66 = objc_retainBlock(selfCopy->_completionHandler);
    [(CPLCloudKitTransportTask *)selfCopy associateMetric:v71];
    [(CPLCloudKitMetric *)v71 begin];
    v78[0] = _NSConcreteStackBlock;
    v78[1] = 3221225472;
    v78[2] = sub_100092160;
    v78[3] = &unk_100274798;
    v82 = v66;
    v67 = v76;
    v79 = v67;
    v80 = v71;
    v81 = selfCopy;
    v63 = v66;
    v68 = objc_retainBlock(v78);
    [(CPLCloudKitUploadBatchTask *)selfCopy _fetchRequestedRecordsFromPlanner:v67 completionHandler:v68];
  }

LABEL_67:
LABEL_4:
}

- (void)_fetchRequestedRecordsFromPlanner:(id)planner completionHandler:(id)handler
{
  plannerCopy = planner;
  handlerCopy = handler;
  recordRequestor = [plannerCopy recordRequestor];
  if ([recordRequestor needsRequestedRecords])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100092330;
    v9[3] = &unk_1002756E8;
    v11 = handlerCopy;
    v9[4] = self;
    v10 = plannerCopy;
    [recordRequestor fetchRequestedRecordsForTransportTask:self completionHandler:v9];
  }

  else
  {
    [(CPLCloudKitUploadBatchTask *)self _fetchSharedRecordsFromPlanner:plannerCopy completionHandler:handlerCopy];
  }
}

- (void)_fetchSharedRecordsFromPlanner:(id)planner completionHandler:(id)handler
{
  plannerCopy = planner;
  handlerCopy = handler;
  requestedSharedCKRecordIDs = [plannerCopy requestedSharedCKRecordIDs];
  if ([requestedSharedCKRecordIDs count])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = sub_100003A74();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = requestedSharedCKRecordIDs;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Will fetch %@ before upload", buf, 0xCu);
      }
    }

    sharedZoneIdentification = [plannerCopy sharedZoneIdentification];

    if (!sharedZoneIdentification)
    {
      sub_1001AA3D0(a2, self, requestedSharedCKRecordIDs);
    }

    sharedZoneIdentification2 = [plannerCopy sharedZoneIdentification];
    operationType = [sharedZoneIdentification2 operationType];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100092528;
    v14[3] = &unk_100276410;
    v17 = handlerCopy;
    v15 = plannerCopy;
    selfCopy = self;
    [(CPLCloudKitTransportTask *)self fetchRecordsFollowRemappingWithIDs:requestedSharedCKRecordIDs wantsAllRecords:1 type:operationType completionHandler:v14];
  }

  else
  {
    [(CPLCloudKitUploadBatchTask *)self _uploadBatchFromPlanner:plannerCopy completionHandler:handlerCopy];
  }
}

- (void)_fetchPrivateRecordsFromPlanner:(id)planner completionHandler:(id)handler
{
  plannerCopy = planner;
  handlerCopy = handler;
  requestedPrivateCKRecordIDs = [plannerCopy requestedPrivateCKRecordIDs];
  if ([requestedPrivateCKRecordIDs count])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = sub_100003A74();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = requestedPrivateCKRecordIDs;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Will fetch %@ before upload", buf, 0xCu);
      }
    }

    sharedZoneIdentification = [plannerCopy sharedZoneIdentification];

    if (!sharedZoneIdentification)
    {
      sub_1001AA4A4(a2, self, requestedPrivateCKRecordIDs);
    }

    destinationZoneIdentification = [plannerCopy destinationZoneIdentification];
    operationType = [destinationZoneIdentification operationType];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100092A1C;
    v14[3] = &unk_100276410;
    v17 = handlerCopy;
    v15 = plannerCopy;
    selfCopy = self;
    [(CPLCloudKitTransportTask *)self fetchRecordsFollowRemappingWithIDs:requestedPrivateCKRecordIDs wantsAllRecords:1 type:operationType completionHandler:v14];
  }

  else
  {
    [(CPLCloudKitUploadBatchTask *)self _uploadSharedBatchFromPlanner:plannerCopy completionHandler:handlerCopy];
  }
}

- (void)_uploadRecords:(id)records deleteRecordIDs:(id)ds identification:(id)identification fromPlanner:(id)planner uploadContext:(id)context updateProgress:(id)progress completionHandler:(id)handler
{
  recordsCopy = records;
  dsCopy = ds;
  identificationCopy = identification;
  plannerCopy = planner;
  contextCopy = context;
  progressCopy = progress;
  handlerCopy = handler;
  v54[0] = 0;
  LOBYTE(progress) = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:v54];
  v22 = v54[0];
  if (progress)
  {
    if ([recordsCopy count] || objc_msgSend(dsCopy, "count"))
    {
      v37 = identificationCopy;
      v23 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:recordsCopy recordIDsToDelete:dsCopy];
      [v23 setSavePolicy:0];
      [(CPLCloudKitTransportTask *)self fetchCache];
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_1001A9F34;
      v50[3] = &unk_100276438;
      v50[4] = self;
      v35 = a2;
      v24 = handlerCopy;
      v25 = v22;
      v27 = v26 = plannerCopy;
      v51 = v27;
      v28 = contextCopy;
      v52 = v28;
      v36 = recordsCopy;
      v29 = progressCopy;
      v30 = progressCopy;
      v53 = v30;
      [v23 setPerRecordSaveBlock:v50];
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_1000931F0;
      v48[3] = &unk_100273B50;
      v48[4] = self;
      v49 = v27;
      v31 = v27;
      plannerCopy = v26;
      v22 = v25;
      handlerCopy = v24;
      v32 = v31;
      [v23 setPerRecordDeleteBlock:v48];
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_1000932AC;
      v45[3] = &unk_100276460;
      v45[4] = self;
      v33 = v28;
      v46 = v33;
      v34 = v30;
      progressCopy = v29;
      recordsCopy = v36;
      v47 = v34;
      [v23 setPerRecordProgressBlock:v45];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100093474;
      v39[3] = &unk_1002764D8;
      v39[4] = self;
      v40 = v36;
      v41 = dsCopy;
      v42 = plannerCopy;
      v44 = v35;
      v43 = handlerCopy;
      [v23 setModifyRecordsCompletionBlock:v39];
      -[CPLCloudKitTransportTask launchOperation:type:withContext:](self, "launchOperation:type:withContext:", v23, [v37 operationType], v33);

      identificationCopy = v37;
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, v22);
  }
}

- (void)_uploadBatchFromPlanner:(id)planner completionHandler:(id)handler
{
  plannerCopy = planner;
  handlerCopy = handler;
  ckRecordsToUpload = [plannerCopy ckRecordsToUpload];
  if ([ckRecordsToUpload count] && self->_simulateOverQuotaPhase == 1)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100093D44;
    v20[3] = &unk_100271E98;
    v21 = handlerCopy;
    ckRecordIDsToDelete = handlerCopy;
    [(CPLCloudKitTransportTask *)self dispatchAsync:v20];
    willUploadRecords = v21;
  }

  else
  {
    ckRecordIDsToDelete = [plannerCopy ckRecordIDsToDelete];
    willUploadRecords = [plannerCopy willUploadRecords];
    destinationZoneIdentification = [plannerCopy destinationZoneIdentification];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100093DA4;
    v17[3] = &unk_100276500;
    v18 = plannerCopy;
    selfCopy = self;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100093DEC;
    v13[3] = &unk_100276528;
    selfCopy2 = self;
    v16 = handlerCopy;
    v14 = v18;
    v12 = handlerCopy;
    [(CPLCloudKitUploadBatchTask *)self _uploadRecords:ckRecordsToUpload deleteRecordIDs:ckRecordIDsToDelete identification:destinationZoneIdentification fromPlanner:v14 uploadContext:willUploadRecords updateProgress:v17 completionHandler:v13];
  }
}

- (void)_uploadSharedBatchFromPlanner:(id)planner completionHandler:(id)handler
{
  plannerCopy = planner;
  handlerCopy = handler;
  sharedCKRecordsToUpload = [plannerCopy sharedCKRecordsToUpload];
  if ([sharedCKRecordsToUpload count] && self->_simulateOverQuotaPhase == 2)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001AA290;
    v20[3] = &unk_100271E98;
    v21 = handlerCopy;
    sharedCKRecordIDsToDelete = handlerCopy;
    [(CPLCloudKitTransportTask *)self dispatchAsync:v20];
    willUploadSharedRecords = v21;
  }

  else
  {
    sharedCKRecordIDsToDelete = [plannerCopy sharedCKRecordIDsToDelete];
    willUploadSharedRecords = [plannerCopy willUploadSharedRecords];
    sharedZoneIdentification = [plannerCopy sharedZoneIdentification];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100094084;
    v17[3] = &unk_100276500;
    v18 = plannerCopy;
    selfCopy = self;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000940CC;
    v13[3] = &unk_100276528;
    selfCopy2 = self;
    v16 = handlerCopy;
    v14 = v18;
    v12 = handlerCopy;
    [(CPLCloudKitUploadBatchTask *)self _uploadRecords:sharedCKRecordsToUpload deleteRecordIDs:sharedCKRecordIDsToDelete identification:sharedZoneIdentification fromPlanner:v14 uploadContext:willUploadSharedRecords updateProgress:v17 completionHandler:v13];
  }
}

- (void)_executeSharePlanFromPlanner:(id)planner completionHandler:(id)handler
{
  plannerCopy = planner;
  handlerCopy = handler;
  sharePlan = [plannerCopy sharePlan];
  if ([sharePlan count])
  {
    if (self->_simulateOverQuotaPhase == 3)
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1001AA2E0;
      v19[3] = &unk_100271E98;
      v20 = handlerCopy;
      [(CPLCloudKitTransportTask *)self dispatchAsync:v19];
      v9 = v20;
    }

    else
    {
      [sharePlan willUploadRecords];
      ckRecordIDsToShare = [sharePlan ckRecordIDsToShare];
      destinationZoneIdentification = [plannerCopy destinationZoneIdentification];
      operationType = [destinationZoneIdentification operationType];
      sharedCKRecordIDs = [sharePlan sharedCKRecordIDs];
      sharedZoneIdentification = [plannerCopy sharedZoneIdentification];
      operationType2 = [sharedZoneIdentification operationType];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100094360;
      v16[3] = &unk_100276550;
      v18 = handlerCopy;
      v17 = sharePlan;
      [(CPLCloudKitTransportTask *)self moveRecordsWithIDs:ckRecordIDsToShare followRemapping:1 sourceType:operationType destinationRecordIDs:sharedCKRecordIDs destinationType:operationType2 helper:v17 completionHandler:v16];

      v9 = v18;
    }
  }

  else
  {
    [(CPLCloudKitUploadBatchTask *)self _executeUnsharePlanFromPlanner:plannerCopy completionHandler:handlerCopy];
  }
}

- (void)_executeUnsharePlanFromPlanner:(id)planner completionHandler:(id)handler
{
  plannerCopy = planner;
  handlerCopy = handler;
  unsharePlan = [plannerCopy unsharePlan];
  if ([unsharePlan count])
  {
    if (self->_simulateOverQuotaPhase == 4)
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1001AA330;
      v19[3] = &unk_100271E98;
      v20 = handlerCopy;
      [(CPLCloudKitTransportTask *)self dispatchAsync:v19];
      v9 = v20;
    }

    else
    {
      [unsharePlan willUploadRecords];
      ckRecordIDsToUnshare = [unsharePlan ckRecordIDsToUnshare];
      sharedZoneIdentification = [plannerCopy sharedZoneIdentification];
      operationType = [sharedZoneIdentification operationType];
      privateRecordIDs = [unsharePlan privateRecordIDs];
      destinationZoneIdentification = [plannerCopy destinationZoneIdentification];
      operationType2 = [destinationZoneIdentification operationType];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10009460C;
      v16[3] = &unk_100276550;
      v18 = handlerCopy;
      v17 = unsharePlan;
      [(CPLCloudKitTransportTask *)self moveRecordsWithIDs:ckRecordIDsToUnshare followRemapping:1 sourceType:operationType destinationRecordIDs:privateRecordIDs destinationType:operationType2 helper:v17 completionHandler:v16];

      v9 = v18;
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

@end