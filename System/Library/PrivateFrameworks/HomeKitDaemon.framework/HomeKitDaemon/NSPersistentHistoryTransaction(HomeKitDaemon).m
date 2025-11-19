@interface NSPersistentHistoryTransaction(HomeKitDaemon)
- (uint64_t)hmd_transactionAuthor;
@end

@implementation NSPersistentHistoryTransaction(HomeKitDaemon)

- (uint64_t)hmd_transactionAuthor
{
  v1 = [a1 author];
  v2 = [HMDCoreDataContextTransactionAuthor contextAuthorWithString:v1];

  v3 = [v2 type];
  return v3;
}

@end