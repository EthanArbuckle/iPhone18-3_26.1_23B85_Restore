@interface ECAccountFactory
+ (id)accountWithSystemAccount:(id)account;
@end

@implementation ECAccountFactory

+ (id)accountWithSystemAccount:(id)account
{
  accountCopy = account;
  v4 = accountCopy;
  if (accountCopy)
  {
    accountType = [accountCopy accountType];
    identifier = [accountType identifier];

    if ([identifier isEqualToString:*MEMORY[0x277CB8C60]])
    {
      v7 = off_27874AF30;
    }

    else if ([identifier isEqualToString:*MEMORY[0x277CB8C00]])
    {
      v7 = off_27874AED8;
    }

    else if ([identifier isEqualToString:*MEMORY[0x277CB8CD8]])
    {
      v7 = off_27874AFA0;
    }

    else
    {
      v9 = [identifier isEqualToString:*MEMORY[0x277CB8CF8]];
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