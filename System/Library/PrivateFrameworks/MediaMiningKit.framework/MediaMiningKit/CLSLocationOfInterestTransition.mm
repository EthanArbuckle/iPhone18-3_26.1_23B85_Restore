@interface CLSLocationOfInterestTransition
- (BOOL)isEqual:(id)equal;
- (CLSLocationOfInterestTransition)initWithIdentifier:(id)identifier transitionInterval:(id)interval transportationMode:(int64_t)mode;
- (id)description;
@end

@implementation CLSLocationOfInterestTransition

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
      identifier = [(CLSLocationOfInterestTransition *)equalCopy identifier];
      v7 = [(NSUUID *)identifier isEqual:identifier];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = CLSLocationOfInterestTransition;
  v4 = [(CLSLocationOfInterestTransition *)&v10 description];
  v5 = v4;
  transportationMode = self->_transportationMode;
  if (transportationMode > 2)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_2788A85D0[transportationMode];
  }

  v8 = [v3 stringWithFormat:@"%@ - %@ - %@", v4, self->_transitionInterval, v7];

  return v8;
}

- (CLSLocationOfInterestTransition)initWithIdentifier:(id)identifier transitionInterval:(id)interval transportationMode:(int64_t)mode
{
  identifierCopy = identifier;
  intervalCopy = interval;
  v14.receiver = self;
  v14.super_class = CLSLocationOfInterestTransition;
  v11 = [(CLSLocationOfInterestTransition *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, identifier);
    objc_storeStrong(&v12->_transitionInterval, interval);
    v12->_transportationMode = mode;
  }

  return v12;
}

@end