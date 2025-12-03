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
  [self setObject:v2 forKey:@"isErrorRecovery"];

  return self;
}

- (void)MSASAddNotInterestingKey
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [self setObject:v2 forKey:@"notInteresting"];

  return self;
}

- (void)MSASAddIsLocalChange
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [self setObject:v2 forKey:@"isLocalChange"];

  return self;
}

- (void)MSASAddIsAlbumResetSyncAlbumGUID:()MSASServerSideModel
{
  if (a3)
  {
    [self setObject:a3 forKey:@"isAlbumResetSync"];
  }

  else
  {
    [self removeObjectForKey:@"isAlbumResetSync"];
  }

  return self;
}

- (void)MSASAddIsGlobalResetSync
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [self setObject:v2 forKey:@"isGlobalResetSync"];

  return self;
}

+ (id)MSASDictionaryWithCopyOfDictionary:()MSASServerSideModel
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  dictionary = [v3 dictionary];
  [dictionary addEntriesFromDictionary:v4];

  return dictionary;
}

@end