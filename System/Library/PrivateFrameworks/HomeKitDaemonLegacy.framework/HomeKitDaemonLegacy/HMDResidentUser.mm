@interface HMDResidentUser
- (BOOL)isBlocked;
- (BOOL)updateWithDevice:(id)device;
- (HMDDevice)device;
- (HMDResidentUser)initWithCoder:(id)coder;
- (HMDResidentUser)initWithDevice:(id)device home:(id)home pairingIdentity:(id)identity configurationState:(unint64_t)state;
- (HMDResidentUser)initWithModelObject:(id)object;
- (NSString)deviceIdentifier;
- (id)displayName;
- (id)legacyUser;
- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version;
- (id)userID;
- (unint64_t)configurationState;
- (void)configureWithHome:(id)home;
- (void)encodeWithCoder:(id)coder;
- (void)registerIdentity;
- (void)setConfigurationState:(unint64_t)state;
- (void)setDevice:(id)device;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
@end

@implementation HMDResidentUser

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = HMDResidentUser;
  [(HMDUser *)&v8 encodeWithCoder:coderCopy];
  device = [(HMDResidentUser *)self device];
  [coderCopy encodeObject:device forKey:@"HM.device"];

  if ([coderCopy hmd_isForSharedUser])
  {
    configurationState = 3;
  }

  else
  {
    configurationState = [(HMDResidentUser *)self configurationState];
  }

  [coderCopy encodeInt32:configurationState forKey:@"residentConfigState"];
  [coderCopy encodeBool:1 forKey:@"userIsRemoteGateway"];
  deviceIdentifier = [(HMDResidentUser *)self deviceIdentifier];
  [coderCopy encodeObject:deviceIdentifier forKey:@"residentIdentifier"];
}

- (HMDResidentUser)initWithCoder:(id)coder
{
  v33 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = HMDResidentUser;
  v5 = [(HMDUser *)&v28 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_configurationState = [coderCopy decodeInt32ForKey:@"residentConfigState"];
    if ([coderCopy containsValueForKey:@"HM.device"])
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.device"];
      device = v5->_device;
      v5->_device = v6;
LABEL_17:

      goto LABEL_18;
    }

    device = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userID"];
    if (device)
    {
      v8 = [HMDDeviceHandle deviceHandleForDestination:device];
      if (v8)
      {
        v9 = +[HMDAccountRegistry sharedRegistry];
        v10 = [v9 deviceForHandle:v8];
        v11 = v5->_device;
        v5->_device = v10;
      }
    }

    if (v5->_device)
    {
      userID = [(HMDResidentUser *)v5 userID];

      if (userID)
      {
        goto LABEL_16;
      }

      v13 = objc_autoreleasePoolPush();
      v14 = v5;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v16;
        v31 = 2112;
        v32 = device;
        v17 = "%{public}@Could not determine userID from device generated for HMDResidentUser with expected destination: %@";
LABEL_14:
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, v17, buf, 0x16u);
      }
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v18 = v5;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v16;
        v31 = 2112;
        v32 = device;
        v17 = "%{public}@Failed to resolve device for HMDResidentUser with expected destination: %@";
        goto LABEL_14;
      }
    }

    objc_autoreleasePoolPop(v13);
LABEL_16:
    userID2 = [(HMDResidentUser *)v5 userID];

    if (!userID2)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v5;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543362;
        v30 = v25;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Missing expected userID", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      v26 = [[HMDAssertionLogEvent alloc] initWithReason:@"Missing expected userID"];
      v27 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v27 submitLogEvent:v26];
    }

    goto LABEL_17;
  }

LABEL_18:

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v41 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v11 = valuesCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    device = [v13 device];
    if (device)
    {
      v15 = device;
      device2 = [v13 device];
      device3 = [(HMDResidentUser *)self device];
      v18 = HMFEqualObjects();

      if (v18)
      {
        device4 = [v13 device];
        [(HMDResidentUser *)self setDevice:device4];
      }
    }

    configState = [v13 configState];
    if (configState)
    {
      v21 = configState;
      configState2 = [v13 configState];
      intValue = [configState2 intValue];
      configurationState = [(HMDResidentUser *)self configurationState];

      if (configurationState != intValue)
      {
        home = [(HMDUser *)self home];
        isOwnerUser = [home isOwnerUser];

        configState3 = [v13 configState];
        intValue2 = [configState3 intValue];
        v29 = intValue2;
        if (isOwnerUser)
        {
          [(HMDResidentUser *)self setConfigurationState:intValue2];
        }

        else
        {

          if (v29 == 2)
          {
            v30 = objc_autoreleasePoolPush();
            selfCopy = self;
            v32 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              v33 = HMFGetLogIdentifier();
              *buf = 138543362;
              v40 = v33;
              _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Disabling", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v30);
            [(HMDResidentUser *)selfCopy setConfigurationState:3];
          }
        }
      }
    }
  }

  v34 = v11;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  v36 = v35;

  if (v36)
  {
    v38.receiver = self;
    v38.super_class = HMDResidentUser;
    [(HMDUser *)&v38 _transactionUserUpdated:0 newValues:v36 message:messageCopy];
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version
{
  v13.receiver = self;
  v13.super_class = HMDResidentUser;
  v5 = [(HMDUser *)&v13 modelObjectWithChangeType:type version:version];
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
  if (v7)
  {
    device = [(HMDResidentUser *)self device];
    [v7 setDevice:device];

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDResidentUser configurationState](self, "configurationState")}];
    [v7 setConfigState:v9];

    encodingRemoteDisplayName = [(HMDResidentUser *)self encodingRemoteDisplayName];
    [v7 setDisplayName:encodingRemoteDisplayName];

    deviceIdentifier = [(HMDResidentUser *)self deviceIdentifier];
    [v7 setDeviceIdentifier:deviceIdentifier];
  }

  return v5;
}

- (id)legacyUser
{
  v2 = [[__HMDLegacyResidentUser alloc] initWithResidentUser:self];

  return v2;
}

- (void)setConfigurationState:(unint64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_configurationState = state;

  os_unfair_lock_unlock(&self->_residentUserLock);
}

- (unint64_t)configurationState
{
  os_unfair_lock_lock_with_options();
  configurationState = self->_configurationState;
  os_unfair_lock_unlock(&self->_residentUserLock);
  return configurationState;
}

- (BOOL)isBlocked
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  if (productPlatform == 3)
  {
    v5 = 0;
  }

  else
  {
    home = [(HMDUser *)self home];
    v7 = home;
    if (home)
    {
      v5 = [home isOwnerUser] - 1;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

- (BOOL)updateWithDevice:(id)device
{
  v25 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (deviceCopy)
  {
    device = [(HMDResidentUser *)self device];
    v6 = device == 0;

    if (!device)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v21 = 138543618;
        v22 = v10;
        v23 = 2112;
        v24 = deviceCopy;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating the device: %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      [(HMDResidentUser *)selfCopy setDevice:deviceCopy];
    }

    device2 = [(HMDResidentUser *)self device];
    name = [device2 name];
    name2 = [deviceCopy name];
    v14 = HMFEqualObjects();

    if ((v14 & 1) == 0)
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v21 = 138543618;
        v22 = v18;
        v23 = 2112;
        v24 = deviceCopy;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Updating the device: %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      [(HMDResidentUser *)selfCopy2 setDevice:deviceCopy];
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)setDevice:(id)device
{
  deviceCopy = device;
  os_unfair_lock_lock_with_options();
  device = self->_device;
  self->_device = deviceCopy;

  os_unfair_lock_unlock(&self->_residentUserLock);
}

- (HMDDevice)device
{
  os_unfair_lock_lock_with_options();
  v3 = self->_device;
  os_unfair_lock_unlock(&self->_residentUserLock);

  return v3;
}

- (void)registerIdentity
{
  pairingIdentity = [(HMDUser *)self pairingIdentity];
  if (pairingIdentity)
  {
    v6 = pairingIdentity;
    v4 = +[HMDIdentityRegistry sharedRegistry];
    device = [(HMDResidentUser *)self device];
    [v4 registerIdentity:v6 device:device object:self];

    pairingIdentity = v6;
  }
}

- (id)displayName
{
  device = [(HMDResidentUser *)self device];
  name = [device name];

  return name;
}

- (NSString)deviceIdentifier
{
  device = [(HMDResidentUser *)self device];
  idsIdentifier = [device idsIdentifier];
  uUIDString = [idsIdentifier UUIDString];

  return uUIDString;
}

- (id)userID
{
  device = [(HMDResidentUser *)self device];
  remoteDestinationString = [device remoteDestinationString];

  return remoteDestinationString;
}

- (void)configureWithHome:(id)home
{
  v13 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v10.receiver = self;
  v10.super_class = HMDResidentUser;
  [(HMDUser *)&v10 configureWithHome:homeCopy];
  if ([(HMDResidentUser *)self isBlocked]&& [(HMDResidentUser *)self configurationState]== 2)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Disabling as we are blocked", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDResidentUser *)selfCopy setConfigurationState:3];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (HMDResidentUser)initWithDevice:(id)device home:(id)home pairingIdentity:(id)identity configurationState:(unint64_t)state
{
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = HMDResidentUser;
  v12 = [(HMDUser *)&v15 initWithAccountHandle:0 home:home pairingIdentity:identity privilege:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_device, device);
    v13->_configurationState = state;
    [(HMDUser *)v13 _setRemoteAccessAllowed:0];
  }

  return v13;
}

- (HMDResidentUser)initWithModelObject:(id)object
{
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = HMDResidentUser;
  v5 = [(HMDUser *)&v13 initWithModelObject:objectCopy];
  if (v5)
  {
    v6 = objectCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      v5->_residentUserLock._os_unfair_lock_opaque = 0;
      device = [v8 device];
      device = v5->_device;
      v5->_device = device;

      configState = [v8 configState];
      v5->_configurationState = [configState intValue];
    }

    [(HMDUser *)v5 _setRemoteAccessAllowed:0];
  }

  return v5;
}

@end