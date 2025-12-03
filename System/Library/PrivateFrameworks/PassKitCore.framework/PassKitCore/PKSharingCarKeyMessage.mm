@interface PKSharingCarKeyMessage
- (BOOL)configureWithContent:(id)content;
- (NSData)underlyingPayload;
- (NSDictionary)carKeySharingDict;
- (NSString)friendKeyIdentifier;
- (NSString)shareIdentifier;
- (NSString)shareSessionIdentifier;
- (PKSharingCarKeyMessage)initWithRawMessage:(id)message type:(unint64_t)type shareIdentifier:(id)identifier friendKeyIdentifier:(id)keyIdentifier carKeySharingDict:(id)dict;
- (PKSharingCarKeyMessage)messageWithBindingAttestation:(id)attestation;
@end

@implementation PKSharingCarKeyMessage

- (PKSharingCarKeyMessage)initWithRawMessage:(id)message type:(unint64_t)type shareIdentifier:(id)identifier friendKeyIdentifier:(id)keyIdentifier carKeySharingDict:(id)dict
{
  v25[1] = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  selfCopy = 0;
  if (message && identifier)
  {
    v14 = MEMORY[0x1E695DF90];
    keyIdentifierCopy = keyIdentifier;
    identifierCopy = identifier;
    messageCopy = message;
    v18 = objc_alloc_init(v14);
    hexEncoding = [messageCopy hexEncoding];

    [v18 setObject:hexEncoding forKeyedSubscript:@"sharingData"];
    [v18 setObject:identifierCopy forKeyedSubscript:@"sharingId"];

    [v18 setObject:keyIdentifierCopy forKeyedSubscript:@"friendKeyId"];
    if (dictCopy)
    {
      v24 = @"carKey";
      v25[0] = dictCopy;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    }

    else
    {
      v20 = 0;
    }

    v23.receiver = self;
    v23.super_class = PKSharingCarKeyMessage;
    v21 = [(PKSharingGenericMessage *)&v23 initWithFormat:2 type:type genericSharingDict:v18 appleSharingDict:v20 displayInformation:0];
    if (dictCopy)
    {
    }

    self = v21;

    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)configureWithContent:(id)content
{
  v9.receiver = self;
  v9.super_class = PKSharingCarKeyMessage;
  v4 = [(PKSharingGenericMessage *)&v9 configureWithContent:content];
  if (v4)
  {
    underlyingPayload = [(PKSharingCarKeyMessage *)self underlyingPayload];

    if (underlyingPayload)
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
  appleSharingDict = [(PKSharingGenericMessage *)self appleSharingDict];
  v3 = [appleSharingDict PKDictionaryForKey:@"carKey"];

  return v3;
}

- (NSString)shareSessionIdentifier
{
  carKeySharingDict = [(PKSharingCarKeyMessage *)self carKeySharingDict];
  v3 = [carKeySharingDict PKStringForKey:@"sharingSessionUUID"];

  return v3;
}

- (NSString)shareIdentifier
{
  v12 = *MEMORY[0x1E69E9840];
  genericSharingDict = [(PKSharingGenericMessage *)self genericSharingDict];
  v4 = [genericSharingDict PKStringForKey:@"sharingId"];
  if (v4 || ([genericSharingDict PKStringForKey:@"sharingIdentifier"], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
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
      selfCopy = self;
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
  genericSharingDict = [(PKSharingGenericMessage *)self genericSharingDict];
  v3 = [genericSharingDict PKStringForKey:@"friendKeyId"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [genericSharingDict PKStringForKey:@"friendKeyIdentifier"];
  }

  v6 = v5;

  return v6;
}

- (NSData)underlyingPayload
{
  genericSharingDict = [(PKSharingGenericMessage *)self genericSharingDict];
  v3 = [genericSharingDict PKStringForKey:@"sharingData"];
  if (v3 || ([genericSharingDict PKStringForKey:@"message"], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    pk_decodeHexadecimal = [v3 pk_decodeHexadecimal];
  }

  else
  {
    pk_decodeHexadecimal = 0;
  }

  return pk_decodeHexadecimal;
}

- (PKSharingCarKeyMessage)messageWithBindingAttestation:(id)attestation
{
  attestationCopy = attestation;
  carKeySharingDict = [(PKSharingCarKeyMessage *)self carKeySharingDict];
  v6 = [carKeySharingDict mutableCopy];
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

  hexEncoding = [attestationCopy hexEncoding];

  [v9 setObject:hexEncoding forKeyedSubscript:@"bindingAttestation"];
  v11 = [PKSharingCarKeyMessage alloc];
  underlyingPayload = [(PKSharingCarKeyMessage *)self underlyingPayload];
  type = [(PKSharingMessage *)self type];
  shareIdentifier = [(PKSharingCarKeyMessage *)self shareIdentifier];
  friendKeyIdentifier = [(PKSharingCarKeyMessage *)self friendKeyIdentifier];
  v16 = [(PKSharingCarKeyMessage *)v11 initWithRawMessage:underlyingPayload type:type shareIdentifier:shareIdentifier friendKeyIdentifier:friendKeyIdentifier carKeySharingDict:v9];

  return v16;
}

@end