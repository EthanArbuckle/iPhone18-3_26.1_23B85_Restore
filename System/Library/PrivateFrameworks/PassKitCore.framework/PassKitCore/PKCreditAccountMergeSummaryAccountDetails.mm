@interface PKCreditAccountMergeSummaryAccountDetails
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCreditAccountMergeSummaryAccountDetails:(id)details;
- (PKCreditAccountMergeSummaryAccountDetails)initWithCoder:(id)coder;
- (PKCreditAccountMergeSummaryAccountDetails)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCreditAccountMergeSummaryAccountDetails

- (PKCreditAccountMergeSummaryAccountDetails)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = PKCreditAccountMergeSummaryAccountDetails;
  v5 = [(PKCreditAccountMergeSummaryAccountDetails *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v8 = [dictionaryCopy PKStringForKey:@"ownerAltDSID"];
    ownerAltDSID = v5->_ownerAltDSID;
    v5->_ownerAltDSID = v8;

    v10 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"statementBalance"];
    statementBalance = v5->_statementBalance;
    v5->_statementBalance = v10;

    v12 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"currentBalance"];
    currentBalance = v5->_currentBalance;
    v5->_currentBalance = v12;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKCreditAccountMergeSummaryAccountDetails *)self isEqualToCreditAccountMergeSummaryAccountDetails:v5];
  }

  return v6;
}

- (BOOL)isEqualToCreditAccountMergeSummaryAccountDetails:(id)details
{
  detailsCopy = details;
  v5 = detailsCopy;
  if (!detailsCopy)
  {
    goto LABEL_14;
  }

  v6 = detailsCopy[1];
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
  stringValue = [(NSDecimalNumber *)self->_statementBalance stringValue];
  [v3 appendFormat:@"statementBalance: '%@'; ", stringValue];

  stringValue2 = [(NSDecimalNumber *)self->_currentBalance stringValue];
  [v3 appendFormat:@"currentBalance: '%@'; ", stringValue2];

  [v3 appendFormat:@">"];
  v6 = [v3 copy];

  return v6;
}

- (PKCreditAccountMergeSummaryAccountDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKCreditAccountMergeSummaryAccountDetails;
  v5 = [(PKCreditAccountMergeSummaryAccountDetails *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownerAltDSID"];
    ownerAltDSID = v5->_ownerAltDSID;
    v5->_ownerAltDSID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statementBalance"];
    statementBalance = v5->_statementBalance;
    v5->_statementBalance = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentBalance"];
    currentBalance = v5->_currentBalance;
    v5->_currentBalance = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  accountIdentifier = self->_accountIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:accountIdentifier forKey:@"accountIdentifier"];
  [coderCopy encodeObject:self->_ownerAltDSID forKey:@"ownerAltDSID"];
  [coderCopy encodeObject:self->_statementBalance forKey:@"statementBalance"];
  [coderCopy encodeObject:self->_currentBalance forKey:@"currentBalance"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_accountIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_ownerAltDSID copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSDecimalNumber *)self->_statementBalance copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSDecimalNumber *)self->_currentBalance copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

@end