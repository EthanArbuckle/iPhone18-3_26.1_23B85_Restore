@interface ECPOPAccount
- (BOOL)daysAfterDownloadToDeleteMessagesFromServerIsSet;
- (BOOL)hasNotFinishedFirstTimeSync;
- (int64_t)bigMessageWarningSize;
- (int64_t)daysAfterDownloadToDeleteMessagesFromServer;
- (int64_t)deletionPolicy;
- (void)setBigMessageWarningSize:(int64_t)size;
- (void)setDaysAfterDownloadToDeleteMessagesFromServer:(int64_t)server;
- (void)setDeletionPolicy:(int64_t)policy;
@end

@implementation ECPOPAccount

- (int64_t)bigMessageWarningSize
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"BigMessageWarningSize"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setBigMessageWarningSize:(int64_t)size
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:size];
  [ECAccount setDataClassProperty:"setDataClassProperty:forKey:" forKey:?];
}

- (int64_t)daysAfterDownloadToDeleteMessagesFromServer
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"DaysAfterDownloadToDeleteMessagesFromServer"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setDaysAfterDownloadToDeleteMessagesFromServer:(int64_t)server
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:server];
  [ECAccount setDataClassProperty:"setDataClassProperty:forKey:" forKey:?];
}

- (BOOL)daysAfterDownloadToDeleteMessagesFromServerIsSet
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"DaysAfterDownloadToDeleteMessagesFromServer"];
  v4 = v3 != 0;

  return v4;
}

- (int64_t)deletionPolicy
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"DeletionPolicy"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setDeletionPolicy:(int64_t)policy
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:policy];
  [ECAccount setDataClassProperty:"setDataClassProperty:forKey:" forKey:?];
}

- (BOOL)hasNotFinishedFirstTimeSync
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"HasNotFinishedFirstTimeSync"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

@end