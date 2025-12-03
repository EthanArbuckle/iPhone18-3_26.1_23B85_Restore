@interface CPLCloudKitDownloadBatchTask
- (CPLCloudKitDownloadBatchTask)initWithController:(id)controller syncAnchor:(id)anchor scope:(id)scope transportScopeMapping:(id)mapping currentScopeChange:(id)change progressHandler:(id)handler completionHandler:(id)completionHandler;
- (id)_partnerScopesNeedingToPullChangesFromZoneIDsWithSyncObligations:(id)obligations;
- (void)_downloadBatchWithCurrentUserID:(id)d;
- (void)addPartnerScope:(id)scope mostCurrentSyncAnchor:(id)anchor;
- (void)runOperations;
- (void)runWithinSyncSession:(id)session;
- (void)sendProgressBatch:(id)batch updatedScopeChange:(id)change updatedFlags:(id)flags updatedSyncAnchor:(id)anchor zoneIDsWithSyncObligations:(id)obligations;
@end

@implementation CPLCloudKitDownloadBatchTask

- (CPLCloudKitDownloadBatchTask)initWithController:(id)controller syncAnchor:(id)anchor scope:(id)scope transportScopeMapping:(id)mapping currentScopeChange:(id)change progressHandler:(id)handler completionHandler:(id)completionHandler
{
  controllerCopy = controller;
  anchorCopy = anchor;
  scopeCopy = scope;
  mappingCopy = mapping;
  changeCopy = change;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v34.receiver = self;
  v34.super_class = CPLCloudKitDownloadBatchTask;
  v21 = [(CPLCloudKitTransportTask *)&v34 initWithController:controllerCopy];
  if (v21)
  {
    objc_initWeak(&location, v21);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10004F7F8;
    v30[3] = &unk_1002747E0;
    objc_copyWeak(&v32, &location);
    v31 = completionHandlerCopy;
    v22 = [v30 copy];
    completionHandler = v21->_completionHandler;
    v21->_completionHandler = v22;

    v24 = [handlerCopy copy];
    progressHandler = v21->_progressHandler;
    v21->_progressHandler = v24;

    if (anchorCopy)
    {
      v26 = [NSKeyedUnarchiver cpl_safeUnarchiveObjectWithData:anchorCopy class:objc_opt_class()];
      syncAnchor = v21->_syncAnchor;
      v21->_syncAnchor = v26;
    }

    [(CPLCloudKitTransportTask *)v21 setTransportScopeMapping:mappingCopy];
    objc_storeStrong(&v21->_scope, scope);
    objc_storeStrong(&v21->_currentScopeChange, change);

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  return v21;
}

- (void)runWithinSyncSession:(id)session
{
  sessionCopy = session;
  [(CPLCloudKitDownloadBatchTask *)self hash];
  kdebug_trace();
  v5.receiver = self;
  v5.super_class = CPLCloudKitDownloadBatchTask;
  [(CPLCloudKitTransportTask *)&v5 runWithinSyncSession:sessionCopy];
}

- (void)addPartnerScope:(id)scope mostCurrentSyncAnchor:(id)anchor
{
  scopeCopy = scope;
  anchorCopy = anchor;
  if (!self->_scopesBySupplementalZoneID)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    scopesBySupplementalZoneID = self->_scopesBySupplementalZoneID;
    self->_scopesBySupplementalZoneID = v9;

    v11 = objc_alloc_init(NSMutableDictionary);
    supplementalChangeTokenByZoneID = self->_supplementalChangeTokenByZoneID;
    self->_supplementalChangeTokenByZoneID = v11;
  }

  scopeIdentifier = [scopeCopy scopeIdentifier];
  v14 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:scopeIdentifier];

  if (!v14)
  {
    sub_10019BC78(a2, self, scopeCopy);
  }

  v15 = [NSKeyedUnarchiver cpl_safeUnarchiveObjectWithData:anchorCopy class:objc_opt_class()];
  if (v15)
  {
    zoneID = [v14 zoneID];
    if (!zoneID)
    {
      sub_10019BB00(a2, self, scopeCopy);
    }

    v17 = zoneID;
    [(NSMutableDictionary *)self->_supplementalChangeTokenByZoneID setObject:v15 forKeyedSubscript:zoneID];
    [(NSMutableDictionary *)self->_scopesBySupplementalZoneID setObject:scopeCopy forKeyedSubscript:v17];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    sub_10019BBDC();
  }
}

- (id)_partnerScopesNeedingToPullChangesFromZoneIDsWithSyncObligations:(id)obligations
{
  obligationsCopy = obligations;
  if (-[NSMutableDictionary count](self->_supplementalChangeTokenByZoneID, "count") && (v5 = [obligationsCopy count]) != 0)
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:v5];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = obligationsCopy;
    v7 = obligationsCopy;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [(NSMutableDictionary *)self->_supplementalChangeTokenByZoneID objectForKeyedSubscript:v12];

          if (v13)
          {
            v14 = [(NSMutableDictionary *)self->_scopesBySupplementalZoneID objectForKeyedSubscript:v12];
            if (v14)
            {
              if ((_CPLSilentLogging & 1) == 0)
              {
                v15 = sub_1000037CC();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v24 = v14;
                  v25 = 2114;
                  v26 = v12;
                  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ needs to pull changes (sync obligation on %{public}@)", buf, 0x16u);
                }
              }

              [v6 addObject:v14];
            }

            [(NSMutableDictionary *)self->_supplementalChangeTokenByZoneID removeObjectForKey:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v9);
    }

    v16 = [v6 copy];
    obligationsCopy = v18;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)sendProgressBatch:(id)batch updatedScopeChange:(id)change updatedFlags:(id)flags updatedSyncAnchor:(id)anchor zoneIDsWithSyncObligations:(id)obligations
{
  batchCopy = batch;
  changeCopy = change;
  flagsCopy = flags;
  anchorCopy = anchor;
  obligationsCopy = obligations;
  if (anchorCopy)
  {
    v16 = [NSKeyedArchiver cpl_archivedDataWithRootObject:anchorCopy];
    if (!changeCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v16 = 0;
  if (changeCopy)
  {
LABEL_3:
    [batchCopy addRecord:changeCopy];
    objc_storeStrong(&self->_currentScopeChange, change);
  }

LABEL_4:
  progressHandler = self->_progressHandler;
  v18 = [(CPLCloudKitDownloadBatchTask *)self _partnerScopesNeedingToPullChangesFromZoneIDsWithSyncObligations:obligationsCopy];
  progressHandler[2](progressHandler, batchCopy, flagsCopy, v16, v18);
}

- (void)runOperations
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10004FE94;
  v2[3] = &unk_100274018;
  v2[4] = self;
  [(CPLCloudKitTransportTask *)self getUserRecordIDFetchIfNecessaryWithCompletionHandler:v2];
}

- (void)_downloadBatchWithCurrentUserID:(id)d
{
  dCopy = d;
  v93 = 0;
  v4 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v93];
  v43 = v93;
  if (v4)
  {
    scope = self->_scope;
    if (scope)
    {
      scopeIdentifier = [(CPLEngineScope *)scope scopeIdentifier];
      v42 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:scopeIdentifier];

      if (v42)
      {
        zoneID = [v42 zoneID];
        v40 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
        [v40 setPreviousServerChangeToken:self->_syncAnchor];
        [v40 setResultsLimit:200];
        v7 = [CKFetchRecordZoneChangesOperation alloc];
        v96 = zoneID;
        v8 = [NSArray arrayWithObjects:&v96 count:1];
        v94 = zoneID;
        v95 = v40;
        v9 = [NSDictionary dictionaryWithObjects:&v95 forKeys:&v94 count:1];
        v10 = [v7 initWithRecordZoneIDs:v8 configurationsByRecordZoneID:v9];

        [v10 setFetchAllChanges:1];
        supplementalChangeTokenByZoneID = self->_supplementalChangeTokenByZoneID;
        if (supplementalChangeTokenByZoneID)
        {
          v12 = [(NSMutableDictionary *)supplementalChangeTokenByZoneID copy];
          [v10 setSupplementalChangeTokenByZoneID:v12];
        }

        v91[0] = 0;
        v91[1] = v91;
        v91[2] = 0x3032000000;
        v91[3] = sub_100004420;
        v91[4] = sub_1000052F4;
        v92 = objc_alloc_init(CPLChangeBatch);
        v89[0] = 0;
        v89[1] = v89;
        v89[2] = 0x3032000000;
        v89[3] = sub_100004420;
        v89[4] = sub_1000052F4;
        v90 = 0;
        v87[0] = 0;
        v87[1] = v87;
        v87[2] = 0x3032000000;
        v87[3] = sub_100004420;
        v87[4] = sub_1000052F4;
        v88 = 0;
        v86[0] = 0;
        v86[1] = v86;
        v86[2] = 0x2020000000;
        v86[3] = 0;
        v84[0] = 0;
        v84[1] = v84;
        v84[2] = 0x2020000000;
        v85 = 0;
        v82[0] = 0;
        v82[1] = v82;
        v82[2] = 0x3032000000;
        v82[3] = sub_100004420;
        v82[4] = sub_1000052F4;
        v83 = 0;
        [v10 setShouldFetchAssetContents:0];
        v13 = +[CPLRecordChange assetTransferOptionsByRecordTypeAndKey];
        [v10 setAssetTransferOptionsByRecordTypeAndKey:v13];

        v80[0] = 0;
        v80[1] = v80;
        v80[2] = 0x3032000000;
        v80[3] = sub_100004420;
        v80[4] = sub_1000052F4;
        v81 = self->_syncAnchor;
        v78[0] = 0;
        v78[1] = v78;
        v78[2] = 0x2020000000;
        v79 = 0;
        controller = [(CPLCloudKitTransportTask *)self controller];
        v15 = [controller zoneIdentificationForCloudKitScope:v42 engineScope:self->_scope];

        scopeIdentifier2 = [(CPLEngineScope *)self->_scope scopeIdentifier];
        if (+[CPLCloudKitDownloadBatchTask forceUpdatePrimarySyncStateOnce])
        {
          controller2 = [(CPLCloudKitTransportTask *)self controller];
          mainScopeIdentifier = [controller2 mainScopeIdentifier];
          v19 = [scopeIdentifier2 isEqualToString:mainScopeIdentifier];

          if (v19)
          {
            sub_10019BD68(&self->_scope);
            v20 = [CKRecord alloc];
            v21 = [v15 recordIDWithRecordName:@"PrimarySync-0000-ZS"];
            v22 = [v20 initWithRecordType:@"CPLZoneState" recordID:v21];

            v23 = [v15 updatedScopeChangeFromScopeChange:self->_currentScopeChange currentUserID:dCopy withCKRecord:v22];
            if (v23)
            {
              v24 = objc_alloc_init(CPLChangeBatch);
              [(CPLCloudKitDownloadBatchTask *)self sendProgressBatch:v24 updatedScopeChange:v23 updatedFlags:0 updatedSyncAnchor:self->_syncAnchor zoneIDsWithSyncObligations:0];
            }

            [CPLCloudKitDownloadBatchTask setForceUpdatePrimarySyncStateOnce:0];
          }
        }

        v69[0] = _NSConcreteStackBlock;
        v69[1] = 3221225472;
        v69[2] = sub_1000508F8;
        v69[3] = &unk_100274808;
        v74 = v86;
        v73 = v78;
        v69[4] = self;
        v25 = scopeIdentifier2;
        v70 = v25;
        v26 = dCopy;
        v71 = v26;
        v27 = v15;
        v72 = v27;
        v75 = v91;
        v76 = v89;
        v77 = v87;
        [v10 setRecordWasChangedBlock:v69];
        v60[0] = _NSConcreteStackBlock;
        v60[1] = 3221225472;
        v60[2] = sub_100050CE8;
        v60[3] = &unk_100274830;
        v64 = v78;
        v65 = v86;
        v60[4] = self;
        v66 = v89;
        v28 = v27;
        v61 = v28;
        v62 = v26;
        v67 = v87;
        v29 = v25;
        v63 = v29;
        v68 = v91;
        [v10 setRecordWithIDWasDeletedBlock:v60];
        v59[0] = _NSConcreteStackBlock;
        v59[1] = 3221225472;
        v59[2] = sub_100050F34;
        v59[3] = &unk_100274880;
        v59[4] = self;
        v59[5] = v78;
        v59[6] = v82;
        v59[7] = v80;
        v59[8] = v84;
        v30 = objc_retainBlock(v59);
        v58[0] = _NSConcreteStackBlock;
        v58[1] = 3221225472;
        v58[2] = sub_1000511E0;
        v58[3] = &unk_1002748A8;
        v58[4] = self;
        v58[5] = v78;
        v58[6] = v86;
        v58[7] = v80;
        v58[8] = v91;
        v58[9] = v89;
        v58[10] = v87;
        v31 = objc_retainBlock(v58);
        v53[0] = _NSConcreteStackBlock;
        v53[1] = 3221225472;
        v53[2] = sub_10019B974;
        v53[3] = &unk_1002748D0;
        v57 = v78;
        v32 = zoneID;
        v54 = v32;
        selfCopy = self;
        v33 = v31;
        v56 = v33;
        [v10 setRecordZoneChangeTokensUpdatedBlock:v53];
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_100051234;
        v45[3] = &unk_1002748F8;
        v49 = v78;
        v34 = v32;
        v52 = a2;
        v46 = v34;
        selfCopy2 = self;
        v35 = v33;
        v48 = v35;
        v50 = v82;
        v51 = v84;
        [v10 setRecordZoneFetchCompletionBlock:v45];
        [v10 setFetchRecordZoneChangesCompletionBlock:v30];
        [(CPLCloudKitDownloadBatchTask *)self setCurrentFetchRecordZoneChangesOperation:v10];
        [(CPLCloudKitTransportTask *)self launchOperation:v10 type:CPLCloudKitOperationTypeForScope(v42) withContext:0];

        _Block_object_dispose(v78, 8);
        _Block_object_dispose(v80, 8);

        _Block_object_dispose(v82, 8);
        _Block_object_dispose(v84, 8);
        _Block_object_dispose(v86, 8);
        _Block_object_dispose(v87, 8);

        _Block_object_dispose(v89, 8);
        _Block_object_dispose(v91, 8);
      }

      else
      {
        completionHandler = self->_completionHandler;
        v34 = [CPLErrors cplErrorWithCode:80 description:@"Missing required zone"];
        (*(completionHandler + 2))(completionHandler, 0, 0, 0, v34);
      }
    }

    else
    {
      v36 = self->_completionHandler;
      v37 = [CPLErrors cplErrorWithCode:80 description:@"Missing required scope"];
      (*(v36 + 2))(v36, 0, 0, 0, v37);
    }
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

@end