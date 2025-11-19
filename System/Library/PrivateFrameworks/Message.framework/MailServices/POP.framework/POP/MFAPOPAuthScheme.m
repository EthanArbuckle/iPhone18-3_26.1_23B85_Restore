@interface MFAPOPAuthScheme
+ (void)initialize;
- (BOOL)canAuthenticateAccountClass:(Class)a3 connection:(id)a4;
- (BOOL)supportsAccountType:(id)a3;
- (Class)connectionClassForAccountClass:(Class)a3;
@end

@implementation MFAPOPAuthScheme

+ (void)initialize
{
  v3 = [MEMORY[0x277D07070] schemeWithName:*MEMORY[0x277D06F20]];

  if (!v3)
  {
    v4 = MEMORY[0x277D07070];

    [v4 registerSchemeClass:a1];
  }
}

- (BOOL)supportsAccountType:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isEqualToString:@"pop"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (Class)connectionClassForAccountClass:(Class)a3
{
  v3 = [(objc_class *)a3 saslProfileName];
  v4 = [v3 isEqualToString:@"pop"];

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

- (BOOL)canAuthenticateAccountClass:(Class)a3 connection:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = MFAPOPAuthScheme;
  v7 = [(ECAuthenticationScheme *)&v10 canAuthenticateAccountClass:a3 connection:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7 & [v6 supportsAPOP];
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

@end