@interface IRReplayEventsContainerMO
- (id)convert;
@end

@implementation IRReplayEventsContainerMO

- (id)convert
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [(IRReplayEventsContainerMO *)self replayEvent];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__IRReplayEventsContainerMO_convert__block_invoke;
  v8[3] = &unk_2797E1498;
  v9 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v8];

  v6 = [[IRReplayEventsContainerDO alloc] initWithReplayEvents:v5];

  return v6;
}

void __36__IRReplayEventsContainerMO_convert__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 convert];
  [v2 addObject:v3];
}

@end