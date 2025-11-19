@interface CRKConnectWithoutBeaconAssertionRequest
- (CRKConnectWithoutBeaconAssertionRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKConnectWithoutBeaconAssertionRequest

- (CRKConnectWithoutBeaconAssertionRequest)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRKConnectWithoutBeaconAssertionRequest;
  return [(CATTaskRequest *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = CRKConnectWithoutBeaconAssertionRequest;
  [(CATTaskRequest *)&v3 encodeWithCoder:a3];
}

@end