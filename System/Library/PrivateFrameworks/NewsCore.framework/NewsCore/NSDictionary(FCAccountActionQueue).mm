@interface NSDictionary(FCAccountActionQueue)
- (uint64_t)fc_localDataHint;
@end

@implementation NSDictionary(FCAccountActionQueue)

- (uint64_t)fc_localDataHint
{
  v1 = [self objectForKeyedSubscript:@"FCFileCoordinatedAccountActionQueueLocalDataHintKey"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

@end