@interface FHSuggestedEvent
- (FHSuggestedEvent)initWithPPSuggestedEvent:(id)event;
- (id)description;
@end

@implementation FHSuggestedEvent

- (FHSuggestedEvent)initWithPPSuggestedEvent:(id)event
{
  eventCopy = event;
  v11.receiver = self;
  v11.super_class = FHSuggestedEvent;
  v5 = [(FHSuggestedEvent *)&v11 init];
  if (v5)
  {
    title = [eventCopy title];
    [(FHSuggestedEvent *)v5 setTitle:title];

    startDate = [eventCopy startDate];
    [(FHSuggestedEvent *)v5 setStartDate:startDate];

    endDate = [eventCopy endDate];
    [(FHSuggestedEvent *)v5 setEndDate:endDate];

    eventIdentifier = [eventCopy eventIdentifier];
    [(FHSuggestedEvent *)v5 setEventIdentifier:eventIdentifier];
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