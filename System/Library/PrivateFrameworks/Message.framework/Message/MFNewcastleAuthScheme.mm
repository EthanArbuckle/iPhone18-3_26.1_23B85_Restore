@interface MFNewcastleAuthScheme
+ (void)initialize;
- (BOOL)canAuthenticateAccountClass:(Class)a3 connection:(id)a4;
@end

@implementation MFNewcastleAuthScheme

+ (void)initialize
{
  v3 = [MEMORY[0x1E699B208] schemeWithName:@"ATOKEN2"];

  if (!v3)
  {
    v4 = MEMORY[0x1E699B208];

    [v4 registerSchemeClass:a1];
  }
}

- (BOOL)canAuthenticateAccountClass:(Class)a3 connection:(id)a4
{
  v6 = a4;
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
  if ((v7 & [(ECAuthenticationScheme *)&v10 canAuthenticateAccountClass:a3 connection:v6]) == 1)
  {
    v8 = [v6 loginDisabled] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

@end