@interface CPLCloudKitCopyTask
- (CPLCloudKitCopyHelper)helper;
- (CPLCloudKitCopyTask)initWithController:(id)controller sourceRecordsWithIDs:(id)ds followRemapping:(BOOL)remapping sourceType:(int64_t)type destinationRecordIDs:(id)iDs destinationType:(int64_t)destinationType helper:(id)helper completionHandler:(id)self0;
- (CPLCloudKitCopyTask)initWithController:(id)controller sourceRecordsWithIDs:(id)ds sourceType:(int64_t)type destinationRecordIDs:(id)iDs destinationType:(int64_t)destinationType completionHandler:(id)handler;
- (void)runOperations;
@end

@implementation CPLCloudKitCopyTask

- (CPLCloudKitCopyTask)initWithController:(id)controller sourceRecordsWithIDs:(id)ds followRemapping:(BOOL)remapping sourceType:(int64_t)type destinationRecordIDs:(id)iDs destinationType:(int64_t)destinationType helper:(id)helper completionHandler:(id)self0
{
  dsCopy = ds;
  iDsCopy = iDs;
  helperCopy = helper;
  handlerCopy = handler;
  v28.receiver = self;
  v28.super_class = CPLCloudKitCopyTask;
  v20 = [(CPLCloudKitTransportTask *)&v28 initWithController:controller];
  if (v20)
  {
    v21 = [dsCopy copy];
    sourceRecordIDs = v20->_sourceRecordIDs;
    v20->_sourceRecordIDs = v21;

    v20->_followRemapping = remapping;
    v20->_sourceType = type;
    v23 = [iDsCopy copy];
    destinationRecordIDs = v20->_destinationRecordIDs;
    v20->_destinationRecordIDs = v23;

    v20->_destinationType = destinationType;
    objc_storeStrong(&v20->_helper, helper);
    v25 = [handlerCopy copy];
    completionHandler = v20->_completionHandler;
    v20->_completionHandler = v25;
  }

  return v20;
}

- (CPLCloudKitCopyTask)initWithController:(id)controller sourceRecordsWithIDs:(id)ds sourceType:(int64_t)type destinationRecordIDs:(id)iDs destinationType:(int64_t)destinationType completionHandler:(id)handler
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10006636C;
  v17[3] = &unk_100272F88;
  handlerCopy = handler;
  v14 = handlerCopy;
  v15 = [(CPLCloudKitCopyTask *)self initWithController:controller sourceRecordsWithIDs:ds followRemapping:0 sourceType:type destinationRecordIDs:iDs destinationType:destinationType helper:0 completionHandler:v17];

  return v15;
}

- (CPLCloudKitCopyHelper)helper
{
  if (self->_helper)
  {
    self = self->_helper;
  }

  return self;
}

- (void)runOperations
{
  sourceRecordIDs = self->_sourceRecordIDs;
  followRemapping = self->_followRemapping;
  sourceType = self->_sourceType;
  destinationRecordIDs = self->_destinationRecordIDs;
  destinationType = self->_destinationType;
  helper = [(CPLCloudKitCopyTask *)self helper];
  [(CPLCloudKitTransportTask *)self copyRecordsWithIDs:sourceRecordIDs followRemapping:followRemapping sourceType:sourceType destinationRecordIDs:destinationRecordIDs destinationType:destinationType helper:helper completionHandler:self->_completionHandler];
}

@end