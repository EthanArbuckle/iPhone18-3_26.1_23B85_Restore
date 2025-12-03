@interface PKSharingPushProvisioningInvitation
- (BOOL)configureWithContent:(id)content;
- (BOOL)isEqual:(id)equal;
- (NSString)provisioningCredentialHash;
- (PKSharingPushProvisioningInvitation)initWithDisplayInformation:(id)information provisioningVouchersByOEM:(id)m activationOptions:(id)options proprietaryData:(id)data;
- (id)description;
@end

@implementation PKSharingPushProvisioningInvitation

- (PKSharingPushProvisioningInvitation)initWithDisplayInformation:(id)information provisioningVouchersByOEM:(id)m activationOptions:(id)options proprietaryData:(id)data
{
  v46 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  mCopy = m;
  optionsCopy = options;
  dataCopy = data;
  if (mCopy)
  {
    v14 = [mCopy objectForKeyedSubscript:@"appleAuthorizationToken"];

    if (v14)
    {
      v15 = [mCopy mutableCopy];
      v16 = optionsCopy;
      v17 = v16;
      v18 = 0;
      if (self && v16)
      {
        v34 = v15;
        v35 = optionsCopy;
        selfCopy = self;
        v37 = mCopy;
        v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v33 = v17;
        options = [v17 options];
        v20 = [options countByEnumeratingWithState:&v40 objects:buf count:16];
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
                objc_enumerationMutation(options);
              }

              v24 = *(*(&v40 + 1) + 8 * i);
              if ([v24 type] == 1)
              {
                v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
                [v25 setObject:@"pinCode" forKeyedSubscript:@"type"];
                value = [v24 value];
                [v25 setObject:value forKeyedSubscript:@"value"];

                valueLength = [v24 valueLength];
                if (valueLength)
                {
                  v28 = [MEMORY[0x1E696AD98] numberWithInteger:valueLength];
                  [v25 setObject:v28 forKeyedSubscript:@"length"];
                }

                [v38 addObject:v25];
              }
            }

            v21 = [options countByEnumeratingWithState:&v40 objects:buf count:16];
          }

          while (v21);
        }

        v18 = [v38 copy];
        mCopy = v37;
        optionsCopy = v35;
        self = selfCopy;
        v15 = v34;
        v17 = v33;
      }

      [v15 setObject:v18 forKeyedSubscript:@"activationOptions"];
      v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v29 setObject:v15 forKeyedSubscript:@"genericData"];
      dictionaryRepresentation = [dataCopy dictionaryRepresentation];
      [v29 setObject:dictionaryRepresentation forKeyedSubscript:@"apple"];

      v39.receiver = self;
      v39.super_class = PKSharingPushProvisioningInvitation;
      self = [(PKSharingMessage *)&v39 initWithContent:v29 format:1 type:1 displayInformation:informationCopy];

      selfCopy2 = self;
    }

    else
    {
      v15 = PKLogFacilityTypeGetObject(0x22uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v45 = mCopy;
        _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "PKSharingPushProvisioningInvitation: provisioningDict missing Apple provisioning information. \n %@", buf, 0xCu);
      }

      selfCopy2 = 0;
    }
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
}

- (BOOL)configureWithContent:(id)content
{
  v48 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  v41.receiver = self;
  v41.super_class = PKSharingPushProvisioningInvitation;
  v5 = [(PKSharingMessage *)&v41 configureWithContent:contentCopy];
  if (!v5)
  {
    goto LABEL_28;
  }

  v6 = [contentCopy PKDictionaryForKey:@"genericData"];
  v7 = [v6 PKDictionaryForKey:@"appleAuthorizationToken"];
  if (v7)
  {
    v8 = [[PKPushProvisioningTarget alloc] initWithProvisioningDict:v7];
    [(PKPushProvisioningTarget *)v8 setSecondarySource:@"share"];
    v9 = [[PKShareablePassMetadata alloc] initWithPushProvisioningTarget:v8];
    preview = [(PKShareablePassMetadata *)v9 preview];
    displayInformation = [(PKSharingMessage *)self displayInformation];
    title = [displayInformation title];
    [preview setLocalizedDescription:title];

    imageURL = [displayInformation imageURL];
    [preview setThumbnailURL:imageURL];

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
  selfCopy = self;
  v38 = v5;
  v39 = contentCopy;
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
  contentCopy = v39;
  LOBYTE(v5) = v38;
  self = selfCopy;
  v16 = v35;
  v7 = v36;
LABEL_27:

  activationOptions = self->_activationOptions;
  self->_activationOptions = v17;

  v30 = [PKSharingMesageProprietaryData alloc];
  v31 = [contentCopy PKDictionaryForKey:@"apple"];
  v32 = [(PKSharingMesageProprietaryData *)v30 initWithDictionary:v31];
  proprietaryData = self->_proprietaryData;
  self->_proprietaryData = v32;

  [(PKSharingMessage *)self setType:1];
LABEL_28:

  return v5;
}

- (NSString)provisioningCredentialHash
{
  firstObject = [(NSArray *)self->_metadatas firstObject];
  credentialIdentifier = [firstObject credentialIdentifier];

  if (credentialIdentifier)
  {
    v4 = [credentialIdentifier dataUsingEncoding:4];
    sHA256Hash = [v4 SHA256Hash];
    v6 = [sHA256Hash base64EncodedStringWithOptions:0];
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
  identifier = [(PKSharingMessage *)self identifier];
  [v3 appendFormat:@"identifier: '%@'; ", identifier];

  v5 = PKSharingMessageTypeToString([(PKSharingMessage *)self type]);
  [v3 appendFormat:@"type: '%@'; ", v5];

  displayInformation = [(PKSharingMessage *)self displayInformation];
  [v3 appendFormat:@"displayInformation: '%@'; ", displayInformation];

  [v3 appendFormat:@"metadatas: '%@'; ", self->_metadatas];
  [v3 appendFormat:@"activationOptions: '%@'; ", self->_activationOptions];
  [v3 appendFormat:@"proprietaryData: '%@'; ", self->_proprietaryData];
  [v3 appendFormat:@">"];
  v7 = [v3 copy];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(self) = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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