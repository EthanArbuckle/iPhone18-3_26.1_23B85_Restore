@interface NSMutableDictionary(PCCExtension)
- (void)_accumulateKey:()PCCExtension value:;
@end

@implementation NSMutableDictionary(PCCExtension)

- (void)_accumulateKey:()PCCExtension value:
{
  v6 = a3;
  v7 = [self objectForKeyedSubscript:v6];
  v8 = MEMORY[0x277CCABB0];
  v11 = v7;
  if (v7)
  {
    intValue = [v7 intValue];
  }

  else
  {
    intValue = 0;
  }

  v10 = [v8 numberWithLong:intValue + a4];
  [self setObject:v10 forKeyedSubscript:v6];
}

@end