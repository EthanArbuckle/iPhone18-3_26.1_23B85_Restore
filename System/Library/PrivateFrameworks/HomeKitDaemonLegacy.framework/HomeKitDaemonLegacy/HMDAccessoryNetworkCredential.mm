@interface HMDAccessoryNetworkCredential
- (HMDAccessoryNetworkCredential)initWithNetworkRouterUUID:(id)a3 clientIdentifier:(id)a4 wiFiPSK:(id)a5;
@end

@implementation HMDAccessoryNetworkCredential

- (HMDAccessoryNetworkCredential)initWithNetworkRouterUUID:(id)a3 clientIdentifier:(id)a4 wiFiPSK:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDAccessoryNetworkCredential;
  v12 = [(HMDAccessoryNetworkCredential *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_networkRouterUUID, a3);
    objc_storeStrong(&v13->_clientIdentifier, a4);
    objc_storeStrong(&v13->_wiFiPSK, a5);
  }

  return v13;
}

@end