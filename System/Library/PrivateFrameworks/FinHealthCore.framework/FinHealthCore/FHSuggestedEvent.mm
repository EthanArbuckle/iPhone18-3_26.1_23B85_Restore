@interface FHSuggestedEvent
- (FHSuggestedEvent)initWithPPSuggestedEvent:(id)a3;
- (id)description;
@end

@implementation FHSuggestedEvent

- (FHSuggestedEvent)initWithPPSuggestedEvent:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FHSuggestedEvent;
  v5 = [(FHSuggestedEvent *)&v11 init];
  if (v5)
  {
    v6 = [v4 title];
    [(FHSuggestedEvent *)v5 setTitle:v6];

    v7 = [v4 startDate];
    [(FHSuggestedEvent *)v5 setStartDate:v7];

    v8 = [v4 endDate];
    [(FHSuggestedEvent *)v5 setEndDate:v8];

    v9 = [v4 eventIdentifier];
    [(FHSuggestedEvent *)v5 setEventIdentifier:v9];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"%@: '%@'; ", @"title", self->_title];
  [v3 appendFormat:@"%@: '%@'; ", @"startDate", self->_startDate];
  [v3 appendFormat:@"%@: '%@'; ", @"endDate", self->_endDate];
  [v3 appendFormat:@"%@: '%@'; ", @"eventIdentifier", self->_eventIdentifier];
  [v3 appendFormat:@">"];

  return v3;
}

@end