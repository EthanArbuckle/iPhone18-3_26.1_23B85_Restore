@interface HMDAccessoryTransportReachabilityReport
- (HMDAccessoryTransportReachabilityReport)initWithLinkType:(id)a3 hasAdvertisement:(BOOL)a4 protocol:(id)a5 protocolVersion:(id)a6 reachable:(BOOL)a7 reachableLastChangedTime:(id)a8 reason:(id)a9;
@end

@implementation HMDAccessoryTransportReachabilityReport

- (HMDAccessoryTransportReachabilityReport)initWithLinkType:(id)a3 hasAdvertisement:(BOOL)a4 protocol:(id)a5 protocolVersion:(id)a6 reachable:(BOOL)a7 reachableLastChangedTime:(id)a8 reason:(id)a9
{
  v23 = a3;
  v22 = a5;
  v15 = a6;
  v16 = a8;
  v17 = a9;
  v24.receiver = self;
  v24.super_class = HMDAccessoryTransportReachabilityReport;
  v18 = [(HMDAccessoryTransportReachabilityReport *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_linkType, a3);
    v19->_hasAdvertisement = a4;
    objc_storeStrong(&v19->_protocol, a5);
    objc_storeStrong(&v19->_protocolVersion, a6);
    v19->_reachable = a7;
    objc_storeStrong(&v19->_reachableLastChangedTime, a8);
    objc_storeStrong(&v19->_reason, a9);
  }

  return v19;
}

@end