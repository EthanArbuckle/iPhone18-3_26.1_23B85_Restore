@interface NSDictionary(NPKRelevancy)
+ (id)npkRelevancyTupleWithUniqueID:()NPKRelevancy relevantText:shouldSuppressLiveActivity:;
- (uint64_t)npkRelevancyShouldSuppressLiveActivity;
@end

@implementation NSDictionary(NPKRelevancy)

+ (id)npkRelevancyTupleWithUniqueID:()NPKRelevancy relevantText:shouldSuppressLiveActivity:
{
  v7 = a3;
  v8 = a4;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v10 = dictionary;
  if (v7)
  {
    [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x277D38720]];
  }

  if (v8)
  {
    [v10 setObject:v8 forKeyedSubscript:*MEMORY[0x277D38708]];
  }

  if (a5)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v10 setObject:v11 forKeyedSubscript:*MEMORY[0x277D38710]];
  }

  v12 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v10];

  return v12;
}

- (uint64_t)npkRelevancyShouldSuppressLiveActivity
{
  v1 = [self objectForKeyedSubscript:*MEMORY[0x277D38710]];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

@end