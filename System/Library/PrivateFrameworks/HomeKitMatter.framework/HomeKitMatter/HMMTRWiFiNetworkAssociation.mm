@interface HMMTRWiFiNetworkAssociation
- (HMMTRWiFiNetworkAssociation)initWithSSID:(id)a3 credentials:(id)a4;
@end

@implementation HMMTRWiFiNetworkAssociation

- (HMMTRWiFiNetworkAssociation)initWithSSID:(id)a3 credentials:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMMTRWiFiNetworkAssociation;
  v9 = [(HMMTRWiFiNetworkAssociation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ssid, a3);
    objc_storeStrong(&v10->_credentials, a4);
  }

  return v10;
}

@end