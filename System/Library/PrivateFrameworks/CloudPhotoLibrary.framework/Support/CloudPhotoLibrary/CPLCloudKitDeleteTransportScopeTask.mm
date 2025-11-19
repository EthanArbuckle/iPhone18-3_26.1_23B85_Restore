@interface CPLCloudKitDeleteTransportScopeTask
- (CPLCloudKitDeleteTransportScopeTask)initWithController:(id)a3 cloudKitScope:(id)a4 scope:(id)a5 completionHandler:(id)a6;
- (id)_errorForDeleteError:(id)a3;
- (void)_deleteZoneWithCurrentUserID:(id)a3;
- (void)_didFinishDeleteWithError:(id)a3;
- (void)runOperations;
@end

@implementation CPLCloudKitDeleteTransportScopeTask

- (CPLCloudKitDeleteTransportScopeTask)initWithController:(id)a3 cloudKitScope:(id)a4 scope:(id)a5 completionHandler:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = CPLCloudKitDeleteTransportScopeTask;
  v14 = [(CPLCloudKitTransportTask *)&v18 initWithController:a3];
  if (v14)
  {
    v15 = [v13 copy];
    completionHandler = v14->_completionHandler;
    v14->_completionHandler = v15;

    objc_storeStrong(&v14->_cloudKitScope, a4);
    objc_storeStrong(&v14->_scope, a5);
  }

  return v14;
}

- (id)_errorForDeleteError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [CPLCloudKitErrors realErrorForError:v4];

    v6 = [v5 domain];
    v7 = [v6 isEqualToString:CKErrorDomain];

    if (v7 && ([v5 code] == 26 || objc_msgSend(v5, "code") == 28))
    {
      v8 = 0;
LABEL_8:

      goto LABEL_10;
    }

    if (v5)
    {
      v9 = [(CPLCloudKitTransportTask *)self lastOperationRequestUUIDs];
      v8 = [CPLCloudKitErrors CPLErrorForCloudKitError:v5 withRequestUUIDs:v9 description:@"Failed to delete zone"];

      v5 = v9;
      goto LABEL_8;
    }
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (void)_didFinishDeleteWithError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_forced && ([v4 isCPLOperationCancelledError] & 1) == 0)
  {
    cloudKitScope = self->_cloudKitScope;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100048140;
    v7[3] = &unk_100274348;
    v8 = v5;
    v9 = self;
    [(CPLCloudKitTransportTask *)self fetchZoneForScope:cloudKitScope completionHandler:v7];
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

- (void)runOperations
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100048290;
  v2[3] = &unk_100274018;
  v2[4] = self;
  [(CPLCloudKitTransportTask *)self getUserRecordIDFetchIfNecessaryWithCompletionHandler:v2];
}

- (void)_deleteZoneWithCurrentUserID:(id)a3
{
  v4 = a3;
  v36 = 0;
  v5 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v36];
  v6 = v36;
  if (v5)
  {
    if (![(CPLEngineScope *)self->_scope scopeType])
    {
      sub_10019A3B8(&self->_scope, self);
      goto LABEL_36;
    }

    cloudKitScope = self->_cloudKitScope;
    if (!cloudKitScope)
    {
      v8 = [(CPLCloudKitTransportTask *)self controller];
      v9 = [(CPLEngineScope *)self->_scope scopeIdentifier];
      v10 = [v8 zoneIDFromScopeIdentifier:v9];

      v11 = [v10 ownerName];
      v12 = [v4 recordName];
      v13 = [v11 isEqualToString:v12];

      if (v13)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          sub_10019A2F8(v10, &self->_scope);
        }

        (*(self->_completionHandler + 2))();
        goto LABEL_35;
      }

      v14 = [[CPLCloudKitScope alloc] initWithZoneID:v10 currentUserID:v4];
      v15 = self->_cloudKitScope;
      self->_cloudKitScope = v14;

      cloudKitScope = self->_cloudKitScope;
    }

    v10 = [(CPLCloudKitScope *)cloudKitScope zoneID];
    if (!v10)
    {
      completionHandler = self->_completionHandler;
      v17 = [CPLErrors cplErrorWithCode:80 description:@"Missing required zone"];
      completionHandler[2](completionHandler, v17);
LABEL_34:

LABEL_35:
      goto LABEL_36;
    }

    if (!self->_forced && [CPLCloudKitZoneIdentification shouldProtectZoneIDFromDeletion:v10])
    {
      sub_10019A1EC(&self->_scope, v10, self);
      goto LABEL_35;
    }

    v16 = [(CPLCloudKitTransportTask *)self controller];
    v17 = [v16 zoneIdentificationForCloudKitScope:self->_cloudKitScope engineScope:self->_scope];

    if ([v17 supportsZoneDelete])
    {
      v18 = [CKModifyRecordZonesOperation alloc];
      v42 = v10;
      v19 = [NSArray arrayWithObjects:&v42 count:1];
      v20 = [v18 initWithRecordZonesToSave:0 recordZoneIDsToDelete:v19];

      if ((_CPLSilentLogging & 1) == 0)
      {
        v21 = sub_100003700();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v38 = v10;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Deleting zone %@", buf, 0xCu);
        }
      }

      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1000488E8;
      v35[3] = &unk_100274370;
      v35[4] = self;
      [v20 setModifyRecordZonesCompletionBlock:v35];
      v22 = [v17 cloudKitScope];
      [(CPLCloudKitTransportTask *)self launchOperation:v20 type:CPLCloudKitOperationTypeForScope(v22) withContext:0];
    }

    else
    {
      v20 = [v17 shareRecordIDToDelete];
      if (v20)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v24 = sub_100003700();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v38 = v20;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Deleting share record %{public}@", buf, 0xCu);
          }
        }

        v25 = [CKModifyRecordsOperation alloc];
        v41 = v20;
        v26 = [NSArray arrayWithObjects:&v41 count:1];
        v22 = [v25 initWithRecordsToSave:0 recordIDsToDelete:v26];

        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_100048A44;
        v34[3] = &unk_100274370;
        v34[4] = self;
        [v22 setModifyRecordsCompletionBlock:v34];
        v27 = [v17 cloudKitScope];
        [(CPLCloudKitTransportTask *)self launchOperation:v22 type:CPLCloudKitOperationTypeForScope(v27) withContext:0];
      }

      else
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v28 = sub_100003700();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v33 = [v17 cloudKitScope];
            v32 = [v33 zoneID];
            v31 = [v32 cpl_zoneName];
            v29 = [CPLScopeChange descriptionForScopeType:[(CPLEngineScope *)self->_scope scopeType]];
            *buf = 138543618;
            v38 = v31;
            v39 = 2112;
            v40 = v29;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Trying to delete %{public}@ that does not provide ways to do so (scope type: %@)", buf, 0x16u);
          }
        }

        if (!self->_forced)
        {
          [(CPLCloudKitDeleteTransportScopeTask *)self _didFinishDeleteWithError:0];
          goto LABEL_33;
        }

        v30 = self->_completionHandler;
        v22 = +[CPLErrors notImplementedError];
        v30[2](v30, v22);
      }
    }

LABEL_33:
    goto LABEL_34;
  }

  (*(self->_completionHandler + 2))();
LABEL_36:
}

@end