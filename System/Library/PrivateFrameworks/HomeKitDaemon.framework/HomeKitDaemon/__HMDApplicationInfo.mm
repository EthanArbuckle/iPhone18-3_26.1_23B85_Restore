@interface __HMDApplicationInfo
- (BOOL)isEqual:(id)a3;
- (__HMDApplicationInfo)initWithRecord:(id)a3;
- (id)vendorIdentifier;
@end

@implementation __HMDApplicationInfo

- (id)vendorIdentifier
{
  v7.receiver = self;
  v7.super_class = __HMDApplicationInfo;
  v3 = [(HMDApplicationInfo *)&v7 vendorIdentifier];
  vendorIdentifier = v3;
  if (!v3)
  {
    vendorIdentifier = self->_vendorIdentifier;
  }

  v5 = vendorIdentifier;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = __HMDApplicationInfo;
    if ([(HMDApplicationInfo *)&v12 isEqual:v4])
    {
      v5 = v4;
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
        v8 = [(HMDApplicationInfo *)self bundleURL];
        v9 = [(HMDApplicationInfo *)v7 bundleURL];
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

- (__HMDApplicationInfo)initWithRecord:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13.receiver = self;
    v13.super_class = __HMDApplicationInfo;
    v5 = [(__HMDBundleApplicationInfo *)&v13 initWithRecord:v4];
    if (v5)
    {
      v6 = [v4 applicationState];
      v5->_installed = [v6 isInstalled];

      v7 = [v4 deviceIdentifierForVendor];
      v8 = [v7 UUIDString];
      v9 = [v8 hm_generateSHA1];
      vendorIdentifier = v5->_vendorIdentifier;
      v5->_vendorIdentifier = v9;
    }

    self = v5;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end