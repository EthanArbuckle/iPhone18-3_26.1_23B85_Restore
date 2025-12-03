@interface MFAPOPAuthScheme
+ (void)initialize;
- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection;
- (BOOL)supportsAccountType:(id)type;
- (Class)connectionClassForAccountClass:(Class)class;
@end

@implementation MFAPOPAuthScheme

+ (void)initialize
{
  v3 = [MEMORY[0x277D07070] schemeWithName:*MEMORY[0x277D06F20]];

  if (!v3)
  {
    v4 = MEMORY[0x277D07070];

    [v4 registerSchemeClass:self];
  }
}

- (BOOL)supportsAccountType:(id)type
{
  typeCopy = type;
  v4 = typeCopy;
  if (typeCopy)
  {
    v5 = [typeCopy isEqualToString:@"pop"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (Class)connectionClassForAccountClass:(Class)class
{
  saslProfileName = [(objc_class *)class saslProfileName];
  v4 = [saslProfileName isEqualToString:@"pop"];

  if (v4)
  {
    v5 = objc_opt_class();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection
{
  connectionCopy = connection;
  v10.receiver = self;
  v10.super_class = MFAPOPAuthScheme;
  v7 = [(ECAuthenticationScheme *)&v10 canAuthenticateAccountClass:class connection:connectionCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7 & [connectionCopy supportsAPOP];
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

@end