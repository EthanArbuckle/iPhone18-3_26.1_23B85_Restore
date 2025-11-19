@interface HSFairPlaySetupRequest
- (HSFairPlaySetupRequest)init;
@end

@implementation HSFairPlaySetupRequest

- (HSFairPlaySetupRequest)init
{
  v2 = [(HSRequest *)self initWithAction:@"fp-setup"];
  v3 = v2;
  if (v2)
  {
    [(HSRequest *)v2 setMethod:1];
  }

  return v3;
}

@end