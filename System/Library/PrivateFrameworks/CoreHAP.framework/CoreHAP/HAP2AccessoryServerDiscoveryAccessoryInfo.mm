@interface HAP2AccessoryServerDiscoveryAccessoryInfo
+ (id)new;
- (HAP2AccessoryServerDiscoveryAccessoryInfo)init;
- (HAP2AccessoryServerDiscoveryAccessoryInfo)initWithDeviceID:(id)a3 rawDiscoveryInfo:(id)a4;
- (NSString)airPlayDeviceUUIDString;
@end

@implementation HAP2AccessoryServerDiscoveryAccessoryInfo

- (NSString)airPlayDeviceUUIDString
{
  v2 = [(HAP2AccessoryServerDiscoveryAccessoryInfo *)self rawDiscoveryInfo];
  v3 = [v2 objectForKeyedSubscript:@"bonjourTXTRecord"];
  v4 = [v3 objectForKeyedSubscript:@"psi"];
  v5 = [v4 copy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (HAP2AccessoryServerDiscoveryAccessoryInfo)initWithDeviceID:(id)a3 rawDiscoveryInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HAP2AccessoryServerDiscoveryAccessoryInfo;
  v9 = [(HAP2AccessoryServerDiscoveryAccessoryInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deviceID, a3);
    objc_storeStrong(&v10->_rawDiscoveryInfo, a4);
  }

  return v10;
}

- (HAP2AccessoryServerDiscoveryAccessoryInfo)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)new
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end