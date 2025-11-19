@interface MPCPlaybackEngineEventFlattenPayload
@end

@implementation MPCPlaybackEngineEventFlattenPayload

void ___MPCPlaybackEngineEventFlattenPayload_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = [*(a1 + 32) arrayByAddingObject:a2];
  v6 = _NSIsNSDictionary();
  v7 = *(a1 + 40);
  if (v6)
  {
    _MPCPlaybackEngineEventFlattenPayload(v9, v7, v5);
  }

  else
  {
    v8 = [v5 componentsJoinedByString:@"."];
    [v7 setObject:v9 forKeyedSubscript:v8];
  }
}

@end