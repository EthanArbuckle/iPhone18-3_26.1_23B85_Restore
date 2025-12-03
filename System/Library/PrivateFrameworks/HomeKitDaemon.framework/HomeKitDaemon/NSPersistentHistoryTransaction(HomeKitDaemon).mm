@interface NSPersistentHistoryTransaction(HomeKitDaemon)
- (uint64_t)hmd_transactionAuthor;
@end

@implementation NSPersistentHistoryTransaction(HomeKitDaemon)

- (uint64_t)hmd_transactionAuthor
{
  author = [self author];
  v2 = [HMDCoreDataContextTransactionAuthor contextAuthorWithString:author];

  type = [v2 type];
  return type;
}

@end