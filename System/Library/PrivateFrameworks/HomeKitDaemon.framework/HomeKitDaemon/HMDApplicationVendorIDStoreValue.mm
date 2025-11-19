@interface HMDApplicationVendorIDStoreValue
- (HMDApplicationVendorIDStoreValue)initWithCoder:(id)a3;
- (HMDApplicationVendorIDStoreValue)initWithVendorIDSHA1:(id)a3 applicationBundleID:(id)a4 companionAppBundleID:(id)a5 isSPIClient:(BOOL)a6;
- (id)attributeDescriptions;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDApplicationVendorIDStoreValue

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(HMDApplicationVendorIDStoreValue *)self vendorIDSHA1];
  [v7 encodeObject:v4 forKey:@"HM.vendorID"];

  v5 = [(HMDApplicationVendorIDStoreValue *)self applicationBundleID];
  [v7 encodeObject:v5 forKey:@"HM.applicationBundleID"];

  v6 = [(HMDApplicationVendorIDStoreValue *)self companionAppBundleID];
  [v7 encodeObject:v6 forKey:@"HM.companionApplicationBundleID"];

  [v7 encodeBool:-[HMDApplicationVendorIDStoreValue isSPIClient](self forKey:{"isSPIClient"), @"HM.isSPIApplication"}];
}

- (HMDApplicationVendorIDStoreValue)initWithCoder:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.vendorID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.applicationBundleID"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.companionApplicationBundleID"];
  v8 = [v4 decodeBoolForKey:@"HM.isSPIApplication"];
  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v13 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v17 = 138543874;
      v18 = v12;
      v19 = 2112;
      v20 = v5;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded vendorIDSHA1: %@, applicationBundleID: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = 0;
  }

  else
  {
    v13 = [(HMDApplicationVendorIDStoreValue *)self initWithVendorIDSHA1:v5 applicationBundleID:v6 companionAppBundleID:v7 isSPIClient:v8];
    v14 = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)attributeDescriptions
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDApplicationVendorIDStoreValue *)self vendorIDSHA1];
  v5 = [v3 initWithName:@"Vendor ID" value:v4];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDApplicationVendorIDStoreValue *)self applicationBundleID];
  v8 = [v6 initWithName:@"Bundle ID" value:v7];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDApplicationVendorIDStoreValue *)self companionAppBundleID];
  v11 = [v9 initWithName:@"Companion Bundle ID" value:v10];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDApplicationVendorIDStoreValue *)self isSPIClient];
  v13 = HMFBooleanToString();
  v14 = [v12 initWithName:@"Is SPI Client" value:v13];
  v18[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (HMDApplicationVendorIDStoreValue)initWithVendorIDSHA1:(id)a3 applicationBundleID:(id)a4 companionAppBundleID:(id)a5 isSPIClient:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21.receiver = self;
  v21.super_class = HMDApplicationVendorIDStoreValue;
  v13 = [(HMDApplicationVendorIDStoreValue *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    vendorIDSHA1 = v13->_vendorIDSHA1;
    v13->_vendorIDSHA1 = v14;

    v16 = [v11 copy];
    applicationBundleID = v13->_applicationBundleID;
    v13->_applicationBundleID = v16;

    v18 = [v12 copy];
    companionAppBundleID = v13->_companionAppBundleID;
    v13->_companionAppBundleID = v18;

    v13->_spiClient = a6;
  }

  return v13;
}

@end