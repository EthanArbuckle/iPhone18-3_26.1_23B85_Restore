@interface NSMutableDictionary(NumberLookup)
- (void)setObject:()NumberLookup forInt:;
@end

@implementation NSMutableDictionary(NumberLookup)

- (void)setObject:()NumberLookup forInt:
{
  v7 = a3;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:a4];
  if (v6)
  {
    [a1 setObject:v7 forKeyedSubscript:v6];
  }
}

@end