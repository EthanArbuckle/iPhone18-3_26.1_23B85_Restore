@interface PKPendingPaymentRemoteCredential
- (BOOL)representsCredential:(id)a3;
- (BOOL)representsPass:(id)a3;
- (PKPendingPaymentRemoteCredential)initWithCoder:(id)a3;
- (PKPendingPaymentRemoteCredential)initWithRemoteCredential:(id)a3;
- (id)credential;
- (id)initForDatabase;
- (void)_copyIntoPendingProvision:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPendingPaymentRemoteCredential

- (id)initForDatabase
{
  v3.receiver = self;
  v3.super_class = PKPendingPaymentRemoteCredential;
  return [(PKPendingPaymentRemoteCredential *)&v3 init];
}

- (PKPendingPaymentRemoteCredential)initWithRemoteCredential:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v29.receiver = self;
  v29.super_class = PKPendingPaymentRemoteCredential;
  v6 = [(PKPendingProvisioning *)&v29 initWithUniqueIdentifier:v5 status:1];

  if (v6)
  {
    v7 = [v4 passTypeIdentifier];
    passTypeIdentifier = v6->_passTypeIdentifier;
    v6->_passTypeIdentifier = v7;

    v9 = [v4 serialNumber];
    passSerialNumber = v6->_passSerialNumber;
    v6->_passSerialNumber = v9;

    v6->_credentialType = [v4 credentialType];
    v6->_cardType = [v4 cardType];
    v11 = [v4 sanitizedPrimaryAccountNumber];
    sanitizedPrimaryAccountNumber = v6->_sanitizedPrimaryAccountNumber;
    v6->_sanitizedPrimaryAccountNumber = v11;

    v13 = [v4 identifier];
    cardIdentifier = v6->_cardIdentifier;
    v6->_cardIdentifier = v13;

    v15 = [v4 ownershipTokenIdentifier];
    ownershipToken = v6->_ownershipToken;
    v6->_ownershipToken = v15;

    v17 = [v4 passURL];
    passURL = v6->_passURL;
    v6->_passURL = v17;

    v19 = [v4 activationMethods];
    activationMethods = v6->_activationMethods;
    v6->_activationMethods = v19;

    v21 = [v4 transferableFromDevices];
    v22 = [v21 firstObject];

    if (v22)
    {
      v23 = [v22 serialNumber];
      transferableFromDeviceSerialNumber = v6->_transferableFromDeviceSerialNumber;
      v6->_transferableFromDeviceSerialNumber = v23;

      v25 = [v22 identifier];
      transferableFromDeviceIdentifier = v6->_transferableFromDeviceIdentifier;
      v6->_transferableFromDeviceIdentifier = v25;
    }

    v27 = [v4 state];
    [(PKPendingProvisioning *)v6 setProvisioningState:v27];
  }

  return v6;
}

- (id)credential
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [PKPaymentRemoteCredential alloc];
  v4 = [(PKPaymentRemoteCredential *)v3 initWithDictionary:MEMORY[0x1E695E0F8]];
  [(PKPaymentRemoteCredential *)v4 setPassTypeIdentifier:self->_passTypeIdentifier];
  [(PKPaymentRemoteCredential *)v4 setSerialNumber:self->_passSerialNumber];
  [(PKPaymentCredential *)v4 setCredentialType:self->_credentialType];
  [(PKPaymentCredential *)v4 setCardType:self->_cardType];
  [(PKPaymentCredential *)v4 setSanitizedPrimaryAccountNumber:self->_sanitizedPrimaryAccountNumber];
  [(PKPaymentRemoteCredential *)v4 setIdentifier:self->_cardIdentifier];
  [(PKPaymentRemoteCredential *)v4 setOwnershipTokenIdentifier:self->_ownershipToken];
  [(PKPaymentRemoteCredential *)v4 setPassURL:self->_passURL];
  [(PKPaymentRemoteCredential *)v4 setStatus:1];
  [(PKPaymentRemoteCredential *)v4 setActivationMethods:self->_activationMethods];
  if (self->_transferableFromDeviceIdentifier && self->_transferableFromDeviceSerialNumber)
  {
    v5 = [[PKExternalDestinationDevice alloc] initWithIdentifier:self->_transferableFromDeviceIdentifier serialNumber:self->_transferableFromDeviceSerialNumber];
    v10[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(PKPaymentRemoteCredential *)v4 setTransferableFromDevices:v6];

    [(PKPaymentRemoteCredential *)v4 setStatus:5];
  }

  v7 = [(PKPendingProvisioning *)self provisioningState];

  if (v7)
  {
    v8 = [(PKPendingProvisioning *)self provisioningState];
    [(PKPaymentCredential *)v4 setState:v8];
  }

  return v4;
}

- (BOOL)representsCredential:(id)a3
{
  v4 = a3;
  if ([v4 isRemoteCredential])
  {
    v5 = [v4 remoteCredential];
    v6 = v5;
    v7 = 96;
    cardIdentifier = self->_cardIdentifier;
    if (!cardIdentifier)
    {
      p_passURL = &self->_passURL;
      if (!*p_passURL)
      {
        v14 = 0;
LABEL_24:

        goto LABEL_25;
      }

      goto LABEL_15;
    }

    v9 = [v5 identifier];
    v10 = self->_cardIdentifier;
    v7 = v9;
    v11 = v10;
    v12 = v11;
    if (v7 == v11)
    {
    }

    else
    {
      if (!v7 || !v11)
      {

LABEL_14:
        p_passURL = &self->_passURL;
        if (*p_passURL)
        {
LABEL_15:
          v16 = [v6 passURL];
          v17 = v16;
          v18 = *p_passURL;
          if (v16 && v18)
          {
            v14 = [(NSURL *)v16 isEqual:?];
          }

          else
          {
            v14 = v16 == v18;
          }

          if (!cardIdentifier)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        v14 = 0;
LABEL_23:

        goto LABEL_24;
      }

      v13 = [v7 isEqualToString:v11];

      if ((v13 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v14 = 1;
    goto LABEL_23;
  }

  v14 = 0;
LABEL_25:

  return v14;
}

- (BOOL)representsPass:(id)a3
{
  v4 = a3;
  v5 = [v4 passTypeIdentifier];
  v6 = [v4 serialNumber];

  v7 = [(NSURL *)self->_passURL absoluteString];
  v8 = self->_passTypeIdentifier;
  v9 = v5;
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    if (!v9 || !v8)
    {
      v13 = v9;
      goto LABEL_14;
    }

    v11 = [(NSString *)v8 isEqualToString:v9];

    if (!v11)
    {
LABEL_11:
      if (!v7)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }
  }

  v8 = self->_passSerialNumber;
  v12 = v6;
  v13 = v12;
  if (v8 == v12)
  {

    goto LABEL_19;
  }

  if (v12 && v8)
  {
    v14 = [(NSString *)v8 isEqualToString:v12];

    if (!v14)
    {
      goto LABEL_11;
    }

LABEL_19:
    v15 = 1;
    goto LABEL_20;
  }

LABEL_14:

  if (!v7)
  {
LABEL_17:
    v15 = 0;
    goto LABEL_20;
  }

LABEL_15:
  if (![v7 containsString:v10])
  {
    goto LABEL_17;
  }

  v15 = [v7 containsString:v6];
LABEL_20:

  return v15;
}

- (PKPendingPaymentRemoteCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = PKPendingPaymentRemoteCredential;
  v5 = [(PKPendingProvisioning *)&v27 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passTypeIdentifier"];
    passTypeIdentifier = v5->_passTypeIdentifier;
    v5->_passTypeIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passSerialNumber"];
    passSerialNumber = v5->_passSerialNumber;
    v5->_passSerialNumber = v8;

    v5->_credentialType = [v4 decodeIntegerForKey:@"credentialType"];
    v5->_cardType = [v4 decodeIntegerForKey:@"cardType"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sanitizedPrimaryAccountNumber"];
    sanitizedPrimaryAccountNumber = v5->_sanitizedPrimaryAccountNumber;
    v5->_sanitizedPrimaryAccountNumber = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cardIdentifier"];
    cardIdentifier = v5->_cardIdentifier;
    v5->_cardIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ownershipToken"];
    ownershipToken = v5->_ownershipToken;
    v5->_ownershipToken = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferableFromDeviceSerialNumber"];
    transferableFromDeviceSerialNumber = v5->_transferableFromDeviceSerialNumber;
    v5->_transferableFromDeviceSerialNumber = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferableFromDeviceIdentifier"];
    transferableFromDeviceIdentifier = v5->_transferableFromDeviceIdentifier;
    v5->_transferableFromDeviceIdentifier = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passURL"];
    passURL = v5->_passURL;
    v5->_passURL = v22;

    v24 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"activationMethods"];
    activationMethods = v5->_activationMethods;
    v5->_activationMethods = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPendingPaymentRemoteCredential;
  v4 = a3;
  [(PKPendingProvisioning *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_passTypeIdentifier forKey:{@"passTypeIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_passSerialNumber forKey:@"passSerialNumber"];
  [v4 encodeInteger:self->_credentialType forKey:@"credentialType"];
  [v4 encodeInteger:self->_cardType forKey:@"cardType"];
  [v4 encodeObject:self->_sanitizedPrimaryAccountNumber forKey:@"sanitizedPrimaryAccountNumber"];
  [v4 encodeObject:self->_cardIdentifier forKey:@"cardIdentifier"];
  [v4 encodeObject:self->_ownershipToken forKey:@"ownershipToken"];
  [v4 encodeObject:self->_nonce forKey:@"nonce"];
  [v4 encodeObject:self->_transferableFromDeviceSerialNumber forKey:@"transferableFromDeviceSerialNumber"];
  [v4 encodeObject:self->_transferableFromDeviceIdentifier forKey:@"transferableFromDeviceIdentifier"];
  [v4 encodeObject:self->_passURL forKey:@"passURL"];
  [v4 encodeObject:self->_activationMethods forKey:@"activationMethods"];
}

- (void)_copyIntoPendingProvision:(id)a3
{
  v25.receiver = self;
  v25.super_class = PKPendingPaymentRemoteCredential;
  v4 = a3;
  [(PKPendingProvisioning *)&v25 _copyIntoPendingProvision:v4];
  v5 = [(NSString *)self->_passTypeIdentifier copy:v25.receiver];
  v6 = v4[7];
  v4[7] = v5;

  v7 = [(NSString *)self->_passSerialNumber copy];
  v8 = v4[8];
  v4[8] = v7;

  v4[9] = self->_credentialType;
  v4[10] = self->_cardType;
  v9 = [(NSString *)self->_sanitizedPrimaryAccountNumber copy];
  v10 = v4[11];
  v4[11] = v9;

  v11 = [(NSString *)self->_cardIdentifier copy];
  v12 = v4[12];
  v4[12] = v11;

  v13 = [(NSString *)self->_ownershipToken copy];
  v14 = v4[13];
  v4[13] = v13;

  v15 = [(NSString *)self->_nonce copy];
  v16 = v4[14];
  v4[14] = v15;

  v17 = [(NSString *)self->_transferableFromDeviceSerialNumber copy];
  v18 = v4[15];
  v4[15] = v17;

  v19 = [(NSString *)self->_transferableFromDeviceIdentifier copy];
  v20 = v4[16];
  v4[16] = v19;

  v21 = [(NSURL *)self->_passURL copy];
  v22 = v4[17];
  v4[17] = v21;

  v23 = [(NSArray *)self->_activationMethods copy];
  v24 = v4[18];
  v4[18] = v23;
}

@end