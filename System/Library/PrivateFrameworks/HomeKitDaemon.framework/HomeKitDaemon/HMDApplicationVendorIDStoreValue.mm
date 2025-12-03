@interface HMDApplicationVendorIDStoreValue
- (HMDApplicationVendorIDStoreValue)initWithCoder:(id)coder;
- (HMDApplicationVendorIDStoreValue)initWithVendorIDSHA1:(id)a1 applicationBundleID:(id)d companionAppBundleID:(id)iD isSPIClient:(BOOL)client;
- (id)attributeDescriptions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDApplicationVendorIDStoreValue

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  vendorIDSHA1 = [(HMDApplicationVendorIDStoreValue *)self vendorIDSHA1];
  [coderCopy encodeObject:vendorIDSHA1 forKey:@"HM.vendorID"];

  applicationBundleID = [(HMDApplicationVendorIDStoreValue *)self applicationBundleID];
  [coderCopy encodeObject:applicationBundleID forKey:@"HM.applicationBundleID"];

  companionAppBundleID = [(HMDApplicationVendorIDStoreValue *)self companionAppBundleID];
  [coderCopy encodeObject:companionAppBundleID forKey:@"HM.companionApplicationBundleID"];

  [coderCopy encodeBool:-[HMDApplicationVendorIDStoreValue isSPIClient](self forKey:{"isSPIClient"), @"HM.isSPIApplication"}];
}

- (HMDApplicationVendorIDStoreValue)initWithCoder:(id)coder
{
  v23 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.vendorID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.applicationBundleID"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.companionApplicationBundleID"];
  v8 = [coderCopy decodeBoolForKey:@"HM.isSPIApplication"];
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
    selfCopy = self;
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
    selfCopy = [(HMDApplicationVendorIDStoreValue *)self initWithVendorIDSHA1:v5 applicationBundleID:v6 companionAppBundleID:v7 isSPIClient:v8];
    v14 = selfCopy;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)attributeDescriptions
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  vendorIDSHA1 = [(HMDApplicationVendorIDStoreValue *)self vendorIDSHA1];
  v5 = [v3 initWithName:@"Vendor ID" value:vendorIDSHA1];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  applicationBundleID = [(HMDApplicationVendorIDStoreValue *)self applicationBundleID];
  v8 = [v6 initWithName:@"Bundle ID" value:applicationBundleID];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  companionAppBundleID = [(HMDApplicationVendorIDStoreValue *)self companionAppBundleID];
  v11 = [v9 initWithName:@"Companion Bundle ID" value:companionAppBundleID];
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

- (HMDApplicationVendorIDStoreValue)initWithVendorIDSHA1:(id)a1 applicationBundleID:(id)d companionAppBundleID:(id)iD isSPIClient:(BOOL)client
{
  a1Copy = a1;
  dCopy = d;
  iDCopy = iD;
  v21.receiver = self;
  v21.super_class = HMDApplicationVendorIDStoreValue;
  v13 = [(HMDApplicationVendorIDStoreValue *)&v21 init];
  if (v13)
  {
    v14 = [a1Copy copy];
    vendorIDSHA1 = v13->_vendorIDSHA1;
    v13->_vendorIDSHA1 = v14;

    v16 = [dCopy copy];
    applicationBundleID = v13->_applicationBundleID;
    v13->_applicationBundleID = v16;

    v18 = [iDCopy copy];
    companionAppBundleID = v13->_companionAppBundleID;
    v13->_companionAppBundleID = v18;

    v13->_spiClient = client;
  }

  return v13;
}

@end