@interface HMDNetworkMismatchDetectorResult
- (HMDNetworkMismatchDetectorResult)initWithAccessoriesNotOnWiFi:(id)a3;
- (id)description;
@end

@implementation HMDNetworkMismatchDetectorResult

- (id)description
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<Accessories not on WiFi: %@", self->_accessoriesNotOnWiFi];
  v3 = [v2 stringByAppendingString:@">"];

  return v3;
}

- (HMDNetworkMismatchDetectorResult)initWithAccessoriesNotOnWiFi:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDNetworkMismatchDetectorResult;
  v5 = [(HMDNetworkMismatchDetectorResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    accessoriesNotOnWiFi = v5->_accessoriesNotOnWiFi;
    v5->_accessoriesNotOnWiFi = v6;
  }

  return v5;
}

@end