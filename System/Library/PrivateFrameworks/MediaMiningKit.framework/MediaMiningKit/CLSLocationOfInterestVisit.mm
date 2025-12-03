@interface CLSLocationOfInterestVisit
- (BOOL)isEqual:(id)equal;
- (CLSLocationOfInterest)locationOfInterest;
- (CLSLocationOfInterestVisit)initWithCoder:(id)coder;
- (CLSLocationOfInterestVisit)initWithIdentifier:(id)identifier visitInterval:(id)interval confidence:(double)confidence;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setLocationOfInterest:(id)interest;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      identifier = [(CLSLocationOfInterestVisit *)equalCopy identifier];
      v7 = [(NSUUID *)identifier isEqual:identifier];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)setLocationOfInterest:(id)interest
{
  obj = interest;
  WeakRetained = objc_loadWeakRetained(&self->_locationOfInterest);
  if (WeakRetained != obj || ([obj isEqual:WeakRetained] & 1) == 0)
  {
    [WeakRetained removeVisit:self];
    objc_storeWeak(&self->_locationOfInterest, obj);
    [obj addVisit:self];
  }
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_visitInterval forKey:@"visitInterval"];
  [coderCopy encodeDouble:@"confidence" forKey:self->_confidence];
  WeakRetained = objc_loadWeakRetained(&self->_locationOfInterest);
  [coderCopy encodeObject:WeakRetained forKey:@"locationOfInterest"];
}

- (CLSLocationOfInterestVisit)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"visitInterval"];
  [coderCopy decodeDoubleForKey:@"confidence"];
  v7 = [(CLSLocationOfInterestVisit *)self initWithIdentifier:v5 visitInterval:v6 confidence:?];
  if (v7)
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationOfInterest"];
    [v8 addVisit:v7];
  }

  return v7;
}

- (CLSLocationOfInterestVisit)initWithIdentifier:(id)identifier visitInterval:(id)interval confidence:(double)confidence
{
  identifierCopy = identifier;
  intervalCopy = interval;
  v14.receiver = self;
  v14.super_class = CLSLocationOfInterestVisit;
  v11 = [(CLSLocationOfInterestVisit *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, identifier);
    objc_storeStrong(&v12->_visitInterval, interval);
    v12->_confidence = confidence;
  }

  return v12;
}

@end