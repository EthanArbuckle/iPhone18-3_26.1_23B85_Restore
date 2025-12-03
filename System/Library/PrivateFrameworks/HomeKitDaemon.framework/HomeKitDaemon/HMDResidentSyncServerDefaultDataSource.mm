@interface HMDResidentSyncServerDefaultDataSource
- (int64_t)maximumTransactionsForSparseUpdate;
- (int64_t)maximumTransactionsForStoreChange;
@end

@implementation HMDResidentSyncServerDefaultDataSource

- (int64_t)maximumTransactionsForStoreChange
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"residentSyncMaximumTransactionsForStoreChange"];
  numberValue = [v3 numberValue];
  integerValue = [numberValue integerValue];

  if (integerValue < 0)
  {
    return 1;
  }

  else
  {
    return integerValue;
  }
}

- (int64_t)maximumTransactionsForSparseUpdate
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"residentSyncMaximumTransactionsForSparseUpdate"];
  numberValue = [v3 numberValue];
  integerValue = [numberValue integerValue];

  return integerValue;
}

@end