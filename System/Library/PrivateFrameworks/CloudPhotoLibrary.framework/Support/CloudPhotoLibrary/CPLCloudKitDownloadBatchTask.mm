@interface CPLCloudKitDownloadBatchTask
- (CPLCloudKitDownloadBatchTask)initWithController:(id)a3 syncAnchor:(id)a4 scope:(id)a5 transportScopeMapping:(id)a6 currentScopeChange:(id)a7 progressHandler:(id)a8 completionHandler:(id)a9;
- (id)_partnerScopesNeedingToPullChangesFromZoneIDsWithSyncObligations:(id)a3;
- (void)_downloadBatchWithCurrentUserID:(id)a3;
- (void)addPartnerScope:(id)a3 mostCurrentSyncAnchor:(id)a4;
- (void)runOperations;
- (void)runWithinSyncSession:(id)a3;
- (void)sendProgressBatch:(id)a3 updatedScopeChange:(id)a4 updatedFlags:(id)a5 updatedSyncAnchor:(id)a6 zoneIDsWithSyncObligations:(id)a7;
@end

@implementation CPLCloudKitDownloadBatchTask

- (CPLCloudKitDownloadBatchTask)initWithController:(id)a3 syncAnchor:(id)a4 scope:(id)a5 transportScopeMapping:(id)a6 currentScopeChange:(id)a7 progressHandler:(id)a8 completionHandler:(id)a9
{
  v15 = a3;
  v16 = a4;
  v29 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v34.receiver = self;
  v34.super_class = CPLCloudKitDownloadBatchTask;
  v21 = [(CPLCloudKitTransportTask *)&v34 initWithController:v15];
  if (v21)
  {
    objc_initWeak(&location, v21);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10004F7F8;
    v30[3] = &unk_1002747E0;
    objc_copyWeak(&v32, &location);
    v31 = v20;
    v22 = [v30 copy];
    completionHandler = v21->_completionHandler;
    v21->_completionHandler = v22;

    v24 = [v19 copy];
    progressHandler = v21->_progressHandler;
    v21->_progressHandler = v24;

    if (v16)
    {
      v26 = [NSKeyedUnarchiver cpl_safeUnarchiveObjectWithData:v16 class:objc_opt_class()];
      syncAnchor = v21->_syncAnchor;
      v21->_syncAnchor = v26;
    }

    [(CPLCloudKitTransportTask *)v21 setTransportScopeMapping:v17];
    objc_storeStrong(&v21->_scope, a5);
    objc_storeStrong(&v21->_currentScopeChange, a7);

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  return v21;
}

- (void)runWithinSyncSession:(id)a3
{
  v4 = a3;
  [(CPLCloudKitDownloadBatchTask *)self hash];
  kdebug_trace();
  v5.receiver = self;
  v5.super_class = CPLCloudKitDownloadBatchTask;
  [(CPLCloudKitTransportTask *)&v5 runWithinSyncSession:v4];
}

- (void)addPartnerScope:(id)a3 mostCurrentSyncAnchor:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!self->_scopesBySupplementalZoneID)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    scopesBySupplementalZoneID = self->_scopesBySupplementalZoneID;
    self->_scopesBySupplementalZoneID = v9;

    v11 = objc_alloc_init(NSMutableDictionary);
    supplementalChangeTokenByZoneID = self->_supplementalChangeTokenByZoneID;
    self->_supplementalChangeTokenByZoneID = v11;
  }

  v13 = [v7 scopeIdentifier];
  v14 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:v13];

  if (!v14)
  {
    sub_10019BC78(a2, self, v7);
  }

  v15 = [NSKeyedUnarchiver cpl_safeUnarchiveObjectWithData:v8 class:objc_opt_class()];
  if (v15)
  {
    v16 = [v14 zoneID];
    if (!v16)
    {
      sub_10019BB00(a2, self, v7);
    }

    v17 = v16;
    [(NSMutableDictionary *)self->_supplementalChangeTokenByZoneID setObject:v15 forKeyedSubscript:v16];
    [(NSMutableDictionary *)self->_scopesBySupplementalZoneID setObject:v7 forKeyedSubscript:v17];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    sub_10019BBDC();
  }
}

- (id)_partnerScopesNeedingToPullChangesFromZoneIDsWithSyncObligations:(id)a3
{
  v4 = a3;
  if (-[NSMutableDictionary count](self->_supplementalChangeTokenByZoneID, "count") && (v5 = [v4 count]) != 0)
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:v5];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v4;
    v7 = v4;
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
    v4 = v18;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)sendProgressBatch:(id)a3 updatedScopeChange:(id)a4 updatedFlags:(id)a5 updatedSyncAnchor:(id)a6 zoneIDsWithSyncObligations:(id)a7
{
  v19 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v14)
  {
    v16 = [NSKeyedArchiver cpl_archivedDataWithRootObject:v14];
    if (!v12)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v16 = 0;
  if (v12)
  {
LABEL_3:
    [v19 addRecord:v12];
    objc_storeStrong(&self->_currentScopeChange, a4);
  }

LABEL_4:
  progressHandler = self->_progressHandler;
  v18 = [(CPLCloudKitDownloadBatchTask *)self _partnerScopesNeedingToPullChangesFromZoneIDsWithSyncObligations:v15];
  progressHandler[2](progressHandler, v19, v13, v16, v18);
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

- (void)_downloadBatchWithCurrentUserID:(id)a3
{
  v44 = a3;
  v93 = 0;
  v4 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v93];
  v43 = v93;
  if (v4)
  {
    scope = self->_scope;
    if (scope)
    {
      v6 = [(CPLEngineScope *)scope scopeIdentifier];
      v42 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:v6];

      if (v42)
      {
        v39 = [v42 zoneID];
        v40 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
        [v40 setPreviousServerChangeToken:self->_syncAnchor];
        [v40 setResultsLimit:200];
        v7 = [CKFetchRecordZoneChangesOperation alloc];
        v96 = v39;
        v8 = [NSArray arrayWithObjects:&v96 count:1];
        v94 = v39;
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
        v14 = [(CPLCloudKitTransportTask *)self controller];
        v15 = [v14 zoneIdentificationForCloudKitScope:v42 engineScope:self->_scope];

        v16 = [(CPLEngineScope *)self->_scope scopeIdentifier];
        if (+[CPLCloudKitDownloadBatchTask forceUpdatePrimarySyncStateOnce])
        {
          v17 = [(CPLCloudKitTransportTask *)self controller];
          v18 = [v17 mainScopeIdentifier];
          v19 = [v16 isEqualToString:v18];

          if (v19)
          {
            sub_10019BD68(&self->_scope);
            v20 = [CKRecord alloc];
            v21 = [v15 recordIDWithRecordName:@"PrimarySync-0000-ZS"];
            v22 = [v20 initWithRecordType:@"CPLZoneState" recordID:v21];

            v23 = [v15 updatedScopeChangeFromScopeChange:self->_currentScopeChange currentUserID:v44 withCKRecord:v22];
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
        v25 = v16;
        v70 = v25;
        v26 = v44;
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
        v32 = v39;
        v54 = v32;
        v55 = self;
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
        v47 = self;
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