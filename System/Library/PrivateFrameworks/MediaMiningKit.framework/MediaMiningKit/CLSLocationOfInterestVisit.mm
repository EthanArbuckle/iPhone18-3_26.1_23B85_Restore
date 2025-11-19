@interface CLSLocationOfInterestVisit
- (BOOL)isEqual:(id)a3;
- (CLSLocationOfInterest)locationOfInterest;
- (CLSLocationOfInterestVisit)initWithCoder:(id)a3;
- (CLSLocationOfInterestVisit)initWithIdentifier:(id)a3 visitInterval:(id)a4 confidence:(double)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setLocationOfInterest:(id)a3;
@end

@implementation CLSLocationOfInterestVisit

- (CLSLocationOfInterest)locationOfInterest
{
  WeakRetained = objc_loadWeakRetained(&self->_locationOfInterest);

  return WeakRetained;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = CLSLocationOfInterestVisit;
  v4 = [(CLSLocationOfInterestVisit *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ - %@", v4, self->_visitInterval];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      v6 = [(CLSLocationOfInterestVisit *)v4 identifier];
      v7 = [(NSUUID *)identifier isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)setLocationOfInterest:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_locationOfInterest);
  if (WeakRetained != obj || ([obj isEqual:WeakRetained] & 1) == 0)
  {
    [WeakRetained removeVisit:self];
    objc_storeWeak(&self->_locationOfInterest, obj);
    [obj addVisit:self];
  }
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_visitInterval forKey:@"visitInterval"];
  [v5 encodeDouble:@"confidence" forKey:self->_confidence];
  WeakRetained = objc_loadWeakRetained(&self->_locationOfInterest);
  [v5 encodeObject:WeakRetained forKey:@"locationOfInterest"];
}

- (CLSLocationOfInterestVisit)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"visitInterval"];
  [v4 decodeDoubleForKey:@"confidence"];
  v7 = [(CLSLocationOfInterestVisit *)self initWithIdentifier:v5 visitInterval:v6 confidence:?];
  if (v7)
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationOfInterest"];
    [v8 addVisit:v7];
  }

  return v7;
}

- (CLSLocationOfInterestVisit)initWithIdentifier:(id)a3 visitInterval:(id)a4 confidence:(double)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = CLSLocationOfInterestVisit;
  v11 = [(CLSLocationOfInterestVisit *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, a3);
    objc_storeStrong(&v12->_visitInterval, a4);
    v12->_confidence = a5;
  }

  return v12;
}

@end