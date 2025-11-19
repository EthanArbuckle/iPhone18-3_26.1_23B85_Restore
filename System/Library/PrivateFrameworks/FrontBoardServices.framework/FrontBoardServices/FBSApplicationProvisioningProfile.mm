@interface FBSApplicationProvisioningProfile
- (BOOL)allowsApplicationIdentifierEntitlement:(id)a3;
- (FBSApplicationProvisioningProfile)initWithSignerIdentity:(id)a3 profile:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
@end

@implementation FBSApplicationProvisioningProfile

- (FBSApplicationProvisioningProfile)initWithSignerIdentity:(id)a3 profile:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = FBSApplicationProvisioningProfile;
  v8 = [(FBSApplicationProvisioningProfile *)&v22 init];
  if (v8)
  {
    v9 = [v6 copy];
    signerIdentity = v8->_signerIdentity;
    v8->_signerIdentity = v9;

    v11 = soft_MISProvisioningProfileGetExpirationDate(v7);
    expirationDate = v8->_expirationDate;
    v8->_expirationDate = v11;

    v13 = [soft_MISProvisioningProfileGetEntitlements(v7) valueForKey:@"application-identifier"];
    v14 = [v13 copy];
    allowedApplicationIdentifierEntitlement = v8->_allowedApplicationIdentifierEntitlement;
    v8->_allowedApplicationIdentifierEntitlement = v14;

    v8->_appleInternalProfile = soft_MISProvisioningProfileIsAppleInternalProfile(v7) != 0;
    v8->_beta = soft_MISProvisioningProfileGrantsEntitlement(v7, @"beta-reports-active", *MEMORY[0x1E695E4D0]) != 0;
    Value = soft_MISProfileGetValue(v7, @"LocalProvision");
    if (Value)
    {
      v17 = Value;
      v18 = CFGetTypeID(Value);
      if (v18 == CFBooleanGetTypeID())
      {
        v8->_freeDeveloperProfile = CFBooleanGetValue(v17) != 0;
      }
    }

    v8->_provisionsAllDevices = soft_MISProvisioningProfileProvisionsAllDevices(v7) != 0;
    v19 = [soft_MISProvisioningProfileGetUUID(v7) copy];
    UUID = v8->_UUID;
    v8->_UUID = v19;
  }

  return v8;
}

- (BOOL)allowsApplicationIdentifierEntitlement:(id)a3
{
  v4 = a3;
  if ([(FBSApplicationProvisioningProfile *)self isAppleInternalProfile])
  {
    v5 = 1;
  }

  else if ([v4 length] && -[NSString length](self->_allowedApplicationIdentifierEntitlement, "length"))
  {
    if ([(NSString *)self->_allowedApplicationIdentifierEntitlement hasSuffix:@"*"])
    {
      v6 = -[NSString substringToIndex:](self->_allowedApplicationIdentifierEntitlement, "substringToIndex:", -[NSString length](self->_allowedApplicationIdentifierEntitlement, "length") - [@"*" length]);
      v5 = [v4 hasPrefix:v6];
    }

    else
    {
      v5 = [v4 isEqualToString:self->_allowedApplicationIdentifierEntitlement];
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
  v2 = [(FBSApplicationProvisioningProfile *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBSApplicationProvisioningProfile *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(FBSApplicationProvisioningProfile *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_signerIdentity withName:@"signerIdentity"];
  v6 = [MEMORY[0x1E696AB78] localizedStringFromDate:self->_expirationDate dateStyle:3 timeStyle:3];
  v7 = [v4 appendObject:v6 withName:@"expirationDate" skipIfNil:1];

  return v4;
}

@end