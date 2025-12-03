@interface NSMutableDictionary(HFItemAdditions)
- (void)hf_setMinimumDisplayPriority:()HFItemAdditions;
@end

@implementation NSMutableDictionary(HFItemAdditions)

- (void)hf_setMinimumDisplayPriority:()HFItemAdditions
{
  v5 = [self objectForKeyedSubscript:@"priority"];
  v6 = v5;
  if (!v5)
  {
    v5 = &unk_282525308;
  }

  integerValue = [v5 integerValue];

  if (integerValue <= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = integerValue;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  [self setObject:v9 forKeyedSubscript:@"priority"];
}

@end