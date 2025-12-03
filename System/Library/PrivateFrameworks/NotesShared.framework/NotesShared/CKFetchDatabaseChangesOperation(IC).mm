@interface CKFetchDatabaseChangesOperation(IC)
- (id)ic_loggingValues;
- (uint64_t)ic_removeAllCompletionBlocks;
@end

@implementation CKFetchDatabaseChangesOperation(IC)

- (id)ic_loggingValues
{
  v9.receiver = self;
  v9.super_class = &off_282788560;
  v2 = objc_msgSendSuper2(&v9, sel_ic_loggingValues);
  v3 = [v2 mutableCopy];

  previousServerChangeToken = [self previousServerChangeToken];

  if (previousServerChangeToken)
  {
    previousServerChangeToken2 = [self previousServerChangeToken];
    data = [previousServerChangeToken2 data];
    v7 = [data base64EncodedStringWithOptions:0];
  }

  else
  {
    v7 = @"(none)";
  }

  [v3 setObject:v7 forKeyedSubscript:@"serverChangeToken"];

  return v3;
}

- (uint64_t)ic_removeAllCompletionBlocks
{
  v3.receiver = self;
  v3.super_class = &off_282788560;
  objc_msgSendSuper2(&v3, sel_ic_removeAllCompletionBlocks);
  [self setRecordZoneWithIDChangedBlock:0];
  [self setRecordZoneWithIDWasDeletedBlock:0];
  return [self setFetchDatabaseChangesCompletionBlock:0];
}

@end