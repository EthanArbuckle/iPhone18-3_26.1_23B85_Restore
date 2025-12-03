@interface PKAutoFillCardCredential
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFPANCardCredential:(id)credential;
- (NSString)expiration;
- (PKAutoFillCardCredential)initWithCardholderName:(id)name pan:(id)pan expiration:(id)expiration securityCode:(id)code billingAddress:(id)address;
- (PKAutoFillCardCredential)initWithCardholderName:(id)name pan:(id)pan expirationDate:(id)date securityCode:(id)code billingAddress:(id)address;
- (PKAutoFillCardCredential)initWithCoder:(id)coder;
- (PKAutoFillCardCredential)initWithVirtualCard:(id)card credential:(id)credential;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_copyInto:(id)into zone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAutoFillCardCredential

- (id)_init
{
  v6.receiver = self;
  v6.super_class = PKAutoFillCardCredential;
  v2 = [(PKAutoFillCardCredential *)&v6 init];
  if (v2)
  {
    v3 = PKExpirationDateFormatter();
    expirationDateFormatter = v2->_expirationDateFormatter;
    v2->_expirationDateFormatter = v3;
  }

  return v2;
}

- (PKAutoFillCardCredential)initWithCardholderName:(id)name pan:(id)pan expirationDate:(id)date securityCode:(id)code billingAddress:(id)address
{
  nameCopy = name;
  panCopy = pan;
  dateCopy = date;
  codeCopy = code;
  addressCopy = address;
  _init = [(PKAutoFillCardCredential *)self _init];
  if (_init)
  {
    v18 = [nameCopy copy];
    cardholderName = _init->_cardholderName;
    _init->_cardholderName = v18;

    pk_zString = [panCopy pk_zString];
    primaryAccountNumber = _init->_primaryAccountNumber;
    _init->_primaryAccountNumber = pk_zString;

    objc_storeStrong(&_init->_expirationDate, date);
    v22 = [codeCopy copy];
    pk_zString2 = [v22 pk_zString];
    securityCode = _init->_securityCode;
    _init->_securityCode = pk_zString2;

    v25 = [addressCopy copy];
    billingAddress = _init->_billingAddress;
    _init->_billingAddress = v25;
  }

  return _init;
}

- (PKAutoFillCardCredential)initWithCardholderName:(id)name pan:(id)pan expiration:(id)expiration securityCode:(id)code billingAddress:(id)address
{
  nameCopy = name;
  panCopy = pan;
  expirationCopy = expiration;
  codeCopy = code;
  addressCopy = address;
  _init = [(PKAutoFillCardCredential *)self _init];
  v18 = _init;
  if (_init)
  {
    v19 = [_init[1] dateFromString:expirationCopy];
    v18 = [(PKAutoFillCardCredential *)v18 initWithCardholderName:nameCopy pan:panCopy expirationDate:v19 securityCode:codeCopy billingAddress:addressCopy];
  }

  return v18;
}

- (PKAutoFillCardCredential)initWithVirtualCard:(id)card credential:(id)credential
{
  cardCopy = card;
  credentialCopy = credential;
  _init = [(PKAutoFillCardCredential *)self _init];
  if (!_init)
  {
    goto LABEL_16;
  }

  cardholderName = [cardCopy cardholderName];
  nameFromSafari = [cardholderName copy];
  v23 = nameFromSafari;
  if (nameFromSafari)
  {
    v22 = 0;
  }

  else
  {
    nameFromSafari = [cardCopy nameFromSafari];
    if (!nameFromSafari)
    {
      v22 = 1;
      v26 = PKMeContactFullName();
      v20 = 0;
      goto LABEL_7;
    }

    v22 = 0;
    v20 = nameFromSafari;
  }

  v26 = nameFromSafari;
LABEL_7:
  primaryAccountNumber = [credentialCopy primaryAccountNumber];
  pk_zString = [primaryAccountNumber pk_zString];
  expirationDateFormatter = _init->_expirationDateFormatter;
  expiration = [credentialCopy expiration];
  expiration2 = expiration;
  if (!expiration)
  {
    expiration2 = [cardCopy expiration];
  }

  v14 = [(NSDateFormatter *)expirationDateFormatter dateFromString:expiration2];
  cardSecurityCode = [credentialCopy cardSecurityCode];
  pk_zString2 = [cardSecurityCode pk_zString];
  v25 = cardCopy;
  billingAddress = [cardCopy billingAddress];
  v18 = [billingAddress copy];
  _init = [(PKAutoFillCardCredential *)_init initWithCardholderName:v26 pan:pk_zString expirationDate:v14 securityCode:pk_zString2 billingAddress:v18];

  if (!expiration)
  {
  }

  if (v22)
  {
  }

  cardCopy = v25;
  if (!v23)
  {
  }

LABEL_16:
  return _init;
}

- (PKAutoFillCardCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(PKAutoFillCardCredential *)self _init];
  if (_init)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cardholderName"];
    cardholderName = _init->_cardholderName;
    _init->_cardholderName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pan"];
    pk_zString = [v8 pk_zString];
    primaryAccountNumber = _init->_primaryAccountNumber;
    _init->_primaryAccountNumber = pk_zString;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = _init->_expirationDate;
    _init->_expirationDate = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"securityCode"];
    pk_zString2 = [v13 pk_zString];
    securityCode = _init->_securityCode;
    _init->_securityCode = pk_zString2;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"billingAddress"];
    billingAddress = _init->_billingAddress;
    _init->_billingAddress = v16;
  }

  return _init;
}

- (void)encodeWithCoder:(id)coder
{
  cardholderName = self->_cardholderName;
  coderCopy = coder;
  [coderCopy encodeObject:cardholderName forKey:@"cardholderName"];
  [coderCopy encodeObject:self->_primaryAccountNumber forKey:@"pan"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [coderCopy encodeObject:self->_securityCode forKey:@"securityCode"];
  [coderCopy encodeObject:self->_billingAddress forKey:@"billingAddress"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"cardholderName: '%@'; ", self->_cardholderName];
  v7 = PKFPANSuffixFromFPAN(self->_primaryAccountNumber);
  [v6 appendFormat:@"pan: '%@'; ", v7];

  if (self->_expirationDate)
  {
    v8 = @"Yes";
  }

  else
  {
    v8 = @"No";
  }

  [v6 appendFormat:@"hasExpiration: '%@'; ", v8];
  if (self->_securityCode)
  {
    v9 = @"Yes";
  }

  else
  {
    v9 = @"No";
  }

  [v6 appendFormat:@"hasSecurityCode: '%@'; ", v9];
  if (self->_billingAddress)
  {
    v10 = @"Yes";
  }

  else
  {
    v10 = @"No";
  }

  [v6 appendFormat:@"hasBillingAddress: '%@'; ", v10];
  [v6 appendFormat:@">"];
  v11 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v11;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_cardholderName)
  {
    [array addObject:?];
  }

  if (self->_primaryAccountNumber)
  {
    [v4 addObject:?];
  }

  if (self->_expirationDate)
  {
    [v4 addObject:?];
  }

  if (self->_securityCode)
  {
    [v4 addObject:?];
  }

  if (self->_billingAddress)
  {
    [v4 addObject:?];
  }

  v5 = PKCombinedHash(17, v4);

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAutoFillCardCredential *)self isEqualToFPANCardCredential:v5];
  }

  return v6;
}

- (BOOL)isEqualToFPANCardCredential:(id)credential
{
  credentialCopy = credential;
  cardholderName = self->_cardholderName;
  v6 = credentialCopy[3];
  if (cardholderName)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (cardholderName != v6)
    {
      goto LABEL_26;
    }
  }

  else if (([(NSString *)cardholderName isEqual:?]& 1) == 0)
  {
    goto LABEL_26;
  }

  primaryAccountNumber = self->_primaryAccountNumber;
  v9 = credentialCopy[4];
  if (primaryAccountNumber && v9)
  {
    if (([(NSString *)primaryAccountNumber isEqual:?]& 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (primaryAccountNumber != v9)
  {
    goto LABEL_26;
  }

  expirationDate = self->_expirationDate;
  v11 = credentialCopy[2];
  if (expirationDate && v11)
  {
    if (([(NSDate *)expirationDate isEqual:?]& 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (expirationDate != v11)
  {
    goto LABEL_26;
  }

  securityCode = self->_securityCode;
  v13 = credentialCopy[5];
  if (!securityCode || !v13)
  {
    if (securityCode == v13)
    {
      goto LABEL_22;
    }

LABEL_26:
    v16 = 0;
    goto LABEL_27;
  }

  if (([(NSString *)securityCode isEqual:?]& 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_22:
  billingAddress = self->_billingAddress;
  v15 = credentialCopy[6];
  if (billingAddress && v15)
  {
    v16 = [(CNContact *)billingAddress isEqual:?];
  }

  else
  {
    v16 = billingAddress == v15;
  }

LABEL_27:

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  _init = [+[PKAutoFillCardCredential allocWithZone:](PKAutoFillCardCredential _init];
  [(PKAutoFillCardCredential *)self _copyInto:_init zone:zone];
  return _init;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  _init = [(PKAutoFillCardCredential *)[PKMutableAutofillCardCredential alloc] _init];
  [(PKAutoFillCardCredential *)self _copyInto:_init zone:zone];
  return _init;
}

- (void)_copyInto:(id)into zone:(_NSZone *)zone
{
  cardholderName = self->_cardholderName;
  intoCopy = into;
  v8 = [(NSString *)cardholderName copyWithZone:zone];
  v9 = intoCopy[3];
  intoCopy[3] = v8;

  v10 = [(NSString *)self->_primaryAccountNumber copyWithZone:zone];
  pk_zString = [v10 pk_zString];
  v12 = intoCopy[4];
  intoCopy[4] = pk_zString;

  v13 = [(NSDate *)self->_expirationDate copyWithZone:zone];
  v14 = intoCopy[2];
  intoCopy[2] = v13;

  v15 = [(NSString *)self->_securityCode copyWithZone:zone];
  pk_zString2 = [v15 pk_zString];
  v17 = intoCopy[5];
  intoCopy[5] = pk_zString2;

  v18 = [(CNContact *)self->_billingAddress copyWithZone:zone];
  v19 = intoCopy[6];
  intoCopy[6] = v18;
}

- (NSString)expiration
{
  expirationDateFormatter = self->_expirationDateFormatter;
  expirationDate = [(PKAutoFillCardCredential *)self expirationDate];
  v4 = [(NSDateFormatter *)expirationDateFormatter stringFromDate:expirationDate];

  return v4;
}

@end