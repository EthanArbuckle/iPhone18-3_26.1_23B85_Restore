@interface FCKeyValueStore
@end

@implementation FCKeyValueStore

void __57__FCKeyValueStore_FRRingBufferContainer__setRingBuffers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 dictionary];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

@end