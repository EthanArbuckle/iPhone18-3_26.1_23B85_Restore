@interface HMDAccessoryTransportReachabilityReport
- (HMDAccessoryTransportReachabilityReport)initWithLinkType:(id)type hasAdvertisement:(BOOL)advertisement protocol:(id)protocol protocolVersion:(id)version reachable:(BOOL)reachable reachableLastChangedTime:(id)time reason:(id)reason;
@end

@implementation HMDAccessoryTransportReachabilityReport

- (HMDAccessoryTransportReachabilityReport)initWithLinkType:(id)type hasAdvertisement:(BOOL)advertisement protocol:(id)protocol protocolVersion:(id)version reachable:(BOOL)reachable reachableLastChangedTime:(id)time reason:(id)reason
{
  typeCopy = type;
  protocolCopy = protocol;
  versionCopy = version;
  timeCopy = time;
  reasonCopy = reason;
  v24.receiver = self;
  v24.super_class = HMDAccessoryTransportReachabilityReport;
  v18 = [(HMDAccessoryTransportReachabilityReport *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_linkType, type);
    v19->_hasAdvertisement = advertisement;
    objc_storeStrong(&v19->_protocol, protocol);
    objc_storeStrong(&v19->_protocolVersion, version);
    v19->_reachable = reachable;
    objc_storeStrong(&v19->_reachableLastChangedTime, time);
    objc_storeStrong(&v19->_reason, reason);
  }

  return v19;
}

@end