@interface PKBillPaymentSelectedSuggestedAmountData
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PKBillPaymentSelectedSuggestedAmountData)initWithCoder:(id)coder;
- (PKBillPaymentSelectedSuggestedAmountData)initWithRecord:(id)record;
- (PKBillPaymentSelectedSuggestedAmountData)initWithStatementIdentifier:(id)identifier transactionDate:(id)date transactionAmount:(id)amount suggestedAmountCategory:(unint64_t)category;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithRecord:(id)record;
@end

@implementation PKBillPaymentSelectedSuggestedAmountData

- (PKBillPaymentSelectedSuggestedAmountData)initWithStatementIdentifier:(id)identifier transactionDate:(id)date transactionAmount:(id)amount suggestedAmountCategory:(unint64_t)category
{
  identifierCopy = identifier;
  dateCopy = date;
  amountCopy = amount;
  v17.receiver = self;
  v17.super_class = PKBillPaymentSelectedSuggestedAmountData;
  v14 = [(PKBillPaymentSelectedSuggestedAmountData *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_statementIdentifier, identifier);
    objc_storeStrong(&v15->_transactionDate, date);
    objc_storeStrong(&v15->_transactionAmount, amount);
    v15->_suggestedAmountCategory = category;
  }

  return v15;
}

- (PKBillPaymentSelectedSuggestedAmountData)initWithRecord:(id)record
{
  recordCopy = record;
  v14.receiver = self;
  v14.super_class = PKBillPaymentSelectedSuggestedAmountData;
  v5 = [(PKBillPaymentSelectedSuggestedAmountData *)&v14 init];
  if (v5)
  {
    v6 = [recordCopy pk_encryptedStringForKey:@"statementIdentifier"];
    statementIdentifier = v5->_statementIdentifier;
    v5->_statementIdentifier = v6;

    v8 = [recordCopy pk_encryptedDateForKey:@"transactionDate"];
    transactionDate = v5->_transactionDate;
    v5->_transactionDate = v8;

    v10 = [recordCopy pk_encryptedDecimalNumberForKey:@"transactionAmount"];
    transactionAmount = v5->_transactionAmount;
    v5->_transactionAmount = v10;

    v12 = [recordCopy pk_encryptedStringForKey:@"suggestedAmountCategory"];
    v5->_suggestedAmountCategory = PKBillPaymentSuggestedAmountCategoryFromString(v12);
  }

  return v5;
}

- (void)encodeWithRecord:(id)record
{
  encryptedValues = [record encryptedValues];
  [encryptedValues setObject:self->_statementIdentifier forKey:@"statementIdentifier"];
  [encryptedValues setObject:self->_transactionAmount forKey:@"transactionAmount"];
  v4 = PKBillPaymentSuggestedAmountCategoryToString(self->_suggestedAmountCategory);
  [encryptedValues setObject:v4 forKey:@"suggestedAmountCategory"];

  [encryptedValues setObject:self->_transactionDate forKey:@"transactionDate"];
}

- (PKBillPaymentSelectedSuggestedAmountData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKBillPaymentSelectedSuggestedAmountData;
  v5 = [(PKBillPaymentSelectedSuggestedAmountData *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statementIdentifier"];
    statementIdentifier = v5->_statementIdentifier;
    v5->_statementIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionDate"];
    transactionDate = v5->_transactionDate;
    v5->_transactionDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionAmount"];
    transactionAmount = v5->_transactionAmount;
    v5->_transactionAmount = v10;

    v5->_suggestedAmountCategory = [coderCopy decodeIntegerForKey:@"suggestedAmountCategory"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  statementIdentifier = self->_statementIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:statementIdentifier forKey:@"statementIdentifier"];
  [coderCopy encodeObject:self->_transactionDate forKey:@"transactionDate"];
  [coderCopy encodeObject:self->_transactionAmount forKey:@"transactionAmount"];
  [coderCopy encodeInteger:self->_suggestedAmountCategory forKey:@"suggestedAmountCategory"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_transactionAmount];
  [v3 safelyAddObject:self->_transactionDate];
  [v3 safelyAddObject:self->_statementIdentifier];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_suggestedAmountCategory - v4 + 32 * v4;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  statementIdentifier = self->_statementIdentifier;
  v6 = equalCopy[1];
  if (statementIdentifier && v6)
  {
    if (([(NSString *)statementIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (statementIdentifier != v6)
  {
    goto LABEL_17;
  }

  transactionDate = self->_transactionDate;
  v8 = equalCopy[2];
  if (transactionDate && v8)
  {
    if (([(NSDate *)transactionDate isEqual:?]& 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (transactionDate != v8)
  {
    goto LABEL_17;
  }

  transactionAmount = self->_transactionAmount;
  v10 = equalCopy[4];
  if (!transactionAmount || !v10)
  {
    if (transactionAmount == v10)
    {
      goto LABEL_15;
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  if (([(NSDecimalNumber *)transactionAmount isEqual:?]& 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_15:
  v11 = self->_suggestedAmountCategory == equalCopy[3];
LABEL_18:

  return v11;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"statementIdentifier: '%@'; ", self->_statementIdentifier];
  [v3 appendFormat:@"transactionDate: '%@'; ", self->_transactionDate];
  if (self->_transactionAmount)
  {
    v4 = @"<redacted>";
  }

  else
  {
    v4 = 0;
  }

  [v3 appendFormat:@"transactionAmount: '%@'; ", v4];
  v5 = PKBillPaymentSuggestedAmountCategoryToString(self->_suggestedAmountCategory);
  [v3 appendFormat:@"suggestedAmountCategory: '%@'; ", v5];

  [v3 appendFormat:@">"];

  return v3;
}

@end