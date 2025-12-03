@interface HMDCoordinationPingRequest
+ (id)acceptableResponses;
- (HMDCoordinationPingRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDCoordinationPingRequest

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = HMDCoordinationPingRequest;
  [(COMeshCommand *)&v3 encodeWithCoder:coder];
}

- (HMDCoordinationPingRequest)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = HMDCoordinationPingRequest;
  return [(COMeshCommand *)&v4 initWithCoder:coder];
}

+ (id)acceptableResponses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

@end