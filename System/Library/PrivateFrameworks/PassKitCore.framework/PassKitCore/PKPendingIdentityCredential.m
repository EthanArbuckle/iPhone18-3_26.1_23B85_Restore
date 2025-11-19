@interface PKPendingIdentityCredential
- (BOOL)representsCredential:(id)a3;
- (BOOL)representsPass:(id)a3;
- (PKPendingIdentityCredential)initWithCoder:(id)a3;
- (PKPendingIdentityCredential)initWithIdentityCredential:(id)a3;
- (PKPendingIdentityCredential)initWithShareableMetadata:(id)a3;
- (id)credential;
- (id)initForDatabase;
- (void)_copyIntoPendingProvision:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPendingIdentityCredential

- (id)initForDatabase
{
  v3.receiver = self;
  v3.super_class = PKPendingIdentityCredential;
  return [(PKPendingIdentityCredential *)&v3 init];
}

- (PKPendingIdentityCredential)initWithIdentityCredential:(id)a3
{
  v4 = a3;
  v5 = [v4 shareableMetadata];
  v6 = [(PKPendingIdentityCredential *)self initWithShareableMetadata:v5];
  if (v6)
  {
    v7 = [v4 attestations];
    attestations = v6->_attestations;
    v6->_attestations = v7;

    v9 = [v4 isoCredentialIdentifier];
    credentialIdentifier = v6->_credentialIdentifier;
    v6->_credentialIdentifier = v9;

    v11 = [v4 passTypeIdentifier];
    passTypeIdentifier = v6->_passTypeIdentifier;
    v6->_passTypeIdentifier = v11;

    v13 = [v4 passSerialNumber];
    passSerialNumber = v6->_passSerialNumber;
    v6->_passSerialNumber = v13;

    v15 = [v4 state];
    [(PKPendingProvisioning *)v6 setProvisioningState:v15];
  }

  return v6;
}

- (PKPendingIdentityCredential)initWithShareableMetadata:(id)a3
{
  v4 = a3;
  v5 = [v4 sharingInstanceIdentifier];
  v13.receiver = self;
  v13.super_class = PKPendingIdentityCredential;
  v6 = [(PKPendingProvisioning *)&v13 initWithUniqueIdentifier:v5 status:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sharingInstanceIdentifier, v5);
    v8 = [v4 cardConfigurationIdentifier];
    cardConfigurationIdentifier = v7->_cardConfigurationIdentifier;
    v7->_cardConfigurationIdentifier = v8;

    v10 = [v4 credentialIdentifier];
    provisioningCredentialIdentifier = v7->_provisioningCredentialIdentifier;
    v7->_provisioningCredentialIdentifier = v10;
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
  v5 = [(PKPendingProvisioning *)self provisioningState];

  if (v5)
  {
    v6 = [(PKPendingProvisioning *)self provisioningState];
    [(PKPaymentCredential *)v4 setState:v6];
  }

  return v4;
}

- (BOOL)representsCredential:(id)a3
{
  v4 = a3;
  if ([v4 isIdentityCredential])
  {
    v5 = [v4 identityCredential];
    v6 = [v5 passTypeIdentifier];
    passTypeIdentifier = self->_passTypeIdentifier;
    v8 = v6;
    v9 = passTypeIdentifier;
    v10 = v9;
    if (v8 == v9)
    {

LABEL_16:
      v16 = [v5 passSerialNumber];
LABEL_19:
      passSerialNumber = self->_passSerialNumber;
      v10 = v16;
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

  if ([v4 isRemoteCredential])
  {
    v5 = [v4 remoteCredential];
    v12 = [v5 passTypeIdentifier];
    v13 = self->_passTypeIdentifier;
    v8 = v12;
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

    v16 = [v5 serialNumber];
    goto LABEL_19;
  }

  LOBYTE(v11) = 0;
LABEL_27:

  return v11;
}

- (BOOL)representsPass:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![v4 isIdentityPass])
  {
    v11 = 0;
    goto LABEL_40;
  }

  v5 = [v4 passTypeIdentifier];
  passTypeIdentifier = self->_passTypeIdentifier;
  v7 = v5;
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

  v12 = [v4 serialNumber];
  passSerialNumber = self->_passSerialNumber;
  v9 = v12;
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
  v34 = v4;
  v18 = [v4 devicePaymentApplications];
  v19 = [v18 countByEnumeratingWithState:&v35 objects:v39 count:16];
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
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v35 + 1) + 8 * i);
        v24 = [v23 paymentType];
        if (v24 == 1005 || v24 == 1002)
        {
          v25 = [v23 subcredentials];
          v26 = [v25 anyObject];
          v27 = [v26 identifier];

          if (v27)
          {
            credentialIdentifier = self->_credentialIdentifier;
            v29 = v27;
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

      v20 = [v18 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_39:
  v4 = v34;
LABEL_40:

  return v11;
}

- (PKPendingIdentityCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PKPendingIdentityCredential;
  v5 = [(PKPendingProvisioning *)&v23 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingInstanceIdentifier"];
    sharingInstanceIdentifier = v5->_sharingInstanceIdentifier;
    v5->_sharingInstanceIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cardConfigurationIdentifier"];
    cardConfigurationIdentifier = v5->_cardConfigurationIdentifier;
    v5->_cardConfigurationIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"provisioningCredentialIdentifier"];
    provisioningCredentialIdentifier = v5->_provisioningCredentialIdentifier;
    v5->_provisioningCredentialIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentifier"];
    credentialIdentifier = v5->_credentialIdentifier;
    v5->_credentialIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passSerialNumber"];
    passSerialNumber = v5->_passSerialNumber;
    v5->_passSerialNumber = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passTypeIdentifier"];
    passTypeIdentifier = v5->_passTypeIdentifier;
    v5->_passTypeIdentifier = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountKeyIdentifier"];
    accountKeyIdentifier = v5->_accountKeyIdentifier;
    v5->_accountKeyIdentifier = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attestations"];
    attestations = v5->_attestations;
    v5->_attestations = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPendingIdentityCredential;
  v4 = a3;
  [(PKPendingProvisioning *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_sharingInstanceIdentifier forKey:{@"sharingInstanceIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_credentialIdentifier forKey:@"credentialIdentifier"];
  [v4 encodeObject:self->_cardConfigurationIdentifier forKey:@"cardConfigurationIdentifier"];
  [v4 encodeObject:self->_provisioningCredentialIdentifier forKey:@"provisioningCredentialIdentifier"];
  [v4 encodeObject:self->_passSerialNumber forKey:@"passSerialNumber"];
  [v4 encodeObject:self->_passTypeIdentifier forKey:@"passTypeIdentifier"];
  [v4 encodeObject:self->_accountKeyIdentifier forKey:@"accountKeyIdentifier"];
  [v4 encodeObject:self->_attestations forKey:@"attestations"];
}

- (void)_copyIntoPendingProvision:(id)a3
{
  v19.receiver = self;
  v19.super_class = PKPendingIdentityCredential;
  v4 = a3;
  [(PKPendingProvisioning *)&v19 _copyIntoPendingProvision:v4];
  v5 = [(NSString *)self->_sharingInstanceIdentifier copy:v19.receiver];
  v6 = *(v4 + 7);
  *(v4 + 7) = v5;

  v7 = [(NSString *)self->_cardConfigurationIdentifier copy];
  v8 = *(v4 + 8);
  *(v4 + 8) = v7;

  v9 = [(NSString *)self->_provisioningCredentialIdentifier copy];
  v10 = *(v4 + 9);
  *(v4 + 9) = v9;

  v11 = [(NSString *)self->_credentialIdentifier copy];
  v12 = *(v4 + 10);
  *(v4 + 10) = v11;

  v13 = [(NSString *)self->_passSerialNumber copy];
  v14 = *(v4 + 11);
  *(v4 + 11) = v13;

  v15 = [(NSString *)self->_passTypeIdentifier copy];
  v16 = *(v4 + 12);
  *(v4 + 12) = v15;

  v17 = [(NSString *)self->_accountKeyIdentifier copy];
  v18 = *(v4 + 13);
  *(v4 + 13) = v17;

  objc_storeStrong(v4 + 14, self->_attestations);
}

@end