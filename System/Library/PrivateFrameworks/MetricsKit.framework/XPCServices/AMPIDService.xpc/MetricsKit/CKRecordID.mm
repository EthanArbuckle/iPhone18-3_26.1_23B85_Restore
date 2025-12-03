@interface CKRecordID
- (id)mt_syncedFileName;
- (id)mt_syncingFileName;
@end

@implementation CKRecordID

- (id)mt_syncingFileName
{
  recordName = [(CKRecordID *)self recordName];
  v3 = [recordName stringByAppendingString:@".local"];

  return v3;
}

- (id)mt_syncedFileName
{
  recordName = [(CKRecordID *)self recordName];
  v3 = [recordName stringByAppendingString:@".cloud"];

  return v3;
}

@end