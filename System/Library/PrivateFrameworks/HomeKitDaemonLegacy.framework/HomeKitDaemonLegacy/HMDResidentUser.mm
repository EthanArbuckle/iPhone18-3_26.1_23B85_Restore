@interface HMDResidentUser
- (BOOL)isBlocked;
- (BOOL)updateWithDevice:(id)a3;
- (HMDDevice)device;
- (HMDResidentUser)initWithCoder:(id)a3;
- (HMDResidentUser)initWithDevice:(id)a3 home:(id)a4 pairingIdentity:(id)a5 configurationState:(unint64_t)a6;
- (HMDResidentUser)initWithModelObject:(id)a3;
- (NSString)deviceIdentifier;
- (id)displayName;
- (id)legacyUser;
- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4;
- (id)userID;
- (unint64_t)configurationState;
- (void)configureWithHome:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)registerIdentity;
- (void)setConfigurationState:(unint64_t)a3;
- (void)setDevice:(id)a3;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
@end

@implementation HMDResidentUser

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HMDResidentUser;
  [(HMDUser *)&v8 encodeWithCoder:v4];
  v5 = [(HMDResidentUser *)self device];
  [v4 encodeObject:v5 forKey:@"HM.device"];

  if ([v4 hmd_isForSharedUser])
  {
    v6 = 3;
  }

  else
  {
    v6 = [(HMDResidentUser *)self configurationState];
  }

  [v4 encodeInt32:v6 forKey:@"residentConfigState"];
  [v4 encodeBool:1 forKey:@"userIsRemoteGateway"];
  v7 = [(HMDResidentUser *)self deviceIdentifier];
  [v4 encodeObject:v7 forKey:@"residentIdentifier"];
}

- (HMDResidentUser)initWithCoder:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = HMDResidentUser;
  v5 = [(HMDUser *)&v28 initWithCoder:v4];
  if (v5)
  {
    v5->_configurationState = [v4 decodeInt32ForKey:@"residentConfigState"];
    if ([v4 containsValueForKey:@"HM.device"])
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.device"];
      device = v5->_device;
      v5->_device = v6;
LABEL_17:

      goto LABEL_18;
    }

    device = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userID"];
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
      v12 = [(HMDResidentUser *)v5 userID];

      if (v12)
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
    v19 = [(HMDResidentUser *)v5 userID];

    if (!v19)
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

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
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
    v14 = [v13 device];
    if (v14)
    {
      v15 = v14;
      v16 = [v13 device];
      v17 = [(HMDResidentUser *)self device];
      v18 = HMFEqualObjects();

      if (v18)
      {
        v19 = [v13 device];
        [(HMDResidentUser *)self setDevice:v19];
      }
    }

    v20 = [v13 configState];
    if (v20)
    {
      v21 = v20;
      v22 = [v13 configState];
      v23 = [v22 intValue];
      v24 = [(HMDResidentUser *)self configurationState];

      if (v24 != v23)
      {
        v25 = [(HMDUser *)self home];
        v26 = [v25 isOwnerUser];

        v27 = [v13 configState];
        v28 = [v27 intValue];
        v29 = v28;
        if (v26)
        {
          [(HMDResidentUser *)self setConfigurationState:v28];
        }

        else
        {

          if (v29 == 2)
          {
            v30 = objc_autoreleasePoolPush();
            v31 = self;
            v32 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              v33 = HMFGetLogIdentifier();
              *buf = 138543362;
              v40 = v33;
              _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Disabling", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v30);
            [(HMDResidentUser *)v31 setConfigurationState:3];
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
    [(HMDUser *)&v38 _transactionUserUpdated:0 newValues:v36 message:v10];
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4
{
  v13.receiver = self;
  v13.super_class = HMDResidentUser;
  v5 = [(HMDUser *)&v13 modelObjectWithChangeType:a3 version:a4];
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
    v8 = [(HMDResidentUser *)self device];
    [v7 setDevice:v8];

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDResidentUser configurationState](self, "configurationState")}];
    [v7 setConfigState:v9];

    v10 = [(HMDResidentUser *)self encodingRemoteDisplayName];
    [v7 setDisplayName:v10];

    v11 = [(HMDResidentUser *)self deviceIdentifier];
    [v7 setDeviceIdentifier:v11];
  }

  return v5;
}

- (id)legacyUser
{
  v2 = [[__HMDLegacyResidentUser alloc] initWithResidentUser:self];

  return v2;
}

- (void)setConfigurationState:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_configurationState = a3;

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
  v3 = [MEMORY[0x277D0F8E8] productInfo];
  v4 = [v3 productPlatform];

  if (v4 == 3)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(HMDUser *)self home];
    v7 = v6;
    if (v6)
    {
      v5 = [v6 isOwnerUser] - 1;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

- (BOOL)updateWithDevice:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(HMDResidentUser *)self device];
    v6 = v5 == 0;

    if (!v5)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v21 = 138543618;
        v22 = v10;
        v23 = 2112;
        v24 = v4;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating the device: %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      [(HMDResidentUser *)v8 setDevice:v4];
    }

    v11 = [(HMDResidentUser *)self device];
    v12 = [v11 name];
    v13 = [v4 name];
    v14 = HMFEqualObjects();

    if ((v14 & 1) == 0)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v21 = 138543618;
        v22 = v18;
        v23 = 2112;
        v24 = v4;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Updating the device: %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      [(HMDResidentUser *)v16 setDevice:v4];
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

- (void)setDevice:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  device = self->_device;
  self->_device = v4;

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
  v3 = [(HMDUser *)self pairingIdentity];
  if (v3)
  {
    v6 = v3;
    v4 = +[HMDIdentityRegistry sharedRegistry];
    v5 = [(HMDResidentUser *)self device];
    [v4 registerIdentity:v6 device:v5 object:self];

    v3 = v6;
  }
}

- (id)displayName
{
  v2 = [(HMDResidentUser *)self device];
  v3 = [v2 name];

  return v3;
}

- (NSString)deviceIdentifier
{
  v2 = [(HMDResidentUser *)self device];
  v3 = [v2 idsIdentifier];
  v4 = [v3 UUIDString];

  return v4;
}

- (id)userID
{
  v2 = [(HMDResidentUser *)self device];
  v3 = [v2 remoteDestinationString];

  return v3;
}

- (void)configureWithHome:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HMDResidentUser;
  [(HMDUser *)&v10 configureWithHome:v4];
  if ([(HMDResidentUser *)self isBlocked]&& [(HMDResidentUser *)self configurationState]== 2)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Disabling as we are blocked", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDResidentUser *)v6 setConfigurationState:3];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (HMDResidentUser)initWithDevice:(id)a3 home:(id)a4 pairingIdentity:(id)a5 configurationState:(unint64_t)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = HMDResidentUser;
  v12 = [(HMDUser *)&v15 initWithAccountHandle:0 home:a4 pairingIdentity:a5 privilege:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_device, a3);
    v13->_configurationState = a6;
    [(HMDUser *)v13 _setRemoteAccessAllowed:0];
  }

  return v13;
}

- (HMDResidentUser)initWithModelObject:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HMDResidentUser;
  v5 = [(HMDUser *)&v13 initWithModelObject:v4];
  if (v5)
  {
    v6 = v4;
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
      v9 = [v8 device];
      device = v5->_device;
      v5->_device = v9;

      v11 = [v8 configState];
      v5->_configurationState = [v11 intValue];
    }

    [(HMDUser *)v5 _setRemoteAccessAllowed:0];
  }

  return v5;
}

@end