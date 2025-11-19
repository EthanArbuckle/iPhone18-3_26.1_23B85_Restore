@interface NSIndexPath(DDExtensions)
- (__CFString)dd_stringValue;
@end

@implementation NSIndexPath(DDExtensions)

- (__CFString)dd_stringValue
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [a1 length];
  if (v2)
  {
    if (v2 == 2)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu/%lu", objc_msgSend(a1, "indexAtPosition:", 0), objc_msgSend(a1, "indexAtPosition:", 1)];
    }

    else if (v2 == 1)
    {
      v3 = [a1 indexAtPosition:0];
      v14[32] = 0;
      v4 = 31;
      do
      {
        v14[v4] = v3 % 0xA + 48;
        v6 = v4-- != 0;
        if (v3 < 0xA)
        {
          break;
        }

        v3 /= 0xAuLL;
      }

      while (v6);
      v7 = [MEMORY[0x277CCACA8] stringWithCString:&v14[v4 + 1] encoding:4];
    }

    else
    {
      v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
      if ([a1 length])
      {
        v9 = 0;
        do
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(a1, "indexAtPosition:", v9)];
          [v8 addObject:v10];

          ++v9;
        }

        while (v9 < [a1 length]);
      }

      v11 = [v8 componentsJoinedByString:@"/"];

      v7 = v11;
    }
  }

  else
  {
    v7 = &stru_282C1E0A8;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

@end