@interface ECAccountFactory
+ (id)accountWithSystemAccount:(id)a3;
@end

@implementation ECAccountFactory

+ (id)accountWithSystemAccount:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accountType];
    v6 = [v5 identifier];

    if ([v6 isEqualToString:*MEMORY[0x277CB8C60]])
    {
      v7 = off_27874AF30;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277CB8C00]])
    {
      v7 = off_27874AED8;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277CB8CD8]])
    {
      v7 = off_27874AFA0;
    }

    else
    {
      v9 = [v6 isEqualToString:*MEMORY[0x277CB8CF8]];
      v7 = off_27874AE20;
      if (v9)
      {
        v7 = off_27874AFC8;
      }
    }

    v8 = [objc_alloc(*v7) initWithSystemAccount:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end