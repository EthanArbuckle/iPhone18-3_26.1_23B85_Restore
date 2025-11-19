@interface DPRenyiDP
@end

@implementation DPRenyiDP

void __27___DPRenyiDP_defaultAlphas__block_invoke()
{
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:49];
  for (i = 2; i != 51; ++i)
  {
    v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
    [v4 addObject:v1];
  }

  v2 = [v4 copy];
  v3 = kDefaultAlphas;
  kDefaultAlphas = v2;
}

@end