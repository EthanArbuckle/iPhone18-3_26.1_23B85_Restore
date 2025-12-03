@interface CKRecordID(SyncState)
- (id)mt_syncedFileName;
- (id)mt_syncingFileName;
@end

@implementation CKRecordID(SyncState)

- (id)mt_syncingFileName
{
  recordName = [self recordName];
  v2 = [recordName stringByAppendingString:@".local"];

  return v2;
}

- (id)mt_syncedFileName
{
  recordName = [self recordName];
  v2 = [recordName stringByAppendingString:@".cloud"];

  return v2;
}

@end