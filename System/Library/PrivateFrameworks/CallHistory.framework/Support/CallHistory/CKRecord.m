@interface CKRecord
+ (id)chsh_transactionRecordWithRecordID:(id)a3;
+ (id)chsh_transactionRecordWithZoneID:(id)a3;
@end

@implementation CKRecord

+ (id)chsh_transactionRecordWithRecordID:(id)a3
{
  v3 = a3;
  v4 = [[CKRecord alloc] initWithRecordType:@"Transaction" recordID:v3];

  return v4;
}

+ (id)chsh_transactionRecordWithZoneID:(id)a3
{
  v3 = a3;
  v4 = [[CKRecord alloc] initWithRecordType:@"Transaction" zoneID:v3];

  return v4;
}

@end