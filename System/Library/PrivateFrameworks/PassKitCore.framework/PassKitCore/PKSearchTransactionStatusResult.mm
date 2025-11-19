@interface PKSearchTransactionStatusResult
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PKSearchTransactionStatusResult)initWithCoder:(id)a3;
@end

@implementation PKSearchTransactionStatusResult

- (PKSearchTransactionStatusResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKSearchTransactionStatusResult *)self init];
  if (v5)
  {
    v5->_transactionStatus = [v4 decodeIntegerForKey:@"transactionStatus"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_transactionStatus == v4[1];

  return v5;
}

@end