@interface PKPaymentLocalPassCredential
- (BOOL)_isEqualToCredential:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)summaryMetadataDescription;
- (PKPaymentLocalPassCredential)initWithPaymentPass:(id)a3;
- (id)activationMethods;
- (id)description;
- (unint64_t)hash;
@end

@implementation PKPaymentLocalPassCredential

- (PKPaymentLocalPassCredential)initWithPaymentPass:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v17.receiver = self;
    v17.super_class = PKPaymentLocalPassCredential;
    v6 = [(PKPaymentCredential *)&v17 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_paymentPass, a3);
      v8 = [v5 serialNumber];
      serialNumber = v7->_serialNumber;
      v7->_serialNumber = v8;

      v10 = [v5 passTypeIdentifier];
      passTypeIdentifier = v7->_passTypeIdentifier;
      v7->_passTypeIdentifier = v10;

      v12 = [v5 devicePrimaryPaymentApplication];
      -[PKPaymentCredential setCredentialType:](v7, "setCredentialType:", [v12 paymentNetworkIdentifier]);

      v13 = [v5 primaryAccountNumberSuffix];
      [(PKPaymentCredential *)v7 setSanitizedPrimaryAccountNumber:v13];

      v14 = [v5 sanitizedPrimaryAccountName];
      [(PKPaymentCredential *)v7 setSanitizedPrimaryAccountName:v14];

      [(PKPaymentCredential *)v7 setExpiration:0];
      v15 = [v5 localizedDescription];
      [(PKPaymentCredential *)v7 setLongDescription:v15];

      -[PKPaymentCredential setCardType:](v7, "setCardType:", [v5 cardType]);
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
    v3 = [(PKSecureElementPass *)self->_paymentPass primaryAccountNumberSuffix];
    if ([v3 length])
    {
      PKMaskedPaymentPAN(v3);
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKPaymentLocalPassCredential *)self _isEqualToCredential:v4];
  }

  return v5;
}

- (BOOL)_isEqualToCredential:(id)a3
{
  v4 = a3;
  v5 = v4[14];
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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_serialNumber];
  v4 = PKCombinedHash(17, v3);

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