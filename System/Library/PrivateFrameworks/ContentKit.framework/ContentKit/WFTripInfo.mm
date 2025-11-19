@interface WFTripInfo
- (NSString)wfName;
- (WFTripInfo)initWithCoder:(id)a3;
- (WFTripInfo)initWithMKRoute:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFTripInfo

- (void)encodeWithCoder:(id)a3
{
  routeName = self->_routeName;
  v5 = a3;
  [v5 encodeObject:routeName forKey:@"routeName"];
  [v5 encodeObject:self->_distance forKey:@"distance"];
  [v5 encodeObject:self->_expectedTravelTime forKey:@"expectedTravelTime"];
}

- (WFTripInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WFTripInfo;
  v5 = [(WFTripInfo *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"routeName"];
    routeName = v5->_routeName;
    v5->_routeName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"distance"];
    distance = v5->_distance;
    v5->_distance = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expectedTravelTime"];
    expectedTravelTime = v5->_expectedTravelTime;
    v5->_expectedTravelTime = v10;

    v12 = v5;
  }

  return v5;
}

- (NSString)wfName
{
  v2 = [(WFTripInfo *)self expectedTravelTime];
  v3 = [v2 absoluteTimeString];

  return v3;
}

- (WFTripInfo)initWithMKRoute:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"WFTripInfo.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"route"}];
  }

  v22.receiver = self;
  v22.super_class = WFTripInfo;
  v6 = [(WFTripInfo *)&v22 init];
  if (v6)
  {
    v7 = [v5 name];
    v8 = [v7 copy];
    routeName = v6->_routeName;
    v6->_routeName = v8;

    v10 = objc_alloc(MEMORY[0x277CCAB10]);
    [v5 distance];
    v12 = v11;
    v13 = [MEMORY[0x277CCAE20] meters];
    v14 = [v10 initWithDoubleValue:v13 unit:v12];
    distance = v6->_distance;
    v6->_distance = v14;

    [v5 expectedTravelTime];
    v17 = WFTimeIntervalFromExpectedTravelTime(v16);
    expectedTravelTime = v6->_expectedTravelTime;
    v6->_expectedTravelTime = v17;

    v19 = v6;
  }

  return v6;
}

@end