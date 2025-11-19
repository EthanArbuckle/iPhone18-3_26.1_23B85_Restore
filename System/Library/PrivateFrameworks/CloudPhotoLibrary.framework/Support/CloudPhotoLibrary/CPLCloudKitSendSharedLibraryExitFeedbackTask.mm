@interface CPLCloudKitSendSharedLibraryExitFeedbackTask
- (CPLCloudKitSendSharedLibraryExitFeedbackTask)initWithController:(id)a3 sourceRecordIDs:(id)a4 destinationRecordIDs:(id)a5 moveError:(id)a6 operationID:(id)a7 moveBatchID:(id)a8 exitZoneID:(id)a9 scope:(id)a10 completionHandler:(id)a11;
- (id)_itemErrorFromError:(id)a3 forID:(id)a4;
- (void)runOperations;
@end

@implementation CPLCloudKitSendSharedLibraryExitFeedbackTask

- (CPLCloudKitSendSharedLibraryExitFeedbackTask)initWithController:(id)a3 sourceRecordIDs:(id)a4 destinationRecordIDs:(id)a5 moveError:(id)a6 operationID:(id)a7 moveBatchID:(id)a8 exitZoneID:(id)a9 scope:(id)a10 completionHandler:(id)a11
{
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v26 = a7;
  v25 = a8;
  v24 = a9;
  v23 = a10;
  v18 = a11;
  v30.receiver = self;
  v30.super_class = CPLCloudKitSendSharedLibraryExitFeedbackTask;
  v19 = [(CPLCloudKitTransportTask *)&v30 initWithController:a3];
  if (v19)
  {
    v20 = [v18 copy];
    completionHandler = v19->_completionHandler;
    v19->_completionHandler = v20;

    objc_storeStrong(&v19->_sourceRecordIDs, a4);
    objc_storeStrong(&v19->_destinationRecordIDs, a5);
    objc_storeStrong(&v19->_moveError, a6);
    objc_storeStrong(&v19->_operationID, a7);
    objc_storeStrong(&v19->_moveBatchID, a8);
    objc_storeStrong(&v19->_scope, a10);
    objc_storeStrong(&v19->_exitZoneID, a9);
  }

  return v19;
}

- (id)_itemErrorFromError:(id)a3 forID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [v5 domain];
    v8 = [v7 isEqualToString:CKErrorDomain];

    if ((v8 & 1) == 0 || [v5 code] != 2)
    {
      v13 = v5;
      goto LABEL_8;
    }

    v9 = [v5 userInfo];
    v10 = [v9 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    if (v10)
    {
      v11 = [v5 userInfo];
      v12 = [v11 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
      v13 = [v12 objectForKeyedSubscript:v6];

      goto LABEL_8;
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)runOperations
{
  v15 = 0;
  v3 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v15];
  v4 = v15;
  if (v3)
  {
    v5 = objc_alloc_init(NSMutableArray);
    sourceRecordIDs = self->_sourceRecordIDs;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000B2B48;
    v13[3] = &unk_1002770C0;
    v13[4] = self;
    v14 = v5;
    v7 = v5;
    [(NSArray *)sourceRecordIDs enumerateObjectsUsingBlock:v13];
    operationID = self->_operationID;
    moveBatchID = self->_moveBatchID;
    exitZoneID = self->_exitZoneID;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000B2D50;
    v12[3] = &unk_100273958;
    v12[4] = self;
    v11 = [CPLCKPhotosSharedLibraryOperation sendExitMoveBatchFeedbackWithMoveBatchOperationID:operationID moveBatchID:moveBatchID exitZoneID:exitZoneID feedbackItems:v7 completionHandler:v12];
    [(CPLCloudKitTransportTask *)self launchOperation:v11 type:CPLCloudKitOperationTypeForScope(self->_scope) withContext:0];
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

@end