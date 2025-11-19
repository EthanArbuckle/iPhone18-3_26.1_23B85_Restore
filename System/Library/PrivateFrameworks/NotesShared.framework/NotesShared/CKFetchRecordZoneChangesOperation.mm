@interface CKFetchRecordZoneChangesOperation
@end

@implementation CKFetchRecordZoneChangesOperation

void __57__CKFetchRecordZoneChangesOperation_IC__ic_loggingValues__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [v5 previousServerChangeToken];

  if (v6)
  {
    v7 = [v5 previousServerChangeToken];
    v8 = [v7 data];
    v9 = [v8 base64EncodedStringWithOptions:0];
  }

  else
  {
    v9 = @"(none)";
  }

  v10 = [v12 ic_loggingDescription];
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"(none)";
  }

  [*(a1 + 32) setObject:v11 forKeyedSubscript:v10];
}

@end