@interface FHTripPart
- (FHTripPart)initWithPPTripPart:(id)part;
- (id)description;
@end

@implementation FHTripPart

- (FHTripPart)initWithPPTripPart:(id)part
{
  partCopy = part;
  v11.receiver = self;
  v11.super_class = FHTripPart;
  v5 = [(FHTripPart *)&v11 init];
  if (v5)
  {
    eventIdentifiers = [partCopy eventIdentifiers];
    [(FHTripPart *)v5 setEventIdentifiers:eventIdentifiers];

    mainLocation = [partCopy mainLocation];
    [(FHTripPart *)v5 setMainLocation:mainLocation];

    tripMode = [partCopy tripMode];
    if (tripMode >= 3)
    {
      v9 = 3;
    }

    else
    {
      v9 = tripMode;
    }

    [(FHTripPart *)v5 setTripMode:v9];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"%@: '%@'; ", @"eventIdentifiers", self->_eventIdentifiers];
  [v3 appendFormat:@"%@: '%@'; ", @"mainLocation", self->_mainLocation];
  [v3 appendFormat:@"%@: '%lu'; ", @"tripMode", self->_tripMode];
  [v3 appendFormat:@">"];

  return v3;
}

@end