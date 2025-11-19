@interface FHPeerPaymentForecastingSignalRewards
- (BOOL)isEqual:(id)a3;
- (FHPeerPaymentForecastingSignalRewards)init;
- (FHPeerPaymentForecastingSignalRewards)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FHPeerPaymentForecastingSignalRewards

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = FHPeerPaymentForecastingSignalRewards;
  v4 = a3;
  [(FHPeerPaymentForecastingSignal *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_amount forKey:{@"amount", v5.receiver, v5.super_class}];
}

- (FHPeerPaymentForecastingSignalRewards)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FHPeerPaymentForecastingSignalRewards;
  v5 = [(FHPeerPaymentForecastingSignal *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v6;
  }

  return v5;
}

- (FHPeerPaymentForecastingSignalRewards)init
{
  v5.receiver = self;
  v5.super_class = FHPeerPaymentForecastingSignalRewards;
  v2 = [(FHPeerPaymentForecastingSignalRewards *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FHPeerPaymentForecastingSignal *)v2 setForecastingType:4];
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v6.receiver = self;
  v6.super_class = FHPeerPaymentForecastingSignalRewards;
  v4 = [(FHPeerPaymentForecastingSignal *)&v6 description];
  [v3 appendString:v4];

  [v3 appendFormat:@"%@: '%@'; ", @"amount", self->_amount];

  return v3;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = FHPeerPaymentForecastingSignalRewards;
  v3 = [(FHPeerPaymentForecastingSignal *)&v7 hash];
  v4 = [(FHPeerPaymentForecastingSignalRewards *)self amount];
  v5 = [v4 hash] + 43 * v3;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v9 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v6 = [(FHPeerPaymentForecastingSignal *)self forecastingType], v6 == [(FHPeerPaymentForecastingSignal *)v5 forecastingType]))
  {
    v7 = [(FHPeerPaymentForecastingSignalRewards *)self amount];
    v8 = [(FHPeerPaymentForecastingSignalRewards *)v5 amount];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end