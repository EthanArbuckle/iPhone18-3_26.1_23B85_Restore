@interface PKAccountPaymentFundingDetailsBankAccount
- (BOOL)isEqual:(id)a3;
- (PKAccountPaymentFundingDetailsBankAccount)initWithCoder:(id)a3;
- (PKAccountPaymentFundingDetailsBankAccount)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)fundingDetailsUnencryptedDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAccountNumber:(id)a3;
- (void)setRoutingNumber:(id)a3;
@end

@implementation PKAccountPaymentFundingDetailsBankAccount

- (PKAccountPaymentFundingDetailsBankAccount)initWithDictionary:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKAccountPaymentFundingDetailsBankAccount;
  v5 = [(PKAccountPaymentFundingDetails *)&v21 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"accountId"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v8 = [v4 PKStringForKey:@"accountNumber"];
    v9 = [v8 pk_zString];
    accountNumber = v5->_accountNumber;
    v5->_accountNumber = v9;

    v11 = [v4 PKStringForKey:@"routingNumber"];
    v12 = [v11 pk_zString];
    routingNumber = v5->_routingNumber;
    v5->_routingNumber = v12;

    v14 = [v4 PKStringForKey:@"name"];
    name = v5->_name;
    v5->_name = v14;

    v16 = [v4 PKStringForKey:@"status"];
    v5->_status = PKAccountPaymentFundingSourceStatusFromString(v16);

    v17 = [v4 PKDictionaryForKey:@"verification"];
    if ([v17 count])
    {
      v18 = [[PKAccountFundingSourceVerification alloc] initWithDictionary:v17];
      verificationDetails = v5->_verificationDetails;
      v5->_verificationDetails = v18;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKAccountPaymentFundingDetailsBankAccount allocWithZone:](PKAccountPaymentFundingDetailsBankAccount init];
  v6 = [(NSString *)self->_accountIdentifier copyWithZone:a3];
  accountIdentifier = v5->_accountIdentifier;
  v5->_accountIdentifier = v6;

  v8 = [(NSString *)self->_accountNumber copyWithZone:a3];
  accountNumber = v5->_accountNumber;
  v5->_accountNumber = v8;

  v10 = [(NSString *)self->_routingNumber copyWithZone:a3];
  routingNumber = v5->_routingNumber;
  v5->_routingNumber = v10;

  v12 = [(NSString *)self->_name copyWithZone:a3];
  name = v5->_name;
  v5->_name = v12;

  v5->_status = self->_status;
  v14 = [(PKAccountFundingSourceVerification *)self->_verificationDetails copyWithZone:a3];
  verificationDetails = v5->_verificationDetails;
  v5->_verificationDetails = v14;

  return v5;
}

- (id)fundingDetailsUnencryptedDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_accountIdentifier forKeyedSubscript:@"accountId"];
  v4 = [(NSString *)self->_accountNumber pk_zString];
  [v3 setObject:v4 forKeyedSubscript:@"accountNumber"];

  v5 = [(NSString *)self->_routingNumber pk_zString];
  [v3 setObject:v5 forKeyedSubscript:@"routingNumber"];

  [v3 setObject:self->_name forKeyedSubscript:@"name"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_status];
  [v3 setObject:v6 forKeyedSubscript:@"status"];

  v7 = [v3 copy];

  return v7;
}

- (PKAccountPaymentFundingDetailsBankAccount)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKAccountPaymentFundingDetailsBankAccount;
  v5 = [(PKAccountPaymentFundingDetails *)&v19 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountId"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountNumber"];
    v9 = [v8 pk_zString];
    accountNumber = v5->_accountNumber;
    v5->_accountNumber = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"routingNumber"];
    v12 = [v11 pk_zString];
    routingNumber = v5->_routingNumber;
    v5->_routingNumber = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v14;

    v5->_status = [v4 decodeIntegerForKey:@"status"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"verification"];
    verificationDetails = v5->_verificationDetails;
    v5->_verificationDetails = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKAccountPaymentFundingDetailsBankAccount;
  v4 = a3;
  [(PKAccountPaymentFundingDetails *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_accountIdentifier forKey:{@"accountId", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_accountNumber forKey:@"accountNumber"];
  [v4 encodeObject:self->_routingNumber forKey:@"routingNumber"];
  [v4 encodeObject:self->_name forKey:@"name"];
  [v4 encodeInteger:self->_status forKey:@"status"];
  [v4 encodeObject:self->_verificationDetails forKey:@"verification"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  v15.receiver = self;
  v15.super_class = PKAccountPaymentFundingDetailsBankAccount;
  if (![(PKAccountPaymentFundingDetails *)&v15 isEqual:v4])
  {
    goto LABEL_17;
  }

  accountIdentifier = self->_accountIdentifier;
  v6 = v4[3];
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
  v9 = v4[8];
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
  v14 = v4[6];
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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_accountIdentifier];
  [v3 safelyAddObject:self->_name];
  v7.receiver = self;
  v7.super_class = PKAccountPaymentFundingDetailsBankAccount;
  v4 = [(PKAccountPaymentFundingDetailsBankAccount *)&v7 hash];
  v5 = PKCombinedHash(v4, v3);

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

- (void)setAccountNumber:(id)a3
{
  v4 = [a3 pk_zString];
  accountNumber = self->_accountNumber;
  self->_accountNumber = v4;
}

- (void)setRoutingNumber:(id)a3
{
  v4 = [a3 pk_zString];
  routingNumber = self->_routingNumber;
  self->_routingNumber = v4;
}

@end