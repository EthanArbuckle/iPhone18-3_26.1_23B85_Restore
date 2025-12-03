@interface PKSearchTransactionTypeResult
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PKSearchTransactionTypeResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSearchTransactionTypeResult

- (void)encodeWithCoder:(id)coder
{
  transactionType = self->_transactionType;
  coderCopy = coder;
  [coderCopy encodeInteger:transactionType forKey:@"transactionType"];
  [coderCopy encodeInteger:self->_creditDebitIndicator forKey:@"creditDebitIndicator"];
}

- (PKSearchTransactionTypeResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKSearchTransactionTypeResult *)self init];
  if (v5)
  {
    v5->_transactionType = [coderCopy decodeIntegerForKey:@"transactionType"];
    v5->_creditDebitIndicator = [coderCopy decodeIntegerForKey:@"creditDebitIndicator"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_creditDebitIndicator == equalCopy[2] && self->_transactionType == equalCopy[1];

  return v5;
}

@end