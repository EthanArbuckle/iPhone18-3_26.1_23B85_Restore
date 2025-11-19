@interface CPLCloudKitCopyTask
- (CPLCloudKitCopyHelper)helper;
- (CPLCloudKitCopyTask)initWithController:(id)a3 sourceRecordsWithIDs:(id)a4 followRemapping:(BOOL)a5 sourceType:(int64_t)a6 destinationRecordIDs:(id)a7 destinationType:(int64_t)a8 helper:(id)a9 completionHandler:(id)a10;
- (CPLCloudKitCopyTask)initWithController:(id)a3 sourceRecordsWithIDs:(id)a4 sourceType:(int64_t)a5 destinationRecordIDs:(id)a6 destinationType:(int64_t)a7 completionHandler:(id)a8;
- (void)runOperations;
@end

@implementation CPLCloudKitCopyTask

- (CPLCloudKitCopyTask)initWithController:(id)a3 sourceRecordsWithIDs:(id)a4 followRemapping:(BOOL)a5 sourceType:(int64_t)a6 destinationRecordIDs:(id)a7 destinationType:(int64_t)a8 helper:(id)a9 completionHandler:(id)a10
{
  v16 = a4;
  v17 = a7;
  v18 = a9;
  v19 = a10;
  v28.receiver = self;
  v28.super_class = CPLCloudKitCopyTask;
  v20 = [(CPLCloudKitTransportTask *)&v28 initWithController:a3];
  if (v20)
  {
    v21 = [v16 copy];
    sourceRecordIDs = v20->_sourceRecordIDs;
    v20->_sourceRecordIDs = v21;

    v20->_followRemapping = a5;
    v20->_sourceType = a6;
    v23 = [v17 copy];
    destinationRecordIDs = v20->_destinationRecordIDs;
    v20->_destinationRecordIDs = v23;

    v20->_destinationType = a8;
    objc_storeStrong(&v20->_helper, a9);
    v25 = [v19 copy];
    completionHandler = v20->_completionHandler;
    v20->_completionHandler = v25;
  }

  return v20;
}

- (CPLCloudKitCopyTask)initWithController:(id)a3 sourceRecordsWithIDs:(id)a4 sourceType:(int64_t)a5 destinationRecordIDs:(id)a6 destinationType:(int64_t)a7 completionHandler:(id)a8
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10006636C;
  v17[3] = &unk_100272F88;
  v18 = a8;
  v14 = v18;
  v15 = [(CPLCloudKitCopyTask *)self initWithController:a3 sourceRecordsWithIDs:a4 followRemapping:0 sourceType:a5 destinationRecordIDs:a6 destinationType:a7 helper:0 completionHandler:v17];

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
  v8 = [(CPLCloudKitCopyTask *)self helper];
  [(CPLCloudKitTransportTask *)self copyRecordsWithIDs:sourceRecordIDs followRemapping:followRemapping sourceType:sourceType destinationRecordIDs:destinationRecordIDs destinationType:destinationType helper:v8 completionHandler:self->_completionHandler];
}

@end