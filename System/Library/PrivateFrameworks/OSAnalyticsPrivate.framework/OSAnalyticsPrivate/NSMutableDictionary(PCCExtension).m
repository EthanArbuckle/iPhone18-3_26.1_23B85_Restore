@interface NSMutableDictionary(PCCExtension)
- (void)_accumulateKey:()PCCExtension value:;
@end

@implementation NSMutableDictionary(PCCExtension)

- (void)_accumulateKey:()PCCExtension value:
{
  v6 = a3;
  v7 = [a1 objectForKeyedSubscript:v6];
  v8 = MEMORY[0x277CCABB0];
  v11 = v7;
  if (v7)
  {
    v9 = [v7 intValue];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v8 numberWithLong:v9 + a4];
  [a1 setObject:v10 forKeyedSubscript:v6];
}

@end