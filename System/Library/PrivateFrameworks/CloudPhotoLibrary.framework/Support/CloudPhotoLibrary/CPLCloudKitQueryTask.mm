@interface CPLCloudKitQueryTask
- (CPLCloudKitQueryTask)initWithController:(id)controller cursor:(id)cursor class:(Class)class scope:(id)scope transportScopeMapping:(id)mapping progressHandler:(id)handler completionHandler:(id)completionHandler;
- (void)_runOperationsWithCurrentUserID:(id)d;
- (void)_runQueryWithCurrentUserID:(id)d cursor:(id)cursor additionalInfo:(id)info completionHandler:(id)handler;
- (void)runOperations;
- (void)runWithinSyncSession:(id)session;
- (void)sendProgressBatch:(id)batch updatedCursor:(id)cursor;
@end

@implementation CPLCloudKitQueryTask

- (CPLCloudKitQueryTask)initWithController:(id)controller cursor:(id)cursor class:(Class)class scope:(id)scope transportScopeMapping:(id)mapping progressHandler:(id)handler completionHandler:(id)completionHandler
{
  controllerCopy = controller;
  cursorCopy = cursor;
  scopeCopy = scope;
  mappingCopy = mapping;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v33.receiver = self;
  v33.super_class = CPLCloudKitQueryTask;
  v21 = [(CPLCloudKitTransportTask *)&v33 initWithController:controllerCopy];
  if (v21)
  {
    objc_initWeak(&location, v21);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000424A8;
    v29[3] = &unk_1002740B0;
    objc_copyWeak(&v31, &location);
    v30 = completionHandlerCopy;
    v22 = [v29 copy];
    completionHandler = v21->_completionHandler;
    v21->_completionHandler = v22;

    v24 = [handlerCopy copy];
    progressHandler = v21->_progressHandler;
    v21->_progressHandler = v24;

    if (cursorCopy)
    {
      v26 = [[CPLCKQueryCursor alloc] initWithCursorData:cursorCopy];
      cursor = v21->_cursor;
      v21->_cursor = v26;
    }

    objc_storeStrong(&v21->_queriedClass, class);
    [(CPLCloudKitTransportTask *)v21 setTransportScopeMapping:mappingCopy];
    objc_storeStrong(&v21->_scope, scope);

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v21;
}

- (void)runWithinSyncSession:(id)session
{
  sessionCopy = session;
  [(CPLCloudKitQueryTask *)self hash];
  kdebug_trace();
  v5.receiver = self;
  v5.super_class = CPLCloudKitQueryTask;
  [(CPLCloudKitTransportTask *)&v5 runWithinSyncSession:sessionCopy];
}

- (void)sendProgressBatch:(id)batch updatedCursor:(id)cursor
{
  progressHandler = self->_progressHandler;
  batchCopy = batch;
  cursorData = [cursor cursorData];
  progressHandler[2](progressHandler, batchCopy, cursorData);
}

- (void)runOperations
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100042698;
  v2[3] = &unk_100274018;
  v2[4] = self;
  [(CPLCloudKitTransportTask *)self getUserRecordIDFetchIfNecessaryWithCompletionHandler:v2];
}

- (void)_runOperationsWithCurrentUserID:(id)d
{
  dCopy = d;
  cursor = self->_cursor;
  additionalInfo = [(CPLCKQueryCursor *)cursor additionalInfo];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100042790;
  v8[3] = &unk_100272268;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  [(CPLCloudKitQueryTask *)self _runQueryWithCurrentUserID:v7 cursor:cursor additionalInfo:additionalInfo completionHandler:v8];
}

- (void)_runQueryWithCurrentUserID:(id)d cursor:(id)cursor additionalInfo:(id)info completionHandler:(id)handler
{
  dCopy = d;
  cursorCopy = cursor;
  infoCopy = info;
  handlerCopy = handler;
  v75[0] = 0;
  v15 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:v75];
  v16 = v75[0];
  if (v15)
  {
    scope = self->_scope;
    if (scope)
    {
      scopeIdentifier = [(CPLEngineScope *)scope scopeIdentifier];
      v19 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:scopeIdentifier];

      if (v19)
      {
        v44 = v16;
        v20 = infoCopy;
        v21 = dCopy;
        scopeIdentifier2 = [(CPLEngineScope *)self->_scope scopeIdentifier];
        controller = [(CPLCloudKitTransportTask *)self controller];
        v23 = [controller zoneIdentificationForCloudKitScope:v19 engineScope:self->_scope];

        v48 = v23;
        if ([v23 supportsDownloadOfRecordClass:self->_queriedClass])
        {
          v43 = cursorCopy;
          if (qword_1002C50D8 != -1)
          {
            sub_1001997E4();
          }

          dCopy = v21;
          v46 = v19;
          v24 = qword_1002C50D0;
          infoCopy = v20;
          v25 = sub_100043240(self->_queriedClass, v20);
          v26 = [v24 objectForKeyedSubscript:v25];

          if (v26)
          {
            v27 = v26;
            v16 = v44;
          }

          else
          {
            v29 = CKRecordTypeForCPLRecordChangeClass(self->_queriedClass);
            v30 = [CPLCloudKitQueryOptions alloc];
            v31 = [NSPredicate predicateWithFormat:@"type = %@", v29];
            v27 = [(CPLCloudKitQueryOptions *)v30 initWithRecordType:@"CPLRecordByType" predicate:v31 resultsLimit:200];

            v16 = v44;
            if (!v27)
            {
              sub_10019980C(&self->_queriedClass, a2, self);
            }
          }

          cursor = self->_cursor;
          v33 = [CKQueryOperation alloc];
          if (cursor)
          {
            queryCursor = [(CPLCKQueryCursor *)self->_cursor queryCursor];
            v35 = [v33 initWithCursor:queryCursor];
          }

          else
          {
            queryCursor = [(CPLCloudKitQueryOptions *)v27 query];
            v35 = [v33 initWithQuery:queryCursor];
          }

          v36 = v35;

          zoneID = [v46 zoneID];
          [v36 setZoneID:zoneID];

          [v36 setDesiredKeys:0];
          ckAssetProperties = [(objc_class *)self->_queriedClass ckAssetProperties];
          [v36 setShouldFetchAssetContent:{objc_msgSend(ckAssetProperties, "count") != 0}];
          v45 = v27;
          resultsLimit = [(CPLCloudKitQueryOptions *)v27 resultsLimit];
          if (resultsLimit >= 1)
          {
            [v36 setResultsLimit:resultsLimit];
          }

          if (!resultsLimit)
          {
            resultsLimit = 2000;
          }

          [v36 setFetchAllResults:1];
          v73[0] = 0;
          v73[1] = v73;
          v73[2] = 0x3032000000;
          v73[3] = sub_1000043F0;
          v73[4] = sub_1000052DC;
          v74 = objc_alloc_init(CPLChangeBatch);
          v72[0] = 0;
          v72[1] = v72;
          v72[2] = 0x2020000000;
          v72[3] = 0;
          v70[0] = 0;
          v70[1] = v70;
          v70[2] = 0x2020000000;
          v71 = 0;
          v62[0] = _NSConcreteStackBlock;
          v62[1] = 3221225472;
          v62[2] = sub_1000432E4;
          v62[3] = &unk_100274120;
          v66 = v70;
          v67 = v72;
          v62[4] = self;
          v69 = resultsLimit;
          v63 = scopeIdentifier2;
          v64 = dCopy;
          v65 = v48;
          v68 = v73;
          [v36 setRecordMatchedBlock:v62];
          v58[0] = _NSConcreteStackBlock;
          v58[1] = 3221225472;
          v58[2] = sub_10019934C;
          v58[3] = &unk_100274148;
          v58[4] = self;
          v60 = v73;
          v39 = infoCopy;
          v59 = v39;
          v61 = v72;
          v55[0] = _NSConcreteStackBlock;
          v55[1] = 3221225472;
          v55[2] = sub_100199488;
          v55[3] = &unk_100274170;
          v57 = v70;
          v55[4] = self;
          v40 = objc_retainBlock(v58);
          v56 = v40;
          [v36 setQueryCursorFetchedBlock:v55];
          v19 = v46;
          v49[0] = _NSConcreteStackBlock;
          v49[1] = 3221225472;
          v49[2] = sub_1000436C0;
          v49[3] = &unk_1002741C0;
          v53 = v70;
          v49[4] = self;
          v54 = v73;
          v41 = v40;
          v51 = v41;
          v50 = v39;
          v52 = handlerCopy;
          [v36 setQueryCompletionBlock:v49];
          [(CPLCloudKitTransportTask *)self launchOperation:v36 type:CPLCloudKitOperationTypeForScope(v46) withContext:0];

          _Block_object_dispose(v70, 8);
          _Block_object_dispose(v72, 8);
          _Block_object_dispose(v73, 8);

          cursorCopy = v43;
          v28 = scopeIdentifier2;
        }

        else
        {
          sub_1001996E4(&self->_queriedClass, v23, handlerCopy);
          v28 = scopeIdentifier2;
          dCopy = v21;
          infoCopy = v20;
          v16 = v44;
        }
      }

      else
      {
        v28 = [CPLErrors cplErrorWithCode:80 description:@"Missing required zone"];
        (*(handlerCopy + 2))(handlerCopy, v28);
      }
    }

    else
    {
      v19 = [CPLErrors cplErrorWithCode:80 description:@"Missing required scope"];
      (*(handlerCopy + 2))(handlerCopy, v19);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, v16);
  }
}

@end