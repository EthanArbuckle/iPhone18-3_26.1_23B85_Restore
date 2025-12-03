@interface PKFPANCredential
- (BOOL)_isEqualToCredential:(id)credential;
- (BOOL)canCheckEligibility;
- (NSString)expiration;
- (PKFPANCredential)initWithCoder:(id)coder;
- (PKFPANCredential)initWithFPANCardDescriptor:(id)descriptor credential:(id)credential;
- (PKFPANCredential)initWithSafariDictionary:(id)dictionary;
- (id)detailDescriptionWithEnvironment:(unint64_t)environment;
- (id)longDescription;
- (id)sanitizedPrimaryAccountNumber;
- (int64_t)credentialType;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKFPANCredential

- (PKFPANCredential)initWithSafariDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = _MergedGlobals_32[0]();
  v6 = [dictionaryCopy objectForKeyedSubscript:v5];
  pk_stringIfNotEmpty = [v6 pk_stringIfNotEmpty];
  pk_zString = [pk_stringIfNotEmpty pk_zString];

  if (pk_zString)
  {
    v32.receiver = self;
    v32.super_class = PKFPANCredential;
    v9 = [(PKPaymentCredential *)&v32 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_cardNumber, pk_zString);
      v11 = off_1EE7B03C0[0]();
      v12 = [dictionaryCopy objectForKeyedSubscript:v11];
      pk_stringIfNotEmpty2 = [v12 pk_stringIfNotEmpty];
      pk_zString2 = [pk_stringIfNotEmpty2 pk_zString];
      securityCode = v10->_securityCode;
      v10->_securityCode = pk_zString2;

      v16 = off_1EE7B03C8[0]();
      v17 = [dictionaryCopy objectForKeyedSubscript:v16];
      pk_stringIfNotEmpty3 = [v17 pk_stringIfNotEmpty];
      pk_zString3 = [pk_stringIfNotEmpty3 pk_zString];
      cardholderName = v10->_cardholderName;
      v10->_cardholderName = pk_zString3;

      v21 = off_1EE7B03D0[0]();
      v22 = [dictionaryCopy objectForKeyedSubscript:v21];
      pk_stringIfNotEmpty4 = [v22 pk_stringIfNotEmpty];
      pk_zString4 = [pk_stringIfNotEmpty4 pk_zString];
      [(PKPaymentCredential *)v10 setLongDescription:pk_zString4];

      [(PKPaymentCredential *)v10 setCardType:1];
      [(PKPaymentCredential *)v10 setDeletable:1];
      v25 = PKExpirationDateFormatter();
      v26 = off_1EE7B03D8[0]();
      v27 = [dictionaryCopy objectForKeyedSubscript:v26];

      if (v27)
      {
        [(PKFPANCredential *)v10 setExpirationDate:v27];
        v28 = [v25 stringFromDate:v27];
        pk_zString5 = [v28 pk_zString];
        [(PKPaymentCredential *)v10 setExpiration:pk_zString5];
      }
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKFPANCredential)initWithFPANCardDescriptor:(id)descriptor credential:(id)credential
{
  descriptorCopy = descriptor;
  credentialCopy = credential;
  v9 = credentialCopy;
  selfCopy = 0;
  if (descriptorCopy && credentialCopy)
  {
    v21.receiver = self;
    v21.super_class = PKFPANCredential;
    v11 = [(PKPaymentCredential *)&v21 init];
    if (v11)
    {
      primaryAccountNumber = [v9 primaryAccountNumber];
      cardNumber = v11->_cardNumber;
      v11->_cardNumber = primaryAccountNumber;

      securityCode = [v9 securityCode];
      securityCode = v11->_securityCode;
      v11->_securityCode = securityCode;

      cardholderName = [v9 cardholderName];
      cardholderName = v11->_cardholderName;
      v11->_cardholderName = cardholderName;

      objc_storeStrong(&v11->_descriptor, descriptor);
      objc_storeStrong(&v11->_credential, credential);
      cardNickname = [descriptorCopy cardNickname];
      [(PKPaymentCredential *)v11 setLongDescription:cardNickname];

      [(PKPaymentCredential *)v11 setCardType:1];
      expirationDate = [v9 expirationDate];
      [(PKFPANCredential *)v11 setExpirationDate:expirationDate];

      [(PKPaymentCredential *)v11 setDeletable:1];
    }

    self = v11;
    selfCopy = self;
  }

  return selfCopy;
}

- (NSString)expiration
{
  v3 = PKExpirationDateFormatter();
  v4 = [v3 stringFromDate:self->_expirationDate];

  return v4;
}

- (id)sanitizedPrimaryAccountNumber
{
  state = [(PKPaymentCredential *)self state];
  eligibilityResponse = [state eligibilityResponse];
  sanitizedPrimaryAccountNumber = [eligibilityResponse sanitizedPrimaryAccountNumber];

  if (!sanitizedPrimaryAccountNumber)
  {
    sanitizedPrimaryAccountNumber = PKFPANSuffixFromFPAN(self->_cardNumber);
  }

  return sanitizedPrimaryAccountNumber;
}

- (int64_t)credentialType
{
  state = [(PKPaymentCredential *)self state];
  eligibilityResponse = [state eligibilityResponse];
  cardType = [eligibilityResponse cardType];
  if (!cardType)
  {
    v7.receiver = self;
    v7.super_class = PKFPANCredential;
    cardType = [(PKPaymentCredential *)&v7 credentialType];
  }

  return cardType;
}

- (id)longDescription
{
  v8.receiver = self;
  v8.super_class = PKFPANCredential;
  longDescription = [(PKPaymentCredential *)&v8 longDescription];
  v4 = longDescription;
  if (longDescription)
  {
    v5 = longDescription;
  }

  else
  {
    v5 = PKDisplayablePaymentNetworkNameForPaymentCredentialType([(PKFPANCredential *)self credentialType]);
  }

  v6 = v5;

  return v6;
}

- (id)detailDescriptionWithEnvironment:(unint64_t)environment
{
  sanitizedPrimaryAccountNumber = [(PKFPANCredential *)self sanitizedPrimaryAccountNumber];
  v4 = PKMaskedPaymentPAN(sanitizedPrimaryAccountNumber);
  v5 = PKLocalizedVirtualCardString(&cfstr_ProvisioningDe_0.isa, &stru_1F2281668.isa, v4);

  return v5;
}

- (BOOL)canCheckEligibility
{
  if (![(NSString *)self->_cardNumber length])
  {
    return 0;
  }

  expirationDate = [(PKFPANCredential *)self expirationDate];
  if (expirationDate)
  {
    date = [MEMORY[0x1E695DF00] date];
    v5 = [date compare:expirationDate] == -1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (PKFPANCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PKFPANCredential;
  v5 = [(PKPaymentCredential *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cardNumber"];
    cardNumber = v5->_cardNumber;
    v5->_cardNumber = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"securityCode"];
    securityCode = v5->_securityCode;
    v5->_securityCode = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cardholderName"];
    cardholderName = v5->_cardholderName;
    v5->_cardholderName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cardDescriptor"];
    descriptor = v5->_descriptor;
    v5->_descriptor = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cardCredential"];
    credential = v5->_credential;
    v5->_credential = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKFPANCredential;
  coderCopy = coder;
  [(PKPaymentCredential *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_cardNumber forKey:{@"cardNumber", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_securityCode forKey:@"securityCode"];
  [coderCopy encodeObject:self->_cardholderName forKey:@"cardholderName"];
  [coderCopy encodeObject:self->_descriptor forKey:@"cardDescriptor"];
  [coderCopy encodeObject:self->_credential forKey:@"cardCredential"];
}

- (BOOL)_isEqualToCredential:(id)credential
{
  credentialCopy = credential;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    cardNumber = self->_cardNumber;
    cardNumber = [credentialCopy cardNumber];
    v7 = cardNumber;
    v8 = cardNumber;
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