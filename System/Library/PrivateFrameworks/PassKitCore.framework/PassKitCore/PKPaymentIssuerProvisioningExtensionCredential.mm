@interface PKPaymentIssuerProvisioningExtensionCredential
- (BOOL)_isEqualToCredential:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKPaymentIssuerProvisioningExtensionCredential)initWithExtension:(id)a3 entry:(id)a4;
- (id)detailDescriptionWithEnvironment:(unint64_t)a3;
- (id)metadata;
- (unint64_t)hash;
@end

@implementation PKPaymentIssuerProvisioningExtensionCredential

- (PKPaymentIssuerProvisioningExtensionCredential)initWithExtension:(id)a3 entry:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PKPaymentCredential *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_extension, a3);
    objc_storeStrong(&v10->_entry, a4);
    v11 = [(PKIssuerProvisioningExtensionPassEntry *)v10->_entry title];
    [(PKPaymentCredential *)v10 setLongDescription:v11];
  }

  return v10;
}

- (id)metadata
{
  v24 = *MEMORY[0x1E69E9840];
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [(PKIssuerProvisioningExtensionPaymentPassEntry *)self->_entry addRequestConfiguration];
  v4 = [v3 _effectiveDetails];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v4;
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
        v10 = [v9 value];
        v22[1] = v10;
        v21[2] = @"localizedDisplayName";
        v11 = [v9 label];
        v22[2] = v11;
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

- (id)detailDescriptionWithEnvironment:(unint64_t)a3
{
  v3 = [(PKPaymentIssuerProvisioningExtensionCredential *)self entry];
  v4 = [v3 addRequestConfiguration];
  v5 = [v4 primaryAccountSuffix];

  if ([v5 length])
  {
    v6 = PKMaskedPaymentPAN(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_entry];
  v4 = [(PKPaymentIssuerProvisioningExtensionCredential *)self metadata];
  [v3 safelyAddObject:v4];

  v5 = PKCombinedHash(17, v3);
  return v5;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKPaymentIssuerProvisioningExtensionCredential *)self _isEqualToCredential:v4];
  }

  return v5;
}

- (BOOL)_isEqualToCredential:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_8;
  }

  entry = self->_entry;
  v6 = v4[15];
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
  v10 = [(PKPaymentIssuerProvisioningExtensionCredential *)self metadata];
  v11 = [v4 metadata];
  v12 = v11;
  if (v10 && v11)
  {
    v8 = [v10 isEqual:v11];
  }

  else
  {
    v8 = v10 == v11;
  }

LABEL_15:
  return v8;
}

@end