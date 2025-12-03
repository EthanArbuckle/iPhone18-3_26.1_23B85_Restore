@interface CRKConnectWithoutBeaconAssertionRequest
- (CRKConnectWithoutBeaconAssertionRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKConnectWithoutBeaconAssertionRequest

- (CRKConnectWithoutBeaconAssertionRequest)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CRKConnectWithoutBeaconAssertionRequest;
  return [(CATTaskRequest *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CRKConnectWithoutBeaconAssertionRequest;
  [(CATTaskRequest *)&v3 encodeWithCoder:coder];
}

@end