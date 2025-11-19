@interface PKFPANCredential
- (BOOL)_isEqualToCredential:(id)a3;
- (BOOL)canCheckEligibility;
- (NSString)expiration;
- (PKFPANCredential)initWithCoder:(id)a3;
- (PKFPANCredential)initWithFPANCardDescriptor:(id)a3 credential:(id)a4;
- (PKFPANCredential)initWithSafariDictionary:(id)a3;
- (id)detailDescriptionWithEnvironment:(unint64_t)a3;
- (id)longDescription;
- (id)sanitizedPrimaryAccountNumber;
- (int64_t)credentialType;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKFPANCredential

- (PKFPANCredential)initWithSafariDictionary:(id)a3
{
  v4 = a3;
  v5 = _MergedGlobals_32[0]();
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 pk_stringIfNotEmpty];
  v8 = [v7 pk_zString];

  if (v8)
  {
    v32.receiver = self;
    v32.super_class = PKFPANCredential;
    v9 = [(PKPaymentCredential *)&v32 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_cardNumber, v8);
      v11 = off_1EE7B03C0[0]();
      v12 = [v4 objectForKeyedSubscript:v11];
      v13 = [v12 pk_stringIfNotEmpty];
      v14 = [v13 pk_zString];
      securityCode = v10->_securityCode;
      v10->_securityCode = v14;

      v16 = off_1EE7B03C8[0]();
      v17 = [v4 objectForKeyedSubscript:v16];
      v18 = [v17 pk_stringIfNotEmpty];
      v19 = [v18 pk_zString];
      cardholderName = v10->_cardholderName;
      v10->_cardholderName = v19;

      v21 = off_1EE7B03D0[0]();
      v22 = [v4 objectForKeyedSubscript:v21];
      v23 = [v22 pk_stringIfNotEmpty];
      v24 = [v23 pk_zString];
      [(PKPaymentCredential *)v10 setLongDescription:v24];

      [(PKPaymentCredential *)v10 setCardType:1];
      [(PKPaymentCredential *)v10 setDeletable:1];
      v25 = PKExpirationDateFormatter();
      v26 = off_1EE7B03D8[0]();
      v27 = [v4 objectForKeyedSubscript:v26];

      if (v27)
      {
        [(PKFPANCredential *)v10 setExpirationDate:v27];
        v28 = [v25 stringFromDate:v27];
        v29 = [v28 pk_zString];
        [(PKPaymentCredential *)v10 setExpiration:v29];
      }
    }

    self = v10;
    v30 = self;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (PKFPANCredential)initWithFPANCardDescriptor:(id)a3 credential:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    v21.receiver = self;
    v21.super_class = PKFPANCredential;
    v11 = [(PKPaymentCredential *)&v21 init];
    if (v11)
    {
      v12 = [v9 primaryAccountNumber];
      cardNumber = v11->_cardNumber;
      v11->_cardNumber = v12;

      v14 = [v9 securityCode];
      securityCode = v11->_securityCode;
      v11->_securityCode = v14;

      v16 = [v9 cardholderName];
      cardholderName = v11->_cardholderName;
      v11->_cardholderName = v16;

      objc_storeStrong(&v11->_descriptor, a3);
      objc_storeStrong(&v11->_credential, a4);
      v18 = [v7 cardNickname];
      [(PKPaymentCredential *)v11 setLongDescription:v18];

      [(PKPaymentCredential *)v11 setCardType:1];
      v19 = [v9 expirationDate];
      [(PKFPANCredential *)v11 setExpirationDate:v19];

      [(PKPaymentCredential *)v11 setDeletable:1];
    }

    self = v11;
    v10 = self;
  }

  return v10;
}

- (NSString)expiration
{
  v3 = PKExpirationDateFormatter();
  v4 = [v3 stringFromDate:self->_expirationDate];

  return v4;
}

- (id)sanitizedPrimaryAccountNumber
{
  v3 = [(PKPaymentCredential *)self state];
  v4 = [v3 eligibilityResponse];
  v5 = [v4 sanitizedPrimaryAccountNumber];

  if (!v5)
  {
    v5 = PKFPANSuffixFromFPAN(self->_cardNumber);
  }

  return v5;
}

- (int64_t)credentialType
{
  v3 = [(PKPaymentCredential *)self state];
  v4 = [v3 eligibilityResponse];
  v5 = [v4 cardType];
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = PKFPANCredential;
    v5 = [(PKPaymentCredential *)&v7 credentialType];
  }

  return v5;
}

- (id)longDescription
{
  v8.receiver = self;
  v8.super_class = PKFPANCredential;
  v3 = [(PKPaymentCredential *)&v8 longDescription];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = PKDisplayablePaymentNetworkNameForPaymentCredentialType([(PKFPANCredential *)self credentialType]);
  }

  v6 = v5;

  return v6;
}

- (id)detailDescriptionWithEnvironment:(unint64_t)a3
{
  v3 = [(PKFPANCredential *)self sanitizedPrimaryAccountNumber];
  v4 = PKMaskedPaymentPAN(v3);
  v5 = PKLocalizedVirtualCardString(&cfstr_ProvisioningDe_0.isa, &stru_1F2281668.isa, v4);

  return v5;
}

- (BOOL)canCheckEligibility
{
  if (![(NSString *)self->_cardNumber length])
  {
    return 0;
  }

  v3 = [(PKFPANCredential *)self expirationDate];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    v5 = [v4 compare:v3] == -1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (PKFPANCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PKFPANCredential;
  v5 = [(PKPaymentCredential *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cardNumber"];
    cardNumber = v5->_cardNumber;
    v5->_cardNumber = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"securityCode"];
    securityCode = v5->_securityCode;
    v5->_securityCode = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cardholderName"];
    cardholderName = v5->_cardholderName;
    v5->_cardholderName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cardDescriptor"];
    descriptor = v5->_descriptor;
    v5->_descriptor = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cardCredential"];
    credential = v5->_credential;
    v5->_credential = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKFPANCredential;
  v4 = a3;
  [(PKPaymentCredential *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_cardNumber forKey:{@"cardNumber", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_securityCode forKey:@"securityCode"];
  [v4 encodeObject:self->_cardholderName forKey:@"cardholderName"];
  [v4 encodeObject:self->_descriptor forKey:@"cardDescriptor"];
  [v4 encodeObject:self->_credential forKey:@"cardCredential"];
}

- (BOOL)_isEqualToCredential:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    cardNumber = self->_cardNumber;
    v6 = [v4 cardNumber];
    v7 = cardNumber;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
      v11 = 1;
    }

    else
    {
      if (v7)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        v11 = 0;
      }

      else
      {
        v11 = [(NSString *)v7 isEqualToString:v8];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end