@interface __HMDApplicationInfo
- (BOOL)isEqual:(id)equal;
- (__HMDApplicationInfo)initWithRecord:(id)record;
- (id)vendorIdentifier;
@end

@implementation __HMDApplicationInfo

- (id)vendorIdentifier
{
  v7.receiver = self;
  v7.super_class = __HMDApplicationInfo;
  vendorIdentifier = [(HMDApplicationInfo *)&v7 vendorIdentifier];
  vendorIdentifier = vendorIdentifier;
  if (!vendorIdentifier)
  {
    vendorIdentifier = self->_vendorIdentifier;
  }

  v5 = vendorIdentifier;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = __HMDApplicationInfo;
    if ([(HMDApplicationInfo *)&v12 isEqual:equalCopy])
    {
      v5 = equalCopy;
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
        bundleURL = [(HMDApplicationInfo *)self bundleURL];
        bundleURL2 = [(HMDApplicationInfo *)v7 bundleURL];
        v10 = HMFEqualObjects();
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (__HMDApplicationInfo)initWithRecord:(id)record
{
  recordCopy = record;
  if (recordCopy)
  {
    v13.receiver = self;
    v13.super_class = __HMDApplicationInfo;
    v5 = [(__HMDBundleApplicationInfo *)&v13 initWithRecord:recordCopy];
    if (v5)
    {
      applicationState = [recordCopy applicationState];
      v5->_installed = [applicationState isInstalled];

      deviceIdentifierForVendor = [recordCopy deviceIdentifierForVendor];
      uUIDString = [deviceIdentifierForVendor UUIDString];
      hm_generateSHA1 = [uUIDString hm_generateSHA1];
      vendorIdentifier = v5->_vendorIdentifier;
      v5->_vendorIdentifier = hm_generateSHA1;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end