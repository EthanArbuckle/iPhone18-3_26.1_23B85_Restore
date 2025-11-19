@interface HMFHTTPClientConfiguration
+ (id)defaultConfiguration;
- (HMFHTTPClientConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMFHTTPClientConfiguration

+ (id)defaultConfiguration
{
  v2 = objc_alloc_init(HMFHTTPClientConfiguration);

  return v2;
}

- (HMFHTTPClientConfiguration)init
{
  v3.receiver = self;
  v3.super_class = HMFHTTPClientConfiguration;
  result = [(HMFHTTPClientConfiguration *)&v3 init];
  if (result)
  {
    result->_requiresEncryption = 0;
    result->_allowsAnonymousConnection = 0;
    result->_allowsCellularAccess = 1;
    result->_supportsWakeOnLAN = 0;
    result->_monitorsReachability = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v4[8] = [(HMFHTTPClientConfiguration *)self requiresEncryption];
  v4[9] = [(HMFHTTPClientConfiguration *)self allowsAnonymousConnection];
  v4[10] = [(HMFHTTPClientConfiguration *)self allowsCellularAccess];
  v4[11] = [(HMFHTTPClientConfiguration *)self supportsWakeOnLAN];
  v4[12] = [(HMFHTTPClientConfiguration *)self monitorsReachability];
  return v4;
}

@end