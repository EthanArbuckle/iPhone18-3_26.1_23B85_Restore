@interface ICUTType
+ (id)typeWithIdentifier:(id)identifier;
@end

@implementation ICUTType

+ (id)typeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v4 = [MEMORY[0x277CE1CB8] typeWithIdentifier:identifierCopy];
    if (!v4)
    {
      v4 = [MEMORY[0x277CE1CB8] exportedTypeWithIdentifier:identifierCopy];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end