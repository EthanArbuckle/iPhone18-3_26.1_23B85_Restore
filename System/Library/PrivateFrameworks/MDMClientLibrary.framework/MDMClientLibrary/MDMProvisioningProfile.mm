@interface MDMProvisioningProfile
- (BOOL)allowsAppIDEntitlement:(id)entitlement;
- (MDMProvisioningProfile)initWithProfile:(void *)profile;
@end

@implementation MDMProvisioningProfile

- (MDMProvisioningProfile)initWithProfile:(void *)profile
{
  v12.receiver = self;
  v12.super_class = MDMProvisioningProfile;
  v4 = [(MDMProvisioningProfile *)&v12 init];
  if (v4)
  {
    if (profile)
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

- (BOOL)allowsAppIDEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  if ([(MDMProvisioningProfile *)self isAppleInternal])
  {
    v5 = 1;
  }

  else if ([entitlementCopy length] && (-[MDMProvisioningProfile allowedAppIDEntitlement](self, "allowedAppIDEntitlement"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v7))
  {
    allowedAppIDEntitlement = [(MDMProvisioningProfile *)self allowedAppIDEntitlement];
    v9 = [allowedAppIDEntitlement hasSuffix:@"*"];

    allowedAppIDEntitlement2 = [(MDMProvisioningProfile *)self allowedAppIDEntitlement];
    v11 = allowedAppIDEntitlement2;
    if (v9)
    {
      v12 = [allowedAppIDEntitlement2 length];
      v13 = v12 - [@"*" length];

      allowedAppIDEntitlement3 = [(MDMProvisioningProfile *)self allowedAppIDEntitlement];
      v11 = [allowedAppIDEntitlement3 substringToIndex:v13];

      v15 = [entitlementCopy hasPrefix:v11];
    }

    else
    {
      v15 = [entitlementCopy isEqualToString:allowedAppIDEntitlement2];
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