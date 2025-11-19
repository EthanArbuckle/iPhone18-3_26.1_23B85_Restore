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

  v6 = [v3 iconString];
  v7 = [accountImageForAccount____accountIcons objectForKey:v6];
  if (!v7)
  {
    if (!accountImageForAccount__bundle)
    {
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = accountImageForAccount__bundle;
      accountImageForAccount__bundle = v8;
    }

    v10 = [MEMORY[0x277D755B8] imageNamed:v6 inBundle:? compatibleWithTraitCollection:?];
    v7 = [v10 _applicationIconImageForFormat:0 precomposed:1];
    if (!v7)
    {
      v7 = [MEMORY[0x277CBEB68] null];
    }

    [accountImageForAccount____accountIcons setObject:v7 forKey:v6];
  }

  v11 = [MEMORY[0x277CBEB68] null];

  if (v11 == v7)
  {

    v7 = 0;
  }

  return v7;
}

@end