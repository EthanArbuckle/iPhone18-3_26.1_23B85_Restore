@interface MDMProvisioningProfile
- (BOOL)allowsAppIDEntitlement:(id)a3;
- (MDMProvisioningProfile)initWithProfile:(void *)a3;
@end

@implementation MDMProvisioningProfile

- (MDMProvisioningProfile)initWithProfile:(void *)a3
{
  v12.receiver = self;
  v12.super_class = MDMProvisioningProfile;
  v4 = [(MDMProvisioningProfile *)&v12 init];
  if (v4)
  {
    if (a3)
    {
      v5 = [MISProvisioningProfileGetUUID() copy];
      uuid = v4->_uuid;
      v4->_uuid = v5;

      v7 = [MISProvisioningProfileGetEntitlements() valueForKey:@"application-identifier"];
      v8 = [v7 copy];
      allowedAppIDEntitlement = v4->_allowedAppIDEntitlement;
      v4->_allowedAppIDEntitlement = v8;

      v4->_isAppleInternal = MISProvisioningProfileIsAppleInternalProfile() != 0;
      v10 = *MEMORY[0x277CBED28];
      v4->_isBeta = MISProvisioningProfileGrantsEntitlement() != 0;
      v4->_isFreePP = MISProvisioningProfileIsForLocalProvisioning() != 0;
      v4->_isUniversalPP = MISProvisioningProfileProvisionsAllDevices() != 0;
    }

    else
    {
      NSLog(&cfstr_Mdmprovisionin.isa);
    }
  }

  return v4;
}

- (BOOL)allowsAppIDEntitlement:(id)a3
{
  v4 = a3;
  if ([(MDMProvisioningProfile *)self isAppleInternal])
  {
    v5 = 1;
  }

  else if ([v4 length] && (-[MDMProvisioningProfile allowedAppIDEntitlement](self, "allowedAppIDEntitlement"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v7))
  {
    v8 = [(MDMProvisioningProfile *)self allowedAppIDEntitlement];
    v9 = [v8 hasSuffix:@"*"];

    v10 = [(MDMProvisioningProfile *)self allowedAppIDEntitlement];
    v11 = v10;
    if (v9)
    {
      v12 = [v10 length];
      v13 = v12 - [@"*" length];

      v14 = [(MDMProvisioningProfile *)self allowedAppIDEntitlement];
      v11 = [v14 substringToIndex:v13];

      v15 = [v4 hasPrefix:v11];
    }

    else
    {
      v15 = [v4 isEqualToString:v10];
    }

    v5 = v15;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end