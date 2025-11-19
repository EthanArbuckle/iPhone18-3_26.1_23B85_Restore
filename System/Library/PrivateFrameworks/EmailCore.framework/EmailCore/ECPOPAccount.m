@interface ECPOPAccount
- (BOOL)daysAfterDownloadToDeleteMessagesFromServerIsSet;
- (BOOL)hasNotFinishedFirstTimeSync;
- (int64_t)bigMessageWarningSize;
- (int64_t)daysAfterDownloadToDeleteMessagesFromServer;
- (int64_t)deletionPolicy;
- (void)setBigMessageWarningSize:(int64_t)a3;
- (void)setDaysAfterDownloadToDeleteMessagesFromServer:(int64_t)a3;
- (void)setDeletionPolicy:(int64_t)a3;
@end

@implementation ECPOPAccount

- (int64_t)bigMessageWarningSize
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"BigMessageWarningSize"];
  v4 = [v3 integerValue];

  return v4;
}

- (void)setBigMessageWarningSize:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [ECAccount setDataClassProperty:"setDataClassProperty:forKey:" forKey:?];
}

- (int64_t)daysAfterDownloadToDeleteMessagesFromServer
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"DaysAfterDownloadToDeleteMessagesFromServer"];
  v4 = [v3 integerValue];

  return v4;
}

- (void)setDaysAfterDownloadToDeleteMessagesFromServer:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [ECAccount setDataClassProperty:"setDataClassProperty:forKey:" forKey:?];
}

- (BOOL)daysAfterDownloadToDeleteMessagesFromServerIsSet
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"DaysAfterDownloadToDeleteMessagesFromServer"];
  v4 = v3 != 0;

  return v4;
}

- (int64_t)deletionPolicy
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"DeletionPolicy"];
  v4 = [v3 integerValue];

  return v4;
}

- (void)setDeletionPolicy:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [ECAccount setDataClassProperty:"setDataClassProperty:forKey:" forKey:?];
}

- (BOOL)hasNotFinishedFirstTimeSync
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"HasNotFinishedFirstTimeSync"];
  v4 = [v3 BOOLValue];

  return v4;
}

@end