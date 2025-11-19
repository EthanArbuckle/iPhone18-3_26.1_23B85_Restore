@interface CLSLocationOfInterestTransition
- (BOOL)isEqual:(id)a3;
- (CLSLocationOfInterestTransition)initWithIdentifier:(id)a3 transitionInterval:(id)a4 transportationMode:(int64_t)a5;
- (id)description;
@end

@implementation CLSLocationOfInterestTransition

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
      v6 = [(CLSLocationOfInterestTransition *)v4 identifier];
      v7 = [(NSUUID *)identifier isEqual:v6];
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

- (CLSLocationOfInterestTransition)initWithIdentifier:(id)a3 transitionInterval:(id)a4 transportationMode:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = CLSLocationOfInterestTransition;
  v11 = [(CLSLocationOfInterestTransition *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, a3);
    objc_storeStrong(&v12->_transitionInterval, a4);
    v12->_transportationMode = a5;
  }

  return v12;
}

@end