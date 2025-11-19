@interface ICUTType
+ (id)typeWithIdentifier:(id)a3;
@end

@implementation ICUTType

+ (id)typeWithIdentifier:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v3];
    if (!v4)
    {
      v4 = [MEMORY[0x277CE1CB8] exportedTypeWithIdentifier:v3];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end