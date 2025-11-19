@interface FHPeerPaymentForecastingSignalTopUp
- (BOOL)isEqual:(id)a3;
- (FHPeerPaymentForecastingSignalTopUp)init;
- (FHPeerPaymentForecastingSignalTopUp)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FHPeerPaymentForecastingSignalTopUp

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = FHPeerPaymentForecastingSignalTopUp;
  [(FHPeerPaymentForecastingSignal *)&v3 encodeWithCoder:a3];
}

- (FHPeerPaymentForecastingSignalTopUp)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = FHPeerPaymentForecastingSignalTopUp;
  return [(FHPeerPaymentForecastingSignal *)&v4 initWithCoder:a3];
}

- (FHPeerPaymentForecastingSignalTopUp)init
{
  v5.receiver = self;
  v5.super_class = FHPeerPaymentForecastingSignalTopUp;
  v2 = [(FHPeerPaymentForecastingSignalTopUp *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FHPeerPaymentForecastingSignal *)v2 setForecastingType:5];
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v6.receiver = self;
  v6.super_class = FHPeerPaymentForecastingSignalTopUp;
  v4 = [(FHPeerPaymentForecastingSignal *)&v6 description];
  [v3 appendString:v4];

  return v3;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = FHPeerPaymentForecastingSignalTopUp;
  return [(FHPeerPaymentForecastingSignal *)&v3 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v7 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(FHPeerPaymentForecastingSignal *)self forecastingType];
    v7 = v6 == [(FHPeerPaymentForecastingSignal *)v5 forecastingType];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end