@interface PKAddSecureElementPassConfiguration
- (PKAddSecureElementPassConfiguration)initWithCoder:(id)a3;
- (PKAddSecureElementPassConfiguration)initWithType:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_extendableDescription:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateAllowManagedAppleIDWithEntitlements:(id)a3;
@end

@implementation PKAddSecureElementPassConfiguration

- (PKAddSecureElementPassConfiguration)initWithType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PKAddSecureElementPassConfiguration;
  result = [(PKAddSecureElementPassConfiguration *)&v5 init];
  if (result)
  {
    result->_configurationType = a3;
  }

  return result;
}

- (void)updateAllowManagedAppleIDWithEntitlements:(id)a3
{
  v7 = a3;
  if ([v7 secureElementPassProvisioningForMAIDs])
  {
    v4 = 1;
    v5 = v7;
  }

  else
  {
    v6 = [v7 passesAllAccess];
    v5 = v7;
    if (v6)
    {
      goto LABEL_6;
    }

    v4 = 2;
  }

  self->_allowManagedAppleID = v4;
LABEL_6:
}

- (void)encodeWithCoder:(id)a3
{
  configurationType = self->_configurationType;
  v8 = a3;
  [v8 encodeInteger:configurationType forKey:@"configurationType"];
  [v8 encodeObject:self->_issuerIdentifier forKey:@"issuerIdentifier"];
  [v8 encodeObject:self->_localizedDescription forKey:@"localizedDescription"];
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

  [v8 encodeObject:v7 forKey:@"allowManagedAppleID"];
}

- (PKAddSecureElementPassConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKAddSecureElementPassConfiguration;
  v5 = [(PKAddSecureElementPassConfiguration *)&v14 init];
  if (v5)
  {
    v5->_configurationType = [v4 decodeIntegerForKey:@"configurationType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"issuerIdentifier"];
    issuerIdentifier = v5->_issuerIdentifier;
    v5->_issuerIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowManagedAppleID"];
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

- (void)_extendableDescription:(id)a3
{
  configurationType = self->_configurationType;
  v8 = a3;
  [v8 appendFormat:@"configurationType: '%lu'; ", configurationType];
  [v8 appendFormat:@"issuerIdentifier: '%@'; ", self->_issuerIdentifier];
  [v8 appendFormat:@"localizedDescription: '%@'; ", self->_localizedDescription];
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

  [v8 appendFormat:@"allowManagedAppleID: '%@'; ", v7];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[3] = self->_configurationType;
  v6 = [(NSString *)self->_issuerIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_localizedDescription copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v5[4] = self->_allowManagedAppleID;
  return v5;
}

@end