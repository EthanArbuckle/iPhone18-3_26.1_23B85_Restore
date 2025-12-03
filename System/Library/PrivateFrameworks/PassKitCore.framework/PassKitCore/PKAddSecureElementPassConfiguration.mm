@interface PKAddSecureElementPassConfiguration
- (PKAddSecureElementPassConfiguration)initWithCoder:(id)coder;
- (PKAddSecureElementPassConfiguration)initWithType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_extendableDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
- (void)updateAllowManagedAppleIDWithEntitlements:(id)entitlements;
@end

@implementation PKAddSecureElementPassConfiguration

- (PKAddSecureElementPassConfiguration)initWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = PKAddSecureElementPassConfiguration;
  result = [(PKAddSecureElementPassConfiguration *)&v5 init];
  if (result)
  {
    result->_configurationType = type;
  }

  return result;
}

- (void)updateAllowManagedAppleIDWithEntitlements:(id)entitlements
{
  entitlementsCopy = entitlements;
  if ([entitlementsCopy secureElementPassProvisioningForMAIDs])
  {
    v4 = 1;
    v5 = entitlementsCopy;
  }

  else
  {
    passesAllAccess = [entitlementsCopy passesAllAccess];
    v5 = entitlementsCopy;
    if (passesAllAccess)
    {
      goto LABEL_6;
    }

    v4 = 2;
  }

  self->_allowManagedAppleID = v4;
LABEL_6:
}

- (void)encodeWithCoder:(id)coder
{
  configurationType = self->_configurationType;
  coderCopy = coder;
  [coderCopy encodeInteger:configurationType forKey:@"configurationType"];
  [coderCopy encodeObject:self->_issuerIdentifier forKey:@"issuerIdentifier"];
  [coderCopy encodeObject:self->_localizedDescription forKey:@"localizedDescription"];
  allowManagedAppleID = self->_allowManagedAppleID;
  v6 = @"true";
  if (allowManagedAppleID != 1)
  {
    v6 = 0;
  }

  if (allowManagedAppleID == 2)
  {
    v7 = @"false";
  }

  else
  {
    v7 = v6;
  }

  [coderCopy encodeObject:v7 forKey:@"allowManagedAppleID"];
}

- (PKAddSecureElementPassConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PKAddSecureElementPassConfiguration;
  v5 = [(PKAddSecureElementPassConfiguration *)&v14 init];
  if (v5)
  {
    v5->_configurationType = [coderCopy decodeIntegerForKey:@"configurationType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"issuerIdentifier"];
    issuerIdentifier = v5->_issuerIdentifier;
    v5->_issuerIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"allowManagedAppleID"];
    if ([v10 isEqualToString:@"true"])
    {
      v11 = 1;
    }

    else
    {
      v12 = [v10 isEqualToString:@"false"];
      v11 = 2;
      if (!v12)
      {
        v11 = 0;
      }
    }

    v5->_allowManagedAppleID = v11;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [(PKAddSecureElementPassConfiguration *)self _extendableDescription:v3];
  [v3 appendFormat:@">"];

  return v3;
}

- (void)_extendableDescription:(id)description
{
  configurationType = self->_configurationType;
  descriptionCopy = description;
  [descriptionCopy appendFormat:@"configurationType: '%lu'; ", configurationType];
  [descriptionCopy appendFormat:@"issuerIdentifier: '%@'; ", self->_issuerIdentifier];
  [descriptionCopy appendFormat:@"localizedDescription: '%@'; ", self->_localizedDescription];
  allowManagedAppleID = self->_allowManagedAppleID;
  v6 = @"true";
  if (allowManagedAppleID != 1)
  {
    v6 = 0;
  }

  if (allowManagedAppleID == 2)
  {
    v7 = @"false";
  }

  else
  {
    v7 = v6;
  }

  [descriptionCopy appendFormat:@"allowManagedAppleID: '%@'; ", v7];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[3] = self->_configurationType;
  v6 = [(NSString *)self->_issuerIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_localizedDescription copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v5[4] = self->_allowManagedAppleID;
  return v5;
}

@end