@interface PKPendingPaymentRemoteCredential
- (BOOL)representsCredential:(id)credential;
- (BOOL)representsPass:(id)pass;
- (PKPendingPaymentRemoteCredential)initWithCoder:(id)coder;
- (PKPendingPaymentRemoteCredential)initWithRemoteCredential:(id)credential;
- (id)credential;
- (id)initForDatabase;
- (void)_copyIntoPendingProvision:(id)provision;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPendingPaymentRemoteCredential

- (id)initForDatabase
{
  v3.receiver = self;
  v3.super_class = PKPendingPaymentRemoteCredential;
  return [(PKPendingPaymentRemoteCredential *)&v3 init];
}

- (PKPendingPaymentRemoteCredential)initWithRemoteCredential:(id)credential
{
  credentialCopy = credential;
  identifier = [credentialCopy identifier];
  v29.receiver = self;
  v29.super_class = PKPendingPaymentRemoteCredential;
  v6 = [(PKPendingProvisioning *)&v29 initWithUniqueIdentifier:identifier status:1];

  if (v6)
  {
    passTypeIdentifier = [credentialCopy passTypeIdentifier];
    passTypeIdentifier = v6->_passTypeIdentifier;
    v6->_passTypeIdentifier = passTypeIdentifier;

    serialNumber = [credentialCopy serialNumber];
    passSerialNumber = v6->_passSerialNumber;
    v6->_passSerialNumber = serialNumber;

    v6->_credentialType = [credentialCopy credentialType];
    v6->_cardType = [credentialCopy cardType];
    sanitizedPrimaryAccountNumber = [credentialCopy sanitizedPrimaryAccountNumber];
    sanitizedPrimaryAccountNumber = v6->_sanitizedPrimaryAccountNumber;
    v6->_sanitizedPrimaryAccountNumber = sanitizedPrimaryAccountNumber;

    identifier2 = [credentialCopy identifier];
    cardIdentifier = v6->_cardIdentifier;
    v6->_cardIdentifier = identifier2;

    ownershipTokenIdentifier = [credentialCopy ownershipTokenIdentifier];
    ownershipToken = v6->_ownershipToken;
    v6->_ownershipToken = ownershipTokenIdentifier;

    passURL = [credentialCopy passURL];
    passURL = v6->_passURL;
    v6->_passURL = passURL;

    activationMethods = [credentialCopy activationMethods];
    activationMethods = v6->_activationMethods;
    v6->_activationMethods = activationMethods;

    transferableFromDevices = [credentialCopy transferableFromDevices];
    firstObject = [transferableFromDevices firstObject];

    if (firstObject)
    {
      serialNumber2 = [firstObject serialNumber];
      transferableFromDeviceSerialNumber = v6->_transferableFromDeviceSerialNumber;
      v6->_transferableFromDeviceSerialNumber = serialNumber2;

      identifier3 = [firstObject identifier];
      transferableFromDeviceIdentifier = v6->_transferableFromDeviceIdentifier;
      v6->_transferableFromDeviceIdentifier = identifier3;
    }

    state = [credentialCopy state];
    [(PKPendingProvisioning *)v6 setProvisioningState:state];
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

  provisioningState = [(PKPendingProvisioning *)self provisioningState];

  if (provisioningState)
  {
    provisioningState2 = [(PKPendingProvisioning *)self provisioningState];
    [(PKPaymentCredential *)v4 setState:provisioningState2];
  }

  return v4;
}

- (BOOL)representsCredential:(id)credential
{
  credentialCopy = credential;
  if ([credentialCopy isRemoteCredential])
  {
    remoteCredential = [credentialCopy remoteCredential];
    v6 = remoteCredential;
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

    identifier = [remoteCredential identifier];
    v10 = self->_cardIdentifier;
    v7 = identifier;
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
          passURL = [v6 passURL];
          v17 = passURL;
          v18 = *p_passURL;
          if (passURL && v18)
          {
            v14 = [(NSURL *)passURL isEqual:?];
          }

          else
          {
            v14 = passURL == v18;
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

- (BOOL)representsPass:(id)pass
{
  passCopy = pass;
  passTypeIdentifier = [passCopy passTypeIdentifier];
  serialNumber = [passCopy serialNumber];

  absoluteString = [(NSURL *)self->_passURL absoluteString];
  v8 = self->_passTypeIdentifier;
  v9 = passTypeIdentifier;
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
      if (!absoluteString)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }
  }

  v8 = self->_passSerialNumber;
  v12 = serialNumber;
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

  if (!absoluteString)
  {
LABEL_17:
    v15 = 0;
    goto LABEL_20;
  }

LABEL_15:
  if (![absoluteString containsString:v10])
  {
    goto LABEL_17;
  }

  v15 = [absoluteString containsString:serialNumber];
LABEL_20:

  return v15;
}

- (PKPendingPaymentRemoteCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = PKPendingPaymentRemoteCredential;
  v5 = [(PKPendingProvisioning *)&v27 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passTypeIdentifier"];
    passTypeIdentifier = v5->_passTypeIdentifier;
    v5->_passTypeIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passSerialNumber"];
    passSerialNumber = v5->_passSerialNumber;
    v5->_passSerialNumber = v8;

    v5->_credentialType = [coderCopy decodeIntegerForKey:@"credentialType"];
    v5->_cardType = [coderCopy decodeIntegerForKey:@"cardType"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sanitizedPrimaryAccountNumber"];
    sanitizedPrimaryAccountNumber = v5->_sanitizedPrimaryAccountNumber;
    v5->_sanitizedPrimaryAccountNumber = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cardIdentifier"];
    cardIdentifier = v5->_cardIdentifier;
    v5->_cardIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownershipToken"];
    ownershipToken = v5->_ownershipToken;
    v5->_ownershipToken = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferableFromDeviceSerialNumber"];
    transferableFromDeviceSerialNumber = v5->_transferableFromDeviceSerialNumber;
    v5->_transferableFromDeviceSerialNumber = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferableFromDeviceIdentifier"];
    transferableFromDeviceIdentifier = v5->_transferableFromDeviceIdentifier;
    v5->_transferableFromDeviceIdentifier = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passURL"];
    passURL = v5->_passURL;
    v5->_passURL = v22;

    v24 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"activationMethods"];
    activationMethods = v5->_activationMethods;
    v5->_activationMethods = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPendingPaymentRemoteCredential;
  coderCopy = coder;
  [(PKPendingProvisioning *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_passTypeIdentifier forKey:{@"passTypeIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_passSerialNumber forKey:@"passSerialNumber"];
  [coderCopy encodeInteger:self->_credentialType forKey:@"credentialType"];
  [coderCopy encodeInteger:self->_cardType forKey:@"cardType"];
  [coderCopy encodeObject:self->_sanitizedPrimaryAccountNumber forKey:@"sanitizedPrimaryAccountNumber"];
  [coderCopy encodeObject:self->_cardIdentifier forKey:@"cardIdentifier"];
  [coderCopy encodeObject:self->_ownershipToken forKey:@"ownershipToken"];
  [coderCopy encodeObject:self->_nonce forKey:@"nonce"];
  [coderCopy encodeObject:self->_transferableFromDeviceSerialNumber forKey:@"transferableFromDeviceSerialNumber"];
  [coderCopy encodeObject:self->_transferableFromDeviceIdentifier forKey:@"transferableFromDeviceIdentifier"];
  [coderCopy encodeObject:self->_passURL forKey:@"passURL"];
  [coderCopy encodeObject:self->_activationMethods forKey:@"activationMethods"];
}

- (void)_copyIntoPendingProvision:(id)provision
{
  v25.receiver = self;
  v25.super_class = PKPendingPaymentRemoteCredential;
  provisionCopy = provision;
  [(PKPendingProvisioning *)&v25 _copyIntoPendingProvision:provisionCopy];
  v5 = [(NSString *)self->_passTypeIdentifier copy:v25.receiver];
  v6 = provisionCopy[7];
  provisionCopy[7] = v5;

  v7 = [(NSString *)self->_passSerialNumber copy];
  v8 = provisionCopy[8];
  provisionCopy[8] = v7;

  provisionCopy[9] = self->_credentialType;
  provisionCopy[10] = self->_cardType;
  v9 = [(NSString *)self->_sanitizedPrimaryAccountNumber copy];
  v10 = provisionCopy[11];
  provisionCopy[11] = v9;

  v11 = [(NSString *)self->_cardIdentifier copy];
  v12 = provisionCopy[12];
  provisionCopy[12] = v11;

  v13 = [(NSString *)self->_ownershipToken copy];
  v14 = provisionCopy[13];
  provisionCopy[13] = v13;

  v15 = [(NSString *)self->_nonce copy];
  v16 = provisionCopy[14];
  provisionCopy[14] = v15;

  v17 = [(NSString *)self->_transferableFromDeviceSerialNumber copy];
  v18 = provisionCopy[15];
  provisionCopy[15] = v17;

  v19 = [(NSString *)self->_transferableFromDeviceIdentifier copy];
  v20 = provisionCopy[16];
  provisionCopy[16] = v19;

  v21 = [(NSURL *)self->_passURL copy];
  v22 = provisionCopy[17];
  provisionCopy[17] = v21;

  v23 = [(NSArray *)self->_activationMethods copy];
  v24 = provisionCopy[18];
  provisionCopy[18] = v23;
}

@end