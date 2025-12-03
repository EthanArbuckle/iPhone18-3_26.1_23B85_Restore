@interface HMDCameraAccessModeBulletinNotificationRegistrationRemote
- (BOOL)isEqual:(id)equal;
- (HMDCameraAccessModeBulletinNotificationRegistrationRemote)initWithCameraAccessModeBulletinNotificationRegistration:(id)registration source:(id)source;
- (HMDCameraAccessModeBulletinNotificationRegistrationRemote)initWithCoder:(id)coder;
- (id)attributeDescriptions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDCameraAccessModeBulletinNotificationRegistrationRemote

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  registration = [(HMDCameraAccessModeBulletinNotificationRegistrationRemote *)self registration];
  v5 = [v3 initWithName:@"registration" value:registration];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  source = [(HMDCameraAccessModeBulletinNotificationRegistrationRemote *)self source];
  v8 = [v6 initWithName:@"source" value:source];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDCameraAccessModeBulletinNotificationRegistrationRemote)initWithCoder:(id)coder
{
  v21 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDCAMBNRR.ck.r"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDCAMBNRR.ck.s"];
    if (v6)
    {
      selfCopy2 = [(HMDCameraAccessModeBulletinNotificationRegistrationRemote *)self initWithCameraAccessModeBulletinNotificationRegistration:v5 source:v6];
      v8 = selfCopy2;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy2 = self;
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
    selfCopy2 = self;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  registration = [(HMDCameraAccessModeBulletinNotificationRegistrationRemote *)self registration];
  [coderCopy encodeObject:registration forKey:@"HMDCAMBNRR.ck.r"];

  source = [(HMDCameraAccessModeBulletinNotificationRegistrationRemote *)self source];
  [coderCopy encodeObject:source forKey:@"HMDCAMBNRR.ck.s"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    registration = [(HMDCameraAccessModeBulletinNotificationRegistrationRemote *)self registration];
    registration2 = [v6 registration];
    if ([registration isEqual:registration2])
    {
      source = [(HMDCameraAccessModeBulletinNotificationRegistrationRemote *)self source];
      source2 = [v6 source];
      v11 = [source isEqual:source2];
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

- (HMDCameraAccessModeBulletinNotificationRegistrationRemote)initWithCameraAccessModeBulletinNotificationRegistration:(id)registration source:(id)source
{
  registrationCopy = registration;
  sourceCopy = source;
  if (!registrationCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = sourceCopy;
  if (!sourceCopy)
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
    objc_storeStrong(&v10->_registration, registration);
    objc_storeStrong(&v11->_source, source);
  }

  return v11;
}

@end