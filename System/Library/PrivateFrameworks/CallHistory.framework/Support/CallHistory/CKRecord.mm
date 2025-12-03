@interface CKRecord
+ (id)chsh_transactionRecordWithRecordID:(id)d;
+ (id)chsh_transactionRecordWithZoneID:(id)d;
@end

@implementation CKRecord

+ (id)chsh_transactionRecordWithRecordID:(id)d
{
  dCopy = d;
  v4 = [[CKRecord alloc] initWithRecordType:@"Transaction" recordID:dCopy];

  return v4;
}

+ (id)chsh_transactionRecordWithZoneID:(id)d
{
  dCopy = d;
  v4 = [[CKRecord alloc] initWithRecordType:@"Transaction" zoneID:dCopy];

  return v4;
}

@end