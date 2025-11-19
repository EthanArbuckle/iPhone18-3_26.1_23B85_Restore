@interface HKClinicalNoteSorter
+ (int)sortOrderForType:(id)a3;
@end

@implementation HKClinicalNoteSorter

+ (int)sortOrderForType:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (*MEMORY[0x277CE1E08] == v3)
  {
    v5 = 0;
  }

  else if (*MEMORY[0x277CE1DA0] == v3)
  {
    v5 = 1;
  }

  else if (*MEMORY[0x277CE1E50] == v3)
  {
    v5 = 2;
  }

  else if (*MEMORY[0x277CE1E20] == v3)
  {
    v5 = 3;
  }

  else if ([v3 conformsToType:*MEMORY[0x277CE1DB0]])
  {
    v5 = 4;
  }

  else
  {
    v5 = 5;
  }

  return v5;
}

@end