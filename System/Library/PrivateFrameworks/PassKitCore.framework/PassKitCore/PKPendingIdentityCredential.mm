@interface PKPendingIdentityCredential
- (BOOL)representsCredential:(id)credential;
- (BOOL)representsPass:(id)pass;
- (PKPendingIdentityCredential)initWithCoder:(id)coder;
- (PKPendingIdentityCredential)initWithIdentityCredential:(id)credential;
- (PKPendingIdentityCredential)initWithShareableMetadata:(id)metadata;
- (id)credential;
- (id)initForDatabase;
- (void)_copyIntoPendingProvision:(id)provision;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPendingIdentityCredential

- (id)initForDatabase
{
  v3.receiver = self;
  v3.super_class = PKPendingIdentityCredential;
  return [(PKPendingIdentityCredential *)&v3 init];
}

- (PKPendingIdentityCredential)initWithIdentityCredential:(id)credential
{
  credentialCopy = credential;
  shareableMetadata = [credentialCopy shareableMetadata];
  v6 = [(PKPendingIdentityCredential *)self initWithShareableMetadata:shareableMetadata];
  if (v6)
  {
    attestations = [credentialCopy attestations];
    attestations = v6->_attestations;
    v6->_attestations = attestations;

    isoCredentialIdentifier = [credentialCopy isoCredentialIdentifier];
    credentialIdentifier = v6->_credentialIdentifier;
    v6->_credentialIdentifier = isoCredentialIdentifier;

    passTypeIdentifier = [credentialCopy passTypeIdentifier];
    passTypeIdentifier = v6->_passTypeIdentifier;
    v6->_passTypeIdentifier = passTypeIdentifier;

    passSerialNumber = [credentialCopy passSerialNumber];
    passSerialNumber = v6->_passSerialNumber;
    v6->_passSerialNumber = passSerialNumber;

    state = [credentialCopy state];
    [(PKPendingProvisioning *)v6 setProvisioningState:state];
  }

  return v6;
}

- (PKPendingIdentityCredential)initWithShareableMetadata:(id)metadata
{
  metadataCopy = metadata;
  sharingInstanceIdentifier = [metadataCopy sharingInstanceIdentifier];
  v13.receiver = self;
  v13.super_class = PKPendingIdentityCredential;
  v6 = [(PKPendingProvisioning *)&v13 initWithUniqueIdentifier:sharingInstanceIdentifier status:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sharingInstanceIdentifier, sharingInstanceIdentifier);
    cardConfigurationIdentifier = [metadataCopy cardConfigurationIdentifier];
    cardConfigurationIdentifier = v7->_cardConfigurationIdentifier;
    v7->_cardConfigurationIdentifier = cardConfigurationIdentifier;

    credentialIdentifier = [metadataCopy credentialIdentifier];
    provisioningCredentialIdentifier = v7->_provisioningCredentialIdentifier;
    v7->_provisioningCredentialIdentifier = credentialIdentifier;
  }

  return v7;
}

- (id)credential
{
  v3 = [[PKShareablePassMetadata alloc] initWithProvisioningCredentialIdentifier:self->_provisioningCredentialIdentifier cardConfigurationIdentifier:self->_cardConfigurationIdentifier sharingInstanceIdentifier:self->_sharingInstanceIdentifier];
  v4 = [[PKPaymentIdentityCredential alloc] initWithShareablePassMetadata:v3 isoCredentialIdentifier:self->_credentialIdentifier];
  [(PKPaymentIdentityCredential *)v4 setAttestations:self->_attestations];
  [(PKPaymentIdentityCredential *)v4 setPassTypeIdentifier:self->_passTypeIdentifier];
  [(PKPaymentIdentityCredential *)v4 setPassSerialNumber:self->_passSerialNumber];
  [(PKPaymentIdentityCredential *)v4 setAccountKeyIdentifier:self->_accountKeyIdentifier];
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
  if ([credentialCopy isIdentityCredential])
  {
    identityCredential = [credentialCopy identityCredential];
    passTypeIdentifier = [identityCredential passTypeIdentifier];
    passTypeIdentifier = self->_passTypeIdentifier;
    v8 = passTypeIdentifier;
    v9 = passTypeIdentifier;
    v10 = v9;
    if (v8 == v9)
    {

LABEL_16:
      passSerialNumber = [identityCredential passSerialNumber];
LABEL_19:
      passSerialNumber = self->_passSerialNumber;
      v10 = passSerialNumber;
      v18 = passSerialNumber;
      v19 = v18;
      if (v10 == v18)
      {
        LOBYTE(v11) = 1;
      }

      else
      {
        LOBYTE(v11) = 0;
        if (v10 && v18)
        {
          LOBYTE(v11) = [(NSString *)v10 isEqualToString:v18];
        }
      }

      v15 = v8;

      v8 = v10;
      goto LABEL_25;
    }

    LOBYTE(v11) = 0;
    if (v8 && v9)
    {
      v11 = [(NSString *)v8 isEqualToString:v9];

      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

LABEL_14:
    v15 = v8;
LABEL_25:

    v8 = v15;
LABEL_26:

    goto LABEL_27;
  }

  if ([credentialCopy isRemoteCredential])
  {
    identityCredential = [credentialCopy remoteCredential];
    passTypeIdentifier2 = [identityCredential passTypeIdentifier];
    v13 = self->_passTypeIdentifier;
    v8 = passTypeIdentifier2;
    v14 = v13;
    v10 = v14;
    if (v8 == v14)
    {
    }

    else
    {
      LOBYTE(v11) = 0;
      if (!v8 || !v14)
      {
        goto LABEL_14;
      }

      v11 = [(NSString *)v8 isEqualToString:v14];

      if (!v11)
      {
        goto LABEL_26;
      }
    }

    passSerialNumber = [identityCredential serialNumber];
    goto LABEL_19;
  }

  LOBYTE(v11) = 0;
LABEL_27:

  return v11;
}

- (BOOL)representsPass:(id)pass
{
  v40 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  if (![passCopy isIdentityPass])
  {
    v11 = 0;
    goto LABEL_40;
  }

  passTypeIdentifier = [passCopy passTypeIdentifier];
  passTypeIdentifier = self->_passTypeIdentifier;
  v7 = passTypeIdentifier;
  v8 = passTypeIdentifier;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v7 || !v8)
    {
      v17 = v7;
      goto LABEL_18;
    }

    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_19;
    }
  }

  serialNumber = [passCopy serialNumber];
  passSerialNumber = self->_passSerialNumber;
  v9 = serialNumber;
  v14 = passSerialNumber;
  v15 = v14;
  if (v9 == v14)
  {

    goto LABEL_16;
  }

  if (v9 && v14)
  {
    v16 = [(NSString *)v9 isEqualToString:v14];

    if (!v16)
    {
      goto LABEL_20;
    }

LABEL_16:
    v11 = 1;
    goto LABEL_40;
  }

  v17 = v9;
LABEL_18:

LABEL_19:
LABEL_20:
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = passCopy;
  devicePaymentApplications = [passCopy devicePaymentApplications];
  v19 = [devicePaymentApplications countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v36;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(devicePaymentApplications);
        }

        v23 = *(*(&v35 + 1) + 8 * i);
        paymentType = [v23 paymentType];
        if (paymentType == 1005 || paymentType == 1002)
        {
          subcredentials = [v23 subcredentials];
          anyObject = [subcredentials anyObject];
          identifier = [anyObject identifier];

          if (identifier)
          {
            credentialIdentifier = self->_credentialIdentifier;
            v29 = identifier;
            v30 = credentialIdentifier;
            v31 = v30;
            if (v29 == v30)
            {

LABEL_38:
              v11 = 1;
              goto LABEL_39;
            }

            if (v30)
            {
              v32 = [(NSString *)v29 isEqualToString:v30];

              if (v32)
              {
                goto LABEL_38;
              }
            }

            else
            {
            }
          }
        }
      }

      v20 = [devicePaymentApplications countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_39:
  passCopy = v34;
LABEL_40:

  return v11;
}

- (PKPendingIdentityCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = PKPendingIdentityCredential;
  v5 = [(PKPendingProvisioning *)&v23 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingInstanceIdentifier"];
    sharingInstanceIdentifier = v5->_sharingInstanceIdentifier;
    v5->_sharingInstanceIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cardConfigurationIdentifier"];
    cardConfigurationIdentifier = v5->_cardConfigurationIdentifier;
    v5->_cardConfigurationIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provisioningCredentialIdentifier"];
    provisioningCredentialIdentifier = v5->_provisioningCredentialIdentifier;
    v5->_provisioningCredentialIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentifier"];
    credentialIdentifier = v5->_credentialIdentifier;
    v5->_credentialIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passSerialNumber"];
    passSerialNumber = v5->_passSerialNumber;
    v5->_passSerialNumber = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passTypeIdentifier"];
    passTypeIdentifier = v5->_passTypeIdentifier;
    v5->_passTypeIdentifier = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountKeyIdentifier"];
    accountKeyIdentifier = v5->_accountKeyIdentifier;
    v5->_accountKeyIdentifier = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attestations"];
    attestations = v5->_attestations;
    v5->_attestations = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPendingIdentityCredential;
  coderCopy = coder;
  [(PKPendingProvisioning *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sharingInstanceIdentifier forKey:{@"sharingInstanceIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_credentialIdentifier forKey:@"credentialIdentifier"];
  [coderCopy encodeObject:self->_cardConfigurationIdentifier forKey:@"cardConfigurationIdentifier"];
  [coderCopy encodeObject:self->_provisioningCredentialIdentifier forKey:@"provisioningCredentialIdentifier"];
  [coderCopy encodeObject:self->_passSerialNumber forKey:@"passSerialNumber"];
  [coderCopy encodeObject:self->_passTypeIdentifier forKey:@"passTypeIdentifier"];
  [coderCopy encodeObject:self->_accountKeyIdentifier forKey:@"accountKeyIdentifier"];
  [coderCopy encodeObject:self->_attestations forKey:@"attestations"];
}

- (void)_copyIntoPendingProvision:(id)provision
{
  v19.receiver = self;
  v19.super_class = PKPendingIdentityCredential;
  provisionCopy = provision;
  [(PKPendingProvisioning *)&v19 _copyIntoPendingProvision:provisionCopy];
  v5 = [(NSString *)self->_sharingInstanceIdentifier copy:v19.receiver];
  v6 = *(provisionCopy + 7);
  *(provisionCopy + 7) = v5;

  v7 = [(NSString *)self->_cardConfigurationIdentifier copy];
  v8 = *(provisionCopy + 8);
  *(provisionCopy + 8) = v7;

  v9 = [(NSString *)self->_provisioningCredentialIdentifier copy];
  v10 = *(provisionCopy + 9);
  *(provisionCopy + 9) = v9;

  v11 = [(NSString *)self->_credentialIdentifier copy];
  v12 = *(provisionCopy + 10);
  *(provisionCopy + 10) = v11;

  v13 = [(NSString *)self->_passSerialNumber copy];
  v14 = *(provisionCopy + 11);
  *(provisionCopy + 11) = v13;

  v15 = [(NSString *)self->_passTypeIdentifier copy];
  v16 = *(provisionCopy + 12);
  *(provisionCopy + 12) = v15;

  v17 = [(NSString *)self->_accountKeyIdentifier copy];
  v18 = *(provisionCopy + 13);
  *(provisionCopy + 13) = v17;

  objc_storeStrong(provisionCopy + 14, self->_attestations);
}

@end