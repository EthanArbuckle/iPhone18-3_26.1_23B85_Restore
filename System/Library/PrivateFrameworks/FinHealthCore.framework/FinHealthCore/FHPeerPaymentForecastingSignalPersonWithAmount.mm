@interface FHPeerPaymentForecastingSignalPersonWithAmount
- (BOOL)isEqual:(id)equal;
- (FHPeerPaymentForecastingSignalPersonWithAmount)init;
- (FHPeerPaymentForecastingSignalPersonWithAmount)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FHPeerPaymentForecastingSignalPersonWithAmount

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = FHPeerPaymentForecastingSignalPersonWithAmount;
  coderCopy = coder;
  [(FHPeerPaymentForecastingSignalPerson *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_amount forKey:{@"amount", v5.receiver, v5.super_class}];
}

- (FHPeerPaymentForecastingSignalPersonWithAmount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FHPeerPaymentForecastingSignalPersonWithAmount;
  v5 = [(FHPeerPaymentForecastingSignalPerson *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v6;
  }

  return v5;
}

- (FHPeerPaymentForecastingSignalPersonWithAmount)init
{
  v5.receiver = self;
  v5.super_class = FHPeerPaymentForecastingSignalPersonWithAmount;
  v2 = [(FHPeerPaymentForecastingSignalPerson *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FHPeerPaymentForecastingSignal *)v2 setForecastingType:3];
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:&stru_283A7B918];
  v6.receiver = self;
  v6.super_class = FHPeerPaymentForecastingSignalPersonWithAmount;
  v4 = [(FHPeerPaymentForecastingSignalPerson *)&v6 description];
  [v3 appendString:v4];

  [v3 appendFormat:@"%@: '%@'; ", @"amount", self->_amount];

  return v3;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = FHPeerPaymentForecastingSignalPersonWithAmount;
  v3 = [(FHPeerPaymentForecastingSignalPerson *)&v7 hash];
  amount = [(FHPeerPaymentForecastingSignalPersonWithAmount *)self amount];
  v5 = [amount hash] + 43 * v3;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v6 = [(FHPeerPaymentForecastingSignal *)self forecastingType], v6 == [(FHPeerPaymentForecastingSignal *)v5 forecastingType]))
  {
    amount = [(FHPeerPaymentForecastingSignalPersonWithAmount *)self amount];
    amount2 = [(FHPeerPaymentForecastingSignalPersonWithAmount *)v5 amount];
    v9 = [amount isEqual:amount2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end