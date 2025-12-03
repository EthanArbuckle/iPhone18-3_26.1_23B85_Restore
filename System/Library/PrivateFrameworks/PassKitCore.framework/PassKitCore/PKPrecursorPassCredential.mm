@interface PKPrecursorPassCredential
- (PKPrecursorPassCredential)initWithCoder:(id)coder;
- (PKPrecursorPassCredential)initWithPassTypeIdentifier:(id)identifier passSerialNumber:(id)number;
- (PKPrecursorPassCredential)initWithRemoteCredential:(id)credential;
- (id)activationMethods;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPrecursorPassCredential

- (PKPrecursorPassCredential)initWithRemoteCredential:(id)credential
{
  credentialCopy = credential;
  passTypeIdentifier = [credentialCopy passTypeIdentifier];
  serialNumber = [credentialCopy serialNumber];
  v8 = [(PKPrecursorPassCredential *)self initWithPassTypeIdentifier:passTypeIdentifier passSerialNumber:serialNumber];

  if (v8)
  {
    objc_storeStrong(&v8->_remoteCredential, credential);
  }

  return v8;
}

- (PKPrecursorPassCredential)initWithPassTypeIdentifier:(id)identifier passSerialNumber:(id)number
{
  identifierCopy = identifier;
  numberCopy = number;
  v12.receiver = self;
  v12.super_class = PKPrecursorPassCredential;
  v9 = [(PKPaymentCredential *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_passTypeIdentifier, identifier);
    objc_storeStrong(&v10->_serialNumber, number);
  }

  return v10;
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

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_passTypeIdentifier];
  [array safelyAddObject:self->_serialNumber];
  v7.receiver = self;
  v7.super_class = PKPrecursorPassCredential;
  v4 = [(PKPaymentCredential *)&v7 hash];
  v5 = PKCombinedHash(v4, array);

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p>: PasTypeIdentifier: %@ SerialNumber: %@;", v5, self, self->_passTypeIdentifier, self->_serialNumber];;

  return v6;
}

- (PKPrecursorPassCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKPrecursorPassCredential;
  v5 = [(PKPaymentCredential *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pasTypeIdentifier"];
    passTypeIdentifier = v5->_passTypeIdentifier;
    v5->_passTypeIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteCredential"];
    remoteCredential = v5->_remoteCredential;
    v5->_remoteCredential = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  passTypeIdentifier = self->_passTypeIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:passTypeIdentifier forKey:@"pasTypeIdentifier"];
  [coderCopy encodeObject:self->_serialNumber forKey:@"serialNumber"];
  [coderCopy encodeObject:self->_remoteCredential forKey:@"remoteCredential"];
}

@end