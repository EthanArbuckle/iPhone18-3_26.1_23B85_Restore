@interface PKAccountPaymentFundingDetailsBankAccount
- (BOOL)isEqual:(id)equal;
- (PKAccountPaymentFundingDetailsBankAccount)initWithCoder:(id)coder;
- (PKAccountPaymentFundingDetailsBankAccount)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)fundingDetailsUnencryptedDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAccountNumber:(id)number;
- (void)setRoutingNumber:(id)number;
@end

@implementation PKAccountPaymentFundingDetailsBankAccount

- (PKAccountPaymentFundingDetailsBankAccount)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = PKAccountPaymentFundingDetailsBankAccount;
  v5 = [(PKAccountPaymentFundingDetails *)&v21 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"accountId"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v8 = [dictionaryCopy PKStringForKey:@"accountNumber"];
    pk_zString = [v8 pk_zString];
    accountNumber = v5->_accountNumber;
    v5->_accountNumber = pk_zString;

    v11 = [dictionaryCopy PKStringForKey:@"routingNumber"];
    pk_zString2 = [v11 pk_zString];
    routingNumber = v5->_routingNumber;
    v5->_routingNumber = pk_zString2;

    v14 = [dictionaryCopy PKStringForKey:@"name"];
    name = v5->_name;
    v5->_name = v14;

    v16 = [dictionaryCopy PKStringForKey:@"status"];
    v5->_status = PKAccountPaymentFundingSourceStatusFromString(v16);

    v17 = [dictionaryCopy PKDictionaryForKey:@"verification"];
    if ([v17 count])
    {
      v18 = [[PKAccountFundingSourceVerification alloc] initWithDictionary:v17];
      verificationDetails = v5->_verificationDetails;
      v5->_verificationDetails = v18;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKAccountPaymentFundingDetailsBankAccount allocWithZone:](PKAccountPaymentFundingDetailsBankAccount init];
  v6 = [(NSString *)self->_accountIdentifier copyWithZone:zone];
  accountIdentifier = v5->_accountIdentifier;
  v5->_accountIdentifier = v6;

  v8 = [(NSString *)self->_accountNumber copyWithZone:zone];
  accountNumber = v5->_accountNumber;
  v5->_accountNumber = v8;

  v10 = [(NSString *)self->_routingNumber copyWithZone:zone];
  routingNumber = v5->_routingNumber;
  v5->_routingNumber = v10;

  v12 = [(NSString *)self->_name copyWithZone:zone];
  name = v5->_name;
  v5->_name = v12;

  v5->_status = self->_status;
  v14 = [(PKAccountFundingSourceVerification *)self->_verificationDetails copyWithZone:zone];
  verificationDetails = v5->_verificationDetails;
  v5->_verificationDetails = v14;

  return v5;
}

- (id)fundingDetailsUnencryptedDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_accountIdentifier forKeyedSubscript:@"accountId"];
  pk_zString = [(NSString *)self->_accountNumber pk_zString];
  [dictionary setObject:pk_zString forKeyedSubscript:@"accountNumber"];

  pk_zString2 = [(NSString *)self->_routingNumber pk_zString];
  [dictionary setObject:pk_zString2 forKeyedSubscript:@"routingNumber"];

  [dictionary setObject:self->_name forKeyedSubscript:@"name"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_status];
  [dictionary setObject:v6 forKeyedSubscript:@"status"];

  v7 = [dictionary copy];

  return v7;
}

- (PKAccountPaymentFundingDetailsBankAccount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PKAccountPaymentFundingDetailsBankAccount;
  v5 = [(PKAccountPaymentFundingDetails *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountId"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountNumber"];
    pk_zString = [v8 pk_zString];
    accountNumber = v5->_accountNumber;
    v5->_accountNumber = pk_zString;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"routingNumber"];
    pk_zString2 = [v11 pk_zString];
    routingNumber = v5->_routingNumber;
    v5->_routingNumber = pk_zString2;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v14;

    v5->_status = [coderCopy decodeIntegerForKey:@"status"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"verification"];
    verificationDetails = v5->_verificationDetails;
    v5->_verificationDetails = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKAccountPaymentFundingDetailsBankAccount;
  coderCopy = coder;
  [(PKAccountPaymentFundingDetails *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_accountIdentifier forKey:{@"accountId", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_accountNumber forKey:@"accountNumber"];
  [coderCopy encodeObject:self->_routingNumber forKey:@"routingNumber"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeInteger:self->_status forKey:@"status"];
  [coderCopy encodeObject:self->_verificationDetails forKey:@"verification"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  v15.receiver = self;
  v15.super_class = PKAccountPaymentFundingDetailsBankAccount;
  if (![(PKAccountPaymentFundingDetails *)&v15 isEqual:equalCopy])
  {
    goto LABEL_17;
  }

  accountIdentifier = self->_accountIdentifier;
  v6 = equalCopy[3];
  if (accountIdentifier)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (accountIdentifier != v6)
    {
      goto LABEL_17;
    }
  }

  else if (([(NSString *)accountIdentifier isEqual:?]& 1) == 0)
  {
    goto LABEL_17;
  }

  verificationDetails = self->_verificationDetails;
  v9 = equalCopy[8];
  if (verificationDetails)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    if ([(PKAccountFundingSourceVerification *)verificationDetails isEqual:?])
    {
      goto LABEL_20;
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  if (verificationDetails != v9)
  {
    goto LABEL_17;
  }

LABEL_20:
  name = self->_name;
  v14 = equalCopy[6];
  if (name && v14)
  {
    v11 = [(NSString *)name isEqual:?];
  }

  else
  {
    v11 = name == v14;
  }

LABEL_18:

  return v11;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_accountIdentifier];
  [array safelyAddObject:self->_name];
  v7.receiver = self;
  v7.super_class = PKAccountPaymentFundingDetailsBankAccount;
  v4 = [(PKAccountPaymentFundingDetailsBankAccount *)&v7 hash];
  v5 = PKCombinedHash(v4, array);

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"accountIdentifier: '%@'; ", self->_accountIdentifier];
  if (self->_accountNumber)
  {
    [v3 appendFormat:@"accountNumber: %@; ", @"<redacted>"];
  }

  if (self->_routingNumber)
  {
    [v3 appendFormat:@"routingNumber: %@; ", @"<redacted>"];
  }

  [v3 appendFormat:@"name: '%@'; ", self->_name];
  status = self->_status;
  if (status > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E79DEAA8[status];
  }

  [v3 appendFormat:@"status: '%@'; ", v5];
  [v3 appendFormat:@"verificationDetails: %@; ", self->_verificationDetails];
  [v3 appendFormat:@">"];

  return v3;
}

- (void)setAccountNumber:(id)number
{
  pk_zString = [number pk_zString];
  accountNumber = self->_accountNumber;
  self->_accountNumber = pk_zString;
}

- (void)setRoutingNumber:(id)number
{
  pk_zString = [number pk_zString];
  routingNumber = self->_routingNumber;
  self->_routingNumber = pk_zString;
}

@end