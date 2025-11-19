@interface HMDCoordinationPingRequest
+ (id)acceptableResponses;
- (HMDCoordinationPingRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDCoordinationPingRequest

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = HMDCoordinationPingRequest;
  [(COMeshCommand *)&v3 encodeWithCoder:a3];
}

- (HMDCoordinationPingRequest)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = HMDCoordinationPingRequest;
  return [(COMeshCommand *)&v4 initWithCoder:a3];
}

+ (id)acceptableResponses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

@end