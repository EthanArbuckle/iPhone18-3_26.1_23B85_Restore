@interface PKPendingStatefulTransferProvisioning
- (BOOL)representsCredential:(id)credential;
- (BOOL)representsPass:(id)pass;
- (PKPendingStatefulTransferProvisioning)initWithCoder:(id)coder;
- (PKPendingStatefulTransferProvisioning)initWithTransportIdentifier:(id)identifier invitation:(id)invitation share:(id)share;
- (id)credential;
- (id)credentialWithHandle:(id)handle;
- (id)initForDatabase;
- (void)_copyIntoPendingProvision:(id)provision;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPendingStatefulTransferProvisioning

- (id)initForDatabase
{
  v3.receiver = self;
  v3.super_class = PKPendingStatefulTransferProvisioning;
  return [(PKPendingStatefulTransferProvisioning *)&v3 init];
}

- (PKPendingStatefulTransferProvisioning)initWithTransportIdentifier:(id)identifier invitation:(id)invitation share:(id)share
{
  identifierCopy = identifier;
  invitationCopy = invitation;
  shareCopy = share;
  identifier = [shareCopy identifier];
  v18.receiver = self;
  v18.super_class = PKPendingStatefulTransferProvisioning;
  v13 = [(PKPendingProvisioning *)&v18 initWithUniqueIdentifier:identifier status:1];

  if (v13)
  {
    objc_storeStrong(&v13->_transportIdentifier, identifier);
    objc_storeStrong(&v13->_invitation, invitation);
    invitation = v13->_invitation;
    v15 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    uUIDString = [v15 UUIDString];
    [(PKSharingMessage *)invitation setIdentifier:uUIDString];

    objc_storeStrong(&v13->_share, share);
  }

  return v13;
}

- (BOOL)representsCredential:(id)credential
{
  credentialCopy = credential;
  if ([credentialCopy isStatefulTransferCredential])
  {
    statefulTransferCredential = [credentialCopy statefulTransferCredential];
    handle = [statefulTransferCredential handle];
    transportIdentifier = [handle transportIdentifier];
    transportIdentifier = self->_transportIdentifier;
    v9 = transportIdentifier;
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
        invitation = v9;
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

    invitation = [statefulTransferCredential invitation];
    identifier = [invitation identifier];
    identifier2 = [(PKSharingMessage *)self->_invitation identifier];
    v11 = identifier;
    v16 = identifier2;
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

    v37 = handle;
    share = [statefulTransferCredential share];
    identifier3 = [share identifier];
    identifier4 = [(PKPassShare *)self->_share identifier];
    v22 = identifier3;
    v23 = identifier4;
    v36 = invitation;
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
            handle = v37;
LABEL_39:
            invitation = v36;

            v19 = share;
            v18 = v39;
LABEL_40:

LABEL_41:
            goto LABEL_42;
          }

LABEL_22:
          originalShareURL = [statefulTransferCredential originalShareURL];
          originalShareURL = self->_originalShareURL;
          v27 = originalShareURL;
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
              handle = v37;
LABEL_38:

              goto LABEL_39;
            }
          }

          v22 = v24;
          accountAttestationAnonymizationSalt = [statefulTransferCredential accountAttestationAnonymizationSalt];
          accountAttestationAnonymizationSalt = self->_accountAttestationAnonymizationSalt;
          v29 = accountAttestationAnonymizationSalt;
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

      handle = v37;
      v24 = v22;
      goto LABEL_38;
    }

    goto LABEL_22;
  }

  LOBYTE(v12) = 0;
LABEL_44:

  return v12;
}

- (BOOL)representsPass:(id)pass
{
  v36 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    readerIdentifier = [(PKSharingMessage *)self->_invitation readerIdentifier];
    if (readerIdentifier)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      devicePaymentApplications = [passCopy devicePaymentApplications];
      v7 = [devicePaymentApplications countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v31;
        v25 = devicePaymentApplications;
        v23 = *v31;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v31 != v9)
            {
              objc_enumerationMutation(devicePaymentApplications);
            }

            v11 = *(*(&v30 + 1) + 8 * i);
            v26 = 0u;
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            subcredentials = [v11 subcredentials];
            v13 = [subcredentials countByEnumeratingWithState:&v26 objects:v34 count:16];
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
                    objc_enumerationMutation(subcredentials);
                  }

                  pairedReaderIdentifier = [*(*(&v26 + 1) + 8 * j) pairedReaderIdentifier];
                  v18 = readerIdentifier;
                  v19 = v18;
                  if (pairedReaderIdentifier == v18)
                  {

LABEL_26:
                    v21 = 1;
                    devicePaymentApplications = v25;
                    goto LABEL_28;
                  }

                  if (pairedReaderIdentifier)
                  {
                    v20 = [pairedReaderIdentifier isEqualToString:v18];

                    if (v20)
                    {
                      goto LABEL_26;
                    }
                  }

                  else
                  {
                  }
                }

                v14 = [subcredentials countByEnumeratingWithState:&v26 objects:v34 count:16];
                v8 = v24;
                devicePaymentApplications = v25;
                v9 = v23;
                if (v14)
                {
                  continue;
                }

                break;
              }
            }
          }

          v8 = [devicePaymentApplications countByEnumeratingWithState:&v30 objects:v35 count:16];
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

- (id)credentialWithHandle:(id)handle
{
  handleCopy = handle;
  v5 = [[PKStatefulTransferCredential alloc] initWithSharingChannelHandle:handleCopy invitation:self->_invitation share:self->_share];

  [(PKStatefulTransferCredential *)v5 setOriginalShareURL:self->_originalShareURL];
  [(PKStatefulTransferCredential *)v5 setAccountAttestationAnonymizationSalt:self->_accountAttestationAnonymizationSalt];
  provisioningState = [(PKPendingProvisioning *)self provisioningState];

  if (provisioningState)
  {
    provisioningState2 = [(PKPendingProvisioning *)self provisioningState];
    [(PKPaymentCredential *)v5 setState:provisioningState2];
  }

  return v5;
}

- (PKPendingStatefulTransferProvisioning)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = PKPendingStatefulTransferProvisioning;
  v5 = [(PKPendingProvisioning *)&v20 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transportIdentifier"];
    transportIdentifier = v5->_transportIdentifier;
    v5->_transportIdentifier = v6;

    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v9 = objc_opt_class();
    v10 = [v8 initWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"invitation"];
    invitation = v5->_invitation;
    v5->_invitation = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"share"];
    share = v5->_share;
    v5->_share = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originalShareURL"];
    originalShareURL = v5->_originalShareURL;
    v5->_originalShareURL = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountAttestationAnonymizationSalt"];
    accountAttestationAnonymizationSalt = v5->_accountAttestationAnonymizationSalt;
    v5->_accountAttestationAnonymizationSalt = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPendingStatefulTransferProvisioning;
  coderCopy = coder;
  [(PKPendingProvisioning *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_transportIdentifier forKey:{@"transportIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_invitation forKey:@"invitation"];
  [coderCopy encodeObject:self->_share forKey:@"share"];
  [coderCopy encodeObject:self->_originalShareURL forKey:@"originalShareURL"];
  [coderCopy encodeObject:self->_accountAttestationAnonymizationSalt forKey:@"accountAttestationAnonymizationSalt"];
}

- (void)_copyIntoPendingProvision:(id)provision
{
  v13.receiver = self;
  v13.super_class = PKPendingStatefulTransferProvisioning;
  provisionCopy = provision;
  [(PKPendingProvisioning *)&v13 _copyIntoPendingProvision:provisionCopy];
  v5 = [(NSString *)self->_transportIdentifier copy:v13.receiver];
  v6 = *(provisionCopy + 7);
  *(provisionCopy + 7) = v5;

  objc_storeStrong(provisionCopy + 8, self->_invitation);
  v7 = [(PKPassShare *)self->_share copy];
  v8 = *(provisionCopy + 9);
  *(provisionCopy + 9) = v7;

  v9 = [(NSString *)self->_originalShareURL copy];
  v10 = *(provisionCopy + 10);
  *(provisionCopy + 10) = v9;

  v11 = [(NSString *)self->_accountAttestationAnonymizationSalt copy];
  v12 = *(provisionCopy + 11);
  *(provisionCopy + 11) = v11;
}

@end