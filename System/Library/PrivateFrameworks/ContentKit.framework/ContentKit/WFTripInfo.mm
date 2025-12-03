@interface WFTripInfo
- (NSString)wfName;
- (WFTripInfo)initWithCoder:(id)coder;
- (WFTripInfo)initWithMKRoute:(id)route;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFTripInfo

- (void)encodeWithCoder:(id)coder
{
  routeName = self->_routeName;
  coderCopy = coder;
  [coderCopy encodeObject:routeName forKey:@"routeName"];
  [coderCopy encodeObject:self->_distance forKey:@"distance"];
  [coderCopy encodeObject:self->_expectedTravelTime forKey:@"expectedTravelTime"];
}

- (WFTripInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = WFTripInfo;
  v5 = [(WFTripInfo *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"routeName"];
    routeName = v5->_routeName;
    v5->_routeName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"distance"];
    distance = v5->_distance;
    v5->_distance = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expectedTravelTime"];
    expectedTravelTime = v5->_expectedTravelTime;
    v5->_expectedTravelTime = v10;

    v12 = v5;
  }

  return v5;
}

- (NSString)wfName
{
  expectedTravelTime = [(WFTripInfo *)self expectedTravelTime];
  absoluteTimeString = [expectedTravelTime absoluteTimeString];

  return absoluteTimeString;
}

- (WFTripInfo)initWithMKRoute:(id)route
{
  routeCopy = route;
  if (!routeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTripInfo.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"route"}];
  }

  v22.receiver = self;
  v22.super_class = WFTripInfo;
  v6 = [(WFTripInfo *)&v22 init];
  if (v6)
  {
    name = [routeCopy name];
    v8 = [name copy];
    routeName = v6->_routeName;
    v6->_routeName = v8;

    v10 = objc_alloc(MEMORY[0x277CCAB10]);
    [routeCopy distance];
    v12 = v11;
    meters = [MEMORY[0x277CCAE20] meters];
    v14 = [v10 initWithDoubleValue:meters unit:v12];
    distance = v6->_distance;
    v6->_distance = v14;

    [routeCopy expectedTravelTime];
    v17 = WFTimeIntervalFromExpectedTravelTime(v16);
    expectedTravelTime = v6->_expectedTravelTime;
    v6->_expectedTravelTime = v17;

    v19 = v6;
  }

  return v6;
}

@end