@interface HAPAccessoryInfo
- (BOOL)isCertified;
- (BOOL)isDenylisted;
- (HAPAccessoryInfo)initWithName:(id)a3 manufacturer:(id)a4 modelName:(id)a5 category:(id)a6 certificationStatus:(id)a7 denylisted:(id)a8 ppid:(id)a9;
- (id)description;
@end

@implementation HAPAccessoryInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPAccessoryInfo *)self name];
  v5 = [(HAPAccessoryInfo *)self manufacturer];
  v6 = [(HAPAccessoryInfo *)self modelName];
  v7 = [(HAPAccessoryInfo *)self category];
  v8 = [(HAPAccessoryInfo *)self certificationStatus];
  v9 = [(HAPAccessoryInfo *)self denylisted];
  v10 = [(HAPAccessoryInfo *)self ppid];
  v11 = [v3 stringWithFormat:@"Name: %@, Manufacturer: %@, Model: %@, Category: %@, Certification Status: %@, denylisted: %@, ppid: %@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (BOOL)isDenylisted
{
  v2 = [(HAPAccessoryInfo *)self denylisted];
  v3 = [v2 uppercaseString];
  v4 = [@"YES" isEqualToString:v3];

  return v4;
}

- (BOOL)isCertified
{
  v2 = [(HAPAccessoryInfo *)self certificationStatus];
  v3 = [v2 uppercaseString];
  v4 = [@"CERTIFIED" isEqualToString:v3];

  return v4;
}

- (HAPAccessoryInfo)initWithName:(id)a3 manufacturer:(id)a4 modelName:(id)a5 category:(id)a6 certificationStatus:(id)a7 denylisted:(id)a8 ppid:(id)a9
{
  v33 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v29 = a5;
  v28 = a6;
  v27 = a7;
  v26 = a8;
  v17 = a9;
  if (!v15)
  {
    context = objc_autoreleasePoolPush();
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v19 = v24 = v16;
      *buf = 138543362;
      v32 = v19;
      _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@Accessory name is Unknown", buf, 0xCu);

      v16 = v24;
    }

    objc_autoreleasePoolPop(context);
    v15 = @"Unknown";
  }

  v30.receiver = self;
  v30.super_class = HAPAccessoryInfo;
  v20 = [(HAPAccessoryInfo *)&v30 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_name, v15);
    objc_storeStrong(&v21->_manufacturer, a4);
    objc_storeStrong(&v21->_modelName, a5);
    objc_storeStrong(&v21->_category, a6);
    objc_storeStrong(&v21->_certificationStatus, a7);
    objc_storeStrong(&v21->_denylisted, a8);
    objc_storeStrong(&v21->_ppid, a9);
    v21->_authenticated = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

@end