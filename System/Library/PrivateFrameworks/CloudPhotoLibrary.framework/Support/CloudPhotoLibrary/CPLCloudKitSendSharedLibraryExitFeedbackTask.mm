@interface CPLCloudKitSendSharedLibraryExitFeedbackTask
- (CPLCloudKitSendSharedLibraryExitFeedbackTask)initWithController:(id)controller sourceRecordIDs:(id)ds destinationRecordIDs:(id)iDs moveError:(id)error operationID:(id)d moveBatchID:(id)iD exitZoneID:(id)zoneID scope:(id)self0 completionHandler:(id)self1;
- (id)_itemErrorFromError:(id)error forID:(id)d;
- (void)runOperations;
@end

@implementation CPLCloudKitSendSharedLibraryExitFeedbackTask

- (CPLCloudKitSendSharedLibraryExitFeedbackTask)initWithController:(id)controller sourceRecordIDs:(id)ds destinationRecordIDs:(id)iDs moveError:(id)error operationID:(id)d moveBatchID:(id)iD exitZoneID:(id)zoneID scope:(id)self0 completionHandler:(id)self1
{
  dsCopy = ds;
  iDsCopy = iDs;
  errorCopy = error;
  dCopy = d;
  iDCopy = iD;
  zoneIDCopy = zoneID;
  scopeCopy = scope;
  handlerCopy = handler;
  v30.receiver = self;
  v30.super_class = CPLCloudKitSendSharedLibraryExitFeedbackTask;
  v19 = [(CPLCloudKitTransportTask *)&v30 initWithController:controller];
  if (v19)
  {
    v20 = [handlerCopy copy];
    completionHandler = v19->_completionHandler;
    v19->_completionHandler = v20;

    objc_storeStrong(&v19->_sourceRecordIDs, ds);
    objc_storeStrong(&v19->_destinationRecordIDs, iDs);
    objc_storeStrong(&v19->_moveError, error);
    objc_storeStrong(&v19->_operationID, d);
    objc_storeStrong(&v19->_moveBatchID, iD);
    objc_storeStrong(&v19->_scope, scope);
    objc_storeStrong(&v19->_exitZoneID, zoneID);
  }

  return v19;
}

- (id)_itemErrorFromError:(id)error forID:(id)d
{
  errorCopy = error;
  dCopy = d;
  if (dCopy)
  {
    domain = [errorCopy domain];
    v8 = [domain isEqualToString:CKErrorDomain];

    if ((v8 & 1) == 0 || [errorCopy code] != 2)
    {
      v13 = errorCopy;
      goto LABEL_8;
    }

    userInfo = [errorCopy userInfo];
    v10 = [userInfo objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    if (v10)
    {
      userInfo2 = [errorCopy userInfo];
      v12 = [userInfo2 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
      v13 = [v12 objectForKeyedSubscript:dCopy];

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