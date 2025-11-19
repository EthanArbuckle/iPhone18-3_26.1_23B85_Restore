@interface CKRecordZone
+ (id)chsh_transactionRecordZone;
@end

@implementation CKRecordZone

+ (id)chsh_transactionRecordZone
{
  v2 = [[CKRecordZone alloc] initWithZoneName:@"Transactions"];

  return v2;
}

@end