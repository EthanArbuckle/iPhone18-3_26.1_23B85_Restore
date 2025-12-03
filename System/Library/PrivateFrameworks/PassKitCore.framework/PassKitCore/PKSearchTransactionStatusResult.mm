@interface PKSearchTransactionStatusResult
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PKSearchTransactionStatusResult)initWithCoder:(id)coder;
@end

@implementation PKSearchTransactionStatusResult

- (PKSearchTransactionStatusResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKSearchTransactionStatusResult *)self init];
  if (v5)
  {
    v5->_transactionStatus = [coderCopy decodeIntegerForKey:@"transactionStatus"];
  }

  return v5;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = PKSearchTransactionStatusResult;
  v3 = [(PKSearchTransactionStatusResult *)&v6 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"transactionStatus: '%lu'; ", self->_transactionStatus];
  [v4 appendFormat:@">"];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_transactionStatus == equalCopy[1];

  return v5;
}

@end