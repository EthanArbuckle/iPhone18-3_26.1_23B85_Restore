@interface HAPAccessoryInfo
- (BOOL)isCertified;
- (BOOL)isDenylisted;
- (HAPAccessoryInfo)initWithName:(id)name manufacturer:(id)manufacturer modelName:(id)modelName category:(id)category certificationStatus:(id)status denylisted:(id)denylisted ppid:(id)ppid;
- (id)description;
@end

@implementation HAPAccessoryInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(HAPAccessoryInfo *)self name];
  manufacturer = [(HAPAccessoryInfo *)self manufacturer];
  modelName = [(HAPAccessoryInfo *)self modelName];
  category = [(HAPAccessoryInfo *)self category];
  certificationStatus = [(HAPAccessoryInfo *)self certificationStatus];
  denylisted = [(HAPAccessoryInfo *)self denylisted];
  ppid = [(HAPAccessoryInfo *)self ppid];
  v11 = [v3 stringWithFormat:@"Name: %@, Manufacturer: %@, Model: %@, Category: %@, Certification Status: %@, denylisted: %@, ppid: %@", name, manufacturer, modelName, category, certificationStatus, denylisted, ppid];

  return v11;
}

- (BOOL)isDenylisted
{
  denylisted = [(HAPAccessoryInfo *)self denylisted];
  uppercaseString = [denylisted uppercaseString];
  v4 = [@"YES" isEqualToString:uppercaseString];

  return v4;
}

- (BOOL)isCertified
{
  certificationStatus = [(HAPAccessoryInfo *)self certificationStatus];
  uppercaseString = [certificationStatus uppercaseString];
  v4 = [@"CERTIFIED" isEqualToString:uppercaseString];

  return v4;
}

- (HAPAccessoryInfo)initWithName:(id)name manufacturer:(id)manufacturer modelName:(id)modelName category:(id)category certificationStatus:(id)status denylisted:(id)denylisted ppid:(id)ppid
{
  v33 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  manufacturerCopy = manufacturer;
  modelNameCopy = modelName;
  categoryCopy = category;
  statusCopy = status;
  denylistedCopy = denylisted;
  ppidCopy = ppid;
  if (!nameCopy)
  {
    context = objc_autoreleasePoolPush();
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v19 = v24 = manufacturerCopy;
      *buf = 138543362;
      v32 = v19;
      _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@Accessory name is Unknown", buf, 0xCu);

      manufacturerCopy = v24;
    }

    objc_autoreleasePoolPop(context);
    nameCopy = @"Unknown";
  }

  v30.receiver = self;
  v30.super_class = HAPAccessoryInfo;
  v20 = [(HAPAccessoryInfo *)&v30 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_name, nameCopy);
    objc_storeStrong(&v21->_manufacturer, manufacturer);
    objc_storeStrong(&v21->_modelName, modelName);
    objc_storeStrong(&v21->_category, category);
    objc_storeStrong(&v21->_certificationStatus, status);
    objc_storeStrong(&v21->_denylisted, denylisted);
    objc_storeStrong(&v21->_ppid, ppid);
    v21->_authenticated = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

@end