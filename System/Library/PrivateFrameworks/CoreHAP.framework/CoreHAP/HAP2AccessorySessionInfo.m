@interface HAP2AccessorySessionInfo
- (HAP2AccessorySessionInfo)init;
- (id)description;
- (void)resetWithNumIPs:(unint64_t)a3 numIPsTried:(unint64_t)a4 numBonjourNames:(unint64_t)a5 ipAddress:(id)a6 serviceName:(id)a7 resolveAttempted:(BOOL)a8;
@end

@implementation HAP2AccessorySessionInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAP2AccessorySessionInfo *)self numIPAddresses];
  v5 = [(HAP2AccessorySessionInfo *)self numIPAddressesTried];
  v6 = [(HAP2AccessorySessionInfo *)self numBonjourNames];
  v7 = [(HAP2AccessorySessionInfo *)self ipAddress];
  v8 = v7;
  v9 = @"(Unknown)";
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = @"(Unknown)";
  }

  v11 = [(HAP2AccessorySessionInfo *)self serviceName];
  v12 = v11;
  if (v11)
  {
    v9 = v11;
  }

  v13 = [(HAP2AccessorySessionInfo *)self resolveAttempted];
  v14 = @"NO";
  if (v13)
  {
    v14 = @"YES";
  }

  v15 = [v3 stringWithFormat:@"Num IP Addresses: %lu, Num IP Addresses Tried: %lu, Num Bonjour Names: %lu, IP Address: %@, Service Name: %@ Resolve Attempt: %@", v4, v5, v6, v10, v9, v14];

  return v15;
}

- (void)resetWithNumIPs:(unint64_t)a3 numIPsTried:(unint64_t)a4 numBonjourNames:(unint64_t)a5 ipAddress:(id)a6 serviceName:(id)a7 resolveAttempted:(BOOL)a8
{
  v27 = *MEMORY[0x277D85DE8];
  v15 = a6;
  v16 = a7;
  self->_numIPAddresses = a3;
  self->_numIPAddressesTried = a4;
  self->_numBonjourNames = a5;
  objc_storeStrong(&self->_ipAddress, a6);
  objc_storeStrong(&self->_serviceName, a7);
  self->_resolveAttempted = a8;
  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = HMFGetLogIdentifier();
    v21 = [(HAP2AccessorySessionInfo *)v18 description];
    v23 = 138543618;
    v24 = v20;
    v25 = 2112;
    v26 = v21;
    _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_DEBUG, "%{public}@%@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v22 = *MEMORY[0x277D85DE8];
}

- (HAP2AccessorySessionInfo)init
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