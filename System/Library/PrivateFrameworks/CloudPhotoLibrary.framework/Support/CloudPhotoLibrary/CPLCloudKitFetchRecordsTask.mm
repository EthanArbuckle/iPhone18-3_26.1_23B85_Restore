@interface CPLCloudKitFetchRecordsTask
- (CPLCloudKitFetchRecordsTask)initWithController:(id)controller scopedIdentifiers:(id)identifiers targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping completionHandler:(id)handler;
- (void)_runOperationsWithCurrentUserID:(id)d;
- (void)runOperations;
@end

@implementation CPLCloudKitFetchRecordsTask

- (CPLCloudKitFetchRecordsTask)initWithController:(id)controller scopedIdentifiers:(id)identifiers targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  mappingCopy = mapping;
  scopeMappingCopy = scopeMapping;
  handlerCopy = handler;
  v22.receiver = self;
  v22.super_class = CPLCloudKitFetchRecordsTask;
  v17 = [(CPLCloudKitTransportTask *)&v22 initWithController:controller];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_scopedIdentifiers, identifiers);
    objc_storeStrong(&v18->_targetMapping, mapping);
    [(CPLCloudKitTransportTask *)v18 setTransportScopeMapping:scopeMappingCopy];
    v19 = [handlerCopy copy];
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

- (void)_runOperationsWithCurrentUserID:(id)d
{
  dCopy = d;
  v5 = objc_retainBlock(self->_completionHandler);
  transportScopeMapping = [(CPLCloudKitTransportTask *)self transportScopeMapping];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100099458;
  v17[3] = &unk_100276820;
  v18 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(transportScopeMapping, "count")}];
  v19 = transportScopeMapping;
  selfCopy = self;
  v7 = transportScopeMapping;
  v8 = v18;
  v9 = objc_retainBlock(v17);
  scopedIdentifiers = self->_scopedIdentifiers;
  targetMapping = self->_targetMapping;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10009953C;
  v14[3] = &unk_100276848;
  v15 = dCopy;
  v16 = v9;
  v12 = dCopy;
  v13 = v9;
  [(CPLCloudKitTransportTask *)self fetchFullRecordsForScopedIdentifiers:scopedIdentifiers targetMapping:targetMapping postProcessRecord:v14 completionHandler:v5];
}

@end