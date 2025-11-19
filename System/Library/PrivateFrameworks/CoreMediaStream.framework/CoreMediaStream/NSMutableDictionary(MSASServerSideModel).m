@interface NSMutableDictionary(MSASServerSideModel)
+ (id)MSASDictionaryWithCopyOfDictionary:()MSASServerSideModel;
- (void)MSASAddIsAlbumResetSyncAlbumGUID:()MSASServerSideModel;
- (void)MSASAddIsErrorRecovery;
- (void)MSASAddIsGlobalResetSync;
- (void)MSASAddIsLocalChange;
- (void)MSASAddNotInterestingKey;
@end

@implementation NSMutableDictionary(MSASServerSideModel)

- (void)MSASAddIsErrorRecovery
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [a1 setObject:v2 forKey:@"isErrorRecovery"];

  return a1;
}

- (void)MSASAddNotInterestingKey
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [a1 setObject:v2 forKey:@"notInteresting"];

  return a1;
}

- (void)MSASAddIsLocalChange
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [a1 setObject:v2 forKey:@"isLocalChange"];

  return a1;
}

- (void)MSASAddIsAlbumResetSyncAlbumGUID:()MSASServerSideModel
{
  if (a3)
  {
    [a1 setObject:a3 forKey:@"isAlbumResetSync"];
  }

  else
  {
    [a1 removeObjectForKey:@"isAlbumResetSync"];
  }

  return a1;
}

- (void)MSASAddIsGlobalResetSync
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [a1 setObject:v2 forKey:@"isGlobalResetSync"];

  return a1;
}

+ (id)MSASDictionaryWithCopyOfDictionary:()MSASServerSideModel
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  [v5 addEntriesFromDictionary:v4];

  return v5;
}

@end