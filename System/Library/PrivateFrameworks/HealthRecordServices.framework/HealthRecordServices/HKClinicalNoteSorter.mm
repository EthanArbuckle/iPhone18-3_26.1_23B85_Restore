@interface HKClinicalNoteSorter
+ (int)sortOrderForType:(id)type;
@end

@implementation HKClinicalNoteSorter

+ (int)sortOrderForType:(id)type
{
  typeCopy = type;
  v4 = typeCopy;
  if (*MEMORY[0x277CE1E08] == typeCopy)
  {
    v5 = 0;
  }

  else if (*MEMORY[0x277CE1DA0] == typeCopy)
  {
    v5 = 1;
  }

  else if (*MEMORY[0x277CE1E50] == typeCopy)
  {
    v5 = 2;
  }

  else if (*MEMORY[0x277CE1E20] == typeCopy)
  {
    v5 = 3;
  }

  else if ([typeCopy conformsToType:*MEMORY[0x277CE1DB0]])
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