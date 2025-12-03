@interface PKPaymentTransactionRequestAmountComparison
- (PKPaymentTransactionRequestAmountComparison)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentTransactionRequestAmountComparison

- (PKPaymentTransactionRequestAmountComparison)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPaymentTransactionRequestAmountComparison;
  v5 = [(PKPaymentTransactionRequestAmountComparison *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v6;

    v5->_comparison = [coderCopy decodeIntegerForKey:@"comparison"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  amount = self->_amount;
  coderCopy = coder;
  [coderCopy encodeObject:amount forKey:@"amount"];
  [coderCopy encodeInteger:self->_comparison forKey:@"comparison"];
}

@end