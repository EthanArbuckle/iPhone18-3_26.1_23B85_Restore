@interface CPLCloudKitFetchSharedScopeTask
- (CPLCloudKitFetchSharedScopeTask)initWithController:(id)controller shareURL:(id)l completionHandler:(id)handler;
- (id)_scopeChangeFromShareMetadata:(id)metadata currentUserID:(id)d error:(id *)error;
- (void)_fetchSharedScopeWithCurrentUserID:(id)d;
- (void)runOperations;
@end

@implementation CPLCloudKitFetchSharedScopeTask

- (CPLCloudKitFetchSharedScopeTask)initWithController:(id)controller shareURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = CPLCloudKitFetchSharedScopeTask;
  v11 = [(CPLCloudKitTransportTask *)&v16 initWithController:controller];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_shareURL, l);
    v13 = [handlerCopy copy];
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

- (void)_fetchSharedScopeWithCurrentUserID:(id)d
{
  dCopy = d;
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
      v14 = dCopy;
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

- (id)_scopeChangeFromShareMetadata:(id)metadata currentUserID:(id)d error:(id *)error
{
  metadataCopy = metadata;
  dCopy = d;
  share = [metadataCopy share];
  if (share)
  {
    errorCopy = error;
    rootRecord = [metadataCopy rootRecord];
    recordID = [share recordID];
    v13 = recordID;
    if (rootRecord)
    {
      v45[0] = recordID;
      v46[0] = share;
      recordID2 = [rootRecord recordID];
      v45[1] = recordID2;
      v46[1] = rootRecord;
      v15 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];
    }

    else
    {
      v43 = recordID;
      v44 = share;
      v15 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    }

    controller = [(CPLCloudKitTransportTask *)self controller];
    recordID3 = [share recordID];
    zoneID = [recordID3 zoneID];

    controller2 = [(CPLCloudKitTransportTask *)self controller];
    v21 = [controller2 shouldIgnoreZoneWithZoneID:zoneID];

    v41 = controller;
    if (v21)
    {
      v22 = dCopy;
      cpl_zoneName = [zoneID cpl_zoneName];
      v24 = [CPLErrors cplErrorWithCode:38 description:@"Zone %@ is not supported by this engine", cpl_zoneName];

      if (errorCopy)
      {
        v25 = v24;
        v16 = 0;
        *errorCopy = v24;
      }

      else
      {
        v16 = 0;
      }

      dCopy = v22;
    }

    else
    {
      v24 = [[CPLCloudKitScope alloc] initWithZoneID:zoneID currentUserID:dCopy];
      v26 = [controller scopeTypeForCloudKitScope:v24 proposedScopeType:0 fetchedRecords:v15 currentUserID:dCopy];
      if (v26)
      {
        v27 = v26;
        v39 = [controller scopeIdentifierFromZoneID:zoneID];
        v37 = [[CPLEngineScope alloc] initWithScopeIdentifier:v39 scopeType:v27];
        v36 = [controller zoneIdentificationForCloudKitScope:v24 engineScope:?];
        v38 = dCopy;
        v16 = [v36 scopeChangeFromCKRecords:v15 currentUserID:dCopy previousScopeChange:0];
        share2 = [v16 share];

        if (!share2)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            sub_1001A5018(v16);
          }

          if (errorCopy)
          {
            v31 = [share objectForKeyedSubscript:CKShareTypeKey];
            v32 = v31;
            v33 = "with";
            if (!rootRecord)
            {
              v33 = "without";
            }

            *errorCopy = [CPLErrors cplErrorWithCode:38 description:@"Share of type %@ (%s root record) is malformed or not supported in this universe", v31, v33];
          }

          v16 = 0;
        }

        dCopy = v38;
      }

      else if (errorCopy)
      {
        v29 = [share objectForKeyedSubscript:CKShareTypeKey];
        v30 = "with";
        if (!rootRecord)
        {
          v30 = "without";
        }

        v40 = v29;
        [CPLErrors cplErrorWithCode:38 description:@"Share of type %@ (%s root record) is malformed or not supported", v29, v30];
        *errorCopy = v16 = 0;
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

  else if (error)
  {
    +[CPLErrors unknownError];
    *error = v16 = 0;
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