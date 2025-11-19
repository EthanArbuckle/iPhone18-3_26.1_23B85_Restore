@interface CKCredentialInterceptingAccount
- (BOOL)aa_updateTokensWithProvisioningResponse:(id)a3;
@end

@implementation CKCredentialInterceptingAccount

- (BOOL)aa_updateTokensWithProvisioningResponse:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  LOBYTE(v3) = sub_2250AB6D8(v3);

  return v3 & 1;
}

@end