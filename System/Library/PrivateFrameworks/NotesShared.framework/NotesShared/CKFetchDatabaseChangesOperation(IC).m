@interface CKFetchDatabaseChangesOperation(IC)
- (id)ic_loggingValues;
- (uint64_t)ic_removeAllCompletionBlocks;
@end

@implementation CKFetchDatabaseChangesOperation(IC)

- (id)ic_loggingValues
{
  v9.receiver = a1;
  v9.super_class = &off_282788560;
  v2 = objc_msgSendSuper2(&v9, sel_ic_loggingValues);
  v3 = [v2 mutableCopy];

  v4 = [a1 previousServerChangeToken];

  if (v4)
  {
    v5 = [a1 previousServerChangeToken];
    v6 = [v5 data];
    v7 = [v6 base64EncodedStringWithOptions:0];
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
  v3.receiver = a1;
  v3.super_class = &off_282788560;
  objc_msgSendSuper2(&v3, sel_ic_removeAllCompletionBlocks);
  [a1 setRecordZoneWithIDChangedBlock:0];
  [a1 setRecordZoneWithIDWasDeletedBlock:0];
  return [a1 setFetchDatabaseChangesCompletionBlock:0];
}

@end