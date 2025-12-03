@interface MFNewcastleAuthScheme
+ (void)load;
- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection;
@end

@implementation MFNewcastleAuthScheme

+ (void)load
{
  if (![MEMORY[0x277D28408] schemeWithName:@"ATOKEN"])
  {
    v3 = MEMORY[0x277D28408];

    [v3 registerSchemeClass:self];
  }
}

- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection
{
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = [(objc_class *)class isSubclassOfClass:objc_opt_class()];
  }

  v10.receiver = self;
  v10.super_class = MFNewcastleAuthScheme;
  if ([(MFAuthScheme *)&v10 canAuthenticateAccountClass:class connection:connection])
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
    return [connection loginDisabled] ^ 1;
  }
}

@end