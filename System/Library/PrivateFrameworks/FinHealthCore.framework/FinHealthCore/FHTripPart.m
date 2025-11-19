@interface FHTripPart
- (FHTripPart)initWithPPTripPart:(id)a3;
- (id)description;
@end

@implementation FHTripPart

- (FHTripPart)initWithPPTripPart:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FHTripPart;
  v5 = [(FHTripPart *)&v11 init];
  if (v5)
  {
    v6 = [v4 eventIdentifiers];
    [(FHTripPart *)v5 setEventIdentifiers:v6];

    v7 = [v4 mainLocation];
    [(FHTripPart *)v5 setMainLocation:v7];

    v8 = [v4 tripMode];
    if (v8 >= 3)
    {
      v9 = 3;
    }

    else
    {
      v9 = v8;
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