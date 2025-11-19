@interface PKSharingPushProvisioningInvitation
- (BOOL)configureWithContent:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)provisioningCredentialHash;
- (PKSharingPushProvisioningInvitation)initWithDisplayInformation:(id)a3 provisioningVouchersByOEM:(id)a4 activationOptions:(id)a5 proprietaryData:(id)a6;
- (id)description;
@end

@implementation PKSharingPushProvisioningInvitation

- (PKSharingPushProvisioningInvitation)initWithDisplayInformation:(id)a3 provisioningVouchersByOEM:(id)a4 activationOptions:(id)a5 proprietaryData:(id)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v11)
  {
    v14 = [v11 objectForKeyedSubscript:@"appleAuthorizationToken"];

    if (v14)
    {
      v15 = [v11 mutableCopy];
      v16 = v12;
      v17 = v16;
      v18 = 0;
      if (self && v16)
      {
        v34 = v15;
        v35 = v12;
        v36 = self;
        v37 = v11;
        v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v33 = v17;
        v19 = [v17 options];
        v20 = [v19 countByEnumeratingWithState:&v40 objects:buf count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v41;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v41 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v40 + 1) + 8 * i);
              if ([v24 type] == 1)
              {
                v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
                [v25 setObject:@"pinCode" forKeyedSubscript:@"type"];
                v26 = [v24 value];
                [v25 setObject:v26 forKeyedSubscript:@"value"];

                v27 = [v24 valueLength];
                if (v27)
                {
                  v28 = [MEMORY[0x1E696AD98] numberWithInteger:v27];
                  [v25 setObject:v28 forKeyedSubscript:@"length"];
                }

                [v38 addObject:v25];
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v40 objects:buf count:16];
          }

          while (v21);
        }

        v18 = [v38 copy];
        v11 = v37;
        v12 = v35;
        self = v36;
        v15 = v34;
        v17 = v33;
      }

      [v15 setObject:v18 forKeyedSubscript:@"activationOptions"];
      v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v29 setObject:v15 forKeyedSubscript:@"genericData"];
      v30 = [v13 dictionaryRepresentation];
      [v29 setObject:v30 forKeyedSubscript:@"apple"];

      v39.receiver = self;
      v39.super_class = PKSharingPushProvisioningInvitation;
      self = [(PKSharingMessage *)&v39 initWithContent:v29 format:1 type:1 displayInformation:v10];

      v31 = self;
    }

    else
    {
      v15 = PKLogFacilityTypeGetObject(0x22uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v45 = v11;
        _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "PKSharingPushProvisioningInvitation: provisioningDict missing Apple provisioning information. \n %@", buf, 0xCu);
      }

      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (BOOL)configureWithContent:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v41.receiver = self;
  v41.super_class = PKSharingPushProvisioningInvitation;
  v5 = [(PKSharingMessage *)&v41 configureWithContent:v4];
  if (!v5)
  {
    goto LABEL_28;
  }

  v6 = [v4 PKDictionaryForKey:@"genericData"];
  v7 = [v6 PKDictionaryForKey:@"appleAuthorizationToken"];
  if (v7)
  {
    v8 = [[PKPushProvisioningTarget alloc] initWithProvisioningDict:v7];
    [(PKPushProvisioningTarget *)v8 setSecondarySource:@"share"];
    v9 = [[PKShareablePassMetadata alloc] initWithPushProvisioningTarget:v8];
    v10 = [(PKShareablePassMetadata *)v9 preview];
    v11 = [(PKSharingMessage *)self displayInformation];
    v12 = [v11 title];
    [v10 setLocalizedDescription:v12];

    v13 = [v11 imageURL];
    [v10 setThumbnailURL:v13];

    v46 = v9;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
    metadatas = self->_metadatas;
    self->_metadatas = v14;
  }

  else
  {
    v8 = self->_metadatas;
    self->_metadatas = MEMORY[0x1E695E0F0];
  }

  v16 = [v6 PKArrayContaining:objc_opt_class() forKey:@"activationOptions"];
  if (!v16)
  {
    v17 = 0;
    goto LABEL_27;
  }

  v36 = v7;
  v37 = self;
  v38 = v5;
  v39 = v4;
  v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v35 = v16;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (!v19)
  {
    goto LABEL_26;
  }

  v20 = v19;
  v21 = *v43;
  do
  {
    for (i = 0; i != v20; ++i)
    {
      if (*v43 != v21)
      {
        objc_enumerationMutation(v18);
      }

      v23 = *(*(&v42 + 1) + 8 * i);
      v24 = [v23 PKStringForKey:{@"type", v35}];
      v25 = v24;
      if (v24 == @"pinCode")
      {

LABEL_18:
        v27 = [[PKPassShareActivationOption alloc] initWithDefaultIdentifierForType:1];
        v25 = [v23 PKStringForKey:@"value"];
        if (v25)
        {
          [(PKPassShareActivationOption *)v27 setValue:v25];
          v28 = [v25 length];
        }

        else
        {
          v28 = [v23 PKIntegerForKey:@"length"];
        }

        [(PKPassShareActivationOption *)v27 setValueLength:v28];
        [v40 addObject:v27];
LABEL_23:

        continue;
      }

      if (!@"pinCode" || !v24)
      {
        v27 = v24;
        goto LABEL_23;
      }

      v26 = [(__CFString *)v24 isEqualToString:@"pinCode"];

      if (v26)
      {
        goto LABEL_18;
      }
    }

    v20 = [v18 countByEnumeratingWithState:&v42 objects:v47 count:16];
  }

  while (v20);
LABEL_26:

  v17 = [[PKPassShareActivationOptions alloc] initWithOptions:v40];
  v4 = v39;
  LOBYTE(v5) = v38;
  self = v37;
  v16 = v35;
  v7 = v36;
LABEL_27:

  activationOptions = self->_activationOptions;
  self->_activationOptions = v17;

  v30 = [PKSharingMesageProprietaryData alloc];
  v31 = [v4 PKDictionaryForKey:@"apple"];
  v32 = [(PKSharingMesageProprietaryData *)v30 initWithDictionary:v31];
  proprietaryData = self->_proprietaryData;
  self->_proprietaryData = v32;

  [(PKSharingMessage *)self setType:1];
LABEL_28:

  return v5;
}

- (NSString)provisioningCredentialHash
{
  v2 = [(NSArray *)self->_metadatas firstObject];
  v3 = [v2 credentialIdentifier];

  if (v3)
  {
    v4 = [v3 dataUsingEncoding:4];
    v5 = [v4 SHA256Hash];
    v6 = [v5 base64EncodedStringWithOptions:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(PKSharingMessage *)self identifier];
  [v3 appendFormat:@"identifier: '%@'; ", v4];

  v5 = PKSharingMessageTypeToString([(PKSharingMessage *)self type]);
  [v3 appendFormat:@"type: '%@'; ", v5];

  v6 = [(PKSharingMessage *)self displayInformation];
  [v3 appendFormat:@"displayInformation: '%@'; ", v6];

  [v3 appendFormat:@"metadatas: '%@'; ", self->_metadatas];
  [v3 appendFormat:@"activationOptions: '%@'; ", self->_activationOptions];
  [v3 appendFormat:@"proprietaryData: '%@'; ", self->_proprietaryData];
  [v3 appendFormat:@">"];
  v7 = [v3 copy];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(self) = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (self)
    {
      v11.receiver = self;
      v11.super_class = PKSharingPushProvisioningInvitation;
      if ([(PKSharingPushProvisioningInvitation *)&v11 isEqual:v6])
      {
        metadatas = self->_metadatas;
        v8 = v6->_metadatas;
        if (metadatas)
        {
          v9 = v8 == 0;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          LOBYTE(self) = metadatas == v8;
        }

        else
        {
          LOBYTE(self) = [(NSArray *)metadatas isEqual:?];
        }
      }

      else
      {
        LOBYTE(self) = 0;
      }
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

@end