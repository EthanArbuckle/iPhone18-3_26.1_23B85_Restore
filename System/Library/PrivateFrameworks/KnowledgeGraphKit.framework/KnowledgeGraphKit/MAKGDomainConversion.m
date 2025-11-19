@interface MAKGDomainConversion
+ (unsigned)maDomainForKGLabel:(id)a3;
@end

@implementation MAKGDomainConversion

+ (unsigned)maDomainForKGLabel:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 lengthOfBytesUsingEncoding:4];
  if ((v4 - 33) >= 0xFFFFFFFFFFFFFFE7)
  {
    v6 = v10 - ((v4 + 16) & 0xFFFFFFFFFFFFFFF0);
    if ([v3 getCString:v6 maxLength:v4 + 1 encoding:4] && !strncmp(v6, "domain_", 7uLL))
    {
      v9 = atoi(v6 + 7);
      if ((v9 - 0x10000) < 0xFFFF0001)
      {
        v5 = -1;
      }

      else
      {
        v5 = v9;
      }
    }

    else
    {
      v5 = -1;
    }
  }

  else
  {
    v5 = -1;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

@end