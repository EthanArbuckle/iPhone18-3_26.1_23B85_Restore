@interface PKSharingCarKeyMessage
- (BOOL)configureWithContent:(id)a3;
- (NSData)underlyingPayload;
- (NSDictionary)carKeySharingDict;
- (NSString)friendKeyIdentifier;
- (NSString)shareIdentifier;
- (NSString)shareSessionIdentifier;
- (PKSharingCarKeyMessage)initWithRawMessage:(id)a3 type:(unint64_t)a4 shareIdentifier:(id)a5 friendKeyIdentifier:(id)a6 carKeySharingDict:(id)a7;
- (PKSharingCarKeyMessage)messageWithBindingAttestation:(id)a3;
@end

@implementation PKSharingCarKeyMessage

- (PKSharingCarKeyMessage)initWithRawMessage:(id)a3 type:(unint64_t)a4 shareIdentifier:(id)a5 friendKeyIdentifier:(id)a6 carKeySharingDict:(id)a7
{
  v25[1] = *MEMORY[0x1E69E9840];
  v12 = a7;
  v13 = 0;
  if (a3 && a5)
  {
    v14 = MEMORY[0x1E695DF90];
    v15 = a6;
    v16 = a5;
    v17 = a3;
    v18 = objc_alloc_init(v14);
    v19 = [v17 hexEncoding];

    [v18 setObject:v19 forKeyedSubscript:@"sharingData"];
    [v18 setObject:v16 forKeyedSubscript:@"sharingId"];

    [v18 setObject:v15 forKeyedSubscript:@"friendKeyId"];
    if (v12)
    {
      v24 = @"carKey";
      v25[0] = v12;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    }

    else
    {
      v20 = 0;
    }

    v23.receiver = self;
    v23.super_class = PKSharingCarKeyMessage;
    v21 = [(PKSharingGenericMessage *)&v23 initWithFormat:2 type:a4 genericSharingDict:v18 appleSharingDict:v20 displayInformation:0];
    if (v12)
    {
    }

    self = v21;

    v13 = self;
  }

  return v13;
}

- (BOOL)configureWithContent:(id)a3
{
  v9.receiver = self;
  v9.super_class = PKSharingCarKeyMessage;
  v4 = [(PKSharingGenericMessage *)&v9 configureWithContent:a3];
  if (v4)
  {
    v5 = [(PKSharingCarKeyMessage *)self underlyingPayload];

    if (v5)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v6 = PKLogFacilityTypeGetObject(0x22uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "PKSharingMessage: car key message missing underlying sharing data", v8, 2u);
      }

      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (NSDictionary)carKeySharingDict
{
  v2 = [(PKSharingGenericMessage *)self appleSharingDict];
  v3 = [v2 PKDictionaryForKey:@"carKey"];

  return v3;
}

- (NSString)shareSessionIdentifier
{
  v2 = [(PKSharingCarKeyMessage *)self carKeySharingDict];
  v3 = [v2 PKStringForKey:@"sharingSessionUUID"];

  return v3;
}

- (NSString)shareIdentifier
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(PKSharingGenericMessage *)self genericSharingDict];
  v4 = [v3 PKStringForKey:@"sharingId"];
  if (v4 || ([v3 PKStringForKey:@"sharingIdentifier"], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = v4;
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(0x22uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = self;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKSharingMessage: Unable to find credential share identifier for %@", &v10, 0xCu);
    }

    v5 = 0;
    v6 = &stru_1F227FD28;
  }

  v7 = v6;

  return &v6->isa;
}

- (NSString)friendKeyIdentifier
{
  v2 = [(PKSharingGenericMessage *)self genericSharingDict];
  v3 = [v2 PKStringForKey:@"friendKeyId"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 PKStringForKey:@"friendKeyIdentifier"];
  }

  v6 = v5;

  return v6;
}

- (NSData)underlyingPayload
{
  v2 = [(PKSharingGenericMessage *)self genericSharingDict];
  v3 = [v2 PKStringForKey:@"sharingData"];
  if (v3 || ([v2 PKStringForKey:@"message"], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [v3 pk_decodeHexadecimal];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PKSharingCarKeyMessage)messageWithBindingAttestation:(id)a3
{
  v4 = a3;
  v5 = [(PKSharingCarKeyMessage *)self carKeySharingDict];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v9 = v8;

  v10 = [v4 hexEncoding];

  [v9 setObject:v10 forKeyedSubscript:@"bindingAttestation"];
  v11 = [PKSharingCarKeyMessage alloc];
  v12 = [(PKSharingCarKeyMessage *)self underlyingPayload];
  v13 = [(PKSharingMessage *)self type];
  v14 = [(PKSharingCarKeyMessage *)self shareIdentifier];
  v15 = [(PKSharingCarKeyMessage *)self friendKeyIdentifier];
  v16 = [(PKSharingCarKeyMessage *)v11 initWithRawMessage:v12 type:v13 shareIdentifier:v14 friendKeyIdentifier:v15 carKeySharingDict:v9];

  return v16;
}

@end