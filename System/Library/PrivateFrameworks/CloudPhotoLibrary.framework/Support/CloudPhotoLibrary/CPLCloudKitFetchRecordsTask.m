@interface CPLCloudKitFetchRecordsTask
- (CPLCloudKitFetchRecordsTask)initWithController:(id)a3 scopedIdentifiers:(id)a4 targetMapping:(id)a5 transportScopeMapping:(id)a6 completionHandler:(id)a7;
- (void)_runOperationsWithCurrentUserID:(id)a3;
- (void)runOperations;
@end

@implementation CPLCloudKitFetchRecordsTask

- (CPLCloudKitFetchRecordsTask)initWithController:(id)a3 scopedIdentifiers:(id)a4 targetMapping:(id)a5 transportScopeMapping:(id)a6 completionHandler:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = CPLCloudKitFetchRecordsTask;
  v17 = [(CPLCloudKitTransportTask *)&v22 initWithController:a3];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_scopedIdentifiers, a4);
    objc_storeStrong(&v18->_targetMapping, a5);
    [(CPLCloudKitTransportTask *)v18 setTransportScopeMapping:v15];
    v19 = [v16 copy];
    completionHandler = v18->_completionHandler;
    v18->_completionHandler = v19;
  }

  return v18;
}

- (void)runOperations
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100099274;
  v2[3] = &unk_100274018;
  v2[4] = self;
  [(CPLCloudKitTransportTask *)self getUserRecordIDFetchIfNecessaryWithCompletionHandler:v2];
}

- (void)_runOperationsWithCurrentUserID:(id)a3
{
  v4 = a3;
  v5 = objc_retainBlock(self->_completionHandler);
  v6 = [(CPLCloudKitTransportTask *)self transportScopeMapping];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100099458;
  v17[3] = &unk_100276820;
  v18 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v19 = v6;
  v20 = self;
  v7 = v6;
  v8 = v18;
  v9 = objc_retainBlock(v17);
  scopedIdentifiers = self->_scopedIdentifiers;
  targetMapping = self->_targetMapping;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10009953C;
  v14[3] = &unk_100276848;
  v15 = v4;
  v16 = v9;
  v12 = v4;
  v13 = v9;
  [(CPLCloudKitTransportTask *)self fetchFullRecordsForScopedIdentifiers:scopedIdentifiers targetMapping:targetMapping postProcessRecord:v14 completionHandler:v5];
}

@end