@interface NSAttributedString(NSAttributedString_EmailCore)
+ (id)ec_emailAttributedStringWithString:()NSAttributedString_EmailCore andEmailAddress:;
@end

@implementation NSAttributedString(NSAttributedString_EmailCore)

+ (id)ec_emailAttributedStringWithString:()NSAttributedString_EmailCore andEmailAddress:
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CCA898]);
    v15 = @"ECEmailAddressAttributedStringKey";
    v16[0] = v6;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    if (v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = &stru_284041D88;
    }

    v10 = [v7 initWithString:v9 attributes:v8];
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CCA898]);
    if (v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = &stru_284041D88;
    }

    v10 = [v11 initWithString:v12];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

@end