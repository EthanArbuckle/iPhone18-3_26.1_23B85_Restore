@interface NSCountedSet
@end

@implementation NSCountedSet

void __83__NSCountedSet_CLSNSCountedSet__enumerateObjectsSortedByCountUsingBlock_ascending___block_invoke(uint64_t a1, void *a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"count";
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v2 numberWithUnsignedInteger:{objc_msgSend(v4, "countForObject:", v5)}];
  v8[1] = @"object";
  v9[0] = v6;
  v9[1] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v3 addObject:v7];
}

@end