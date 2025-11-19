@interface HMDCameraAccessModeBulletinNotificationRegistrationRemote
- (BOOL)isEqual:(id)a3;
- (HMDCameraAccessModeBulletinNotificationRegistrationRemote)initWithCameraAccessModeBulletinNotificationRegistration:(id)a3 source:(id)a4;
- (HMDCameraAccessModeBulletinNotificationRegistrationRemote)initWithCoder:(id)a3;
- (id)attributeDescriptions;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDCameraAccessModeBulletinNotificationRegistrationRemote

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDCameraAccessModeBulletinNotificationRegistrationRemote *)self registration];
  v5 = [v3 initWithName:@"registration" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDCameraAccessModeBulletinNotificationRegistrationRemote *)self source];
  v8 = [v6 initWithName:@"source" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDCameraAccessModeBulletinNotificationRegistrationRemote)initWithCoder:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDCAMBNRR.ck.r"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDCAMBNRR.ck.s"];
    if (v6)
    {
      v7 = [(HMDCameraAccessModeBulletinNotificationRegistrationRemote *)self initWithCameraAccessModeBulletinNotificationRegistration:v5 source:v6];
      v8 = v7;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v7 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v17 = 138543618;
        v18 = v14;
        v19 = 2112;
        v20 = 0;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded source: %@", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v8 = 0;
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v7 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = 0;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded registration: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraAccessModeBulletinNotificationRegistrationRemote *)self registration];
  [v4 encodeObject:v5 forKey:@"HMDCAMBNRR.ck.r"];

  v6 = [(HMDCameraAccessModeBulletinNotificationRegistrationRemote *)self source];
  [v4 encodeObject:v6 forKey:@"HMDCAMBNRR.ck.s"];
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
  if (v6)
  {
    v7 = [(HMDCameraAccessModeBulletinNotificationRegistrationRemote *)self registration];
    v8 = [v6 registration];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMDCameraAccessModeBulletinNotificationRegistrationRemote *)self source];
      v10 = [v6 source];
      v11 = [v9 isEqual:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (HMDCameraAccessModeBulletinNotificationRegistrationRemote)initWithCameraAccessModeBulletinNotificationRegistration:(id)a3 source:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = v8;
  if (!v8)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return +[(HMDCameraAccessModeBulletinNotificationRegistrationRemote *)v13];
  }

  v15.receiver = self;
  v15.super_class = HMDCameraAccessModeBulletinNotificationRegistrationRemote;
  v10 = [(HMDCameraAccessModeBulletinNotificationRegistrationRemote *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_registration, a3);
    objc_storeStrong(&v11->_source, a4);
  }

  return v11;
}

@end