@interface FHPeerPaymentForecastingSignalOverallSpend
- (BOOL)isEqual:(id)equal;
- (FHPeerPaymentForecastingSignalOverallSpend)init;
- (FHPeerPaymentForecastingSignalOverallSpend)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FHPeerPaymentForecastingSignalOverallSpend

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = FHPeerPaymentForecastingSignalOverallSpend;
  coderCopy = coder;
  [(FHPeerPaymentForecastingSignal *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_amount forKey:{@"amount", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_direction forKey:@"direction"];
}

- (FHPeerPaymentForecastingSignalOverallSpend)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = FHPeerPaymentForecastingSignalOverallSpend;
  v5 = [(FHPeerPaymentForecastingSignal *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    [(FHPeerPaymentForecastingSignalOverallSpend *)v5 setAmount:v6];

    -[FHPeerPaymentForecastingSignalOverallSpend setDirection:](v5, "setDirection:", [coderCopy decodeIntegerForKey:@"direction"]);
  }

  return v5;
}

- (FHPeerPaymentForecastingSignalOverallSpend)init
{
  v5.receiver = self;
  v5.super_class = FHPeerPaymentForecastingSignalOverallSpend;
  v2 = [(FHPeerPaymentForecastingSignalOverallSpend *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FHPeerPaymentForecastingSignal *)v2 setForecastingType:1];
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v6.receiver = self;
  v6.super_class = FHPeerPaymentForecastingSignalOverallSpend;
  v4 = [(FHPeerPaymentForecastingSignal *)&v6 description];
  [v3 appendString:v4];

  [v3 appendFormat:@"%@: '%@'; ", @"amount", self->_amount];
  [v3 appendFormat:@"%@: '%lu'; ", @"direction", self->_direction];

  return v3;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = FHPeerPaymentForecastingSignalOverallSpend;
  v3 = [(FHPeerPaymentForecastingSignal *)&v7 hash];
  amount = [(FHPeerPaymentForecastingSignalOverallSpend *)self amount];
  v5 = [amount hash] + 43 * v3;

  return [(FHPeerPaymentForecastingSignalOverallSpend *)self direction]+ 43 * v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v6 = [(FHPeerPaymentForecastingSignal *)self forecastingType], v6 == [(FHPeerPaymentForecastingSignal *)v5 forecastingType]))
  {
    amount = [(FHPeerPaymentForecastingSignalOverallSpend *)self amount];
    amount2 = [(FHPeerPaymentForecastingSignalOverallSpend *)v5 amount];
    if ([amount isEqual:amount2])
    {
      direction = [(FHPeerPaymentForecastingSignalOverallSpend *)self direction];
      v10 = direction == [(FHPeerPaymentForecastingSignalOverallSpend *)v5 direction];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end