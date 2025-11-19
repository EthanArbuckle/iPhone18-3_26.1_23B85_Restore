@interface NSDictionary(NumberLookup)
- (id)objectForInt:()NumberLookup;
@end

@implementation NSDictionary(NumberLookup)

- (id)objectForInt:()NumberLookup
{
  v2 = [MEMORY[0x277CCABB0] numberWithInt:?];
  if (v2)
  {
    v3 = [a1 objectForKeyedSubscript:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end