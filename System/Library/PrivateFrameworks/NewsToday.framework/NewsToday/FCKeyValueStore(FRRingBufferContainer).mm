@interface FCKeyValueStore(FRRingBufferContainer)
- (FRRingBuffer)ringBufferForKey:()FRRingBufferContainer;
- (FRRingBuffer)ringBufferForKey:()FRRingBufferContainer capacity:;
- (double)maxForKey:()FRRingBufferContainer;
- (double)minForKey:()FRRingBufferContainer;
- (uint64_t)setRingBuffers:()FRRingBufferContainer;
@end

@implementation FCKeyValueStore(FRRingBufferContainer)

- (FRRingBuffer)ringBufferForKey:()FRRingBufferContainer capacity:
{
  v6 = a3;
  objc_opt_class();
  v7 = [self objectForKeyedSubscript:v6];

  v8 = FCDynamicCast();

  v9 = [[FRRingBuffer alloc] initWithCapacity:a4 dictionary:v8];

  return v9;
}

- (FRRingBuffer)ringBufferForKey:()FRRingBufferContainer
{
  v4 = a3;
  objc_opt_class();
  v5 = [self objectForKeyedSubscript:v4];

  v6 = FCDynamicCast();

  v7 = [[FRRingBuffer alloc] initWithCapacity:75 dictionary:v6];

  return v7;
}

- (uint64_t)setRingBuffers:()FRRingBufferContainer
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__FCKeyValueStore_FRRingBufferContainer__setRingBuffers___block_invoke;
  v4[3] = &unk_279983998;
  v4[4] = self;
  return [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

- (double)minForKey:()FRRingBufferContainer
{
  v4 = a3;
  objc_opt_class();
  v5 = [self objectForKeyedSubscript:v4];

  v6 = FCDynamicCast();

  objc_opt_class();
  v7 = [v6 objectForKeyedSubscript:@"Min"];
  v8 = FCDynamicCast();

  if (v8)
  {
    [v8 doubleValue];
    v10 = v9;
  }

  else
  {
    v10 = 1.79769313e308;
  }

  return v10;
}

- (double)maxForKey:()FRRingBufferContainer
{
  v4 = a3;
  objc_opt_class();
  v5 = [self objectForKeyedSubscript:v4];

  v6 = FCDynamicCast();

  objc_opt_class();
  v7 = [v6 objectForKeyedSubscript:@"Max"];
  v8 = FCDynamicCast();

  if (v8)
  {
    [v8 doubleValue];
    v10 = v9;
  }

  else
  {
    v10 = -1.79769313e308;
  }

  return v10;
}

@end