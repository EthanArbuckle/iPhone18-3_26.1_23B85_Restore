@interface HMDAccessoryTransportInformation
- (BOOL)isEqual:(id)a3;
- (BOOL)isReachable;
- (HAPAccessory)hapAccessory;
- (HMDAccessoryTransportInformation)initWithCoder:(id)a3;
- (HMDAccessoryTransportInformation)initWithServerIdentifier:(id)a3 instanceID:(id)a4 linkType:(int64_t)a5;
- (NSDate)reachableLastChangedTime;
- (NSDictionary)transportInfoDictionary;
- (NSString)protocolVersion;
- (id)attributeDescriptions;
- (id)report;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setHapAccessory:(id)a3;
- (void)setProtocolVersion:(id)a3;
- (void)setReachable:(BOOL)a3;
@end

@implementation HMDAccessoryTransportInformation

- (id)attributeDescriptions
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDAccessoryTransportInformation *)self serverIdentifier];
  v5 = [v3 initWithName:@"Server ID" value:v4];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDAccessoryTransportInformation *)self instanceID];
  v8 = [v6 initWithName:@"Instance ID" value:v7];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDAccessoryTransportInformation *)self linkType];
  v10 = HAPLinkTypeDescription();
  v11 = [v9 initWithName:@"Link Type" value:v10];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDAccessoryTransportInformation *)self isReachable];
  v13 = HMFBooleanToString();
  v14 = [v12 initWithName:@"Reachable" value:v13];
  v18[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(HMDAccessoryTransportInformation *)self serverIdentifier];
  [v6 encodeObject:v4 forKey:@"HM.serverIdentifier"];

  v5 = [(HMDAccessoryTransportInformation *)self instanceID];
  [v6 encodeObject:v5 forKey:@"HM.instanceID"];

  [v6 encodeInteger:-[HMDAccessoryTransportInformation linkType](self forKey:{"linkType"), @"linkType"}];
}

- (HMDAccessoryTransportInformation)initWithCoder:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.serverIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.instanceID"];
  v7 = [v4 decodeIntegerForKey:@"linkType"];
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v7 == 0)
  {
    v10 = objc_autoreleasePoolPush();
    v14 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = HAPLinkTypeDescription();
      v18 = 138544130;
      v19 = v12;
      v20 = 2112;
      v21 = v5;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Cannot decode from serverIdentifier: %@ instanceID: %@ linkType: %@", &v18, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    v15 = 0;
  }

  else
  {
    v14 = [(HMDAccessoryTransportInformation *)self initWithServerIdentifier:v5 instanceID:v6 linkType:v7];
    v15 = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)report
{
  v3 = [(HMDAccessoryTransportInformation *)self hapAccessory];
  v4 = [v3 server];

  [(HMDAccessoryTransportInformation *)self linkType];
  v5 = HAPLinkTypeDescription();
  v6 = v4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && v6)
  {

    v5 = @"Thread";
  }

  v8 = [HMDAccessoryTransportReachabilityReport alloc];
  v9 = [v6 hasAdvertisement];
  [v6 communicationProtocol];
  v10 = HAPCommunicationProtocolDescription();
  v11 = [(HMDAccessoryTransportInformation *)self protocolVersion];
  v12 = [(HMDAccessoryTransportInformation *)self isReachable];
  v13 = [(HMDAccessoryTransportInformation *)self reachableLastChangedTime];
  v14 = [v6 reachabilityChangedReason];
  v15 = [(HMDAccessoryTransportReachabilityReport *)v8 initWithLinkType:v5 hasAdvertisement:v9 protocol:v10 protocolVersion:v11 reachable:v12 reachableLastChangedTime:v13 reason:v14];

  return v15;
}

- (NSDictionary)transportInfoDictionary
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"HM.serverIdentifier";
  v3 = [(HMDAccessoryTransportInformation *)self serverIdentifier];
  v10[0] = v3;
  v9[1] = @"HM.instanceID";
  v4 = [(HMDAccessoryTransportInformation *)self instanceID];
  v10[1] = v4;
  v9[2] = @"linkType";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessoryTransportInformation linkType](self, "linkType")}];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSDate)reachableLastChangedTime
{
  os_unfair_lock_lock_with_options();
  v3 = self->_reachableLastChangedTime;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setReachable:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_reachable = a3;
  v5 = [MEMORY[0x277CBEAA8] now];
  reachableLastChangedTime = self->_reachableLastChangedTime;
  self->_reachableLastChangedTime = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isReachable
{
  os_unfair_lock_lock_with_options();
  reachable = self->_reachable;
  os_unfair_lock_unlock(&self->_lock);
  return reachable;
}

- (void)setProtocolVersion:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  protocolVersion = self->_protocolVersion;
  self->_protocolVersion = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)protocolVersion
{
  os_unfair_lock_lock_with_options();
  v3 = self->_protocolVersion;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setHapAccessory:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  hapAccessory = self->_hapAccessory;
  self->_hapAccessory = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HAPAccessory)hapAccessory
{
  os_unfair_lock_lock_with_options();
  v3 = self->_hapAccessory;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (unint64_t)hash
{
  v3 = [(HMDAccessoryTransportInformation *)self linkType];
  v4 = [(HMDAccessoryTransportInformation *)self serverIdentifier];
  v5 = [v4 hash] ^ v3;

  v6 = [(HMDAccessoryTransportInformation *)self instanceID];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = [(HMDAccessoryTransportInformation *)self linkType];
  if (v7 != [v6 linkType])
  {
    goto LABEL_8;
  }

  v8 = [(HMDAccessoryTransportInformation *)self serverIdentifier];
  v9 = [v6 serverIdentifier];
  v10 = HMFEqualObjects();

  if (v10)
  {
    v11 = [(HMDAccessoryTransportInformation *)self instanceID];
    v12 = [v6 instanceID];
    v13 = HMFEqualObjects();
  }

  else
  {
LABEL_8:
    v13 = 0;
  }

  return v13;
}

- (HMDAccessoryTransportInformation)initWithServerIdentifier:(id)a3 instanceID:(id)a4 linkType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  v10 = v9;
  if (!v9)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!a5)
  {
LABEL_9:
    v17 = _HMFPreconditionFailure();
    return +[(HMDAccessoryTransportInformation *)v17];
  }

  v19.receiver = self;
  v19.super_class = HMDAccessoryTransportInformation;
  v11 = [(HMDAccessoryTransportInformation *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    serverIdentifier = v11->_serverIdentifier;
    v11->_serverIdentifier = v12;

    v14 = [v10 copy];
    instanceID = v11->_instanceID;
    v11->_instanceID = v14;

    v11->_linkType = a5;
  }

  return v11;
}

@end