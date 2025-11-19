@interface NSRegularExpression(ITK)
+ (id)itk_regexForSearchStrings:()ITK;
@end

@implementation NSRegularExpression(ITK)

+ (id)itk_regexForSearchStrings:()ITK
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
    objc_msgSend(v4, "appendString:", @"(");
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [MEMORY[0x277CCAC68] escapedPatternForString:*(*(&v14 + 1) + 8 * i)];
          [v4 appendString:v10];

          [v4 appendString:@"|"];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    if ([v4 length])
    {
      [v4 replaceCharactersInRange:objc_msgSend(v4 withString:{"length") - 1, 1, &stru_28670F9B0}];
    }

    [v4 appendString:@""]);
    v13 = 0;
    v11 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:v4 options:1 error:&v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end