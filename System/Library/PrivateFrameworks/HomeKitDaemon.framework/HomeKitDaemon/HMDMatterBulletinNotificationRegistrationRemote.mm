@interface HMDMatterBulletinNotificationRegistrationRemote
- (BOOL)isEqual:(id)equal;
- (HMDMatterBulletinNotificationRegistrationRemote)initWithCoder:(id)coder;
- (HMDMatterBulletinNotificationRegistrationRemote)initWithMatterBulletinNotificationRegistration:(id)registration source:(id)source;
- (id)attributeDescriptions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDMatterBulletinNotificationRegistrationRemote

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  registration = [(HMDMatterBulletinNotificationRegistrationRemote *)self registration];
  v5 = [v3 initWithName:@"registration" value:registration];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  source = [(HMDMatterBulletinNotificationRegistrationRemote *)self source];
  v8 = [v6 initWithName:@"source" value:source];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDMatterBulletinNotificationRegistrationRemote)initWithCoder:(id)coder
{
  v21 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDMBNRR.ck.r"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDMBNRR.ck.s"];
    if (v6)
    {
      selfCopy2 = [(HMDMatterBulletinNotificationRegistrationRemote *)self initWithMatterBulletinNotificationRegistration:v5 source:v6];
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
  registration = [(HMDMatterBulletinNotificationRegistrationRemote *)self registration];
  [coderCopy encodeObject:registration forKey:@"HMDMBNRR.ck.r"];

  source = [(HMDMatterBulletinNotificationRegistrationRemote *)self source];
  [coderCopy encodeObject:source forKey:@"HMDMBNRR.ck.s"];
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
    source = [(HMDMatterBulletinNotificationRegistrationRemote *)self source];
    source2 = [v6 source];
    if ([source isEqual:source2])
    {
      registration = [(HMDMatterBulletinNotificationRegistrationRemote *)self registration];
      registration2 = [v6 registration];
      v11 = [registration isEqual:registration2];
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

- (HMDMatterBulletinNotificationRegistrationRemote)initWithMatterBulletinNotificationRegistration:(id)registration source:(id)source
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
    return +[(HMDMatterBulletinNotificationRegistrationRemote *)v13];
  }

  v15.receiver = self;
  v15.super_class = HMDMatterBulletinNotificationRegistrationRemote;
  v10 = [(HMDMatterBulletinNotificationRegistrationRemote *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_registration, registration);
    objc_storeStrong(&v11->_source, source);
  }

  return v11;
}

@end