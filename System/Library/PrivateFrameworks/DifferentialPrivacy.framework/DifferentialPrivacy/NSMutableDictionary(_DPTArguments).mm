@interface NSMutableDictionary(_DPTArguments)
- (void)dp_addBoolForKey:()_DPTArguments;
- (void)dp_addStringForKey:()_DPTArguments;
@end

@implementation NSMutableDictionary(_DPTArguments)

- (void)dp_addStringForKey:()_DPTArguments
{
  v6 = a3;
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v4 stringForKey:v6];

  if (v5)
  {
    [a1 setObject:v5 forKeyedSubscript:v6];
  }
}

- (void)dp_addBoolForKey:()_DPTArguments
{
  v4 = MEMORY[0x277CBEBD0];
  v5 = a3;
  v6 = [v4 standardUserDefaults];
  v7 = [v6 BOOLForKey:v5];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  [a1 setObject:v8 forKeyedSubscript:v5];
}

@end