@interface FBSApplicationProvisioningProfile
- (BOOL)allowsApplicationIdentifierEntitlement:(id)entitlement;
- (FBSApplicationProvisioningProfile)initWithSignerIdentity:(id)identity profile:(id)profile;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation FBSApplicationProvisioningProfile

- (FBSApplicationProvisioningProfile)initWithSignerIdentity:(id)identity profile:(id)profile
{
  identityCopy = identity;
  profileCopy = profile;
  v22.receiver = self;
  v22.super_class = FBSApplicationProvisioningProfile;
  v8 = [(FBSApplicationProvisioningProfile *)&v22 init];
  if (v8)
  {
    v9 = [identityCopy copy];
    signerIdentity = v8->_signerIdentity;
    v8->_signerIdentity = v9;

    v11 = soft_MISProvisioningProfileGetExpirationDate(profileCopy);
    expirationDate = v8->_expirationDate;
    v8->_expirationDate = v11;

    v13 = [soft_MISProvisioningProfileGetEntitlements(profileCopy) valueForKey:@"application-identifier"];
    v14 = [v13 copy];
    allowedApplicationIdentifierEntitlement = v8->_allowedApplicationIdentifierEntitlement;
    v8->_allowedApplicationIdentifierEntitlement = v14;

    v8->_appleInternalProfile = soft_MISProvisioningProfileIsAppleInternalProfile(profileCopy) != 0;
    v8->_beta = soft_MISProvisioningProfileGrantsEntitlement(profileCopy, @"beta-reports-active", *MEMORY[0x1E695E4D0]) != 0;
    Value = soft_MISProfileGetValue(profileCopy, @"LocalProvision");
    if (Value)
    {
      v17 = Value;
      v18 = CFGetTypeID(Value);
      if (v18 == CFBooleanGetTypeID())
      {
        v8->_freeDeveloperProfile = CFBooleanGetValue(v17) != 0;
      }
    }

    v8->_provisionsAllDevices = soft_MISProvisioningProfileProvisionsAllDevices(profileCopy) != 0;
    v19 = [soft_MISProvisioningProfileGetUUID(profileCopy) copy];
    UUID = v8->_UUID;
    v8->_UUID = v19;
  }

  return v8;
}

- (BOOL)allowsApplicationIdentifierEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  if ([(FBSApplicationProvisioningProfile *)self isAppleInternalProfile])
  {
    v5 = 1;
  }

  else if ([entitlementCopy length] && -[NSString length](self->_allowedApplicationIdentifierEntitlement, "length"))
  {
    if ([(NSString *)self->_allowedApplicationIdentifierEntitlement hasSuffix:@"*"])
    {
      v6 = -[NSString substringToIndex:](self->_allowedApplicationIdentifierEntitlement, "substringToIndex:", -[NSString length](self->_allowedApplicationIdentifierEntitlement, "length") - [@"*" length]);
      v5 = [entitlementCopy hasPrefix:v6];
    }

    else
    {
      v5 = [entitlementCopy isEqualToString:self->_allowedApplicationIdentifierEntitlement];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSApplicationProvisioningProfile *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSApplicationProvisioningProfile *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(FBSApplicationProvisioningProfile *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_signerIdentity withName:@"signerIdentity"];
  v6 = [MEMORY[0x1E696AB78] localizedStringFromDate:self->_expirationDate dateStyle:3 timeStyle:3];
  v7 = [succinctDescriptionBuilder appendObject:v6 withName:@"expirationDate" skipIfNil:1];

  return succinctDescriptionBuilder;
}

@end