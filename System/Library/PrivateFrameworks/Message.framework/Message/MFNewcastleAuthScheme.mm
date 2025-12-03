@interface MFNewcastleAuthScheme
+ (void)initialize;
- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection;
@end

@implementation MFNewcastleAuthScheme

+ (void)initialize
{
  v3 = [MEMORY[0x1E699B208] schemeWithName:@"ATOKEN2"];

  if (!v3)
  {
    v4 = MEMORY[0x1E699B208];

    [v4 registerSchemeClass:self];
  }
}

- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection
{
  connectionCopy = connection;
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
  if ((v7 & [(ECAuthenticationScheme *)&v10 canAuthenticateAccountClass:class connection:connectionCopy]) == 1)
  {
    v8 = [connectionCopy loginDisabled] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

@end