@interface CPLCloudKitFetchTransportScopeTask
- (CPLCloudKitFetchTransportScopeTask)initWithController:(id)a3 scope:(id)a4 cloudKitScope:(id)a5 completionHandler:(id)a6;
- (void)_callCompletionWithZone:(id)a3;
- (void)_updateCloudKitScopeWithZone:(id)a3;
- (void)createRecordZoneWithID:(id)a3;
- (void)runOperations;
@end

@implementation CPLCloudKitFetchTransportScopeTask

- (CPLCloudKitFetchTransportScopeTask)initWithController:(id)a3 scope:(id)a4 cloudKitScope:(id)a5 completionHandler:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = CPLCloudKitFetchTransportScopeTask;
  v14 = [(CPLCloudKitTransportTask *)&v21 initWithController:a3];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_scope, a4);
    objc_storeStrong(&v15->_cloudKitScope, a5);
    v16 = objc_alloc_init(CPLEngineScopeFlagsUpdate);
    fetchedFlags = v15->_fetchedFlags;
    v15->_fetchedFlags = v16;

    v18 = objc_retainBlock(v13);
    completionHandler = v15->_completionHandler;
    v15->_completionHandler = v18;

    v15->_options = 0;
  }

  return v15;
}

- (void)_updateCloudKitScopeWithZone:(id)a3
{
  cloudKitScope = self->_cloudKitScope;
  v5 = a3;
  v6 = [CPLCloudKitScope alloc];
  if (cloudKitScope)
  {
    options = self->_options | [(CPLCloudKitScope *)self->_cloudKitScope options];
  }

  else
  {
    options = self->_options;
  }

  v12 = [(CPLCloudKitScope *)v6 initWithZone:v5 options:options];

  v8 = [(CPLCloudKitTransportTask *)self controller];
  v9 = [v8 zoneIdentificationForCloudKitScope:v12 engineScope:self->_scope];

  v10 = [v9 cloudKitScope];
  v11 = self->_cloudKitScope;
  self->_cloudKitScope = v10;
}

- (void)createRecordZoneWithID:(id)a3
{
  v5 = a3;
  v17 = 0;
  v6 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v17];
  v7 = v17;
  if (v6)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = sub_100003568();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v5 cpl_zoneName];
        *buf = 138543362;
        v20 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Creating primary zone with zoneID %{public}@", buf, 0xCu);
      }
    }

    v10 = [[CKRecordZone alloc] initWithZoneID:v5];
    [(CPLCloudKitFetchTransportScopeTask *)self _updateCloudKitScopeWithZone:v10];
    v11 = [CKModifyRecordZonesOperation alloc];
    v18 = v10;
    v12 = [NSArray arrayWithObjects:&v18 count:1];
    v13 = [v11 initWithRecordZonesToSave:v12 recordZoneIDsToDelete:0];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002FB5C;
    v14[3] = &unk_100273760;
    v14[4] = self;
    v15 = v5;
    v16 = a2;
    [v13 setModifyRecordZonesCompletionBlock:v14];
    [(CPLCloudKitTransportTask *)self launchOperation:v13 type:CPLCloudKitOperationTypeForScope(self->_cloudKitScope) withContext:0];
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

- (void)runOperations
{
  v72 = 0;
  v4 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v72];
  v5 = v72;
  if (v4)
  {
    v66 = 0;
    v67 = &v66;
    v68 = 0x3032000000;
    v69 = sub_1000043B0;
    v70 = sub_1000052BC;
    v71 = [(CPLCloudKitScope *)self->_cloudKitScope zone];
    v60 = 0;
    v61 = &v60;
    v62 = 0x3032000000;
    v63 = sub_1000043B0;
    v64 = sub_1000052BC;
    v65 = [v67[5] zoneID];
    if (v61[5])
    {
      v6 = [CKRecordZoneID alloc];
      v7 = [v61[5] zoneName];
      v8 = [v61[5] ownerName];
      v9 = [v6 initWithZoneName:v7 ownerName:v8];
      v10 = v61[5];
      v61[5] = v9;

      v11 = 0;
    }

    else
    {
      v12 = [(CPLEngineScope *)self->_scope scopeType];
      scope = self->_scope;
      if (v12 == 1)
      {
        v14 = [(CPLEngineScope *)scope scopeIdentifier];
        v15 = [v14 isEqualToString:CPLPrimaryScopeIdentifier];

        v16 = [CKRecordZoneID alloc];
        [(CPLEngineScope *)self->_scope scopeIdentifier];
        if (v15)
          v17 = {;
          v18 = [v16 initWithCPLScopeIdentifier:v17];
          v11 = 0;
          v19 = &stru_1002737A0;
          v20 = &stru_1002737E0;
        }

        else
          v27 = {;
          v28 = [v16 initWithCPLScopeIdentifier:v27];

          v58[0] = _NSConcreteStackBlock;
          v58[1] = 3221225472;
          v58[2] = sub_100030600;
          v58[3] = &unk_100273808;
          v29 = v28;
          v59 = v29;
          v19 = objc_retainBlock(v58);
          v11 = v29;
          v17 = v59;
          v20 = &stru_100273828;
          v18 = v11;
        }

        if (v19)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }

      v7 = [(CPLEngineScope *)scope scopeIdentifier];
      sub_100193BC0(v7, &self->_scope);
      v21 = [(CPLCloudKitTransportTask *)self zoneIDFromScopeIdentifier:v7];
      v22 = v61[5];
      v61[5] = v21;

      v23 = v61;
      v11 = v61[5];
      v24 = [v23[5] ownerName];
      v25 = [v24 isEqualToString:CKCurrentUserDefaultName];

      if (v25)
      {
        v26 = 0;
      }

      else
      {
        [(CPLEngineScopeFlagsUpdate *)self->_fetchedFlags setValue:1 forFlag:1];
        v26 = 2;
      }

      if ([(CPLCloudKitZoneIdentification *)CPLCloudKitLibraryShareZoneIdentification isSupportedZoneID:v61[5]]|| [(CPLCloudKitZoneIdentification *)CPLCloudKitCollectionShareZoneIdentification isSupportedZoneID:v61[5]])
      {
        v26 |= 4uLL;
      }

      v30 = [CPLCloudKitScope alloc];
      v31 = [(CPLCloudKitScope *)v30 initWithZoneID:v61[5] options:v26];
      cloudKitScope = self->_cloudKitScope;
      self->_cloudKitScope = v31;

      v33 = [(CPLCloudKitScope *)self->_cloudKitScope zone];
      v8 = v67[5];
      v67[5] = v33;
    }

    v18 = 0;
LABEL_19:
    if (!v61[5])
    {
      sub_100193CE0();
      v47 = +[NSAssertionHandler currentHandler];
      v48 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitFetchTransportScopeTask.m"];
      [v47 handleFailureInMethod:a2 object:self file:v48 lineNumber:162 description:@"No zoneID to validate against"];

      abort();
    }

    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_100030614;
    v57[3] = &unk_100273850;
    v57[4] = &v60;
    v19 = objc_retainBlock(v57);
    v34 = v61[5];

    v20 = &stru_100273870;
    v18 = v34;
LABEL_21:
    v35 = self->_cloudKitScope;
    if (v35)
    {
      v36 = CPLCloudKitOperationTypeForScope(v35);
    }

    else
    {
      v36 = 1;
    }

    if (v11)
    {
      v37 = [CKFetchRecordZonesOperation alloc];
      v75 = v11;
      v38 = [NSArray arrayWithObjects:&v75 count:1];
      v39 = [v37 initWithRecordZoneIDs:v38];

      if ((_CPLSilentLogging & 1) == 0)
      {
        v40 = sub_100003568();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = [v11 cpl_zoneName];
          sub_100193C6C(v41, self, buf, v40);
        }

LABEL_31:
      }
    }

    else
    {
      v39 = +[CKFetchRecordZonesOperation fetchAllRecordZonesOperation];
      if ((_CPLSilentLogging & 1) == 0)
      {
        v40 = sub_100003568();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v42 = self->_scope;
          *buf = 138412290;
          v74 = v42;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Fetching all zones for %@", buf, 0xCu);
        }

        goto LABEL_31;
      }
    }

    v43 = [v39 operationID];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100030630;
    v49[3] = &unk_1002738E8;
    v49[4] = self;
    v54 = &v60;
    v44 = v19;
    v52 = v44;
    v55 = &v66;
    v45 = v43;
    v56 = a2;
    v50 = v45;
    v53 = v20;
    v46 = v18;
    v51 = v46;
    [v39 setFetchRecordZonesCompletionBlock:v49];
    [(CPLCloudKitTransportTask *)self launchOperation:v39 type:v36 withContext:0];

    _Block_object_dispose(&v60, 8);
    _Block_object_dispose(&v66, 8);

    goto LABEL_33;
  }

  (*(self->_completionHandler + 2))();
LABEL_33:
}

- (void)_callCompletionWithZone:(id)a3
{
  [(CPLCloudKitFetchTransportScopeTask *)self _updateCloudKitScopeWithZone:a3];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100003568();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(CPLCloudKitScope *)self->_cloudKitScope zoneID];
      v6 = [v5 cpl_zoneName];
      v7 = [(CPLCloudKitScope *)self->_cloudKitScope options];
      v10 = 138543618;
      v11 = v6;
      v12 = 2048;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fetched zone %{public}@ with options 0x%lx", &v10, 0x16u);
    }
  }

  completionHandler = self->_completionHandler;
  v9 = [(CPLCloudKitScope *)self->_cloudKitScope transportScope];
  completionHandler[2](completionHandler, v9, self->_fetchedFlags, 0);
}

@end