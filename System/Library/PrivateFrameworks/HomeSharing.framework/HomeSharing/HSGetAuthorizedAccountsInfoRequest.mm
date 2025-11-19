@interface HSGetAuthorizedAccountsInfoRequest
- (HSGetAuthorizedAccountsInfoRequest)init;
@end

@implementation HSGetAuthorizedAccountsInfoRequest

- (HSGetAuthorizedAccountsInfoRequest)init
{
  v5.receiver = self;
  v5.super_class = HSGetAuthorizedAccountsInfoRequest;
  v2 = [(HSRequest *)&v5 initWithAction:@"get-authorized-accounts-info"];
  v3 = v2;
  if (v2)
  {
    [(HSRequest *)v2 setMethod:1];
  }

  return v3;
}

@end