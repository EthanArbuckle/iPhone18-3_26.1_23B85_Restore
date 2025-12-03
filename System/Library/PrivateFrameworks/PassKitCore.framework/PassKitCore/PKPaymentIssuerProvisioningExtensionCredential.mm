@interface PKPaymentIssuerProvisioningExtensionCredential
- (BOOL)_isEqualToCredential:(id)credential;
- (BOOL)isEqual:(id)equal;
- (PKPaymentIssuerProvisioningExtensionCredential)initWithExtension:(id)extension entry:(id)entry;
- (id)detailDescriptionWithEnvironment:(unint64_t)environment;
- (id)metadata;
- (unint64_t)hash;
@end

@implementation PKPaymentIssuerProvisioningExtensionCredential

- (PKPaymentIssuerProvisioningExtensionCredential)initWithExtension:(id)extension entry:(id)entry
{
  extensionCopy = extension;
  entryCopy = entry;
  v9 = [(PKPaymentCredential *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_extension, extension);
    objc_storeStrong(&v10->_entry, entry);
    title = [(PKIssuerProvisioningExtensionPassEntry *)v10->_entry title];
    [(PKPaymentCredential *)v10 setLongDescription:title];
  }

  return v10;
}

- (id)metadata
{
  v24 = *MEMORY[0x1E69E9840];
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  addRequestConfiguration = [(PKIssuerProvisioningExtensionPaymentPassEntry *)self->_entry addRequestConfiguration];
  _effectiveDetails = [addRequestConfiguration _effectiveDetails];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = _effectiveDetails;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v22[0] = @"text";
        v21[0] = @"valueType";
        v21[1] = @"value";
        value = [v9 value];
        v22[1] = value;
        v21[2] = @"localizedDisplayName";
        label = [v9 label];
        v22[2] = label;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];

        v13 = [PKPaymentCredentialMetadata paymentCredentialMetadataWithConfiguration:v12];
        if (v13)
        {
          [v16 addObject:v13];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v6);
  }

  return v16;
}

- (id)detailDescriptionWithEnvironment:(unint64_t)environment
{
  entry = [(PKPaymentIssuerProvisioningExtensionCredential *)self entry];
  addRequestConfiguration = [entry addRequestConfiguration];
  primaryAccountSuffix = [addRequestConfiguration primaryAccountSuffix];

  if ([primaryAccountSuffix length])
  {
    v6 = PKMaskedPaymentPAN(primaryAccountSuffix);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_entry];
  metadata = [(PKPaymentIssuerProvisioningExtensionCredential *)self metadata];
  [array safelyAddObject:metadata];

  v5 = PKCombinedHash(17, array);
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKPaymentIssuerProvisioningExtensionCredential *)self _isEqualToCredential:equalCopy];
  }

  return v5;
}

- (BOOL)_isEqualToCredential:(id)credential
{
  credentialCopy = credential;
  if (!credentialCopy)
  {
    goto LABEL_8;
  }

  entry = self->_entry;
  v6 = credentialCopy[15];
  if (entry)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if ([(PKIssuerProvisioningExtensionPassEntry *)entry isEqual:?])
    {
      goto LABEL_10;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_15;
  }

  if (entry != v6)
  {
    goto LABEL_8;
  }

LABEL_10:
  metadata = [(PKPaymentIssuerProvisioningExtensionCredential *)self metadata];
  metadata2 = [credentialCopy metadata];
  v12 = metadata2;
  if (metadata && metadata2)
  {
    v8 = [metadata isEqual:metadata2];
  }

  else
  {
    v8 = metadata == metadata2;
  }

LABEL_15:
  return v8;
}

@end