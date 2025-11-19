@interface FHPeerPaymentForecastingSignalOverallSpend
- (BOOL)isEqual:(id)a3;
- (FHPeerPaymentForecastingSignalOverallSpend)init;
- (FHPeerPaymentForecastingSignalOverallSpend)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FHPeerPaymentForecastingSignalOverallSpend

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = FHPeerPaymentForecastingSignalOverallSpend;
  v4 = a3;
  [(FHPeerPaymentForecastingSignal *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_amount forKey:{@"amount", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_direction forKey:@"direction"];
}

- (FHPeerPaymentForecastingSignalOverallSpend)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FHPeerPaymentForecastingSignalOverallSpend;
  v5 = [(FHPeerPaymentForecastingSignal *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    [(FHPeerPaymentForecastingSignalOverallSpend *)v5 setAmount:v6];

    -[FHPeerPaymentForecastingSignalOverallSpend setDirection:](v5, "setDirection:", [v4 decodeIntegerForKey:@"direction"]);
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
  v4 = [(FHPeerPaymentForecastingSignalOverallSpend *)self amount];
  v5 = [v4 hash] + 43 * v3;

  return [(FHPeerPaymentForecastingSignalOverallSpend *)self direction]+ 43 * v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v10 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v6 = [(FHPeerPaymentForecastingSignal *)self forecastingType], v6 == [(FHPeerPaymentForecastingSignal *)v5 forecastingType]))
  {
    v7 = [(FHPeerPaymentForecastingSignalOverallSpend *)self amount];
    v8 = [(FHPeerPaymentForecastingSignalOverallSpend *)v5 amount];
    if ([v7 isEqual:v8])
    {
      v9 = [(FHPeerPaymentForecastingSignalOverallSpend *)self direction];
      v10 = v9 == [(FHPeerPaymentForecastingSignalOverallSpend *)v5 direction];
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