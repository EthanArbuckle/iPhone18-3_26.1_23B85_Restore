@interface MSDKPeerDemoWiFiSettings
- (MSDKPeerDemoWiFiSettings)initWithCoder:(id)a3;
- (MSDKPeerDemoWiFiSettings)initWithSSID:(id)a3 password:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSDKPeerDemoWiFiSettings

- (MSDKPeerDemoWiFiSettings)initWithSSID:(id)a3 password:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MSDKPeerDemoWiFiSettings;
  v8 = [(MSDKPeerDemoWiFiSettings *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MSDKPeerDemoWiFiSettings *)v8 setSsid:v6];
    [(MSDKPeerDemoWiFiSettings *)v9 setPassword:v7];
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MSDKPeerDemoWiFiSettings *)self ssid];
  v7 = [(MSDKPeerDemoWiFiSettings *)self password];
  v8 = [v3 stringWithFormat:@"<%@[%p]: SSID=%@ Password=%@>", v5, self, v6, v7];

  return v8;
}

- (MSDKPeerDemoWiFiSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MSDKPeerDemoWiFiSettings;
  v5 = [(MSDKPeerDemoWiFiSettings *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ssid"];
    [(MSDKPeerDemoWiFiSettings *)v5 setSsid:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"password"];
    [(MSDKPeerDemoWiFiSettings *)v5 setPassword:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MSDKPeerDemoWiFiSettings *)self ssid];
  [v4 encodeObject:v5 forKey:@"ssid"];

  v6 = [(MSDKPeerDemoWiFiSettings *)self password];
  [v4 encodeObject:v6 forKey:@"password"];
}

@end