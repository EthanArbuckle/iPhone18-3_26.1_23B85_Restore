@interface HIDRMUIUserAuthorizationRequest
- (BOOL)isEqual:(id)a3;
- (HIDRMUIUserAuthorizationRequest)initWithCoder:(id)a3;
- (HIDRMUIUserAuthorizationRequest)initWithDeviceName:(id)a3 requiresPairing:(BOOL)a4;
- (OS_os_log)log;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HIDRMUIUserAuthorizationRequest

- (HIDRMUIUserAuthorizationRequest)initWithDeviceName:(id)a3 requiresPairing:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HIDRMUIUserAuthorizationRequest;
  v8 = [(HIDRMUIUserAuthorizationRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_deviceName, a3);
    v9->_requiresPairing = a4;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(HIDRMUIUserAuthorizationRequest *)self deviceName];
    v7 = [v6 copyWithZone:a3];
    [v5 setDeviceName:v7];

    [v5 setRequiresPairing:{-[HIDRMUIUserAuthorizationRequest requiresPairing](self, "requiresPairing")}];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(HIDRMUIUserAuthorizationRequest *)self deviceName];
  [v5 encodeObject:v4 forKey:@"deviceName"];

  [v5 encodeBool:-[HIDRMUIUserAuthorizationRequest requiresPairing](self forKey:{"requiresPairing"), @"requiresPairing"}];
}

- (HIDRMUIUserAuthorizationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
  v6 = [v4 decodeBoolForKey:@"requiresPairing"];

  v7 = [(HIDRMUIUserAuthorizationRequest *)self initWithDeviceName:v5 requiresPairing:v6];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = 1;
  }

  else
  {
    v5 = v4;
    v6 = [(HIDRMUIUserAuthorizationRequest *)self deviceName];
    v7 = [(HIDRMUIUserAuthorizationRequest *)v5 deviceName];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(HIDRMUIUserAuthorizationRequest *)self requiresPairing];
      v9 = v8 ^ [(HIDRMUIUserAuthorizationRequest *)v5 requiresPairing];

      v10 = v9 ^ 1;
    }

    else
    {

      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(HIDRMUIUserAuthorizationRequest *)self deviceName];
  v4 = [v3 hash];

  return v4 ^ [(HIDRMUIUserAuthorizationRequest *)self requiresPairing];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HIDRMUIUserAuthorizationRequest *)self deviceName];
  v7 = [(HIDRMUIUserAuthorizationRequest *)self requiresPairing];
  v8 = "NO";
  if (v7)
  {
    v8 = "YES";
  }

  v9 = [v3 stringWithFormat:@"<%@: %p, deviceName: %@, requiresPairing: %s>", v5, self, v6, v8];

  return v9;
}

- (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HIDRMUIUserAuthorizationRequest_log__block_invoke;
  block[3] = &unk_2796A31C0;
  block[4] = self;
  if (log_s_onceToken != -1)
  {
    dispatch_once(&log_s_onceToken, block);
  }

  return log_s_log;
}

void __38__HIDRMUIUserAuthorizationRequest_log__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v10 bundleIdentifier];
  v4 = [v3 UTF8String];
  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = os_log_create(v4, [v7 UTF8String]);
  v9 = log_s_log;
  log_s_log = v8;
}

@end