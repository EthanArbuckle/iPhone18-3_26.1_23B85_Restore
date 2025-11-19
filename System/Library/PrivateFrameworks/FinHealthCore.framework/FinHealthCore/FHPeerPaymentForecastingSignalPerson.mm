@interface FHPeerPaymentForecastingSignalPerson
- (BOOL)isEqual:(id)a3;
- (FHPeerPaymentForecastingSignalPerson)init;
- (FHPeerPaymentForecastingSignalPerson)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FHPeerPaymentForecastingSignalPerson

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = FHPeerPaymentForecastingSignalPerson;
  v4 = a3;
  [(FHPeerPaymentForecastingSignal *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_personId forKey:{@"personId", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_direction forKey:@"direction"];
}

- (FHPeerPaymentForecastingSignalPerson)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FHPeerPaymentForecastingSignalPerson;
  v5 = [(FHPeerPaymentForecastingSignal *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"personId"];
    [(FHPeerPaymentForecastingSignalPerson *)v5 setPersonId:v6];

    -[FHPeerPaymentForecastingSignalPerson setDirection:](v5, "setDirection:", [v4 decodeIntegerForKey:@"direction"]);
  }

  return v5;
}

- (FHPeerPaymentForecastingSignalPerson)init
{
  v5.receiver = self;
  v5.super_class = FHPeerPaymentForecastingSignalPerson;
  v2 = [(FHPeerPaymentForecastingSignalPerson *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FHPeerPaymentForecastingSignal *)v2 setForecastingType:2];
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v6.receiver = self;
  v6.super_class = FHPeerPaymentForecastingSignalPerson;
  v4 = [(FHPeerPaymentForecastingSignal *)&v6 description];
  [v3 appendString:v4];

  [v3 appendFormat:@"%@: '%@'; ", @"personId", self->_personId];
  [v3 appendFormat:@"%@: '%lu'; ", @"direction", self->_direction];

  return v3;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = FHPeerPaymentForecastingSignalPerson;
  v3 = [(FHPeerPaymentForecastingSignal *)&v7 hash];
  v4 = [(FHPeerPaymentForecastingSignalPerson *)self personId];
  v5 = [v4 hash] + 43 * v3;

  return [(FHPeerPaymentForecastingSignalPerson *)self direction]+ 43 * v5;
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
    v7 = [(FHPeerPaymentForecastingSignalPerson *)self personId];
    v8 = [(FHPeerPaymentForecastingSignalPerson *)v5 personId];
    if ([v7 isEqual:v8])
    {
      v9 = [(FHPeerPaymentForecastingSignalPerson *)self direction];
      v10 = v9 == [(FHPeerPaymentForecastingSignalPerson *)v5 direction];
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