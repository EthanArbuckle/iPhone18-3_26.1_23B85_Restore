@interface NSMutableDictionary(HFItemAdditions)
- (void)hf_setMinimumDisplayPriority:()HFItemAdditions;
@end

@implementation NSMutableDictionary(HFItemAdditions)

- (void)hf_setMinimumDisplayPriority:()HFItemAdditions
{
  v5 = [a1 objectForKeyedSubscript:@"priority"];
  v6 = v5;
  if (!v5)
  {
    v5 = &unk_282525308;
  }

  v7 = [v5 integerValue];

  if (v7 <= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v7;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  [a1 setObject:v9 forKeyedSubscript:@"priority"];
}

@end