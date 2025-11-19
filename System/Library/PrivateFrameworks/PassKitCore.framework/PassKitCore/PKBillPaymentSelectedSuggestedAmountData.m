@interface PKBillPaymentSelectedSuggestedAmountData
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PKBillPaymentSelectedSuggestedAmountData)initWithCoder:(id)a3;
- (PKBillPaymentSelectedSuggestedAmountData)initWithRecord:(id)a3;
- (PKBillPaymentSelectedSuggestedAmountData)initWithStatementIdentifier:(id)a3 transactionDate:(id)a4 transactionAmount:(id)a5 suggestedAmountCategory:(unint64_t)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithRecord:(id)a3;
@end

@implementation PKBillPaymentSelectedSuggestedAmountData

- (PKBillPaymentSelectedSuggestedAmountData)initWithStatementIdentifier:(id)a3 transactionDate:(id)a4 transactionAmount:(id)a5 suggestedAmountCategory:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = PKBillPaymentSelectedSuggestedAmountData;
  v14 = [(PKBillPaymentSelectedSuggestedAmountData *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_statementIdentifier, a3);
    objc_storeStrong(&v15->_transactionDate, a4);
    objc_storeStrong(&v15->_transactionAmount, a5);
    v15->_suggestedAmountCategory = a6;
  }

  return v15;
}

- (PKBillPaymentSelectedSuggestedAmountData)initWithRecord:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKBillPaymentSelectedSuggestedAmountData;
  v5 = [(PKBillPaymentSelectedSuggestedAmountData *)&v14 init];
  if (v5)
  {
    v6 = [v4 pk_encryptedStringForKey:@"statementIdentifier"];
    statementIdentifier = v5->_statementIdentifier;
    v5->_statementIdentifier = v6;

    v8 = [v4 pk_encryptedDateForKey:@"transactionDate"];
    transactionDate = v5->_transactionDate;
    v5->_transactionDate = v8;

    v10 = [v4 pk_encryptedDecimalNumberForKey:@"transactionAmount"];
    transactionAmount = v5->_transactionAmount;
    v5->_transactionAmount = v10;

    v12 = [v4 pk_encryptedStringForKey:@"suggestedAmountCategory"];
    v5->_suggestedAmountCategory = PKBillPaymentSuggestedAmountCategoryFromString(v12);
  }

  return v5;
}

- (void)encodeWithRecord:(id)a3
{
  v5 = [a3 encryptedValues];
  [v5 setObject:self->_statementIdentifier forKey:@"statementIdentifier"];
  [v5 setObject:self->_transactionAmount forKey:@"transactionAmount"];
  v4 = PKBillPaymentSuggestedAmountCategoryToString(self->_suggestedAmountCategory);
  [v5 setObject:v4 forKey:@"suggestedAmountCategory"];

  [v5 setObject:self->_transactionDate forKey:@"transactionDate"];
}

- (PKBillPaymentSelectedSuggestedAmountData)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKBillPaymentSelectedSuggestedAmountData;
  v5 = [(PKBillPaymentSelectedSuggestedAmountData *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statementIdentifier"];
    statementIdentifier = v5->_statementIdentifier;
    v5->_statementIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionDate"];
    transactionDate = v5->_transactionDate;
    v5->_transactionDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionAmount"];
    transactionAmount = v5->_transactionAmount;
    v5->_transactionAmount = v10;

    v5->_suggestedAmountCategory = [v4 decodeIntegerForKey:@"suggestedAmountCategory"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  statementIdentifier = self->_statementIdentifier;
  v5 = a3;
  [v5 encodeObject:statementIdentifier forKey:@"statementIdentifier"];
  [v5 encodeObject:self->_transactionDate forKey:@"transactionDate"];
  [v5 encodeObject:self->_transactionAmount forKey:@"transactionAmount"];
  [v5 encodeInteger:self->_suggestedAmountCategory forKey:@"suggestedAmountCategory"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  statementIdentifier = self->_statementIdentifier;
  v6 = v4[1];
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
  v8 = v4[2];
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
  v10 = v4[4];
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
  v11 = self->_suggestedAmountCategory == v4[3];
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