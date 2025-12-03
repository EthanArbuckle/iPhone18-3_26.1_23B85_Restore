@interface MSDKPeerDemoWiFiSettings
- (MSDKPeerDemoWiFiSettings)initWithCoder:(id)coder;
- (MSDKPeerDemoWiFiSettings)initWithSSID:(id)d password:(id)password;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSDKPeerDemoWiFiSettings

- (MSDKPeerDemoWiFiSettings)initWithSSID:(id)d password:(id)password
{
  dCopy = d;
  passwordCopy = password;
  v11.receiver = self;
  v11.super_class = MSDKPeerDemoWiFiSettings;
  v8 = [(MSDKPeerDemoWiFiSettings *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MSDKPeerDemoWiFiSettings *)v8 setSsid:dCopy];
    [(MSDKPeerDemoWiFiSettings *)v9 setPassword:passwordCopy];
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  ssid = [(MSDKPeerDemoWiFiSettings *)self ssid];
  password = [(MSDKPeerDemoWiFiSettings *)self password];
  v8 = [v3 stringWithFormat:@"<%@[%p]: SSID=%@ Password=%@>", v5, self, ssid, password];

  return v8;
}

- (MSDKPeerDemoWiFiSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MSDKPeerDemoWiFiSettings;
  v5 = [(MSDKPeerDemoWiFiSettings *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ssid"];
    [(MSDKPeerDemoWiFiSettings *)v5 setSsid:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"password"];
    [(MSDKPeerDemoWiFiSettings *)v5 setPassword:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  ssid = [(MSDKPeerDemoWiFiSettings *)self ssid];
  [coderCopy encodeObject:ssid forKey:@"ssid"];

  password = [(MSDKPeerDemoWiFiSettings *)self password];
  [coderCopy encodeObject:password forKey:@"password"];
}

@end