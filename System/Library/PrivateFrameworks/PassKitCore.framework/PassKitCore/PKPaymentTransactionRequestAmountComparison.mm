@interface PKPaymentTransactionRequestAmountComparison
- (PKPaymentTransactionRequestAmountComparison)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentTransactionRequestAmountComparison

- (PKPaymentTransactionRequestAmountComparison)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentTransactionRequestAmountComparison;
  v5 = [(PKPaymentTransactionRequestAmountComparison *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v6;

    v5->_comparison = [v4 decodeIntegerForKey:@"comparison"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  amount = self->_amount;
  v5 = a3;
  [v5 encodeObject:amount forKey:@"amount"];
  [v5 encodeInteger:self->_comparison forKey:@"comparison"];
}

@end