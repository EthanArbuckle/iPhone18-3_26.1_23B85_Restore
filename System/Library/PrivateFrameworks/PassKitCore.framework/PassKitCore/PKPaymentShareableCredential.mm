@interface PKPaymentShareableCredential
- (BOOL)_isEqualToCredential:(id)credential;
- (BOOL)isEqual:(id)equal;
- (PKPaymentShareableCredential)initWithCoder:(id)coder;
- (PKPaymentShareableCredential)initWithEncryptedProvisioningTarget:(id)target provisioningSharingIdentifier:(id)identifier passThumbnailImageData:(id)data isBackgroundProvisioning:(BOOL)provisioning;
- (id)activationMethods;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentShareableCredential

- (PKPaymentShareableCredential)initWithEncryptedProvisioningTarget:(id)target provisioningSharingIdentifier:(id)identifier passThumbnailImageData:(id)data isBackgroundProvisioning:(BOOL)provisioning
{
  targetCopy = target;
  identifierCopy = identifier;
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = PKPaymentShareableCredential;
  v14 = [(PKPaymentCredential *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sharingInstanceIdentifier, identifier);
    objc_storeStrong(&v15->_encryptedProvisioningTarget, target);
    objc_storeStrong(&v15->_passThumbnailImageData, data);
    v15->_backgroundProvisioning = provisioning;
    [(PKPaymentCredential *)v15 setCardType:3];
  }

  return v15;
}

- (PKPaymentShareableCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKPaymentShareableCredential;
  v5 = [(PKPaymentCredential *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingInstanceIdentifier"];
    sharingInstanceIdentifier = v5->_sharingInstanceIdentifier;
    v5->_sharingInstanceIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptedProvisioningTarget"];
    encryptedProvisioningTarget = v5->_encryptedProvisioningTarget;
    v5->_encryptedProvisioningTarget = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passThumbnailImageData"];
    passThumbnailImageData = v5->_passThumbnailImageData;
    v5->_passThumbnailImageData = v10;

    v5->_backgroundProvisioning = [coderCopy decodeBoolForKey:@"backgroundProvisioning"];
    v5->_source = [coderCopy decodeIntegerForKey:@"source"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalizedAuth"];
    externalizedAuth = v5->_externalizedAuth;
    v5->_externalizedAuth = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPaymentShareableCredential;
  coderCopy = coder;
  [(PKPaymentCredential *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sharingInstanceIdentifier forKey:{@"sharingInstanceIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_encryptedProvisioningTarget forKey:@"encryptedProvisioningTarget"];
  [coderCopy encodeObject:self->_passThumbnailImageData forKey:@"passThumbnailImageData"];
  [coderCopy encodeBool:self->_backgroundProvisioning forKey:@"backgroundProvisioning"];
  [coderCopy encodeInteger:self->_source forKey:@"source"];
  [coderCopy encodeObject:self->_externalizedAuth forKey:@"externalizedAuth"];
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
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_encryptedProvisioningTarget];
  [array safelyAddObject:self->_sharingInstanceIdentifier];
  v4 = PKCombinedHash(17, array);
  v5 = self->_source - v4 + 32 * v4;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKPaymentShareableCredential *)self _isEqualToCredential:equalCopy];
  }

  return v5;
}

- (BOOL)_isEqualToCredential:(id)credential
{
  credentialCopy = credential;
  if (!credentialCopy)
  {
    goto LABEL_16;
  }

  encryptedProvisioningTarget = self->_encryptedProvisioningTarget;
  v6 = credentialCopy[15];
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
  v9 = credentialCopy[16];
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
      v11 = self->_source == credentialCopy[18];
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