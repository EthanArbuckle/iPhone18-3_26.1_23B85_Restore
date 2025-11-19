@interface PKPaymentShareableCredential
- (BOOL)_isEqualToCredential:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKPaymentShareableCredential)initWithCoder:(id)a3;
- (PKPaymentShareableCredential)initWithEncryptedProvisioningTarget:(id)a3 provisioningSharingIdentifier:(id)a4 passThumbnailImageData:(id)a5 isBackgroundProvisioning:(BOOL)a6;
- (id)activationMethods;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentShareableCredential

- (PKPaymentShareableCredential)initWithEncryptedProvisioningTarget:(id)a3 provisioningSharingIdentifier:(id)a4 passThumbnailImageData:(id)a5 isBackgroundProvisioning:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = PKPaymentShareableCredential;
  v14 = [(PKPaymentCredential *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sharingInstanceIdentifier, a4);
    objc_storeStrong(&v15->_encryptedProvisioningTarget, a3);
    objc_storeStrong(&v15->_passThumbnailImageData, a5);
    v15->_backgroundProvisioning = a6;
    [(PKPaymentCredential *)v15 setCardType:3];
  }

  return v15;
}

- (PKPaymentShareableCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKPaymentShareableCredential;
  v5 = [(PKPaymentCredential *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingInstanceIdentifier"];
    sharingInstanceIdentifier = v5->_sharingInstanceIdentifier;
    v5->_sharingInstanceIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encryptedProvisioningTarget"];
    encryptedProvisioningTarget = v5->_encryptedProvisioningTarget;
    v5->_encryptedProvisioningTarget = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passThumbnailImageData"];
    passThumbnailImageData = v5->_passThumbnailImageData;
    v5->_passThumbnailImageData = v10;

    v5->_backgroundProvisioning = [v4 decodeBoolForKey:@"backgroundProvisioning"];
    v5->_source = [v4 decodeIntegerForKey:@"source"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalizedAuth"];
    externalizedAuth = v5->_externalizedAuth;
    v5->_externalizedAuth = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPaymentShareableCredential;
  v4 = a3;
  [(PKPaymentCredential *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_sharingInstanceIdentifier forKey:{@"sharingInstanceIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_encryptedProvisioningTarget forKey:@"encryptedProvisioningTarget"];
  [v4 encodeObject:self->_passThumbnailImageData forKey:@"passThumbnailImageData"];
  [v4 encodeBool:self->_backgroundProvisioning forKey:@"backgroundProvisioning"];
  [v4 encodeInteger:self->_source forKey:@"source"];
  [v4 encodeObject:self->_externalizedAuth forKey:@"externalizedAuth"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"encryptedProvisioningTarget: '%@'; ", self->_encryptedProvisioningTarget];
  [v3 appendFormat:@"sharingInstanceIdentifier: '%@'; ", self->_sharingInstanceIdentifier];
  if (self->_backgroundProvisioning)
  {
    v4 = @"Yes";
  }

  else
  {
    v4 = @"No";
  }

  [v3 appendFormat:@"backgroundProvisioning: '%@'; ", v4];
  [v3 appendFormat:@"source: '%lu'; ", self->_source];
  if (self->_externalizedAuth)
  {
    v5 = @"Yes";
  }

  else
  {
    v5 = @"No";
  }

  [v3 appendFormat:@"hasExternalizedAuth: '%@'; ", v5];
  [v3 appendString:@">"];
  v6 = [v3 copy];

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_encryptedProvisioningTarget];
  [v3 safelyAddObject:self->_sharingInstanceIdentifier];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_source - v4 + 32 * v4;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKPaymentShareableCredential *)self _isEqualToCredential:v4];
  }

  return v5;
}

- (BOOL)_isEqualToCredential:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_16;
  }

  encryptedProvisioningTarget = self->_encryptedProvisioningTarget;
  v6 = v4[15];
  if (encryptedProvisioningTarget)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (encryptedProvisioningTarget != v6)
    {
      goto LABEL_16;
    }
  }

  else if (![(PKEncryptedPushProvisioningTarget *)encryptedProvisioningTarget isEqual:?])
  {
    goto LABEL_16;
  }

  sharingInstanceIdentifier = self->_sharingInstanceIdentifier;
  v9 = v4[16];
  if (sharingInstanceIdentifier)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (sharingInstanceIdentifier == v9)
    {
LABEL_19:
      v11 = self->_source == v4[18];
      goto LABEL_17;
    }
  }

  else if (([(NSString *)sharingInstanceIdentifier isEqual:?]& 1) != 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  v11 = 0;
LABEL_17:

  return v11;
}

- (id)activationMethods
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [PKPaymentCredentialProvisioningMethod alloc];
  v3 = [[PKPassUpgradePrecursorPassGenericReprovisionAction alloc] initWithDeviceProvisioningDataExpected:0];
  v8 = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  v5 = [(PKPaymentCredentialProvisioningMethod *)v2 initWithSupportsFrictionlessProvisioning:1 actions:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  return v6;
}

@end