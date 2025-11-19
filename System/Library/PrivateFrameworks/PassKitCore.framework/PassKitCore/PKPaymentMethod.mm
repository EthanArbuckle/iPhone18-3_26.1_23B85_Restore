@interface PKPaymentMethod
+ (PKPaymentMethod)paymentMethodWithProtobuf:(id)a3;
- (PKPaymentMethod)initWithBankAccount:(id)a3;
- (PKPaymentMethod)initWithBindToken:(id)a3;
- (PKPaymentMethod)initWithCoder:(id)a3;
- (PKPaymentMethod)initWithPaymentPass:(id)a3 paymentApplication:(id)a4 subCredential:(id)a5 obfuscateNetworks:(BOOL)a6;
- (PKPaymentMethod)initWithPeerPaymentQuote:(id)a3;
- (PKPaymentMethod)initWithRemotePaymentInstrument:(id)a3;
- (PKPaymentMethod)initWithRemotePaymentInstrument:(id)a3 paymentApplication:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)protobuf;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentMethod

+ (PKPaymentMethod)paymentMethodWithProtobuf:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKPaymentMethod);
  v5 = [v3 network];
  [(PKPaymentMethod *)v4 setNetwork:v5];

  v6 = [v3 displayName];
  [(PKPaymentMethod *)v4 setDisplayName:v6];

  LODWORD(v6) = [v3 type];
  [(PKPaymentMethod *)v4 setType:v6];

  return v4;
}

- (id)protobuf
{
  v3 = objc_alloc_init(PKProtobufPaymentMethod);
  v4 = [(PKPaymentMethod *)self displayName];
  [(PKProtobufPaymentMethod *)v3 setDisplayName:v4];

  v5 = [(PKPaymentMethod *)self network];
  [(PKProtobufPaymentMethod *)v3 setNetwork:v5];

  [(PKProtobufPaymentMethod *)v3 setType:[(PKPaymentMethod *)self type]];

  return v3;
}

- (PKPaymentMethod)initWithPaymentPass:(id)a3 paymentApplication:(id)a4 subCredential:(id)a5 obfuscateNetworks:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v25.receiver = self;
  v25.super_class = PKPaymentMethod;
  v14 = [(PKPaymentMethod *)&v25 init];
  if (v14)
  {
    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = [v11 devicePrimaryInAppPaymentApplication];
    }

    v16 = v15;
    v14->_type = [v15 paymentType];
    if (v13)
    {
      objc_storeStrong(&v14->_subCredential, a5);
      objc_storeStrong(&v14->_secureElementPass, a3);
    }

    if (a6)
    {
      goto LABEL_14;
    }

    v17 = PKPaymentNetworkNameForPaymentCredentialType([v16 paymentNetworkIdentifier]);
    network = v14->_network;
    v14->_network = v17;

    v19 = [v11 primaryAccountNumberSuffix];
    v20 = [v12 dpanSuffix];
    v21 = v20;
    if (v19)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v14->_network, v19];
    }

    else
    {
      if (!v20)
      {
        v22 = v14->_network;
        goto LABEL_13;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v14->_network, v20];
    }
    v22 = ;
LABEL_13:
    displayName = v14->_displayName;
    v14->_displayName = v22;

LABEL_14:
  }

  return v14;
}

- (PKPaymentMethod)initWithRemotePaymentInstrument:(id)a3
{
  v4 = a3;
  v5 = [v4 primaryPaymentApplication];
  v6 = [(PKPaymentMethod *)self initWithRemotePaymentInstrument:v4 paymentApplication:v5];

  return v6;
}

- (PKPaymentMethod)initWithRemotePaymentInstrument:(id)a3 paymentApplication:(id)a4
{
  v5 = a4;
  v8.receiver = self;
  v8.super_class = PKPaymentMethod;
  v6 = [(PKPaymentMethod *)&v8 init];
  if (v6)
  {
    v6->_type = [v5 paymentType];
  }

  return v6;
}

- (PKPaymentMethod)initWithPeerPaymentQuote:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentMethod;
  v5 = [(PKPaymentMethod *)&v9 init];
  if (v5)
  {
    v6 = [v4 identifier];
    peerPaymentQuoteIdentifier = v5->_peerPaymentQuoteIdentifier;
    v5->_peerPaymentQuoteIdentifier = v6;
  }

  return v5;
}

- (PKPaymentMethod)initWithBindToken:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentMethod;
  v5 = [(PKPaymentMethod *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    bindToken = v5->_bindToken;
    v5->_bindToken = v6;
  }

  return v5;
}

- (PKPaymentMethod)initWithBankAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentMethod;
  v6 = [(PKPaymentMethod *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bankAccount, a3);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{-[PKPaymentMethod type](self, "type")}];
  [v5 encodeObject:v6 forKey:@"type"];

  v7 = [(PKPaymentMethod *)self displayName];
  [v5 encodeObject:v7 forKey:@"displayName"];

  v8 = [(PKPaymentMethod *)self network];
  [v5 encodeObject:v8 forKey:@"network"];

  v9 = [(PKPaymentMethod *)self secureElementPass];
  [v5 encodeObject:v9 forKey:@"paymentPass"];

  v10 = [(PKPaymentMethod *)self remoteInstrument];
  [v5 encodeObject:v10 forKey:@"remoteInstrument"];

  v11 = [(PKPaymentMethod *)self peerPaymentQuoteIdentifier];
  [v5 encodeObject:v11 forKey:@"peerPaymentQuoteIdentifier"];

  v12 = [(PKPaymentMethod *)self billingAddress];
  [v5 encodeObject:v12 forKey:@"billingAddress"];

  v13 = [(PKPaymentMethod *)self bindToken];
  [v5 encodeObject:v13 forKey:@"installmentBindToken"];

  v14 = [(PKPaymentMethod *)self bankAccount];
  [v5 encodeObject:v14 forKey:@"bankAccount"];

  [v5 encodeBool:-[PKPaymentMethod usePeerPaymentBalance](self forKey:{"usePeerPaymentBalance"), @"usePeerPaymentBalance"}];
  v15 = [(PKPaymentMethod *)self subCredential];
  [v5 encodeObject:v15 forKey:@"subCredential"];
}

- (PKPaymentMethod)initWithCoder:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PKPaymentMethod;
  v5 = [(PKPaymentMethod *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    -[PKPaymentMethod setType:](v5, "setType:", [v6 unsignedIntegerValue]);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    [(PKPaymentMethod *)v5 setDisplayName:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"network"];
    [(PKPaymentMethod *)v5 setNetwork:v8];

    v9 = MEMORY[0x1E695DFD8];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v11 = [v9 setWithArray:v10];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"paymentPass"];
    [(PKPaymentMethod *)v5 setSecureElementPass:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteInstrument"];
    [(PKPaymentMethod *)v5 setRemoteInstrument:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerPaymentQuoteIdentifier"];
    [(PKPaymentMethod *)v5 setPeerPaymentQuoteIdentifier:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"billingAddress"];
    [(PKPaymentMethod *)v5 setBillingAddress:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installmentBindToken"];
    [(PKPaymentMethod *)v5 setBindToken:v16];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bankAccount"];
    [(PKPaymentMethod *)v5 setBankAccount:v17];

    -[PKPaymentMethod setUsePeerPaymentBalance:](v5, "setUsePeerPaymentBalance:", [v4 decodeBoolForKey:@"usePeerPaymentBalance"]);
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subCredential"];
    [(PKPaymentMethod *)v5 setSubCredential:v18];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPaymentMethod allocWithZone:](PKPaymentMethod init];
  v5->_type = self->_type;
  v6 = [(NSString *)self->_network copyWithZone:a3];
  network = v5->_network;
  v5->_network = v6;

  v8 = [(NSString *)self->_displayName copyWithZone:a3];
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
    v8 = [(PKSecureElementPass *)secureElementPass dictionaryWithValuesForKeys:&unk_1F23B4898];
    [v4 setObject:v8 forKeyedSubscript:@"paymentPass"];
LABEL_9:

    goto LABEL_10;
  }

  remoteInstrument = self->_remoteInstrument;
  if (remoteInstrument)
  {
    v20[0] = @"primaryAccountIdentifier";
    v8 = [(PKRemotePaymentInstrument *)remoteInstrument primaryAccountIdentifier];
    v21[0] = v8;
    v20[1] = @"primaryAccountNumberSuffix";
    v10 = [(PKRemotePaymentInstrument *)self->_remoteInstrument primaryAccountNumberSuffix];
    v21[1] = v10;
    v20[2] = @"deviceAccountIdentifier";
    v11 = [(PKRemotePaymentInstrument *)self->_remoteInstrument primaryPaymentApplication];
    v12 = [v11 dpanIdentifier];
    v21[2] = v12;
    v20[3] = @"deviceAccountNumberSuffix";
    v13 = [(PKRemotePaymentInstrument *)self->_remoteInstrument primaryPaymentApplication];
    v14 = [v13 dpanSuffix];
    v21[3] = v14;
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