@interface PKPaymentMethod
+ (PKPaymentMethod)paymentMethodWithProtobuf:(id)protobuf;
- (PKPaymentMethod)initWithBankAccount:(id)account;
- (PKPaymentMethod)initWithBindToken:(id)token;
- (PKPaymentMethod)initWithCoder:(id)coder;
- (PKPaymentMethod)initWithPaymentPass:(id)pass paymentApplication:(id)application subCredential:(id)credential obfuscateNetworks:(BOOL)networks;
- (PKPaymentMethod)initWithPeerPaymentQuote:(id)quote;
- (PKPaymentMethod)initWithRemotePaymentInstrument:(id)instrument;
- (PKPaymentMethod)initWithRemotePaymentInstrument:(id)instrument paymentApplication:(id)application;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)protobuf;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentMethod

+ (PKPaymentMethod)paymentMethodWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v4 = objc_alloc_init(PKPaymentMethod);
  network = [protobufCopy network];
  [(PKPaymentMethod *)v4 setNetwork:network];

  displayName = [protobufCopy displayName];
  [(PKPaymentMethod *)v4 setDisplayName:displayName];

  LODWORD(displayName) = [protobufCopy type];
  [(PKPaymentMethod *)v4 setType:displayName];

  return v4;
}

- (id)protobuf
{
  v3 = objc_alloc_init(PKProtobufPaymentMethod);
  displayName = [(PKPaymentMethod *)self displayName];
  [(PKProtobufPaymentMethod *)v3 setDisplayName:displayName];

  network = [(PKPaymentMethod *)self network];
  [(PKProtobufPaymentMethod *)v3 setNetwork:network];

  [(PKProtobufPaymentMethod *)v3 setType:[(PKPaymentMethod *)self type]];

  return v3;
}

- (PKPaymentMethod)initWithPaymentPass:(id)pass paymentApplication:(id)application subCredential:(id)credential obfuscateNetworks:(BOOL)networks
{
  passCopy = pass;
  applicationCopy = application;
  credentialCopy = credential;
  v25.receiver = self;
  v25.super_class = PKPaymentMethod;
  v14 = [(PKPaymentMethod *)&v25 init];
  if (v14)
  {
    if (applicationCopy)
    {
      devicePrimaryInAppPaymentApplication = applicationCopy;
    }

    else
    {
      devicePrimaryInAppPaymentApplication = [passCopy devicePrimaryInAppPaymentApplication];
    }

    v16 = devicePrimaryInAppPaymentApplication;
    v14->_type = [devicePrimaryInAppPaymentApplication paymentType];
    if (credentialCopy)
    {
      objc_storeStrong(&v14->_subCredential, credential);
      objc_storeStrong(&v14->_secureElementPass, pass);
    }

    if (networks)
    {
      goto LABEL_14;
    }

    v17 = PKPaymentNetworkNameForPaymentCredentialType([v16 paymentNetworkIdentifier]);
    network = v14->_network;
    v14->_network = v17;

    primaryAccountNumberSuffix = [passCopy primaryAccountNumberSuffix];
    dpanSuffix = [applicationCopy dpanSuffix];
    v21 = dpanSuffix;
    if (primaryAccountNumberSuffix)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v14->_network, primaryAccountNumberSuffix];
    }

    else
    {
      if (!dpanSuffix)
      {
        v22 = v14->_network;
        goto LABEL_13;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v14->_network, dpanSuffix];
    }
    v22 = ;
LABEL_13:
    displayName = v14->_displayName;
    v14->_displayName = v22;

LABEL_14:
  }

  return v14;
}

- (PKPaymentMethod)initWithRemotePaymentInstrument:(id)instrument
{
  instrumentCopy = instrument;
  primaryPaymentApplication = [instrumentCopy primaryPaymentApplication];
  v6 = [(PKPaymentMethod *)self initWithRemotePaymentInstrument:instrumentCopy paymentApplication:primaryPaymentApplication];

  return v6;
}

- (PKPaymentMethod)initWithRemotePaymentInstrument:(id)instrument paymentApplication:(id)application
{
  applicationCopy = application;
  v8.receiver = self;
  v8.super_class = PKPaymentMethod;
  v6 = [(PKPaymentMethod *)&v8 init];
  if (v6)
  {
    v6->_type = [applicationCopy paymentType];
  }

  return v6;
}

- (PKPaymentMethod)initWithPeerPaymentQuote:(id)quote
{
  quoteCopy = quote;
  v9.receiver = self;
  v9.super_class = PKPaymentMethod;
  v5 = [(PKPaymentMethod *)&v9 init];
  if (v5)
  {
    identifier = [quoteCopy identifier];
    peerPaymentQuoteIdentifier = v5->_peerPaymentQuoteIdentifier;
    v5->_peerPaymentQuoteIdentifier = identifier;
  }

  return v5;
}

- (PKPaymentMethod)initWithBindToken:(id)token
{
  tokenCopy = token;
  v9.receiver = self;
  v9.super_class = PKPaymentMethod;
  v5 = [(PKPaymentMethod *)&v9 init];
  if (v5)
  {
    v6 = [tokenCopy copy];
    bindToken = v5->_bindToken;
    v5->_bindToken = v6;
  }

  return v5;
}

- (PKPaymentMethod)initWithBankAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = PKPaymentMethod;
  v6 = [(PKPaymentMethod *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bankAccount, account);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:{-[PKPaymentMethod type](self, "type")}];
  [coderCopy encodeObject:v6 forKey:@"type"];

  displayName = [(PKPaymentMethod *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  network = [(PKPaymentMethod *)self network];
  [coderCopy encodeObject:network forKey:@"network"];

  secureElementPass = [(PKPaymentMethod *)self secureElementPass];
  [coderCopy encodeObject:secureElementPass forKey:@"paymentPass"];

  remoteInstrument = [(PKPaymentMethod *)self remoteInstrument];
  [coderCopy encodeObject:remoteInstrument forKey:@"remoteInstrument"];

  peerPaymentQuoteIdentifier = [(PKPaymentMethod *)self peerPaymentQuoteIdentifier];
  [coderCopy encodeObject:peerPaymentQuoteIdentifier forKey:@"peerPaymentQuoteIdentifier"];

  billingAddress = [(PKPaymentMethod *)self billingAddress];
  [coderCopy encodeObject:billingAddress forKey:@"billingAddress"];

  bindToken = [(PKPaymentMethod *)self bindToken];
  [coderCopy encodeObject:bindToken forKey:@"installmentBindToken"];

  bankAccount = [(PKPaymentMethod *)self bankAccount];
  [coderCopy encodeObject:bankAccount forKey:@"bankAccount"];

  [coderCopy encodeBool:-[PKPaymentMethod usePeerPaymentBalance](self forKey:{"usePeerPaymentBalance"), @"usePeerPaymentBalance"}];
  subCredential = [(PKPaymentMethod *)self subCredential];
  [coderCopy encodeObject:subCredential forKey:@"subCredential"];
}

- (PKPaymentMethod)initWithCoder:(id)coder
{
  v21[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = PKPaymentMethod;
  v5 = [(PKPaymentMethod *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    -[PKPaymentMethod setType:](v5, "setType:", [v6 unsignedIntegerValue]);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    [(PKPaymentMethod *)v5 setDisplayName:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"network"];
    [(PKPaymentMethod *)v5 setNetwork:v8];

    v9 = MEMORY[0x1E695DFD8];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v11 = [v9 setWithArray:v10];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"paymentPass"];
    [(PKPaymentMethod *)v5 setSecureElementPass:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteInstrument"];
    [(PKPaymentMethod *)v5 setRemoteInstrument:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerPaymentQuoteIdentifier"];
    [(PKPaymentMethod *)v5 setPeerPaymentQuoteIdentifier:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"billingAddress"];
    [(PKPaymentMethod *)v5 setBillingAddress:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installmentBindToken"];
    [(PKPaymentMethod *)v5 setBindToken:v16];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bankAccount"];
    [(PKPaymentMethod *)v5 setBankAccount:v17];

    -[PKPaymentMethod setUsePeerPaymentBalance:](v5, "setUsePeerPaymentBalance:", [coderCopy decodeBoolForKey:@"usePeerPaymentBalance"]);
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subCredential"];
    [(PKPaymentMethod *)v5 setSubCredential:v18];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentMethod allocWithZone:](PKPaymentMethod init];
  v5->_type = self->_type;
  v6 = [(NSString *)self->_network copyWithZone:zone];
  network = v5->_network;
  v5->_network = v6;

  v8 = [(NSString *)self->_displayName copyWithZone:zone];
  displayName = v5->_displayName;
  v5->_displayName = v8;

  return v5;
}

- (id)dictionaryRepresentation
{
  v21[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  network = self->_network;
  if (network)
  {
    [v3 setObject:network forKeyedSubscript:@"network"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v4 setObject:displayName forKeyedSubscript:@"displayName"];
  }

  secureElementPass = self->_secureElementPass;
  if (secureElementPass)
  {
    primaryAccountIdentifier = [(PKSecureElementPass *)secureElementPass dictionaryWithValuesForKeys:&unk_1F23B4898];
    [v4 setObject:primaryAccountIdentifier forKeyedSubscript:@"paymentPass"];
LABEL_9:

    goto LABEL_10;
  }

  remoteInstrument = self->_remoteInstrument;
  if (remoteInstrument)
  {
    v20[0] = @"primaryAccountIdentifier";
    primaryAccountIdentifier = [(PKRemotePaymentInstrument *)remoteInstrument primaryAccountIdentifier];
    v21[0] = primaryAccountIdentifier;
    v20[1] = @"primaryAccountNumberSuffix";
    primaryAccountNumberSuffix = [(PKRemotePaymentInstrument *)self->_remoteInstrument primaryAccountNumberSuffix];
    v21[1] = primaryAccountNumberSuffix;
    v20[2] = @"deviceAccountIdentifier";
    primaryPaymentApplication = [(PKRemotePaymentInstrument *)self->_remoteInstrument primaryPaymentApplication];
    dpanIdentifier = [primaryPaymentApplication dpanIdentifier];
    v21[2] = dpanIdentifier;
    v20[3] = @"deviceAccountNumberSuffix";
    primaryPaymentApplication2 = [(PKRemotePaymentInstrument *)self->_remoteInstrument primaryPaymentApplication];
    dpanSuffix = [primaryPaymentApplication2 dpanSuffix];
    v21[3] = dpanSuffix;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];
    [v4 setObject:v15 forKeyedSubscript:@"paymentPass"];

    goto LABEL_9;
  }

  if (self->_peerPaymentQuoteIdentifier || self->_bankAccount)
  {
    [v4 setObject:? forKeyedSubscript:?];
  }

LABEL_10:
  type = self->_type;
  if (type > 2)
  {
    switch(type)
    {
      case 3:
        v17 = @"Prepaid";
        goto LABEL_23;
      case 4:
        v17 = @"Store";
        goto LABEL_23;
      case 5:
        v17 = @"eMoney";
        goto LABEL_23;
    }

LABEL_20:
    v17 = @"Unknown";
    goto LABEL_23;
  }

  if (!type)
  {
    goto LABEL_24;
  }

  if (type == 1)
  {
    v17 = @"Debit";
    goto LABEL_23;
  }

  if (type != 2)
  {
    goto LABEL_20;
  }

  v17 = @"Credit";
LABEL_23:
  [v4 setObject:v17 forKeyedSubscript:@"type"];
LABEL_24:
  v18 = [v4 copy];

  return v18;
}

@end