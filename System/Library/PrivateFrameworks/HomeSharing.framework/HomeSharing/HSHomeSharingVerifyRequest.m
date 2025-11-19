@interface HSHomeSharingVerifyRequest
- (HSHomeSharingVerifyRequest)init;
@end

@implementation HSHomeSharingVerifyRequest

- (HSHomeSharingVerifyRequest)init
{
  v5.receiver = self;
  v5.super_class = HSHomeSharingVerifyRequest;
  v2 = [(HSRequest *)&v5 initWithAction:@"home-share-verify"];
  v3 = v2;
  if (v2)
  {
    [(HSRequest *)v2 setValue:@"0" forArgument:@"hspid"];
  }

  return v3;
}

@end