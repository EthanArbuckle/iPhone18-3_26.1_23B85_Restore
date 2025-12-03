@interface PKPaymentLocalPassCredential
- (BOOL)_isEqualToCredential:(id)credential;
- (BOOL)isEqual:(id)equal;
- (NSString)summaryMetadataDescription;
- (PKPaymentLocalPassCredential)initWithPaymentPass:(id)pass;
- (id)activationMethods;
- (id)description;
- (unint64_t)hash;
@end

@implementation PKPaymentLocalPassCredential

- (PKPaymentLocalPassCredential)initWithPaymentPass:(id)pass
{
  passCopy = pass;
  if (passCopy)
  {
    v17.receiver = self;
    v17.super_class = PKPaymentLocalPassCredential;
    v6 = [(PKPaymentCredential *)&v17 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_paymentPass, pass);
      serialNumber = [passCopy serialNumber];
      serialNumber = v7->_serialNumber;
      v7->_serialNumber = serialNumber;

      passTypeIdentifier = [passCopy passTypeIdentifier];
      passTypeIdentifier = v7->_passTypeIdentifier;
      v7->_passTypeIdentifier = passTypeIdentifier;

      devicePrimaryPaymentApplication = [passCopy devicePrimaryPaymentApplication];
      -[PKPaymentCredential setCredentialType:](v7, "setCredentialType:", [devicePrimaryPaymentApplication paymentNetworkIdentifier]);

      primaryAccountNumberSuffix = [passCopy primaryAccountNumberSuffix];
      [(PKPaymentCredential *)v7 setSanitizedPrimaryAccountNumber:primaryAccountNumberSuffix];

      sanitizedPrimaryAccountName = [passCopy sanitizedPrimaryAccountName];
      [(PKPaymentCredential *)v7 setSanitizedPrimaryAccountName:sanitizedPrimaryAccountName];

      [(PKPaymentCredential *)v7 setExpiration:0];
      localizedDescription = [passCopy localizedDescription];
      [(PKPaymentCredential *)v7 setLongDescription:localizedDescription];

      -[PKPaymentCredential setCardType:](v7, "setCardType:", [passCopy cardType]);
    }
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (NSString)summaryMetadataDescription
{
  if ([(PKPass *)self->_paymentPass passType]== PKPassTypeSecureElement)
  {
    primaryAccountNumberSuffix = [(PKSecureElementPass *)self->_paymentPass primaryAccountNumberSuffix];
    if ([primaryAccountNumberSuffix length])
    {
      PKMaskedPaymentPAN(primaryAccountNumberSuffix);
    }

    else
    {
      [(PKSecureElementPass *)self->_paymentPass sanitizedPrimaryAccountName];
    }
    v4 = ;
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKPaymentLocalPassCredential *)self _isEqualToCredential:equalCopy];
  }

  return v5;
}

- (BOOL)_isEqualToCredential:(id)credential
{
  credentialCopy = credential;
  v5 = credentialCopy[14];
  v6 = self->_serialNumber;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
    v10 = 1;
  }

  else
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = [(NSString *)v6 isEqualToString:v7];
    }
  }

  return v10;
}

- (id)activationMethods
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ([(PKSecureElementPass *)self->_paymentPass isTransitPass]|| [(PKSecureElementPass *)self->_paymentPass isAccessPass])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(PKSecureElementPass *)self->_paymentPass isIdentityPass]^ 1;
  }

  v4 = [PKPaymentCredentialProvisioningMethod alloc];
  v5 = [[PKPassUpgradePrecursorPassGenericReprovisionAction alloc] initWithDeviceProvisioningDataExpected:v3];
  v10 = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  v7 = [(PKPaymentCredentialProvisioningMethod *)v4 initWithSupportsFrictionlessProvisioning:0 actions:v6];
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  return v8;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_serialNumber];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (id)description
{
  serialNumber = self->_serialNumber;
  if (!serialNumber)
  {
    serialNumber = @"n/a";
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = serialNumber;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 stringWithFormat:@"<%@ %p>: Serial Number: %@", v7, self, v5];

  return v8;
}

@end