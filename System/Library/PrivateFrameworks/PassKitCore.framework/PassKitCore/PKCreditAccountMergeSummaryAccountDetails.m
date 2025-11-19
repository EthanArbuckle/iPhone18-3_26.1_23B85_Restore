@interface PKCreditAccountMergeSummaryAccountDetails
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCreditAccountMergeSummaryAccountDetails:(id)a3;
- (PKCreditAccountMergeSummaryAccountDetails)initWithCoder:(id)a3;
- (PKCreditAccountMergeSummaryAccountDetails)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCreditAccountMergeSummaryAccountDetails

- (PKCreditAccountMergeSummaryAccountDetails)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKCreditAccountMergeSummaryAccountDetails;
  v5 = [(PKCreditAccountMergeSummaryAccountDetails *)&v15 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v8 = [v4 PKStringForKey:@"ownerAltDSID"];
    ownerAltDSID = v5->_ownerAltDSID;
    v5->_ownerAltDSID = v8;

    v10 = [v4 PKDecimalNumberFromStringForKey:@"statementBalance"];
    statementBalance = v5->_statementBalance;
    v5->_statementBalance = v10;

    v12 = [v4 PKDecimalNumberFromStringForKey:@"currentBalance"];
    currentBalance = v5->_currentBalance;
    v5->_currentBalance = v12;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKCreditAccountMergeSummaryAccountDetails *)self isEqualToCreditAccountMergeSummaryAccountDetails:v5];
  }

  return v6;
}

- (BOOL)isEqualToCreditAccountMergeSummaryAccountDetails:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_14;
  }

  v6 = v4[1];
  v7 = self->_accountIdentifier;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v7 || !v8)
    {
      goto LABEL_13;
    }

    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_14;
    }
  }

  v11 = v5[2];
  v7 = self->_ownerAltDSID;
  v12 = v11;
  v9 = v12;
  if (v7 == v12)
  {

    goto LABEL_17;
  }

  if (!v7 || !v12)
  {
LABEL_13:

    goto LABEL_14;
  }

  v13 = [(NSString *)v7 isEqualToString:v12];

  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_17:
  statementBalance = self->_statementBalance;
  v17 = v5[3];
  if (statementBalance && v17)
  {
    if (([(NSDecimalNumber *)statementBalance isEqual:?]& 1) != 0)
    {
      goto LABEL_22;
    }

LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  if (statementBalance != v17)
  {
    goto LABEL_14;
  }

LABEL_22:
  currentBalance = self->_currentBalance;
  v19 = v5[4];
  if (currentBalance && v19)
  {
    v14 = [(NSDecimalNumber *)currentBalance isEqual:?];
  }

  else
  {
    v14 = currentBalance == v19;
  }

LABEL_15:

  return v14;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_accountIdentifier];
  [v3 safelyAddObject:self->_ownerAltDSID];
  [v3 safelyAddObject:self->_statementBalance];
  [v3 safelyAddObject:self->_currentBalance];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"accountIdentifier: '%@'; ", self->_accountIdentifier];
  [v3 appendFormat:@"ownerAltDSID: '%@'; ", self->_ownerAltDSID];
  v4 = [(NSDecimalNumber *)self->_statementBalance stringValue];
  [v3 appendFormat:@"statementBalance: '%@'; ", v4];

  v5 = [(NSDecimalNumber *)self->_currentBalance stringValue];
  [v3 appendFormat:@"currentBalance: '%@'; ", v5];

  [v3 appendFormat:@">"];
  v6 = [v3 copy];

  return v6;
}

- (PKCreditAccountMergeSummaryAccountDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKCreditAccountMergeSummaryAccountDetails;
  v5 = [(PKCreditAccountMergeSummaryAccountDetails *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ownerAltDSID"];
    ownerAltDSID = v5->_ownerAltDSID;
    v5->_ownerAltDSID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statementBalance"];
    statementBalance = v5->_statementBalance;
    v5->_statementBalance = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentBalance"];
    currentBalance = v5->_currentBalance;
    v5->_currentBalance = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  accountIdentifier = self->_accountIdentifier;
  v5 = a3;
  [v5 encodeObject:accountIdentifier forKey:@"accountIdentifier"];
  [v5 encodeObject:self->_ownerAltDSID forKey:@"ownerAltDSID"];
  [v5 encodeObject:self->_statementBalance forKey:@"statementBalance"];
  [v5 encodeObject:self->_currentBalance forKey:@"currentBalance"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_accountIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_ownerAltDSID copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSDecimalNumber *)self->_statementBalance copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSDecimalNumber *)self->_currentBalance copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

@end