@interface MFNewcastleAuthScheme
+ (void)load;
- (BOOL)canAuthenticateAccountClass:(Class)a3 connection:(id)a4;
@end

@implementation MFNewcastleAuthScheme

+ (void)load
{
  if (![MEMORY[0x277D28408] schemeWithName:@"ATOKEN"])
  {
    v3 = MEMORY[0x277D28408];

    [v3 registerSchemeClass:a1];
  }
}

- (BOOL)canAuthenticateAccountClass:(Class)a3 connection:(id)a4
{
  if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = [(objc_class *)a3 isSubclassOfClass:objc_opt_class()];
  }

  v10.receiver = self;
  v10.super_class = MFNewcastleAuthScheme;
  if ([(MFAuthScheme *)&v10 canAuthenticateAccountClass:a3 connection:a4])
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return 0;
  }

  else
  {
    return [a4 loginDisabled] ^ 1;
  }
}

@end