@interface PKSearchTransactionTypeResult
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PKSearchTransactionTypeResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKSearchTransactionTypeResult

- (void)encodeWithCoder:(id)a3
{
  transactionType = self->_transactionType;
  v5 = a3;
  [v5 encodeInteger:transactionType forKey:@"transactionType"];
  [v5 encodeInteger:self->_creditDebitIndicator forKey:@"creditDebitIndicator"];
}

- (PKSearchTransactionTypeResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKSearchTransactionTypeResult *)self init];
  if (v5)
  {
    v5->_transactionType = [v4 decodeIntegerForKey:@"transactionType"];
    v5->_creditDebitIndicator = [v4 decodeIntegerForKey:@"creditDebitIndicator"];
  }

  return v5;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = PKSearchTransactionTypeResult;
  v3 = [(PKSearchTransactionTypeResult *)&v6 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"transactionType: '%lu'; ", self->_transactionType];
  [v4 appendFormat:@"creditDebitIndicator: '%ld'; ", self->_creditDebitIndicator];
  [v4 appendFormat:@">"];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_creditDebitIndicator == v4[2] && self->_transactionType == v4[1];

  return v5;
}

@end