@interface CPLCloudKitSetupTask
- (CPLCloudKitSetupTask)initWithController:(id)controller updateDisabledFeatures:(BOOL)features completionHandler:(id)handler;
- (void)fetchBoundaryKey;
- (void)fetchDerivativesFilter;
- (void)fetchDisabledFeatures;
- (void)fetchUserRecord;
@end

@implementation CPLCloudKitSetupTask

- (CPLCloudKitSetupTask)initWithController:(id)controller updateDisabledFeatures:(BOOL)features completionHandler:(id)handler
{
  handlerCopy = handler;
  v13.receiver = self;
  v13.super_class = CPLCloudKitSetupTask;
  v9 = [(CPLCloudKitBaseSetupTask *)&v13 initWithController:controller];
  if (v9)
  {
    v10 = [handlerCopy copy];
    completionHandler = v9->_completionHandler;
    v9->_completionHandler = v10;

    v9->_shouldUpdateDisabledFeatures = features;
  }

  return v9;
}

- (void)fetchDisabledFeatures
{
  v8 = 0;
  v3 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v8];
  v4 = v8;
  if (v3)
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 arrayForKey:@"CPLDisabledFeatures"];

    if (v6)
    {
      sub_100199140(_CPLSilentLogging, v6, self);
    }

    else
    {
      sub_100199248(_CPLSilentLogging, &v7, &self->super.super.super.isa);
    }
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

- (void)fetchDerivativesFilter
{
  v7 = 0;
  v3 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v7];
  v4 = v7;
  if (v3)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100041974;
    v6[3] = &unk_100273FF0;
    v6[4] = self;
    v5 = [CPLCKResourceDownloadOperation fetchDerivativesUploadConfigurationWithCompletionBlock:v6];
    [(CPLCloudKitTransportTask *)self launchOperation:v5 type:1 withContext:0];
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

- (void)fetchUserRecord
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100041BE0;
  v2[3] = &unk_100274018;
  v2[4] = self;
  [(CPLCloudKitTransportTask *)self fetchUserRecordIDFetchWithCompletionHandler:v2];
}

- (void)fetchBoundaryKey
{
  fingerprintContext = [(CPLCloudKitTransportTask *)self fingerprintContext];
  if (fingerprintContext)
  {
    v24 = 0;
    v4 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v24];
    v5 = v24;
    if (v4)
    {
      [NSProgress progressWithTotalUnitCount:1];
      v22[0] = 0;
      v22[1] = v22;
      v22[2] = 0x2020000000;
      v23 = 0;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100041F50;
      v19[3] = &unk_100274068;
      v19[4] = self;
      v6 = v21 = v22;
      v20 = v6;
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_1000420C4;
      v17 = &unk_100271E98;
      v7 = objc_retainBlock(v19);
      v18 = v7;
      [v6 setCancellationHandler:&v14];
      controller = [(CPLCloudKitTransportTask *)self controller];
      libraryIdentifier = [controller libraryIdentifier];
      v10 = libraryIdentifier;
      if (!libraryIdentifier)
      {
        controller2 = [(CPLCloudKitTransportTask *)self controller];
        v10 = [objc_opt_class() description];
      }

      v25[0] = v10;
      v25[1] = @"Setup";
      v11 = [NSArray arrayWithObjects:v25 count:2, controller2, v14, v15, v16, v17];
      [fingerprintContext refreshBoundaryKeyWithSource:v11 completionHandler:v7];

      if (!libraryIdentifier)
      {
      }

      [(CPLCloudKitTransportTask *)self dispatchCallbackOperation:@"Fetching boundary key" progress:v6];
      _Block_object_dispose(v22, 8);
    }

    else
    {
      (*(self->_completionHandler + 2))();
    }
  }

  else
  {
    [(CPLCloudKitSetupTask *)self fetchUserRecord];
  }
}

@end