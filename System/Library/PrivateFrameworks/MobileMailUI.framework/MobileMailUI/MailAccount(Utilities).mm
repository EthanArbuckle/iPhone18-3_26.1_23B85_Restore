@interface MailAccount(Utilities)
+ (id)accountImageForAccount:()Utilities;
@end

@implementation MailAccount(Utilities)

+ (id)accountImageForAccount:()Utilities
{
  v3 = a3;
  if (!accountImageForAccount____accountIcons)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = accountImageForAccount____accountIcons;
    accountImageForAccount____accountIcons = v4;
  }

  iconString = [v3 iconString];
  null = [accountImageForAccount____accountIcons objectForKey:iconString];
  if (!null)
  {
    if (!accountImageForAccount__bundle)
    {
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = accountImageForAccount__bundle;
      accountImageForAccount__bundle = v8;
    }

    v10 = [MEMORY[0x277D755B8] imageNamed:iconString inBundle:? compatibleWithTraitCollection:?];
    null = [v10 _applicationIconImageForFormat:0 precomposed:1];
    if (!null)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    [accountImageForAccount____accountIcons setObject:null forKey:iconString];
  }

  null2 = [MEMORY[0x277CBEB68] null];

  if (null2 == null)
  {

    null = 0;
  }

  return null;
}

@end