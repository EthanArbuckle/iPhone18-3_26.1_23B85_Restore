@interface PKSearchTransactionSourceResult
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PKSearchTransactionSourceResult)initWithCoder:(id)a3;
@end

@implementation PKSearchTransactionSourceResult

- (PKSearchTransactionSourceResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKSearchTransactionSourceResult *)self init];
  if (v5)
  {
    v5->_transactionSource = [v4 decodeIntegerForKey:@"transactionSource"];
  }

  return v5;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = PKSearchTransactionSourceResult;
  v3 = [(PKSearchTransactionSourceResult *)&v6 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"transactionSource: '%lu'; ", self->_transactionSource];
  [v4 appendFormat:@">"];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_transactionSource == v4[1];

  return v5;
}

@end