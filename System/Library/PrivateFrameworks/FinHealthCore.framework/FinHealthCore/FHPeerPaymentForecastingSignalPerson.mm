@interface FHPeerPaymentForecastingSignalPerson
- (BOOL)isEqual:(id)equal;
- (FHPeerPaymentForecastingSignalPerson)init;
- (FHPeerPaymentForecastingSignalPerson)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FHPeerPaymentForecastingSignalPerson

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = FHPeerPaymentForecastingSignalPerson;
  coderCopy = coder;
  [(FHPeerPaymentForecastingSignal *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_personId forKey:{@"personId", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_direction forKey:@"direction"];
}

- (FHPeerPaymentForecastingSignalPerson)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = FHPeerPaymentForecastingSignalPerson;
  v5 = [(FHPeerPaymentForecastingSignal *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"personId"];
    [(FHPeerPaymentForecastingSignalPerson *)v5 setPersonId:v6];

    -[FHPeerPaymentForecastingSignalPerson setDirection:](v5, "setDirection:", [coderCopy decodeIntegerForKey:@"direction"]);
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
  personId = [(FHPeerPaymentForecastingSignalPerson *)self personId];
  v5 = [personId hash] + 43 * v3;

  return [(FHPeerPaymentForecastingSignalPerson *)self direction]+ 43 * v5;
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
    personId = [(FHPeerPaymentForecastingSignalPerson *)self personId];
    personId2 = [(FHPeerPaymentForecastingSignalPerson *)v5 personId];
    if ([personId isEqual:personId2])
    {
      direction = [(FHPeerPaymentForecastingSignalPerson *)self direction];
      v10 = direction == [(FHPeerPaymentForecastingSignalPerson *)v5 direction];
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