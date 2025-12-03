@interface HMDAccessoryNetworkCredential
- (HMDAccessoryNetworkCredential)initWithNetworkRouterUUID:(id)d clientIdentifier:(id)identifier wiFiPSK:(id)k;
@end

@implementation HMDAccessoryNetworkCredential

- (HMDAccessoryNetworkCredential)initWithNetworkRouterUUID:(id)d clientIdentifier:(id)identifier wiFiPSK:(id)k
{
  dCopy = d;
  identifierCopy = identifier;
  kCopy = k;
  v15.receiver = self;
  v15.super_class = HMDAccessoryNetworkCredential;
  v12 = [(HMDAccessoryNetworkCredential *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_networkRouterUUID, d);
    objc_storeStrong(&v13->_clientIdentifier, identifier);
    objc_storeStrong(&v13->_wiFiPSK, k);
  }

  return v13;
}

@end