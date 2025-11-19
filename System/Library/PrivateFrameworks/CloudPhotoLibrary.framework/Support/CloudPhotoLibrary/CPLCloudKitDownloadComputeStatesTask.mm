@interface CPLCloudKitDownloadComputeStatesTask
- (CPLCloudKitDownloadComputeStatesTask)initWithController:(id)a3 scopedIdentifiers:(id)a4 scope:(id)a5 sharedScope:(id)a6 targetStorageURL:(id)a7 transportScopeMapping:(id)a8 completionHandler:(id)a9;
- (void)_downloadComputeStates;
- (void)_getEncryptionHelper;
- (void)_group:(id)a3 dispatchWhenFinished:(id)a4;
- (void)runOperations;
@end

@implementation CPLCloudKitDownloadComputeStatesTask

- (CPLCloudKitDownloadComputeStatesTask)initWithController:(id)a3 scopedIdentifiers:(id)a4 scope:(id)a5 sharedScope:(id)a6 targetStorageURL:(id)a7 transportScopeMapping:(id)a8 completionHandler:(id)a9
{
  v15 = a4;
  v26 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v27.receiver = self;
  v27.super_class = CPLCloudKitDownloadComputeStatesTask;
  v20 = [(CPLCloudKitTransportTask *)&v27 initWithController:a3];
  if (v20)
  {
    v21 = [v15 copy];
    scopedIdentifiers = v20->_scopedIdentifiers;
    v20->_scopedIdentifiers = v21;

    objc_storeStrong(&v20->_scope, a5);
    objc_storeStrong(&v20->_sharedScope, a6);
    objc_storeStrong(&v20->_targetStorageURL, a7);
    [(CPLCloudKitTransportTask *)v20 setTransportScopeMapping:v18];
    v23 = [v19 copy];
    completionHandler = v20->_completionHandler;
    v20->_completionHandler = v23;
  }

  return v20;
}

- (void)runOperations
{
  v5 = 0;
  v3 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v5];
  v4 = v5;
  if (v3)
  {
    [(CPLCloudKitDownloadComputeStatesTask *)self _getEncryptionHelper];
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

- (void)_getEncryptionHelper
{
  if (self->_shouldDecrypt)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10008F380;
    v5[3] = &unk_1002761A8;
    v5[4] = self;
    [(CPLCloudKitTransportTask *)self acquireHelperWithIdentifier:@"compute-state-encryption" completionHandler:v5];
  }

  else
  {
    v3 = objc_alloc_init(CPLCloudKitComputeStateNoEncryptionHelper);
    encryptionHelper = self->_encryptionHelper;
    self->_encryptionHelper = v3;

    [(CPLCloudKitDownloadComputeStatesTask *)self _downloadComputeStates];
  }
}

- (void)_group:(id)a3 dispatchWhenFinished:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSProgress progressWithTotalUnitCount:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10008F52C;
  v11[3] = &unk_1002723C8;
  v11[4] = self;
  v12 = v6;
  v9 = [(CPLCloudKitTransportTask *)self blockWithAdaptedQOS:v11];
  [(CPLCloudKitTransportTask *)self dispatchCallbackOperation:@"Waiting for decryption to finish" progress:v8];
  v10 = [(CPLCloudKitTransportTask *)self synchronousWorkQueue];
  dispatch_group_notify(v7, v10, v9);
}

- (void)_downloadComputeStates
{
  v61 = 0;
  v3 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v61];
  v39 = v61;
  if ((v3 & 1) != 0 && [(NSArray *)self->_scopedIdentifiers count])
  {
    v4 = [(CPLEngineScope *)self->_scope scopeIdentifier];
    v35 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:v4];

    v5 = [v35 zoneID];
    LODWORD(v4) = v5 == 0;

    if (v4)
    {
      completionHandler = self->_completionHandler;
      v34 = [CPLErrors cplErrorWithCode:80 description:@"Missing required zone"];
      completionHandler[2](completionHandler, 0, v34);
LABEL_20:

      goto LABEL_21;
    }

    sharedScope = self->_sharedScope;
    if (sharedScope)
    {
      v7 = [(CPLEngineScope *)sharedScope scopeIdentifier];
      v34 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:v7];

      v8 = [v34 zoneID];
      LODWORD(v7) = v8 == 0;

      if (v7)
      {
        v9 = self->_completionHandler;
        v10 = [CPLErrors cplErrorWithCode:80 description:@"Missing required shared zone"];
        v9[2](v9, 0, v10);
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
      v34 = 0;
    }

    v12 = [(CPLCloudKitTransportTask *)self controller];
    v10 = [v12 zoneIdentificationForCloudKitScope:v35 engineScope:self->_scope];

    v13 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSArray count](self->_scopedIdentifiers, "count")}];
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v14 = self->_scopedIdentifiers;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v57 objects:v62 count:16];
    if (v15)
    {
      v16 = *v58;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v58 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v57 + 1) + 8 * i);
          v19 = [v18 identifier];
          v20 = [v10 recordIDWithRecordName:v19];

          [v13 setObject:v18 forKeyedSubscript:v20];
        }

        v15 = [(NSArray *)v14 countByEnumeratingWithState:&v57 objects:v62 count:16];
      }

      while (v15);
    }

    v55[0] = 0;
    v55[1] = v55;
    v55[2] = 0x3032000000;
    v55[3] = sub_1000044A0;
    v55[4] = sub_100005334;
    v56 = 0;
    v21 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSArray count](self->_scopedIdentifiers, "count")}];
    v22 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self->_scopedIdentifiers, "count")}];
    v23 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSArray count](self->_scopedIdentifiers, "count")}];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10008FC54;
    v46[3] = &unk_1002762E8;
    v24 = dispatch_group_create();
    v47 = v24;
    v48 = self;
    v53 = v55;
    v38 = v13;
    v49 = v38;
    v54 = a2;
    v25 = v23;
    v50 = v25;
    v26 = v22;
    v51 = v26;
    v27 = v21;
    v52 = v27;
    v28 = objc_retainBlock(v46);
    v29 = [v38 allKeys];
    v30 = [v10 operationType];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100090314;
    v40[3] = &unk_100276360;
    v40[4] = self;
    v37 = v24;
    v41 = v37;
    v45 = v55;
    v31 = v27;
    v42 = v31;
    v32 = v25;
    v43 = v32;
    v33 = v26;
    v44 = v33;
    [(CPLCloudKitTransportTask *)self fetchRecordsWithIDs:v29 fetchResources:1 desiredKeys:&off_100291440 wantsAllRecords:0 type:v30 perFoundRecordBlock:v28 completionHandler:v40];

    _Block_object_dispose(v55, 8);
    goto LABEL_19;
  }

  (*(self->_completionHandler + 2))();
LABEL_21:
}

@end