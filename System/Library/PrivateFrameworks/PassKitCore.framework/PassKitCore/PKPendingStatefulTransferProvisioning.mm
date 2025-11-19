@interface PKPendingStatefulTransferProvisioning
- (BOOL)representsCredential:(id)a3;
- (BOOL)representsPass:(id)a3;
- (PKPendingStatefulTransferProvisioning)initWithCoder:(id)a3;
- (PKPendingStatefulTransferProvisioning)initWithTransportIdentifier:(id)a3 invitation:(id)a4 share:(id)a5;
- (id)credential;
- (id)credentialWithHandle:(id)a3;
- (id)initForDatabase;
- (void)_copyIntoPendingProvision:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPendingStatefulTransferProvisioning

- (id)initForDatabase
{
  v3.receiver = self;
  v3.super_class = PKPendingStatefulTransferProvisioning;
  return [(PKPendingStatefulTransferProvisioning *)&v3 init];
}

- (PKPendingStatefulTransferProvisioning)initWithTransportIdentifier:(id)a3 invitation:(id)a4 share:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 identifier];
  v18.receiver = self;
  v18.super_class = PKPendingStatefulTransferProvisioning;
  v13 = [(PKPendingProvisioning *)&v18 initWithUniqueIdentifier:v12 status:1];

  if (v13)
  {
    objc_storeStrong(&v13->_transportIdentifier, a3);
    objc_storeStrong(&v13->_invitation, a4);
    invitation = v13->_invitation;
    v15 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    v16 = [v15 UUIDString];
    [(PKSharingMessage *)invitation setIdentifier:v16];

    objc_storeStrong(&v13->_share, a5);
  }

  return v13;
}

- (BOOL)representsCredential:(id)a3
{
  v4 = a3;
  if ([v4 isStatefulTransferCredential])
  {
    v5 = [v4 statefulTransferCredential];
    v6 = [v5 handle];
    v7 = [v6 transportIdentifier];
    transportIdentifier = self->_transportIdentifier;
    v9 = v7;
    v10 = transportIdentifier;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      if (!v9 || !v10)
      {
        v13 = v9;
LABEL_42:

LABEL_43:
        goto LABEL_44;
      }

      v12 = [(NSString *)v9 isEqualToString:v10];

      if (!v12)
      {
        goto LABEL_43;
      }
    }

    v13 = [v5 invitation];
    v14 = [v13 identifier];
    v15 = [(PKSharingMessage *)self->_invitation identifier];
    v11 = v14;
    v16 = v15;
    v17 = v16;
    if (v11 == v16)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v18 = v16;
      v19 = v11;
      if (!v11 || !v16)
      {
        goto LABEL_40;
      }

      v12 = [(NSString *)v11 isEqualToString:v16];

      if (!v12)
      {
        goto LABEL_41;
      }
    }

    v37 = v6;
    v35 = [v5 share];
    v20 = [v35 identifier];
    v21 = [(PKPassShare *)self->_share identifier];
    v22 = v20;
    v23 = v21;
    v36 = v13;
    v38 = v23;
    v39 = v22;
    if (v22 != v23)
    {
      LOBYTE(v12) = 0;
      if (v22)
      {
        v24 = v23;
        if (v23)
        {
          v12 = [(NSString *)v22 isEqualToString:v23];

          if (!v12)
          {
            v6 = v37;
LABEL_39:
            v13 = v36;

            v19 = v35;
            v18 = v39;
LABEL_40:

LABEL_41:
            goto LABEL_42;
          }

LABEL_22:
          v25 = [v5 originalShareURL];
          originalShareURL = self->_originalShareURL;
          v27 = v25;
          v28 = originalShareURL;
          v24 = v27;
          v29 = v28;
          if (v27 == v28)
          {
          }

          else
          {
            LOBYTE(v12) = 0;
            if (!v24 || !v28)
            {
              v22 = v24;
LABEL_36:

              goto LABEL_37;
            }

            v12 = [(NSString *)v24 isEqualToString:v28];

            if (!v12)
            {
              v6 = v37;
LABEL_38:

              goto LABEL_39;
            }
          }

          v22 = v24;
          v30 = [v5 accountAttestationAnonymizationSalt];
          accountAttestationAnonymizationSalt = self->_accountAttestationAnonymizationSalt;
          v29 = v30;
          v32 = accountAttestationAnonymizationSalt;
          v33 = v32;
          if (v29 == v32)
          {
            LOBYTE(v12) = 1;
          }

          else
          {
            LOBYTE(v12) = 0;
            if (v29 && v32)
            {
              LOBYTE(v12) = [(NSString *)v29 isEqualToString:v32];
            }
          }

          v24 = v29;
          goto LABEL_36;
        }
      }

      else
      {
        v24 = v23;
      }

LABEL_37:

      v6 = v37;
      v24 = v22;
      goto LABEL_38;
    }

    goto LABEL_22;
  }

  LOBYTE(v12) = 0;
LABEL_44:

  return v12;
}

- (BOOL)representsPass:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PKSharingMessage *)self->_invitation readerIdentifier];
    if (v5)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v6 = [v4 devicePaymentApplications];
      v7 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v31;
        v25 = v6;
        v23 = *v31;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v31 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v30 + 1) + 8 * i);
            v26 = 0u;
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            v12 = [v11 subcredentials];
            v13 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v27;
              v24 = v8;
              while (2)
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v27 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = [*(*(&v26 + 1) + 8 * j) pairedReaderIdentifier];
                  v18 = v5;
                  v19 = v18;
                  if (v17 == v18)
                  {

LABEL_26:
                    v21 = 1;
                    v6 = v25;
                    goto LABEL_28;
                  }

                  if (v17)
                  {
                    v20 = [v17 isEqualToString:v18];

                    if (v20)
                    {
                      goto LABEL_26;
                    }
                  }

                  else
                  {
                  }
                }

                v14 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
                v8 = v24;
                v6 = v25;
                v9 = v23;
                if (v14)
                {
                  continue;
                }

                break;
              }
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
          v21 = 0;
        }

        while (v8);
      }

      else
      {
        v21 = 0;
      }

LABEL_28:
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)credential
{
  v3 = [PKSharingExistingChannelDescriptor existingForTransportIdentifier:self->_transportIdentifier];
  v4 = [PKSharingChannelHandle createHandleForDescriptor:v3 queue:MEMORY[0x1E69E96A0]];
  if (v4)
  {
    v5 = [(PKPendingStatefulTransferProvisioning *)self credentialWithHandle:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)credentialWithHandle:(id)a3
{
  v4 = a3;
  v5 = [[PKStatefulTransferCredential alloc] initWithSharingChannelHandle:v4 invitation:self->_invitation share:self->_share];

  [(PKStatefulTransferCredential *)v5 setOriginalShareURL:self->_originalShareURL];
  [(PKStatefulTransferCredential *)v5 setAccountAttestationAnonymizationSalt:self->_accountAttestationAnonymizationSalt];
  v6 = [(PKPendingProvisioning *)self provisioningState];

  if (v6)
  {
    v7 = [(PKPendingProvisioning *)self provisioningState];
    [(PKPaymentCredential *)v5 setState:v7];
  }

  return v5;
}

- (PKPendingStatefulTransferProvisioning)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PKPendingStatefulTransferProvisioning;
  v5 = [(PKPendingProvisioning *)&v20 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transportIdentifier"];
    transportIdentifier = v5->_transportIdentifier;
    v5->_transportIdentifier = v6;

    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v9 = objc_opt_class();
    v10 = [v8 initWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"invitation"];
    invitation = v5->_invitation;
    v5->_invitation = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"share"];
    share = v5->_share;
    v5->_share = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originalShareURL"];
    originalShareURL = v5->_originalShareURL;
    v5->_originalShareURL = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountAttestationAnonymizationSalt"];
    accountAttestationAnonymizationSalt = v5->_accountAttestationAnonymizationSalt;
    v5->_accountAttestationAnonymizationSalt = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPendingStatefulTransferProvisioning;
  v4 = a3;
  [(PKPendingProvisioning *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_transportIdentifier forKey:{@"transportIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_invitation forKey:@"invitation"];
  [v4 encodeObject:self->_share forKey:@"share"];
  [v4 encodeObject:self->_originalShareURL forKey:@"originalShareURL"];
  [v4 encodeObject:self->_accountAttestationAnonymizationSalt forKey:@"accountAttestationAnonymizationSalt"];
}

- (void)_copyIntoPendingProvision:(id)a3
{
  v13.receiver = self;
  v13.super_class = PKPendingStatefulTransferProvisioning;
  v4 = a3;
  [(PKPendingProvisioning *)&v13 _copyIntoPendingProvision:v4];
  v5 = [(NSString *)self->_transportIdentifier copy:v13.receiver];
  v6 = *(v4 + 7);
  *(v4 + 7) = v5;

  objc_storeStrong(v4 + 8, self->_invitation);
  v7 = [(PKPassShare *)self->_share copy];
  v8 = *(v4 + 9);
  *(v4 + 9) = v7;

  v9 = [(NSString *)self->_originalShareURL copy];
  v10 = *(v4 + 10);
  *(v4 + 10) = v9;

  v11 = [(NSString *)self->_accountAttestationAnonymizationSalt copy];
  v12 = *(v4 + 11);
  *(v4 + 11) = v11;
}

@end