@interface PKSearchAmountResult
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PKSearchAmountResult)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKSearchAmountResult

- (void)encodeWithCoder:(id)a3
{
  amount = self->_amount;
  v5 = a3;
  [v5 encodeObject:amount forKey:@"amount"];
  [v5 encodeInteger:self->_comparison forKey:@"comparison"];
}

- (PKSearchAmountResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKSearchAmountResult *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v6;

    v5->_comparison = [v4 decodeIntegerForKey:@"comparison"];
  }

  return v5;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = PKSearchAmountResult;
  v3 = [(PKSearchAmountResult *)&v6 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"amount: '%@'; ", self->_amount];
  [v4 appendFormat:@"comparison: '%lu'; ", self->_comparison];
  [v4 appendFormat:@">"];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  amount = self->_amount;
  v6 = v4[1];
  if (!amount || !v6)
  {
    if (amount == v6)
    {
      goto LABEL_5;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if (![(PKCurrencyAmount *)amount isEqual:?])
  {
    goto LABEL_7;
  }

LABEL_5:
  v7 = self->_comparison == v4[2];
LABEL_8:

  return v7;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_amount];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_comparison - v4 + 32 * v4;

  return v5;
}

@end