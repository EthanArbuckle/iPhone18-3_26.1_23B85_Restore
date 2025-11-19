@interface CPLCloudKitFetchSharedScopeTask
- (CPLCloudKitFetchSharedScopeTask)initWithController:(id)a3 shareURL:(id)a4 completionHandler:(id)a5;
- (id)_scopeChangeFromShareMetadata:(id)a3 currentUserID:(id)a4 error:(id *)a5;
- (void)_fetchSharedScopeWithCurrentUserID:(id)a3;
- (void)runOperations;
@end

@implementation CPLCloudKitFetchSharedScopeTask

- (CPLCloudKitFetchSharedScopeTask)initWithController:(id)a3 shareURL:(id)a4 completionHandler:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = CPLCloudKitFetchSharedScopeTask;
  v11 = [(CPLCloudKitTransportTask *)&v16 initWithController:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_shareURL, a4);
    v13 = [v10 copy];
    completionHandler = v12->_completionHandler;
    v12->_completionHandler = v13;
  }

  return v12;
}

- (void)runOperations
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000753E0;
  v2[3] = &unk_100274018;
  v2[4] = self;
  [(CPLCloudKitTransportTask *)self getUserRecordIDFetchIfNecessaryWithCompletionHandler:v2];
}

- (void)_fetchSharedScopeWithCurrentUserID:(id)a3
{
  v4 = a3;
  v21 = 0;
  v5 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v21];
  v6 = v21;
  if (v5)
  {
    if (self->_shareURL)
    {
      v7 = [CKFetchShareMetadataOperation alloc];
      shareURL = self->_shareURL;
      v8 = [NSArray arrayWithObjects:&shareURL count:1];
      v9 = [v7 initWithShareURLs:v8];

      [v9 setShouldFetchRootRecord:1];
      v19[0] = 0;
      v19[1] = v19;
      v19[2] = 0x3032000000;
      v19[3] = sub_100004480;
      v19[4] = sub_100005324;
      v20 = 0;
      v17[0] = 0;
      v17[1] = v17;
      v17[2] = 0x3032000000;
      v17[3] = sub_100004480;
      v17[4] = sub_100005324;
      v18 = 0;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1001A4D30;
      v13[3] = &unk_1002759E0;
      v15 = v17;
      v16 = v19;
      v13[4] = self;
      v14 = v4;
      [v9 setPerShareMetadataBlock:v13];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100075714;
      v12[3] = &unk_100275A30;
      v12[4] = self;
      v12[5] = v17;
      v12[6] = v19;
      [v9 setFetchShareMetadataCompletionBlock:v12];
      [(CPLCloudKitTransportTask *)self launchOperation:v9 type:0 withContext:0];

      _Block_object_dispose(v17, 8);
      _Block_object_dispose(v19, 8);
    }

    else
    {
      completionHandler = self->_completionHandler;
      v11 = [CPLErrors incorrectParametersErrorForParameter:@"shareURL"];
      completionHandler[2](completionHandler, 0, v11);
    }
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

- (id)_scopeChangeFromShareMetadata:(id)a3 currentUserID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 share];
  if (v10)
  {
    v42 = a5;
    v11 = [v8 rootRecord];
    v12 = [v10 recordID];
    v13 = v12;
    if (v11)
    {
      v45[0] = v12;
      v46[0] = v10;
      v14 = [v11 recordID];
      v45[1] = v14;
      v46[1] = v11;
      v15 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];
    }

    else
    {
      v43 = v12;
      v44 = v10;
      v15 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    }

    v17 = [(CPLCloudKitTransportTask *)self controller];
    v18 = [v10 recordID];
    v19 = [v18 zoneID];

    v20 = [(CPLCloudKitTransportTask *)self controller];
    v21 = [v20 shouldIgnoreZoneWithZoneID:v19];

    v41 = v17;
    if (v21)
    {
      v22 = v9;
      v23 = [v19 cpl_zoneName];
      v24 = [CPLErrors cplErrorWithCode:38 description:@"Zone %@ is not supported by this engine", v23];

      if (v42)
      {
        v25 = v24;
        v16 = 0;
        *v42 = v24;
      }

      else
      {
        v16 = 0;
      }

      v9 = v22;
    }

    else
    {
      v24 = [[CPLCloudKitScope alloc] initWithZoneID:v19 currentUserID:v9];
      v26 = [v17 scopeTypeForCloudKitScope:v24 proposedScopeType:0 fetchedRecords:v15 currentUserID:v9];
      if (v26)
      {
        v27 = v26;
        v39 = [v17 scopeIdentifierFromZoneID:v19];
        v37 = [[CPLEngineScope alloc] initWithScopeIdentifier:v39 scopeType:v27];
        v36 = [v17 zoneIdentificationForCloudKitScope:v24 engineScope:?];
        v38 = v9;
        v16 = [v36 scopeChangeFromCKRecords:v15 currentUserID:v9 previousScopeChange:0];
        v28 = [v16 share];

        if (!v28)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            sub_1001A5018(v16);
          }

          if (v42)
          {
            v31 = [v10 objectForKeyedSubscript:CKShareTypeKey];
            v32 = v31;
            v33 = "with";
            if (!v11)
            {
              v33 = "without";
            }

            *v42 = [CPLErrors cplErrorWithCode:38 description:@"Share of type %@ (%s root record) is malformed or not supported in this universe", v31, v33];
          }

          v16 = 0;
        }

        v9 = v38;
      }

      else if (v42)
      {
        v29 = [v10 objectForKeyedSubscript:CKShareTypeKey];
        v30 = "with";
        if (!v11)
        {
          v30 = "without";
        }

        v40 = v29;
        [CPLErrors cplErrorWithCode:38 description:@"Share of type %@ (%s root record) is malformed or not supported", v29, v30];
        *v42 = v16 = 0;
      }

      else
      {
        v16 = 0;
      }
    }

    if (v21)
    {
      v34 = 0;
      goto LABEL_31;
    }
  }

  else if (a5)
  {
    +[CPLErrors unknownError];
    *a5 = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  v16 = v16;
  v34 = v16;
LABEL_31:

  return v34;
}

@end