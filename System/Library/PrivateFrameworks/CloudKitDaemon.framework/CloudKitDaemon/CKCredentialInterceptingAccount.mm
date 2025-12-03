@interface CKCredentialInterceptingAccount
- (BOOL)aa_updateTokensWithProvisioningResponse:(id)response;
@end

@implementation CKCredentialInterceptingAccount

- (BOOL)aa_updateTokensWithProvisioningResponse:(id)response
{
  responseCopy = response;
  responseCopy2 = response;
  selfCopy = self;
  LOBYTE(responseCopy) = sub_2250AB6D8(responseCopy);

  return responseCopy & 1;
}

@end