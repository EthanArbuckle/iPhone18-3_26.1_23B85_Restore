@interface HMMTRWiFiNetworkAssociation
- (HMMTRWiFiNetworkAssociation)initWithSSID:(id)d credentials:(id)credentials;
@end

@implementation HMMTRWiFiNetworkAssociation

- (HMMTRWiFiNetworkAssociation)initWithSSID:(id)d credentials:(id)credentials
{
  dCopy = d;
  credentialsCopy = credentials;
  v12.receiver = self;
  v12.super_class = HMMTRWiFiNetworkAssociation;
  v9 = [(HMMTRWiFiNetworkAssociation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ssid, d);
    objc_storeStrong(&v10->_credentials, credentials);
  }

  return v10;
}

@end