@interface HMDCoordinationPingResponse
- (HMDCoordinationPingResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDCoordinationPingResponse

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = HMDCoordinationPingResponse;
  [(COMeshResponse *)&v3 encodeWithCoder:coder];
}

- (HMDCoordinationPingResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = HMDCoordinationPingResponse;
  return [(COMeshResponse *)&v4 initWithCoder:coder];
}

@end