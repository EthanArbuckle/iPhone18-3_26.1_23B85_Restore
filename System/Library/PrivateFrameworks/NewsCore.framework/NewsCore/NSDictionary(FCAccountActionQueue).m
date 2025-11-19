@interface NSDictionary(FCAccountActionQueue)
- (uint64_t)fc_localDataHint;
@end

@implementation NSDictionary(FCAccountActionQueue)

- (uint64_t)fc_localDataHint
{
  v1 = [a1 objectForKeyedSubscript:@"FCFileCoordinatedAccountActionQueueLocalDataHintKey"];
  v2 = [v1 BOOLValue];

  return v2;
}

@end