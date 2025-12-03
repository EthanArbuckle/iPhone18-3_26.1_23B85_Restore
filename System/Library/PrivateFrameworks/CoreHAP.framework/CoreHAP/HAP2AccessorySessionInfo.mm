@interface HAP2AccessorySessionInfo
- (HAP2AccessorySessionInfo)init;
- (id)description;
- (void)resetWithNumIPs:(unint64_t)ps numIPsTried:(unint64_t)tried numBonjourNames:(unint64_t)names ipAddress:(id)address serviceName:(id)name resolveAttempted:(BOOL)attempted;
@end

@implementation HAP2AccessorySessionInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  numIPAddresses = [(HAP2AccessorySessionInfo *)self numIPAddresses];
  numIPAddressesTried = [(HAP2AccessorySessionInfo *)self numIPAddressesTried];
  numBonjourNames = [(HAP2AccessorySessionInfo *)self numBonjourNames];
  ipAddress = [(HAP2AccessorySessionInfo *)self ipAddress];
  v8 = ipAddress;
  v9 = @"(Unknown)";
  if (ipAddress)
  {
    v10 = ipAddress;
  }

  else
  {
    v10 = @"(Unknown)";
  }

  serviceName = [(HAP2AccessorySessionInfo *)self serviceName];
  v12 = serviceName;
  if (serviceName)
  {
    v9 = serviceName;
  }

  resolveAttempted = [(HAP2AccessorySessionInfo *)self resolveAttempted];
  v14 = @"NO";
  if (resolveAttempted)
  {
    v14 = @"YES";
  }

  v15 = [v3 stringWithFormat:@"Num IP Addresses: %lu, Num IP Addresses Tried: %lu, Num Bonjour Names: %lu, IP Address: %@, Service Name: %@ Resolve Attempt: %@", numIPAddresses, numIPAddressesTried, numBonjourNames, v10, v9, v14];

  return v15;
}

- (void)resetWithNumIPs:(unint64_t)ps numIPsTried:(unint64_t)tried numBonjourNames:(unint64_t)names ipAddress:(id)address serviceName:(id)name resolveAttempted:(BOOL)attempted
{
  v27 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  nameCopy = name;
  self->_numIPAddresses = ps;
  self->_numIPAddressesTried = tried;
  self->_numBonjourNames = names;
  objc_storeStrong(&self->_ipAddress, address);
  objc_storeStrong(&self->_serviceName, name);
  self->_resolveAttempted = attempted;
  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = HMFGetLogIdentifier();
    v21 = [(HAP2AccessorySessionInfo *)selfCopy description];
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